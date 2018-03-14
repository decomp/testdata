; ModuleID = 'coreutils-8.27/src/getlimits.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Usage: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"Output platform dependent limits in a format useful for shell scripts.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"getlimits\00", align 1
@.str.82 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.83 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.85 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.86 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.87 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Padraig Brady\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"CHAR_MAX=%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"CHAR_OFLOW=%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"CHAR_MIN=%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"CHAR_UFLOW=%s\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"SCHAR_MAX=%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"SCHAR_OFLOW=%s\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"SCHAR_MIN=%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"SCHAR_UFLOW=%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"UCHAR_MAX=%s\0A\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"UCHAR_OFLOW=%s\0A\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"SHRT_MAX=%s\0A\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"SHRT_OFLOW=%s\0A\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"SHRT_MIN=%s\0A\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"SHRT_UFLOW=%s\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"INT_MAX=%s\0A\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"INT_OFLOW=%s\0A\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"INT_MIN=%s\0A\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"INT_UFLOW=%s\0A\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"UINT_MAX=%s\0A\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"UINT_OFLOW=%s\0A\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"LONG_MAX=%s\0A\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"LONG_OFLOW=%s\0A\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"LONG_MIN=%s\0A\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"LONG_UFLOW=%s\0A\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"ULONG_MAX=%s\0A\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"ULONG_OFLOW=%s\0A\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"SIZE_MAX=%s\0A\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"SIZE_OFLOW=%s\0A\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"SSIZE_MAX=%s\0A\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"SSIZE_OFLOW=%s\0A\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"SSIZE_MIN=%s\0A\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"SSIZE_UFLOW=%s\0A\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"TIME_T_MAX=%s\0A\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"TIME_T_OFLOW=%s\0A\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"TIME_T_MIN=%s\0A\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"TIME_T_UFLOW=%s\0A\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"UID_T_MAX=%s\0A\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"UID_T_OFLOW=%s\0A\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"GID_T_MAX=%s\0A\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"GID_T_OFLOW=%s\0A\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"PID_T_MAX=%s\0A\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"PID_T_OFLOW=%s\0A\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"PID_T_MIN=%s\0A\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"PID_T_UFLOW=%s\0A\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"OFF_T_MAX=%s\0A\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"OFF_T_OFLOW=%s\0A\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"OFF_T_MIN=%s\0A\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"OFF_T_UFLOW=%s\0A\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"INTMAX_MAX=%s\0A\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"INTMAX_OFLOW=%s\0A\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"INTMAX_MIN=%s\0A\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"INTMAX_UFLOW=%s\0A\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"UINTMAX_MAX=%s\0A\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"UINTMAX_OFLOW=%s\0A\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"FLT_MIN=\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"FLT_MAX=\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"DBL_MIN=\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"DBL_MAX=\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"LDBL_MIN=\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"LDBL_MAX=\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !0
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !6
@.str.74 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.75 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.76 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !13
@opterr = external local_unnamed_addr global i32, align 4
@.str.89 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.90, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.91, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !21
@optind = external local_unnamed_addr global i32, align 4
@.str.1.90 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.91 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !39
@.str.96 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.97 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.98 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.100, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.101, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.102, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.103, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.104, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.105, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.106, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.107, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.108, i32 0, i32 0), i8* null], align 16, !dbg !48
@.str.99 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.100 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.101 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.102 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.103 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.104 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.105 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.106 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.107 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.108 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !93
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !100
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !113
@.str.11.109 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.110 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.111 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.112 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.113 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.114 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.115 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !120
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !127
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !115
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !129
@.str.118 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.119 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.120 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.121 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.122 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.123 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.124 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.125 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.126 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.127 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.128 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.129 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.130 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.131 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.134 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.135 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.136 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.137 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.138 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.139 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !135
@.str.1.150 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.151 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.160 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.161 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.164 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !144
@.str.3.165 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.166 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.167 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.168 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.169 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.170 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) #0 !dbg !602 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !606, metadata !607), !dbg !608
  %2 = icmp eq i32 %0, 0, !dbg !609
  br i1 %2, label %8, label %3, !dbg !611

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !612, !tbaa !614
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !612
  %6 = load i8*, i8** @program_name, align 8, !dbg !612, !tbaa !614
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !612
  br label %36, !dbg !612

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !618
  %10 = load i8*, i8** @program_name, align 8, !dbg !618, !tbaa !614
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #11, !dbg !618
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !620
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !620, !tbaa !614
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11, !dbg !620
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !621
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !621, !tbaa !614
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11, !dbg !621
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !622
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !622, !tbaa !614
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11, !dbg !622
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !536, metadata !607) #11, !dbg !623
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i64 0, metadata !536, metadata !607) #11, !dbg !623
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.82, i64 0, i64 0), i32 5) #11, !dbg !625
  %22 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.83, i64 0, i64 0)) #11, !dbg !625
  %23 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !626
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !544, metadata !607) #11, !dbg !627
  %24 = icmp eq i8* %23, null, !dbg !628
  br i1 %24, label %31, label %25, !dbg !630

; <label>:25:                                     ; preds = %8
  %26 = tail call i32 @strncmp(i8* nonnull %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i64 0, i64 0), i64 3) #14, !dbg !631
  %27 = icmp eq i32 %26, 0, !dbg !631
  br i1 %27, label %31, label %28, !dbg !632

; <label>:28:                                     ; preds = %25
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.85, i64 0, i64 0), i32 5) #11, !dbg !633
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)) #11, !dbg !633
  br label %31, !dbg !635

; <label>:31:                                     ; preds = %8, %25, %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.86, i64 0, i64 0), i32 5) #11, !dbg !636
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.83, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)) #11, !dbg !636
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.87, i64 0, i64 0), i32 5) #11, !dbg !637
  %35 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i64 0, i64 0)) #11, !dbg !637
  br label %36

; <label>:36:                                     ; preds = %31, %3
  tail call void @exit(i32 %0) #15, !dbg !638
  unreachable, !dbg !638
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !639 {
  %3 = alloca [40 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [40 x i8]* %3, metadata !650, metadata !607), !dbg !660
  tail call void @llvm.dbg.declare(metadata [40 x i8]* %3, metadata !650, metadata !607), !dbg !662
  %4 = alloca [31 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [31 x i8]* %4, metadata !664, metadata !607), !dbg !674
  tail call void @llvm.dbg.declare(metadata [31 x i8]* %4, metadata !664, metadata !607), !dbg !676
  %5 = alloca [45 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [45 x i8]* %5, metadata !678, metadata !607), !dbg !688
  tail call void @llvm.dbg.declare(metadata [45 x i8]* %5, metadata !678, metadata !607), !dbg !690
  %6 = alloca [22 x i8], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !644, metadata !607), !dbg !692
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !645, metadata !607), !dbg !693
  %7 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !694
  call void @llvm.lifetime.start.p0i8(i64 22, i8* nonnull %7) #11, !dbg !694
  tail call void @llvm.dbg.declare(metadata [22 x i8]* %6, metadata !646, metadata !607), !dbg !695
  %8 = load i8*, i8** %1, align 8, !dbg !696, !tbaa !614
  tail call void @set_program_name(i8* %8) #11, !dbg !697
  %9 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !698
  %10 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !699
  %11 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !700
  %12 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !701
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), void (i32)* nonnull @usage, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* null) #11, !dbg !702
  %13 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 1, !dbg !703
  %14 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 127) #11, !dbg !703
  %15 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* %13) #11, !dbg !703
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !704, metadata !607) #11, !dbg !713
  %16 = load i8, i8* %13, align 1, !dbg !715, !tbaa !716
  %17 = icmp eq i8 %16, 45, !dbg !717
  %18 = zext i1 %17 to i64, !dbg !718
  %19 = getelementptr inbounds i8, i8* %13, i64 %18, !dbg !718
  call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !710, metadata !607) #11, !dbg !719
  %20 = call i64 @strlen(i8* %19) #14, !dbg !720
  %21 = getelementptr inbounds i8, i8* %19, i64 %20, !dbg !721
  call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !711, metadata !607) #11, !dbg !722
  %22 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !723
  br label %23, !dbg !724

; <label>:23:                                     ; preds = %23, %2
  %24 = phi i8* [ %21, %2 ], [ %26, %23 ]
  %25 = phi i8* [ %22, %2 ], [ %26, %23 ]
  call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !711, metadata !607) #11, !dbg !722
  store i8 48, i8* %25, align 1, !tbaa !716
  %26 = getelementptr inbounds i8, i8* %24, i64 -1, !dbg !725
  call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !711, metadata !607) #11, !dbg !722
  %27 = load i8, i8* %26, align 1, !dbg !726, !tbaa !716
  %28 = icmp eq i8 %27, 57, !dbg !727
  br i1 %28, label %23, label %29, !dbg !724, !llvm.loop !728

; <label>:29:                                     ; preds = %23
  %30 = add i8 %27, 1, !dbg !731
  store i8 %30, i8* %26, align 1, !dbg !731, !tbaa !716
  %31 = icmp ult i8* %19, %26, !dbg !732
  %32 = select i1 %31, i8* %19, i8* %26, !dbg !732
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !712, metadata !607) #11, !dbg !733
  br i1 %17, label %33, label %35, !dbg !734

; <label>:33:                                     ; preds = %29
  %34 = getelementptr inbounds i8, i8* %32, i64 -1, !dbg !735
  call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !712, metadata !607) #11, !dbg !733
  store i8 45, i8* %34, align 1, !dbg !737, !tbaa !716
  br label %35, !dbg !738

; <label>:35:                                     ; preds = %29, %33
  %36 = phi i8* [ %34, %33 ], [ %32, %29 ]
  call void @llvm.dbg.value(metadata i8* %36, i64 0, metadata !712, metadata !607) #11, !dbg !733
  %37 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* %36) #11, !dbg !703
  %38 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -128) #11, !dbg !739
  %39 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* %13) #11, !dbg !739
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !704, metadata !607) #11, !dbg !742
  %40 = load i8, i8* %13, align 1, !dbg !744, !tbaa !716
  %41 = icmp eq i8 %40, 45, !dbg !745
  %42 = zext i1 %41 to i64, !dbg !746
  %43 = getelementptr inbounds i8, i8* %13, i64 %42, !dbg !746
  call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !710, metadata !607) #11, !dbg !747
  %44 = call i64 @strlen(i8* %43) #14, !dbg !748
  %45 = getelementptr inbounds i8, i8* %43, i64 %44, !dbg !749
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !711, metadata !607) #11, !dbg !750
  %46 = getelementptr inbounds i8, i8* %43, i64 -1, !dbg !751
  br label %47, !dbg !752

; <label>:47:                                     ; preds = %47, %35
  %48 = phi i8* [ %45, %35 ], [ %50, %47 ]
  %49 = phi i8* [ %46, %35 ], [ %50, %47 ]
  call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !711, metadata !607) #11, !dbg !750
  store i8 48, i8* %49, align 1, !tbaa !716
  %50 = getelementptr inbounds i8, i8* %48, i64 -1, !dbg !753
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !711, metadata !607) #11, !dbg !750
  %51 = load i8, i8* %50, align 1, !dbg !754, !tbaa !716
  %52 = icmp eq i8 %51, 57, !dbg !755
  br i1 %52, label %47, label %53, !dbg !752, !llvm.loop !728

; <label>:53:                                     ; preds = %47
  %54 = add i8 %51, 1, !dbg !756
  store i8 %54, i8* %50, align 1, !dbg !756, !tbaa !716
  %55 = icmp ult i8* %43, %50, !dbg !757
  %56 = select i1 %55, i8* %43, i8* %50, !dbg !757
  call void @llvm.dbg.value(metadata i8* %56, i64 0, metadata !712, metadata !607) #11, !dbg !758
  br i1 %41, label %57, label %59, !dbg !759

; <label>:57:                                     ; preds = %53
  %58 = getelementptr inbounds i8, i8* %56, i64 -1, !dbg !760
  call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !712, metadata !607) #11, !dbg !758
  store i8 45, i8* %58, align 1, !dbg !761, !tbaa !716
  br label %59, !dbg !762

; <label>:59:                                     ; preds = %53, %57
  %60 = phi i8* [ %58, %57 ], [ %56, %53 ]
  call void @llvm.dbg.value(metadata i8* %60, i64 0, metadata !712, metadata !607) #11, !dbg !758
  %61 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* %60) #11, !dbg !739
  %62 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 127) #11, !dbg !763
  %63 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %13) #11, !dbg !763
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !704, metadata !607) #11, !dbg !764
  %64 = load i8, i8* %13, align 1, !dbg !766, !tbaa !716
  %65 = icmp eq i8 %64, 45, !dbg !767
  %66 = zext i1 %65 to i64, !dbg !768
  %67 = getelementptr inbounds i8, i8* %13, i64 %66, !dbg !768
  call void @llvm.dbg.value(metadata i8* %67, i64 0, metadata !710, metadata !607) #11, !dbg !769
  %68 = call i64 @strlen(i8* %67) #14, !dbg !770
  %69 = getelementptr inbounds i8, i8* %67, i64 %68, !dbg !771
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !711, metadata !607) #11, !dbg !772
  %70 = getelementptr inbounds i8, i8* %67, i64 -1, !dbg !773
  br label %71, !dbg !774

; <label>:71:                                     ; preds = %71, %59
  %72 = phi i8* [ %69, %59 ], [ %74, %71 ]
  %73 = phi i8* [ %70, %59 ], [ %74, %71 ]
  call void @llvm.dbg.value(metadata i8* %72, i64 0, metadata !711, metadata !607) #11, !dbg !772
  store i8 48, i8* %73, align 1, !tbaa !716
  %74 = getelementptr inbounds i8, i8* %72, i64 -1, !dbg !775
  call void @llvm.dbg.value(metadata i8* %74, i64 0, metadata !711, metadata !607) #11, !dbg !772
  %75 = load i8, i8* %74, align 1, !dbg !776, !tbaa !716
  %76 = icmp eq i8 %75, 57, !dbg !777
  br i1 %76, label %71, label %77, !dbg !774, !llvm.loop !728

; <label>:77:                                     ; preds = %71
  %78 = add i8 %75, 1, !dbg !778
  store i8 %78, i8* %74, align 1, !dbg !778, !tbaa !716
  %79 = icmp ult i8* %67, %74, !dbg !779
  %80 = select i1 %79, i8* %67, i8* %74, !dbg !779
  call void @llvm.dbg.value(metadata i8* %80, i64 0, metadata !712, metadata !607) #11, !dbg !780
  br i1 %65, label %81, label %83, !dbg !781

; <label>:81:                                     ; preds = %77
  %82 = getelementptr inbounds i8, i8* %80, i64 -1, !dbg !782
  call void @llvm.dbg.value(metadata i8* %82, i64 0, metadata !712, metadata !607) #11, !dbg !780
  store i8 45, i8* %82, align 1, !dbg !783, !tbaa !716
  br label %83, !dbg !784

; <label>:83:                                     ; preds = %77, %81
  %84 = phi i8* [ %82, %81 ], [ %80, %77 ]
  call void @llvm.dbg.value(metadata i8* %84, i64 0, metadata !712, metadata !607) #11, !dbg !780
  %85 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8* %84) #11, !dbg !763
  %86 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -128) #11, !dbg !785
  %87 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* %13) #11, !dbg !785
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !704, metadata !607) #11, !dbg !788
  %88 = load i8, i8* %13, align 1, !dbg !790, !tbaa !716
  %89 = icmp eq i8 %88, 45, !dbg !791
  %90 = zext i1 %89 to i64, !dbg !792
  %91 = getelementptr inbounds i8, i8* %13, i64 %90, !dbg !792
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !710, metadata !607) #11, !dbg !793
  %92 = call i64 @strlen(i8* %91) #14, !dbg !794
  %93 = getelementptr inbounds i8, i8* %91, i64 %92, !dbg !795
  call void @llvm.dbg.value(metadata i8* %93, i64 0, metadata !711, metadata !607) #11, !dbg !796
  %94 = getelementptr inbounds i8, i8* %91, i64 -1, !dbg !797
  br label %95, !dbg !798

; <label>:95:                                     ; preds = %95, %83
  %96 = phi i8* [ %93, %83 ], [ %98, %95 ]
  %97 = phi i8* [ %94, %83 ], [ %98, %95 ]
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !711, metadata !607) #11, !dbg !796
  store i8 48, i8* %97, align 1, !tbaa !716
  %98 = getelementptr inbounds i8, i8* %96, i64 -1, !dbg !799
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !711, metadata !607) #11, !dbg !796
  %99 = load i8, i8* %98, align 1, !dbg !800, !tbaa !716
  %100 = icmp eq i8 %99, 57, !dbg !801
  br i1 %100, label %95, label %101, !dbg !798, !llvm.loop !728

; <label>:101:                                    ; preds = %95
  %102 = add i8 %99, 1, !dbg !802
  store i8 %102, i8* %98, align 1, !dbg !802, !tbaa !716
  %103 = icmp ult i8* %91, %98, !dbg !803
  %104 = select i1 %103, i8* %91, i8* %98, !dbg !803
  call void @llvm.dbg.value(metadata i8* %104, i64 0, metadata !712, metadata !607) #11, !dbg !804
  br i1 %89, label %105, label %107, !dbg !805

; <label>:105:                                    ; preds = %101
  %106 = getelementptr inbounds i8, i8* %104, i64 -1, !dbg !806
  call void @llvm.dbg.value(metadata i8* %106, i64 0, metadata !712, metadata !607) #11, !dbg !804
  store i8 45, i8* %106, align 1, !dbg !807, !tbaa !716
  br label %107, !dbg !808

; <label>:107:                                    ; preds = %101, %105
  %108 = phi i8* [ %106, %105 ], [ %104, %101 ]
  call void @llvm.dbg.value(metadata i8* %108, i64 0, metadata !712, metadata !607) #11, !dbg !804
  %109 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8* %108) #11, !dbg !785
  %110 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 255) #11, !dbg !809
  %111 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* %13) #11, !dbg !809
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !704, metadata !607) #11, !dbg !810
  %112 = load i8, i8* %13, align 1, !dbg !812, !tbaa !716
  %113 = icmp eq i8 %112, 45, !dbg !813
  %114 = zext i1 %113 to i64, !dbg !814
  %115 = getelementptr inbounds i8, i8* %13, i64 %114, !dbg !814
  call void @llvm.dbg.value(metadata i8* %115, i64 0, metadata !710, metadata !607) #11, !dbg !815
  %116 = call i64 @strlen(i8* %115) #14, !dbg !816
  %117 = getelementptr inbounds i8, i8* %115, i64 %116, !dbg !817
  call void @llvm.dbg.value(metadata i8* %117, i64 0, metadata !711, metadata !607) #11, !dbg !818
  %118 = getelementptr inbounds i8, i8* %115, i64 -1, !dbg !819
  br label %119, !dbg !820

; <label>:119:                                    ; preds = %119, %107
  %120 = phi i8* [ %117, %107 ], [ %122, %119 ]
  %121 = phi i8* [ %118, %107 ], [ %122, %119 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !711, metadata !607) #11, !dbg !818
  store i8 48, i8* %121, align 1, !tbaa !716
  %122 = getelementptr inbounds i8, i8* %120, i64 -1, !dbg !821
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !711, metadata !607) #11, !dbg !818
  %123 = load i8, i8* %122, align 1, !dbg !822, !tbaa !716
  %124 = icmp eq i8 %123, 57, !dbg !823
  br i1 %124, label %119, label %125, !dbg !820, !llvm.loop !728

; <label>:125:                                    ; preds = %119
  %126 = add i8 %123, 1, !dbg !824
  store i8 %126, i8* %122, align 1, !dbg !824, !tbaa !716
  %127 = icmp ult i8* %115, %122, !dbg !825
  %128 = select i1 %127, i8* %115, i8* %122, !dbg !825
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !712, metadata !607) #11, !dbg !826
  br i1 %113, label %129, label %131, !dbg !827

; <label>:129:                                    ; preds = %125
  %130 = getelementptr inbounds i8, i8* %128, i64 -1, !dbg !828
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !712, metadata !607) #11, !dbg !826
  store i8 45, i8* %130, align 1, !dbg !829, !tbaa !716
  br label %131, !dbg !830

; <label>:131:                                    ; preds = %125, %129
  %132 = phi i8* [ %130, %129 ], [ %128, %125 ]
  call void @llvm.dbg.value(metadata i8* %132, i64 0, metadata !712, metadata !607) #11, !dbg !826
  %133 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i8* %132) #11, !dbg !809
  %134 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 32767) #11, !dbg !831
  %135 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* %13) #11, !dbg !831
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !704, metadata !607) #11, !dbg !832
  %136 = load i8, i8* %13, align 1, !dbg !834, !tbaa !716
  %137 = icmp eq i8 %136, 45, !dbg !835
  %138 = zext i1 %137 to i64, !dbg !836
  %139 = getelementptr inbounds i8, i8* %13, i64 %138, !dbg !836
  call void @llvm.dbg.value(metadata i8* %139, i64 0, metadata !710, metadata !607) #11, !dbg !837
  %140 = call i64 @strlen(i8* %139) #14, !dbg !838
  %141 = getelementptr inbounds i8, i8* %139, i64 %140, !dbg !839
  call void @llvm.dbg.value(metadata i8* %141, i64 0, metadata !711, metadata !607) #11, !dbg !840
  %142 = getelementptr inbounds i8, i8* %139, i64 -1, !dbg !841
  br label %143, !dbg !842

; <label>:143:                                    ; preds = %143, %131
  %144 = phi i8* [ %141, %131 ], [ %146, %143 ]
  %145 = phi i8* [ %142, %131 ], [ %146, %143 ]
  call void @llvm.dbg.value(metadata i8* %144, i64 0, metadata !711, metadata !607) #11, !dbg !840
  store i8 48, i8* %145, align 1, !tbaa !716
  %146 = getelementptr inbounds i8, i8* %144, i64 -1, !dbg !843
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !711, metadata !607) #11, !dbg !840
  %147 = load i8, i8* %146, align 1, !dbg !844, !tbaa !716
  %148 = icmp eq i8 %147, 57, !dbg !845
  br i1 %148, label %143, label %149, !dbg !842, !llvm.loop !728

; <label>:149:                                    ; preds = %143
  %150 = add i8 %147, 1, !dbg !846
  store i8 %150, i8* %146, align 1, !dbg !846, !tbaa !716
  %151 = icmp ult i8* %139, %146, !dbg !847
  %152 = select i1 %151, i8* %139, i8* %146, !dbg !847
  call void @llvm.dbg.value(metadata i8* %152, i64 0, metadata !712, metadata !607) #11, !dbg !848
  br i1 %137, label %153, label %155, !dbg !849

; <label>:153:                                    ; preds = %149
  %154 = getelementptr inbounds i8, i8* %152, i64 -1, !dbg !850
  call void @llvm.dbg.value(metadata i8* %154, i64 0, metadata !712, metadata !607) #11, !dbg !848
  store i8 45, i8* %154, align 1, !dbg !851, !tbaa !716
  br label %155, !dbg !852

; <label>:155:                                    ; preds = %149, %153
  %156 = phi i8* [ %154, %153 ], [ %152, %149 ]
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !712, metadata !607) #11, !dbg !848
  %157 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i8* %156) #11, !dbg !831
  %158 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -32768) #11, !dbg !853
  %159 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i8* %13) #11, !dbg !853
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !704, metadata !607) #11, !dbg !856
  %160 = load i8, i8* %13, align 1, !dbg !858, !tbaa !716
  %161 = icmp eq i8 %160, 45, !dbg !859
  %162 = zext i1 %161 to i64, !dbg !860
  %163 = getelementptr inbounds i8, i8* %13, i64 %162, !dbg !860
  call void @llvm.dbg.value(metadata i8* %163, i64 0, metadata !710, metadata !607) #11, !dbg !861
  %164 = call i64 @strlen(i8* %163) #14, !dbg !862
  %165 = getelementptr inbounds i8, i8* %163, i64 %164, !dbg !863
  call void @llvm.dbg.value(metadata i8* %165, i64 0, metadata !711, metadata !607) #11, !dbg !864
  %166 = getelementptr inbounds i8, i8* %163, i64 -1, !dbg !865
  br label %167, !dbg !866

; <label>:167:                                    ; preds = %167, %155
  %168 = phi i8* [ %165, %155 ], [ %170, %167 ]
  %169 = phi i8* [ %166, %155 ], [ %170, %167 ]
  call void @llvm.dbg.value(metadata i8* %168, i64 0, metadata !711, metadata !607) #11, !dbg !864
  store i8 48, i8* %169, align 1, !tbaa !716
  %170 = getelementptr inbounds i8, i8* %168, i64 -1, !dbg !867
  call void @llvm.dbg.value(metadata i8* %170, i64 0, metadata !711, metadata !607) #11, !dbg !864
  %171 = load i8, i8* %170, align 1, !dbg !868, !tbaa !716
  %172 = icmp eq i8 %171, 57, !dbg !869
  br i1 %172, label %167, label %173, !dbg !866, !llvm.loop !728

; <label>:173:                                    ; preds = %167
  %174 = add i8 %171, 1, !dbg !870
  store i8 %174, i8* %170, align 1, !dbg !870, !tbaa !716
  %175 = icmp ult i8* %163, %170, !dbg !871
  %176 = select i1 %175, i8* %163, i8* %170, !dbg !871
  call void @llvm.dbg.value(metadata i8* %176, i64 0, metadata !712, metadata !607) #11, !dbg !872
  br i1 %161, label %177, label %179, !dbg !873

; <label>:177:                                    ; preds = %173
  %178 = getelementptr inbounds i8, i8* %176, i64 -1, !dbg !874
  call void @llvm.dbg.value(metadata i8* %178, i64 0, metadata !712, metadata !607) #11, !dbg !872
  store i8 45, i8* %178, align 1, !dbg !875, !tbaa !716
  br label %179, !dbg !876

; <label>:179:                                    ; preds = %173, %177
  %180 = phi i8* [ %178, %177 ], [ %176, %173 ]
  call void @llvm.dbg.value(metadata i8* %180, i64 0, metadata !712, metadata !607) #11, !dbg !872
  %181 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i8* %180) #11, !dbg !853
  %182 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 2147483647) #11, !dbg !877
  %183 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* %13) #11, !dbg !877
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !704, metadata !607) #11, !dbg !878
  %184 = load i8, i8* %13, align 1, !dbg !880, !tbaa !716
  %185 = icmp eq i8 %184, 45, !dbg !881
  %186 = zext i1 %185 to i64, !dbg !882
  %187 = getelementptr inbounds i8, i8* %13, i64 %186, !dbg !882
  call void @llvm.dbg.value(metadata i8* %187, i64 0, metadata !710, metadata !607) #11, !dbg !883
  %188 = call i64 @strlen(i8* %187) #14, !dbg !884
  %189 = getelementptr inbounds i8, i8* %187, i64 %188, !dbg !885
  call void @llvm.dbg.value(metadata i8* %189, i64 0, metadata !711, metadata !607) #11, !dbg !886
  %190 = getelementptr inbounds i8, i8* %187, i64 -1, !dbg !887
  br label %191, !dbg !888

; <label>:191:                                    ; preds = %191, %179
  %192 = phi i8* [ %189, %179 ], [ %194, %191 ]
  %193 = phi i8* [ %190, %179 ], [ %194, %191 ]
  call void @llvm.dbg.value(metadata i8* %192, i64 0, metadata !711, metadata !607) #11, !dbg !886
  store i8 48, i8* %193, align 1, !tbaa !716
  %194 = getelementptr inbounds i8, i8* %192, i64 -1, !dbg !889
  call void @llvm.dbg.value(metadata i8* %194, i64 0, metadata !711, metadata !607) #11, !dbg !886
  %195 = load i8, i8* %194, align 1, !dbg !890, !tbaa !716
  %196 = icmp eq i8 %195, 57, !dbg !891
  br i1 %196, label %191, label %197, !dbg !888, !llvm.loop !728

; <label>:197:                                    ; preds = %191
  %198 = add i8 %195, 1, !dbg !892
  store i8 %198, i8* %194, align 1, !dbg !892, !tbaa !716
  %199 = icmp ult i8* %187, %194, !dbg !893
  %200 = select i1 %199, i8* %187, i8* %194, !dbg !893
  call void @llvm.dbg.value(metadata i8* %200, i64 0, metadata !712, metadata !607) #11, !dbg !894
  br i1 %185, label %201, label %203, !dbg !895

; <label>:201:                                    ; preds = %197
  %202 = getelementptr inbounds i8, i8* %200, i64 -1, !dbg !896
  call void @llvm.dbg.value(metadata i8* %202, i64 0, metadata !712, metadata !607) #11, !dbg !894
  store i8 45, i8* %202, align 1, !dbg !897, !tbaa !716
  br label %203, !dbg !898

; <label>:203:                                    ; preds = %197, %201
  %204 = phi i8* [ %202, %201 ], [ %200, %197 ]
  call void @llvm.dbg.value(metadata i8* %204, i64 0, metadata !712, metadata !607) #11, !dbg !894
  %205 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i8* %204) #11, !dbg !877
  %206 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -2147483648) #11, !dbg !899
  %207 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i8* %13) #11, !dbg !899
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !704, metadata !607) #11, !dbg !902
  %208 = load i8, i8* %13, align 1, !dbg !904, !tbaa !716
  %209 = icmp eq i8 %208, 45, !dbg !905
  %210 = zext i1 %209 to i64, !dbg !906
  %211 = getelementptr inbounds i8, i8* %13, i64 %210, !dbg !906
  call void @llvm.dbg.value(metadata i8* %211, i64 0, metadata !710, metadata !607) #11, !dbg !907
  %212 = call i64 @strlen(i8* %211) #14, !dbg !908
  %213 = getelementptr inbounds i8, i8* %211, i64 %212, !dbg !909
  call void @llvm.dbg.value(metadata i8* %213, i64 0, metadata !711, metadata !607) #11, !dbg !910
  %214 = getelementptr inbounds i8, i8* %211, i64 -1, !dbg !911
  br label %215, !dbg !912

; <label>:215:                                    ; preds = %215, %203
  %216 = phi i8* [ %213, %203 ], [ %218, %215 ]
  %217 = phi i8* [ %214, %203 ], [ %218, %215 ]
  call void @llvm.dbg.value(metadata i8* %216, i64 0, metadata !711, metadata !607) #11, !dbg !910
  store i8 48, i8* %217, align 1, !tbaa !716
  %218 = getelementptr inbounds i8, i8* %216, i64 -1, !dbg !913
  call void @llvm.dbg.value(metadata i8* %218, i64 0, metadata !711, metadata !607) #11, !dbg !910
  %219 = load i8, i8* %218, align 1, !dbg !914, !tbaa !716
  %220 = icmp eq i8 %219, 57, !dbg !915
  br i1 %220, label %215, label %221, !dbg !912, !llvm.loop !728

; <label>:221:                                    ; preds = %215
  %222 = add i8 %219, 1, !dbg !916
  store i8 %222, i8* %218, align 1, !dbg !916, !tbaa !716
  %223 = icmp ult i8* %211, %218, !dbg !917
  %224 = select i1 %223, i8* %211, i8* %218, !dbg !917
  call void @llvm.dbg.value(metadata i8* %224, i64 0, metadata !712, metadata !607) #11, !dbg !918
  br i1 %209, label %225, label %227, !dbg !919

; <label>:225:                                    ; preds = %221
  %226 = getelementptr inbounds i8, i8* %224, i64 -1, !dbg !920
  call void @llvm.dbg.value(metadata i8* %226, i64 0, metadata !712, metadata !607) #11, !dbg !918
  store i8 45, i8* %226, align 1, !dbg !921, !tbaa !716
  br label %227, !dbg !922

; <label>:227:                                    ; preds = %221, %225
  %228 = phi i8* [ %226, %225 ], [ %224, %221 ]
  call void @llvm.dbg.value(metadata i8* %228, i64 0, metadata !712, metadata !607) #11, !dbg !918
  %229 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0), i8* %228) #11, !dbg !899
  %230 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 4294967295) #11, !dbg !923
  %231 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0), i8* %13) #11, !dbg !923
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !704, metadata !607) #11, !dbg !924
  %232 = load i8, i8* %13, align 1, !dbg !926, !tbaa !716
  %233 = icmp eq i8 %232, 45, !dbg !927
  %234 = zext i1 %233 to i64, !dbg !928
  %235 = getelementptr inbounds i8, i8* %13, i64 %234, !dbg !928
  call void @llvm.dbg.value(metadata i8* %235, i64 0, metadata !710, metadata !607) #11, !dbg !929
  %236 = call i64 @strlen(i8* %235) #14, !dbg !930
  %237 = getelementptr inbounds i8, i8* %235, i64 %236, !dbg !931
  call void @llvm.dbg.value(metadata i8* %237, i64 0, metadata !711, metadata !607) #11, !dbg !932
  %238 = getelementptr inbounds i8, i8* %235, i64 -1, !dbg !933
  br label %239, !dbg !934

; <label>:239:                                    ; preds = %239, %227
  %240 = phi i8* [ %237, %227 ], [ %242, %239 ]
  %241 = phi i8* [ %238, %227 ], [ %242, %239 ]
  call void @llvm.dbg.value(metadata i8* %240, i64 0, metadata !711, metadata !607) #11, !dbg !932
  store i8 48, i8* %241, align 1, !tbaa !716
  %242 = getelementptr inbounds i8, i8* %240, i64 -1, !dbg !935
  call void @llvm.dbg.value(metadata i8* %242, i64 0, metadata !711, metadata !607) #11, !dbg !932
  %243 = load i8, i8* %242, align 1, !dbg !936, !tbaa !716
  %244 = icmp eq i8 %243, 57, !dbg !937
  br i1 %244, label %239, label %245, !dbg !934, !llvm.loop !728

; <label>:245:                                    ; preds = %239
  %246 = add i8 %243, 1, !dbg !938
  store i8 %246, i8* %242, align 1, !dbg !938, !tbaa !716
  %247 = icmp ult i8* %235, %242, !dbg !939
  %248 = select i1 %247, i8* %235, i8* %242, !dbg !939
  call void @llvm.dbg.value(metadata i8* %248, i64 0, metadata !712, metadata !607) #11, !dbg !940
  br i1 %233, label %249, label %251, !dbg !941

; <label>:249:                                    ; preds = %245
  %250 = getelementptr inbounds i8, i8* %248, i64 -1, !dbg !942
  call void @llvm.dbg.value(metadata i8* %250, i64 0, metadata !712, metadata !607) #11, !dbg !940
  store i8 45, i8* %250, align 1, !dbg !943, !tbaa !716
  br label %251, !dbg !944

; <label>:251:                                    ; preds = %245, %249
  %252 = phi i8* [ %250, %249 ], [ %248, %245 ]
  call void @llvm.dbg.value(metadata i8* %252, i64 0, metadata !712, metadata !607) #11, !dbg !940
  %253 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i8* %252) #11, !dbg !923
  %254 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 9223372036854775807) #11, !dbg !945
  %255 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i8* %13) #11, !dbg !945
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !704, metadata !607) #11, !dbg !946
  %256 = load i8, i8* %13, align 1, !dbg !948, !tbaa !716
  %257 = icmp eq i8 %256, 45, !dbg !949
  %258 = zext i1 %257 to i64, !dbg !950
  %259 = getelementptr inbounds i8, i8* %13, i64 %258, !dbg !950
  call void @llvm.dbg.value(metadata i8* %259, i64 0, metadata !710, metadata !607) #11, !dbg !951
  %260 = call i64 @strlen(i8* %259) #14, !dbg !952
  %261 = getelementptr inbounds i8, i8* %259, i64 %260, !dbg !953
  call void @llvm.dbg.value(metadata i8* %261, i64 0, metadata !711, metadata !607) #11, !dbg !954
  %262 = getelementptr inbounds i8, i8* %259, i64 -1, !dbg !955
  br label %263, !dbg !956

; <label>:263:                                    ; preds = %263, %251
  %264 = phi i8* [ %261, %251 ], [ %266, %263 ]
  %265 = phi i8* [ %262, %251 ], [ %266, %263 ]
  call void @llvm.dbg.value(metadata i8* %264, i64 0, metadata !711, metadata !607) #11, !dbg !954
  store i8 48, i8* %265, align 1, !tbaa !716
  %266 = getelementptr inbounds i8, i8* %264, i64 -1, !dbg !957
  call void @llvm.dbg.value(metadata i8* %266, i64 0, metadata !711, metadata !607) #11, !dbg !954
  %267 = load i8, i8* %266, align 1, !dbg !958, !tbaa !716
  %268 = icmp eq i8 %267, 57, !dbg !959
  br i1 %268, label %263, label %269, !dbg !956, !llvm.loop !728

; <label>:269:                                    ; preds = %263
  %270 = add i8 %267, 1, !dbg !960
  store i8 %270, i8* %266, align 1, !dbg !960, !tbaa !716
  %271 = icmp ult i8* %259, %266, !dbg !961
  %272 = select i1 %271, i8* %259, i8* %266, !dbg !961
  call void @llvm.dbg.value(metadata i8* %272, i64 0, metadata !712, metadata !607) #11, !dbg !962
  br i1 %257, label %273, label %275, !dbg !963

; <label>:273:                                    ; preds = %269
  %274 = getelementptr inbounds i8, i8* %272, i64 -1, !dbg !964
  call void @llvm.dbg.value(metadata i8* %274, i64 0, metadata !712, metadata !607) #11, !dbg !962
  store i8 45, i8* %274, align 1, !dbg !965, !tbaa !716
  br label %275, !dbg !966

; <label>:275:                                    ; preds = %269, %273
  %276 = phi i8* [ %274, %273 ], [ %272, %269 ]
  call void @llvm.dbg.value(metadata i8* %276, i64 0, metadata !712, metadata !607) #11, !dbg !962
  %277 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i8* %276) #11, !dbg !945
  %278 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -9223372036854775808) #11, !dbg !967
  %279 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i64 0, i64 0), i8* %13) #11, !dbg !967
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !704, metadata !607) #11, !dbg !970
  %280 = load i8, i8* %13, align 1, !dbg !972, !tbaa !716
  %281 = icmp eq i8 %280, 45, !dbg !973
  %282 = zext i1 %281 to i64, !dbg !974
  %283 = getelementptr inbounds i8, i8* %13, i64 %282, !dbg !974
  call void @llvm.dbg.value(metadata i8* %283, i64 0, metadata !710, metadata !607) #11, !dbg !975
  %284 = call i64 @strlen(i8* %283) #14, !dbg !976
  %285 = getelementptr inbounds i8, i8* %283, i64 %284, !dbg !977
  call void @llvm.dbg.value(metadata i8* %285, i64 0, metadata !711, metadata !607) #11, !dbg !978
  %286 = getelementptr inbounds i8, i8* %283, i64 -1, !dbg !979
  br label %287, !dbg !980

; <label>:287:                                    ; preds = %287, %275
  %288 = phi i8* [ %285, %275 ], [ %290, %287 ]
  %289 = phi i8* [ %286, %275 ], [ %290, %287 ]
  call void @llvm.dbg.value(metadata i8* %288, i64 0, metadata !711, metadata !607) #11, !dbg !978
  store i8 48, i8* %289, align 1, !tbaa !716
  %290 = getelementptr inbounds i8, i8* %288, i64 -1, !dbg !981
  call void @llvm.dbg.value(metadata i8* %290, i64 0, metadata !711, metadata !607) #11, !dbg !978
  %291 = load i8, i8* %290, align 1, !dbg !982, !tbaa !716
  %292 = icmp eq i8 %291, 57, !dbg !983
  br i1 %292, label %287, label %293, !dbg !980, !llvm.loop !728

; <label>:293:                                    ; preds = %287
  %294 = add i8 %291, 1, !dbg !984
  store i8 %294, i8* %290, align 1, !dbg !984, !tbaa !716
  %295 = icmp ult i8* %283, %290, !dbg !985
  %296 = select i1 %295, i8* %283, i8* %290, !dbg !985
  call void @llvm.dbg.value(metadata i8* %296, i64 0, metadata !712, metadata !607) #11, !dbg !986
  br i1 %281, label %297, label %299, !dbg !987

; <label>:297:                                    ; preds = %293
  %298 = getelementptr inbounds i8, i8* %296, i64 -1, !dbg !988
  call void @llvm.dbg.value(metadata i8* %298, i64 0, metadata !712, metadata !607) #11, !dbg !986
  store i8 45, i8* %298, align 1, !dbg !989, !tbaa !716
  br label %299, !dbg !990

; <label>:299:                                    ; preds = %293, %297
  %300 = phi i8* [ %298, %297 ], [ %296, %293 ]
  call void @llvm.dbg.value(metadata i8* %300, i64 0, metadata !712, metadata !607) #11, !dbg !986
  %301 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0), i8* %300) #11, !dbg !967
  %302 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 -1) #11, !dbg !991
  %303 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0), i8* %13) #11, !dbg !991
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !704, metadata !607) #11, !dbg !992
  %304 = load i8, i8* %13, align 1, !dbg !994, !tbaa !716
  %305 = icmp eq i8 %304, 45, !dbg !995
  %306 = zext i1 %305 to i64, !dbg !996
  %307 = getelementptr inbounds i8, i8* %13, i64 %306, !dbg !996
  call void @llvm.dbg.value(metadata i8* %307, i64 0, metadata !710, metadata !607) #11, !dbg !997
  %308 = call i64 @strlen(i8* %307) #14, !dbg !998
  %309 = getelementptr inbounds i8, i8* %307, i64 %308, !dbg !999
  call void @llvm.dbg.value(metadata i8* %309, i64 0, metadata !711, metadata !607) #11, !dbg !1000
  %310 = getelementptr inbounds i8, i8* %307, i64 -1, !dbg !1001
  br label %311, !dbg !1002

; <label>:311:                                    ; preds = %311, %299
  %312 = phi i8* [ %309, %299 ], [ %314, %311 ]
  %313 = phi i8* [ %310, %299 ], [ %314, %311 ]
  call void @llvm.dbg.value(metadata i8* %312, i64 0, metadata !711, metadata !607) #11, !dbg !1000
  store i8 48, i8* %313, align 1, !tbaa !716
  %314 = getelementptr inbounds i8, i8* %312, i64 -1, !dbg !1003
  call void @llvm.dbg.value(metadata i8* %314, i64 0, metadata !711, metadata !607) #11, !dbg !1000
  %315 = load i8, i8* %314, align 1, !dbg !1004, !tbaa !716
  %316 = icmp eq i8 %315, 57, !dbg !1005
  br i1 %316, label %311, label %317, !dbg !1002, !llvm.loop !728

; <label>:317:                                    ; preds = %311
  %318 = add i8 %315, 1, !dbg !1006
  store i8 %318, i8* %314, align 1, !dbg !1006, !tbaa !716
  %319 = icmp ult i8* %307, %314, !dbg !1007
  %320 = select i1 %319, i8* %307, i8* %314, !dbg !1007
  call void @llvm.dbg.value(metadata i8* %320, i64 0, metadata !712, metadata !607) #11, !dbg !1008
  br i1 %305, label %321, label %323, !dbg !1009

; <label>:321:                                    ; preds = %317
  %322 = getelementptr inbounds i8, i8* %320, i64 -1, !dbg !1010
  call void @llvm.dbg.value(metadata i8* %322, i64 0, metadata !712, metadata !607) #11, !dbg !1008
  store i8 45, i8* %322, align 1, !dbg !1011, !tbaa !716
  br label %323, !dbg !1012

; <label>:323:                                    ; preds = %317, %321
  %324 = phi i8* [ %322, %321 ], [ %320, %317 ]
  call void @llvm.dbg.value(metadata i8* %324, i64 0, metadata !712, metadata !607) #11, !dbg !1008
  %325 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0), i8* %324) #11, !dbg !991
  %326 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 -1) #11, !dbg !1013
  %327 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i64 0, i64 0), i8* %13) #11, !dbg !1013
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !704, metadata !607) #11, !dbg !1014
  %328 = load i8, i8* %13, align 1, !dbg !1016, !tbaa !716
  %329 = icmp eq i8 %328, 45, !dbg !1017
  %330 = zext i1 %329 to i64, !dbg !1018
  %331 = getelementptr inbounds i8, i8* %13, i64 %330, !dbg !1018
  call void @llvm.dbg.value(metadata i8* %331, i64 0, metadata !710, metadata !607) #11, !dbg !1019
  %332 = call i64 @strlen(i8* %331) #14, !dbg !1020
  %333 = getelementptr inbounds i8, i8* %331, i64 %332, !dbg !1021
  call void @llvm.dbg.value(metadata i8* %333, i64 0, metadata !711, metadata !607) #11, !dbg !1022
  %334 = getelementptr inbounds i8, i8* %331, i64 -1, !dbg !1023
  br label %335, !dbg !1024

; <label>:335:                                    ; preds = %335, %323
  %336 = phi i8* [ %333, %323 ], [ %338, %335 ]
  %337 = phi i8* [ %334, %323 ], [ %338, %335 ]
  call void @llvm.dbg.value(metadata i8* %336, i64 0, metadata !711, metadata !607) #11, !dbg !1022
  store i8 48, i8* %337, align 1, !tbaa !716
  %338 = getelementptr inbounds i8, i8* %336, i64 -1, !dbg !1025
  call void @llvm.dbg.value(metadata i8* %338, i64 0, metadata !711, metadata !607) #11, !dbg !1022
  %339 = load i8, i8* %338, align 1, !dbg !1026, !tbaa !716
  %340 = icmp eq i8 %339, 57, !dbg !1027
  br i1 %340, label %335, label %341, !dbg !1024, !llvm.loop !728

; <label>:341:                                    ; preds = %335
  %342 = add i8 %339, 1, !dbg !1028
  store i8 %342, i8* %338, align 1, !dbg !1028, !tbaa !716
  %343 = icmp ult i8* %331, %338, !dbg !1029
  %344 = select i1 %343, i8* %331, i8* %338, !dbg !1029
  call void @llvm.dbg.value(metadata i8* %344, i64 0, metadata !712, metadata !607) #11, !dbg !1030
  br i1 %329, label %345, label %347, !dbg !1031

; <label>:345:                                    ; preds = %341
  %346 = getelementptr inbounds i8, i8* %344, i64 -1, !dbg !1032
  call void @llvm.dbg.value(metadata i8* %346, i64 0, metadata !712, metadata !607) #11, !dbg !1030
  store i8 45, i8* %346, align 1, !dbg !1033, !tbaa !716
  br label %347, !dbg !1034

; <label>:347:                                    ; preds = %341, %345
  %348 = phi i8* [ %346, %345 ], [ %344, %341 ]
  call void @llvm.dbg.value(metadata i8* %348, i64 0, metadata !712, metadata !607) #11, !dbg !1030
  %349 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i64 0, i64 0), i8* %348) #11, !dbg !1013
  %350 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 9223372036854775807) #11, !dbg !1035
  %351 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0), i8* %13) #11, !dbg !1035
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !704, metadata !607) #11, !dbg !1036
  %352 = load i8, i8* %13, align 1, !dbg !1038, !tbaa !716
  %353 = icmp eq i8 %352, 45, !dbg !1039
  %354 = zext i1 %353 to i64, !dbg !1040
  %355 = getelementptr inbounds i8, i8* %13, i64 %354, !dbg !1040
  call void @llvm.dbg.value(metadata i8* %355, i64 0, metadata !710, metadata !607) #11, !dbg !1041
  %356 = call i64 @strlen(i8* %355) #14, !dbg !1042
  %357 = getelementptr inbounds i8, i8* %355, i64 %356, !dbg !1043
  call void @llvm.dbg.value(metadata i8* %357, i64 0, metadata !711, metadata !607) #11, !dbg !1044
  %358 = getelementptr inbounds i8, i8* %355, i64 -1, !dbg !1045
  br label %359, !dbg !1046

; <label>:359:                                    ; preds = %359, %347
  %360 = phi i8* [ %357, %347 ], [ %362, %359 ]
  %361 = phi i8* [ %358, %347 ], [ %362, %359 ]
  call void @llvm.dbg.value(metadata i8* %360, i64 0, metadata !711, metadata !607) #11, !dbg !1044
  store i8 48, i8* %361, align 1, !tbaa !716
  %362 = getelementptr inbounds i8, i8* %360, i64 -1, !dbg !1047
  call void @llvm.dbg.value(metadata i8* %362, i64 0, metadata !711, metadata !607) #11, !dbg !1044
  %363 = load i8, i8* %362, align 1, !dbg !1048, !tbaa !716
  %364 = icmp eq i8 %363, 57, !dbg !1049
  br i1 %364, label %359, label %365, !dbg !1046, !llvm.loop !728

; <label>:365:                                    ; preds = %359
  %366 = add i8 %363, 1, !dbg !1050
  store i8 %366, i8* %362, align 1, !dbg !1050, !tbaa !716
  %367 = icmp ult i8* %355, %362, !dbg !1051
  %368 = select i1 %367, i8* %355, i8* %362, !dbg !1051
  call void @llvm.dbg.value(metadata i8* %368, i64 0, metadata !712, metadata !607) #11, !dbg !1052
  br i1 %353, label %369, label %371, !dbg !1053

; <label>:369:                                    ; preds = %365
  %370 = getelementptr inbounds i8, i8* %368, i64 -1, !dbg !1054
  call void @llvm.dbg.value(metadata i8* %370, i64 0, metadata !712, metadata !607) #11, !dbg !1052
  store i8 45, i8* %370, align 1, !dbg !1055, !tbaa !716
  br label %371, !dbg !1056

; <label>:371:                                    ; preds = %365, %369
  %372 = phi i8* [ %370, %369 ], [ %368, %365 ]
  call void @llvm.dbg.value(metadata i8* %372, i64 0, metadata !712, metadata !607) #11, !dbg !1052
  %373 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i64 0, i64 0), i8* %372) #11, !dbg !1035
  %374 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -9223372036854775808) #11, !dbg !1057
  %375 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i64 0, i64 0), i8* %13) #11, !dbg !1057
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !704, metadata !607) #11, !dbg !1060
  %376 = load i8, i8* %13, align 1, !dbg !1062, !tbaa !716
  %377 = icmp eq i8 %376, 45, !dbg !1063
  %378 = zext i1 %377 to i64, !dbg !1064
  %379 = getelementptr inbounds i8, i8* %13, i64 %378, !dbg !1064
  call void @llvm.dbg.value(metadata i8* %379, i64 0, metadata !710, metadata !607) #11, !dbg !1065
  %380 = call i64 @strlen(i8* %379) #14, !dbg !1066
  %381 = getelementptr inbounds i8, i8* %379, i64 %380, !dbg !1067
  call void @llvm.dbg.value(metadata i8* %381, i64 0, metadata !711, metadata !607) #11, !dbg !1068
  %382 = getelementptr inbounds i8, i8* %379, i64 -1, !dbg !1069
  br label %383, !dbg !1070

; <label>:383:                                    ; preds = %383, %371
  %384 = phi i8* [ %381, %371 ], [ %386, %383 ]
  %385 = phi i8* [ %382, %371 ], [ %386, %383 ]
  call void @llvm.dbg.value(metadata i8* %384, i64 0, metadata !711, metadata !607) #11, !dbg !1068
  store i8 48, i8* %385, align 1, !tbaa !716
  %386 = getelementptr inbounds i8, i8* %384, i64 -1, !dbg !1071
  call void @llvm.dbg.value(metadata i8* %386, i64 0, metadata !711, metadata !607) #11, !dbg !1068
  %387 = load i8, i8* %386, align 1, !dbg !1072, !tbaa !716
  %388 = icmp eq i8 %387, 57, !dbg !1073
  br i1 %388, label %383, label %389, !dbg !1070, !llvm.loop !728

; <label>:389:                                    ; preds = %383
  %390 = add i8 %387, 1, !dbg !1074
  store i8 %390, i8* %386, align 1, !dbg !1074, !tbaa !716
  %391 = icmp ult i8* %379, %386, !dbg !1075
  %392 = select i1 %391, i8* %379, i8* %386, !dbg !1075
  call void @llvm.dbg.value(metadata i8* %392, i64 0, metadata !712, metadata !607) #11, !dbg !1076
  br i1 %377, label %393, label %395, !dbg !1077

; <label>:393:                                    ; preds = %389
  %394 = getelementptr inbounds i8, i8* %392, i64 -1, !dbg !1078
  call void @llvm.dbg.value(metadata i8* %394, i64 0, metadata !712, metadata !607) #11, !dbg !1076
  store i8 45, i8* %394, align 1, !dbg !1079, !tbaa !716
  br label %395, !dbg !1080

; <label>:395:                                    ; preds = %389, %393
  %396 = phi i8* [ %394, %393 ], [ %392, %389 ]
  call void @llvm.dbg.value(metadata i8* %396, i64 0, metadata !712, metadata !607) #11, !dbg !1076
  %397 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i64 0, i64 0), i8* %396) #11, !dbg !1057
  %398 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 9223372036854775807) #11, !dbg !1081
  %399 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i64 0, i64 0), i8* %13) #11, !dbg !1081
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !704, metadata !607) #11, !dbg !1082
  %400 = load i8, i8* %13, align 1, !dbg !1084, !tbaa !716
  %401 = icmp eq i8 %400, 45, !dbg !1085
  %402 = zext i1 %401 to i64, !dbg !1086
  %403 = getelementptr inbounds i8, i8* %13, i64 %402, !dbg !1086
  call void @llvm.dbg.value(metadata i8* %403, i64 0, metadata !710, metadata !607) #11, !dbg !1087
  %404 = call i64 @strlen(i8* %403) #14, !dbg !1088
  %405 = getelementptr inbounds i8, i8* %403, i64 %404, !dbg !1089
  call void @llvm.dbg.value(metadata i8* %405, i64 0, metadata !711, metadata !607) #11, !dbg !1090
  %406 = getelementptr inbounds i8, i8* %403, i64 -1, !dbg !1091
  br label %407, !dbg !1092

; <label>:407:                                    ; preds = %407, %395
  %408 = phi i8* [ %405, %395 ], [ %410, %407 ]
  %409 = phi i8* [ %406, %395 ], [ %410, %407 ]
  call void @llvm.dbg.value(metadata i8* %408, i64 0, metadata !711, metadata !607) #11, !dbg !1090
  store i8 48, i8* %409, align 1, !tbaa !716
  %410 = getelementptr inbounds i8, i8* %408, i64 -1, !dbg !1093
  call void @llvm.dbg.value(metadata i8* %410, i64 0, metadata !711, metadata !607) #11, !dbg !1090
  %411 = load i8, i8* %410, align 1, !dbg !1094, !tbaa !716
  %412 = icmp eq i8 %411, 57, !dbg !1095
  br i1 %412, label %407, label %413, !dbg !1092, !llvm.loop !728

; <label>:413:                                    ; preds = %407
  %414 = add i8 %411, 1, !dbg !1096
  store i8 %414, i8* %410, align 1, !dbg !1096, !tbaa !716
  %415 = icmp ult i8* %403, %410, !dbg !1097
  %416 = select i1 %415, i8* %403, i8* %410, !dbg !1097
  call void @llvm.dbg.value(metadata i8* %416, i64 0, metadata !712, metadata !607) #11, !dbg !1098
  br i1 %401, label %417, label %419, !dbg !1099

; <label>:417:                                    ; preds = %413
  %418 = getelementptr inbounds i8, i8* %416, i64 -1, !dbg !1100
  call void @llvm.dbg.value(metadata i8* %418, i64 0, metadata !712, metadata !607) #11, !dbg !1098
  store i8 45, i8* %418, align 1, !dbg !1101, !tbaa !716
  br label %419, !dbg !1102

; <label>:419:                                    ; preds = %413, %417
  %420 = phi i8* [ %418, %417 ], [ %416, %413 ]
  call void @llvm.dbg.value(metadata i8* %420, i64 0, metadata !712, metadata !607) #11, !dbg !1098
  %421 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i64 0, i64 0), i8* %420) #11, !dbg !1081
  %422 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -9223372036854775808) #11, !dbg !1103
  %423 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i64 0, i64 0), i8* %13) #11, !dbg !1103
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !704, metadata !607) #11, !dbg !1106
  %424 = load i8, i8* %13, align 1, !dbg !1108, !tbaa !716
  %425 = icmp eq i8 %424, 45, !dbg !1109
  %426 = zext i1 %425 to i64, !dbg !1110
  %427 = getelementptr inbounds i8, i8* %13, i64 %426, !dbg !1110
  call void @llvm.dbg.value(metadata i8* %427, i64 0, metadata !710, metadata !607) #11, !dbg !1111
  %428 = call i64 @strlen(i8* %427) #14, !dbg !1112
  %429 = getelementptr inbounds i8, i8* %427, i64 %428, !dbg !1113
  call void @llvm.dbg.value(metadata i8* %429, i64 0, metadata !711, metadata !607) #11, !dbg !1114
  %430 = getelementptr inbounds i8, i8* %427, i64 -1, !dbg !1115
  br label %431, !dbg !1116

; <label>:431:                                    ; preds = %431, %419
  %432 = phi i8* [ %429, %419 ], [ %434, %431 ]
  %433 = phi i8* [ %430, %419 ], [ %434, %431 ]
  call void @llvm.dbg.value(metadata i8* %432, i64 0, metadata !711, metadata !607) #11, !dbg !1114
  store i8 48, i8* %433, align 1, !tbaa !716
  %434 = getelementptr inbounds i8, i8* %432, i64 -1, !dbg !1117
  call void @llvm.dbg.value(metadata i8* %434, i64 0, metadata !711, metadata !607) #11, !dbg !1114
  %435 = load i8, i8* %434, align 1, !dbg !1118, !tbaa !716
  %436 = icmp eq i8 %435, 57, !dbg !1119
  br i1 %436, label %431, label %437, !dbg !1116, !llvm.loop !728

; <label>:437:                                    ; preds = %431
  %438 = add i8 %435, 1, !dbg !1120
  store i8 %438, i8* %434, align 1, !dbg !1120, !tbaa !716
  %439 = icmp ult i8* %427, %434, !dbg !1121
  %440 = select i1 %439, i8* %427, i8* %434, !dbg !1121
  call void @llvm.dbg.value(metadata i8* %440, i64 0, metadata !712, metadata !607) #11, !dbg !1122
  br i1 %425, label %441, label %443, !dbg !1123

; <label>:441:                                    ; preds = %437
  %442 = getelementptr inbounds i8, i8* %440, i64 -1, !dbg !1124
  call void @llvm.dbg.value(metadata i8* %442, i64 0, metadata !712, metadata !607) #11, !dbg !1122
  store i8 45, i8* %442, align 1, !dbg !1125, !tbaa !716
  br label %443, !dbg !1126

; <label>:443:                                    ; preds = %437, %441
  %444 = phi i8* [ %442, %441 ], [ %440, %437 ]
  call void @llvm.dbg.value(metadata i8* %444, i64 0, metadata !712, metadata !607) #11, !dbg !1122
  %445 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i64 0, i64 0), i8* %444) #11, !dbg !1103
  %446 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 4294967295) #11, !dbg !1127
  %447 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0), i8* %13) #11, !dbg !1127
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !704, metadata !607) #11, !dbg !1128
  %448 = load i8, i8* %13, align 1, !dbg !1130, !tbaa !716
  %449 = icmp eq i8 %448, 45, !dbg !1131
  %450 = zext i1 %449 to i64, !dbg !1132
  %451 = getelementptr inbounds i8, i8* %13, i64 %450, !dbg !1132
  call void @llvm.dbg.value(metadata i8* %451, i64 0, metadata !710, metadata !607) #11, !dbg !1133
  %452 = call i64 @strlen(i8* %451) #14, !dbg !1134
  %453 = getelementptr inbounds i8, i8* %451, i64 %452, !dbg !1135
  call void @llvm.dbg.value(metadata i8* %453, i64 0, metadata !711, metadata !607) #11, !dbg !1136
  %454 = getelementptr inbounds i8, i8* %451, i64 -1, !dbg !1137
  br label %455, !dbg !1138

; <label>:455:                                    ; preds = %455, %443
  %456 = phi i8* [ %453, %443 ], [ %458, %455 ]
  %457 = phi i8* [ %454, %443 ], [ %458, %455 ]
  call void @llvm.dbg.value(metadata i8* %456, i64 0, metadata !711, metadata !607) #11, !dbg !1136
  store i8 48, i8* %457, align 1, !tbaa !716
  %458 = getelementptr inbounds i8, i8* %456, i64 -1, !dbg !1139
  call void @llvm.dbg.value(metadata i8* %458, i64 0, metadata !711, metadata !607) #11, !dbg !1136
  %459 = load i8, i8* %458, align 1, !dbg !1140, !tbaa !716
  %460 = icmp eq i8 %459, 57, !dbg !1141
  br i1 %460, label %455, label %461, !dbg !1138, !llvm.loop !728

; <label>:461:                                    ; preds = %455
  %462 = add i8 %459, 1, !dbg !1142
  store i8 %462, i8* %458, align 1, !dbg !1142, !tbaa !716
  %463 = icmp ult i8* %451, %458, !dbg !1143
  %464 = select i1 %463, i8* %451, i8* %458, !dbg !1143
  call void @llvm.dbg.value(metadata i8* %464, i64 0, metadata !712, metadata !607) #11, !dbg !1144
  br i1 %449, label %465, label %467, !dbg !1145

; <label>:465:                                    ; preds = %461
  %466 = getelementptr inbounds i8, i8* %464, i64 -1, !dbg !1146
  call void @llvm.dbg.value(metadata i8* %466, i64 0, metadata !712, metadata !607) #11, !dbg !1144
  store i8 45, i8* %466, align 1, !dbg !1147, !tbaa !716
  br label %467, !dbg !1148

; <label>:467:                                    ; preds = %461, %465
  %468 = phi i8* [ %466, %465 ], [ %464, %461 ]
  call void @llvm.dbg.value(metadata i8* %468, i64 0, metadata !712, metadata !607) #11, !dbg !1144
  %469 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0), i8* %468) #11, !dbg !1127
  %470 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 4294967295) #11, !dbg !1149
  %471 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i64 0, i64 0), i8* %13) #11, !dbg !1149
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !704, metadata !607) #11, !dbg !1150
  %472 = load i8, i8* %13, align 1, !dbg !1152, !tbaa !716
  %473 = icmp eq i8 %472, 45, !dbg !1153
  %474 = zext i1 %473 to i64, !dbg !1154
  %475 = getelementptr inbounds i8, i8* %13, i64 %474, !dbg !1154
  call void @llvm.dbg.value(metadata i8* %475, i64 0, metadata !710, metadata !607) #11, !dbg !1155
  %476 = call i64 @strlen(i8* %475) #14, !dbg !1156
  %477 = getelementptr inbounds i8, i8* %475, i64 %476, !dbg !1157
  call void @llvm.dbg.value(metadata i8* %477, i64 0, metadata !711, metadata !607) #11, !dbg !1158
  %478 = getelementptr inbounds i8, i8* %475, i64 -1, !dbg !1159
  br label %479, !dbg !1160

; <label>:479:                                    ; preds = %479, %467
  %480 = phi i8* [ %477, %467 ], [ %482, %479 ]
  %481 = phi i8* [ %478, %467 ], [ %482, %479 ]
  call void @llvm.dbg.value(metadata i8* %480, i64 0, metadata !711, metadata !607) #11, !dbg !1158
  store i8 48, i8* %481, align 1, !tbaa !716
  %482 = getelementptr inbounds i8, i8* %480, i64 -1, !dbg !1161
  call void @llvm.dbg.value(metadata i8* %482, i64 0, metadata !711, metadata !607) #11, !dbg !1158
  %483 = load i8, i8* %482, align 1, !dbg !1162, !tbaa !716
  %484 = icmp eq i8 %483, 57, !dbg !1163
  br i1 %484, label %479, label %485, !dbg !1160, !llvm.loop !728

; <label>:485:                                    ; preds = %479
  %486 = add i8 %483, 1, !dbg !1164
  store i8 %486, i8* %482, align 1, !dbg !1164, !tbaa !716
  %487 = icmp ult i8* %475, %482, !dbg !1165
  %488 = select i1 %487, i8* %475, i8* %482, !dbg !1165
  call void @llvm.dbg.value(metadata i8* %488, i64 0, metadata !712, metadata !607) #11, !dbg !1166
  br i1 %473, label %489, label %491, !dbg !1167

; <label>:489:                                    ; preds = %485
  %490 = getelementptr inbounds i8, i8* %488, i64 -1, !dbg !1168
  call void @llvm.dbg.value(metadata i8* %490, i64 0, metadata !712, metadata !607) #11, !dbg !1166
  store i8 45, i8* %490, align 1, !dbg !1169, !tbaa !716
  br label %491, !dbg !1170

; <label>:491:                                    ; preds = %485, %489
  %492 = phi i8* [ %490, %489 ], [ %488, %485 ]
  call void @llvm.dbg.value(metadata i8* %492, i64 0, metadata !712, metadata !607) #11, !dbg !1166
  %493 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i64 0, i64 0), i8* %492) #11, !dbg !1149
  %494 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 2147483647) #11, !dbg !1171
  %495 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i64 0, i64 0), i8* %13) #11, !dbg !1171
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !704, metadata !607) #11, !dbg !1172
  %496 = load i8, i8* %13, align 1, !dbg !1174, !tbaa !716
  %497 = icmp eq i8 %496, 45, !dbg !1175
  %498 = zext i1 %497 to i64, !dbg !1176
  %499 = getelementptr inbounds i8, i8* %13, i64 %498, !dbg !1176
  call void @llvm.dbg.value(metadata i8* %499, i64 0, metadata !710, metadata !607) #11, !dbg !1177
  %500 = call i64 @strlen(i8* %499) #14, !dbg !1178
  %501 = getelementptr inbounds i8, i8* %499, i64 %500, !dbg !1179
  call void @llvm.dbg.value(metadata i8* %501, i64 0, metadata !711, metadata !607) #11, !dbg !1180
  %502 = getelementptr inbounds i8, i8* %499, i64 -1, !dbg !1181
  br label %503, !dbg !1182

; <label>:503:                                    ; preds = %503, %491
  %504 = phi i8* [ %501, %491 ], [ %506, %503 ]
  %505 = phi i8* [ %502, %491 ], [ %506, %503 ]
  call void @llvm.dbg.value(metadata i8* %504, i64 0, metadata !711, metadata !607) #11, !dbg !1180
  store i8 48, i8* %505, align 1, !tbaa !716
  %506 = getelementptr inbounds i8, i8* %504, i64 -1, !dbg !1183
  call void @llvm.dbg.value(metadata i8* %506, i64 0, metadata !711, metadata !607) #11, !dbg !1180
  %507 = load i8, i8* %506, align 1, !dbg !1184, !tbaa !716
  %508 = icmp eq i8 %507, 57, !dbg !1185
  br i1 %508, label %503, label %509, !dbg !1182, !llvm.loop !728

; <label>:509:                                    ; preds = %503
  %510 = add i8 %507, 1, !dbg !1186
  store i8 %510, i8* %506, align 1, !dbg !1186, !tbaa !716
  %511 = icmp ult i8* %499, %506, !dbg !1187
  %512 = select i1 %511, i8* %499, i8* %506, !dbg !1187
  call void @llvm.dbg.value(metadata i8* %512, i64 0, metadata !712, metadata !607) #11, !dbg !1188
  br i1 %497, label %513, label %515, !dbg !1189

; <label>:513:                                    ; preds = %509
  %514 = getelementptr inbounds i8, i8* %512, i64 -1, !dbg !1190
  call void @llvm.dbg.value(metadata i8* %514, i64 0, metadata !712, metadata !607) #11, !dbg !1188
  store i8 45, i8* %514, align 1, !dbg !1191, !tbaa !716
  br label %515, !dbg !1192

; <label>:515:                                    ; preds = %509, %513
  %516 = phi i8* [ %514, %513 ], [ %512, %509 ]
  call void @llvm.dbg.value(metadata i8* %516, i64 0, metadata !712, metadata !607) #11, !dbg !1188
  %517 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i64 0, i64 0), i8* %516) #11, !dbg !1171
  %518 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -2147483648) #11, !dbg !1193
  %519 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i64 0, i64 0), i8* %13) #11, !dbg !1193
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !704, metadata !607) #11, !dbg !1196
  %520 = load i8, i8* %13, align 1, !dbg !1198, !tbaa !716
  %521 = icmp eq i8 %520, 45, !dbg !1199
  %522 = zext i1 %521 to i64, !dbg !1200
  %523 = getelementptr inbounds i8, i8* %13, i64 %522, !dbg !1200
  call void @llvm.dbg.value(metadata i8* %523, i64 0, metadata !710, metadata !607) #11, !dbg !1201
  %524 = call i64 @strlen(i8* %523) #14, !dbg !1202
  %525 = getelementptr inbounds i8, i8* %523, i64 %524, !dbg !1203
  call void @llvm.dbg.value(metadata i8* %525, i64 0, metadata !711, metadata !607) #11, !dbg !1204
  %526 = getelementptr inbounds i8, i8* %523, i64 -1, !dbg !1205
  br label %527, !dbg !1206

; <label>:527:                                    ; preds = %527, %515
  %528 = phi i8* [ %525, %515 ], [ %530, %527 ]
  %529 = phi i8* [ %526, %515 ], [ %530, %527 ]
  call void @llvm.dbg.value(metadata i8* %528, i64 0, metadata !711, metadata !607) #11, !dbg !1204
  store i8 48, i8* %529, align 1, !tbaa !716
  %530 = getelementptr inbounds i8, i8* %528, i64 -1, !dbg !1207
  call void @llvm.dbg.value(metadata i8* %530, i64 0, metadata !711, metadata !607) #11, !dbg !1204
  %531 = load i8, i8* %530, align 1, !dbg !1208, !tbaa !716
  %532 = icmp eq i8 %531, 57, !dbg !1209
  br i1 %532, label %527, label %533, !dbg !1206, !llvm.loop !728

; <label>:533:                                    ; preds = %527
  %534 = add i8 %531, 1, !dbg !1210
  store i8 %534, i8* %530, align 1, !dbg !1210, !tbaa !716
  %535 = icmp ult i8* %523, %530, !dbg !1211
  %536 = select i1 %535, i8* %523, i8* %530, !dbg !1211
  call void @llvm.dbg.value(metadata i8* %536, i64 0, metadata !712, metadata !607) #11, !dbg !1212
  br i1 %521, label %537, label %539, !dbg !1213

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %536, i64 -1, !dbg !1214
  call void @llvm.dbg.value(metadata i8* %538, i64 0, metadata !712, metadata !607) #11, !dbg !1212
  store i8 45, i8* %538, align 1, !dbg !1215, !tbaa !716
  br label %539, !dbg !1216

; <label>:539:                                    ; preds = %533, %537
  %540 = phi i8* [ %538, %537 ], [ %536, %533 ]
  call void @llvm.dbg.value(metadata i8* %540, i64 0, metadata !712, metadata !607) #11, !dbg !1212
  %541 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.57, i64 0, i64 0), i8* %540) #11, !dbg !1193
  %542 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 9223372036854775807) #11, !dbg !1217
  %543 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i64 0, i64 0), i8* %13) #11, !dbg !1217
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !704, metadata !607) #11, !dbg !1218
  %544 = load i8, i8* %13, align 1, !dbg !1220, !tbaa !716
  %545 = icmp eq i8 %544, 45, !dbg !1221
  %546 = zext i1 %545 to i64, !dbg !1222
  %547 = getelementptr inbounds i8, i8* %13, i64 %546, !dbg !1222
  call void @llvm.dbg.value(metadata i8* %547, i64 0, metadata !710, metadata !607) #11, !dbg !1223
  %548 = call i64 @strlen(i8* %547) #14, !dbg !1224
  %549 = getelementptr inbounds i8, i8* %547, i64 %548, !dbg !1225
  call void @llvm.dbg.value(metadata i8* %549, i64 0, metadata !711, metadata !607) #11, !dbg !1226
  %550 = getelementptr inbounds i8, i8* %547, i64 -1, !dbg !1227
  br label %551, !dbg !1228

; <label>:551:                                    ; preds = %551, %539
  %552 = phi i8* [ %549, %539 ], [ %554, %551 ]
  %553 = phi i8* [ %550, %539 ], [ %554, %551 ]
  call void @llvm.dbg.value(metadata i8* %552, i64 0, metadata !711, metadata !607) #11, !dbg !1226
  store i8 48, i8* %553, align 1, !tbaa !716
  %554 = getelementptr inbounds i8, i8* %552, i64 -1, !dbg !1229
  call void @llvm.dbg.value(metadata i8* %554, i64 0, metadata !711, metadata !607) #11, !dbg !1226
  %555 = load i8, i8* %554, align 1, !dbg !1230, !tbaa !716
  %556 = icmp eq i8 %555, 57, !dbg !1231
  br i1 %556, label %551, label %557, !dbg !1228, !llvm.loop !728

; <label>:557:                                    ; preds = %551
  %558 = add i8 %555, 1, !dbg !1232
  store i8 %558, i8* %554, align 1, !dbg !1232, !tbaa !716
  %559 = icmp ult i8* %547, %554, !dbg !1233
  %560 = select i1 %559, i8* %547, i8* %554, !dbg !1233
  call void @llvm.dbg.value(metadata i8* %560, i64 0, metadata !712, metadata !607) #11, !dbg !1234
  br i1 %545, label %561, label %563, !dbg !1235

; <label>:561:                                    ; preds = %557
  %562 = getelementptr inbounds i8, i8* %560, i64 -1, !dbg !1236
  call void @llvm.dbg.value(metadata i8* %562, i64 0, metadata !712, metadata !607) #11, !dbg !1234
  store i8 45, i8* %562, align 1, !dbg !1237, !tbaa !716
  br label %563, !dbg !1238

; <label>:563:                                    ; preds = %557, %561
  %564 = phi i8* [ %562, %561 ], [ %560, %557 ]
  call void @llvm.dbg.value(metadata i8* %564, i64 0, metadata !712, metadata !607) #11, !dbg !1234
  %565 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i64 0, i64 0), i8* %564) #11, !dbg !1217
  %566 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -9223372036854775808) #11, !dbg !1239
  %567 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i64 0, i64 0), i8* %13) #11, !dbg !1239
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !704, metadata !607) #11, !dbg !1242
  %568 = load i8, i8* %13, align 1, !dbg !1244, !tbaa !716
  %569 = icmp eq i8 %568, 45, !dbg !1245
  %570 = zext i1 %569 to i64, !dbg !1246
  %571 = getelementptr inbounds i8, i8* %13, i64 %570, !dbg !1246
  call void @llvm.dbg.value(metadata i8* %571, i64 0, metadata !710, metadata !607) #11, !dbg !1247
  %572 = call i64 @strlen(i8* %571) #14, !dbg !1248
  %573 = getelementptr inbounds i8, i8* %571, i64 %572, !dbg !1249
  call void @llvm.dbg.value(metadata i8* %573, i64 0, metadata !711, metadata !607) #11, !dbg !1250
  %574 = getelementptr inbounds i8, i8* %571, i64 -1, !dbg !1251
  br label %575, !dbg !1252

; <label>:575:                                    ; preds = %575, %563
  %576 = phi i8* [ %573, %563 ], [ %578, %575 ]
  %577 = phi i8* [ %574, %563 ], [ %578, %575 ]
  call void @llvm.dbg.value(metadata i8* %576, i64 0, metadata !711, metadata !607) #11, !dbg !1250
  store i8 48, i8* %577, align 1, !tbaa !716
  %578 = getelementptr inbounds i8, i8* %576, i64 -1, !dbg !1253
  call void @llvm.dbg.value(metadata i8* %578, i64 0, metadata !711, metadata !607) #11, !dbg !1250
  %579 = load i8, i8* %578, align 1, !dbg !1254, !tbaa !716
  %580 = icmp eq i8 %579, 57, !dbg !1255
  br i1 %580, label %575, label %581, !dbg !1252, !llvm.loop !728

; <label>:581:                                    ; preds = %575
  %582 = add i8 %579, 1, !dbg !1256
  store i8 %582, i8* %578, align 1, !dbg !1256, !tbaa !716
  %583 = icmp ult i8* %571, %578, !dbg !1257
  %584 = select i1 %583, i8* %571, i8* %578, !dbg !1257
  call void @llvm.dbg.value(metadata i8* %584, i64 0, metadata !712, metadata !607) #11, !dbg !1258
  br i1 %569, label %585, label %587, !dbg !1259

; <label>:585:                                    ; preds = %581
  %586 = getelementptr inbounds i8, i8* %584, i64 -1, !dbg !1260
  call void @llvm.dbg.value(metadata i8* %586, i64 0, metadata !712, metadata !607) #11, !dbg !1258
  store i8 45, i8* %586, align 1, !dbg !1261, !tbaa !716
  br label %587, !dbg !1262

; <label>:587:                                    ; preds = %581, %585
  %588 = phi i8* [ %586, %585 ], [ %584, %581 ]
  call void @llvm.dbg.value(metadata i8* %588, i64 0, metadata !712, metadata !607) #11, !dbg !1258
  %589 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i64 0, i64 0), i8* %588) #11, !dbg !1239
  %590 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 9223372036854775807) #11, !dbg !1263
  %591 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i64 0, i64 0), i8* %13) #11, !dbg !1263
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !704, metadata !607) #11, !dbg !1264
  %592 = load i8, i8* %13, align 1, !dbg !1266, !tbaa !716
  %593 = icmp eq i8 %592, 45, !dbg !1267
  %594 = zext i1 %593 to i64, !dbg !1268
  %595 = getelementptr inbounds i8, i8* %13, i64 %594, !dbg !1268
  call void @llvm.dbg.value(metadata i8* %595, i64 0, metadata !710, metadata !607) #11, !dbg !1269
  %596 = call i64 @strlen(i8* %595) #14, !dbg !1270
  %597 = getelementptr inbounds i8, i8* %595, i64 %596, !dbg !1271
  call void @llvm.dbg.value(metadata i8* %597, i64 0, metadata !711, metadata !607) #11, !dbg !1272
  %598 = getelementptr inbounds i8, i8* %595, i64 -1, !dbg !1273
  br label %599, !dbg !1274

; <label>:599:                                    ; preds = %599, %587
  %600 = phi i8* [ %597, %587 ], [ %602, %599 ]
  %601 = phi i8* [ %598, %587 ], [ %602, %599 ]
  call void @llvm.dbg.value(metadata i8* %600, i64 0, metadata !711, metadata !607) #11, !dbg !1272
  store i8 48, i8* %601, align 1, !tbaa !716
  %602 = getelementptr inbounds i8, i8* %600, i64 -1, !dbg !1275
  call void @llvm.dbg.value(metadata i8* %602, i64 0, metadata !711, metadata !607) #11, !dbg !1272
  %603 = load i8, i8* %602, align 1, !dbg !1276, !tbaa !716
  %604 = icmp eq i8 %603, 57, !dbg !1277
  br i1 %604, label %599, label %605, !dbg !1274, !llvm.loop !728

; <label>:605:                                    ; preds = %599
  %606 = add i8 %603, 1, !dbg !1278
  store i8 %606, i8* %602, align 1, !dbg !1278, !tbaa !716
  %607 = icmp ult i8* %595, %602, !dbg !1279
  %608 = select i1 %607, i8* %595, i8* %602, !dbg !1279
  call void @llvm.dbg.value(metadata i8* %608, i64 0, metadata !712, metadata !607) #11, !dbg !1280
  br i1 %593, label %609, label %611, !dbg !1281

; <label>:609:                                    ; preds = %605
  %610 = getelementptr inbounds i8, i8* %608, i64 -1, !dbg !1282
  call void @llvm.dbg.value(metadata i8* %610, i64 0, metadata !712, metadata !607) #11, !dbg !1280
  store i8 45, i8* %610, align 1, !dbg !1283, !tbaa !716
  br label %611, !dbg !1284

; <label>:611:                                    ; preds = %605, %609
  %612 = phi i8* [ %610, %609 ], [ %608, %605 ]
  call void @llvm.dbg.value(metadata i8* %612, i64 0, metadata !712, metadata !607) #11, !dbg !1280
  %613 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.63, i64 0, i64 0), i8* %612) #11, !dbg !1263
  %614 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -9223372036854775808) #11, !dbg !1285
  %615 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i64 0, i64 0), i8* %13) #11, !dbg !1285
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !704, metadata !607) #11, !dbg !1288
  %616 = load i8, i8* %13, align 1, !dbg !1290, !tbaa !716
  %617 = icmp eq i8 %616, 45, !dbg !1291
  %618 = zext i1 %617 to i64, !dbg !1292
  %619 = getelementptr inbounds i8, i8* %13, i64 %618, !dbg !1292
  call void @llvm.dbg.value(metadata i8* %619, i64 0, metadata !710, metadata !607) #11, !dbg !1293
  %620 = call i64 @strlen(i8* %619) #14, !dbg !1294
  %621 = getelementptr inbounds i8, i8* %619, i64 %620, !dbg !1295
  call void @llvm.dbg.value(metadata i8* %621, i64 0, metadata !711, metadata !607) #11, !dbg !1296
  %622 = getelementptr inbounds i8, i8* %619, i64 -1, !dbg !1297
  br label %623, !dbg !1298

; <label>:623:                                    ; preds = %623, %611
  %624 = phi i8* [ %621, %611 ], [ %626, %623 ]
  %625 = phi i8* [ %622, %611 ], [ %626, %623 ]
  call void @llvm.dbg.value(metadata i8* %624, i64 0, metadata !711, metadata !607) #11, !dbg !1296
  store i8 48, i8* %625, align 1, !tbaa !716
  %626 = getelementptr inbounds i8, i8* %624, i64 -1, !dbg !1299
  call void @llvm.dbg.value(metadata i8* %626, i64 0, metadata !711, metadata !607) #11, !dbg !1296
  %627 = load i8, i8* %626, align 1, !dbg !1300, !tbaa !716
  %628 = icmp eq i8 %627, 57, !dbg !1301
  br i1 %628, label %623, label %629, !dbg !1298, !llvm.loop !728

; <label>:629:                                    ; preds = %623
  %630 = add i8 %627, 1, !dbg !1302
  store i8 %630, i8* %626, align 1, !dbg !1302, !tbaa !716
  %631 = icmp ult i8* %619, %626, !dbg !1303
  %632 = select i1 %631, i8* %619, i8* %626, !dbg !1303
  call void @llvm.dbg.value(metadata i8* %632, i64 0, metadata !712, metadata !607) #11, !dbg !1304
  br i1 %617, label %633, label %635, !dbg !1305

; <label>:633:                                    ; preds = %629
  %634 = getelementptr inbounds i8, i8* %632, i64 -1, !dbg !1306
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !712, metadata !607) #11, !dbg !1304
  store i8 45, i8* %634, align 1, !dbg !1307, !tbaa !716
  br label %635, !dbg !1308

; <label>:635:                                    ; preds = %629, %633
  %636 = phi i8* [ %634, %633 ], [ %632, %629 ]
  call void @llvm.dbg.value(metadata i8* %636, i64 0, metadata !712, metadata !607) #11, !dbg !1304
  %637 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.65, i64 0, i64 0), i8* %636) #11, !dbg !1285
  %638 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 -1) #11, !dbg !1309
  %639 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i64 0, i64 0), i8* %13) #11, !dbg !1309
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !704, metadata !607) #11, !dbg !1310
  %640 = load i8, i8* %13, align 1, !dbg !1312, !tbaa !716
  %641 = icmp eq i8 %640, 45, !dbg !1313
  %642 = zext i1 %641 to i64, !dbg !1314
  %643 = getelementptr inbounds i8, i8* %13, i64 %642, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %643, i64 0, metadata !710, metadata !607) #11, !dbg !1315
  %644 = call i64 @strlen(i8* %643) #14, !dbg !1316
  %645 = getelementptr inbounds i8, i8* %643, i64 %644, !dbg !1317
  call void @llvm.dbg.value(metadata i8* %645, i64 0, metadata !711, metadata !607) #11, !dbg !1318
  %646 = getelementptr inbounds i8, i8* %643, i64 -1, !dbg !1319
  br label %647, !dbg !1320

; <label>:647:                                    ; preds = %647, %635
  %648 = phi i8* [ %645, %635 ], [ %650, %647 ]
  %649 = phi i8* [ %646, %635 ], [ %650, %647 ]
  call void @llvm.dbg.value(metadata i8* %648, i64 0, metadata !711, metadata !607) #11, !dbg !1318
  store i8 48, i8* %649, align 1, !tbaa !716
  %650 = getelementptr inbounds i8, i8* %648, i64 -1, !dbg !1321
  call void @llvm.dbg.value(metadata i8* %650, i64 0, metadata !711, metadata !607) #11, !dbg !1318
  %651 = load i8, i8* %650, align 1, !dbg !1322, !tbaa !716
  %652 = icmp eq i8 %651, 57, !dbg !1323
  br i1 %652, label %647, label %653, !dbg !1320, !llvm.loop !728

; <label>:653:                                    ; preds = %647
  %654 = add i8 %651, 1, !dbg !1324
  store i8 %654, i8* %650, align 1, !dbg !1324, !tbaa !716
  %655 = icmp ult i8* %643, %650, !dbg !1325
  %656 = select i1 %655, i8* %643, i8* %650, !dbg !1325
  call void @llvm.dbg.value(metadata i8* %656, i64 0, metadata !712, metadata !607) #11, !dbg !1326
  br i1 %641, label %657, label %659, !dbg !1327

; <label>:657:                                    ; preds = %653
  %658 = getelementptr inbounds i8, i8* %656, i64 -1, !dbg !1328
  call void @llvm.dbg.value(metadata i8* %658, i64 0, metadata !712, metadata !607) #11, !dbg !1326
  store i8 45, i8* %658, align 1, !dbg !1329, !tbaa !716
  br label %659, !dbg !1330

; <label>:659:                                    ; preds = %653, %657
  %660 = phi i8* [ %658, %657 ], [ %656, %653 ]
  call void @llvm.dbg.value(metadata i8* %660, i64 0, metadata !712, metadata !607) #11, !dbg !1326
  %661 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.67, i64 0, i64 0), i8* %660) #11, !dbg !1309
  %662 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i64 0, i64 0)) #11, !dbg !1331
  call void @llvm.dbg.value(metadata float 0x3810000000000000, i64 0, metadata !670, metadata !607) #11, !dbg !676
  %663 = getelementptr inbounds [31 x i8], [31 x i8]* %4, i64 0, i64 0, !dbg !676
  call void @llvm.lifetime.start.p0i8(i64 31, i8* nonnull %663) #11, !dbg !676
  %664 = call i32 @ftoastr(i8* nonnull %663, i64 31, i32 1, i32 0, float 0x3810000000000000) #11, !dbg !676
  %665 = call i32 @puts(i8* nonnull %663) #11, !dbg !676
  call void @llvm.lifetime.end.p0i8(i64 31, i8* nonnull %663) #11, !dbg !676
  %666 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i64 0, i64 0)) #11, !dbg !1331
  call void @llvm.dbg.value(metadata float 0x47EFFFFFE0000000, i64 0, metadata !670, metadata !607) #11, !dbg !674
  call void @llvm.lifetime.start.p0i8(i64 31, i8* nonnull %663) #11, !dbg !674
  %667 = call i32 @ftoastr(i8* nonnull %663, i64 31, i32 1, i32 0, float 0x47EFFFFFE0000000) #11, !dbg !674
  %668 = call i32 @puts(i8* nonnull %663) #11, !dbg !674
  call void @llvm.lifetime.end.p0i8(i64 31, i8* nonnull %663) #11, !dbg !674
  %669 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i64 0, i64 0)) #11, !dbg !1332
  call void @llvm.dbg.value(metadata double 0x10000000000000, i64 0, metadata !656, metadata !607) #11, !dbg !662
  %670 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0, !dbg !662
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %670) #11, !dbg !662
  %671 = call i32 @dtoastr(i8* nonnull %670, i64 40, i32 1, i32 0, double 0x10000000000000) #11, !dbg !662
  %672 = call i32 @puts(i8* nonnull %670) #11, !dbg !662
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %670) #11, !dbg !662
  %673 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i64 0, i64 0)) #11, !dbg !1332
  call void @llvm.dbg.value(metadata double 0x7FEFFFFFFFFFFFFF, i64 0, metadata !656, metadata !607) #11, !dbg !660
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %670) #11, !dbg !660
  %674 = call i32 @dtoastr(i8* nonnull %670, i64 40, i32 1, i32 0, double 0x7FEFFFFFFFFFFFFF) #11, !dbg !660
  %675 = call i32 @puts(i8* nonnull %670) #11, !dbg !660
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %670) #11, !dbg !660
  %676 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i64 0, i64 0)) #11, !dbg !1333
  call void @llvm.dbg.value(metadata x86_fp80 0xK00018000000000000000, i64 0, metadata !684, metadata !607) #11, !dbg !688
  %677 = getelementptr inbounds [45 x i8], [45 x i8]* %5, i64 0, i64 0, !dbg !688
  call void @llvm.lifetime.start.p0i8(i64 45, i8* nonnull %677) #11, !dbg !688
  %678 = call i32 @ldtoastr(i8* nonnull %677, i64 45, i32 1, i32 0, x86_fp80 0xK00018000000000000000) #11, !dbg !688
  %679 = call i32 @puts(i8* nonnull %677) #11, !dbg !688
  call void @llvm.lifetime.end.p0i8(i64 45, i8* nonnull %677) #11, !dbg !688
  %680 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i64 0, i64 0)) #11, !dbg !1333
  call void @llvm.dbg.value(metadata x86_fp80 0xK7FFEFFFFFFFFFFFFFFFF, i64 0, metadata !684, metadata !607) #11, !dbg !690
  call void @llvm.lifetime.start.p0i8(i64 45, i8* nonnull %677) #11, !dbg !690
  %681 = call i32 @ldtoastr(i8* nonnull %677, i64 45, i32 1, i32 0, x86_fp80 0xK7FFEFFFFFFFFFFFFFFFF) #11, !dbg !690
  %682 = call i32 @puts(i8* nonnull %677) #11, !dbg !690
  call void @llvm.lifetime.end.p0i8(i64 45, i8* nonnull %677) #11, !dbg !690
  call void @llvm.lifetime.end.p0i8(i64 22, i8* nonnull %7) #11, !dbg !1334
  ret i32 0, !dbg !1335
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1336 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1338, metadata !607), !dbg !1339
  store i8* %0, i8** @file_name, align 8, !dbg !1340, !tbaa !614
  ret void, !dbg !1341
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1342 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1346, metadata !607), !dbg !1347
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1348, !tbaa !1349
  ret void, !dbg !1351
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1352 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1359, !tbaa !614
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1360
  %3 = icmp eq i32 %2, 0, !dbg !1361
  br i1 %3, label %21, label %4, !dbg !1362

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1363, !tbaa !1349, !range !1364
  %6 = icmp eq i8 %5, 0, !dbg !1363
  %7 = tail call i32* @__errno_location() #16, !dbg !1365
  br i1 %6, label %11, label %8, !dbg !1367

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1368, !tbaa !1369
  %10 = icmp eq i32 %9, 32, !dbg !1371
  br i1 %10, label %21, label %11, !dbg !1372

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i64 0, i64 0), i32 5) #11, !dbg !1373
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1356, metadata !607), !dbg !1374
  %13 = load i8*, i8** @file_name, align 8, !dbg !1375, !tbaa !614
  %14 = icmp eq i8* %13, null, !dbg !1375
  %15 = load i32, i32* %7, align 4, !tbaa !1369
  br i1 %14, label %18, label %16, !dbg !1376

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1377
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.75, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !1378
  br label %19, !dbg !1378

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.76, i64 0, i64 0), i8* %12) #11, !dbg !1379
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1380, !tbaa !1369
  tail call void @_exit(i32 %20) #15, !dbg !1381
  unreachable, !dbg !1381

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1382, !tbaa !614
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !1384
  %24 = icmp eq i32 %23, 0, !dbg !1385
  br i1 %24, label %27, label %25, !dbg !1386

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1387, !tbaa !1369
  tail call void @_exit(i32 %26) #15, !dbg !1388
  unreachable, !dbg !1388

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1389
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define i32 @dtoastr(i8*, i64, i32, i32, double) local_unnamed_addr #6 !dbg !1390 {
  %6 = alloca [11 x i8], align 1
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1394, metadata !607), !dbg !1409
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1395, metadata !607), !dbg !1410
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1396, metadata !607), !dbg !1411
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1397, metadata !607), !dbg !1412
  tail call void @llvm.dbg.value(metadata double %4, i64 0, metadata !1398, metadata !607), !dbg !1413
  tail call void @llvm.dbg.value(metadata double %4, i64 0, metadata !1399, metadata !607), !dbg !1414
  %7 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0, !dbg !1415
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %7) #11, !dbg !1415
  tail call void @llvm.dbg.declare(metadata [11 x i8]* %6, metadata !1400, metadata !607), !dbg !1416
  %8 = fcmp olt double %4, 0.000000e+00, !dbg !1417
  %9 = fsub double -0.000000e+00, %4, !dbg !1418
  %10 = select i1 %8, double %9, double %4, !dbg !1419
  tail call void @llvm.dbg.value(metadata double %10, i64 0, metadata !1402, metadata !607), !dbg !1420
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1404, metadata !607), !dbg !1421
  %11 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 1, !dbg !1422
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !1404, metadata !607), !dbg !1421
  store i8 37, i8* %7, align 1, !dbg !1423, !tbaa !716
  store i8 45, i8* %11, align 1, !dbg !1424, !tbaa !716
  %12 = and i32 %2, 1, !dbg !1425
  %13 = zext i32 %12 to i64, !dbg !1426
  %14 = getelementptr inbounds i8, i8* %11, i64 %13, !dbg !1426
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !1404, metadata !607), !dbg !1421
  store i8 43, i8* %14, align 1, !dbg !1427, !tbaa !716
  %15 = lshr i32 %2, 1, !dbg !1428
  %16 = and i32 %15, 1, !dbg !1428
  %17 = zext i32 %16 to i64, !dbg !1429
  %18 = getelementptr inbounds i8, i8* %14, i64 %17, !dbg !1429
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !1404, metadata !607), !dbg !1421
  store i8 32, i8* %18, align 1, !dbg !1430, !tbaa !716
  %19 = lshr i32 %2, 2, !dbg !1431
  %20 = and i32 %19, 1, !dbg !1431
  %21 = zext i32 %20 to i64, !dbg !1432
  %22 = getelementptr inbounds i8, i8* %18, i64 %21, !dbg !1432
  tail call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !1404, metadata !607), !dbg !1421
  store i8 48, i8* %22, align 1, !dbg !1433, !tbaa !716
  %23 = lshr i32 %2, 3, !dbg !1434
  %24 = and i32 %23, 1, !dbg !1434
  %25 = zext i32 %24 to i64, !dbg !1435
  %26 = getelementptr inbounds i8, i8* %22, i64 %25, !dbg !1435
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !1404, metadata !607), !dbg !1421
  %27 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !1436
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !1404, metadata !607), !dbg !1421
  store i8 42, i8* %26, align 1, !dbg !1437, !tbaa !716
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1438
  tail call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !1404, metadata !607), !dbg !1421
  store i8 46, i8* %27, align 1, !dbg !1439, !tbaa !716
  %29 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !1440
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1404, metadata !607), !dbg !1421
  store i8 42, i8* %28, align 1, !dbg !1441, !tbaa !716
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1404, metadata !607), !dbg !1421
  %30 = trunc i32 %2 to i8, !dbg !1442
  %31 = shl i8 %30, 1, !dbg !1442
  %32 = and i8 %31, 32, !dbg !1442
  %33 = xor i8 %32, 103, !dbg !1442
  %34 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !1443
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !1404, metadata !607), !dbg !1421
  store i8 %33, i8* %29, align 1, !dbg !1444, !tbaa !716
  store i8 0, i8* %34, align 1, !dbg !1445, !tbaa !716
  %35 = fcmp olt double %10, 0x10000000000000, !dbg !1446
  %36 = select i1 %35, i32 1, i32 15, !dbg !1447
  tail call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !1403, metadata !607), !dbg !1448
  call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !1403, metadata !607), !dbg !1448
  %37 = call i64 @llvm.objectsize.i64.p0i8(i8* %0, i1 false, i1 true), !dbg !1449
  %38 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 %37, i8* nonnull %7, i32 %3, i32 %36, double %4) #11, !dbg !1449
  call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !1405, metadata !607), !dbg !1450
  %39 = icmp slt i32 %38, 0, !dbg !1451
  br i1 %39, label %55, label %40, !dbg !1453

; <label>:40:                                     ; preds = %5
  br label %41, !dbg !1454

; <label>:41:                                     ; preds = %40, %49
  %42 = phi i32 [ %51, %49 ], [ %38, %40 ]
  %43 = phi i32 [ %50, %49 ], [ %36, %40 ]
  call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !1403, metadata !607), !dbg !1448
  %44 = sext i32 %42 to i64, !dbg !1454
  %45 = icmp ult i64 %44, %1, !dbg !1455
  br i1 %45, label %46, label %49, !dbg !1456

; <label>:46:                                     ; preds = %41
  %47 = call double @strtod(i8* nocapture %0, i8** null) #11, !dbg !1457
  %48 = fcmp oeq double %47, %4, !dbg !1458
  br i1 %48, label %55, label %49, !dbg !1459

; <label>:49:                                     ; preds = %46, %41
  %50 = add nuw nsw i32 %43, 1, !dbg !1460
  call void @llvm.dbg.value(metadata i32 %50, i64 0, metadata !1403, metadata !607), !dbg !1448
  call void @llvm.dbg.value(metadata i32 %50, i64 0, metadata !1403, metadata !607), !dbg !1448
  %51 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 %37, i8* nonnull %7, i32 %3, i32 %50, double %4) #11, !dbg !1449
  call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !1405, metadata !607), !dbg !1450
  %52 = icmp slt i32 %51, 0, !dbg !1451
  %53 = icmp ugt i32 %43, 15, !dbg !1461
  %54 = or i1 %53, %52, !dbg !1453
  br i1 %54, label %55, label %41, !dbg !1453, !llvm.loop !1462

; <label>:55:                                     ; preds = %49, %46, %5
  %56 = phi i32 [ %38, %5 ], [ %42, %46 ], [ %51, %49 ]
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %7) #11, !dbg !1465
  ret i32 %56, !dbg !1465
}

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

declare i32 @__snprintf_chk(i8*, i64, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare double @strtod(i8* readonly, i8** nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @ftoastr(i8*, i64, i32, i32, float) local_unnamed_addr #6 !dbg !1466 {
  %6 = alloca [11 x i8], align 1
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1471, metadata !607), !dbg !1485
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1472, metadata !607), !dbg !1486
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1473, metadata !607), !dbg !1487
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1474, metadata !607), !dbg !1488
  tail call void @llvm.dbg.value(metadata float %4, i64 0, metadata !1475, metadata !607), !dbg !1489
  %7 = fpext float %4 to double, !dbg !1490
  tail call void @llvm.dbg.value(metadata double %7, i64 0, metadata !1476, metadata !607), !dbg !1491
  %8 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0, !dbg !1492
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %8) #11, !dbg !1492
  tail call void @llvm.dbg.declare(metadata [11 x i8]* %6, metadata !1477, metadata !607), !dbg !1493
  %9 = fcmp olt float %4, 0.000000e+00, !dbg !1494
  %10 = fsub float -0.000000e+00, %4, !dbg !1495
  %11 = select i1 %9, float %10, float %4, !dbg !1496
  tail call void @llvm.dbg.value(metadata float %11, i64 0, metadata !1478, metadata !607), !dbg !1497
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1480, metadata !607), !dbg !1498
  %12 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 1, !dbg !1499
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1480, metadata !607), !dbg !1498
  store i8 37, i8* %8, align 1, !dbg !1500, !tbaa !716
  store i8 45, i8* %12, align 1, !dbg !1501, !tbaa !716
  %13 = and i32 %2, 1, !dbg !1502
  %14 = zext i32 %13 to i64, !dbg !1503
  %15 = getelementptr inbounds i8, i8* %12, i64 %14, !dbg !1503
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !1480, metadata !607), !dbg !1498
  store i8 43, i8* %15, align 1, !dbg !1504, !tbaa !716
  %16 = lshr i32 %2, 1, !dbg !1505
  %17 = and i32 %16, 1, !dbg !1505
  %18 = zext i32 %17 to i64, !dbg !1506
  %19 = getelementptr inbounds i8, i8* %15, i64 %18, !dbg !1506
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !1480, metadata !607), !dbg !1498
  store i8 32, i8* %19, align 1, !dbg !1507, !tbaa !716
  %20 = lshr i32 %2, 2, !dbg !1508
  %21 = and i32 %20, 1, !dbg !1508
  %22 = zext i32 %21 to i64, !dbg !1509
  %23 = getelementptr inbounds i8, i8* %19, i64 %22, !dbg !1509
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1480, metadata !607), !dbg !1498
  store i8 48, i8* %23, align 1, !dbg !1510, !tbaa !716
  %24 = lshr i32 %2, 3, !dbg !1511
  %25 = and i32 %24, 1, !dbg !1511
  %26 = zext i32 %25 to i64, !dbg !1512
  %27 = getelementptr inbounds i8, i8* %23, i64 %26, !dbg !1512
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !1480, metadata !607), !dbg !1498
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1513
  tail call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !1480, metadata !607), !dbg !1498
  store i8 42, i8* %27, align 1, !dbg !1514, !tbaa !716
  %29 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !1515
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1480, metadata !607), !dbg !1498
  store i8 46, i8* %28, align 1, !dbg !1516, !tbaa !716
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !1517
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1480, metadata !607), !dbg !1498
  store i8 42, i8* %29, align 1, !dbg !1518, !tbaa !716
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1480, metadata !607), !dbg !1498
  %31 = trunc i32 %2 to i8, !dbg !1519
  %32 = shl i8 %31, 1, !dbg !1519
  %33 = and i8 %32, 32, !dbg !1519
  %34 = xor i8 %33, 103, !dbg !1519
  %35 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !1520
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !1480, metadata !607), !dbg !1498
  store i8 %34, i8* %30, align 1, !dbg !1521, !tbaa !716
  store i8 0, i8* %35, align 1, !dbg !1522, !tbaa !716
  %36 = fcmp olt float %11, 0x3810000000000000, !dbg !1523
  %37 = select i1 %36, i32 1, i32 6, !dbg !1524
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !1479, metadata !607), !dbg !1525
  call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !1479, metadata !607), !dbg !1525
  %38 = call i64 @llvm.objectsize.i64.p0i8(i8* %0, i1 false, i1 true), !dbg !1526
  %39 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 %38, i8* nonnull %8, i32 %3, i32 %37, double %7) #11, !dbg !1526
  call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !1481, metadata !607), !dbg !1527
  %40 = icmp slt i32 %39, 0, !dbg !1528
  br i1 %40, label %56, label %41, !dbg !1530

; <label>:41:                                     ; preds = %5
  br label %42, !dbg !1531

; <label>:42:                                     ; preds = %41, %50
  %43 = phi i32 [ %52, %50 ], [ %39, %41 ]
  %44 = phi i32 [ %51, %50 ], [ %37, %41 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !1479, metadata !607), !dbg !1525
  %45 = sext i32 %43 to i64, !dbg !1531
  %46 = icmp ult i64 %45, %1, !dbg !1532
  br i1 %46, label %47, label %50, !dbg !1533

; <label>:47:                                     ; preds = %42
  %48 = call float @strtof(i8* nocapture %0, i8** null) #11, !dbg !1534
  %49 = fcmp oeq float %48, %4, !dbg !1535
  br i1 %49, label %56, label %50, !dbg !1536

; <label>:50:                                     ; preds = %47, %42
  %51 = add nuw nsw i32 %44, 1, !dbg !1537
  call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !1479, metadata !607), !dbg !1525
  call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !1479, metadata !607), !dbg !1525
  %52 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 %38, i8* nonnull %8, i32 %3, i32 %51, double %7) #11, !dbg !1526
  call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !1481, metadata !607), !dbg !1527
  %53 = icmp slt i32 %52, 0, !dbg !1528
  %54 = icmp ugt i32 %44, 7, !dbg !1538
  %55 = or i1 %54, %53, !dbg !1530
  br i1 %55, label %56, label %42, !dbg !1530, !llvm.loop !1539

; <label>:56:                                     ; preds = %50, %47, %5
  %57 = phi i32 [ %39, %5 ], [ %43, %47 ], [ %52, %50 ]
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %8) #11, !dbg !1542
  ret i32 %57, !dbg !1542
}

; Function Attrs: nounwind
declare float @strtof(i8* readonly, i8** nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @ldtoastr(i8*, i64, i32, i32, x86_fp80) local_unnamed_addr #6 !dbg !1543 {
  %6 = alloca [11 x i8], align 1
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1547, metadata !607), !dbg !1561
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1548, metadata !607), !dbg !1562
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1549, metadata !607), !dbg !1563
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1550, metadata !607), !dbg !1564
  tail call void @llvm.dbg.value(metadata x86_fp80 %4, i64 0, metadata !1551, metadata !607), !dbg !1565
  tail call void @llvm.dbg.value(metadata x86_fp80 %4, i64 0, metadata !1552, metadata !607), !dbg !1566
  %7 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0, !dbg !1567
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %7) #11, !dbg !1567
  tail call void @llvm.dbg.declare(metadata [11 x i8]* %6, metadata !1553, metadata !607), !dbg !1568
  %8 = fcmp olt x86_fp80 %4, 0xK00000000000000000000, !dbg !1569
  %9 = fsub x86_fp80 0xK80000000000000000000, %4, !dbg !1570
  %10 = select i1 %8, x86_fp80 %9, x86_fp80 %4, !dbg !1571
  tail call void @llvm.dbg.value(metadata x86_fp80 %10, i64 0, metadata !1554, metadata !607), !dbg !1572
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1556, metadata !607), !dbg !1573
  %11 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 1, !dbg !1574
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !1556, metadata !607), !dbg !1573
  store i8 37, i8* %7, align 1, !dbg !1575, !tbaa !716
  store i8 45, i8* %11, align 1, !dbg !1576, !tbaa !716
  %12 = and i32 %2, 1, !dbg !1577
  %13 = zext i32 %12 to i64, !dbg !1578
  %14 = getelementptr inbounds i8, i8* %11, i64 %13, !dbg !1578
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !1556, metadata !607), !dbg !1573
  store i8 43, i8* %14, align 1, !dbg !1579, !tbaa !716
  %15 = lshr i32 %2, 1, !dbg !1580
  %16 = and i32 %15, 1, !dbg !1580
  %17 = zext i32 %16 to i64, !dbg !1581
  %18 = getelementptr inbounds i8, i8* %14, i64 %17, !dbg !1581
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !1556, metadata !607), !dbg !1573
  store i8 32, i8* %18, align 1, !dbg !1582, !tbaa !716
  %19 = lshr i32 %2, 2, !dbg !1583
  %20 = and i32 %19, 1, !dbg !1583
  %21 = zext i32 %20 to i64, !dbg !1584
  %22 = getelementptr inbounds i8, i8* %18, i64 %21, !dbg !1584
  tail call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !1556, metadata !607), !dbg !1573
  store i8 48, i8* %22, align 1, !dbg !1585, !tbaa !716
  %23 = lshr i32 %2, 3, !dbg !1586
  %24 = and i32 %23, 1, !dbg !1586
  %25 = zext i32 %24 to i64, !dbg !1587
  %26 = getelementptr inbounds i8, i8* %22, i64 %25, !dbg !1587
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !1556, metadata !607), !dbg !1573
  %27 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !1588
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !1556, metadata !607), !dbg !1573
  store i8 42, i8* %26, align 1, !dbg !1589, !tbaa !716
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1590
  tail call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !1556, metadata !607), !dbg !1573
  store i8 46, i8* %27, align 1, !dbg !1591, !tbaa !716
  %29 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !1592
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1556, metadata !607), !dbg !1573
  store i8 42, i8* %28, align 1, !dbg !1593, !tbaa !716
  store i8 76, i8* %29, align 1, !dbg !1594, !tbaa !716
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !1595
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1556, metadata !607), !dbg !1573
  %31 = trunc i32 %2 to i8, !dbg !1596
  %32 = shl i8 %31, 1, !dbg !1596
  %33 = and i8 %32, 32, !dbg !1596
  %34 = xor i8 %33, 103, !dbg !1596
  %35 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !1597
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !1556, metadata !607), !dbg !1573
  store i8 %34, i8* %30, align 1, !dbg !1598, !tbaa !716
  store i8 0, i8* %35, align 1, !dbg !1599, !tbaa !716
  %36 = fcmp olt x86_fp80 %10, 0xK00018000000000000000, !dbg !1600
  %37 = select i1 %36, i32 1, i32 18, !dbg !1601
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !1555, metadata !607), !dbg !1602
  call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !1555, metadata !607), !dbg !1602
  %38 = call i64 @llvm.objectsize.i64.p0i8(i8* %0, i1 false, i1 true), !dbg !1603
  %39 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 %38, i8* nonnull %7, i32 %3, i32 %37, x86_fp80 %4) #11, !dbg !1603
  call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !1557, metadata !607), !dbg !1604
  %40 = icmp slt i32 %39, 0, !dbg !1605
  br i1 %40, label %56, label %41, !dbg !1607

; <label>:41:                                     ; preds = %5
  br label %42, !dbg !1608

; <label>:42:                                     ; preds = %41, %50
  %43 = phi i32 [ %52, %50 ], [ %39, %41 ]
  %44 = phi i32 [ %51, %50 ], [ %37, %41 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !1555, metadata !607), !dbg !1602
  %45 = sext i32 %43 to i64, !dbg !1608
  %46 = icmp ult i64 %45, %1, !dbg !1609
  br i1 %46, label %47, label %50, !dbg !1610

; <label>:47:                                     ; preds = %42
  %48 = call x86_fp80 @strtold(i8* nocapture %0, i8** null) #11, !dbg !1611
  %49 = fcmp oeq x86_fp80 %48, %4, !dbg !1612
  br i1 %49, label %56, label %50, !dbg !1613

; <label>:50:                                     ; preds = %47, %42
  %51 = add nuw nsw i32 %44, 1, !dbg !1614
  call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !1555, metadata !607), !dbg !1602
  call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !1555, metadata !607), !dbg !1602
  %52 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 %38, i8* nonnull %7, i32 %3, i32 %51, x86_fp80 %4) #11, !dbg !1603
  call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !1557, metadata !607), !dbg !1604
  %53 = icmp slt i32 %52, 0, !dbg !1605
  %54 = icmp ugt i32 %44, 19, !dbg !1615
  %55 = or i1 %54, %53, !dbg !1607
  br i1 %55, label %56, label %42, !dbg !1607, !llvm.loop !1616

; <label>:56:                                     ; preds = %50, %47, %5
  %57 = phi i32 [ %39, %5 ], [ %43, %47 ], [ %52, %50 ]
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %7) #11, !dbg !1619
  ret i32 %57, !dbg !1619
}

; Function Attrs: nounwind
declare x86_fp80 @strtold(i8* readonly, i8** nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #6 !dbg !1620 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1625, metadata !607), !dbg !1651
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !1626, metadata !607), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1627, metadata !607), !dbg !1653
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1628, metadata !607), !dbg !1654
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !1629, metadata !607), !dbg !1655
  tail call void @llvm.dbg.value(metadata void (i32)* %5, i64 0, metadata !1630, metadata !607), !dbg !1656
  %8 = load i32, i32* @opterr, align 4, !dbg !1657, !tbaa !1369
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1632, metadata !607), !dbg !1658
  store i32 0, i32* @opterr, align 4, !dbg !1659, !tbaa !1369
  %9 = icmp eq i32 %0, 2, !dbg !1660
  br i1 %9, label %10, label %17, !dbg !1661

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #11, !dbg !1662
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !1631, metadata !607), !dbg !1663
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1664

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #11, !dbg !1665
  br label %17, !dbg !1666

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !1667
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #11, !dbg !1667
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !1633, metadata !607), !dbg !1668
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !1669
  call void @llvm.va_start(i8* nonnull %14), !dbg !1669
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1670, !tbaa !614
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #11, !dbg !1671
  call void @exit(i32 0) #15, !dbg !1672
  unreachable, !dbg !1672

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !1673, !tbaa !1369
  store i32 0, i32* @optind, align 4, !dbg !1674, !tbaa !1369
  ret void, !dbg !1675
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1676 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1678, metadata !607), !dbg !1681
  %2 = icmp eq i8* %0, null, !dbg !1682
  br i1 %2, label %3, label %6, !dbg !1684

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1685, !tbaa !614
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.96, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #17, !dbg !1687
  tail call void @abort() #15, !dbg !1688
  unreachable, !dbg !1688

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1689
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1679, metadata !607), !dbg !1690
  %8 = icmp eq i8* %7, null, !dbg !1691
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1692
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1693
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1680, metadata !607), !dbg !1694
  %11 = ptrtoint i8* %10 to i64, !dbg !1695
  %12 = ptrtoint i8* %0 to i64, !dbg !1695
  %13 = sub i64 %11, %12, !dbg !1695
  %14 = icmp sgt i64 %13, 6, !dbg !1697
  br i1 %14, label %15, label %24, !dbg !1698

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1699
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.97, i64 0, i64 0), i64 7) #14, !dbg !1700
  %18 = icmp eq i32 %17, 0, !dbg !1701
  br i1 %18, label %19, label %24, !dbg !1702

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1678, metadata !607), !dbg !1681
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.98, i64 0, i64 0), i64 3) #14, !dbg !1703
  %21 = icmp eq i32 %20, 0, !dbg !1706
  br i1 %21, label %22, label %24, !dbg !1707

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1708
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1678, metadata !607), !dbg !1681
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1710, !tbaa !614
  br label %24, !dbg !1711

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1678, metadata !607), !dbg !1681
  store i8* %25, i8** @program_name, align 8, !dbg !1712, !tbaa !614
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1713, !tbaa !614
  ret void, !dbg !1714
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1715 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1720, metadata !607), !dbg !1723
  %2 = tail call i32* @__errno_location() #16, !dbg !1724
  %3 = load i32, i32* %2, align 4, !dbg !1724, !tbaa !1369
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1721, metadata !607), !dbg !1725
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1726
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1726
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1726
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1727
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1727
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1722, metadata !607), !dbg !1728
  store i32 %3, i32* %2, align 4, !dbg !1729, !tbaa !1369
  ret %struct.quoting_options* %8, !dbg !1730
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !1731 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1737, metadata !607), !dbg !1738
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1739
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1739
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1740
  %5 = load i32, i32* %4, align 8, !dbg !1740, !tbaa !1741
  ret i32 %5, !dbg !1743
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1744 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1748, metadata !607), !dbg !1750
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1749, metadata !607), !dbg !1751
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1752
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1752
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1753
  store i32 %1, i32* %5, align 8, !dbg !1754, !tbaa !1741
  ret void, !dbg !1755
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1756 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1760, metadata !607), !dbg !1768
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1761, metadata !607), !dbg !1769
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1762, metadata !607), !dbg !1770
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1763, metadata !607), !dbg !1771
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1772
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1772
  %6 = lshr i8 %1, 5, !dbg !1773
  %7 = zext i8 %6 to i64, !dbg !1773
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1774
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1764, metadata !607), !dbg !1775
  %9 = and i8 %1, 31, !dbg !1776
  %10 = zext i8 %9 to i32, !dbg !1777
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1766, metadata !607), !dbg !1778
  %11 = load i32, i32* %8, align 4, !dbg !1779, !tbaa !1369
  %12 = lshr i32 %11, %10, !dbg !1780
  %13 = and i32 %12, 1, !dbg !1781
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1767, metadata !607), !dbg !1782
  %14 = and i32 %2, 1, !dbg !1783
  %15 = xor i32 %13, %14, !dbg !1784
  %16 = shl i32 %15, %10, !dbg !1785
  %17 = xor i32 %16, %11, !dbg !1786
  store i32 %17, i32* %8, align 4, !dbg !1786, !tbaa !1369
  ret i32 %13, !dbg !1787
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1788 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1792, metadata !607), !dbg !1795
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1793, metadata !607), !dbg !1796
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1797
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1792, metadata !607), !dbg !1795
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1799
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1792, metadata !607), !dbg !1795
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1800
  %6 = load i32, i32* %5, align 4, !dbg !1800, !tbaa !1801
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1794, metadata !607), !dbg !1802
  store i32 %1, i32* %5, align 4, !dbg !1803, !tbaa !1801
  ret i32 %6, !dbg !1804
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1805 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1809, metadata !607), !dbg !1812
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1810, metadata !607), !dbg !1813
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1811, metadata !607), !dbg !1814
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1815
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1809, metadata !607), !dbg !1812
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1817
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1809, metadata !607), !dbg !1812
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1818
  store i32 10, i32* %6, align 8, !dbg !1819, !tbaa !1741
  %7 = icmp ne i8* %1, null, !dbg !1820
  %8 = icmp ne i8* %2, null, !dbg !1822
  %9 = and i1 %7, %8, !dbg !1823
  br i1 %9, label %11, label %10, !dbg !1823

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1824
  unreachable, !dbg !1824

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1825
  store i8* %1, i8** %12, align 8, !dbg !1826, !tbaa !1827
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1828
  store i8* %2, i8** %13, align 8, !dbg !1829, !tbaa !1830
  ret void, !dbg !1831
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1832 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1836, metadata !607), !dbg !1844
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1837, metadata !607), !dbg !1845
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1838, metadata !607), !dbg !1846
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1839, metadata !607), !dbg !1847
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1840, metadata !607), !dbg !1848
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1849
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1849
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1841, metadata !607), !dbg !1850
  %8 = tail call i32* @__errno_location() #16, !dbg !1851
  %9 = load i32, i32* %8, align 4, !dbg !1851, !tbaa !1369
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1842, metadata !607), !dbg !1852
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1853
  %11 = load i32, i32* %10, align 8, !dbg !1853, !tbaa !1741
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1854
  %13 = load i32, i32* %12, align 4, !dbg !1854, !tbaa !1801
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1855
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1856
  %16 = load i8*, i8** %15, align 8, !dbg !1856, !tbaa !1827
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1857
  %18 = load i8*, i8** %17, align 8, !dbg !1857, !tbaa !1830
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1858
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1843, metadata !607), !dbg !1859
  store i32 %9, i32* %8, align 4, !dbg !1860, !tbaa !1369
  ret i64 %19, !dbg !1861
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1862 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1868, metadata !607), !dbg !1932
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1869, metadata !607), !dbg !1933
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1870, metadata !607), !dbg !1934
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1871, metadata !607), !dbg !1935
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1872, metadata !607), !dbg !1936
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1873, metadata !607), !dbg !1937
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1874, metadata !607), !dbg !1938
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1875, metadata !607), !dbg !1939
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1876, metadata !607), !dbg !1940
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1878, metadata !607), !dbg !1941
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1879, metadata !607), !dbg !1942
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1880, metadata !607), !dbg !1943
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1881, metadata !607), !dbg !1944
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1882, metadata !607), !dbg !1945
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !1946
  %14 = icmp eq i64 %13, 1, !dbg !1947
  %15 = lshr i32 %5, 1, !dbg !1948
  %16 = trunc i32 %15 to i8, !dbg !1948
  %17 = and i8 %16, 1, !dbg !1948
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1884, metadata !607), !dbg !1948
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1885, metadata !607), !dbg !1949
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1886, metadata !607), !dbg !1950
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1887, metadata !607), !dbg !1951
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1952

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1869, metadata !607), !dbg !1933
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1887, metadata !607), !dbg !1951
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1886, metadata !607), !dbg !1950
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1885, metadata !607), !dbg !1949
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1884, metadata !607), !dbg !1948
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1871, metadata !607), !dbg !1935
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1882, metadata !607), !dbg !1945
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1881, metadata !607), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1880, metadata !607), !dbg !1943
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1879, metadata !607), !dbg !1942
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1878, metadata !607), !dbg !1941
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1876, metadata !607), !dbg !1940
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1875, metadata !607), !dbg !1939
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1872, metadata !607), !dbg !1936
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
  ], !dbg !1953

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1872, metadata !607), !dbg !1936
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1884, metadata !607), !dbg !1948
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1884, metadata !607), !dbg !1948
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1872, metadata !607), !dbg !1936
  br label %94, !dbg !1954

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1884, metadata !607), !dbg !1948
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1872, metadata !607), !dbg !1936
  %43 = and i8 %36, 1, !dbg !1956
  %44 = icmp eq i8 %43, 0, !dbg !1956
  br i1 %44, label %45, label %94, !dbg !1954

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1958
  br i1 %46, label %94, label %47, !dbg !1961

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1958, !tbaa !716
  br label %94, !dbg !1958

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.109, i64 0, i64 0), i32 %28), !dbg !1962
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1875, metadata !607), !dbg !1939
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.110, i64 0, i64 0), i32 %28), !dbg !1966
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1876, metadata !607), !dbg !1940
  br label %51, !dbg !1967

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1876, metadata !607), !dbg !1940
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1875, metadata !607), !dbg !1939
  %54 = and i8 %36, 1, !dbg !1968
  %55 = icmp eq i8 %54, 0, !dbg !1968
  br i1 %55, label %56, label %72, !dbg !1970

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1880, metadata !607), !dbg !1943
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1880, metadata !607), !dbg !1943
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1878, metadata !607), !dbg !1941
  %57 = load i8, i8* %52, align 1, !dbg !1971, !tbaa !716
  %58 = icmp eq i8 %57, 0, !dbg !1974
  br i1 %58, label %72, label %59, !dbg !1974

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1975

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1878, metadata !607), !dbg !1941
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1880, metadata !607), !dbg !1943
  %64 = icmp ult i64 %63, %40, !dbg !1975
  br i1 %64, label %65, label %67, !dbg !1978

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1975
  store i8 %61, i8* %66, align 1, !dbg !1975, !tbaa !716
  br label %67, !dbg !1975

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1978
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1878, metadata !607), !dbg !1941
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1979
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1880, metadata !607), !dbg !1943
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1880, metadata !607), !dbg !1943
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1878, metadata !607), !dbg !1941
  %70 = load i8, i8* %69, align 1, !dbg !1971, !tbaa !716
  %71 = icmp eq i8 %70, 0, !dbg !1974
  br i1 %71, label %72, label %60, !dbg !1974, !llvm.loop !1980

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1878, metadata !607), !dbg !1941
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1882, metadata !607), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1880, metadata !607), !dbg !1943
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1982
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1881, metadata !607), !dbg !1944
  br label %94, !dbg !1983

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1882, metadata !607), !dbg !1945
  br label %76, !dbg !1984

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1882, metadata !607), !dbg !1945
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1884, metadata !607), !dbg !1948
  br label %78, !dbg !1985

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1884, metadata !607), !dbg !1948
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1882, metadata !607), !dbg !1945
  %81 = and i8 %80, 1, !dbg !1986
  %82 = icmp eq i8 %81, 0, !dbg !1986
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1882, metadata !607), !dbg !1945
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1988
  br label %84, !dbg !1988

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1884, metadata !607), !dbg !1948
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1882, metadata !607), !dbg !1945
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1872, metadata !607), !dbg !1936
  %87 = and i8 %86, 1, !dbg !1989
  %88 = icmp eq i8 %87, 0, !dbg !1989
  br i1 %88, label %89, label %94, !dbg !1991

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1992
  br i1 %90, label %94, label %91, !dbg !1995

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1992, !tbaa !716
  br label %94, !dbg !1992

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1884, metadata !607), !dbg !1948
  br label %94, !dbg !1996

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1997
  unreachable, !dbg !1997

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.111, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.111, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.111, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.110, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.110, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.110, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.111, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1884, metadata !607), !dbg !1948
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1882, metadata !607), !dbg !1945
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1881, metadata !607), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1880, metadata !607), !dbg !1943
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1878, metadata !607), !dbg !1941
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1876, metadata !607), !dbg !1940
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1875, metadata !607), !dbg !1939
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1872, metadata !607), !dbg !1936
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1877, metadata !607), !dbg !1998
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
  br label %122, !dbg !1999

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1869, metadata !607), !dbg !1933
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1887, metadata !607), !dbg !1951
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1886, metadata !607), !dbg !1950
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1885, metadata !607), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1871, metadata !607), !dbg !1935
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1879, metadata !607), !dbg !1942
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1878, metadata !607), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1877, metadata !607), !dbg !1998
  %131 = icmp eq i64 %126, -1, !dbg !2000
  br i1 %131, label %134, label %132, !dbg !2001

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !2002
  br i1 %133, label %590, label %138, !dbg !2003

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2004
  %136 = load i8, i8* %135, align 1, !dbg !2004, !tbaa !716
  %137 = icmp eq i8 %136, 0, !dbg !2005
  br i1 %137, label %590, label %138, !dbg !2003

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1893, metadata !607), !dbg !2006
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1894, metadata !607), !dbg !2007
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1895, metadata !607), !dbg !2008
  br i1 %108, label %139, label %154, !dbg !2009

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !2011
  %141 = and i1 %109, %131, !dbg !2012
  br i1 %141, label %142, label %144, !dbg !2012

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !2013
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1871, metadata !607), !dbg !1935
  br label %144, !dbg !2014

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1871, metadata !607), !dbg !1935
  %146 = icmp ugt i64 %140, %145, !dbg !2015
  br i1 %146, label %154, label %147, !dbg !2016

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2017
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !2018
  %150 = icmp ne i32 %149, 0, !dbg !2019
  %151 = or i1 %150, %111, !dbg !2020
  %152 = xor i1 %150, true, !dbg !2020
  %153 = zext i1 %152 to i8, !dbg !2020
  br i1 %151, label %154, label %635, !dbg !2020

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1893, metadata !607), !dbg !2006
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1871, metadata !607), !dbg !1935
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2021
  %158 = load i8, i8* %157, align 1, !dbg !2021, !tbaa !716
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1888, metadata !607), !dbg !2022
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
  ], !dbg !2023

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !2024

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !2025

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1894, metadata !607), !dbg !2007
  %162 = and i8 %127, 1, !dbg !2029
  %163 = icmp eq i8 %162, 0, !dbg !2029
  %164 = and i1 %113, %163, !dbg !2029
  br i1 %164, label %165, label %181, !dbg !2029

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2031
  br i1 %166, label %167, label %169, !dbg !2035

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2031
  store i8 39, i8* %168, align 1, !dbg !2031, !tbaa !716
  br label %169, !dbg !2031

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2035
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1878, metadata !607), !dbg !1941
  %171 = icmp ult i64 %170, %130, !dbg !2036
  br i1 %171, label %172, label %174, !dbg !2039

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2036
  store i8 36, i8* %173, align 1, !dbg !2036, !tbaa !716
  br label %174, !dbg !2036

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2039
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1878, metadata !607), !dbg !1941
  %176 = icmp ult i64 %175, %130, !dbg !2040
  br i1 %176, label %177, label %179, !dbg !2043

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2040
  store i8 39, i8* %178, align 1, !dbg !2040, !tbaa !716
  br label %179, !dbg !2040

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2043
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1878, metadata !607), !dbg !1941
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1885, metadata !607), !dbg !1949
  br label %181, !dbg !2044

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1885, metadata !607), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1878, metadata !607), !dbg !1941
  %184 = icmp ult i64 %182, %130, !dbg !2045
  br i1 %184, label %185, label %187, !dbg !2048

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2045
  store i8 92, i8* %186, align 1, !dbg !2045, !tbaa !716
  br label %187, !dbg !2045

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2048
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1878, metadata !607), !dbg !1941
  br i1 %105, label %189, label %470, !dbg !2049

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !2051
  %191 = icmp ult i64 %190, %155, !dbg !2052
  br i1 %191, label %192, label %470, !dbg !2053

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2054
  %194 = load i8, i8* %193, align 1, !dbg !2054, !tbaa !716
  %195 = add i8 %194, -48, !dbg !2055
  %196 = icmp ult i8 %195, 10, !dbg !2055
  br i1 %196, label %197, label %470, !dbg !2055

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2056
  br i1 %198, label %199, label %201, !dbg !2060

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2056
  store i8 48, i8* %200, align 1, !dbg !2056, !tbaa !716
  br label %201, !dbg !2056

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2060
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1878, metadata !607), !dbg !1941
  %203 = icmp ult i64 %202, %130, !dbg !2061
  br i1 %203, label %204, label %206, !dbg !2064

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2061
  store i8 48, i8* %205, align 1, !dbg !2061, !tbaa !716
  br label %206, !dbg !2061

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2064
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1878, metadata !607), !dbg !1941
  br label %470, !dbg !2065

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !2066

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2067

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !2068

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !2070

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !2072
  %214 = icmp ult i64 %213, %155, !dbg !2073
  br i1 %214, label %215, label %470, !dbg !2074

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !2075
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2076
  %218 = load i8, i8* %217, align 1, !dbg !2076, !tbaa !716
  %219 = icmp eq i8 %218, 63, !dbg !2077
  br i1 %219, label %220, label %470, !dbg !2078

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2079
  %222 = load i8, i8* %221, align 1, !dbg !2079, !tbaa !716
  %223 = sext i8 %222 to i32, !dbg !2079
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
  ], !dbg !2080

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !2081

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1888, metadata !607), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1877, metadata !607), !dbg !1998
  %226 = icmp ult i64 %124, %130, !dbg !2083
  br i1 %226, label %227, label %229, !dbg !2086

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2083
  store i8 63, i8* %228, align 1, !dbg !2083, !tbaa !716
  br label %229, !dbg !2083

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2086
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1878, metadata !607), !dbg !1941
  %231 = icmp ult i64 %230, %130, !dbg !2087
  br i1 %231, label %232, label %234, !dbg !2090

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2087
  store i8 34, i8* %233, align 1, !dbg !2087, !tbaa !716
  br label %234, !dbg !2087

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2090
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1878, metadata !607), !dbg !1941
  %236 = icmp ult i64 %235, %130, !dbg !2091
  br i1 %236, label %237, label %239, !dbg !2094

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2091
  store i8 34, i8* %238, align 1, !dbg !2091, !tbaa !716
  br label %239, !dbg !2091

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2094
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1878, metadata !607), !dbg !1941
  %241 = icmp ult i64 %240, %130, !dbg !2095
  br i1 %241, label %242, label %244, !dbg !2098

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2095
  store i8 63, i8* %243, align 1, !dbg !2095, !tbaa !716
  br label %244, !dbg !2095

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2098
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1878, metadata !607), !dbg !1941
  br label %470, !dbg !2099

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1892, metadata !607), !dbg !2100
  br label %256, !dbg !2101

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1892, metadata !607), !dbg !2100
  br label %256, !dbg !2102

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1892, metadata !607), !dbg !2100
  br label %254, !dbg !2103

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1892, metadata !607), !dbg !2100
  br label %254, !dbg !2104

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1892, metadata !607), !dbg !2100
  br label %256, !dbg !2105

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1892, metadata !607), !dbg !2100
  br i1 %113, label %252, label %253, !dbg !2106

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !2107

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !2110

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1892, metadata !607), !dbg !2100
  br i1 %117, label %256, label %635, !dbg !2112

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1892, metadata !607), !dbg !2100
  br i1 %104, label %497, label %470, !dbg !2114

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !2115
  br i1 %259, label %260, label %265, !dbg !2117

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !2118, !tbaa !716
  %262 = icmp ne i8 %261, 0, !dbg !2119
  %263 = icmp ne i64 %123, 0, !dbg !2120
  %264 = or i1 %263, %262, !dbg !2122
  br i1 %264, label %470, label %271, !dbg !2122

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !2123
  %267 = icmp ne i64 %123, 0, !dbg !2120
  %268 = or i1 %267, %266, !dbg !2117
  br i1 %268, label %470, label %271, !dbg !2117

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !2120
  br i1 %270, label %271, label %470, !dbg !2124

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1895, metadata !607), !dbg !2008
  br label %272, !dbg !2125

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1895, metadata !607), !dbg !2008
  br i1 %117, label %470, label %635, !dbg !2126

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1886, metadata !607), !dbg !1950
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1895, metadata !607), !dbg !2008
  br i1 %113, label %275, label %470, !dbg !2128

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !2129

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !2132
  %278 = icmp ne i64 %125, 0, !dbg !2134
  %279 = or i1 %278, %277, !dbg !2135
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1879, metadata !607), !dbg !1942
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1869, metadata !607), !dbg !1933
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !2135
  %281 = select i1 %279, i64 %130, i64 0, !dbg !2135
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1869, metadata !607), !dbg !1933
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1879, metadata !607), !dbg !1942
  %282 = icmp ult i64 %124, %281, !dbg !2136
  br i1 %282, label %283, label %285, !dbg !2139

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2136
  store i8 39, i8* %284, align 1, !dbg !2136, !tbaa !716
  br label %285, !dbg !2136

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !2139
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1878, metadata !607), !dbg !1941
  %287 = icmp ult i64 %286, %281, !dbg !2140
  br i1 %287, label %288, label %290, !dbg !2143

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !2140
  store i8 92, i8* %289, align 1, !dbg !2140, !tbaa !716
  br label %290, !dbg !2140

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !2143
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1878, metadata !607), !dbg !1941
  %292 = icmp ult i64 %291, %281, !dbg !2144
  br i1 %292, label %293, label %295, !dbg !2147

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !2144
  store i8 39, i8* %294, align 1, !dbg !2144, !tbaa !716
  br label %295, !dbg !2144

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !2147
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1878, metadata !607), !dbg !1941
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1885, metadata !607), !dbg !1949
  br label %470, !dbg !2148

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !2149

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1896, metadata !607), !dbg !2150
  %299 = tail call i16** @__ctype_b_loc() #16, !dbg !2151
  %300 = load i16*, i16** %299, align 8, !dbg !2151, !tbaa !614
  %301 = zext i8 %158 to i64, !dbg !2151
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !2151
  %303 = load i16, i16* %302, align 2, !dbg !2151, !tbaa !2153
  %304 = lshr i16 %303, 14, !dbg !2155
  %305 = trunc i16 %304 to i8, !dbg !2155
  %306 = and i8 %305, 1, !dbg !2155
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1899, metadata !607), !dbg !2156
  br label %362, !dbg !2157

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #11, !dbg !2158
  store i64 0, i64* %10, align 8, !dbg !2159
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1896, metadata !607), !dbg !2150
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1899, metadata !607), !dbg !2156
  %308 = icmp eq i64 %155, -1, !dbg !2160
  br i1 %308, label %309, label %311, !dbg !2162

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2163
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1871, metadata !607), !dbg !1935
  br label %311, !dbg !2164

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1871, metadata !607), !dbg !1935
  br label %313, !dbg !2165, !llvm.loop !2166

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1899, metadata !607), !dbg !2156
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1896, metadata !607), !dbg !2150
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2168
  %316 = add i64 %314, %123, !dbg !2169
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !2170
  %318 = sub i64 %312, %316, !dbg !2171
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1900, metadata !607), !dbg !2172
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1918, metadata !607), !dbg !2173
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #11, !dbg !2174
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1921, metadata !607), !dbg !2175
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !2176

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1899, metadata !607), !dbg !2156
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1896, metadata !607), !dbg !2150
  %321 = icmp ugt i64 %312, %316, !dbg !2177
  br i1 %321, label %322, label %347, !dbg !2179

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !2180

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1896, metadata !607), !dbg !2150
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !2180
  %327 = load i8, i8* %326, align 1, !dbg !2180, !tbaa !716
  %328 = icmp eq i8 %327, 0, !dbg !2179
  br i1 %328, label %347, label %329, !dbg !2181

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !2182
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1896, metadata !607), !dbg !2150
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1896, metadata !607), !dbg !2150
  %331 = add i64 %330, %123, !dbg !2183
  %332 = icmp ult i64 %331, %312, !dbg !2177
  br i1 %332, label %323, label %347, !dbg !2179, !llvm.loop !2184

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !2185
  %335 = and i1 %115, %334, !dbg !2188
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1922, metadata !607), !dbg !2189
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1922, metadata !607), !dbg !2189
  br i1 %335, label %336, label %350, !dbg !2188

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !2190

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1922, metadata !607), !dbg !2189
  %339 = add i64 %338, %316, !dbg !2190
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !2191
  %341 = load i8, i8* %340, align 1, !dbg !2191, !tbaa !716
  %342 = sext i8 %341 to i32, !dbg !2191
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !2192

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !2193
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1922, metadata !607), !dbg !2189
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1922, metadata !607), !dbg !2189
  %345 = icmp ult i64 %344, %319, !dbg !2185
  br i1 %345, label %337, label %350, !dbg !2194, !llvm.loop !2195

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !2197

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1899, metadata !607), !dbg !2156
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1896, metadata !607), !dbg !2150
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2197
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !2198, !tbaa !1369
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1918, metadata !607), !dbg !2173
  %352 = call i32 @iswprint(i32 %351) #11, !dbg !2200
  %353 = icmp eq i32 %352, 0, !dbg !2200
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1899, metadata !607), !dbg !2156
  %354 = select i1 %353, i8 0, i8 %315, !dbg !2201
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1899, metadata !607), !dbg !2156
  %355 = add i64 %319, %314, !dbg !2202
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1896, metadata !607), !dbg !2150
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1899, metadata !607), !dbg !2156
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1896, metadata !607), !dbg !2150
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2197
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1900, metadata !607), !dbg !2172
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2203
  %357 = icmp eq i32 %356, 0, !dbg !2204
  br i1 %357, label %313, label %358, !dbg !2205, !llvm.loop !2166

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !2206
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1899, metadata !607), !dbg !2156
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1896, metadata !607), !dbg !2150
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2197
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !2206
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1899, metadata !607), !dbg !2156
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1896, metadata !607), !dbg !2150
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1871, metadata !607), !dbg !1935
  %366 = and i8 %365, 1, !dbg !2207
  %367 = icmp ne i8 %366, 0, !dbg !2207
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1895, metadata !607), !dbg !2008
  %368 = icmp ult i64 %364, 2, !dbg !2208
  %369 = or i1 %367, %112, !dbg !2209
  %370 = and i1 %368, %369, !dbg !2210
  br i1 %370, label %470, label %371, !dbg !2210

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !2211
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1929, metadata !607), !dbg !2212
  br label %373, !dbg !2213

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1894, metadata !607), !dbg !2007
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1893, metadata !607), !dbg !2006
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1888, metadata !607), !dbg !2022
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1885, metadata !607), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1878, metadata !607), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1877, metadata !607), !dbg !1998
  br i1 %369, label %426, label %380, !dbg !2214

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !2219

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1894, metadata !607), !dbg !2007
  %382 = and i8 %376, 1, !dbg !2222
  %383 = icmp eq i8 %382, 0, !dbg !2222
  %384 = and i1 %113, %383, !dbg !2222
  br i1 %384, label %385, label %401, !dbg !2222

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !2224
  br i1 %386, label %387, label %389, !dbg !2228

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2224
  store i8 39, i8* %388, align 1, !dbg !2224, !tbaa !716
  br label %389, !dbg !2224

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !2228
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1878, metadata !607), !dbg !1941
  %391 = icmp ult i64 %390, %130, !dbg !2229
  br i1 %391, label %392, label %394, !dbg !2232

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2229
  store i8 36, i8* %393, align 1, !dbg !2229, !tbaa !716
  br label %394, !dbg !2229

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !2232
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1878, metadata !607), !dbg !1941
  %396 = icmp ult i64 %395, %130, !dbg !2233
  br i1 %396, label %397, label %399, !dbg !2236

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2233
  store i8 39, i8* %398, align 1, !dbg !2233, !tbaa !716
  br label %399, !dbg !2233

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !2236
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1878, metadata !607), !dbg !1941
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1885, metadata !607), !dbg !1949
  br label %401, !dbg !2237

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1885, metadata !607), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1878, metadata !607), !dbg !1941
  %404 = icmp ult i64 %402, %130, !dbg !2238
  br i1 %404, label %405, label %407, !dbg !2241

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !2238
  store i8 92, i8* %406, align 1, !dbg !2238, !tbaa !716
  br label %407, !dbg !2238

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !2241
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1878, metadata !607), !dbg !1941
  %409 = icmp ult i64 %408, %130, !dbg !2242
  br i1 %409, label %410, label %414, !dbg !2245

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !2242
  %412 = or i8 %411, 48, !dbg !2242
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2242
  store i8 %412, i8* %413, align 1, !dbg !2242, !tbaa !716
  br label %414, !dbg !2242

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !2245
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1878, metadata !607), !dbg !1941
  %416 = icmp ult i64 %415, %130, !dbg !2246
  br i1 %416, label %417, label %422, !dbg !2249

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !2246
  %419 = and i8 %418, 7, !dbg !2246
  %420 = or i8 %419, 48, !dbg !2246
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !2246
  store i8 %420, i8* %421, align 1, !dbg !2246, !tbaa !716
  br label %422, !dbg !2246

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !2249
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1878, metadata !607), !dbg !1941
  %424 = and i8 %377, 7, !dbg !2250
  %425 = or i8 %424, 48, !dbg !2251
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1888, metadata !607), !dbg !2022
  br label %435, !dbg !2252

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !2253
  %428 = icmp eq i8 %427, 0, !dbg !2253
  br i1 %428, label %435, label %429, !dbg !2255

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !2256
  br i1 %430, label %431, label %433, !dbg !2260

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2256
  store i8 92, i8* %432, align 1, !dbg !2256, !tbaa !716
  br label %433, !dbg !2256

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !2260
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1878, metadata !607), !dbg !1941
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1893, metadata !607), !dbg !2006
  br label %435, !dbg !2261

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1894, metadata !607), !dbg !2007
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1893, metadata !607), !dbg !2006
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1888, metadata !607), !dbg !2022
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1885, metadata !607), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1878, metadata !607), !dbg !1941
  %441 = add i64 %374, 1, !dbg !2262
  %442 = icmp ugt i64 %372, %441, !dbg !2264
  br i1 %442, label %443, label %535, !dbg !2265

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !2266
  %445 = icmp ne i8 %444, 0, !dbg !2266
  %446 = and i8 %440, 1, !dbg !2266
  %447 = icmp eq i8 %446, 0, !dbg !2266
  %448 = and i1 %445, %447, !dbg !2266
  br i1 %448, label %449, label %460, !dbg !2266

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !2269
  br i1 %450, label %451, label %453, !dbg !2273

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !2269
  store i8 39, i8* %452, align 1, !dbg !2269, !tbaa !716
  br label %453, !dbg !2269

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !2273
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1878, metadata !607), !dbg !1941
  %455 = icmp ult i64 %454, %130, !dbg !2274
  br i1 %455, label %456, label %458, !dbg !2277

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2274
  store i8 39, i8* %457, align 1, !dbg !2274, !tbaa !716
  br label %458, !dbg !2274

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !2277
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1878, metadata !607), !dbg !1941
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1885, metadata !607), !dbg !1949
  br label %460, !dbg !2278

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1885, metadata !607), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1878, metadata !607), !dbg !1941
  %463 = icmp ult i64 %461, %130, !dbg !2279
  br i1 %463, label %464, label %466, !dbg !2282

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !2279
  store i8 %438, i8* %465, align 1, !dbg !2279, !tbaa !716
  br label %466, !dbg !2279

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !2282
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1878, metadata !607), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1877, metadata !607), !dbg !1998
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !2283
  %469 = load i8, i8* %468, align 1, !dbg !2283, !tbaa !716
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1888, metadata !607), !dbg !2022
  br label %373, !dbg !2284, !llvm.loop !2285

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1869, metadata !607), !dbg !1933
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1895, metadata !607), !dbg !2008
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1894, metadata !607), !dbg !2007
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1893, metadata !607), !dbg !2006
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1888, metadata !607), !dbg !2022
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1886, metadata !607), !dbg !1950
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1885, metadata !607), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1871, metadata !607), !dbg !1935
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1879, metadata !607), !dbg !1942
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1878, metadata !607), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1877, metadata !607), !dbg !1998
  br i1 %106, label %482, label %481, !dbg !2288

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !2290

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !2291

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !2292
  %485 = zext i8 %484 to i64, !dbg !2292
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !2293
  %487 = load i32, i32* %486, align 4, !dbg !2293, !tbaa !1369
  %488 = and i8 %477, 31, !dbg !2294
  %489 = zext i8 %488 to i32, !dbg !2295
  %490 = shl i32 1, %489, !dbg !2296
  %491 = and i32 %487, %490, !dbg !2296
  %492 = icmp eq i32 %491, 0, !dbg !2296
  %493 = icmp eq i8 %156, 0, !dbg !2297
  %494 = and i1 %493, %492, !dbg !2298
  br i1 %494, label %535, label %497, !dbg !2298

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !2297
  br i1 %496, label %535, label %497, !dbg !2299

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1869, metadata !607), !dbg !1933
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1895, metadata !607), !dbg !2008
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1888, metadata !607), !dbg !2022
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1886, metadata !607), !dbg !1950
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1885, metadata !607), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1871, metadata !607), !dbg !1935
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1879, metadata !607), !dbg !1942
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1878, metadata !607), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1877, metadata !607), !dbg !1998
  br i1 %111, label %507, label %635, !dbg !2300

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1894, metadata !607), !dbg !2007
  %508 = and i8 %502, 1, !dbg !2302
  %509 = icmp eq i8 %508, 0, !dbg !2302
  %510 = and i1 %113, %509, !dbg !2302
  br i1 %510, label %511, label %527, !dbg !2302

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !2304
  br i1 %512, label %513, label %515, !dbg !2308

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !2304
  store i8 39, i8* %514, align 1, !dbg !2304, !tbaa !716
  br label %515, !dbg !2304

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !2308
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1878, metadata !607), !dbg !1941
  %517 = icmp ult i64 %516, %506, !dbg !2309
  br i1 %517, label %518, label %520, !dbg !2312

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !2309
  store i8 36, i8* %519, align 1, !dbg !2309, !tbaa !716
  br label %520, !dbg !2309

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !2312
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1878, metadata !607), !dbg !1941
  %522 = icmp ult i64 %521, %506, !dbg !2313
  br i1 %522, label %523, label %525, !dbg !2316

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !2313
  store i8 39, i8* %524, align 1, !dbg !2313, !tbaa !716
  br label %525, !dbg !2313

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !2316
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1878, metadata !607), !dbg !1941
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1885, metadata !607), !dbg !1949
  br label %527, !dbg !2317

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1885, metadata !607), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1878, metadata !607), !dbg !1941
  %530 = icmp ult i64 %528, %506, !dbg !2318
  br i1 %530, label %531, label %533, !dbg !2321

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2318
  store i8 92, i8* %532, align 1, !dbg !2318, !tbaa !716
  br label %533, !dbg !2318

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !2321
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1878, metadata !607), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1869, metadata !607), !dbg !1933
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1895, metadata !607), !dbg !2008
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1894, metadata !607), !dbg !2007
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1888, metadata !607), !dbg !2022
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1886, metadata !607), !dbg !1950
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1885, metadata !607), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1871, metadata !607), !dbg !1935
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1879, metadata !607), !dbg !1942
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1878, metadata !607), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1877, metadata !607), !dbg !1998
  br label %562, !dbg !2322

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1869, metadata !607), !dbg !1933
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1895, metadata !607), !dbg !2008
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1894, metadata !607), !dbg !2007
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1888, metadata !607), !dbg !2022
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1886, metadata !607), !dbg !1950
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1885, metadata !607), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1871, metadata !607), !dbg !1935
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1879, metadata !607), !dbg !1942
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1878, metadata !607), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1877, metadata !607), !dbg !1998
  %546 = and i8 %540, 1, !dbg !2322
  %547 = icmp ne i8 %546, 0, !dbg !2322
  %548 = and i8 %543, 1, !dbg !2322
  %549 = icmp eq i8 %548, 0, !dbg !2322
  %550 = and i1 %547, %549, !dbg !2322
  br i1 %550, label %551, label %562, !dbg !2322

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !2325
  br i1 %552, label %553, label %555, !dbg !2329

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !2325
  store i8 39, i8* %554, align 1, !dbg !2325, !tbaa !716
  br label %555, !dbg !2325

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !2329
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1878, metadata !607), !dbg !1941
  %557 = icmp ult i64 %556, %545, !dbg !2330
  br i1 %557, label %558, label %560, !dbg !2333

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !2330
  store i8 39, i8* %559, align 1, !dbg !2330, !tbaa !716
  br label %560, !dbg !2330

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !2333
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1878, metadata !607), !dbg !1941
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1885, metadata !607), !dbg !1949
  br label %562, !dbg !2334

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1885, metadata !607), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1878, metadata !607), !dbg !1941
  %572 = icmp ult i64 %570, %563, !dbg !2335
  br i1 %572, label %573, label %575, !dbg !2338

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !2335
  store i8 %565, i8* %574, align 1, !dbg !2335, !tbaa !716
  br label %575, !dbg !2335

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !2338
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1878, metadata !607), !dbg !1941
  %577 = and i8 %564, 1, !dbg !2339
  %578 = icmp eq i8 %577, 0, !dbg !2339
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1887, metadata !607), !dbg !1951
  %579 = select i1 %578, i8 0, i8 %129, !dbg !2341
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1887, metadata !607), !dbg !1951
  br label %580, !dbg !2342

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1869, metadata !607), !dbg !1933
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1887, metadata !607), !dbg !1951
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1886, metadata !607), !dbg !1950
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1885, metadata !607), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1871, metadata !607), !dbg !1935
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1879, metadata !607), !dbg !1942
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1878, metadata !607), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1877, metadata !607), !dbg !1998
  %589 = add i64 %581, 1, !dbg !2343
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1877, metadata !607), !dbg !1998
  br label %122, !dbg !2344, !llvm.loop !2345

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !2347
  %593 = and i1 %113, %592, !dbg !2349
  %594 = xor i1 %593, true, !dbg !2349
  %595 = or i1 %111, %594, !dbg !2349
  br i1 %595, label %596, label %635, !dbg !2349

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !2350
  %598 = xor i1 %597, true, !dbg !2350
  %599 = and i8 %128, 1, !dbg !2352
  %600 = icmp eq i8 %599, 0, !dbg !2352
  %601 = or i1 %600, %598, !dbg !2350
  br i1 %601, label %611, label %602, !dbg !2350

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !2353
  %604 = icmp eq i8 %603, 0, !dbg !2353
  br i1 %604, label %607, label %605, !dbg !2356

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !2357
  br label %645, !dbg !2358

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !2359
  %609 = icmp ne i64 %125, 0, !dbg !2361
  %610 = and i1 %609, %608, !dbg !2362
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1869, metadata !607), !dbg !1933
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1878, metadata !607), !dbg !1941
  br i1 %610, label %27, label %611, !dbg !2362

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !2363
  %613 = and i1 %612, %111, !dbg !2365
  br i1 %613, label %614, label %630, !dbg !2365

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1880, metadata !607), !dbg !1943
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1878, metadata !607), !dbg !1941
  %615 = load i8, i8* %99, align 1, !dbg !2366, !tbaa !716
  %616 = icmp eq i8 %615, 0, !dbg !2369
  br i1 %616, label %630, label %617, !dbg !2369

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !2370

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1878, metadata !607), !dbg !1941
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1880, metadata !607), !dbg !1943
  %622 = icmp ult i64 %621, %130, !dbg !2370
  br i1 %622, label %623, label %625, !dbg !2373

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2370
  store i8 %619, i8* %624, align 1, !dbg !2370, !tbaa !716
  br label %625, !dbg !2370

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !2373
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1878, metadata !607), !dbg !1941
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !2374
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1880, metadata !607), !dbg !1943
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1880, metadata !607), !dbg !1943
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1878, metadata !607), !dbg !1941
  %628 = load i8, i8* %627, align 1, !dbg !2366, !tbaa !716
  %629 = icmp eq i8 %628, 0, !dbg !2369
  br i1 %629, label %630, label %618, !dbg !2369, !llvm.loop !2375

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1878, metadata !607), !dbg !1941
  %632 = icmp ult i64 %631, %130, !dbg !2377
  br i1 %632, label %633, label %645, !dbg !2379

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !2380
  store i8 0, i8* %634, align 1, !dbg !2381, !tbaa !716
  br label %645, !dbg !2380

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1869, metadata !607), !dbg !1933
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1871, metadata !607), !dbg !1935
  %639 = icmp ne i32 %636, 2, !dbg !2382
  %640 = icmp eq i8 %103, 0, !dbg !2384
  %641 = or i1 %639, %640, !dbg !2385
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1872, metadata !607), !dbg !1936
  %642 = select i1 %641, i32 %636, i32 4, !dbg !2385
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1872, metadata !607), !dbg !1936
  %643 = and i32 %5, -3, !dbg !2386
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !2387
  br label %645, !dbg !2388

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !2389
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2390 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2394, metadata !607), !dbg !2398
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2395, metadata !607), !dbg !2399
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !2400
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2396, metadata !607), !dbg !2401
  %4 = icmp eq i8* %3, %0, !dbg !2402
  br i1 %4, label %5, label %75, !dbg !2404

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !2405
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2397, metadata !607), !dbg !2406
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2407, metadata !607), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2421, metadata !607), !dbg !2426
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2422, metadata !607), !dbg !2427
  %7 = load i8, i8* %6, align 1, !dbg !2428, !tbaa !716
  %8 = sext i8 %7 to i32, !dbg !2428
  %9 = and i32 %8, -33, !dbg !2428
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2428

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2430, metadata !607), !dbg !2444
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2442, metadata !607), !dbg !2448
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2443, metadata !607), !dbg !2449
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2450
  %12 = load i8, i8* %11, align 1, !dbg !2450, !tbaa !716
  %13 = sext i8 %12 to i32, !dbg !2450
  %14 = and i32 %13, -33, !dbg !2450
  %15 = icmp eq i32 %14, 84, !dbg !2450
  br i1 %15, label %16, label %72, !dbg !2450

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2452, metadata !607), !dbg !2465
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2463, metadata !607), !dbg !2469
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2464, metadata !607), !dbg !2470
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2471
  %18 = load i8, i8* %17, align 1, !dbg !2471, !tbaa !716
  %19 = sext i8 %18 to i32, !dbg !2471
  %20 = and i32 %19, -33, !dbg !2471
  %21 = icmp eq i32 %20, 70, !dbg !2471
  br i1 %21, label %22, label %72, !dbg !2471

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2473, metadata !607), !dbg !2485
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2483, metadata !607), !dbg !2489
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2484, metadata !607), !dbg !2490
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2491
  %24 = load i8, i8* %23, align 1, !dbg !2491, !tbaa !716
  %25 = icmp eq i8 %24, 45, !dbg !2491
  br i1 %25, label %26, label %72, !dbg !2493

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2494, metadata !607), !dbg !2505
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2503, metadata !607), !dbg !2509
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2504, metadata !607), !dbg !2510
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2511
  %28 = load i8, i8* %27, align 1, !dbg !2511, !tbaa !716
  %29 = icmp eq i8 %28, 56, !dbg !2511
  br i1 %29, label %30, label %72, !dbg !2513

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2514, metadata !607), !dbg !2524
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2522, metadata !607), !dbg !2528
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2523, metadata !607), !dbg !2529
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2530
  %32 = load i8, i8* %31, align 1, !dbg !2530, !tbaa !716
  %33 = icmp eq i8 %32, 0, !dbg !2530
  br i1 %33, label %34, label %72, !dbg !2532

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2533, !tbaa !716
  %36 = icmp eq i8 %35, 96, !dbg !2534
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.112, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.113, i64 0, i64 0), !dbg !2533
  br label %75, !dbg !2535

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2430, metadata !607), !dbg !2536
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2442, metadata !607), !dbg !2540
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2443, metadata !607), !dbg !2541
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2542
  %40 = load i8, i8* %39, align 1, !dbg !2542, !tbaa !716
  %41 = sext i8 %40 to i32, !dbg !2542
  %42 = and i32 %41, -33, !dbg !2542
  %43 = icmp eq i32 %42, 66, !dbg !2542
  br i1 %43, label %44, label %72, !dbg !2542

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2452, metadata !607), !dbg !2543
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2463, metadata !607), !dbg !2545
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2464, metadata !607), !dbg !2546
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2547
  %46 = load i8, i8* %45, align 1, !dbg !2547, !tbaa !716
  %47 = icmp eq i8 %46, 49, !dbg !2547
  br i1 %47, label %48, label %72, !dbg !2548

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2473, metadata !607), !dbg !2549
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2483, metadata !607), !dbg !2551
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2484, metadata !607), !dbg !2552
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2553
  %50 = load i8, i8* %49, align 1, !dbg !2553, !tbaa !716
  %51 = icmp eq i8 %50, 56, !dbg !2553
  br i1 %51, label %52, label %72, !dbg !2554

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2494, metadata !607), !dbg !2555
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2503, metadata !607), !dbg !2557
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2504, metadata !607), !dbg !2558
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2559
  %54 = load i8, i8* %53, align 1, !dbg !2559, !tbaa !716
  %55 = icmp eq i8 %54, 48, !dbg !2559
  br i1 %55, label %56, label %72, !dbg !2560

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2514, metadata !607), !dbg !2561
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2522, metadata !607), !dbg !2563
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2523, metadata !607), !dbg !2564
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2565
  %58 = load i8, i8* %57, align 1, !dbg !2565, !tbaa !716
  %59 = icmp eq i8 %58, 51, !dbg !2565
  br i1 %59, label %60, label %72, !dbg !2566

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2567, metadata !607), !dbg !2576
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2574, metadata !607), !dbg !2580
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2575, metadata !607), !dbg !2581
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2582
  %62 = load i8, i8* %61, align 1, !dbg !2582, !tbaa !716
  %63 = icmp eq i8 %62, 48, !dbg !2582
  br i1 %63, label %64, label %72, !dbg !2584

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2585, metadata !607), !dbg !2593
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2591, metadata !607), !dbg !2597
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2592, metadata !607), !dbg !2598
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2599
  %66 = load i8, i8* %65, align 1, !dbg !2599, !tbaa !716
  %67 = icmp eq i8 %66, 0, !dbg !2599
  br i1 %67, label %68, label %72, !dbg !2601

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2602, !tbaa !716
  %70 = icmp eq i8 %69, 96, !dbg !2603
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.114, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.115, i64 0, i64 0), !dbg !2602
  br label %75, !dbg !2604

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2605
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.111, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.110, i64 0, i64 0), !dbg !2606
  br label %75, !dbg !2607

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2608
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2609 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2613, metadata !607), !dbg !2616
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2614, metadata !607), !dbg !2617
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2615, metadata !607), !dbg !2618
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2619, metadata !607) #11, !dbg !2632
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2624, metadata !607) #11, !dbg !2634
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2625, metadata !607) #11, !dbg !2635
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2626, metadata !607) #11, !dbg !2636
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2637
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2637
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2627, metadata !607) #11, !dbg !2638
  %6 = tail call i32* @__errno_location() #16, !dbg !2639
  %7 = load i32, i32* %6, align 4, !dbg !2639, !tbaa !1369
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2628, metadata !607) #11, !dbg !2640
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2641
  %9 = load i32, i32* %8, align 4, !dbg !2641, !tbaa !1801
  %10 = or i32 %9, 1, !dbg !2642
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2629, metadata !607) #11, !dbg !2643
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2644
  %12 = load i32, i32* %11, align 8, !dbg !2644, !tbaa !1741
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2645
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2646
  %15 = load i8*, i8** %14, align 8, !dbg !2646, !tbaa !1827
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2647
  %17 = load i8*, i8** %16, align 8, !dbg !2647, !tbaa !1830
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !2648
  %19 = add i64 %18, 1, !dbg !2649
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2630, metadata !607) #11, !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2651, metadata !607) #11, !dbg !2656
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2658
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2631, metadata !607) #11, !dbg !2659
  %21 = load i32, i32* %11, align 8, !dbg !2660, !tbaa !1741
  %22 = load i8*, i8** %14, align 8, !dbg !2661, !tbaa !1827
  %23 = load i8*, i8** %16, align 8, !dbg !2662, !tbaa !1830
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !2663
  store i32 %7, i32* %6, align 4, !dbg !2664, !tbaa !1369
  ret i8* %20, !dbg !2665
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2620 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2619, metadata !607), !dbg !2666
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2624, metadata !607), !dbg !2667
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2625, metadata !607), !dbg !2668
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2626, metadata !607), !dbg !2669
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2670
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2670
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2627, metadata !607), !dbg !2671
  %7 = tail call i32* @__errno_location() #16, !dbg !2672
  %8 = load i32, i32* %7, align 4, !dbg !2672, !tbaa !1369
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2628, metadata !607), !dbg !2673
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2674
  %10 = load i32, i32* %9, align 4, !dbg !2674, !tbaa !1801
  %11 = icmp ne i64* %2, null, !dbg !2675
  %12 = xor i1 %11, true, !dbg !2675
  %13 = zext i1 %12 to i32, !dbg !2675
  %14 = or i32 %10, %13, !dbg !2676
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2629, metadata !607), !dbg !2677
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2678
  %16 = load i32, i32* %15, align 8, !dbg !2678, !tbaa !1741
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2679
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2680
  %19 = load i8*, i8** %18, align 8, !dbg !2680, !tbaa !1827
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2681
  %21 = load i8*, i8** %20, align 8, !dbg !2681, !tbaa !1830
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2682
  %23 = add i64 %22, 1, !dbg !2683
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2630, metadata !607), !dbg !2684
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2651, metadata !607) #11, !dbg !2685
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2687
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2631, metadata !607), !dbg !2688
  %25 = load i32, i32* %15, align 8, !dbg !2689, !tbaa !1741
  %26 = load i8*, i8** %18, align 8, !dbg !2690, !tbaa !1827
  %27 = load i8*, i8** %20, align 8, !dbg !2691, !tbaa !1830
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2692
  store i32 %8, i32* %7, align 4, !dbg !2693, !tbaa !1369
  br i1 %11, label %29, label %30, !dbg !2694

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2695, !tbaa !2697
  br label %30, !dbg !2699

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2700
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2701 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2705, !tbaa !614
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2703, metadata !607), !dbg !2706
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2704, metadata !607), !dbg !2707
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2704, metadata !607), !dbg !2707
  %2 = load i32, i32* @nslots, align 4, !dbg !2708, !tbaa !1369
  %3 = icmp sgt i32 %2, 1, !dbg !2711
  br i1 %3, label %4, label %13, !dbg !2712

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2713

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2704, metadata !607), !dbg !2707
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2713
  %8 = load i8*, i8** %7, align 8, !dbg !2713, !tbaa !2714
  tail call void @free(i8* %8) #11, !dbg !2716
  %9 = add nuw i64 %6, 1, !dbg !2717
  %10 = load i32, i32* @nslots, align 4, !dbg !2708, !tbaa !1369
  %11 = sext i32 %10 to i64, !dbg !2711
  %12 = icmp slt i64 %9, %11, !dbg !2711
  br i1 %12, label %5, label %13, !dbg !2712, !llvm.loop !2718

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2720
  %15 = load i8*, i8** %14, align 8, !dbg !2720, !tbaa !2714
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2722
  br i1 %16, label %18, label %17, !dbg !2723

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #11, !dbg !2724
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2726, !tbaa !2727
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2728, !tbaa !2714
  br label %18, !dbg !2729

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2730
  br i1 %19, label %22, label %20, !dbg !2732

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2733
  tail call void @free(i8* %21) #11, !dbg !2735
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2736, !tbaa !614
  br label %22, !dbg !2737

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2738, !tbaa !1369
  ret void, !dbg !2739
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2740 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2744, metadata !607), !dbg !2746
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2745, metadata !607), !dbg !2747
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2748
  ret i8* %3, !dbg !2749
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2750 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2754, metadata !607), !dbg !2768
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2755, metadata !607), !dbg !2769
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2756, metadata !607), !dbg !2770
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2757, metadata !607), !dbg !2771
  %5 = tail call i32* @__errno_location() #16, !dbg !2772
  %6 = load i32, i32* %5, align 4, !dbg !2772, !tbaa !1369
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2758, metadata !607), !dbg !2773
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2774, !tbaa !614
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2759, metadata !607), !dbg !2775
  %8 = icmp slt i32 %0, 0, !dbg !2776
  br i1 %8, label %9, label %10, !dbg !2778

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2779
  unreachable, !dbg !2779

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2780, !tbaa !1369
  %12 = icmp sgt i32 %11, %0, !dbg !2781
  br i1 %12, label %34, label %13, !dbg !2782

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2783
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2784
  br i1 %15, label %16, label %17, !dbg !2786

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2787
  unreachable, !dbg !2787

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2788
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2788
  %20 = add nsw i32 %0, 1, !dbg !2789
  %21 = sext i32 %20 to i64, !dbg !2790
  %22 = shl nsw i64 %21, 4, !dbg !2791
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !2792
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2792
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2759, metadata !607), !dbg !2775
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2793, !tbaa !614
  br i1 %14, label %25, label %26, !dbg !2794

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2795, !tbaa.struct !2797
  br label %26, !dbg !2798

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2799, !tbaa !1369
  %28 = sext i32 %27 to i64, !dbg !2800
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2800
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2801
  %31 = sub nsw i32 %20, %27, !dbg !2802
  %32 = sext i32 %31 to i64, !dbg !2803
  %33 = shl nsw i64 %32, 4, !dbg !2804
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2801
  store i32 %20, i32* @nslots, align 4, !dbg !2805, !tbaa !1369
  br label %34, !dbg !2806

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2759, metadata !607), !dbg !2775
  %36 = sext i32 %0 to i64, !dbg !2807
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2808
  %38 = load i64, i64* %37, align 8, !dbg !2808, !tbaa !2727
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2763, metadata !607), !dbg !2809
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2810
  %40 = load i8*, i8** %39, align 8, !dbg !2810, !tbaa !2714
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2765, metadata !607), !dbg !2811
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2812
  %42 = load i32, i32* %41, align 4, !dbg !2812, !tbaa !1801
  %43 = or i32 %42, 1, !dbg !2813
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2766, metadata !607), !dbg !2814
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2815
  %45 = load i32, i32* %44, align 8, !dbg !2815, !tbaa !1741
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2816
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2817
  %48 = load i8*, i8** %47, align 8, !dbg !2817, !tbaa !1827
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2818
  %50 = load i8*, i8** %49, align 8, !dbg !2818, !tbaa !1830
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2819
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2767, metadata !607), !dbg !2820
  %52 = icmp ugt i64 %38, %51, !dbg !2821
  br i1 %52, label %63, label %53, !dbg !2823

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2824
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2763, metadata !607), !dbg !2809
  store i64 %54, i64* %37, align 8, !dbg !2826, !tbaa !2727
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2827
  br i1 %55, label %57, label %56, !dbg !2829

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !2830
  br label %57, !dbg !2830

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2651, metadata !607) #11, !dbg !2831
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !2833
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2765, metadata !607), !dbg !2811
  store i8* %58, i8** %39, align 8, !dbg !2834, !tbaa !2714
  %59 = load i32, i32* %44, align 8, !dbg !2835, !tbaa !1741
  %60 = load i8*, i8** %47, align 8, !dbg !2836, !tbaa !1827
  %61 = load i8*, i8** %49, align 8, !dbg !2837, !tbaa !1830
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2838
  br label %63, !dbg !2839

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2765, metadata !607), !dbg !2811
  store i32 %6, i32* %5, align 4, !dbg !2840, !tbaa !1369
  ret i8* %64, !dbg !2841
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2842 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2846, metadata !607), !dbg !2849
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2847, metadata !607), !dbg !2850
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2848, metadata !607), !dbg !2851
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2852
  ret i8* %4, !dbg !2853
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2854 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2858, metadata !607), !dbg !2859
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2744, metadata !607) #11, !dbg !2860
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2745, metadata !607) #11, !dbg !2862
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2863
  ret i8* %2, !dbg !2864
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2865 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2869, metadata !607), !dbg !2871
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2870, metadata !607), !dbg !2872
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2846, metadata !607) #11, !dbg !2873
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2847, metadata !607) #11, !dbg !2875
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2848, metadata !607) #11, !dbg !2876
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2877
  ret i8* %3, !dbg !2878
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2879 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2887, metadata !2893), !dbg !2894
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2883, metadata !607), !dbg !2896
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2884, metadata !607), !dbg !2897
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2885, metadata !607), !dbg !2898
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2899
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2899
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2886, metadata !607), !dbg !2900
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2892, metadata !607) #11, !dbg !2901
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2902
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2902
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2887, metadata !607) #11, !dbg !2894
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2887, metadata !2903) #11, !dbg !2894
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2894
  %8 = icmp eq i32 %1, 10, !dbg !2904
  br i1 %8, label %9, label %10, !dbg !2906

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2907, !noalias !2908
  unreachable, !dbg !2907

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2887, metadata !2903) #11, !dbg !2894
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2911
  store i32 %1, i32* %11, align 8, !dbg !2911, !alias.scope !2908
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2911
  %13 = bitcast i32* %12 to i8*, !dbg !2911
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !2911
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2912
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2886, metadata !607), !dbg !2900
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2913
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2914
  ret i8* %14, !dbg !2915
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2916 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2887, metadata !2893), !dbg !2925
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2920, metadata !607), !dbg !2927
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2921, metadata !607), !dbg !2928
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2922, metadata !607), !dbg !2929
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2923, metadata !607), !dbg !2930
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2931
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2931
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2924, metadata !607), !dbg !2932
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2892, metadata !607) #11, !dbg !2933
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2934
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2934
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2887, metadata !607) #11, !dbg !2925
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2887, metadata !2903) #11, !dbg !2925
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2925
  %9 = icmp eq i32 %1, 10, !dbg !2935
  br i1 %9, label %10, label %11, !dbg !2936

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2937, !noalias !2938
  unreachable, !dbg !2937

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2887, metadata !2903) #11, !dbg !2925
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2941
  store i32 %1, i32* %12, align 8, !dbg !2941, !alias.scope !2938
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2941
  %14 = bitcast i32* %13 to i8*, !dbg !2941
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !2941
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2942
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2924, metadata !607), !dbg !2932
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2943
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2944
  ret i8* %15, !dbg !2945
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2946 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2887, metadata !2893), !dbg !2952
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2950, metadata !607), !dbg !2955
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2951, metadata !607), !dbg !2956
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2883, metadata !607) #11, !dbg !2957
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2884, metadata !607) #11, !dbg !2958
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2885, metadata !607) #11, !dbg !2959
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2960
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2960
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2886, metadata !607) #11, !dbg !2961
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2892, metadata !607) #11, !dbg !2962
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2963
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2963
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2887, metadata !607) #11, !dbg !2952
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2887, metadata !2903) #11, !dbg !2952
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2952
  %7 = icmp eq i32 %0, 10, !dbg !2964
  br i1 %7, label %8, label %9, !dbg !2965

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2966, !noalias !2967
  unreachable, !dbg !2966

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2887, metadata !2903) #11, !dbg !2952
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2970
  store i32 %0, i32* %10, align 8, !dbg !2970, !alias.scope !2967
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2970
  %12 = bitcast i32* %11 to i8*, !dbg !2970
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !2970
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2971
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2886, metadata !607) #11, !dbg !2961
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !2972
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2973
  ret i8* %13, !dbg !2974
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2975 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2887, metadata !2893), !dbg !2982
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2979, metadata !607), !dbg !2985
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2980, metadata !607), !dbg !2986
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2981, metadata !607), !dbg !2987
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2920, metadata !607) #11, !dbg !2988
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2921, metadata !607) #11, !dbg !2989
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2922, metadata !607) #11, !dbg !2990
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2923, metadata !607) #11, !dbg !2991
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2992
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2992
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2924, metadata !607) #11, !dbg !2993
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2892, metadata !607) #11, !dbg !2994
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2995
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2995
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2887, metadata !607) #11, !dbg !2982
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2887, metadata !2903) #11, !dbg !2982
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2982
  %8 = icmp eq i32 %0, 10, !dbg !2996
  br i1 %8, label %9, label %10, !dbg !2997

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2998, !noalias !2999
  unreachable, !dbg !2998

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2887, metadata !2903) #11, !dbg !2982
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3002
  store i32 %0, i32* %11, align 8, !dbg !3002, !alias.scope !2999
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3002
  %13 = bitcast i32* %12 to i8*, !dbg !3002
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !3002
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3003
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2924, metadata !607) #11, !dbg !2993
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !3004
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3005
  ret i8* %14, !dbg !3006
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3007 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3011, metadata !607), !dbg !3015
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3012, metadata !607), !dbg !3016
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3013, metadata !607), !dbg !3017
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3018
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3018
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3019, !tbaa.struct !3020
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3014, metadata !607), !dbg !3021
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1760, metadata !607), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1761, metadata !607), !dbg !3024
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1762, metadata !607), !dbg !3025
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1763, metadata !607), !dbg !3026
  %6 = lshr i8 %2, 5, !dbg !3027
  %7 = zext i8 %6 to i64, !dbg !3027
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3028
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1764, metadata !607), !dbg !3029
  %9 = and i8 %2, 31, !dbg !3030
  %10 = zext i8 %9 to i32, !dbg !3031
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1766, metadata !607), !dbg !3032
  %11 = load i32, i32* %8, align 4, !dbg !3033, !tbaa !1369
  %12 = lshr i32 %11, %10, !dbg !3034
  %13 = and i32 %12, 1, !dbg !3035
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1767, metadata !607), !dbg !3036
  %14 = xor i32 %13, 1, !dbg !3037
  %15 = shl i32 %14, %10, !dbg !3038
  %16 = xor i32 %15, %11, !dbg !3039
  store i32 %16, i32* %8, align 4, !dbg !3039, !tbaa !1369
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3014, metadata !607), !dbg !3021
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3040
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3041
  ret i8* %17, !dbg !3042
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3043 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3047, metadata !607), !dbg !3049
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3048, metadata !607), !dbg !3050
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3011, metadata !607) #11, !dbg !3051
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3012, metadata !607) #11, !dbg !3053
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3013, metadata !607) #11, !dbg !3054
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3055
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3055
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3056, !tbaa.struct !3020
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3014, metadata !607) #11, !dbg !3057
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1760, metadata !607) #11, !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1761, metadata !607) #11, !dbg !3060
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1762, metadata !607) #11, !dbg !3061
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1763, metadata !607) #11, !dbg !3062
  %5 = lshr i8 %1, 5, !dbg !3063
  %6 = zext i8 %5 to i64, !dbg !3063
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3064
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1764, metadata !607) #11, !dbg !3065
  %8 = and i8 %1, 31, !dbg !3066
  %9 = zext i8 %8 to i32, !dbg !3067
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1766, metadata !607) #11, !dbg !3068
  %10 = load i32, i32* %7, align 4, !dbg !3069, !tbaa !1369
  %11 = lshr i32 %10, %9, !dbg !3070
  %12 = and i32 %11, 1, !dbg !3071
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1767, metadata !607) #11, !dbg !3072
  %13 = xor i32 %12, 1, !dbg !3073
  %14 = shl i32 %13, %9, !dbg !3074
  %15 = xor i32 %14, %10, !dbg !3075
  store i32 %15, i32* %7, align 4, !dbg !3075, !tbaa !1369
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3014, metadata !607) #11, !dbg !3057
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3076
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3077
  ret i8* %16, !dbg !3078
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3079 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3081, metadata !607), !dbg !3082
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3047, metadata !607) #11, !dbg !3083
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3048, metadata !607) #11, !dbg !3085
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3011, metadata !607) #11, !dbg !3086
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3012, metadata !607) #11, !dbg !3088
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3013, metadata !607) #11, !dbg !3089
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3090
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3090
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3091, !tbaa.struct !3020
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3014, metadata !607) #11, !dbg !3092
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1760, metadata !607) #11, !dbg !3093
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1761, metadata !607) #11, !dbg !3095
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1762, metadata !607) #11, !dbg !3096
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1763, metadata !607) #11, !dbg !3097
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3098
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1764, metadata !607) #11, !dbg !3099
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1766, metadata !607) #11, !dbg !3100
  %5 = load i32, i32* %4, align 4, !dbg !3101, !tbaa !1369
  %6 = or i32 %5, 67108864, !dbg !3102
  store i32 %6, i32* %4, align 4, !dbg !3102, !tbaa !1369
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3014, metadata !607) #11, !dbg !3092
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !3103
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3104
  ret i8* %7, !dbg !3105
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3106 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3108, metadata !607), !dbg !3110
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3109, metadata !607), !dbg !3111
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3011, metadata !607) #11, !dbg !3112
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3012, metadata !607) #11, !dbg !3114
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3013, metadata !607) #11, !dbg !3115
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3116
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3116
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3117, !tbaa.struct !3020
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3014, metadata !607) #11, !dbg !3118
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1760, metadata !607) #11, !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1761, metadata !607) #11, !dbg !3121
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1762, metadata !607) #11, !dbg !3122
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1763, metadata !607) #11, !dbg !3123
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3124
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1764, metadata !607) #11, !dbg !3125
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1766, metadata !607) #11, !dbg !3126
  %6 = load i32, i32* %5, align 4, !dbg !3127, !tbaa !1369
  %7 = or i32 %6, 67108864, !dbg !3128
  store i32 %7, i32* %5, align 4, !dbg !3128, !tbaa !1369
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3014, metadata !607) #11, !dbg !3118
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !3129
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3130
  ret i8* %8, !dbg !3131
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3132 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2887, metadata !2893), !dbg !3138
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3134, metadata !607), !dbg !3140
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3135, metadata !607), !dbg !3141
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3136, metadata !607), !dbg !3142
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3143
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3143
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2892, metadata !607) #11, !dbg !3144
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3145
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3145
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2887, metadata !607) #11, !dbg !3138
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2887, metadata !2903) #11, !dbg !3138
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3138
  %9 = icmp eq i32 %1, 10, !dbg !3146
  br i1 %9, label %10, label %11, !dbg !3147

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3148, !noalias !3149
  unreachable, !dbg !3148

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2887, metadata !2903) #11, !dbg !3138
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3152
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3152
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3153
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3154
  store i32 %1, i32* %13, align 8, !dbg !3154
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3154
  %15 = bitcast i32* %14 to i8*, !dbg !3154
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3154
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3137, metadata !607), !dbg !3155
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1760, metadata !607), !dbg !3156
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1761, metadata !607), !dbg !3158
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1762, metadata !607), !dbg !3159
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1763, metadata !607), !dbg !3160
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3161
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1764, metadata !607), !dbg !3162
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1766, metadata !607), !dbg !3163
  %17 = load i32, i32* %16, align 4, !dbg !3164, !tbaa !1369
  %18 = or i32 %17, 67108864, !dbg !3165
  store i32 %18, i32* %16, align 4, !dbg !3165, !tbaa !1369
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3137, metadata !607), !dbg !3155
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3166
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3167
  ret i8* %19, !dbg !3168
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3169 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3173, metadata !607), !dbg !3177
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3174, metadata !607), !dbg !3178
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3175, metadata !607), !dbg !3179
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3176, metadata !607), !dbg !3180
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3181, metadata !607) #11, !dbg !3191
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3186, metadata !607) #11, !dbg !3193
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3187, metadata !607) #11, !dbg !3194
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3188, metadata !607) #11, !dbg !3195
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3189, metadata !607) #11, !dbg !3196
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3197
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3197
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3198, !tbaa.struct !3020
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3190, metadata !607) #11, !dbg !3199
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1809, metadata !607) #11, !dbg !3200
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1810, metadata !607) #11, !dbg !3202
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1811, metadata !607) #11, !dbg !3203
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1809, metadata !607) #11, !dbg !3200
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1809, metadata !607) #11, !dbg !3200
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3204
  store i32 10, i32* %7, align 8, !dbg !3205, !tbaa !1741
  %8 = icmp ne i8* %1, null, !dbg !3206
  %9 = icmp ne i8* %2, null, !dbg !3207
  %10 = and i1 %8, %9, !dbg !3208
  br i1 %10, label %12, label %11, !dbg !3208

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3209
  unreachable, !dbg !3209

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3210
  store i8* %1, i8** %13, align 8, !dbg !3211, !tbaa !1827
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3212
  store i8* %2, i8** %14, align 8, !dbg !3213, !tbaa !1830
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3190, metadata !607) #11, !dbg !3199
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !3214
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3215
  ret i8* %15, !dbg !3216
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3182 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3181, metadata !607), !dbg !3217
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3186, metadata !607), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3187, metadata !607), !dbg !3219
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3188, metadata !607), !dbg !3220
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3189, metadata !607), !dbg !3221
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3222
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3222
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3223, !tbaa.struct !3020
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3190, metadata !607), !dbg !3224
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1809, metadata !607) #11, !dbg !3225
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1810, metadata !607) #11, !dbg !3227
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1811, metadata !607) #11, !dbg !3228
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1809, metadata !607) #11, !dbg !3225
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1809, metadata !607) #11, !dbg !3225
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3229
  store i32 10, i32* %8, align 8, !dbg !3230, !tbaa !1741
  %9 = icmp ne i8* %1, null, !dbg !3231
  %10 = icmp ne i8* %2, null, !dbg !3232
  %11 = and i1 %9, %10, !dbg !3233
  br i1 %11, label %13, label %12, !dbg !3233

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3234
  unreachable, !dbg !3234

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3235
  store i8* %1, i8** %14, align 8, !dbg !3236, !tbaa !1827
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3237
  store i8* %2, i8** %15, align 8, !dbg !3238, !tbaa !1830
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3190, metadata !607), !dbg !3224
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3239
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3240
  ret i8* %16, !dbg !3241
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3242 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3246, metadata !607), !dbg !3249
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3247, metadata !607), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3248, metadata !607), !dbg !3251
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3173, metadata !607) #11, !dbg !3252
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3174, metadata !607) #11, !dbg !3254
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3175, metadata !607) #11, !dbg !3255
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3176, metadata !607) #11, !dbg !3256
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3181, metadata !607) #11, !dbg !3257
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3186, metadata !607) #11, !dbg !3259
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3187, metadata !607) #11, !dbg !3260
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3188, metadata !607) #11, !dbg !3261
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3189, metadata !607) #11, !dbg !3262
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3263
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3263
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3264, !tbaa.struct !3020
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3190, metadata !607) #11, !dbg !3265
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1809, metadata !607) #11, !dbg !3266
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1810, metadata !607) #11, !dbg !3268
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1811, metadata !607) #11, !dbg !3269
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1809, metadata !607) #11, !dbg !3266
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1809, metadata !607) #11, !dbg !3266
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3270
  store i32 10, i32* %6, align 8, !dbg !3271, !tbaa !1741
  %7 = icmp ne i8* %0, null, !dbg !3272
  %8 = icmp ne i8* %1, null, !dbg !3273
  %9 = and i1 %7, %8, !dbg !3274
  br i1 %9, label %11, label %10, !dbg !3274

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3275
  unreachable, !dbg !3275

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3276
  store i8* %0, i8** %12, align 8, !dbg !3277, !tbaa !1827
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3278
  store i8* %1, i8** %13, align 8, !dbg !3279, !tbaa !1830
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3190, metadata !607) #11, !dbg !3265
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3280
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3281
  ret i8* %14, !dbg !3282
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3283 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3287, metadata !607), !dbg !3291
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3288, metadata !607), !dbg !3292
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3289, metadata !607), !dbg !3293
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3290, metadata !607), !dbg !3294
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3181, metadata !607) #11, !dbg !3295
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3186, metadata !607) #11, !dbg !3297
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3187, metadata !607) #11, !dbg !3298
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3188, metadata !607) #11, !dbg !3299
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3189, metadata !607) #11, !dbg !3300
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3301
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3301
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3302, !tbaa.struct !3020
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3190, metadata !607) #11, !dbg !3303
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1809, metadata !607) #11, !dbg !3304
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1810, metadata !607) #11, !dbg !3306
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1811, metadata !607) #11, !dbg !3307
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1809, metadata !607) #11, !dbg !3304
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1809, metadata !607) #11, !dbg !3304
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3308
  store i32 10, i32* %7, align 8, !dbg !3309, !tbaa !1741
  %8 = icmp ne i8* %0, null, !dbg !3310
  %9 = icmp ne i8* %1, null, !dbg !3311
  %10 = and i1 %8, %9, !dbg !3312
  br i1 %10, label %12, label %11, !dbg !3312

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3313
  unreachable, !dbg !3313

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3314
  store i8* %0, i8** %13, align 8, !dbg !3315, !tbaa !1827
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3316
  store i8* %1, i8** %14, align 8, !dbg !3317, !tbaa !1830
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3190, metadata !607) #11, !dbg !3303
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !3318
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3319
  ret i8* %15, !dbg !3320
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3321 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3325, metadata !607), !dbg !3328
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3326, metadata !607), !dbg !3329
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3327, metadata !607), !dbg !3330
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3331
  ret i8* %4, !dbg !3332
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3333 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3337, metadata !607), !dbg !3339
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3338, metadata !607), !dbg !3340
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3325, metadata !607) #11, !dbg !3341
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3326, metadata !607) #11, !dbg !3343
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3327, metadata !607) #11, !dbg !3344
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3345
  ret i8* %3, !dbg !3346
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3347 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3351, metadata !607), !dbg !3353
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3352, metadata !607), !dbg !3354
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3325, metadata !607) #11, !dbg !3355
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3326, metadata !607) #11, !dbg !3357
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3327, metadata !607) #11, !dbg !3358
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3359
  ret i8* %3, !dbg !3360
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3361 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3365, metadata !607), !dbg !3366
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3351, metadata !607) #11, !dbg !3367
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3352, metadata !607) #11, !dbg !3369
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3325, metadata !607) #11, !dbg !3370
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3326, metadata !607) #11, !dbg !3372
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3327, metadata !607) #11, !dbg !3373
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3374
  ret i8* %2, !dbg !3375
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3376 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3431, metadata !607), !dbg !3437
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3432, metadata !607), !dbg !3438
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3433, metadata !607), !dbg !3439
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3434, metadata !607), !dbg !3440
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3435, metadata !607), !dbg !3441
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3436, metadata !607), !dbg !3442
  %7 = icmp eq i8* %1, null, !dbg !3443
  br i1 %7, label %10, label %8, !dbg !3445

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.118, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !3446
  br label %12, !dbg !3446

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.119, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !3447
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.120, i64 0, i64 0), i32 5) #11, !dbg !3448
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !3448
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.121, i64 0, i64 0), i32 5) #11, !dbg !3449
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !3449
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
  ], !dbg !3450

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3451
  unreachable, !dbg !3451

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.122, i64 0, i64 0), i32 5) #11, !dbg !3453
  %20 = load i8*, i8** %4, align 8, !dbg !3453, !tbaa !614
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !3453
  br label %146, !dbg !3454

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.123, i64 0, i64 0), i32 5) #11, !dbg !3455
  %24 = load i8*, i8** %4, align 8, !dbg !3455, !tbaa !614
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3455
  %26 = load i8*, i8** %25, align 8, !dbg !3455, !tbaa !614
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !3455
  br label %146, !dbg !3456

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.124, i64 0, i64 0), i32 5) #11, !dbg !3457
  %30 = load i8*, i8** %4, align 8, !dbg !3457, !tbaa !614
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3457
  %32 = load i8*, i8** %31, align 8, !dbg !3457, !tbaa !614
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3457
  %34 = load i8*, i8** %33, align 8, !dbg !3457, !tbaa !614
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !3457
  br label %146, !dbg !3458

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.125, i64 0, i64 0), i32 5) #11, !dbg !3459
  %38 = load i8*, i8** %4, align 8, !dbg !3459, !tbaa !614
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3459
  %40 = load i8*, i8** %39, align 8, !dbg !3459, !tbaa !614
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3459
  %42 = load i8*, i8** %41, align 8, !dbg !3459, !tbaa !614
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3459
  %44 = load i8*, i8** %43, align 8, !dbg !3459, !tbaa !614
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !3459
  br label %146, !dbg !3460

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.126, i64 0, i64 0), i32 5) #11, !dbg !3461
  %48 = load i8*, i8** %4, align 8, !dbg !3461, !tbaa !614
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3461
  %50 = load i8*, i8** %49, align 8, !dbg !3461, !tbaa !614
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3461
  %52 = load i8*, i8** %51, align 8, !dbg !3461, !tbaa !614
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3461
  %54 = load i8*, i8** %53, align 8, !dbg !3461, !tbaa !614
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3461
  %56 = load i8*, i8** %55, align 8, !dbg !3461, !tbaa !614
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3461
  br label %146, !dbg !3462

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.127, i64 0, i64 0), i32 5) #11, !dbg !3463
  %60 = load i8*, i8** %4, align 8, !dbg !3463, !tbaa !614
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3463
  %62 = load i8*, i8** %61, align 8, !dbg !3463, !tbaa !614
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3463
  %64 = load i8*, i8** %63, align 8, !dbg !3463, !tbaa !614
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3463
  %66 = load i8*, i8** %65, align 8, !dbg !3463, !tbaa !614
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3463
  %68 = load i8*, i8** %67, align 8, !dbg !3463, !tbaa !614
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3463
  %70 = load i8*, i8** %69, align 8, !dbg !3463, !tbaa !614
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3463
  br label %146, !dbg !3464

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.128, i64 0, i64 0), i32 5) #11, !dbg !3465
  %74 = load i8*, i8** %4, align 8, !dbg !3465, !tbaa !614
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3465
  %76 = load i8*, i8** %75, align 8, !dbg !3465, !tbaa !614
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3465
  %78 = load i8*, i8** %77, align 8, !dbg !3465, !tbaa !614
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3465
  %80 = load i8*, i8** %79, align 8, !dbg !3465, !tbaa !614
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3465
  %82 = load i8*, i8** %81, align 8, !dbg !3465, !tbaa !614
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3465
  %84 = load i8*, i8** %83, align 8, !dbg !3465, !tbaa !614
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3465
  %86 = load i8*, i8** %85, align 8, !dbg !3465, !tbaa !614
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3465
  br label %146, !dbg !3466

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.129, i64 0, i64 0), i32 5) #11, !dbg !3467
  %90 = load i8*, i8** %4, align 8, !dbg !3467, !tbaa !614
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3467
  %92 = load i8*, i8** %91, align 8, !dbg !3467, !tbaa !614
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3467
  %94 = load i8*, i8** %93, align 8, !dbg !3467, !tbaa !614
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3467
  %96 = load i8*, i8** %95, align 8, !dbg !3467, !tbaa !614
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3467
  %98 = load i8*, i8** %97, align 8, !dbg !3467, !tbaa !614
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3467
  %100 = load i8*, i8** %99, align 8, !dbg !3467, !tbaa !614
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3467
  %102 = load i8*, i8** %101, align 8, !dbg !3467, !tbaa !614
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3467
  %104 = load i8*, i8** %103, align 8, !dbg !3467, !tbaa !614
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3467
  br label %146, !dbg !3468

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.130, i64 0, i64 0), i32 5) #11, !dbg !3469
  %108 = load i8*, i8** %4, align 8, !dbg !3469, !tbaa !614
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3469
  %110 = load i8*, i8** %109, align 8, !dbg !3469, !tbaa !614
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3469
  %112 = load i8*, i8** %111, align 8, !dbg !3469, !tbaa !614
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3469
  %114 = load i8*, i8** %113, align 8, !dbg !3469, !tbaa !614
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3469
  %116 = load i8*, i8** %115, align 8, !dbg !3469, !tbaa !614
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3469
  %118 = load i8*, i8** %117, align 8, !dbg !3469, !tbaa !614
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3469
  %120 = load i8*, i8** %119, align 8, !dbg !3469, !tbaa !614
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3469
  %122 = load i8*, i8** %121, align 8, !dbg !3469, !tbaa !614
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3469
  %124 = load i8*, i8** %123, align 8, !dbg !3469, !tbaa !614
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3469
  br label %146, !dbg !3470

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.131, i64 0, i64 0), i32 5) #11, !dbg !3471
  %128 = load i8*, i8** %4, align 8, !dbg !3471, !tbaa !614
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3471
  %130 = load i8*, i8** %129, align 8, !dbg !3471, !tbaa !614
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3471
  %132 = load i8*, i8** %131, align 8, !dbg !3471, !tbaa !614
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3471
  %134 = load i8*, i8** %133, align 8, !dbg !3471, !tbaa !614
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3471
  %136 = load i8*, i8** %135, align 8, !dbg !3471, !tbaa !614
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3471
  %138 = load i8*, i8** %137, align 8, !dbg !3471, !tbaa !614
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3471
  %140 = load i8*, i8** %139, align 8, !dbg !3471, !tbaa !614
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3471
  %142 = load i8*, i8** %141, align 8, !dbg !3471, !tbaa !614
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3471
  %144 = load i8*, i8** %143, align 8, !dbg !3471, !tbaa !614
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3471
  br label %146, !dbg !3472

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3473
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3474 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3478, metadata !607), !dbg !3484
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3479, metadata !607), !dbg !3485
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3480, metadata !607), !dbg !3486
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3481, metadata !607), !dbg !3487
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3482, metadata !607), !dbg !3488
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3483, metadata !607), !dbg !3489
  br label %6, !dbg !3490

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3483, metadata !607), !dbg !3489
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3492
  %9 = load i8*, i8** %8, align 8, !dbg !3492, !tbaa !614
  %10 = icmp eq i8* %9, null, !dbg !3494
  %11 = add i64 %7, 1, !dbg !3495
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3483, metadata !607), !dbg !3489
  br i1 %10, label %12, label %6, !dbg !3494, !llvm.loop !3496

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3498
  ret void, !dbg !3499
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3500 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3511, metadata !607), !dbg !3519
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3512, metadata !607), !dbg !3520
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3513, metadata !607), !dbg !3521
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3514, metadata !607), !dbg !3522
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3515, metadata !607), !dbg !3523
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3524
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3524
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3517, metadata !607), !dbg !3525
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3516, metadata !607), !dbg !3526
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3516, metadata !607), !dbg !3526
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3516, metadata !607), !dbg !3526
  %11 = load i32, i32* %8, align 8, !dbg !3527
  %12 = icmp ult i32 %11, 41, !dbg !3527
  br i1 %12, label %13, label %18, !dbg !3527

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3527
  %15 = sext i32 %11 to i64, !dbg !3527
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3527
  %17 = add i32 %11, 8, !dbg !3527
  store i32 %17, i32* %8, align 8, !dbg !3527
  br label %21, !dbg !3527

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3527
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3527
  store i8* %20, i8** %10, align 8, !dbg !3527
  br label %21, !dbg !3527

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3527
  %25 = load i8*, i8** %24, align 8, !dbg !3527
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3530
  store i8* %25, i8** %26, align 16, !dbg !3531, !tbaa !614
  %27 = icmp eq i8* %25, null, !dbg !3532
  br i1 %27, label %30, label %28, !dbg !3533

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3516, metadata !607), !dbg !3526
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3516, metadata !607), !dbg !3526
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3516, metadata !607), !dbg !3526
  %29 = icmp ult i32 %22, 41, !dbg !3527
  br i1 %29, label %35, label %32, !dbg !3527

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3534
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3535
  ret void, !dbg !3535

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3527
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3527
  store i8* %34, i8** %10, align 8, !dbg !3527
  br label %40, !dbg !3527

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3527
  %37 = sext i32 %22 to i64, !dbg !3527
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3527
  %39 = add i32 %22, 8, !dbg !3527
  store i32 %39, i32* %8, align 8, !dbg !3527
  br label %40, !dbg !3527

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3527
  %44 = load i8*, i8** %43, align 8, !dbg !3527
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3530
  store i8* %44, i8** %45, align 8, !dbg !3531, !tbaa !614
  %46 = icmp eq i8* %44, null, !dbg !3532
  br i1 %46, label %30, label %47, !dbg !3533

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3516, metadata !607), !dbg !3526
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3516, metadata !607), !dbg !3526
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3516, metadata !607), !dbg !3526
  %48 = icmp ult i32 %41, 41, !dbg !3527
  br i1 %48, label %52, label %49, !dbg !3527

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3527
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3527
  store i8* %51, i8** %10, align 8, !dbg !3527
  br label %57, !dbg !3527

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3527
  %54 = sext i32 %41 to i64, !dbg !3527
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3527
  %56 = add i32 %41, 8, !dbg !3527
  store i32 %56, i32* %8, align 8, !dbg !3527
  br label %57, !dbg !3527

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3527
  %61 = load i8*, i8** %60, align 8, !dbg !3527
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3530
  store i8* %61, i8** %62, align 16, !dbg !3531, !tbaa !614
  %63 = icmp eq i8* %61, null, !dbg !3532
  br i1 %63, label %30, label %64, !dbg !3533

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3516, metadata !607), !dbg !3526
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3516, metadata !607), !dbg !3526
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3516, metadata !607), !dbg !3526
  %65 = icmp ult i32 %58, 41, !dbg !3527
  br i1 %65, label %69, label %66, !dbg !3527

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3527
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3527
  store i8* %68, i8** %10, align 8, !dbg !3527
  br label %74, !dbg !3527

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3527
  %71 = sext i32 %58 to i64, !dbg !3527
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3527
  %73 = add i32 %58, 8, !dbg !3527
  store i32 %73, i32* %8, align 8, !dbg !3527
  br label %74, !dbg !3527

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3527
  %78 = load i8*, i8** %77, align 8, !dbg !3527
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3530
  store i8* %78, i8** %79, align 8, !dbg !3531, !tbaa !614
  %80 = icmp eq i8* %78, null, !dbg !3532
  br i1 %80, label %30, label %81, !dbg !3533

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3516, metadata !607), !dbg !3526
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3516, metadata !607), !dbg !3526
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3516, metadata !607), !dbg !3526
  %82 = icmp ult i32 %75, 41, !dbg !3527
  br i1 %82, label %86, label %83, !dbg !3527

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3527
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3527
  store i8* %85, i8** %10, align 8, !dbg !3527
  br label %91, !dbg !3527

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3527
  %88 = sext i32 %75 to i64, !dbg !3527
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3527
  %90 = add i32 %75, 8, !dbg !3527
  store i32 %90, i32* %8, align 8, !dbg !3527
  br label %91, !dbg !3527

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3527
  %95 = load i8*, i8** %94, align 8, !dbg !3527
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3530
  store i8* %95, i8** %96, align 16, !dbg !3531, !tbaa !614
  %97 = icmp eq i8* %95, null, !dbg !3532
  br i1 %97, label %30, label %98, !dbg !3533

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3516, metadata !607), !dbg !3526
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3516, metadata !607), !dbg !3526
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3516, metadata !607), !dbg !3526
  %99 = icmp ult i32 %92, 41, !dbg !3527
  br i1 %99, label %103, label %100, !dbg !3527

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3527
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3527
  store i8* %102, i8** %10, align 8, !dbg !3527
  br label %108, !dbg !3527

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3527
  %105 = sext i32 %92 to i64, !dbg !3527
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3527
  %107 = add i32 %92, 8, !dbg !3527
  store i32 %107, i32* %8, align 8, !dbg !3527
  br label %108, !dbg !3527

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3527
  %111 = load i8*, i8** %110, align 8, !dbg !3527
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3530
  store i8* %111, i8** %112, align 8, !dbg !3531, !tbaa !614
  %113 = icmp eq i8* %111, null, !dbg !3532
  br i1 %113, label %30, label %114, !dbg !3533

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3516, metadata !607), !dbg !3526
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3516, metadata !607), !dbg !3526
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3516, metadata !607), !dbg !3526
  %115 = load i8*, i8** %10, align 8, !dbg !3527
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3527
  store i8* %116, i8** %10, align 8, !dbg !3527
  %117 = bitcast i8* %115 to i8**, !dbg !3527
  %118 = load i8*, i8** %117, align 8, !dbg !3527
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3530
  store i8* %118, i8** %119, align 16, !dbg !3531, !tbaa !614
  %120 = icmp eq i8* %118, null, !dbg !3532
  br i1 %120, label %30, label %121, !dbg !3533

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3516, metadata !607), !dbg !3526
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3516, metadata !607), !dbg !3526
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3516, metadata !607), !dbg !3526
  %122 = load i8*, i8** %10, align 8, !dbg !3527
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3527
  store i8* %123, i8** %10, align 8, !dbg !3527
  %124 = bitcast i8* %122 to i8**, !dbg !3527
  %125 = load i8*, i8** %124, align 8, !dbg !3527
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3530
  store i8* %125, i8** %126, align 8, !dbg !3531, !tbaa !614
  %127 = icmp eq i8* %125, null, !dbg !3532
  br i1 %127, label %30, label %128, !dbg !3533

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3516, metadata !607), !dbg !3526
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3516, metadata !607), !dbg !3526
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3516, metadata !607), !dbg !3526
  %129 = load i8*, i8** %10, align 8, !dbg !3527
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3527
  store i8* %130, i8** %10, align 8, !dbg !3527
  %131 = bitcast i8* %129 to i8**, !dbg !3527
  %132 = load i8*, i8** %131, align 8, !dbg !3527
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3530
  store i8* %132, i8** %133, align 16, !dbg !3531, !tbaa !614
  %134 = icmp eq i8* %132, null, !dbg !3532
  br i1 %134, label %30, label %135, !dbg !3533

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3516, metadata !607), !dbg !3526
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3516, metadata !607), !dbg !3526
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3516, metadata !607), !dbg !3526
  %136 = load i8*, i8** %10, align 8, !dbg !3527
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3527
  store i8* %137, i8** %10, align 8, !dbg !3527
  %138 = bitcast i8* %136 to i8**, !dbg !3527
  %139 = load i8*, i8** %138, align 8, !dbg !3527
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3530
  store i8* %139, i8** %140, align 8, !dbg !3531, !tbaa !614
  %141 = icmp eq i8* %139, null, !dbg !3532
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3516, metadata !607), !dbg !3526
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3516, metadata !607), !dbg !3526
  %142 = select i1 %141, i64 9, i64 10, !dbg !3533
  br label %30, !dbg !3533
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3536 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3540, metadata !607), !dbg !3549
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3541, metadata !607), !dbg !3550
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3542, metadata !607), !dbg !3551
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3543, metadata !607), !dbg !3552
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3553
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3553
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3544, metadata !607), !dbg !3554
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3555
  call void @llvm.va_start(i8* nonnull %6), !dbg !3555
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3556
  call void @llvm.va_end(i8* nonnull %6), !dbg !3557
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3558
  ret void, !dbg !3558
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3559 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.134, i64 0, i64 0), i32 5) #11, !dbg !3560
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.135, i64 0, i64 0)) #11, !dbg !3560
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.136, i64 0, i64 0), i32 5) #11, !dbg !3561
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.137, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.138, i64 0, i64 0)) #11, !dbg !3561
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.139, i64 0, i64 0), i32 5) #11, !dbg !3562
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3562, !tbaa !614
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !3562
  ret void, !dbg !3563
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3564 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3568, metadata !607), !dbg !3570
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3569, metadata !607), !dbg !3571
  %3 = udiv i64 9223372036854775807, %1, !dbg !3572
  %4 = icmp ult i64 %3, %0, !dbg !3572
  br i1 %4, label %5, label %6, !dbg !3574

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3575
  unreachable, !dbg !3575

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3576
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3577, metadata !607) #11, !dbg !3584
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !3586
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3583, metadata !607) #11, !dbg !3587
  %9 = icmp eq i8* %8, null, !dbg !3588
  %10 = icmp ne i64 %7, 0, !dbg !3590
  %11 = and i1 %10, %9, !dbg !3591
  br i1 %11, label %12, label %13, !dbg !3591

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3592
  unreachable, !dbg !3592

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3593
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3578 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3577, metadata !607), !dbg !3594
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3595
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3583, metadata !607), !dbg !3596
  %3 = icmp eq i8* %2, null, !dbg !3597
  %4 = icmp ne i64 %0, 0, !dbg !3598
  %5 = and i1 %4, %3, !dbg !3599
  br i1 %5, label %6, label %7, !dbg !3599

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3600
  unreachable, !dbg !3600

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3601
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3602 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3606, metadata !607), !dbg !3609
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3607, metadata !607), !dbg !3610
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3608, metadata !607), !dbg !3611
  %4 = udiv i64 9223372036854775807, %2, !dbg !3612
  %5 = icmp ult i64 %4, %1, !dbg !3612
  br i1 %5, label %6, label %7, !dbg !3614

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3615
  unreachable, !dbg !3615

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3616
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3617, metadata !607) #11, !dbg !3623
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3622, metadata !607) #11, !dbg !3625
  %9 = icmp eq i64 %8, 0, !dbg !3626
  %10 = icmp ne i8* %0, null, !dbg !3628
  %11 = and i1 %10, %9, !dbg !3629
  br i1 %11, label %12, label %13, !dbg !3629

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !3630
  br label %19, !dbg !3632

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !3633
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3617, metadata !607) #11, !dbg !3623
  %15 = icmp eq i8* %14, null, !dbg !3634
  %16 = icmp ne i64 %8, 0, !dbg !3636
  %17 = and i1 %16, %15, !dbg !3637
  br i1 %17, label %18, label %19, !dbg !3637

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3638
  unreachable, !dbg !3638

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3639
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3618 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3617, metadata !607), !dbg !3640
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3622, metadata !607), !dbg !3641
  %3 = icmp eq i64 %1, 0, !dbg !3642
  %4 = icmp ne i8* %0, null, !dbg !3643
  %5 = and i1 %4, %3, !dbg !3644
  br i1 %5, label %6, label %7, !dbg !3644

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !3645
  br label %13, !dbg !3646

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !3647
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3617, metadata !607), !dbg !3640
  %9 = icmp eq i8* %8, null, !dbg !3648
  %10 = icmp ne i64 %1, 0, !dbg !3649
  %11 = and i1 %10, %9, !dbg !3650
  br i1 %11, label %12, label %13, !dbg !3650

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3651
  unreachable, !dbg !3651

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3652
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !567 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !572, metadata !607), !dbg !3653
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !573, metadata !607), !dbg !3654
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !574, metadata !607), !dbg !3655
  %4 = load i64, i64* %1, align 8, !dbg !3656, !tbaa !2697
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !575, metadata !607), !dbg !3657
  %5 = icmp eq i8* %0, null, !dbg !3658
  br i1 %5, label %6, label %13, !dbg !3660

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3661
  br i1 %7, label %8, label %17, !dbg !3664

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3665
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !575, metadata !607), !dbg !3657
  %10 = icmp ugt i64 %2, 128, !dbg !3667
  %11 = zext i1 %10 to i64, !dbg !3667
  %12 = add nuw nsw i64 %9, %11, !dbg !3668
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !575, metadata !607), !dbg !3657
  br label %17, !dbg !3669

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3670
  %15 = icmp ugt i64 %14, %4, !dbg !3673
  br i1 %15, label %20, label %16, !dbg !3674

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3675
  unreachable, !dbg !3675

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !575, metadata !607), !dbg !3657
  store i64 %18, i64* %1, align 8, !dbg !3676, !tbaa !2697
  %19 = mul i64 %18, %2, !dbg !3677
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3617, metadata !607) #11, !dbg !3678
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3622, metadata !607) #11, !dbg !3680
  br label %27, !dbg !3681

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3682
  %22 = add i64 %4, 1, !dbg !3683
  %23 = add i64 %22, %21, !dbg !3684
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !575, metadata !607), !dbg !3657
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !575, metadata !607), !dbg !3657
  store i64 %23, i64* %1, align 8, !dbg !3676, !tbaa !2697
  %24 = mul i64 %23, %2, !dbg !3677
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3617, metadata !607) #11, !dbg !3678
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3622, metadata !607) #11, !dbg !3680
  %25 = icmp eq i64 %24, 0, !dbg !3685
  br i1 %25, label %26, label %27, !dbg !3681

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11, !dbg !3686
  br label %34, !dbg !3687

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !3688
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3617, metadata !607) #11, !dbg !3678
  %30 = icmp eq i8* %29, null, !dbg !3689
  %31 = icmp ne i64 %28, 0, !dbg !3690
  %32 = and i1 %31, %30, !dbg !3691
  br i1 %32, label %33, label %34, !dbg !3691

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3692
  unreachable, !dbg !3692

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3693
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3694 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3696, metadata !607), !dbg !3697
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3577, metadata !607) #11, !dbg !3698
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3700
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3583, metadata !607) #11, !dbg !3701
  %3 = icmp eq i8* %2, null, !dbg !3702
  %4 = icmp ne i64 %0, 0, !dbg !3703
  %5 = and i1 %4, %3, !dbg !3704
  br i1 %5, label %6, label %7, !dbg !3704

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3705
  unreachable, !dbg !3705

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3706
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3707 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3711, metadata !607), !dbg !3713
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3712, metadata !607), !dbg !3714
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !572, metadata !607) #11, !dbg !3715
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !573, metadata !607) #11, !dbg !3717
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !574, metadata !607) #11, !dbg !3718
  %3 = load i64, i64* %1, align 8, !dbg !3719, !tbaa !2697
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !575, metadata !607) #11, !dbg !3720
  %4 = icmp eq i8* %0, null, !dbg !3721
  br i1 %4, label %5, label %8, !dbg !3722

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3723
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !575, metadata !607) #11, !dbg !3720
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !575, metadata !607) #11, !dbg !3720
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3724
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !575, metadata !607) #11, !dbg !3720
  store i64 %7, i64* %1, align 8, !dbg !3725, !tbaa !2697
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3617, metadata !607) #11, !dbg !3726
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3622, metadata !607) #11, !dbg !3728
  br label %17, !dbg !3729

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3730
  br i1 %9, label %11, label %10, !dbg !3731

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3732
  unreachable, !dbg !3732

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3733
  %13 = add i64 %3, 1, !dbg !3734
  %14 = add i64 %13, %12, !dbg !3735
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !575, metadata !607) #11, !dbg !3720
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !575, metadata !607) #11, !dbg !3720
  store i64 %14, i64* %1, align 8, !dbg !3725, !tbaa !2697
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3617, metadata !607) #11, !dbg !3726
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3622, metadata !607) #11, !dbg !3728
  %15 = icmp eq i64 %14, 0, !dbg !3736
  br i1 %15, label %16, label %17, !dbg !3729

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11, !dbg !3737
  br label %24, !dbg !3738

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !3739
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3617, metadata !607) #11, !dbg !3726
  %20 = icmp eq i8* %19, null, !dbg !3740
  %21 = icmp ne i64 %18, 0, !dbg !3741
  %22 = and i1 %21, %20, !dbg !3742
  br i1 %22, label %23, label %24, !dbg !3742

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3743
  unreachable, !dbg !3743

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3744
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3745 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3747, metadata !607), !dbg !3748
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3577, metadata !607) #11, !dbg !3749
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3751
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3583, metadata !607) #11, !dbg !3752
  %3 = icmp eq i8* %2, null, !dbg !3753
  %4 = icmp ne i64 %0, 0, !dbg !3754
  %5 = and i1 %4, %3, !dbg !3755
  br i1 %5, label %6, label %7, !dbg !3755

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3756
  unreachable, !dbg !3756

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3757
  ret i8* %2, !dbg !3758
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3759 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3761, metadata !607), !dbg !3764
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3762, metadata !607), !dbg !3765
  %3 = udiv i64 9223372036854775807, %1, !dbg !3766
  %4 = icmp ult i64 %3, %0, !dbg !3766
  br i1 %4, label %8, label %5, !dbg !3768

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !3769
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3763, metadata !607), !dbg !3770
  %7 = icmp eq i8* %6, null, !dbg !3771
  br i1 %7, label %8, label %9, !dbg !3772

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3773
  unreachable, !dbg !3773

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3774
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3775 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3781, metadata !607), !dbg !3783
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3782, metadata !607), !dbg !3784
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3577, metadata !607) #11, !dbg !3785
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !3787
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3583, metadata !607) #11, !dbg !3788
  %4 = icmp eq i8* %3, null, !dbg !3789
  %5 = icmp ne i64 %1, 0, !dbg !3790
  %6 = and i1 %5, %4, !dbg !3791
  br i1 %6, label %7, label %8, !dbg !3791

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3792
  unreachable, !dbg !3792

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3793
  ret i8* %3, !dbg !3794
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3795 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3797, metadata !607), !dbg !3798
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3799
  %3 = add i64 %2, 1, !dbg !3800
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3781, metadata !607) #11, !dbg !3801
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3782, metadata !607) #11, !dbg !3803
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3577, metadata !607) #11, !dbg !3804
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !3806
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3583, metadata !607) #11, !dbg !3807
  %5 = icmp eq i8* %4, null, !dbg !3808
  %6 = icmp ne i64 %3, 0, !dbg !3809
  %7 = and i1 %6, %5, !dbg !3810
  br i1 %7, label %8, label %9, !dbg !3810

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3811
  unreachable, !dbg !3811

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !3812
  ret i8* %4, !dbg !3813
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3814 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3816, !tbaa !1369
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.150, i64 0, i64 0), i32 5) #11, !dbg !3817
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.151, i64 0, i64 0), i8* %2) #11, !dbg !3818
  tail call void @abort() #15, !dbg !3819
  unreachable, !dbg !3819
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3820 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3823, metadata !607), !dbg !3829
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3824, metadata !607), !dbg !3830
  %3 = icmp eq i64 %0, 0, !dbg !3831
  %4 = icmp eq i64 %1, 0, !dbg !3832
  %5 = or i1 %3, %4, !dbg !3833
  br i1 %5, label %12, label %6, !dbg !3833

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3834
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3826, metadata !607), !dbg !3835
  %8 = udiv i64 %7, %1, !dbg !3836
  %9 = icmp eq i64 %8, %0, !dbg !3838
  br i1 %9, label %12, label %10, !dbg !3839

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #16, !dbg !3840
  store i32 12, i32* %11, align 4, !dbg !3842, !tbaa !1369
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3823, metadata !607), !dbg !3829
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3824, metadata !607), !dbg !3830
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !3843
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3825, metadata !607), !dbg !3844
  br label %16, !dbg !3845

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3846
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3847 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3864, metadata !607), !dbg !3873
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3865, metadata !607), !dbg !3874
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3866, metadata !607), !dbg !3875
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3867, metadata !607), !dbg !3876
  %6 = bitcast i32* %5 to i8*, !dbg !3877
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !3877
  %7 = icmp eq i32* %0, null, !dbg !3878
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3864, metadata !607), !dbg !3873
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3880
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3864, metadata !607), !dbg !3873
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !3881
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3868, metadata !607), !dbg !3882
  %10 = icmp ugt i64 %9, -3, !dbg !3883
  %11 = icmp ne i64 %2, 0, !dbg !3884
  %12 = and i1 %11, %10, !dbg !3885
  br i1 %12, label %13, label %18, !dbg !3885

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !3886
  br i1 %14, label %18, label %15, !dbg !3887

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3888, !tbaa !716
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3870, metadata !607), !dbg !3889
  %17 = zext i8 %16 to i32, !dbg !3890
  store i32 %17, i32* %8, align 4, !dbg !3891, !tbaa !1369
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !3892
  ret i64 %19, !dbg !3892
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3893 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3938, metadata !607), !dbg !3943
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !3944
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3945, metadata !607), !dbg !3949
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3951
  %4 = load i32, i32* %3, align 8, !dbg !3951, !tbaa !3952
  %5 = and i32 %4, 32, !dbg !3951
  %6 = icmp eq i32 %5, 0, !dbg !3954
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !3955
  %8 = icmp ne i32 %7, 0, !dbg !3956
  br i1 %6, label %9, label %19, !dbg !3957

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3959
  %11 = xor i1 %8, true, !dbg !3960
  %12 = or i1 %10, %11, !dbg !3960
  %13 = sext i1 %8 to i32, !dbg !3960
  br i1 %12, label %22, label %14, !dbg !3960

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #16, !dbg !3961
  %16 = load i32, i32* %15, align 4, !dbg !3961, !tbaa !1369
  %17 = icmp ne i32 %16, 9, !dbg !3962
  %18 = sext i1 %17 to i32, !dbg !3963
  br label %22, !dbg !3963

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3964

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #16, !dbg !3966
  store i32 0, i32* %21, align 4, !dbg !3968, !tbaa !1369
  br label %22, !dbg !3966

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3969
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3970 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3975, metadata !607), !dbg !3978
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3976, metadata !607), !dbg !3979
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !3980
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3977, metadata !607), !dbg !3981
  %3 = icmp eq i8* %2, null, !dbg !3982
  br i1 %3, label %11, label %4, !dbg !3984

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.160, i64 0, i64 0)) #14, !dbg !3985
  %6 = icmp eq i32 %5, 0, !dbg !3990
  br i1 %6, label %10, label %7, !dbg !3991

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.161, i64 0, i64 0)) #14, !dbg !3992
  %9 = icmp eq i32 %8, 0, !dbg !3993
  br i1 %9, label %10, label %11, !dbg !3994

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3976, metadata !607), !dbg !3979
  br label %11, !dbg !3995

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3996
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3997 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4003, metadata !607), !dbg !4077
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4070, metadata !607), !dbg !4080
  %3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !4081
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4001, metadata !607), !dbg !4082
  %4 = icmp eq i8* %3, null, !dbg !4083
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.164, i64 0, i64 0), i8* %3, !dbg !4085
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4001, metadata !607), !dbg !4082
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4086, !tbaa !614
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4017, metadata !607) #11, !dbg !4087
  %7 = icmp eq i8* %6, null, !dbg !4088
  br i1 %7, label %8, label %123, !dbg !4089

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.165, i64 0, i64 0)) #11, !dbg !4090
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4018, metadata !607) #11, !dbg !4091
  %10 = icmp eq i8* %9, null, !dbg !4092
  br i1 %10, label %14, label %11, !dbg !4094

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4095, !tbaa !716
  %13 = icmp eq i8 %12, 0, !dbg !4096
  br i1 %13, label %14, label %15, !dbg !4097

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4098

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.166, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4018, metadata !607) #11, !dbg !4091
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !4099
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4021, metadata !607) #11, !dbg !4100
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4023, metadata !607) #11, !dbg !4101
  %18 = icmp eq i64 %17, 0, !dbg !4102
  br i1 %18, label %24, label %19, !dbg !4103

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4104
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4104
  %22 = load i8, i8* %21, align 1, !dbg !4104, !tbaa !716
  %23 = icmp ne i8 %22, 47, !dbg !4104
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4105
  %27 = add i64 %17, 14, !dbg !4106
  %28 = add i64 %27, %26, !dbg !4107
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !4108
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4020, metadata !607) #11, !dbg !4109
  %30 = icmp eq i8* %29, null, !dbg !4110
  br i1 %30, label %121, label %31, !dbg !4110

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !4111
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4114

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4115, !tbaa !716
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4117
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.167, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4118
  br label %37, !dbg !4119

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4117
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.167, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4118
  br label %37, !dbg !4119

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !4120
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4025, metadata !607) #11, !dbg !4121
  %39 = icmp slt i32 %38, 0, !dbg !4122
  br i1 %39, label %119, label %40, !dbg !4123

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.168, i64 0, i64 0)) #11, !dbg !4124
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4026, metadata !607) #11, !dbg !4125
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4126
  br i1 %42, label %43, label %45, !dbg !4127

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #11, !dbg !4128
  br label %119, !dbg !4130

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4067, metadata !607) #11, !dbg !4131
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4068, metadata !607) #11, !dbg !4132
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4133

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !4134

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4067, metadata !607) #11, !dbg !4131
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4068, metadata !607) #11, !dbg !4132
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4134
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4135
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4136, metadata !607) #11, !dbg !4141
  %54 = load i8*, i8** %48, align 8, !dbg !4143, !tbaa !4144
  %55 = load i8*, i8** %49, align 8, !dbg !4143, !tbaa !4145
  %56 = icmp ult i8* %54, %55, !dbg !4143
  br i1 %56, label %59, label %57, !dbg !4143, !prof !4146

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4143
  br label %63, !dbg !4143

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !4143
  store i8* %60, i8** %48, align 8, !dbg !4143, !tbaa !4144
  %61 = load i8, i8* %54, align 1, !dbg !4143, !tbaa !716
  %62 = zext i8 %61 to i32, !dbg !4143
  br label %63, !dbg !4143

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !4143
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !4069, metadata !607) #11, !dbg !4147
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !4148, !llvm.loop !4149

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !4154

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4136, metadata !607) #11, !dbg !4156
  %67 = load i8*, i8** %48, align 8, !dbg !4154, !tbaa !4144
  %68 = load i8*, i8** %49, align 8, !dbg !4154, !tbaa !4145
  %69 = icmp ult i8* %67, %68, !dbg !4154
  br i1 %69, label %72, label %70, !dbg !4154, !prof !4146

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4154
  br label %76, !dbg !4154

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !4154
  store i8* %73, i8** %48, align 8, !dbg !4154, !tbaa !4144
  %74 = load i8, i8* %67, align 1, !dbg !4154, !tbaa !716
  %75 = zext i8 %74 to i32, !dbg !4154
  br label %76, !dbg !4154

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !4154
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !4069, metadata !607) #11, !dbg !4147
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !4157, !llvm.loop !4158

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #11, !dbg !4161
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.169, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #11, !dbg !4162
  %81 = icmp slt i32 %80, 2, !dbg !4164
  br i1 %81, label %112, label %82, !dbg !4165

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !4166
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4074, metadata !607) #11, !dbg !4167
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !4168
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !4075, metadata !607) #11, !dbg !4169
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4076, metadata !607) #11, !dbg !4170
  %85 = icmp eq i64 %51, 0, !dbg !4171
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !4173

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !4068, metadata !607) #11, !dbg !4132
  %90 = add i64 %87, 2, !dbg !4174
  %91 = call noalias i8* @malloc(i64 %90) #11, !dbg !4176
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !4067, metadata !607) #11, !dbg !4131
  br label %96, !dbg !4177

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !4178
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !4068, metadata !607) #11, !dbg !4132
  %94 = add i64 %93, 1, !dbg !4180
  %95 = call i8* @realloc(i8* %52, i64 %94) #11, !dbg !4181
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !4067, metadata !607) #11, !dbg !4131
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4067, metadata !607) #11, !dbg !4131
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4068, metadata !607) #11, !dbg !4132
  %99 = icmp eq i8* %98, null, !dbg !4182
  br i1 %99, label %100, label %102, !dbg !4184

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4068, metadata !607) #11, !dbg !4132
  call void @free(i8* %52) #11, !dbg !4185
  br label %112, !dbg !4187

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4188
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4188
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !4189
  %104 = xor i64 %84, -1, !dbg !4190
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4190
  %106 = xor i64 %83, -1, !dbg !4191
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !4191
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !4192, metadata !607) #11, !dbg !4201
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !4200, metadata !607) #11, !dbg !4201
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #11, !dbg !4203
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #11, !dbg !4204
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4192, metadata !607) #11, !dbg !4205
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4200, metadata !607) #11, !dbg !4205
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #11, !dbg !4207
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #11, !dbg !4208
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4067, metadata !607) #11, !dbg !4131
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4068, metadata !607) #11, !dbg !4132
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4188
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4188
  br label %50, !dbg !4209, !llvm.loop !4158

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4188
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4188
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !4210
  %116 = icmp eq i64 %113, 0, !dbg !4211
  br i1 %116, label %119, label %117, !dbg !4213

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !4214
  store i8 0, i8* %118, align 1, !dbg !4216, !tbaa !716
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.164, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.164, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.164, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !4017, metadata !607) #11, !dbg !4087
  call void @free(i8* %29) #11, !dbg !4217
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.164, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !4017, metadata !607) #11, !dbg !4087
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !4218, !tbaa !614
  br label %123, !dbg !4219

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4017, metadata !607) #11, !dbg !4087
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4002, metadata !607), !dbg !4220
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4002, metadata !607), !dbg !4220
  %125 = load i8, i8* %124, align 1, !dbg !4221, !tbaa !716
  %126 = icmp eq i8 %125, 0, !dbg !4223
  br i1 %126, label %152, label %127, !dbg !4224

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !4225

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !4002, metadata !607), !dbg !4220
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !4225
  %132 = icmp eq i32 %131, 0, !dbg !4227
  br i1 %132, label %139, label %133, !dbg !4228

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !4229
  br i1 %134, label %135, label %143, !dbg !4230

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !4231
  %137 = load i8, i8* %136, align 1, !dbg !4231, !tbaa !716
  %138 = icmp eq i8 %137, 0, !dbg !4232
  br i1 %138, label %139, label %143, !dbg !4233

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !4234
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !4236
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !4237
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !4001, metadata !607), !dbg !4082
  br label %152, !dbg !4238

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !4239
  %145 = add i64 %144, 1, !dbg !4240
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !4241
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4002, metadata !607), !dbg !4220
  %147 = call i64 @strlen(i8* %146) #14, !dbg !4242
  %148 = add i64 %147, 1, !dbg !4243
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !4244
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4002, metadata !607), !dbg !4220
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4002, metadata !607), !dbg !4220
  %150 = load i8, i8* %149, align 1, !dbg !4221, !tbaa !716
  %151 = icmp eq i8 %150, 0, !dbg !4223
  br i1 %151, label %152, label %128, !dbg !4224, !llvm.loop !4245

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4001, metadata !607), !dbg !4082
  %154 = load i8, i8* %153, align 1, !dbg !4247, !tbaa !716
  %155 = icmp eq i8 %154, 0, !dbg !4249
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.170, i64 0, i64 0), i8* %153, !dbg !4250
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !4001, metadata !607), !dbg !4082
  ret i8* %156, !dbg !4251
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4252 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4297, metadata !607), !dbg !4301
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4298, metadata !607), !dbg !4302
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4300, metadata !607), !dbg !4303
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4304
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4299, metadata !607), !dbg !4305
  %3 = icmp slt i32 %2, 0, !dbg !4306
  br i1 %3, label %4, label %6, !dbg !4308

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4309
  br label %24, !dbg !4310

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4311
  %8 = icmp eq i32 %7, 0, !dbg !4311
  br i1 %8, label %13, label %9, !dbg !4313

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4314
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !4315
  %12 = icmp eq i64 %11, -1, !dbg !4316
  br i1 %12, label %16, label %13, !dbg !4317

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !4318
  %15 = icmp eq i32 %14, 0, !dbg !4318
  br i1 %15, label %16, label %18, !dbg !4319

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4298, metadata !607), !dbg !4302
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4320
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4300, metadata !607), !dbg !4303
  br label %24, !dbg !4321

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #16, !dbg !4322
  %20 = load i32, i32* %19, align 4, !dbg !4322, !tbaa !1369
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4298, metadata !607), !dbg !4302
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4298, metadata !607), !dbg !4302
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4320
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4300, metadata !607), !dbg !4303
  %22 = icmp eq i32 %20, 0, !dbg !4323
  br i1 %22, label %24, label %23, !dbg !4321

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4325, !tbaa !1369
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4300, metadata !607), !dbg !4303
  br label %24, !dbg !4327

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4328
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4329 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4374, metadata !607), !dbg !4375
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4376
  br i1 %2, label %6, label %3, !dbg !4378

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4379
  %5 = icmp eq i32 %4, 0, !dbg !4379
  br i1 %5, label %6, label %8, !dbg !4380

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4381
  br label %17, !dbg !4382

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4383, metadata !607) #11, !dbg !4388
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4390
  %10 = load i32, i32* %9, align 8, !dbg !4390, !tbaa !3952
  %11 = and i32 %10, 256, !dbg !4392
  %12 = icmp eq i32 %11, 0, !dbg !4392
  br i1 %12, label %15, label %13, !dbg !4393

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4394
  br label %15, !dbg !4394

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4395
  br label %17, !dbg !4396

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4397
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4398 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4443, metadata !607), !dbg !4449
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4444, metadata !607), !dbg !4450
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4445, metadata !607), !dbg !4451
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4452
  %5 = load i8*, i8** %4, align 8, !dbg !4452, !tbaa !4145
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4453
  %7 = load i8*, i8** %6, align 8, !dbg !4453, !tbaa !4144
  %8 = icmp eq i8* %5, %7, !dbg !4454
  br i1 %8, label %9, label %28, !dbg !4455

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4456
  %11 = load i8*, i8** %10, align 8, !dbg !4456, !tbaa !4457
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4458
  %13 = load i8*, i8** %12, align 8, !dbg !4458, !tbaa !4459
  %14 = icmp eq i8* %11, %13, !dbg !4460
  br i1 %14, label %15, label %28, !dbg !4461

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4462
  %17 = load i8*, i8** %16, align 8, !dbg !4462, !tbaa !4463
  %18 = icmp eq i8* %17, null, !dbg !4464
  br i1 %18, label %19, label %28, !dbg !4465

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4466
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !4467
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4446, metadata !607), !dbg !4468
  %22 = icmp eq i64 %21, -1, !dbg !4469
  br i1 %22, label %30, label %23, !dbg !4471

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4472
  %25 = load i32, i32* %24, align 8, !dbg !4473, !tbaa !3952
  %26 = and i32 %25, -17, !dbg !4473
  store i32 %26, i32* %24, align 8, !dbg !4473, !tbaa !3952
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4474
  store i64 %21, i64* %27, align 8, !dbg !4475, !tbaa !4476
  br label %30, !dbg !4477

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4478
  br label %30, !dbg !4479

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4480
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
attributes #8 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind readnone }
attributes #17 = { cold }

!llvm.dbg.cu = !{!493, !2, !548, !15, !550, !552, !23, !41, !50, !554, !137, !562, !579, !581, !583, !586, !588, !146, !590, !592, !594}
!llvm.ident = !{!596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596}
!llvm.module.flags = !{!597, !598, !599, !600, !601}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "file_name", scope: !2, file: !8, line: 36, type: !10, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7)
!7 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !2, file: !8, line: 46, type: !9, isLocal: true, isDefinition: true)
!8 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!9 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIGlobalVariableExpression(var: !14)
!14 = distinct !DIGlobalVariable(name: "exit_failure", scope: !15, file: !18, line: 24, type: !19, isLocal: false, isDefinition: true)
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !17)
!16 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!17 = !{!13}
!18 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!19 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !20)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIGlobalVariableExpression(var: !22)
!22 = distinct !DIGlobalVariable(name: "long_options", scope: !23, file: !26, line: 33, type: !27, isLocal: true, isDefinition: true)
!23 = distinct !DICompileUnit(language: DW_LANG_C99, file: !24, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !25)
!24 = !DIFile(filename: "./lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!25 = !{!21}
!26 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 768, elements: !37)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !30, line: 50, size: 256, elements: !31)
!30 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!31 = !{!32, !33, !34, !36}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !29, file: !30, line: 52, baseType: !10, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !29, file: !30, line: 55, baseType: !20, size: 32, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !29, file: !30, line: 56, baseType: !35, size: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !29, file: !30, line: 57, baseType: !20, size: 32, offset: 192)
!37 = !{!38}
!38 = !DISubrange(count: 3)
!39 = !DIGlobalVariableExpression(var: !40)
!40 = distinct !DIGlobalVariable(name: "program_name", scope: !41, file: !47, line: 33, type: !10, isLocal: false, isDefinition: true)
!41 = distinct !DICompileUnit(language: DW_LANG_C99, file: !42, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !43, globals: !46)
!42 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!43 = !{!44, !45}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!46 = !{!39}
!47 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!48 = !DIGlobalVariableExpression(var: !49)
!49 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !50, file: !95, line: 77, type: !131, isLocal: false, isDefinition: true)
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !87, globals: !92)
!51 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!52 = !{!53, !67, !72}
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !54, line: 32, size: 32, elements: !55)
!54 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!55 = !{!56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66}
!56 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!57 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!58 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!59 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!60 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!61 = !DIEnumerator(name: "c_quoting_style", value: 5)
!62 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!63 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!64 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!65 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!66 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !54, line: 242, size: 32, elements: !68)
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!70 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!71 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !73, line: 46, size: 32, elements: !74)
!73 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!74 = !{!75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86}
!75 = !DIEnumerator(name: "_ISupper", value: 256)
!76 = !DIEnumerator(name: "_ISlower", value: 512)
!77 = !DIEnumerator(name: "_ISalpha", value: 1024)
!78 = !DIEnumerator(name: "_ISdigit", value: 2048)
!79 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!80 = !DIEnumerator(name: "_ISspace", value: 8192)
!81 = !DIEnumerator(name: "_ISprint", value: 16384)
!82 = !DIEnumerator(name: "_ISgraph", value: 32768)
!83 = !DIEnumerator(name: "_ISblank", value: 1)
!84 = !DIEnumerator(name: "_IScntrl", value: 2)
!85 = !DIEnumerator(name: "_ISpunct", value: 4)
!86 = !DIEnumerator(name: "_ISalnum", value: 8)
!87 = !{!20, !88, !89, !45}
!88 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !90, line: 62, baseType: !91)
!90 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!91 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!92 = !{!48, !93, !100, !113, !115, !120, !127, !129}
!93 = !DIGlobalVariableExpression(var: !94)
!94 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !50, file: !95, line: 93, type: !96, isLocal: false, isDefinition: true)
!95 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 320, elements: !98)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!98 = !{!99}
!99 = !DISubrange(count: 10)
!100 = !DIGlobalVariableExpression(var: !101)
!101 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !50, file: !95, line: 1043, type: !102, isLocal: false, isDefinition: true)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !95, line: 57, size: 448, elements: !103)
!103 = !{!104, !105, !106, !111, !112}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !102, file: !95, line: 60, baseType: !53, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !102, file: !95, line: 63, baseType: !20, size: 32, offset: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !102, file: !95, line: 67, baseType: !107, size: 256, offset: 64)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 256, elements: !109)
!108 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!109 = !{!110}
!110 = !DISubrange(count: 8)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !102, file: !95, line: 70, baseType: !10, size: 64, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !102, file: !95, line: 73, baseType: !10, size: 64, offset: 384)
!113 = !DIGlobalVariableExpression(var: !114)
!114 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !50, file: !95, line: 108, type: !102, isLocal: true, isDefinition: true)
!115 = !DIGlobalVariableExpression(var: !116)
!116 = distinct !DIGlobalVariable(name: "slot0", scope: !50, file: !95, line: 834, type: !117, isLocal: true, isDefinition: true)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 2048, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 256)
!120 = !DIGlobalVariableExpression(var: !121)
!121 = distinct !DIGlobalVariable(name: "slotvec", scope: !50, file: !95, line: 837, type: !122, isLocal: true, isDefinition: true)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !95, line: 826, size: 128, elements: !124)
!124 = !{!125, !126}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !123, file: !95, line: 828, baseType: !89, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !123, file: !95, line: 829, baseType: !45, size: 64, offset: 64)
!127 = !DIGlobalVariableExpression(var: !128)
!128 = distinct !DIGlobalVariable(name: "nslots", scope: !50, file: !95, line: 835, type: !20, isLocal: true, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130)
!130 = distinct !DIGlobalVariable(name: "slotvec0", scope: !50, file: !95, line: 836, type: !123, isLocal: true, isDefinition: true)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 704, elements: !133)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!133 = !{!134}
!134 = !DISubrange(count: 11)
!135 = !DIGlobalVariableExpression(var: !136)
!136 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !137, file: !140, line: 26, type: !141, isLocal: false, isDefinition: true)
!137 = distinct !DICompileUnit(language: DW_LANG_C99, file: !138, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !139)
!138 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!139 = !{!135}
!140 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 376, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 47)
!144 = !DIGlobalVariableExpression(var: !145)
!145 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !146, file: !491, line: 120, type: !492, isLocal: true, isDefinition: true)
!146 = distinct !DICompileUnit(language: DW_LANG_C99, file: !147, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, retainedTypes: !487, globals: !490)
!147 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!148 = !{!149}
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !150, line: 41, size: 32, elements: !151)
!150 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486}
!152 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!153 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!154 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!155 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!156 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!157 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!158 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!159 = !DIEnumerator(name: "DAY_1", value: 131079)
!160 = !DIEnumerator(name: "DAY_2", value: 131080)
!161 = !DIEnumerator(name: "DAY_3", value: 131081)
!162 = !DIEnumerator(name: "DAY_4", value: 131082)
!163 = !DIEnumerator(name: "DAY_5", value: 131083)
!164 = !DIEnumerator(name: "DAY_6", value: 131084)
!165 = !DIEnumerator(name: "DAY_7", value: 131085)
!166 = !DIEnumerator(name: "ABMON_1", value: 131086)
!167 = !DIEnumerator(name: "ABMON_2", value: 131087)
!168 = !DIEnumerator(name: "ABMON_3", value: 131088)
!169 = !DIEnumerator(name: "ABMON_4", value: 131089)
!170 = !DIEnumerator(name: "ABMON_5", value: 131090)
!171 = !DIEnumerator(name: "ABMON_6", value: 131091)
!172 = !DIEnumerator(name: "ABMON_7", value: 131092)
!173 = !DIEnumerator(name: "ABMON_8", value: 131093)
!174 = !DIEnumerator(name: "ABMON_9", value: 131094)
!175 = !DIEnumerator(name: "ABMON_10", value: 131095)
!176 = !DIEnumerator(name: "ABMON_11", value: 131096)
!177 = !DIEnumerator(name: "ABMON_12", value: 131097)
!178 = !DIEnumerator(name: "MON_1", value: 131098)
!179 = !DIEnumerator(name: "MON_2", value: 131099)
!180 = !DIEnumerator(name: "MON_3", value: 131100)
!181 = !DIEnumerator(name: "MON_4", value: 131101)
!182 = !DIEnumerator(name: "MON_5", value: 131102)
!183 = !DIEnumerator(name: "MON_6", value: 131103)
!184 = !DIEnumerator(name: "MON_7", value: 131104)
!185 = !DIEnumerator(name: "MON_8", value: 131105)
!186 = !DIEnumerator(name: "MON_9", value: 131106)
!187 = !DIEnumerator(name: "MON_10", value: 131107)
!188 = !DIEnumerator(name: "MON_11", value: 131108)
!189 = !DIEnumerator(name: "MON_12", value: 131109)
!190 = !DIEnumerator(name: "AM_STR", value: 131110)
!191 = !DIEnumerator(name: "PM_STR", value: 131111)
!192 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!193 = !DIEnumerator(name: "D_FMT", value: 131113)
!194 = !DIEnumerator(name: "T_FMT", value: 131114)
!195 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!196 = !DIEnumerator(name: "ERA", value: 131116)
!197 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!198 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!199 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!200 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!201 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!202 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!203 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!204 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!205 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!206 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!207 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!208 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!209 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!210 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!211 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!212 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!213 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!214 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!215 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!216 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!217 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!218 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!219 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!220 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!221 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!222 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!223 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!224 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!225 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!226 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!227 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!228 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!229 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!230 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!231 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!232 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!233 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!234 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!235 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!236 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!237 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!238 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!239 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!240 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!241 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!242 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!243 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!244 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!245 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!246 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!247 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!248 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!249 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!250 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!251 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!252 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!253 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!254 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!255 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!256 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!257 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!258 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!259 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!260 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!261 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!262 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!263 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!264 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!265 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!266 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!267 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!268 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!269 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!270 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!271 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!272 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!273 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!274 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!275 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!276 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!277 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!278 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!279 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!280 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!281 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!282 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!283 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!284 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!285 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!286 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!287 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!288 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!289 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!290 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!291 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!292 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!293 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!294 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!295 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!296 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!297 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!298 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!299 = !DIEnumerator(name: "CODESET", value: 14)
!300 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!301 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!302 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!303 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!304 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!305 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!306 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!307 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!308 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!309 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!310 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!311 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!312 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!313 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!314 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!315 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!316 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!317 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!318 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!319 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!320 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!321 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!322 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!323 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!324 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!325 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!326 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!327 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!328 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!329 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!330 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!331 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!332 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!333 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!334 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!335 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!336 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!337 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!338 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!339 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!340 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!341 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!342 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!343 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!344 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!345 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!346 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!347 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!348 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!349 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!350 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!351 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!352 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!353 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!354 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!355 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!356 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!357 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!358 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!359 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!360 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!361 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!362 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!363 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!364 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!365 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!366 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!367 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!368 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!369 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!370 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!371 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!372 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!373 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!374 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!375 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!376 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!377 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!378 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!379 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!380 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!381 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!382 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!383 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!384 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!385 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!386 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!387 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!388 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!389 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!390 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!391 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!392 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!393 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!394 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!395 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!396 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!397 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!398 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!399 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!400 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!401 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!402 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!403 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!404 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!405 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!406 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!407 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!408 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!409 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!410 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!411 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!412 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!413 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!414 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!415 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!416 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!417 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!418 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!419 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!420 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!421 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!422 = !DIEnumerator(name: "THOUSEP", value: 65537)
!423 = !DIEnumerator(name: "__GROUPING", value: 65538)
!424 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!425 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!426 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!427 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!428 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!429 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!430 = !DIEnumerator(name: "__YESSTR", value: 327682)
!431 = !DIEnumerator(name: "__NOSTR", value: 327683)
!432 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!433 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!434 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!435 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!436 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!437 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!438 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!439 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!440 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!441 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!442 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!443 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!444 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!445 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!446 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!447 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!448 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!449 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!450 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!451 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!452 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!453 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!454 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!455 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!456 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!457 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!458 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!459 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!460 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!461 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!462 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!463 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!464 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!465 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!466 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!467 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!468 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!469 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!470 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!471 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!472 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!473 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!474 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!475 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!476 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!477 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!478 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!479 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!480 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!481 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!482 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!483 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!484 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!485 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!486 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!487 = !{!44, !45, !488}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!490 = !{!144}
!491 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!492 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !10)
!493 = distinct !DICompileUnit(language: DW_LANG_C99, file: !494, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !495, retainedTypes: !504, globals: !527)
!494 = !DIFile(filename: "src/getlimits.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!495 = !{!496}
!496 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !497, line: 52, size: 32, elements: !498)
!497 = !DIFile(filename: "./lib/ftoastr.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!498 = !{!499, !500, !501, !502, !503}
!499 = !DIEnumerator(name: "FTOASTR_LEFT_JUSTIFY", value: 1)
!500 = !DIEnumerator(name: "FTOASTR_ALWAYS_SIGNED", value: 2)
!501 = !DIEnumerator(name: "FTOASTR_SPACE_POSITIVE", value: 4)
!502 = !DIEnumerator(name: "FTOASTR_ZERO_PAD", value: 8)
!503 = !DIEnumerator(name: "FTOASTR_UPPER_E", value: 16)
!504 = !{!10, !44, !505, !509, !512, !515, !518, !521, !523, !525}
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !506, line: 112, baseType: !507)
!506 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !508, line: 62, baseType: !91)
!508 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !506, line: 111, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !508, line: 61, baseType: !511)
!511 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !513, line: 71, baseType: !514)
!513 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !508, line: 181, baseType: !511)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !516, line: 7, baseType: !517)
!516 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !508, line: 148, baseType: !511)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !519, line: 80, baseType: !520)
!519 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !508, line: 134, baseType: !108)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !519, line: 65, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !508, line: 135, baseType: !108)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !519, line: 98, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !508, line: 142, baseType: !20)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !513, line: 57, baseType: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !508, line: 140, baseType: !511)
!527 = !{!528}
!528 = !DIGlobalVariableExpression(var: !529)
!529 = distinct !DIGlobalVariable(name: "infomap", scope: !530, file: !531, line: 632, type: !545, isLocal: true, isDefinition: true)
!530 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !531, file: !531, line: 630, type: !532, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !493, variables: !534)
!531 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!532 = !DISubroutineType(types: !533)
!533 = !{null, !10}
!534 = !{!535, !536, !537, !544}
!535 = !DILocalVariable(name: "program", arg: 1, scope: !530, file: !531, line: 630, type: !10)
!536 = !DILocalVariable(name: "node", scope: !530, file: !531, line: 642, type: !10)
!537 = !DILocalVariable(name: "map_prog", scope: !530, file: !531, line: 643, type: !538)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !540)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !530, file: !531, line: 632, size: 128, elements: !541)
!541 = !{!542, !543}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !540, file: !531, line: 632, baseType: !10, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !540, file: !531, line: 632, baseType: !10, size: 64, offset: 64)
!544 = !DILocalVariable(name: "lc_messages", scope: !530, file: !531, line: 655, type: !10)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, size: 896, elements: !546)
!546 = !{!547}
!547 = !DISubrange(count: 7)
!548 = distinct !DICompileUnit(language: DW_LANG_C99, file: !549, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !495)
!549 = !DIFile(filename: "./lib/dtoastr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!550 = distinct !DICompileUnit(language: DW_LANG_C99, file: !551, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !495)
!551 = !DIFile(filename: "./lib/ftoastr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!552 = distinct !DICompileUnit(language: DW_LANG_C99, file: !553, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !495)
!553 = !DIFile(filename: "./lib/ldtoastr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!554 = distinct !DICompileUnit(language: DW_LANG_C99, file: !555, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !556, retainedTypes: !561)
!555 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!556 = !{!557}
!557 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !558, line: 41, size: 32, elements: !559)
!558 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!559 = !{!560}
!560 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!561 = !{!44}
!562 = distinct !DICompileUnit(language: DW_LANG_C99, file: !563, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !564, retainedTypes: !578)
!563 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!564 = !{!565}
!565 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !567, file: !566, line: 192, size: 32, elements: !576)
!566 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!567 = distinct !DISubprogram(name: "x2nrealloc", scope: !566, file: !566, line: 180, type: !568, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !562, variables: !571)
!568 = !DISubroutineType(types: !569)
!569 = !{!44, !44, !570, !89}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!571 = !{!572, !573, !574, !575}
!572 = !DILocalVariable(name: "p", arg: 1, scope: !567, file: !566, line: 180, type: !44)
!573 = !DILocalVariable(name: "pn", arg: 2, scope: !567, file: !566, line: 180, type: !570)
!574 = !DILocalVariable(name: "s", arg: 3, scope: !567, file: !566, line: 180, type: !89)
!575 = !DILocalVariable(name: "n", scope: !567, file: !566, line: 182, type: !89)
!576 = !{!577}
!577 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!578 = !{!89, !45, !44}
!579 = distinct !DICompileUnit(language: DW_LANG_C99, file: !580, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!580 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!581 = distinct !DICompileUnit(language: DW_LANG_C99, file: !582, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !561)
!582 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!583 = distinct !DICompileUnit(language: DW_LANG_C99, file: !584, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !585)
!584 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!585 = !{!89}
!586 = distinct !DICompileUnit(language: DW_LANG_C99, file: !587, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!587 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!588 = distinct !DICompileUnit(language: DW_LANG_C99, file: !589, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!589 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!590 = distinct !DICompileUnit(language: DW_LANG_C99, file: !591, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!591 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!592 = distinct !DICompileUnit(language: DW_LANG_C99, file: !593, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !561)
!593 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!594 = distinct !DICompileUnit(language: DW_LANG_C99, file: !595, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !561)
!595 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!596 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!597 = !{i32 2, !"Dwarf Version", i32 4}
!598 = !{i32 2, !"Debug Info Version", i32 3}
!599 = !{i32 1, !"wchar_size", i32 4}
!600 = !{i32 7, !"PIC Level", i32 2}
!601 = !{i32 7, !"PIE Level", i32 2}
!602 = distinct !DISubprogram(name: "usage", scope: !494, file: !494, line: 60, type: !603, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !493, variables: !605)
!603 = !DISubroutineType(types: !604)
!604 = !{null, !20}
!605 = !{!606}
!606 = !DILocalVariable(name: "status", arg: 1, scope: !602, file: !494, line: 60, type: !20)
!607 = !DIExpression()
!608 = !DILocation(line: 60, column: 12, scope: !602)
!609 = !DILocation(line: 62, column: 14, scope: !610)
!610 = distinct !DILexicalBlock(scope: !602, file: !494, line: 62, column: 7)
!611 = !DILocation(line: 62, column: 7, scope: !602)
!612 = !DILocation(line: 63, column: 5, scope: !613)
!613 = distinct !DILexicalBlock(scope: !610, file: !494, line: 63, column: 5)
!614 = !{!615, !615, i64 0}
!615 = !{!"any pointer", !616, i64 0}
!616 = !{!"omnipotent char", !617, i64 0}
!617 = !{!"Simple C/C++ TBAA"}
!618 = !DILocation(line: 66, column: 7, scope: !619)
!619 = distinct !DILexicalBlock(scope: !610, file: !494, line: 65, column: 5)
!620 = !DILocation(line: 70, column: 7, scope: !619)
!621 = !DILocation(line: 74, column: 7, scope: !619)
!622 = !DILocation(line: 75, column: 7, scope: !619)
!623 = !DILocation(line: 642, column: 15, scope: !530, inlinedAt: !624)
!624 = distinct !DILocation(line: 76, column: 7, scope: !619)
!625 = !DILocation(line: 651, column: 3, scope: !530, inlinedAt: !624)
!626 = !DILocation(line: 655, column: 29, scope: !530, inlinedAt: !624)
!627 = !DILocation(line: 655, column: 15, scope: !530, inlinedAt: !624)
!628 = !DILocation(line: 656, column: 7, scope: !629, inlinedAt: !624)
!629 = distinct !DILexicalBlock(scope: !530, file: !531, line: 656, column: 7)
!630 = !DILocation(line: 656, column: 19, scope: !629, inlinedAt: !624)
!631 = !DILocation(line: 656, column: 22, scope: !629, inlinedAt: !624)
!632 = !DILocation(line: 656, column: 7, scope: !530, inlinedAt: !624)
!633 = !DILocation(line: 662, column: 7, scope: !634, inlinedAt: !624)
!634 = distinct !DILexicalBlock(scope: !629, file: !531, line: 657, column: 5)
!635 = !DILocation(line: 664, column: 5, scope: !634, inlinedAt: !624)
!636 = !DILocation(line: 665, column: 3, scope: !530, inlinedAt: !624)
!637 = !DILocation(line: 667, column: 3, scope: !530, inlinedAt: !624)
!638 = !DILocation(line: 78, column: 3, scope: !602)
!639 = distinct !DISubprogram(name: "main", scope: !494, file: !494, line: 115, type: !640, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !493, variables: !643)
!640 = !DISubroutineType(types: !641)
!641 = !{!20, !20, !642}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!643 = !{!644, !645, !646}
!644 = !DILocalVariable(name: "argc", arg: 1, scope: !639, file: !494, line: 115, type: !20)
!645 = !DILocalVariable(name: "argv", arg: 2, scope: !639, file: !494, line: 115, type: !642)
!646 = !DILocalVariable(name: "limit", scope: !639, file: !494, line: 117, type: !647)
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 176, elements: !648)
!648 = !{!649}
!649 = !DISubrange(count: 22)
!650 = !DILocalVariable(name: "buf", scope: !651, file: !494, line: 111, type: !657)
!651 = distinct !DISubprogram(name: "print_DBL", scope: !494, file: !494, line: 111, type: !652, isLocal: true, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, unit: !493, variables: !655)
!652 = !DISubroutineType(types: !653)
!653 = !{null, !654}
!654 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!655 = !{!656, !650}
!656 = !DILocalVariable(name: "x", arg: 1, scope: !651, file: !494, line: 111, type: !654)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 320, elements: !658)
!658 = !{!659}
!659 = !DISubrange(count: 40)
!660 = !DILocation(line: 111, column: 1, scope: !651, inlinedAt: !661)
!661 = distinct !DILocation(line: 168, column: 3, scope: !639)
!662 = !DILocation(line: 111, column: 1, scope: !651, inlinedAt: !663)
!663 = distinct !DILocation(line: 168, column: 3, scope: !639)
!664 = !DILocalVariable(name: "buf", scope: !665, file: !494, line: 110, type: !671)
!665 = distinct !DISubprogram(name: "print_FLT", scope: !494, file: !494, line: 110, type: !666, isLocal: true, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: true, unit: !493, variables: !669)
!666 = !DISubroutineType(types: !667)
!667 = !{null, !668}
!668 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!669 = !{!670, !664}
!670 = !DILocalVariable(name: "x", arg: 1, scope: !665, file: !494, line: 110, type: !668)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 248, elements: !672)
!672 = !{!673}
!673 = !DISubrange(count: 31)
!674 = !DILocation(line: 110, column: 1, scope: !665, inlinedAt: !675)
!675 = distinct !DILocation(line: 167, column: 3, scope: !639)
!676 = !DILocation(line: 110, column: 1, scope: !665, inlinedAt: !677)
!677 = distinct !DILocation(line: 167, column: 3, scope: !639)
!678 = !DILocalVariable(name: "buf", scope: !679, file: !494, line: 112, type: !685)
!679 = distinct !DISubprogram(name: "print_LDBL", scope: !494, file: !494, line: 112, type: !680, isLocal: true, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !493, variables: !683)
!680 = !DISubroutineType(types: !681)
!681 = !{null, !682}
!682 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!683 = !{!684, !678}
!684 = !DILocalVariable(name: "x", arg: 1, scope: !679, file: !494, line: 112, type: !682)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 360, elements: !686)
!686 = !{!687}
!687 = !DISubrange(count: 45)
!688 = !DILocation(line: 112, column: 1, scope: !679, inlinedAt: !689)
!689 = distinct !DILocation(line: 169, column: 3, scope: !639)
!690 = !DILocation(line: 112, column: 1, scope: !679, inlinedAt: !691)
!691 = distinct !DILocation(line: 169, column: 3, scope: !639)
!692 = !DILocation(line: 115, column: 11, scope: !639)
!693 = !DILocation(line: 115, column: 24, scope: !639)
!694 = !DILocation(line: 117, column: 3, scope: !639)
!695 = !DILocation(line: 117, column: 8, scope: !639)
!696 = !DILocation(line: 121, column: 21, scope: !639)
!697 = !DILocation(line: 121, column: 3, scope: !639)
!698 = !DILocation(line: 122, column: 3, scope: !639)
!699 = !DILocation(line: 123, column: 3, scope: !639)
!700 = !DILocation(line: 124, column: 3, scope: !639)
!701 = !DILocation(line: 127, column: 3, scope: !639)
!702 = !DILocation(line: 129, column: 3, scope: !639)
!703 = !DILocation(line: 148, column: 3, scope: !639)
!704 = !DILocalVariable(name: "buf", arg: 1, scope: !705, file: !494, line: 86, type: !45)
!705 = distinct !DISubprogram(name: "decimal_absval_add_one", scope: !494, file: !494, line: 86, type: !706, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !493, variables: !708)
!706 = !DISubroutineType(types: !707)
!707 = !{!10, !45}
!708 = !{!704, !709, !710, !711, !712}
!709 = !DILocalVariable(name: "negative", scope: !705, file: !494, line: 88, type: !9)
!710 = !DILocalVariable(name: "absnum", scope: !705, file: !494, line: 89, type: !45)
!711 = !DILocalVariable(name: "p", scope: !705, file: !494, line: 90, type: !45)
!712 = !DILocalVariable(name: "result", scope: !705, file: !494, line: 95, type: !45)
!713 = !DILocation(line: 86, column: 31, scope: !705, inlinedAt: !714)
!714 = distinct !DILocation(line: 148, column: 3, scope: !639)
!715 = !DILocation(line: 88, column: 20, scope: !705, inlinedAt: !714)
!716 = !{!616, !616, i64 0}
!717 = !DILocation(line: 88, column: 27, scope: !705, inlinedAt: !714)
!718 = !DILocation(line: 89, column: 26, scope: !705, inlinedAt: !714)
!719 = !DILocation(line: 89, column: 9, scope: !705, inlinedAt: !714)
!720 = !DILocation(line: 90, column: 22, scope: !705, inlinedAt: !714)
!721 = !DILocation(line: 90, column: 20, scope: !705, inlinedAt: !714)
!722 = !DILocation(line: 90, column: 9, scope: !705, inlinedAt: !714)
!723 = !DILocation(line: 91, column: 3, scope: !705, inlinedAt: !714)
!724 = !DILocation(line: 92, column: 3, scope: !705, inlinedAt: !714)
!725 = !DILocation(line: 92, column: 11, scope: !705, inlinedAt: !714)
!726 = !DILocation(line: 92, column: 10, scope: !705, inlinedAt: !714)
!727 = !DILocation(line: 92, column: 15, scope: !705, inlinedAt: !714)
!728 = distinct !{!728, !729, !730}
!729 = !DILocation(line: 92, column: 3, scope: !705)
!730 = !DILocation(line: 93, column: 10, scope: !705)
!731 = !DILocation(line: 94, column: 3, scope: !705, inlinedAt: !714)
!732 = !DILocation(line: 95, column: 18, scope: !705, inlinedAt: !714)
!733 = !DILocation(line: 95, column: 9, scope: !705, inlinedAt: !714)
!734 = !DILocation(line: 96, column: 7, scope: !705, inlinedAt: !714)
!735 = !DILocation(line: 97, column: 6, scope: !736, inlinedAt: !714)
!736 = distinct !DILexicalBlock(scope: !705, file: !494, line: 96, column: 7)
!737 = !DILocation(line: 97, column: 15, scope: !736, inlinedAt: !714)
!738 = !DILocation(line: 97, column: 5, scope: !736, inlinedAt: !714)
!739 = !DILocation(line: 148, column: 3, scope: !740)
!740 = distinct !DILexicalBlock(scope: !741, file: !494, line: 148, column: 3)
!741 = distinct !DILexicalBlock(scope: !639, file: !494, line: 148, column: 3)
!742 = !DILocation(line: 86, column: 31, scope: !705, inlinedAt: !743)
!743 = distinct !DILocation(line: 148, column: 3, scope: !740)
!744 = !DILocation(line: 88, column: 20, scope: !705, inlinedAt: !743)
!745 = !DILocation(line: 88, column: 27, scope: !705, inlinedAt: !743)
!746 = !DILocation(line: 89, column: 26, scope: !705, inlinedAt: !743)
!747 = !DILocation(line: 89, column: 9, scope: !705, inlinedAt: !743)
!748 = !DILocation(line: 90, column: 22, scope: !705, inlinedAt: !743)
!749 = !DILocation(line: 90, column: 20, scope: !705, inlinedAt: !743)
!750 = !DILocation(line: 90, column: 9, scope: !705, inlinedAt: !743)
!751 = !DILocation(line: 91, column: 3, scope: !705, inlinedAt: !743)
!752 = !DILocation(line: 92, column: 3, scope: !705, inlinedAt: !743)
!753 = !DILocation(line: 92, column: 11, scope: !705, inlinedAt: !743)
!754 = !DILocation(line: 92, column: 10, scope: !705, inlinedAt: !743)
!755 = !DILocation(line: 92, column: 15, scope: !705, inlinedAt: !743)
!756 = !DILocation(line: 94, column: 3, scope: !705, inlinedAt: !743)
!757 = !DILocation(line: 95, column: 18, scope: !705, inlinedAt: !743)
!758 = !DILocation(line: 95, column: 9, scope: !705, inlinedAt: !743)
!759 = !DILocation(line: 96, column: 7, scope: !705, inlinedAt: !743)
!760 = !DILocation(line: 97, column: 6, scope: !736, inlinedAt: !743)
!761 = !DILocation(line: 97, column: 15, scope: !736, inlinedAt: !743)
!762 = !DILocation(line: 97, column: 5, scope: !736, inlinedAt: !743)
!763 = !DILocation(line: 149, column: 3, scope: !639)
!764 = !DILocation(line: 86, column: 31, scope: !705, inlinedAt: !765)
!765 = distinct !DILocation(line: 149, column: 3, scope: !639)
!766 = !DILocation(line: 88, column: 20, scope: !705, inlinedAt: !765)
!767 = !DILocation(line: 88, column: 27, scope: !705, inlinedAt: !765)
!768 = !DILocation(line: 89, column: 26, scope: !705, inlinedAt: !765)
!769 = !DILocation(line: 89, column: 9, scope: !705, inlinedAt: !765)
!770 = !DILocation(line: 90, column: 22, scope: !705, inlinedAt: !765)
!771 = !DILocation(line: 90, column: 20, scope: !705, inlinedAt: !765)
!772 = !DILocation(line: 90, column: 9, scope: !705, inlinedAt: !765)
!773 = !DILocation(line: 91, column: 3, scope: !705, inlinedAt: !765)
!774 = !DILocation(line: 92, column: 3, scope: !705, inlinedAt: !765)
!775 = !DILocation(line: 92, column: 11, scope: !705, inlinedAt: !765)
!776 = !DILocation(line: 92, column: 10, scope: !705, inlinedAt: !765)
!777 = !DILocation(line: 92, column: 15, scope: !705, inlinedAt: !765)
!778 = !DILocation(line: 94, column: 3, scope: !705, inlinedAt: !765)
!779 = !DILocation(line: 95, column: 18, scope: !705, inlinedAt: !765)
!780 = !DILocation(line: 95, column: 9, scope: !705, inlinedAt: !765)
!781 = !DILocation(line: 96, column: 7, scope: !705, inlinedAt: !765)
!782 = !DILocation(line: 97, column: 6, scope: !736, inlinedAt: !765)
!783 = !DILocation(line: 97, column: 15, scope: !736, inlinedAt: !765)
!784 = !DILocation(line: 97, column: 5, scope: !736, inlinedAt: !765)
!785 = !DILocation(line: 149, column: 3, scope: !786)
!786 = distinct !DILexicalBlock(scope: !787, file: !494, line: 149, column: 3)
!787 = distinct !DILexicalBlock(scope: !639, file: !494, line: 149, column: 3)
!788 = !DILocation(line: 86, column: 31, scope: !705, inlinedAt: !789)
!789 = distinct !DILocation(line: 149, column: 3, scope: !786)
!790 = !DILocation(line: 88, column: 20, scope: !705, inlinedAt: !789)
!791 = !DILocation(line: 88, column: 27, scope: !705, inlinedAt: !789)
!792 = !DILocation(line: 89, column: 26, scope: !705, inlinedAt: !789)
!793 = !DILocation(line: 89, column: 9, scope: !705, inlinedAt: !789)
!794 = !DILocation(line: 90, column: 22, scope: !705, inlinedAt: !789)
!795 = !DILocation(line: 90, column: 20, scope: !705, inlinedAt: !789)
!796 = !DILocation(line: 90, column: 9, scope: !705, inlinedAt: !789)
!797 = !DILocation(line: 91, column: 3, scope: !705, inlinedAt: !789)
!798 = !DILocation(line: 92, column: 3, scope: !705, inlinedAt: !789)
!799 = !DILocation(line: 92, column: 11, scope: !705, inlinedAt: !789)
!800 = !DILocation(line: 92, column: 10, scope: !705, inlinedAt: !789)
!801 = !DILocation(line: 92, column: 15, scope: !705, inlinedAt: !789)
!802 = !DILocation(line: 94, column: 3, scope: !705, inlinedAt: !789)
!803 = !DILocation(line: 95, column: 18, scope: !705, inlinedAt: !789)
!804 = !DILocation(line: 95, column: 9, scope: !705, inlinedAt: !789)
!805 = !DILocation(line: 96, column: 7, scope: !705, inlinedAt: !789)
!806 = !DILocation(line: 97, column: 6, scope: !736, inlinedAt: !789)
!807 = !DILocation(line: 97, column: 15, scope: !736, inlinedAt: !789)
!808 = !DILocation(line: 97, column: 5, scope: !736, inlinedAt: !789)
!809 = !DILocation(line: 150, column: 3, scope: !639)
!810 = !DILocation(line: 86, column: 31, scope: !705, inlinedAt: !811)
!811 = distinct !DILocation(line: 150, column: 3, scope: !639)
!812 = !DILocation(line: 88, column: 20, scope: !705, inlinedAt: !811)
!813 = !DILocation(line: 88, column: 27, scope: !705, inlinedAt: !811)
!814 = !DILocation(line: 89, column: 26, scope: !705, inlinedAt: !811)
!815 = !DILocation(line: 89, column: 9, scope: !705, inlinedAt: !811)
!816 = !DILocation(line: 90, column: 22, scope: !705, inlinedAt: !811)
!817 = !DILocation(line: 90, column: 20, scope: !705, inlinedAt: !811)
!818 = !DILocation(line: 90, column: 9, scope: !705, inlinedAt: !811)
!819 = !DILocation(line: 91, column: 3, scope: !705, inlinedAt: !811)
!820 = !DILocation(line: 92, column: 3, scope: !705, inlinedAt: !811)
!821 = !DILocation(line: 92, column: 11, scope: !705, inlinedAt: !811)
!822 = !DILocation(line: 92, column: 10, scope: !705, inlinedAt: !811)
!823 = !DILocation(line: 92, column: 15, scope: !705, inlinedAt: !811)
!824 = !DILocation(line: 94, column: 3, scope: !705, inlinedAt: !811)
!825 = !DILocation(line: 95, column: 18, scope: !705, inlinedAt: !811)
!826 = !DILocation(line: 95, column: 9, scope: !705, inlinedAt: !811)
!827 = !DILocation(line: 96, column: 7, scope: !705, inlinedAt: !811)
!828 = !DILocation(line: 97, column: 6, scope: !736, inlinedAt: !811)
!829 = !DILocation(line: 97, column: 15, scope: !736, inlinedAt: !811)
!830 = !DILocation(line: 97, column: 5, scope: !736, inlinedAt: !811)
!831 = !DILocation(line: 151, column: 3, scope: !639)
!832 = !DILocation(line: 86, column: 31, scope: !705, inlinedAt: !833)
!833 = distinct !DILocation(line: 151, column: 3, scope: !639)
!834 = !DILocation(line: 88, column: 20, scope: !705, inlinedAt: !833)
!835 = !DILocation(line: 88, column: 27, scope: !705, inlinedAt: !833)
!836 = !DILocation(line: 89, column: 26, scope: !705, inlinedAt: !833)
!837 = !DILocation(line: 89, column: 9, scope: !705, inlinedAt: !833)
!838 = !DILocation(line: 90, column: 22, scope: !705, inlinedAt: !833)
!839 = !DILocation(line: 90, column: 20, scope: !705, inlinedAt: !833)
!840 = !DILocation(line: 90, column: 9, scope: !705, inlinedAt: !833)
!841 = !DILocation(line: 91, column: 3, scope: !705, inlinedAt: !833)
!842 = !DILocation(line: 92, column: 3, scope: !705, inlinedAt: !833)
!843 = !DILocation(line: 92, column: 11, scope: !705, inlinedAt: !833)
!844 = !DILocation(line: 92, column: 10, scope: !705, inlinedAt: !833)
!845 = !DILocation(line: 92, column: 15, scope: !705, inlinedAt: !833)
!846 = !DILocation(line: 94, column: 3, scope: !705, inlinedAt: !833)
!847 = !DILocation(line: 95, column: 18, scope: !705, inlinedAt: !833)
!848 = !DILocation(line: 95, column: 9, scope: !705, inlinedAt: !833)
!849 = !DILocation(line: 96, column: 7, scope: !705, inlinedAt: !833)
!850 = !DILocation(line: 97, column: 6, scope: !736, inlinedAt: !833)
!851 = !DILocation(line: 97, column: 15, scope: !736, inlinedAt: !833)
!852 = !DILocation(line: 97, column: 5, scope: !736, inlinedAt: !833)
!853 = !DILocation(line: 151, column: 3, scope: !854)
!854 = distinct !DILexicalBlock(scope: !855, file: !494, line: 151, column: 3)
!855 = distinct !DILexicalBlock(scope: !639, file: !494, line: 151, column: 3)
!856 = !DILocation(line: 86, column: 31, scope: !705, inlinedAt: !857)
!857 = distinct !DILocation(line: 151, column: 3, scope: !854)
!858 = !DILocation(line: 88, column: 20, scope: !705, inlinedAt: !857)
!859 = !DILocation(line: 88, column: 27, scope: !705, inlinedAt: !857)
!860 = !DILocation(line: 89, column: 26, scope: !705, inlinedAt: !857)
!861 = !DILocation(line: 89, column: 9, scope: !705, inlinedAt: !857)
!862 = !DILocation(line: 90, column: 22, scope: !705, inlinedAt: !857)
!863 = !DILocation(line: 90, column: 20, scope: !705, inlinedAt: !857)
!864 = !DILocation(line: 90, column: 9, scope: !705, inlinedAt: !857)
!865 = !DILocation(line: 91, column: 3, scope: !705, inlinedAt: !857)
!866 = !DILocation(line: 92, column: 3, scope: !705, inlinedAt: !857)
!867 = !DILocation(line: 92, column: 11, scope: !705, inlinedAt: !857)
!868 = !DILocation(line: 92, column: 10, scope: !705, inlinedAt: !857)
!869 = !DILocation(line: 92, column: 15, scope: !705, inlinedAt: !857)
!870 = !DILocation(line: 94, column: 3, scope: !705, inlinedAt: !857)
!871 = !DILocation(line: 95, column: 18, scope: !705, inlinedAt: !857)
!872 = !DILocation(line: 95, column: 9, scope: !705, inlinedAt: !857)
!873 = !DILocation(line: 96, column: 7, scope: !705, inlinedAt: !857)
!874 = !DILocation(line: 97, column: 6, scope: !736, inlinedAt: !857)
!875 = !DILocation(line: 97, column: 15, scope: !736, inlinedAt: !857)
!876 = !DILocation(line: 97, column: 5, scope: !736, inlinedAt: !857)
!877 = !DILocation(line: 152, column: 3, scope: !639)
!878 = !DILocation(line: 86, column: 31, scope: !705, inlinedAt: !879)
!879 = distinct !DILocation(line: 152, column: 3, scope: !639)
!880 = !DILocation(line: 88, column: 20, scope: !705, inlinedAt: !879)
!881 = !DILocation(line: 88, column: 27, scope: !705, inlinedAt: !879)
!882 = !DILocation(line: 89, column: 26, scope: !705, inlinedAt: !879)
!883 = !DILocation(line: 89, column: 9, scope: !705, inlinedAt: !879)
!884 = !DILocation(line: 90, column: 22, scope: !705, inlinedAt: !879)
!885 = !DILocation(line: 90, column: 20, scope: !705, inlinedAt: !879)
!886 = !DILocation(line: 90, column: 9, scope: !705, inlinedAt: !879)
!887 = !DILocation(line: 91, column: 3, scope: !705, inlinedAt: !879)
!888 = !DILocation(line: 92, column: 3, scope: !705, inlinedAt: !879)
!889 = !DILocation(line: 92, column: 11, scope: !705, inlinedAt: !879)
!890 = !DILocation(line: 92, column: 10, scope: !705, inlinedAt: !879)
!891 = !DILocation(line: 92, column: 15, scope: !705, inlinedAt: !879)
!892 = !DILocation(line: 94, column: 3, scope: !705, inlinedAt: !879)
!893 = !DILocation(line: 95, column: 18, scope: !705, inlinedAt: !879)
!894 = !DILocation(line: 95, column: 9, scope: !705, inlinedAt: !879)
!895 = !DILocation(line: 96, column: 7, scope: !705, inlinedAt: !879)
!896 = !DILocation(line: 97, column: 6, scope: !736, inlinedAt: !879)
!897 = !DILocation(line: 97, column: 15, scope: !736, inlinedAt: !879)
!898 = !DILocation(line: 97, column: 5, scope: !736, inlinedAt: !879)
!899 = !DILocation(line: 152, column: 3, scope: !900)
!900 = distinct !DILexicalBlock(scope: !901, file: !494, line: 152, column: 3)
!901 = distinct !DILexicalBlock(scope: !639, file: !494, line: 152, column: 3)
!902 = !DILocation(line: 86, column: 31, scope: !705, inlinedAt: !903)
!903 = distinct !DILocation(line: 152, column: 3, scope: !900)
!904 = !DILocation(line: 88, column: 20, scope: !705, inlinedAt: !903)
!905 = !DILocation(line: 88, column: 27, scope: !705, inlinedAt: !903)
!906 = !DILocation(line: 89, column: 26, scope: !705, inlinedAt: !903)
!907 = !DILocation(line: 89, column: 9, scope: !705, inlinedAt: !903)
!908 = !DILocation(line: 90, column: 22, scope: !705, inlinedAt: !903)
!909 = !DILocation(line: 90, column: 20, scope: !705, inlinedAt: !903)
!910 = !DILocation(line: 90, column: 9, scope: !705, inlinedAt: !903)
!911 = !DILocation(line: 91, column: 3, scope: !705, inlinedAt: !903)
!912 = !DILocation(line: 92, column: 3, scope: !705, inlinedAt: !903)
!913 = !DILocation(line: 92, column: 11, scope: !705, inlinedAt: !903)
!914 = !DILocation(line: 92, column: 10, scope: !705, inlinedAt: !903)
!915 = !DILocation(line: 92, column: 15, scope: !705, inlinedAt: !903)
!916 = !DILocation(line: 94, column: 3, scope: !705, inlinedAt: !903)
!917 = !DILocation(line: 95, column: 18, scope: !705, inlinedAt: !903)
!918 = !DILocation(line: 95, column: 9, scope: !705, inlinedAt: !903)
!919 = !DILocation(line: 96, column: 7, scope: !705, inlinedAt: !903)
!920 = !DILocation(line: 97, column: 6, scope: !736, inlinedAt: !903)
!921 = !DILocation(line: 97, column: 15, scope: !736, inlinedAt: !903)
!922 = !DILocation(line: 97, column: 5, scope: !736, inlinedAt: !903)
!923 = !DILocation(line: 153, column: 3, scope: !639)
!924 = !DILocation(line: 86, column: 31, scope: !705, inlinedAt: !925)
!925 = distinct !DILocation(line: 153, column: 3, scope: !639)
!926 = !DILocation(line: 88, column: 20, scope: !705, inlinedAt: !925)
!927 = !DILocation(line: 88, column: 27, scope: !705, inlinedAt: !925)
!928 = !DILocation(line: 89, column: 26, scope: !705, inlinedAt: !925)
!929 = !DILocation(line: 89, column: 9, scope: !705, inlinedAt: !925)
!930 = !DILocation(line: 90, column: 22, scope: !705, inlinedAt: !925)
!931 = !DILocation(line: 90, column: 20, scope: !705, inlinedAt: !925)
!932 = !DILocation(line: 90, column: 9, scope: !705, inlinedAt: !925)
!933 = !DILocation(line: 91, column: 3, scope: !705, inlinedAt: !925)
!934 = !DILocation(line: 92, column: 3, scope: !705, inlinedAt: !925)
!935 = !DILocation(line: 92, column: 11, scope: !705, inlinedAt: !925)
!936 = !DILocation(line: 92, column: 10, scope: !705, inlinedAt: !925)
!937 = !DILocation(line: 92, column: 15, scope: !705, inlinedAt: !925)
!938 = !DILocation(line: 94, column: 3, scope: !705, inlinedAt: !925)
!939 = !DILocation(line: 95, column: 18, scope: !705, inlinedAt: !925)
!940 = !DILocation(line: 95, column: 9, scope: !705, inlinedAt: !925)
!941 = !DILocation(line: 96, column: 7, scope: !705, inlinedAt: !925)
!942 = !DILocation(line: 97, column: 6, scope: !736, inlinedAt: !925)
!943 = !DILocation(line: 97, column: 15, scope: !736, inlinedAt: !925)
!944 = !DILocation(line: 97, column: 5, scope: !736, inlinedAt: !925)
!945 = !DILocation(line: 154, column: 3, scope: !639)
!946 = !DILocation(line: 86, column: 31, scope: !705, inlinedAt: !947)
!947 = distinct !DILocation(line: 154, column: 3, scope: !639)
!948 = !DILocation(line: 88, column: 20, scope: !705, inlinedAt: !947)
!949 = !DILocation(line: 88, column: 27, scope: !705, inlinedAt: !947)
!950 = !DILocation(line: 89, column: 26, scope: !705, inlinedAt: !947)
!951 = !DILocation(line: 89, column: 9, scope: !705, inlinedAt: !947)
!952 = !DILocation(line: 90, column: 22, scope: !705, inlinedAt: !947)
!953 = !DILocation(line: 90, column: 20, scope: !705, inlinedAt: !947)
!954 = !DILocation(line: 90, column: 9, scope: !705, inlinedAt: !947)
!955 = !DILocation(line: 91, column: 3, scope: !705, inlinedAt: !947)
!956 = !DILocation(line: 92, column: 3, scope: !705, inlinedAt: !947)
!957 = !DILocation(line: 92, column: 11, scope: !705, inlinedAt: !947)
!958 = !DILocation(line: 92, column: 10, scope: !705, inlinedAt: !947)
!959 = !DILocation(line: 92, column: 15, scope: !705, inlinedAt: !947)
!960 = !DILocation(line: 94, column: 3, scope: !705, inlinedAt: !947)
!961 = !DILocation(line: 95, column: 18, scope: !705, inlinedAt: !947)
!962 = !DILocation(line: 95, column: 9, scope: !705, inlinedAt: !947)
!963 = !DILocation(line: 96, column: 7, scope: !705, inlinedAt: !947)
!964 = !DILocation(line: 97, column: 6, scope: !736, inlinedAt: !947)
!965 = !DILocation(line: 97, column: 15, scope: !736, inlinedAt: !947)
!966 = !DILocation(line: 97, column: 5, scope: !736, inlinedAt: !947)
!967 = !DILocation(line: 154, column: 3, scope: !968)
!968 = distinct !DILexicalBlock(scope: !969, file: !494, line: 154, column: 3)
!969 = distinct !DILexicalBlock(scope: !639, file: !494, line: 154, column: 3)
!970 = !DILocation(line: 86, column: 31, scope: !705, inlinedAt: !971)
!971 = distinct !DILocation(line: 154, column: 3, scope: !968)
!972 = !DILocation(line: 88, column: 20, scope: !705, inlinedAt: !971)
!973 = !DILocation(line: 88, column: 27, scope: !705, inlinedAt: !971)
!974 = !DILocation(line: 89, column: 26, scope: !705, inlinedAt: !971)
!975 = !DILocation(line: 89, column: 9, scope: !705, inlinedAt: !971)
!976 = !DILocation(line: 90, column: 22, scope: !705, inlinedAt: !971)
!977 = !DILocation(line: 90, column: 20, scope: !705, inlinedAt: !971)
!978 = !DILocation(line: 90, column: 9, scope: !705, inlinedAt: !971)
!979 = !DILocation(line: 91, column: 3, scope: !705, inlinedAt: !971)
!980 = !DILocation(line: 92, column: 3, scope: !705, inlinedAt: !971)
!981 = !DILocation(line: 92, column: 11, scope: !705, inlinedAt: !971)
!982 = !DILocation(line: 92, column: 10, scope: !705, inlinedAt: !971)
!983 = !DILocation(line: 92, column: 15, scope: !705, inlinedAt: !971)
!984 = !DILocation(line: 94, column: 3, scope: !705, inlinedAt: !971)
!985 = !DILocation(line: 95, column: 18, scope: !705, inlinedAt: !971)
!986 = !DILocation(line: 95, column: 9, scope: !705, inlinedAt: !971)
!987 = !DILocation(line: 96, column: 7, scope: !705, inlinedAt: !971)
!988 = !DILocation(line: 97, column: 6, scope: !736, inlinedAt: !971)
!989 = !DILocation(line: 97, column: 15, scope: !736, inlinedAt: !971)
!990 = !DILocation(line: 97, column: 5, scope: !736, inlinedAt: !971)
!991 = !DILocation(line: 155, column: 3, scope: !639)
!992 = !DILocation(line: 86, column: 31, scope: !705, inlinedAt: !993)
!993 = distinct !DILocation(line: 155, column: 3, scope: !639)
!994 = !DILocation(line: 88, column: 20, scope: !705, inlinedAt: !993)
!995 = !DILocation(line: 88, column: 27, scope: !705, inlinedAt: !993)
!996 = !DILocation(line: 89, column: 26, scope: !705, inlinedAt: !993)
!997 = !DILocation(line: 89, column: 9, scope: !705, inlinedAt: !993)
!998 = !DILocation(line: 90, column: 22, scope: !705, inlinedAt: !993)
!999 = !DILocation(line: 90, column: 20, scope: !705, inlinedAt: !993)
!1000 = !DILocation(line: 90, column: 9, scope: !705, inlinedAt: !993)
!1001 = !DILocation(line: 91, column: 3, scope: !705, inlinedAt: !993)
!1002 = !DILocation(line: 92, column: 3, scope: !705, inlinedAt: !993)
!1003 = !DILocation(line: 92, column: 11, scope: !705, inlinedAt: !993)
!1004 = !DILocation(line: 92, column: 10, scope: !705, inlinedAt: !993)
!1005 = !DILocation(line: 92, column: 15, scope: !705, inlinedAt: !993)
!1006 = !DILocation(line: 94, column: 3, scope: !705, inlinedAt: !993)
!1007 = !DILocation(line: 95, column: 18, scope: !705, inlinedAt: !993)
!1008 = !DILocation(line: 95, column: 9, scope: !705, inlinedAt: !993)
!1009 = !DILocation(line: 96, column: 7, scope: !705, inlinedAt: !993)
!1010 = !DILocation(line: 97, column: 6, scope: !736, inlinedAt: !993)
!1011 = !DILocation(line: 97, column: 15, scope: !736, inlinedAt: !993)
!1012 = !DILocation(line: 97, column: 5, scope: !736, inlinedAt: !993)
!1013 = !DILocation(line: 156, column: 3, scope: !639)
!1014 = !DILocation(line: 86, column: 31, scope: !705, inlinedAt: !1015)
!1015 = distinct !DILocation(line: 156, column: 3, scope: !639)
!1016 = !DILocation(line: 88, column: 20, scope: !705, inlinedAt: !1015)
!1017 = !DILocation(line: 88, column: 27, scope: !705, inlinedAt: !1015)
!1018 = !DILocation(line: 89, column: 26, scope: !705, inlinedAt: !1015)
!1019 = !DILocation(line: 89, column: 9, scope: !705, inlinedAt: !1015)
!1020 = !DILocation(line: 90, column: 22, scope: !705, inlinedAt: !1015)
!1021 = !DILocation(line: 90, column: 20, scope: !705, inlinedAt: !1015)
!1022 = !DILocation(line: 90, column: 9, scope: !705, inlinedAt: !1015)
!1023 = !DILocation(line: 91, column: 3, scope: !705, inlinedAt: !1015)
!1024 = !DILocation(line: 92, column: 3, scope: !705, inlinedAt: !1015)
!1025 = !DILocation(line: 92, column: 11, scope: !705, inlinedAt: !1015)
!1026 = !DILocation(line: 92, column: 10, scope: !705, inlinedAt: !1015)
!1027 = !DILocation(line: 92, column: 15, scope: !705, inlinedAt: !1015)
!1028 = !DILocation(line: 94, column: 3, scope: !705, inlinedAt: !1015)
!1029 = !DILocation(line: 95, column: 18, scope: !705, inlinedAt: !1015)
!1030 = !DILocation(line: 95, column: 9, scope: !705, inlinedAt: !1015)
!1031 = !DILocation(line: 96, column: 7, scope: !705, inlinedAt: !1015)
!1032 = !DILocation(line: 97, column: 6, scope: !736, inlinedAt: !1015)
!1033 = !DILocation(line: 97, column: 15, scope: !736, inlinedAt: !1015)
!1034 = !DILocation(line: 97, column: 5, scope: !736, inlinedAt: !1015)
!1035 = !DILocation(line: 157, column: 3, scope: !639)
!1036 = !DILocation(line: 86, column: 31, scope: !705, inlinedAt: !1037)
!1037 = distinct !DILocation(line: 157, column: 3, scope: !639)
!1038 = !DILocation(line: 88, column: 20, scope: !705, inlinedAt: !1037)
!1039 = !DILocation(line: 88, column: 27, scope: !705, inlinedAt: !1037)
!1040 = !DILocation(line: 89, column: 26, scope: !705, inlinedAt: !1037)
!1041 = !DILocation(line: 89, column: 9, scope: !705, inlinedAt: !1037)
!1042 = !DILocation(line: 90, column: 22, scope: !705, inlinedAt: !1037)
!1043 = !DILocation(line: 90, column: 20, scope: !705, inlinedAt: !1037)
!1044 = !DILocation(line: 90, column: 9, scope: !705, inlinedAt: !1037)
!1045 = !DILocation(line: 91, column: 3, scope: !705, inlinedAt: !1037)
!1046 = !DILocation(line: 92, column: 3, scope: !705, inlinedAt: !1037)
!1047 = !DILocation(line: 92, column: 11, scope: !705, inlinedAt: !1037)
!1048 = !DILocation(line: 92, column: 10, scope: !705, inlinedAt: !1037)
!1049 = !DILocation(line: 92, column: 15, scope: !705, inlinedAt: !1037)
!1050 = !DILocation(line: 94, column: 3, scope: !705, inlinedAt: !1037)
!1051 = !DILocation(line: 95, column: 18, scope: !705, inlinedAt: !1037)
!1052 = !DILocation(line: 95, column: 9, scope: !705, inlinedAt: !1037)
!1053 = !DILocation(line: 96, column: 7, scope: !705, inlinedAt: !1037)
!1054 = !DILocation(line: 97, column: 6, scope: !736, inlinedAt: !1037)
!1055 = !DILocation(line: 97, column: 15, scope: !736, inlinedAt: !1037)
!1056 = !DILocation(line: 97, column: 5, scope: !736, inlinedAt: !1037)
!1057 = !DILocation(line: 157, column: 3, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !494, line: 157, column: 3)
!1059 = distinct !DILexicalBlock(scope: !639, file: !494, line: 157, column: 3)
!1060 = !DILocation(line: 86, column: 31, scope: !705, inlinedAt: !1061)
!1061 = distinct !DILocation(line: 157, column: 3, scope: !1058)
!1062 = !DILocation(line: 88, column: 20, scope: !705, inlinedAt: !1061)
!1063 = !DILocation(line: 88, column: 27, scope: !705, inlinedAt: !1061)
!1064 = !DILocation(line: 89, column: 26, scope: !705, inlinedAt: !1061)
!1065 = !DILocation(line: 89, column: 9, scope: !705, inlinedAt: !1061)
!1066 = !DILocation(line: 90, column: 22, scope: !705, inlinedAt: !1061)
!1067 = !DILocation(line: 90, column: 20, scope: !705, inlinedAt: !1061)
!1068 = !DILocation(line: 90, column: 9, scope: !705, inlinedAt: !1061)
!1069 = !DILocation(line: 91, column: 3, scope: !705, inlinedAt: !1061)
!1070 = !DILocation(line: 92, column: 3, scope: !705, inlinedAt: !1061)
!1071 = !DILocation(line: 92, column: 11, scope: !705, inlinedAt: !1061)
!1072 = !DILocation(line: 92, column: 10, scope: !705, inlinedAt: !1061)
!1073 = !DILocation(line: 92, column: 15, scope: !705, inlinedAt: !1061)
!1074 = !DILocation(line: 94, column: 3, scope: !705, inlinedAt: !1061)
!1075 = !DILocation(line: 95, column: 18, scope: !705, inlinedAt: !1061)
!1076 = !DILocation(line: 95, column: 9, scope: !705, inlinedAt: !1061)
!1077 = !DILocation(line: 96, column: 7, scope: !705, inlinedAt: !1061)
!1078 = !DILocation(line: 97, column: 6, scope: !736, inlinedAt: !1061)
!1079 = !DILocation(line: 97, column: 15, scope: !736, inlinedAt: !1061)
!1080 = !DILocation(line: 97, column: 5, scope: !736, inlinedAt: !1061)
!1081 = !DILocation(line: 158, column: 3, scope: !639)
!1082 = !DILocation(line: 86, column: 31, scope: !705, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 158, column: 3, scope: !639)
!1084 = !DILocation(line: 88, column: 20, scope: !705, inlinedAt: !1083)
!1085 = !DILocation(line: 88, column: 27, scope: !705, inlinedAt: !1083)
!1086 = !DILocation(line: 89, column: 26, scope: !705, inlinedAt: !1083)
!1087 = !DILocation(line: 89, column: 9, scope: !705, inlinedAt: !1083)
!1088 = !DILocation(line: 90, column: 22, scope: !705, inlinedAt: !1083)
!1089 = !DILocation(line: 90, column: 20, scope: !705, inlinedAt: !1083)
!1090 = !DILocation(line: 90, column: 9, scope: !705, inlinedAt: !1083)
!1091 = !DILocation(line: 91, column: 3, scope: !705, inlinedAt: !1083)
!1092 = !DILocation(line: 92, column: 3, scope: !705, inlinedAt: !1083)
!1093 = !DILocation(line: 92, column: 11, scope: !705, inlinedAt: !1083)
!1094 = !DILocation(line: 92, column: 10, scope: !705, inlinedAt: !1083)
!1095 = !DILocation(line: 92, column: 15, scope: !705, inlinedAt: !1083)
!1096 = !DILocation(line: 94, column: 3, scope: !705, inlinedAt: !1083)
!1097 = !DILocation(line: 95, column: 18, scope: !705, inlinedAt: !1083)
!1098 = !DILocation(line: 95, column: 9, scope: !705, inlinedAt: !1083)
!1099 = !DILocation(line: 96, column: 7, scope: !705, inlinedAt: !1083)
!1100 = !DILocation(line: 97, column: 6, scope: !736, inlinedAt: !1083)
!1101 = !DILocation(line: 97, column: 15, scope: !736, inlinedAt: !1083)
!1102 = !DILocation(line: 97, column: 5, scope: !736, inlinedAt: !1083)
!1103 = !DILocation(line: 158, column: 3, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !494, line: 158, column: 3)
!1105 = distinct !DILexicalBlock(scope: !639, file: !494, line: 158, column: 3)
!1106 = !DILocation(line: 86, column: 31, scope: !705, inlinedAt: !1107)
!1107 = distinct !DILocation(line: 158, column: 3, scope: !1104)
!1108 = !DILocation(line: 88, column: 20, scope: !705, inlinedAt: !1107)
!1109 = !DILocation(line: 88, column: 27, scope: !705, inlinedAt: !1107)
!1110 = !DILocation(line: 89, column: 26, scope: !705, inlinedAt: !1107)
!1111 = !DILocation(line: 89, column: 9, scope: !705, inlinedAt: !1107)
!1112 = !DILocation(line: 90, column: 22, scope: !705, inlinedAt: !1107)
!1113 = !DILocation(line: 90, column: 20, scope: !705, inlinedAt: !1107)
!1114 = !DILocation(line: 90, column: 9, scope: !705, inlinedAt: !1107)
!1115 = !DILocation(line: 91, column: 3, scope: !705, inlinedAt: !1107)
!1116 = !DILocation(line: 92, column: 3, scope: !705, inlinedAt: !1107)
!1117 = !DILocation(line: 92, column: 11, scope: !705, inlinedAt: !1107)
!1118 = !DILocation(line: 92, column: 10, scope: !705, inlinedAt: !1107)
!1119 = !DILocation(line: 92, column: 15, scope: !705, inlinedAt: !1107)
!1120 = !DILocation(line: 94, column: 3, scope: !705, inlinedAt: !1107)
!1121 = !DILocation(line: 95, column: 18, scope: !705, inlinedAt: !1107)
!1122 = !DILocation(line: 95, column: 9, scope: !705, inlinedAt: !1107)
!1123 = !DILocation(line: 96, column: 7, scope: !705, inlinedAt: !1107)
!1124 = !DILocation(line: 97, column: 6, scope: !736, inlinedAt: !1107)
!1125 = !DILocation(line: 97, column: 15, scope: !736, inlinedAt: !1107)
!1126 = !DILocation(line: 97, column: 5, scope: !736, inlinedAt: !1107)
!1127 = !DILocation(line: 159, column: 3, scope: !639)
!1128 = !DILocation(line: 86, column: 31, scope: !705, inlinedAt: !1129)
!1129 = distinct !DILocation(line: 159, column: 3, scope: !639)
!1130 = !DILocation(line: 88, column: 20, scope: !705, inlinedAt: !1129)
!1131 = !DILocation(line: 88, column: 27, scope: !705, inlinedAt: !1129)
!1132 = !DILocation(line: 89, column: 26, scope: !705, inlinedAt: !1129)
!1133 = !DILocation(line: 89, column: 9, scope: !705, inlinedAt: !1129)
!1134 = !DILocation(line: 90, column: 22, scope: !705, inlinedAt: !1129)
!1135 = !DILocation(line: 90, column: 20, scope: !705, inlinedAt: !1129)
!1136 = !DILocation(line: 90, column: 9, scope: !705, inlinedAt: !1129)
!1137 = !DILocation(line: 91, column: 3, scope: !705, inlinedAt: !1129)
!1138 = !DILocation(line: 92, column: 3, scope: !705, inlinedAt: !1129)
!1139 = !DILocation(line: 92, column: 11, scope: !705, inlinedAt: !1129)
!1140 = !DILocation(line: 92, column: 10, scope: !705, inlinedAt: !1129)
!1141 = !DILocation(line: 92, column: 15, scope: !705, inlinedAt: !1129)
!1142 = !DILocation(line: 94, column: 3, scope: !705, inlinedAt: !1129)
!1143 = !DILocation(line: 95, column: 18, scope: !705, inlinedAt: !1129)
!1144 = !DILocation(line: 95, column: 9, scope: !705, inlinedAt: !1129)
!1145 = !DILocation(line: 96, column: 7, scope: !705, inlinedAt: !1129)
!1146 = !DILocation(line: 97, column: 6, scope: !736, inlinedAt: !1129)
!1147 = !DILocation(line: 97, column: 15, scope: !736, inlinedAt: !1129)
!1148 = !DILocation(line: 97, column: 5, scope: !736, inlinedAt: !1129)
!1149 = !DILocation(line: 160, column: 3, scope: !639)
!1150 = !DILocation(line: 86, column: 31, scope: !705, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 160, column: 3, scope: !639)
!1152 = !DILocation(line: 88, column: 20, scope: !705, inlinedAt: !1151)
!1153 = !DILocation(line: 88, column: 27, scope: !705, inlinedAt: !1151)
!1154 = !DILocation(line: 89, column: 26, scope: !705, inlinedAt: !1151)
!1155 = !DILocation(line: 89, column: 9, scope: !705, inlinedAt: !1151)
!1156 = !DILocation(line: 90, column: 22, scope: !705, inlinedAt: !1151)
!1157 = !DILocation(line: 90, column: 20, scope: !705, inlinedAt: !1151)
!1158 = !DILocation(line: 90, column: 9, scope: !705, inlinedAt: !1151)
!1159 = !DILocation(line: 91, column: 3, scope: !705, inlinedAt: !1151)
!1160 = !DILocation(line: 92, column: 3, scope: !705, inlinedAt: !1151)
!1161 = !DILocation(line: 92, column: 11, scope: !705, inlinedAt: !1151)
!1162 = !DILocation(line: 92, column: 10, scope: !705, inlinedAt: !1151)
!1163 = !DILocation(line: 92, column: 15, scope: !705, inlinedAt: !1151)
!1164 = !DILocation(line: 94, column: 3, scope: !705, inlinedAt: !1151)
!1165 = !DILocation(line: 95, column: 18, scope: !705, inlinedAt: !1151)
!1166 = !DILocation(line: 95, column: 9, scope: !705, inlinedAt: !1151)
!1167 = !DILocation(line: 96, column: 7, scope: !705, inlinedAt: !1151)
!1168 = !DILocation(line: 97, column: 6, scope: !736, inlinedAt: !1151)
!1169 = !DILocation(line: 97, column: 15, scope: !736, inlinedAt: !1151)
!1170 = !DILocation(line: 97, column: 5, scope: !736, inlinedAt: !1151)
!1171 = !DILocation(line: 161, column: 3, scope: !639)
!1172 = !DILocation(line: 86, column: 31, scope: !705, inlinedAt: !1173)
!1173 = distinct !DILocation(line: 161, column: 3, scope: !639)
!1174 = !DILocation(line: 88, column: 20, scope: !705, inlinedAt: !1173)
!1175 = !DILocation(line: 88, column: 27, scope: !705, inlinedAt: !1173)
!1176 = !DILocation(line: 89, column: 26, scope: !705, inlinedAt: !1173)
!1177 = !DILocation(line: 89, column: 9, scope: !705, inlinedAt: !1173)
!1178 = !DILocation(line: 90, column: 22, scope: !705, inlinedAt: !1173)
!1179 = !DILocation(line: 90, column: 20, scope: !705, inlinedAt: !1173)
!1180 = !DILocation(line: 90, column: 9, scope: !705, inlinedAt: !1173)
!1181 = !DILocation(line: 91, column: 3, scope: !705, inlinedAt: !1173)
!1182 = !DILocation(line: 92, column: 3, scope: !705, inlinedAt: !1173)
!1183 = !DILocation(line: 92, column: 11, scope: !705, inlinedAt: !1173)
!1184 = !DILocation(line: 92, column: 10, scope: !705, inlinedAt: !1173)
!1185 = !DILocation(line: 92, column: 15, scope: !705, inlinedAt: !1173)
!1186 = !DILocation(line: 94, column: 3, scope: !705, inlinedAt: !1173)
!1187 = !DILocation(line: 95, column: 18, scope: !705, inlinedAt: !1173)
!1188 = !DILocation(line: 95, column: 9, scope: !705, inlinedAt: !1173)
!1189 = !DILocation(line: 96, column: 7, scope: !705, inlinedAt: !1173)
!1190 = !DILocation(line: 97, column: 6, scope: !736, inlinedAt: !1173)
!1191 = !DILocation(line: 97, column: 15, scope: !736, inlinedAt: !1173)
!1192 = !DILocation(line: 97, column: 5, scope: !736, inlinedAt: !1173)
!1193 = !DILocation(line: 161, column: 3, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !494, line: 161, column: 3)
!1195 = distinct !DILexicalBlock(scope: !639, file: !494, line: 161, column: 3)
!1196 = !DILocation(line: 86, column: 31, scope: !705, inlinedAt: !1197)
!1197 = distinct !DILocation(line: 161, column: 3, scope: !1194)
!1198 = !DILocation(line: 88, column: 20, scope: !705, inlinedAt: !1197)
!1199 = !DILocation(line: 88, column: 27, scope: !705, inlinedAt: !1197)
!1200 = !DILocation(line: 89, column: 26, scope: !705, inlinedAt: !1197)
!1201 = !DILocation(line: 89, column: 9, scope: !705, inlinedAt: !1197)
!1202 = !DILocation(line: 90, column: 22, scope: !705, inlinedAt: !1197)
!1203 = !DILocation(line: 90, column: 20, scope: !705, inlinedAt: !1197)
!1204 = !DILocation(line: 90, column: 9, scope: !705, inlinedAt: !1197)
!1205 = !DILocation(line: 91, column: 3, scope: !705, inlinedAt: !1197)
!1206 = !DILocation(line: 92, column: 3, scope: !705, inlinedAt: !1197)
!1207 = !DILocation(line: 92, column: 11, scope: !705, inlinedAt: !1197)
!1208 = !DILocation(line: 92, column: 10, scope: !705, inlinedAt: !1197)
!1209 = !DILocation(line: 92, column: 15, scope: !705, inlinedAt: !1197)
!1210 = !DILocation(line: 94, column: 3, scope: !705, inlinedAt: !1197)
!1211 = !DILocation(line: 95, column: 18, scope: !705, inlinedAt: !1197)
!1212 = !DILocation(line: 95, column: 9, scope: !705, inlinedAt: !1197)
!1213 = !DILocation(line: 96, column: 7, scope: !705, inlinedAt: !1197)
!1214 = !DILocation(line: 97, column: 6, scope: !736, inlinedAt: !1197)
!1215 = !DILocation(line: 97, column: 15, scope: !736, inlinedAt: !1197)
!1216 = !DILocation(line: 97, column: 5, scope: !736, inlinedAt: !1197)
!1217 = !DILocation(line: 162, column: 3, scope: !639)
!1218 = !DILocation(line: 86, column: 31, scope: !705, inlinedAt: !1219)
!1219 = distinct !DILocation(line: 162, column: 3, scope: !639)
!1220 = !DILocation(line: 88, column: 20, scope: !705, inlinedAt: !1219)
!1221 = !DILocation(line: 88, column: 27, scope: !705, inlinedAt: !1219)
!1222 = !DILocation(line: 89, column: 26, scope: !705, inlinedAt: !1219)
!1223 = !DILocation(line: 89, column: 9, scope: !705, inlinedAt: !1219)
!1224 = !DILocation(line: 90, column: 22, scope: !705, inlinedAt: !1219)
!1225 = !DILocation(line: 90, column: 20, scope: !705, inlinedAt: !1219)
!1226 = !DILocation(line: 90, column: 9, scope: !705, inlinedAt: !1219)
!1227 = !DILocation(line: 91, column: 3, scope: !705, inlinedAt: !1219)
!1228 = !DILocation(line: 92, column: 3, scope: !705, inlinedAt: !1219)
!1229 = !DILocation(line: 92, column: 11, scope: !705, inlinedAt: !1219)
!1230 = !DILocation(line: 92, column: 10, scope: !705, inlinedAt: !1219)
!1231 = !DILocation(line: 92, column: 15, scope: !705, inlinedAt: !1219)
!1232 = !DILocation(line: 94, column: 3, scope: !705, inlinedAt: !1219)
!1233 = !DILocation(line: 95, column: 18, scope: !705, inlinedAt: !1219)
!1234 = !DILocation(line: 95, column: 9, scope: !705, inlinedAt: !1219)
!1235 = !DILocation(line: 96, column: 7, scope: !705, inlinedAt: !1219)
!1236 = !DILocation(line: 97, column: 6, scope: !736, inlinedAt: !1219)
!1237 = !DILocation(line: 97, column: 15, scope: !736, inlinedAt: !1219)
!1238 = !DILocation(line: 97, column: 5, scope: !736, inlinedAt: !1219)
!1239 = !DILocation(line: 162, column: 3, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !494, line: 162, column: 3)
!1241 = distinct !DILexicalBlock(scope: !639, file: !494, line: 162, column: 3)
!1242 = !DILocation(line: 86, column: 31, scope: !705, inlinedAt: !1243)
!1243 = distinct !DILocation(line: 162, column: 3, scope: !1240)
!1244 = !DILocation(line: 88, column: 20, scope: !705, inlinedAt: !1243)
!1245 = !DILocation(line: 88, column: 27, scope: !705, inlinedAt: !1243)
!1246 = !DILocation(line: 89, column: 26, scope: !705, inlinedAt: !1243)
!1247 = !DILocation(line: 89, column: 9, scope: !705, inlinedAt: !1243)
!1248 = !DILocation(line: 90, column: 22, scope: !705, inlinedAt: !1243)
!1249 = !DILocation(line: 90, column: 20, scope: !705, inlinedAt: !1243)
!1250 = !DILocation(line: 90, column: 9, scope: !705, inlinedAt: !1243)
!1251 = !DILocation(line: 91, column: 3, scope: !705, inlinedAt: !1243)
!1252 = !DILocation(line: 92, column: 3, scope: !705, inlinedAt: !1243)
!1253 = !DILocation(line: 92, column: 11, scope: !705, inlinedAt: !1243)
!1254 = !DILocation(line: 92, column: 10, scope: !705, inlinedAt: !1243)
!1255 = !DILocation(line: 92, column: 15, scope: !705, inlinedAt: !1243)
!1256 = !DILocation(line: 94, column: 3, scope: !705, inlinedAt: !1243)
!1257 = !DILocation(line: 95, column: 18, scope: !705, inlinedAt: !1243)
!1258 = !DILocation(line: 95, column: 9, scope: !705, inlinedAt: !1243)
!1259 = !DILocation(line: 96, column: 7, scope: !705, inlinedAt: !1243)
!1260 = !DILocation(line: 97, column: 6, scope: !736, inlinedAt: !1243)
!1261 = !DILocation(line: 97, column: 15, scope: !736, inlinedAt: !1243)
!1262 = !DILocation(line: 97, column: 5, scope: !736, inlinedAt: !1243)
!1263 = !DILocation(line: 163, column: 3, scope: !639)
!1264 = !DILocation(line: 86, column: 31, scope: !705, inlinedAt: !1265)
!1265 = distinct !DILocation(line: 163, column: 3, scope: !639)
!1266 = !DILocation(line: 88, column: 20, scope: !705, inlinedAt: !1265)
!1267 = !DILocation(line: 88, column: 27, scope: !705, inlinedAt: !1265)
!1268 = !DILocation(line: 89, column: 26, scope: !705, inlinedAt: !1265)
!1269 = !DILocation(line: 89, column: 9, scope: !705, inlinedAt: !1265)
!1270 = !DILocation(line: 90, column: 22, scope: !705, inlinedAt: !1265)
!1271 = !DILocation(line: 90, column: 20, scope: !705, inlinedAt: !1265)
!1272 = !DILocation(line: 90, column: 9, scope: !705, inlinedAt: !1265)
!1273 = !DILocation(line: 91, column: 3, scope: !705, inlinedAt: !1265)
!1274 = !DILocation(line: 92, column: 3, scope: !705, inlinedAt: !1265)
!1275 = !DILocation(line: 92, column: 11, scope: !705, inlinedAt: !1265)
!1276 = !DILocation(line: 92, column: 10, scope: !705, inlinedAt: !1265)
!1277 = !DILocation(line: 92, column: 15, scope: !705, inlinedAt: !1265)
!1278 = !DILocation(line: 94, column: 3, scope: !705, inlinedAt: !1265)
!1279 = !DILocation(line: 95, column: 18, scope: !705, inlinedAt: !1265)
!1280 = !DILocation(line: 95, column: 9, scope: !705, inlinedAt: !1265)
!1281 = !DILocation(line: 96, column: 7, scope: !705, inlinedAt: !1265)
!1282 = !DILocation(line: 97, column: 6, scope: !736, inlinedAt: !1265)
!1283 = !DILocation(line: 97, column: 15, scope: !736, inlinedAt: !1265)
!1284 = !DILocation(line: 97, column: 5, scope: !736, inlinedAt: !1265)
!1285 = !DILocation(line: 163, column: 3, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !494, line: 163, column: 3)
!1287 = distinct !DILexicalBlock(scope: !639, file: !494, line: 163, column: 3)
!1288 = !DILocation(line: 86, column: 31, scope: !705, inlinedAt: !1289)
!1289 = distinct !DILocation(line: 163, column: 3, scope: !1286)
!1290 = !DILocation(line: 88, column: 20, scope: !705, inlinedAt: !1289)
!1291 = !DILocation(line: 88, column: 27, scope: !705, inlinedAt: !1289)
!1292 = !DILocation(line: 89, column: 26, scope: !705, inlinedAt: !1289)
!1293 = !DILocation(line: 89, column: 9, scope: !705, inlinedAt: !1289)
!1294 = !DILocation(line: 90, column: 22, scope: !705, inlinedAt: !1289)
!1295 = !DILocation(line: 90, column: 20, scope: !705, inlinedAt: !1289)
!1296 = !DILocation(line: 90, column: 9, scope: !705, inlinedAt: !1289)
!1297 = !DILocation(line: 91, column: 3, scope: !705, inlinedAt: !1289)
!1298 = !DILocation(line: 92, column: 3, scope: !705, inlinedAt: !1289)
!1299 = !DILocation(line: 92, column: 11, scope: !705, inlinedAt: !1289)
!1300 = !DILocation(line: 92, column: 10, scope: !705, inlinedAt: !1289)
!1301 = !DILocation(line: 92, column: 15, scope: !705, inlinedAt: !1289)
!1302 = !DILocation(line: 94, column: 3, scope: !705, inlinedAt: !1289)
!1303 = !DILocation(line: 95, column: 18, scope: !705, inlinedAt: !1289)
!1304 = !DILocation(line: 95, column: 9, scope: !705, inlinedAt: !1289)
!1305 = !DILocation(line: 96, column: 7, scope: !705, inlinedAt: !1289)
!1306 = !DILocation(line: 97, column: 6, scope: !736, inlinedAt: !1289)
!1307 = !DILocation(line: 97, column: 15, scope: !736, inlinedAt: !1289)
!1308 = !DILocation(line: 97, column: 5, scope: !736, inlinedAt: !1289)
!1309 = !DILocation(line: 164, column: 3, scope: !639)
!1310 = !DILocation(line: 86, column: 31, scope: !705, inlinedAt: !1311)
!1311 = distinct !DILocation(line: 164, column: 3, scope: !639)
!1312 = !DILocation(line: 88, column: 20, scope: !705, inlinedAt: !1311)
!1313 = !DILocation(line: 88, column: 27, scope: !705, inlinedAt: !1311)
!1314 = !DILocation(line: 89, column: 26, scope: !705, inlinedAt: !1311)
!1315 = !DILocation(line: 89, column: 9, scope: !705, inlinedAt: !1311)
!1316 = !DILocation(line: 90, column: 22, scope: !705, inlinedAt: !1311)
!1317 = !DILocation(line: 90, column: 20, scope: !705, inlinedAt: !1311)
!1318 = !DILocation(line: 90, column: 9, scope: !705, inlinedAt: !1311)
!1319 = !DILocation(line: 91, column: 3, scope: !705, inlinedAt: !1311)
!1320 = !DILocation(line: 92, column: 3, scope: !705, inlinedAt: !1311)
!1321 = !DILocation(line: 92, column: 11, scope: !705, inlinedAt: !1311)
!1322 = !DILocation(line: 92, column: 10, scope: !705, inlinedAt: !1311)
!1323 = !DILocation(line: 92, column: 15, scope: !705, inlinedAt: !1311)
!1324 = !DILocation(line: 94, column: 3, scope: !705, inlinedAt: !1311)
!1325 = !DILocation(line: 95, column: 18, scope: !705, inlinedAt: !1311)
!1326 = !DILocation(line: 95, column: 9, scope: !705, inlinedAt: !1311)
!1327 = !DILocation(line: 96, column: 7, scope: !705, inlinedAt: !1311)
!1328 = !DILocation(line: 97, column: 6, scope: !736, inlinedAt: !1311)
!1329 = !DILocation(line: 97, column: 15, scope: !736, inlinedAt: !1311)
!1330 = !DILocation(line: 97, column: 5, scope: !736, inlinedAt: !1311)
!1331 = !DILocation(line: 167, column: 3, scope: !639)
!1332 = !DILocation(line: 168, column: 3, scope: !639)
!1333 = !DILocation(line: 169, column: 3, scope: !639)
!1334 = !DILocation(line: 172, column: 1, scope: !639)
!1335 = !DILocation(line: 171, column: 3, scope: !639)
!1336 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !8, file: !8, line: 41, type: !532, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1337)
!1337 = !{!1338}
!1338 = !DILocalVariable(name: "file", arg: 1, scope: !1336, file: !8, line: 41, type: !10)
!1339 = !DILocation(line: 41, column: 41, scope: !1336)
!1340 = !DILocation(line: 43, column: 13, scope: !1336)
!1341 = !DILocation(line: 44, column: 1, scope: !1336)
!1342 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !8, file: !8, line: 78, type: !1343, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1345)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{null, !9}
!1345 = !{!1346}
!1346 = !DILocalVariable(name: "ignore", arg: 1, scope: !1342, file: !8, line: 78, type: !9)
!1347 = !DILocation(line: 78, column: 37, scope: !1342)
!1348 = !DILocation(line: 80, column: 16, scope: !1342)
!1349 = !{!1350, !1350, i64 0}
!1350 = !{!"_Bool", !616, i64 0}
!1351 = !DILocation(line: 81, column: 1, scope: !1342)
!1352 = distinct !DISubprogram(name: "close_stdout", scope: !8, file: !8, line: 107, type: !1353, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1355)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{null}
!1355 = !{!1356}
!1356 = !DILocalVariable(name: "write_error", scope: !1357, file: !8, line: 112, type: !10)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !8, line: 111, column: 5)
!1358 = distinct !DILexicalBlock(scope: !1352, file: !8, line: 109, column: 7)
!1359 = !DILocation(line: 109, column: 21, scope: !1358)
!1360 = !DILocation(line: 109, column: 7, scope: !1358)
!1361 = !DILocation(line: 109, column: 29, scope: !1358)
!1362 = !DILocation(line: 110, column: 7, scope: !1358)
!1363 = !DILocation(line: 110, column: 12, scope: !1358)
!1364 = !{i8 0, i8 2}
!1365 = !DILocation(line: 114, column: 19, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1357, file: !8, line: 113, column: 11)
!1367 = !DILocation(line: 110, column: 25, scope: !1358)
!1368 = !DILocation(line: 110, column: 28, scope: !1358)
!1369 = !{!1370, !1370, i64 0}
!1370 = !{!"int", !616, i64 0}
!1371 = !DILocation(line: 110, column: 34, scope: !1358)
!1372 = !DILocation(line: 109, column: 7, scope: !1352)
!1373 = !DILocation(line: 112, column: 33, scope: !1357)
!1374 = !DILocation(line: 112, column: 19, scope: !1357)
!1375 = !DILocation(line: 113, column: 11, scope: !1366)
!1376 = !DILocation(line: 113, column: 11, scope: !1357)
!1377 = !DILocation(line: 114, column: 36, scope: !1366)
!1378 = !DILocation(line: 114, column: 9, scope: !1366)
!1379 = !DILocation(line: 117, column: 9, scope: !1366)
!1380 = !DILocation(line: 119, column: 14, scope: !1357)
!1381 = !DILocation(line: 119, column: 7, scope: !1357)
!1382 = !DILocation(line: 122, column: 22, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1352, file: !8, line: 122, column: 8)
!1384 = !DILocation(line: 122, column: 8, scope: !1383)
!1385 = !DILocation(line: 122, column: 30, scope: !1383)
!1386 = !DILocation(line: 122, column: 8, scope: !1352)
!1387 = !DILocation(line: 123, column: 13, scope: !1383)
!1388 = !DILocation(line: 123, column: 6, scope: !1383)
!1389 = !DILocation(line: 124, column: 1, scope: !1352)
!1390 = distinct !DISubprogram(name: "dtoastr", scope: !551, file: !551, line: 103, type: !1391, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !548, variables: !1393)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!20, !45, !89, !20, !20, !654}
!1393 = !{!1394, !1395, !1396, !1397, !1398, !1399, !1400, !1402, !1403, !1404, !1405}
!1394 = !DILocalVariable(name: "buf", arg: 1, scope: !1390, file: !551, line: 103, type: !45)
!1395 = !DILocalVariable(name: "bufsize", arg: 2, scope: !1390, file: !551, line: 103, type: !89)
!1396 = !DILocalVariable(name: "flags", arg: 3, scope: !1390, file: !551, line: 103, type: !20)
!1397 = !DILocalVariable(name: "width", arg: 4, scope: !1390, file: !551, line: 103, type: !20)
!1398 = !DILocalVariable(name: "x", arg: 5, scope: !1390, file: !551, line: 103, type: !654)
!1399 = !DILocalVariable(name: "promoted_x", scope: !1390, file: !551, line: 113, type: !654)
!1400 = !DILocalVariable(name: "format", scope: !1390, file: !551, line: 114, type: !1401)
!1401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 88, elements: !133)
!1402 = !DILocalVariable(name: "abs_x", scope: !1390, file: !551, line: 115, type: !654)
!1403 = !DILocalVariable(name: "prec", scope: !1390, file: !551, line: 116, type: !20)
!1404 = !DILocalVariable(name: "p", scope: !1390, file: !551, line: 118, type: !45)
!1405 = !DILocalVariable(name: "n", scope: !1406, file: !551, line: 136, type: !20)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !551, line: 135, column: 5)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !551, line: 134, column: 3)
!1408 = distinct !DILexicalBlock(scope: !1390, file: !551, line: 134, column: 3)
!1409 = !DILocation(line: 103, column: 16, scope: !1390)
!1410 = !DILocation(line: 103, column: 28, scope: !1390)
!1411 = !DILocation(line: 103, column: 41, scope: !1390)
!1412 = !DILocation(line: 103, column: 52, scope: !1390)
!1413 = !DILocation(line: 103, column: 65, scope: !1390)
!1414 = !DILocation(line: 113, column: 18, scope: !1390)
!1415 = !DILocation(line: 114, column: 3, scope: !1390)
!1416 = !DILocation(line: 114, column: 8, scope: !1390)
!1417 = !DILocation(line: 115, column: 19, scope: !1390)
!1418 = !DILocation(line: 115, column: 25, scope: !1390)
!1419 = !DILocation(line: 115, column: 17, scope: !1390)
!1420 = !DILocation(line: 115, column: 9, scope: !1390)
!1421 = !DILocation(line: 118, column: 9, scope: !1390)
!1422 = !DILocation(line: 119, column: 5, scope: !1390)
!1423 = !DILocation(line: 119, column: 8, scope: !1390)
!1424 = !DILocation(line: 122, column: 6, scope: !1390)
!1425 = !DILocation(line: 122, column: 25, scope: !1390)
!1426 = !DILocation(line: 122, column: 15, scope: !1390)
!1427 = !DILocation(line: 123, column: 6, scope: !1390)
!1428 = !DILocation(line: 123, column: 51, scope: !1390)
!1429 = !DILocation(line: 123, column: 15, scope: !1390)
!1430 = !DILocation(line: 124, column: 6, scope: !1390)
!1431 = !DILocation(line: 124, column: 51, scope: !1390)
!1432 = !DILocation(line: 124, column: 15, scope: !1390)
!1433 = !DILocation(line: 125, column: 6, scope: !1390)
!1434 = !DILocation(line: 125, column: 51, scope: !1390)
!1435 = !DILocation(line: 125, column: 15, scope: !1390)
!1436 = !DILocation(line: 127, column: 5, scope: !1390)
!1437 = !DILocation(line: 127, column: 8, scope: !1390)
!1438 = !DILocation(line: 128, column: 5, scope: !1390)
!1439 = !DILocation(line: 128, column: 8, scope: !1390)
!1440 = !DILocation(line: 129, column: 5, scope: !1390)
!1441 = !DILocation(line: 129, column: 8, scope: !1390)
!1442 = !DILocation(line: 131, column: 10, scope: !1390)
!1443 = !DILocation(line: 131, column: 5, scope: !1390)
!1444 = !DILocation(line: 131, column: 8, scope: !1390)
!1445 = !DILocation(line: 132, column: 6, scope: !1390)
!1446 = !DILocation(line: 134, column: 21, scope: !1408)
!1447 = !DILocation(line: 134, column: 15, scope: !1408)
!1448 = !DILocation(line: 116, column: 7, scope: !1390)
!1449 = !DILocation(line: 136, column: 15, scope: !1406)
!1450 = !DILocation(line: 136, column: 11, scope: !1406)
!1451 = !DILocation(line: 137, column: 13, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1406, file: !551, line: 137, column: 11)
!1453 = !DILocation(line: 138, column: 11, scope: !1452)
!1454 = !DILocation(line: 139, column: 15, scope: !1452)
!1455 = !DILocation(line: 139, column: 17, scope: !1452)
!1456 = !DILocation(line: 139, column: 27, scope: !1452)
!1457 = !DILocation(line: 139, column: 30, scope: !1452)
!1458 = !DILocation(line: 139, column: 49, scope: !1452)
!1459 = !DILocation(line: 137, column: 11, scope: !1406)
!1460 = !DILocation(line: 134, column: 56, scope: !1407)
!1461 = !DILocation(line: 138, column: 31, scope: !1452)
!1462 = distinct !{!1462, !1463, !1464}
!1463 = !DILocation(line: 134, column: 3, scope: !1408)
!1464 = !DILocation(line: 141, column: 5, scope: !1408)
!1465 = !DILocation(line: 142, column: 1, scope: !1390)
!1466 = distinct !DISubprogram(name: "ftoastr", scope: !1467, file: !1467, line: 103, type: !1468, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !1470)
!1467 = !DIFile(filename: "lib/ftoastr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!20, !45, !89, !20, !20, !668}
!1470 = !{!1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481}
!1471 = !DILocalVariable(name: "buf", arg: 1, scope: !1466, file: !1467, line: 103, type: !45)
!1472 = !DILocalVariable(name: "bufsize", arg: 2, scope: !1466, file: !1467, line: 103, type: !89)
!1473 = !DILocalVariable(name: "flags", arg: 3, scope: !1466, file: !1467, line: 103, type: !20)
!1474 = !DILocalVariable(name: "width", arg: 4, scope: !1466, file: !1467, line: 103, type: !20)
!1475 = !DILocalVariable(name: "x", arg: 5, scope: !1466, file: !1467, line: 103, type: !668)
!1476 = !DILocalVariable(name: "promoted_x", scope: !1466, file: !1467, line: 113, type: !654)
!1477 = !DILocalVariable(name: "format", scope: !1466, file: !1467, line: 114, type: !1401)
!1478 = !DILocalVariable(name: "abs_x", scope: !1466, file: !1467, line: 115, type: !668)
!1479 = !DILocalVariable(name: "prec", scope: !1466, file: !1467, line: 116, type: !20)
!1480 = !DILocalVariable(name: "p", scope: !1466, file: !1467, line: 118, type: !45)
!1481 = !DILocalVariable(name: "n", scope: !1482, file: !1467, line: 136, type: !20)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !1467, line: 135, column: 5)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !1467, line: 134, column: 3)
!1484 = distinct !DILexicalBlock(scope: !1466, file: !1467, line: 134, column: 3)
!1485 = !DILocation(line: 103, column: 16, scope: !1466)
!1486 = !DILocation(line: 103, column: 28, scope: !1466)
!1487 = !DILocation(line: 103, column: 41, scope: !1466)
!1488 = !DILocation(line: 103, column: 52, scope: !1466)
!1489 = !DILocation(line: 103, column: 65, scope: !1466)
!1490 = !DILocation(line: 113, column: 31, scope: !1466)
!1491 = !DILocation(line: 113, column: 18, scope: !1466)
!1492 = !DILocation(line: 114, column: 3, scope: !1466)
!1493 = !DILocation(line: 114, column: 8, scope: !1466)
!1494 = !DILocation(line: 115, column: 19, scope: !1466)
!1495 = !DILocation(line: 115, column: 25, scope: !1466)
!1496 = !DILocation(line: 115, column: 17, scope: !1466)
!1497 = !DILocation(line: 115, column: 9, scope: !1466)
!1498 = !DILocation(line: 118, column: 9, scope: !1466)
!1499 = !DILocation(line: 119, column: 5, scope: !1466)
!1500 = !DILocation(line: 119, column: 8, scope: !1466)
!1501 = !DILocation(line: 122, column: 6, scope: !1466)
!1502 = !DILocation(line: 122, column: 25, scope: !1466)
!1503 = !DILocation(line: 122, column: 15, scope: !1466)
!1504 = !DILocation(line: 123, column: 6, scope: !1466)
!1505 = !DILocation(line: 123, column: 51, scope: !1466)
!1506 = !DILocation(line: 123, column: 15, scope: !1466)
!1507 = !DILocation(line: 124, column: 6, scope: !1466)
!1508 = !DILocation(line: 124, column: 51, scope: !1466)
!1509 = !DILocation(line: 124, column: 15, scope: !1466)
!1510 = !DILocation(line: 125, column: 6, scope: !1466)
!1511 = !DILocation(line: 125, column: 51, scope: !1466)
!1512 = !DILocation(line: 125, column: 15, scope: !1466)
!1513 = !DILocation(line: 127, column: 5, scope: !1466)
!1514 = !DILocation(line: 127, column: 8, scope: !1466)
!1515 = !DILocation(line: 128, column: 5, scope: !1466)
!1516 = !DILocation(line: 128, column: 8, scope: !1466)
!1517 = !DILocation(line: 129, column: 5, scope: !1466)
!1518 = !DILocation(line: 129, column: 8, scope: !1466)
!1519 = !DILocation(line: 131, column: 10, scope: !1466)
!1520 = !DILocation(line: 131, column: 5, scope: !1466)
!1521 = !DILocation(line: 131, column: 8, scope: !1466)
!1522 = !DILocation(line: 132, column: 6, scope: !1466)
!1523 = !DILocation(line: 134, column: 21, scope: !1484)
!1524 = !DILocation(line: 134, column: 15, scope: !1484)
!1525 = !DILocation(line: 116, column: 7, scope: !1466)
!1526 = !DILocation(line: 136, column: 15, scope: !1482)
!1527 = !DILocation(line: 136, column: 11, scope: !1482)
!1528 = !DILocation(line: 137, column: 13, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1482, file: !1467, line: 137, column: 11)
!1530 = !DILocation(line: 138, column: 11, scope: !1529)
!1531 = !DILocation(line: 139, column: 15, scope: !1529)
!1532 = !DILocation(line: 139, column: 17, scope: !1529)
!1533 = !DILocation(line: 139, column: 27, scope: !1529)
!1534 = !DILocation(line: 139, column: 30, scope: !1529)
!1535 = !DILocation(line: 139, column: 49, scope: !1529)
!1536 = !DILocation(line: 137, column: 11, scope: !1482)
!1537 = !DILocation(line: 134, column: 56, scope: !1483)
!1538 = !DILocation(line: 138, column: 31, scope: !1529)
!1539 = distinct !{!1539, !1540, !1541}
!1540 = !DILocation(line: 134, column: 3, scope: !1484)
!1541 = !DILocation(line: 141, column: 5, scope: !1484)
!1542 = !DILocation(line: 142, column: 1, scope: !1466)
!1543 = distinct !DISubprogram(name: "ldtoastr", scope: !551, file: !551, line: 103, type: !1544, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !1546)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!20, !45, !89, !20, !20, !682}
!1546 = !{!1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557}
!1547 = !DILocalVariable(name: "buf", arg: 1, scope: !1543, file: !551, line: 103, type: !45)
!1548 = !DILocalVariable(name: "bufsize", arg: 2, scope: !1543, file: !551, line: 103, type: !89)
!1549 = !DILocalVariable(name: "flags", arg: 3, scope: !1543, file: !551, line: 103, type: !20)
!1550 = !DILocalVariable(name: "width", arg: 4, scope: !1543, file: !551, line: 103, type: !20)
!1551 = !DILocalVariable(name: "x", arg: 5, scope: !1543, file: !551, line: 103, type: !682)
!1552 = !DILocalVariable(name: "promoted_x", scope: !1543, file: !551, line: 113, type: !682)
!1553 = !DILocalVariable(name: "format", scope: !1543, file: !551, line: 114, type: !1401)
!1554 = !DILocalVariable(name: "abs_x", scope: !1543, file: !551, line: 115, type: !682)
!1555 = !DILocalVariable(name: "prec", scope: !1543, file: !551, line: 116, type: !20)
!1556 = !DILocalVariable(name: "p", scope: !1543, file: !551, line: 118, type: !45)
!1557 = !DILocalVariable(name: "n", scope: !1558, file: !551, line: 136, type: !20)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !551, line: 135, column: 5)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !551, line: 134, column: 3)
!1560 = distinct !DILexicalBlock(scope: !1543, file: !551, line: 134, column: 3)
!1561 = !DILocation(line: 103, column: 16, scope: !1543)
!1562 = !DILocation(line: 103, column: 28, scope: !1543)
!1563 = !DILocation(line: 103, column: 41, scope: !1543)
!1564 = !DILocation(line: 103, column: 52, scope: !1543)
!1565 = !DILocation(line: 103, column: 65, scope: !1543)
!1566 = !DILocation(line: 113, column: 18, scope: !1543)
!1567 = !DILocation(line: 114, column: 3, scope: !1543)
!1568 = !DILocation(line: 114, column: 8, scope: !1543)
!1569 = !DILocation(line: 115, column: 19, scope: !1543)
!1570 = !DILocation(line: 115, column: 25, scope: !1543)
!1571 = !DILocation(line: 115, column: 17, scope: !1543)
!1572 = !DILocation(line: 115, column: 9, scope: !1543)
!1573 = !DILocation(line: 118, column: 9, scope: !1543)
!1574 = !DILocation(line: 119, column: 5, scope: !1543)
!1575 = !DILocation(line: 119, column: 8, scope: !1543)
!1576 = !DILocation(line: 122, column: 6, scope: !1543)
!1577 = !DILocation(line: 122, column: 25, scope: !1543)
!1578 = !DILocation(line: 122, column: 15, scope: !1543)
!1579 = !DILocation(line: 123, column: 6, scope: !1543)
!1580 = !DILocation(line: 123, column: 51, scope: !1543)
!1581 = !DILocation(line: 123, column: 15, scope: !1543)
!1582 = !DILocation(line: 124, column: 6, scope: !1543)
!1583 = !DILocation(line: 124, column: 51, scope: !1543)
!1584 = !DILocation(line: 124, column: 15, scope: !1543)
!1585 = !DILocation(line: 125, column: 6, scope: !1543)
!1586 = !DILocation(line: 125, column: 51, scope: !1543)
!1587 = !DILocation(line: 125, column: 15, scope: !1543)
!1588 = !DILocation(line: 127, column: 5, scope: !1543)
!1589 = !DILocation(line: 127, column: 8, scope: !1543)
!1590 = !DILocation(line: 128, column: 5, scope: !1543)
!1591 = !DILocation(line: 128, column: 8, scope: !1543)
!1592 = !DILocation(line: 129, column: 5, scope: !1543)
!1593 = !DILocation(line: 129, column: 8, scope: !1543)
!1594 = !DILocation(line: 130, column: 6, scope: !1543)
!1595 = !DILocation(line: 130, column: 15, scope: !1543)
!1596 = !DILocation(line: 131, column: 10, scope: !1543)
!1597 = !DILocation(line: 131, column: 5, scope: !1543)
!1598 = !DILocation(line: 131, column: 8, scope: !1543)
!1599 = !DILocation(line: 132, column: 6, scope: !1543)
!1600 = !DILocation(line: 134, column: 21, scope: !1560)
!1601 = !DILocation(line: 134, column: 15, scope: !1560)
!1602 = !DILocation(line: 116, column: 7, scope: !1543)
!1603 = !DILocation(line: 136, column: 15, scope: !1558)
!1604 = !DILocation(line: 136, column: 11, scope: !1558)
!1605 = !DILocation(line: 137, column: 13, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1558, file: !551, line: 137, column: 11)
!1607 = !DILocation(line: 138, column: 11, scope: !1606)
!1608 = !DILocation(line: 139, column: 15, scope: !1606)
!1609 = !DILocation(line: 139, column: 17, scope: !1606)
!1610 = !DILocation(line: 139, column: 27, scope: !1606)
!1611 = !DILocation(line: 139, column: 30, scope: !1606)
!1612 = !DILocation(line: 139, column: 49, scope: !1606)
!1613 = !DILocation(line: 137, column: 11, scope: !1558)
!1614 = !DILocation(line: 134, column: 56, scope: !1559)
!1615 = !DILocation(line: 138, column: 31, scope: !1606)
!1616 = distinct !{!1616, !1617, !1618}
!1617 = !DILocation(line: 134, column: 3, scope: !1560)
!1618 = !DILocation(line: 141, column: 5, scope: !1560)
!1619 = !DILocation(line: 142, column: 1, scope: !1543)
!1620 = distinct !DISubprogram(name: "parse_long_options", scope: !26, file: !26, line: 44, type: !1621, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !23, variables: !1624)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{null, !20, !642, !10, !10, !10, !1623, null}
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!1624 = !{!1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633}
!1625 = !DILocalVariable(name: "argc", arg: 1, scope: !1620, file: !26, line: 44, type: !20)
!1626 = !DILocalVariable(name: "argv", arg: 2, scope: !1620, file: !26, line: 45, type: !642)
!1627 = !DILocalVariable(name: "command_name", arg: 3, scope: !1620, file: !26, line: 46, type: !10)
!1628 = !DILocalVariable(name: "package", arg: 4, scope: !1620, file: !26, line: 47, type: !10)
!1629 = !DILocalVariable(name: "version", arg: 5, scope: !1620, file: !26, line: 48, type: !10)
!1630 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1620, file: !26, line: 49, type: !1623)
!1631 = !DILocalVariable(name: "c", scope: !1620, file: !26, line: 52, type: !20)
!1632 = !DILocalVariable(name: "saved_opterr", scope: !1620, file: !26, line: 53, type: !20)
!1633 = !DILocalVariable(name: "authors", scope: !1634, file: !26, line: 71, type: !1638)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !26, line: 70, column: 11)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !26, line: 64, column: 9)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !26, line: 62, column: 5)
!1637 = distinct !DILexicalBlock(scope: !1620, file: !26, line: 60, column: 7)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !513, line: 46, baseType: !1639)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1640, line: 48, baseType: !1641)
!1640 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !24, line: 71, baseType: !1642)
!1642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1643, size: 192, elements: !1649)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !24, line: 71, size: 192, elements: !1644)
!1644 = !{!1645, !1646, !1647, !1648}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1643, file: !24, line: 71, baseType: !108, size: 32)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1643, file: !24, line: 71, baseType: !108, size: 32, offset: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1643, file: !24, line: 71, baseType: !44, size: 64, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1643, file: !24, line: 71, baseType: !44, size: 64, offset: 128)
!1649 = !{!1650}
!1650 = !DISubrange(count: 1)
!1651 = !DILocation(line: 44, column: 25, scope: !1620)
!1652 = !DILocation(line: 45, column: 28, scope: !1620)
!1653 = !DILocation(line: 46, column: 33, scope: !1620)
!1654 = !DILocation(line: 47, column: 33, scope: !1620)
!1655 = !DILocation(line: 48, column: 33, scope: !1620)
!1656 = !DILocation(line: 49, column: 28, scope: !1620)
!1657 = !DILocation(line: 55, column: 18, scope: !1620)
!1658 = !DILocation(line: 53, column: 7, scope: !1620)
!1659 = !DILocation(line: 58, column: 10, scope: !1620)
!1660 = !DILocation(line: 60, column: 12, scope: !1637)
!1661 = !DILocation(line: 61, column: 7, scope: !1637)
!1662 = !DILocation(line: 61, column: 15, scope: !1637)
!1663 = !DILocation(line: 52, column: 7, scope: !1620)
!1664 = !DILocation(line: 60, column: 7, scope: !1620)
!1665 = !DILocation(line: 66, column: 11, scope: !1635)
!1666 = !DILocation(line: 67, column: 11, scope: !1635)
!1667 = !DILocation(line: 71, column: 13, scope: !1634)
!1668 = !DILocation(line: 71, column: 21, scope: !1634)
!1669 = !DILocation(line: 72, column: 13, scope: !1634)
!1670 = !DILocation(line: 73, column: 29, scope: !1634)
!1671 = !DILocation(line: 73, column: 13, scope: !1634)
!1672 = !DILocation(line: 74, column: 13, scope: !1634)
!1673 = !DILocation(line: 84, column: 10, scope: !1620)
!1674 = !DILocation(line: 88, column: 10, scope: !1620)
!1675 = !DILocation(line: 89, column: 1, scope: !1620)
!1676 = distinct !DISubprogram(name: "set_program_name", scope: !47, file: !47, line: 39, type: !532, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !41, variables: !1677)
!1677 = !{!1678, !1679, !1680}
!1678 = !DILocalVariable(name: "argv0", arg: 1, scope: !1676, file: !47, line: 39, type: !10)
!1679 = !DILocalVariable(name: "slash", scope: !1676, file: !47, line: 46, type: !10)
!1680 = !DILocalVariable(name: "base", scope: !1676, file: !47, line: 47, type: !10)
!1681 = !DILocation(line: 39, column: 31, scope: !1676)
!1682 = !DILocation(line: 51, column: 13, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1676, file: !47, line: 51, column: 7)
!1684 = !DILocation(line: 51, column: 7, scope: !1676)
!1685 = !DILocation(line: 55, column: 14, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1683, file: !47, line: 52, column: 5)
!1687 = !DILocation(line: 54, column: 7, scope: !1686)
!1688 = !DILocation(line: 56, column: 7, scope: !1686)
!1689 = !DILocation(line: 59, column: 11, scope: !1676)
!1690 = !DILocation(line: 46, column: 15, scope: !1676)
!1691 = !DILocation(line: 60, column: 17, scope: !1676)
!1692 = !DILocation(line: 60, column: 33, scope: !1676)
!1693 = !DILocation(line: 60, column: 11, scope: !1676)
!1694 = !DILocation(line: 47, column: 15, scope: !1676)
!1695 = !DILocation(line: 61, column: 12, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1676, file: !47, line: 61, column: 7)
!1697 = !DILocation(line: 61, column: 20, scope: !1696)
!1698 = !DILocation(line: 61, column: 25, scope: !1696)
!1699 = !DILocation(line: 61, column: 42, scope: !1696)
!1700 = !DILocation(line: 61, column: 28, scope: !1696)
!1701 = !DILocation(line: 61, column: 61, scope: !1696)
!1702 = !DILocation(line: 61, column: 7, scope: !1676)
!1703 = !DILocation(line: 64, column: 11, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !47, line: 64, column: 11)
!1705 = distinct !DILexicalBlock(scope: !1696, file: !47, line: 62, column: 5)
!1706 = !DILocation(line: 64, column: 36, scope: !1704)
!1707 = !DILocation(line: 64, column: 11, scope: !1705)
!1708 = !DILocation(line: 66, column: 24, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1704, file: !47, line: 65, column: 9)
!1710 = !DILocation(line: 70, column: 41, scope: !1709)
!1711 = !DILocation(line: 72, column: 9, scope: !1709)
!1712 = !DILocation(line: 84, column: 16, scope: !1676)
!1713 = !DILocation(line: 90, column: 27, scope: !1676)
!1714 = !DILocation(line: 92, column: 1, scope: !1676)
!1715 = distinct !DISubprogram(name: "clone_quoting_options", scope: !95, file: !95, line: 114, type: !1716, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !1719)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!1718, !1718}
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!1719 = !{!1720, !1721, !1722}
!1720 = !DILocalVariable(name: "o", arg: 1, scope: !1715, file: !95, line: 114, type: !1718)
!1721 = !DILocalVariable(name: "e", scope: !1715, file: !95, line: 116, type: !20)
!1722 = !DILocalVariable(name: "p", scope: !1715, file: !95, line: 117, type: !1718)
!1723 = !DILocation(line: 114, column: 48, scope: !1715)
!1724 = !DILocation(line: 116, column: 11, scope: !1715)
!1725 = !DILocation(line: 116, column: 7, scope: !1715)
!1726 = !DILocation(line: 117, column: 40, scope: !1715)
!1727 = !DILocation(line: 117, column: 31, scope: !1715)
!1728 = !DILocation(line: 117, column: 27, scope: !1715)
!1729 = !DILocation(line: 119, column: 9, scope: !1715)
!1730 = !DILocation(line: 120, column: 3, scope: !1715)
!1731 = distinct !DISubprogram(name: "get_quoting_style", scope: !95, file: !95, line: 125, type: !1732, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !1736)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!53, !1734}
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!1736 = !{!1737}
!1737 = !DILocalVariable(name: "o", arg: 1, scope: !1731, file: !95, line: 125, type: !1734)
!1738 = !DILocation(line: 125, column: 50, scope: !1731)
!1739 = !DILocation(line: 127, column: 11, scope: !1731)
!1740 = !DILocation(line: 127, column: 46, scope: !1731)
!1741 = !{!1742, !616, i64 0}
!1742 = !{!"quoting_options", !616, i64 0, !1370, i64 4, !616, i64 8, !615, i64 40, !615, i64 48}
!1743 = !DILocation(line: 127, column: 3, scope: !1731)
!1744 = distinct !DISubprogram(name: "set_quoting_style", scope: !95, file: !95, line: 133, type: !1745, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !1747)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{null, !1718, !53}
!1747 = !{!1748, !1749}
!1748 = !DILocalVariable(name: "o", arg: 1, scope: !1744, file: !95, line: 133, type: !1718)
!1749 = !DILocalVariable(name: "s", arg: 2, scope: !1744, file: !95, line: 133, type: !53)
!1750 = !DILocation(line: 133, column: 44, scope: !1744)
!1751 = !DILocation(line: 133, column: 66, scope: !1744)
!1752 = !DILocation(line: 135, column: 4, scope: !1744)
!1753 = !DILocation(line: 135, column: 39, scope: !1744)
!1754 = !DILocation(line: 135, column: 45, scope: !1744)
!1755 = !DILocation(line: 136, column: 1, scope: !1744)
!1756 = distinct !DISubprogram(name: "set_char_quoting", scope: !95, file: !95, line: 144, type: !1757, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !1759)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!20, !1718, !12, !20}
!1759 = !{!1760, !1761, !1762, !1763, !1764, !1766, !1767}
!1760 = !DILocalVariable(name: "o", arg: 1, scope: !1756, file: !95, line: 144, type: !1718)
!1761 = !DILocalVariable(name: "c", arg: 2, scope: !1756, file: !95, line: 144, type: !12)
!1762 = !DILocalVariable(name: "i", arg: 3, scope: !1756, file: !95, line: 144, type: !20)
!1763 = !DILocalVariable(name: "uc", scope: !1756, file: !95, line: 146, type: !489)
!1764 = !DILocalVariable(name: "p", scope: !1756, file: !95, line: 147, type: !1765)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!1766 = !DILocalVariable(name: "shift", scope: !1756, file: !95, line: 149, type: !20)
!1767 = !DILocalVariable(name: "r", scope: !1756, file: !95, line: 150, type: !20)
!1768 = !DILocation(line: 144, column: 43, scope: !1756)
!1769 = !DILocation(line: 144, column: 51, scope: !1756)
!1770 = !DILocation(line: 144, column: 58, scope: !1756)
!1771 = !DILocation(line: 146, column: 17, scope: !1756)
!1772 = !DILocation(line: 148, column: 6, scope: !1756)
!1773 = !DILocation(line: 148, column: 62, scope: !1756)
!1774 = !DILocation(line: 148, column: 57, scope: !1756)
!1775 = !DILocation(line: 147, column: 17, scope: !1756)
!1776 = !DILocation(line: 149, column: 18, scope: !1756)
!1777 = !DILocation(line: 149, column: 15, scope: !1756)
!1778 = !DILocation(line: 149, column: 7, scope: !1756)
!1779 = !DILocation(line: 150, column: 12, scope: !1756)
!1780 = !DILocation(line: 150, column: 15, scope: !1756)
!1781 = !DILocation(line: 150, column: 25, scope: !1756)
!1782 = !DILocation(line: 150, column: 7, scope: !1756)
!1783 = !DILocation(line: 151, column: 13, scope: !1756)
!1784 = !DILocation(line: 151, column: 18, scope: !1756)
!1785 = !DILocation(line: 151, column: 23, scope: !1756)
!1786 = !DILocation(line: 151, column: 6, scope: !1756)
!1787 = !DILocation(line: 152, column: 3, scope: !1756)
!1788 = distinct !DISubprogram(name: "set_quoting_flags", scope: !95, file: !95, line: 160, type: !1789, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !1791)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!20, !1718, !20}
!1791 = !{!1792, !1793, !1794}
!1792 = !DILocalVariable(name: "o", arg: 1, scope: !1788, file: !95, line: 160, type: !1718)
!1793 = !DILocalVariable(name: "i", arg: 2, scope: !1788, file: !95, line: 160, type: !20)
!1794 = !DILocalVariable(name: "r", scope: !1788, file: !95, line: 162, type: !20)
!1795 = !DILocation(line: 160, column: 44, scope: !1788)
!1796 = !DILocation(line: 160, column: 51, scope: !1788)
!1797 = !DILocation(line: 163, column: 8, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1788, file: !95, line: 163, column: 7)
!1799 = !DILocation(line: 163, column: 7, scope: !1788)
!1800 = !DILocation(line: 165, column: 10, scope: !1788)
!1801 = !{!1742, !1370, i64 4}
!1802 = !DILocation(line: 162, column: 7, scope: !1788)
!1803 = !DILocation(line: 166, column: 12, scope: !1788)
!1804 = !DILocation(line: 167, column: 3, scope: !1788)
!1805 = distinct !DISubprogram(name: "set_custom_quoting", scope: !95, file: !95, line: 171, type: !1806, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !1808)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{null, !1718, !10, !10}
!1808 = !{!1809, !1810, !1811}
!1809 = !DILocalVariable(name: "o", arg: 1, scope: !1805, file: !95, line: 171, type: !1718)
!1810 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1805, file: !95, line: 172, type: !10)
!1811 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1805, file: !95, line: 172, type: !10)
!1812 = !DILocation(line: 171, column: 45, scope: !1805)
!1813 = !DILocation(line: 172, column: 33, scope: !1805)
!1814 = !DILocation(line: 172, column: 57, scope: !1805)
!1815 = !DILocation(line: 174, column: 8, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1805, file: !95, line: 174, column: 7)
!1817 = !DILocation(line: 174, column: 7, scope: !1805)
!1818 = !DILocation(line: 176, column: 6, scope: !1805)
!1819 = !DILocation(line: 176, column: 12, scope: !1805)
!1820 = !DILocation(line: 177, column: 8, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1805, file: !95, line: 177, column: 7)
!1822 = !DILocation(line: 177, column: 23, scope: !1821)
!1823 = !DILocation(line: 177, column: 19, scope: !1821)
!1824 = !DILocation(line: 178, column: 5, scope: !1821)
!1825 = !DILocation(line: 179, column: 6, scope: !1805)
!1826 = !DILocation(line: 179, column: 17, scope: !1805)
!1827 = !{!1742, !615, i64 40}
!1828 = !DILocation(line: 180, column: 6, scope: !1805)
!1829 = !DILocation(line: 180, column: 18, scope: !1805)
!1830 = !{!1742, !615, i64 48}
!1831 = !DILocation(line: 181, column: 1, scope: !1805)
!1832 = distinct !DISubprogram(name: "quotearg_buffer", scope: !95, file: !95, line: 776, type: !1833, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !1835)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!89, !45, !89, !10, !89, !1734}
!1835 = !{!1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843}
!1836 = !DILocalVariable(name: "buffer", arg: 1, scope: !1832, file: !95, line: 776, type: !45)
!1837 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1832, file: !95, line: 776, type: !89)
!1838 = !DILocalVariable(name: "arg", arg: 3, scope: !1832, file: !95, line: 777, type: !10)
!1839 = !DILocalVariable(name: "argsize", arg: 4, scope: !1832, file: !95, line: 777, type: !89)
!1840 = !DILocalVariable(name: "o", arg: 5, scope: !1832, file: !95, line: 778, type: !1734)
!1841 = !DILocalVariable(name: "p", scope: !1832, file: !95, line: 780, type: !1734)
!1842 = !DILocalVariable(name: "e", scope: !1832, file: !95, line: 781, type: !20)
!1843 = !DILocalVariable(name: "r", scope: !1832, file: !95, line: 782, type: !89)
!1844 = !DILocation(line: 776, column: 24, scope: !1832)
!1845 = !DILocation(line: 776, column: 39, scope: !1832)
!1846 = !DILocation(line: 777, column: 30, scope: !1832)
!1847 = !DILocation(line: 777, column: 42, scope: !1832)
!1848 = !DILocation(line: 778, column: 48, scope: !1832)
!1849 = !DILocation(line: 780, column: 37, scope: !1832)
!1850 = !DILocation(line: 780, column: 33, scope: !1832)
!1851 = !DILocation(line: 781, column: 11, scope: !1832)
!1852 = !DILocation(line: 781, column: 7, scope: !1832)
!1853 = !DILocation(line: 783, column: 43, scope: !1832)
!1854 = !DILocation(line: 783, column: 53, scope: !1832)
!1855 = !DILocation(line: 783, column: 60, scope: !1832)
!1856 = !DILocation(line: 784, column: 43, scope: !1832)
!1857 = !DILocation(line: 784, column: 58, scope: !1832)
!1858 = !DILocation(line: 782, column: 14, scope: !1832)
!1859 = !DILocation(line: 782, column: 10, scope: !1832)
!1860 = !DILocation(line: 785, column: 9, scope: !1832)
!1861 = !DILocation(line: 786, column: 3, scope: !1832)
!1862 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !95, file: !95, line: 248, type: !1863, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !1867)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!89, !45, !89, !10, !89, !53, !20, !1865, !10, !10}
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!1867 = !{!1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1892, !1893, !1894, !1895, !1896, !1899, !1900, !1918, !1921, !1922, !1929}
!1868 = !DILocalVariable(name: "buffer", arg: 1, scope: !1862, file: !95, line: 248, type: !45)
!1869 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1862, file: !95, line: 248, type: !89)
!1870 = !DILocalVariable(name: "arg", arg: 3, scope: !1862, file: !95, line: 249, type: !10)
!1871 = !DILocalVariable(name: "argsize", arg: 4, scope: !1862, file: !95, line: 249, type: !89)
!1872 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1862, file: !95, line: 250, type: !53)
!1873 = !DILocalVariable(name: "flags", arg: 6, scope: !1862, file: !95, line: 250, type: !20)
!1874 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1862, file: !95, line: 251, type: !1865)
!1875 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1862, file: !95, line: 252, type: !10)
!1876 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1862, file: !95, line: 253, type: !10)
!1877 = !DILocalVariable(name: "i", scope: !1862, file: !95, line: 255, type: !89)
!1878 = !DILocalVariable(name: "len", scope: !1862, file: !95, line: 256, type: !89)
!1879 = !DILocalVariable(name: "orig_buffersize", scope: !1862, file: !95, line: 257, type: !89)
!1880 = !DILocalVariable(name: "quote_string", scope: !1862, file: !95, line: 258, type: !10)
!1881 = !DILocalVariable(name: "quote_string_len", scope: !1862, file: !95, line: 259, type: !89)
!1882 = !DILocalVariable(name: "backslash_escapes", scope: !1862, file: !95, line: 260, type: !9)
!1883 = !DILocalVariable(name: "unibyte_locale", scope: !1862, file: !95, line: 261, type: !9)
!1884 = !DILocalVariable(name: "elide_outer_quotes", scope: !1862, file: !95, line: 262, type: !9)
!1885 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1862, file: !95, line: 263, type: !9)
!1886 = !DILocalVariable(name: "encountered_single_quote", scope: !1862, file: !95, line: 264, type: !9)
!1887 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1862, file: !95, line: 265, type: !9)
!1888 = !DILocalVariable(name: "c", scope: !1889, file: !95, line: 394, type: !489)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !95, line: 393, column: 5)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !95, line: 392, column: 3)
!1891 = distinct !DILexicalBlock(scope: !1862, file: !95, line: 392, column: 3)
!1892 = !DILocalVariable(name: "esc", scope: !1889, file: !95, line: 395, type: !489)
!1893 = !DILocalVariable(name: "is_right_quote", scope: !1889, file: !95, line: 396, type: !9)
!1894 = !DILocalVariable(name: "escaping", scope: !1889, file: !95, line: 397, type: !9)
!1895 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1889, file: !95, line: 398, type: !9)
!1896 = !DILocalVariable(name: "m", scope: !1897, file: !95, line: 602, type: !89)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !95, line: 600, column: 11)
!1898 = distinct !DILexicalBlock(scope: !1889, file: !95, line: 418, column: 9)
!1899 = !DILocalVariable(name: "printable", scope: !1897, file: !95, line: 604, type: !9)
!1900 = !DILocalVariable(name: "mbstate", scope: !1901, file: !95, line: 613, type: !1903)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !95, line: 612, column: 15)
!1902 = distinct !DILexicalBlock(scope: !1897, file: !95, line: 606, column: 17)
!1903 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1904, line: 6, baseType: !1905)
!1904 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1905 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1906, line: 21, baseType: !1907)
!1906 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1906, line: 13, size: 64, elements: !1908)
!1908 = !{!1909, !1910}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1907, file: !1906, line: 15, baseType: !20, size: 32)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1907, file: !1906, line: 20, baseType: !1911, size: 32, offset: 32)
!1911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1907, file: !1906, line: 16, size: 32, elements: !1912)
!1912 = !{!1913, !1914}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1911, file: !1906, line: 18, baseType: !108, size: 32)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1911, file: !1906, line: 19, baseType: !1915, size: 32)
!1915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 32, elements: !1916)
!1916 = !{!1917}
!1917 = !DISubrange(count: 4)
!1918 = !DILocalVariable(name: "w", scope: !1919, file: !95, line: 623, type: !1920)
!1919 = distinct !DILexicalBlock(scope: !1901, file: !95, line: 622, column: 19)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !90, line: 90, baseType: !20)
!1921 = !DILocalVariable(name: "bytes", scope: !1919, file: !95, line: 624, type: !89)
!1922 = !DILocalVariable(name: "j", scope: !1923, file: !95, line: 649, type: !89)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !95, line: 648, column: 27)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !95, line: 646, column: 29)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !95, line: 641, column: 23)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !95, line: 633, column: 30)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !95, line: 628, column: 30)
!1928 = distinct !DILexicalBlock(scope: !1919, file: !95, line: 626, column: 25)
!1929 = !DILocalVariable(name: "ilim", scope: !1930, file: !95, line: 676, type: !89)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !95, line: 673, column: 15)
!1931 = distinct !DILexicalBlock(scope: !1897, file: !95, line: 672, column: 17)
!1932 = !DILocation(line: 248, column: 33, scope: !1862)
!1933 = !DILocation(line: 248, column: 48, scope: !1862)
!1934 = !DILocation(line: 249, column: 39, scope: !1862)
!1935 = !DILocation(line: 249, column: 51, scope: !1862)
!1936 = !DILocation(line: 250, column: 46, scope: !1862)
!1937 = !DILocation(line: 250, column: 65, scope: !1862)
!1938 = !DILocation(line: 251, column: 47, scope: !1862)
!1939 = !DILocation(line: 252, column: 39, scope: !1862)
!1940 = !DILocation(line: 253, column: 39, scope: !1862)
!1941 = !DILocation(line: 256, column: 10, scope: !1862)
!1942 = !DILocation(line: 257, column: 10, scope: !1862)
!1943 = !DILocation(line: 258, column: 15, scope: !1862)
!1944 = !DILocation(line: 259, column: 10, scope: !1862)
!1945 = !DILocation(line: 260, column: 8, scope: !1862)
!1946 = !DILocation(line: 261, column: 25, scope: !1862)
!1947 = !DILocation(line: 261, column: 36, scope: !1862)
!1948 = !DILocation(line: 262, column: 8, scope: !1862)
!1949 = !DILocation(line: 263, column: 8, scope: !1862)
!1950 = !DILocation(line: 264, column: 8, scope: !1862)
!1951 = !DILocation(line: 265, column: 8, scope: !1862)
!1952 = !DILocation(line: 265, column: 3, scope: !1862)
!1953 = !DILocation(line: 308, column: 3, scope: !1862)
!1954 = !DILocation(line: 315, column: 11, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1862, file: !95, line: 309, column: 5)
!1956 = !DILocation(line: 315, column: 12, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1955, file: !95, line: 315, column: 11)
!1958 = !DILocation(line: 316, column: 9, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !95, line: 316, column: 9)
!1960 = distinct !DILexicalBlock(scope: !1957, file: !95, line: 316, column: 9)
!1961 = !DILocation(line: 316, column: 9, scope: !1960)
!1962 = !DILocation(line: 354, column: 26, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !95, line: 332, column: 11)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !95, line: 331, column: 13)
!1965 = distinct !DILexicalBlock(scope: !1955, file: !95, line: 330, column: 7)
!1966 = !DILocation(line: 355, column: 27, scope: !1963)
!1967 = !DILocation(line: 356, column: 11, scope: !1963)
!1968 = !DILocation(line: 357, column: 14, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1965, file: !95, line: 357, column: 13)
!1970 = !DILocation(line: 357, column: 13, scope: !1965)
!1971 = !DILocation(line: 358, column: 43, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !95, line: 358, column: 11)
!1973 = distinct !DILexicalBlock(scope: !1969, file: !95, line: 358, column: 11)
!1974 = !DILocation(line: 358, column: 11, scope: !1973)
!1975 = !DILocation(line: 359, column: 13, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !95, line: 359, column: 13)
!1977 = distinct !DILexicalBlock(scope: !1972, file: !95, line: 359, column: 13)
!1978 = !DILocation(line: 359, column: 13, scope: !1977)
!1979 = !DILocation(line: 358, column: 70, scope: !1972)
!1980 = distinct !{!1980, !1974, !1981}
!1981 = !DILocation(line: 359, column: 13, scope: !1973)
!1982 = !DILocation(line: 362, column: 28, scope: !1965)
!1983 = !DILocation(line: 364, column: 7, scope: !1955)
!1984 = !DILocation(line: 367, column: 7, scope: !1955)
!1985 = !DILocation(line: 370, column: 7, scope: !1955)
!1986 = !DILocation(line: 373, column: 12, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1955, file: !95, line: 373, column: 11)
!1988 = !DILocation(line: 373, column: 11, scope: !1955)
!1989 = !DILocation(line: 378, column: 12, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1955, file: !95, line: 378, column: 11)
!1991 = !DILocation(line: 378, column: 11, scope: !1955)
!1992 = !DILocation(line: 379, column: 9, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !95, line: 379, column: 9)
!1994 = distinct !DILexicalBlock(scope: !1990, file: !95, line: 379, column: 9)
!1995 = !DILocation(line: 379, column: 9, scope: !1994)
!1996 = !DILocation(line: 386, column: 7, scope: !1955)
!1997 = !DILocation(line: 389, column: 7, scope: !1955)
!1998 = !DILocation(line: 255, column: 10, scope: !1862)
!1999 = !DILocation(line: 392, column: 8, scope: !1891)
!2000 = !DILocation(line: 392, column: 27, scope: !1890)
!2001 = !DILocation(line: 392, column: 19, scope: !1890)
!2002 = !DILocation(line: 392, column: 60, scope: !1890)
!2003 = !DILocation(line: 392, column: 3, scope: !1891)
!2004 = !DILocation(line: 392, column: 41, scope: !1890)
!2005 = !DILocation(line: 392, column: 48, scope: !1890)
!2006 = !DILocation(line: 396, column: 12, scope: !1889)
!2007 = !DILocation(line: 397, column: 12, scope: !1889)
!2008 = !DILocation(line: 398, column: 12, scope: !1889)
!2009 = !DILocation(line: 401, column: 11, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1889, file: !95, line: 400, column: 11)
!2011 = !DILocation(line: 403, column: 17, scope: !2010)
!2012 = !DILocation(line: 404, column: 39, scope: !2010)
!2013 = !DILocation(line: 408, column: 32, scope: !2010)
!2014 = !DILocation(line: 404, column: 19, scope: !2010)
!2015 = !DILocation(line: 404, column: 15, scope: !2010)
!2016 = !DILocation(line: 409, column: 11, scope: !2010)
!2017 = !DILocation(line: 409, column: 26, scope: !2010)
!2018 = !DILocation(line: 409, column: 14, scope: !2010)
!2019 = !DILocation(line: 409, column: 63, scope: !2010)
!2020 = !DILocation(line: 400, column: 11, scope: !1889)
!2021 = !DILocation(line: 416, column: 11, scope: !1889)
!2022 = !DILocation(line: 394, column: 21, scope: !1889)
!2023 = !DILocation(line: 417, column: 7, scope: !1889)
!2024 = !DILocation(line: 420, column: 15, scope: !1898)
!2025 = !DILocation(line: 422, column: 15, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !95, line: 422, column: 15)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !95, line: 421, column: 13)
!2028 = distinct !DILexicalBlock(scope: !1898, file: !95, line: 420, column: 15)
!2029 = !DILocation(line: 422, column: 15, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2026, file: !95, line: 422, column: 15)
!2031 = !DILocation(line: 422, column: 15, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !95, line: 422, column: 15)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !95, line: 422, column: 15)
!2034 = distinct !DILexicalBlock(scope: !2030, file: !95, line: 422, column: 15)
!2035 = !DILocation(line: 422, column: 15, scope: !2033)
!2036 = !DILocation(line: 422, column: 15, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !95, line: 422, column: 15)
!2038 = distinct !DILexicalBlock(scope: !2034, file: !95, line: 422, column: 15)
!2039 = !DILocation(line: 422, column: 15, scope: !2038)
!2040 = !DILocation(line: 422, column: 15, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !95, line: 422, column: 15)
!2042 = distinct !DILexicalBlock(scope: !2034, file: !95, line: 422, column: 15)
!2043 = !DILocation(line: 422, column: 15, scope: !2042)
!2044 = !DILocation(line: 422, column: 15, scope: !2034)
!2045 = !DILocation(line: 422, column: 15, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !95, line: 422, column: 15)
!2047 = distinct !DILexicalBlock(scope: !2026, file: !95, line: 422, column: 15)
!2048 = !DILocation(line: 422, column: 15, scope: !2047)
!2049 = !DILocation(line: 430, column: 19, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2027, file: !95, line: 429, column: 19)
!2051 = !DILocation(line: 430, column: 24, scope: !2050)
!2052 = !DILocation(line: 430, column: 28, scope: !2050)
!2053 = !DILocation(line: 430, column: 38, scope: !2050)
!2054 = !DILocation(line: 430, column: 48, scope: !2050)
!2055 = !DILocation(line: 430, column: 59, scope: !2050)
!2056 = !DILocation(line: 432, column: 19, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !95, line: 432, column: 19)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !95, line: 432, column: 19)
!2059 = distinct !DILexicalBlock(scope: !2050, file: !95, line: 431, column: 17)
!2060 = !DILocation(line: 432, column: 19, scope: !2058)
!2061 = !DILocation(line: 433, column: 19, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !95, line: 433, column: 19)
!2063 = distinct !DILexicalBlock(scope: !2059, file: !95, line: 433, column: 19)
!2064 = !DILocation(line: 433, column: 19, scope: !2063)
!2065 = !DILocation(line: 434, column: 17, scope: !2059)
!2066 = !DILocation(line: 441, column: 20, scope: !2028)
!2067 = !DILocation(line: 446, column: 11, scope: !1898)
!2068 = !DILocation(line: 449, column: 19, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !1898, file: !95, line: 447, column: 13)
!2070 = !DILocation(line: 455, column: 19, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2069, file: !95, line: 454, column: 19)
!2072 = !DILocation(line: 455, column: 24, scope: !2071)
!2073 = !DILocation(line: 455, column: 28, scope: !2071)
!2074 = !DILocation(line: 455, column: 38, scope: !2071)
!2075 = !DILocation(line: 455, column: 47, scope: !2071)
!2076 = !DILocation(line: 455, column: 41, scope: !2071)
!2077 = !DILocation(line: 455, column: 52, scope: !2071)
!2078 = !DILocation(line: 454, column: 19, scope: !2069)
!2079 = !DILocation(line: 456, column: 25, scope: !2071)
!2080 = !DILocation(line: 456, column: 17, scope: !2071)
!2081 = !DILocation(line: 463, column: 25, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2071, file: !95, line: 457, column: 19)
!2083 = !DILocation(line: 467, column: 21, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !95, line: 467, column: 21)
!2085 = distinct !DILexicalBlock(scope: !2082, file: !95, line: 467, column: 21)
!2086 = !DILocation(line: 467, column: 21, scope: !2085)
!2087 = !DILocation(line: 468, column: 21, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !95, line: 468, column: 21)
!2089 = distinct !DILexicalBlock(scope: !2082, file: !95, line: 468, column: 21)
!2090 = !DILocation(line: 468, column: 21, scope: !2089)
!2091 = !DILocation(line: 469, column: 21, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !95, line: 469, column: 21)
!2093 = distinct !DILexicalBlock(scope: !2082, file: !95, line: 469, column: 21)
!2094 = !DILocation(line: 469, column: 21, scope: !2093)
!2095 = !DILocation(line: 470, column: 21, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !95, line: 470, column: 21)
!2097 = distinct !DILexicalBlock(scope: !2082, file: !95, line: 470, column: 21)
!2098 = !DILocation(line: 470, column: 21, scope: !2097)
!2099 = !DILocation(line: 471, column: 21, scope: !2082)
!2100 = !DILocation(line: 395, column: 21, scope: !1889)
!2101 = !DILocation(line: 484, column: 31, scope: !1898)
!2102 = !DILocation(line: 485, column: 31, scope: !1898)
!2103 = !DILocation(line: 487, column: 31, scope: !1898)
!2104 = !DILocation(line: 488, column: 31, scope: !1898)
!2105 = !DILocation(line: 489, column: 31, scope: !1898)
!2106 = !DILocation(line: 492, column: 15, scope: !1898)
!2107 = !DILocation(line: 494, column: 19, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !95, line: 493, column: 13)
!2109 = distinct !DILexicalBlock(scope: !1898, file: !95, line: 492, column: 15)
!2110 = !DILocation(line: 501, column: 33, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !1898, file: !95, line: 501, column: 15)
!2112 = !DILocation(line: 506, column: 15, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !1898, file: !95, line: 505, column: 15)
!2114 = !DILocation(line: 510, column: 15, scope: !1898)
!2115 = !DILocation(line: 518, column: 26, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !1898, file: !95, line: 518, column: 15)
!2117 = !DILocation(line: 518, column: 15, scope: !1898)
!2118 = !DILocation(line: 518, column: 40, scope: !2116)
!2119 = !DILocation(line: 518, column: 47, scope: !2116)
!2120 = !DILocation(line: 522, column: 17, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !1898, file: !95, line: 522, column: 15)
!2122 = !DILocation(line: 518, column: 18, scope: !2116)
!2123 = !DILocation(line: 518, column: 65, scope: !2116)
!2124 = !DILocation(line: 522, column: 15, scope: !1898)
!2125 = !DILocation(line: 526, column: 11, scope: !1898)
!2126 = !DILocation(line: 541, column: 15, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !1898, file: !95, line: 540, column: 15)
!2128 = !DILocation(line: 548, column: 15, scope: !1898)
!2129 = !DILocation(line: 550, column: 19, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !95, line: 549, column: 13)
!2131 = distinct !DILexicalBlock(scope: !1898, file: !95, line: 548, column: 15)
!2132 = !DILocation(line: 553, column: 19, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2130, file: !95, line: 553, column: 19)
!2134 = !DILocation(line: 553, column: 35, scope: !2133)
!2135 = !DILocation(line: 553, column: 30, scope: !2133)
!2136 = !DILocation(line: 562, column: 15, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !95, line: 562, column: 15)
!2138 = distinct !DILexicalBlock(scope: !2130, file: !95, line: 562, column: 15)
!2139 = !DILocation(line: 562, column: 15, scope: !2138)
!2140 = !DILocation(line: 563, column: 15, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !95, line: 563, column: 15)
!2142 = distinct !DILexicalBlock(scope: !2130, file: !95, line: 563, column: 15)
!2143 = !DILocation(line: 563, column: 15, scope: !2142)
!2144 = !DILocation(line: 564, column: 15, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !95, line: 564, column: 15)
!2146 = distinct !DILexicalBlock(scope: !2130, file: !95, line: 564, column: 15)
!2147 = !DILocation(line: 564, column: 15, scope: !2146)
!2148 = !DILocation(line: 566, column: 13, scope: !2130)
!2149 = !DILocation(line: 606, column: 17, scope: !1897)
!2150 = !DILocation(line: 602, column: 20, scope: !1897)
!2151 = !DILocation(line: 609, column: 29, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !1902, file: !95, line: 607, column: 15)
!2153 = !{!2154, !2154, i64 0}
!2154 = !{!"short", !616, i64 0}
!2155 = !DILocation(line: 609, column: 27, scope: !2152)
!2156 = !DILocation(line: 604, column: 18, scope: !1897)
!2157 = !DILocation(line: 610, column: 15, scope: !2152)
!2158 = !DILocation(line: 613, column: 17, scope: !1901)
!2159 = !DILocation(line: 614, column: 17, scope: !1901)
!2160 = !DILocation(line: 618, column: 29, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !1901, file: !95, line: 618, column: 21)
!2162 = !DILocation(line: 618, column: 21, scope: !1901)
!2163 = !DILocation(line: 619, column: 29, scope: !2161)
!2164 = !DILocation(line: 619, column: 19, scope: !2161)
!2165 = !DILocation(line: 621, column: 17, scope: !1901)
!2166 = distinct !{!2166, !2165, !2167}
!2167 = !DILocation(line: 667, column: 44, scope: !1901)
!2168 = !DILocation(line: 623, column: 21, scope: !1919)
!2169 = !DILocation(line: 624, column: 56, scope: !1919)
!2170 = !DILocation(line: 624, column: 50, scope: !1919)
!2171 = !DILocation(line: 625, column: 53, scope: !1919)
!2172 = !DILocation(line: 613, column: 27, scope: !1901)
!2173 = !DILocation(line: 623, column: 29, scope: !1919)
!2174 = !DILocation(line: 624, column: 36, scope: !1919)
!2175 = !DILocation(line: 624, column: 28, scope: !1919)
!2176 = !DILocation(line: 626, column: 25, scope: !1919)
!2177 = !DILocation(line: 636, column: 38, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !1926, file: !95, line: 634, column: 23)
!2179 = !DILocation(line: 636, column: 48, scope: !2178)
!2180 = !DILocation(line: 636, column: 51, scope: !2178)
!2181 = !DILocation(line: 636, column: 25, scope: !2178)
!2182 = !DILocation(line: 637, column: 28, scope: !2178)
!2183 = !DILocation(line: 636, column: 34, scope: !2178)
!2184 = distinct !{!2184, !2181, !2182}
!2185 = !DILocation(line: 650, column: 43, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !95, line: 650, column: 29)
!2187 = distinct !DILexicalBlock(scope: !1923, file: !95, line: 650, column: 29)
!2188 = !DILocation(line: 647, column: 29, scope: !1924)
!2189 = !DILocation(line: 649, column: 36, scope: !1923)
!2190 = !DILocation(line: 651, column: 49, scope: !2186)
!2191 = !DILocation(line: 651, column: 39, scope: !2186)
!2192 = !DILocation(line: 651, column: 31, scope: !2186)
!2193 = !DILocation(line: 650, column: 53, scope: !2186)
!2194 = !DILocation(line: 650, column: 29, scope: !2187)
!2195 = distinct !{!2195, !2194, !2196}
!2196 = !DILocation(line: 659, column: 33, scope: !2187)
!2197 = !DILocation(line: 666, column: 19, scope: !1901)
!2198 = !DILocation(line: 662, column: 41, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !1925, file: !95, line: 662, column: 29)
!2200 = !DILocation(line: 662, column: 31, scope: !2199)
!2201 = !DILocation(line: 662, column: 29, scope: !1925)
!2202 = !DILocation(line: 664, column: 27, scope: !1925)
!2203 = !DILocation(line: 667, column: 26, scope: !1901)
!2204 = !DILocation(line: 667, column: 24, scope: !1901)
!2205 = !DILocation(line: 666, column: 19, scope: !1919)
!2206 = !DILocation(line: 668, column: 15, scope: !1902)
!2207 = !DILocation(line: 670, column: 40, scope: !1897)
!2208 = !DILocation(line: 672, column: 19, scope: !1931)
!2209 = !DILocation(line: 672, column: 45, scope: !1931)
!2210 = !DILocation(line: 672, column: 23, scope: !1931)
!2211 = !DILocation(line: 676, column: 33, scope: !1930)
!2212 = !DILocation(line: 676, column: 24, scope: !1930)
!2213 = !DILocation(line: 678, column: 17, scope: !1930)
!2214 = !DILocation(line: 680, column: 43, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !95, line: 680, column: 25)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !95, line: 679, column: 19)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !95, line: 678, column: 17)
!2218 = distinct !DILexicalBlock(scope: !1930, file: !95, line: 678, column: 17)
!2219 = !DILocation(line: 682, column: 25, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !95, line: 682, column: 25)
!2221 = distinct !DILexicalBlock(scope: !2215, file: !95, line: 681, column: 23)
!2222 = !DILocation(line: 682, column: 25, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2220, file: !95, line: 682, column: 25)
!2224 = !DILocation(line: 682, column: 25, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !95, line: 682, column: 25)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !95, line: 682, column: 25)
!2227 = distinct !DILexicalBlock(scope: !2223, file: !95, line: 682, column: 25)
!2228 = !DILocation(line: 682, column: 25, scope: !2226)
!2229 = !DILocation(line: 682, column: 25, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !95, line: 682, column: 25)
!2231 = distinct !DILexicalBlock(scope: !2227, file: !95, line: 682, column: 25)
!2232 = !DILocation(line: 682, column: 25, scope: !2231)
!2233 = !DILocation(line: 682, column: 25, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !95, line: 682, column: 25)
!2235 = distinct !DILexicalBlock(scope: !2227, file: !95, line: 682, column: 25)
!2236 = !DILocation(line: 682, column: 25, scope: !2235)
!2237 = !DILocation(line: 682, column: 25, scope: !2227)
!2238 = !DILocation(line: 682, column: 25, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !95, line: 682, column: 25)
!2240 = distinct !DILexicalBlock(scope: !2220, file: !95, line: 682, column: 25)
!2241 = !DILocation(line: 682, column: 25, scope: !2240)
!2242 = !DILocation(line: 683, column: 25, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !95, line: 683, column: 25)
!2244 = distinct !DILexicalBlock(scope: !2221, file: !95, line: 683, column: 25)
!2245 = !DILocation(line: 683, column: 25, scope: !2244)
!2246 = !DILocation(line: 684, column: 25, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !95, line: 684, column: 25)
!2248 = distinct !DILexicalBlock(scope: !2221, file: !95, line: 684, column: 25)
!2249 = !DILocation(line: 684, column: 25, scope: !2248)
!2250 = !DILocation(line: 685, column: 38, scope: !2221)
!2251 = !DILocation(line: 685, column: 33, scope: !2221)
!2252 = !DILocation(line: 686, column: 23, scope: !2221)
!2253 = !DILocation(line: 687, column: 30, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2215, file: !95, line: 687, column: 30)
!2255 = !DILocation(line: 687, column: 30, scope: !2215)
!2256 = !DILocation(line: 689, column: 25, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !95, line: 689, column: 25)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !95, line: 689, column: 25)
!2259 = distinct !DILexicalBlock(scope: !2254, file: !95, line: 688, column: 23)
!2260 = !DILocation(line: 689, column: 25, scope: !2258)
!2261 = !DILocation(line: 691, column: 23, scope: !2259)
!2262 = !DILocation(line: 692, column: 35, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2216, file: !95, line: 692, column: 25)
!2264 = !DILocation(line: 692, column: 30, scope: !2263)
!2265 = !DILocation(line: 692, column: 25, scope: !2216)
!2266 = !DILocation(line: 694, column: 21, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !95, line: 694, column: 21)
!2268 = distinct !DILexicalBlock(scope: !2216, file: !95, line: 694, column: 21)
!2269 = !DILocation(line: 694, column: 21, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !95, line: 694, column: 21)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !95, line: 694, column: 21)
!2272 = distinct !DILexicalBlock(scope: !2267, file: !95, line: 694, column: 21)
!2273 = !DILocation(line: 694, column: 21, scope: !2271)
!2274 = !DILocation(line: 694, column: 21, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !95, line: 694, column: 21)
!2276 = distinct !DILexicalBlock(scope: !2272, file: !95, line: 694, column: 21)
!2277 = !DILocation(line: 694, column: 21, scope: !2276)
!2278 = !DILocation(line: 694, column: 21, scope: !2272)
!2279 = !DILocation(line: 695, column: 21, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !95, line: 695, column: 21)
!2281 = distinct !DILexicalBlock(scope: !2216, file: !95, line: 695, column: 21)
!2282 = !DILocation(line: 695, column: 21, scope: !2281)
!2283 = !DILocation(line: 696, column: 25, scope: !2216)
!2284 = !DILocation(line: 678, column: 17, scope: !2217)
!2285 = distinct !{!2285, !2286, !2287}
!2286 = !DILocation(line: 678, column: 17, scope: !2218)
!2287 = !DILocation(line: 697, column: 19, scope: !2218)
!2288 = !DILocation(line: 704, column: 34, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !1889, file: !95, line: 704, column: 11)
!2290 = !DILocation(line: 706, column: 14, scope: !2289)
!2291 = !DILocation(line: 707, column: 14, scope: !2289)
!2292 = !DILocation(line: 707, column: 35, scope: !2289)
!2293 = !DILocation(line: 707, column: 17, scope: !2289)
!2294 = !DILocation(line: 707, column: 53, scope: !2289)
!2295 = !DILocation(line: 707, column: 47, scope: !2289)
!2296 = !DILocation(line: 707, column: 65, scope: !2289)
!2297 = !DILocation(line: 708, column: 15, scope: !2289)
!2298 = !DILocation(line: 708, column: 11, scope: !2289)
!2299 = !DILocation(line: 704, column: 11, scope: !1889)
!2300 = !DILocation(line: 712, column: 7, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !1889, file: !95, line: 712, column: 7)
!2302 = !DILocation(line: 712, column: 7, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2301, file: !95, line: 712, column: 7)
!2304 = !DILocation(line: 712, column: 7, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !95, line: 712, column: 7)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !95, line: 712, column: 7)
!2307 = distinct !DILexicalBlock(scope: !2303, file: !95, line: 712, column: 7)
!2308 = !DILocation(line: 712, column: 7, scope: !2306)
!2309 = !DILocation(line: 712, column: 7, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !95, line: 712, column: 7)
!2311 = distinct !DILexicalBlock(scope: !2307, file: !95, line: 712, column: 7)
!2312 = !DILocation(line: 712, column: 7, scope: !2311)
!2313 = !DILocation(line: 712, column: 7, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !95, line: 712, column: 7)
!2315 = distinct !DILexicalBlock(scope: !2307, file: !95, line: 712, column: 7)
!2316 = !DILocation(line: 712, column: 7, scope: !2315)
!2317 = !DILocation(line: 712, column: 7, scope: !2307)
!2318 = !DILocation(line: 712, column: 7, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !95, line: 712, column: 7)
!2320 = distinct !DILexicalBlock(scope: !2301, file: !95, line: 712, column: 7)
!2321 = !DILocation(line: 712, column: 7, scope: !2320)
!2322 = !DILocation(line: 715, column: 7, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !95, line: 715, column: 7)
!2324 = distinct !DILexicalBlock(scope: !1889, file: !95, line: 715, column: 7)
!2325 = !DILocation(line: 715, column: 7, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !95, line: 715, column: 7)
!2327 = distinct !DILexicalBlock(scope: !2328, file: !95, line: 715, column: 7)
!2328 = distinct !DILexicalBlock(scope: !2323, file: !95, line: 715, column: 7)
!2329 = !DILocation(line: 715, column: 7, scope: !2327)
!2330 = !DILocation(line: 715, column: 7, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !95, line: 715, column: 7)
!2332 = distinct !DILexicalBlock(scope: !2328, file: !95, line: 715, column: 7)
!2333 = !DILocation(line: 715, column: 7, scope: !2332)
!2334 = !DILocation(line: 715, column: 7, scope: !2328)
!2335 = !DILocation(line: 716, column: 7, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2337, file: !95, line: 716, column: 7)
!2337 = distinct !DILexicalBlock(scope: !1889, file: !95, line: 716, column: 7)
!2338 = !DILocation(line: 716, column: 7, scope: !2337)
!2339 = !DILocation(line: 718, column: 13, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !1889, file: !95, line: 718, column: 11)
!2341 = !DILocation(line: 718, column: 11, scope: !1889)
!2342 = !DILocation(line: 720, column: 5, scope: !1890)
!2343 = !DILocation(line: 392, column: 75, scope: !1890)
!2344 = !DILocation(line: 392, column: 3, scope: !1890)
!2345 = distinct !{!2345, !2003, !2346}
!2346 = !DILocation(line: 720, column: 5, scope: !1891)
!2347 = !DILocation(line: 722, column: 11, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !1862, file: !95, line: 722, column: 7)
!2349 = !DILocation(line: 722, column: 16, scope: !2348)
!2350 = !DILocation(line: 730, column: 51, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !1862, file: !95, line: 730, column: 7)
!2352 = !DILocation(line: 731, column: 10, scope: !2351)
!2353 = !DILocation(line: 733, column: 11, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !95, line: 733, column: 11)
!2355 = distinct !DILexicalBlock(scope: !2351, file: !95, line: 732, column: 5)
!2356 = !DILocation(line: 733, column: 11, scope: !2355)
!2357 = !DILocation(line: 734, column: 16, scope: !2354)
!2358 = !DILocation(line: 734, column: 9, scope: !2354)
!2359 = !DILocation(line: 738, column: 18, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2354, file: !95, line: 738, column: 16)
!2361 = !DILocation(line: 738, column: 32, scope: !2360)
!2362 = !DILocation(line: 738, column: 29, scope: !2360)
!2363 = !DILocation(line: 747, column: 7, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !1862, file: !95, line: 747, column: 7)
!2365 = !DILocation(line: 747, column: 20, scope: !2364)
!2366 = !DILocation(line: 748, column: 12, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !95, line: 748, column: 5)
!2368 = distinct !DILexicalBlock(scope: !2364, file: !95, line: 748, column: 5)
!2369 = !DILocation(line: 748, column: 5, scope: !2368)
!2370 = !DILocation(line: 749, column: 7, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2372, file: !95, line: 749, column: 7)
!2372 = distinct !DILexicalBlock(scope: !2367, file: !95, line: 749, column: 7)
!2373 = !DILocation(line: 749, column: 7, scope: !2372)
!2374 = !DILocation(line: 748, column: 39, scope: !2367)
!2375 = distinct !{!2375, !2369, !2376}
!2376 = !DILocation(line: 749, column: 7, scope: !2368)
!2377 = !DILocation(line: 751, column: 11, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !1862, file: !95, line: 751, column: 7)
!2379 = !DILocation(line: 751, column: 7, scope: !1862)
!2380 = !DILocation(line: 752, column: 5, scope: !2378)
!2381 = !DILocation(line: 752, column: 17, scope: !2378)
!2382 = !DILocation(line: 758, column: 21, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !1862, file: !95, line: 758, column: 7)
!2384 = !DILocation(line: 758, column: 54, scope: !2383)
!2385 = !DILocation(line: 758, column: 51, scope: !2383)
!2386 = !DILocation(line: 762, column: 42, scope: !1862)
!2387 = !DILocation(line: 760, column: 10, scope: !1862)
!2388 = !DILocation(line: 760, column: 3, scope: !1862)
!2389 = !DILocation(line: 764, column: 1, scope: !1862)
!2390 = distinct !DISubprogram(name: "gettext_quote", scope: !95, file: !95, line: 199, type: !2391, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !2393)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!10, !10, !53}
!2393 = !{!2394, !2395, !2396, !2397}
!2394 = !DILocalVariable(name: "msgid", arg: 1, scope: !2390, file: !95, line: 199, type: !10)
!2395 = !DILocalVariable(name: "s", arg: 2, scope: !2390, file: !95, line: 199, type: !53)
!2396 = !DILocalVariable(name: "translation", scope: !2390, file: !95, line: 201, type: !10)
!2397 = !DILocalVariable(name: "locale_code", scope: !2390, file: !95, line: 202, type: !10)
!2398 = !DILocation(line: 199, column: 28, scope: !2390)
!2399 = !DILocation(line: 199, column: 54, scope: !2390)
!2400 = !DILocation(line: 201, column: 29, scope: !2390)
!2401 = !DILocation(line: 201, column: 15, scope: !2390)
!2402 = !DILocation(line: 204, column: 19, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2390, file: !95, line: 204, column: 7)
!2404 = !DILocation(line: 204, column: 7, scope: !2390)
!2405 = !DILocation(line: 225, column: 17, scope: !2390)
!2406 = !DILocation(line: 202, column: 15, scope: !2390)
!2407 = !DILocalVariable(name: "s2", arg: 2, scope: !2408, file: !2409, line: 160, type: !10)
!2408 = distinct !DISubprogram(name: "strcaseeq0", scope: !2409, file: !2409, line: 160, type: !2410, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !2412)
!2409 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!20, !10, !10, !12, !12, !12, !12, !12, !12, !12, !12, !12}
!2412 = !{!2413, !2407, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422}
!2413 = !DILocalVariable(name: "s1", arg: 1, scope: !2408, file: !2409, line: 160, type: !10)
!2414 = !DILocalVariable(name: "s20", arg: 3, scope: !2408, file: !2409, line: 160, type: !12)
!2415 = !DILocalVariable(name: "s21", arg: 4, scope: !2408, file: !2409, line: 160, type: !12)
!2416 = !DILocalVariable(name: "s22", arg: 5, scope: !2408, file: !2409, line: 160, type: !12)
!2417 = !DILocalVariable(name: "s23", arg: 6, scope: !2408, file: !2409, line: 160, type: !12)
!2418 = !DILocalVariable(name: "s24", arg: 7, scope: !2408, file: !2409, line: 160, type: !12)
!2419 = !DILocalVariable(name: "s25", arg: 8, scope: !2408, file: !2409, line: 160, type: !12)
!2420 = !DILocalVariable(name: "s26", arg: 9, scope: !2408, file: !2409, line: 160, type: !12)
!2421 = !DILocalVariable(name: "s27", arg: 10, scope: !2408, file: !2409, line: 160, type: !12)
!2422 = !DILocalVariable(name: "s28", arg: 11, scope: !2408, file: !2409, line: 160, type: !12)
!2423 = !DILocation(line: 160, column: 41, scope: !2408, inlinedAt: !2424)
!2424 = distinct !DILocation(line: 226, column: 7, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2390, file: !95, line: 226, column: 7)
!2426 = !DILocation(line: 160, column: 120, scope: !2408, inlinedAt: !2424)
!2427 = !DILocation(line: 160, column: 130, scope: !2408, inlinedAt: !2424)
!2428 = !DILocation(line: 162, column: 7, scope: !2429, inlinedAt: !2424)
!2429 = distinct !DILexicalBlock(scope: !2408, file: !2409, line: 162, column: 7)
!2430 = !DILocalVariable(name: "s2", arg: 2, scope: !2431, file: !2409, line: 146, type: !10)
!2431 = distinct !DISubprogram(name: "strcaseeq1", scope: !2409, file: !2409, line: 146, type: !2432, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !2434)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!20, !10, !10, !12, !12, !12, !12, !12, !12, !12, !12}
!2434 = !{!2435, !2430, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443}
!2435 = !DILocalVariable(name: "s1", arg: 1, scope: !2431, file: !2409, line: 146, type: !10)
!2436 = !DILocalVariable(name: "s21", arg: 3, scope: !2431, file: !2409, line: 146, type: !12)
!2437 = !DILocalVariable(name: "s22", arg: 4, scope: !2431, file: !2409, line: 146, type: !12)
!2438 = !DILocalVariable(name: "s23", arg: 5, scope: !2431, file: !2409, line: 146, type: !12)
!2439 = !DILocalVariable(name: "s24", arg: 6, scope: !2431, file: !2409, line: 146, type: !12)
!2440 = !DILocalVariable(name: "s25", arg: 7, scope: !2431, file: !2409, line: 146, type: !12)
!2441 = !DILocalVariable(name: "s26", arg: 8, scope: !2431, file: !2409, line: 146, type: !12)
!2442 = !DILocalVariable(name: "s27", arg: 9, scope: !2431, file: !2409, line: 146, type: !12)
!2443 = !DILocalVariable(name: "s28", arg: 10, scope: !2431, file: !2409, line: 146, type: !12)
!2444 = !DILocation(line: 146, column: 41, scope: !2431, inlinedAt: !2445)
!2445 = distinct !DILocation(line: 167, column: 16, scope: !2446, inlinedAt: !2424)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !2409, line: 164, column: 11)
!2447 = distinct !DILexicalBlock(scope: !2429, file: !2409, line: 163, column: 5)
!2448 = !DILocation(line: 146, column: 110, scope: !2431, inlinedAt: !2445)
!2449 = !DILocation(line: 146, column: 120, scope: !2431, inlinedAt: !2445)
!2450 = !DILocation(line: 148, column: 7, scope: !2451, inlinedAt: !2445)
!2451 = distinct !DILexicalBlock(scope: !2431, file: !2409, line: 148, column: 7)
!2452 = !DILocalVariable(name: "s2", arg: 2, scope: !2453, file: !2409, line: 132, type: !10)
!2453 = distinct !DISubprogram(name: "strcaseeq2", scope: !2409, file: !2409, line: 132, type: !2454, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !2456)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!20, !10, !10, !12, !12, !12, !12, !12, !12, !12}
!2456 = !{!2457, !2452, !2458, !2459, !2460, !2461, !2462, !2463, !2464}
!2457 = !DILocalVariable(name: "s1", arg: 1, scope: !2453, file: !2409, line: 132, type: !10)
!2458 = !DILocalVariable(name: "s22", arg: 3, scope: !2453, file: !2409, line: 132, type: !12)
!2459 = !DILocalVariable(name: "s23", arg: 4, scope: !2453, file: !2409, line: 132, type: !12)
!2460 = !DILocalVariable(name: "s24", arg: 5, scope: !2453, file: !2409, line: 132, type: !12)
!2461 = !DILocalVariable(name: "s25", arg: 6, scope: !2453, file: !2409, line: 132, type: !12)
!2462 = !DILocalVariable(name: "s26", arg: 7, scope: !2453, file: !2409, line: 132, type: !12)
!2463 = !DILocalVariable(name: "s27", arg: 8, scope: !2453, file: !2409, line: 132, type: !12)
!2464 = !DILocalVariable(name: "s28", arg: 9, scope: !2453, file: !2409, line: 132, type: !12)
!2465 = !DILocation(line: 132, column: 41, scope: !2453, inlinedAt: !2466)
!2466 = distinct !DILocation(line: 153, column: 16, scope: !2467, inlinedAt: !2445)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !2409, line: 150, column: 11)
!2468 = distinct !DILexicalBlock(scope: !2451, file: !2409, line: 149, column: 5)
!2469 = !DILocation(line: 132, column: 100, scope: !2453, inlinedAt: !2466)
!2470 = !DILocation(line: 132, column: 110, scope: !2453, inlinedAt: !2466)
!2471 = !DILocation(line: 134, column: 7, scope: !2472, inlinedAt: !2466)
!2472 = distinct !DILexicalBlock(scope: !2453, file: !2409, line: 134, column: 7)
!2473 = !DILocalVariable(name: "s2", arg: 2, scope: !2474, file: !2409, line: 118, type: !10)
!2474 = distinct !DISubprogram(name: "strcaseeq3", scope: !2409, file: !2409, line: 118, type: !2475, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !2477)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!20, !10, !10, !12, !12, !12, !12, !12, !12}
!2477 = !{!2478, !2473, !2479, !2480, !2481, !2482, !2483, !2484}
!2478 = !DILocalVariable(name: "s1", arg: 1, scope: !2474, file: !2409, line: 118, type: !10)
!2479 = !DILocalVariable(name: "s23", arg: 3, scope: !2474, file: !2409, line: 118, type: !12)
!2480 = !DILocalVariable(name: "s24", arg: 4, scope: !2474, file: !2409, line: 118, type: !12)
!2481 = !DILocalVariable(name: "s25", arg: 5, scope: !2474, file: !2409, line: 118, type: !12)
!2482 = !DILocalVariable(name: "s26", arg: 6, scope: !2474, file: !2409, line: 118, type: !12)
!2483 = !DILocalVariable(name: "s27", arg: 7, scope: !2474, file: !2409, line: 118, type: !12)
!2484 = !DILocalVariable(name: "s28", arg: 8, scope: !2474, file: !2409, line: 118, type: !12)
!2485 = !DILocation(line: 118, column: 41, scope: !2474, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 139, column: 16, scope: !2487, inlinedAt: !2466)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !2409, line: 136, column: 11)
!2488 = distinct !DILexicalBlock(scope: !2472, file: !2409, line: 135, column: 5)
!2489 = !DILocation(line: 118, column: 90, scope: !2474, inlinedAt: !2486)
!2490 = !DILocation(line: 118, column: 100, scope: !2474, inlinedAt: !2486)
!2491 = !DILocation(line: 120, column: 7, scope: !2492, inlinedAt: !2486)
!2492 = distinct !DILexicalBlock(scope: !2474, file: !2409, line: 120, column: 7)
!2493 = !DILocation(line: 120, column: 7, scope: !2474, inlinedAt: !2486)
!2494 = !DILocalVariable(name: "s2", arg: 2, scope: !2495, file: !2409, line: 104, type: !10)
!2495 = distinct !DISubprogram(name: "strcaseeq4", scope: !2409, file: !2409, line: 104, type: !2496, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !2498)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!20, !10, !10, !12, !12, !12, !12, !12}
!2498 = !{!2499, !2494, !2500, !2501, !2502, !2503, !2504}
!2499 = !DILocalVariable(name: "s1", arg: 1, scope: !2495, file: !2409, line: 104, type: !10)
!2500 = !DILocalVariable(name: "s24", arg: 3, scope: !2495, file: !2409, line: 104, type: !12)
!2501 = !DILocalVariable(name: "s25", arg: 4, scope: !2495, file: !2409, line: 104, type: !12)
!2502 = !DILocalVariable(name: "s26", arg: 5, scope: !2495, file: !2409, line: 104, type: !12)
!2503 = !DILocalVariable(name: "s27", arg: 6, scope: !2495, file: !2409, line: 104, type: !12)
!2504 = !DILocalVariable(name: "s28", arg: 7, scope: !2495, file: !2409, line: 104, type: !12)
!2505 = !DILocation(line: 104, column: 41, scope: !2495, inlinedAt: !2506)
!2506 = distinct !DILocation(line: 125, column: 16, scope: !2507, inlinedAt: !2486)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !2409, line: 122, column: 11)
!2508 = distinct !DILexicalBlock(scope: !2492, file: !2409, line: 121, column: 5)
!2509 = !DILocation(line: 104, column: 80, scope: !2495, inlinedAt: !2506)
!2510 = !DILocation(line: 104, column: 90, scope: !2495, inlinedAt: !2506)
!2511 = !DILocation(line: 106, column: 7, scope: !2512, inlinedAt: !2506)
!2512 = distinct !DILexicalBlock(scope: !2495, file: !2409, line: 106, column: 7)
!2513 = !DILocation(line: 106, column: 7, scope: !2495, inlinedAt: !2506)
!2514 = !DILocalVariable(name: "s2", arg: 2, scope: !2515, file: !2409, line: 90, type: !10)
!2515 = distinct !DISubprogram(name: "strcaseeq5", scope: !2409, file: !2409, line: 90, type: !2516, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !2518)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!20, !10, !10, !12, !12, !12, !12}
!2518 = !{!2519, !2514, !2520, !2521, !2522, !2523}
!2519 = !DILocalVariable(name: "s1", arg: 1, scope: !2515, file: !2409, line: 90, type: !10)
!2520 = !DILocalVariable(name: "s25", arg: 3, scope: !2515, file: !2409, line: 90, type: !12)
!2521 = !DILocalVariable(name: "s26", arg: 4, scope: !2515, file: !2409, line: 90, type: !12)
!2522 = !DILocalVariable(name: "s27", arg: 5, scope: !2515, file: !2409, line: 90, type: !12)
!2523 = !DILocalVariable(name: "s28", arg: 6, scope: !2515, file: !2409, line: 90, type: !12)
!2524 = !DILocation(line: 90, column: 41, scope: !2515, inlinedAt: !2525)
!2525 = distinct !DILocation(line: 111, column: 16, scope: !2526, inlinedAt: !2506)
!2526 = distinct !DILexicalBlock(scope: !2527, file: !2409, line: 108, column: 11)
!2527 = distinct !DILexicalBlock(scope: !2512, file: !2409, line: 107, column: 5)
!2528 = !DILocation(line: 90, column: 70, scope: !2515, inlinedAt: !2525)
!2529 = !DILocation(line: 90, column: 80, scope: !2515, inlinedAt: !2525)
!2530 = !DILocation(line: 92, column: 7, scope: !2531, inlinedAt: !2525)
!2531 = distinct !DILexicalBlock(scope: !2515, file: !2409, line: 92, column: 7)
!2532 = !DILocation(line: 92, column: 7, scope: !2515, inlinedAt: !2525)
!2533 = !DILocation(line: 227, column: 12, scope: !2425)
!2534 = !DILocation(line: 227, column: 21, scope: !2425)
!2535 = !DILocation(line: 227, column: 5, scope: !2425)
!2536 = !DILocation(line: 146, column: 41, scope: !2431, inlinedAt: !2537)
!2537 = distinct !DILocation(line: 167, column: 16, scope: !2446, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 228, column: 7, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2390, file: !95, line: 228, column: 7)
!2540 = !DILocation(line: 146, column: 110, scope: !2431, inlinedAt: !2537)
!2541 = !DILocation(line: 146, column: 120, scope: !2431, inlinedAt: !2537)
!2542 = !DILocation(line: 148, column: 7, scope: !2451, inlinedAt: !2537)
!2543 = !DILocation(line: 132, column: 41, scope: !2453, inlinedAt: !2544)
!2544 = distinct !DILocation(line: 153, column: 16, scope: !2467, inlinedAt: !2537)
!2545 = !DILocation(line: 132, column: 100, scope: !2453, inlinedAt: !2544)
!2546 = !DILocation(line: 132, column: 110, scope: !2453, inlinedAt: !2544)
!2547 = !DILocation(line: 134, column: 7, scope: !2472, inlinedAt: !2544)
!2548 = !DILocation(line: 134, column: 7, scope: !2453, inlinedAt: !2544)
!2549 = !DILocation(line: 118, column: 41, scope: !2474, inlinedAt: !2550)
!2550 = distinct !DILocation(line: 139, column: 16, scope: !2487, inlinedAt: !2544)
!2551 = !DILocation(line: 118, column: 90, scope: !2474, inlinedAt: !2550)
!2552 = !DILocation(line: 118, column: 100, scope: !2474, inlinedAt: !2550)
!2553 = !DILocation(line: 120, column: 7, scope: !2492, inlinedAt: !2550)
!2554 = !DILocation(line: 120, column: 7, scope: !2474, inlinedAt: !2550)
!2555 = !DILocation(line: 104, column: 41, scope: !2495, inlinedAt: !2556)
!2556 = distinct !DILocation(line: 125, column: 16, scope: !2507, inlinedAt: !2550)
!2557 = !DILocation(line: 104, column: 80, scope: !2495, inlinedAt: !2556)
!2558 = !DILocation(line: 104, column: 90, scope: !2495, inlinedAt: !2556)
!2559 = !DILocation(line: 106, column: 7, scope: !2512, inlinedAt: !2556)
!2560 = !DILocation(line: 106, column: 7, scope: !2495, inlinedAt: !2556)
!2561 = !DILocation(line: 90, column: 41, scope: !2515, inlinedAt: !2562)
!2562 = distinct !DILocation(line: 111, column: 16, scope: !2526, inlinedAt: !2556)
!2563 = !DILocation(line: 90, column: 70, scope: !2515, inlinedAt: !2562)
!2564 = !DILocation(line: 90, column: 80, scope: !2515, inlinedAt: !2562)
!2565 = !DILocation(line: 92, column: 7, scope: !2531, inlinedAt: !2562)
!2566 = !DILocation(line: 92, column: 7, scope: !2515, inlinedAt: !2562)
!2567 = !DILocalVariable(name: "s2", arg: 2, scope: !2568, file: !2409, line: 76, type: !10)
!2568 = distinct !DISubprogram(name: "strcaseeq6", scope: !2409, file: !2409, line: 76, type: !2569, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !2571)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!20, !10, !10, !12, !12, !12}
!2571 = !{!2572, !2567, !2573, !2574, !2575}
!2572 = !DILocalVariable(name: "s1", arg: 1, scope: !2568, file: !2409, line: 76, type: !10)
!2573 = !DILocalVariable(name: "s26", arg: 3, scope: !2568, file: !2409, line: 76, type: !12)
!2574 = !DILocalVariable(name: "s27", arg: 4, scope: !2568, file: !2409, line: 76, type: !12)
!2575 = !DILocalVariable(name: "s28", arg: 5, scope: !2568, file: !2409, line: 76, type: !12)
!2576 = !DILocation(line: 76, column: 41, scope: !2568, inlinedAt: !2577)
!2577 = distinct !DILocation(line: 97, column: 16, scope: !2578, inlinedAt: !2562)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !2409, line: 94, column: 11)
!2579 = distinct !DILexicalBlock(scope: !2531, file: !2409, line: 93, column: 5)
!2580 = !DILocation(line: 76, column: 60, scope: !2568, inlinedAt: !2577)
!2581 = !DILocation(line: 76, column: 70, scope: !2568, inlinedAt: !2577)
!2582 = !DILocation(line: 78, column: 7, scope: !2583, inlinedAt: !2577)
!2583 = distinct !DILexicalBlock(scope: !2568, file: !2409, line: 78, column: 7)
!2584 = !DILocation(line: 78, column: 7, scope: !2568, inlinedAt: !2577)
!2585 = !DILocalVariable(name: "s2", arg: 2, scope: !2586, file: !2409, line: 62, type: !10)
!2586 = distinct !DISubprogram(name: "strcaseeq7", scope: !2409, file: !2409, line: 62, type: !2587, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !2589)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!20, !10, !10, !12, !12}
!2589 = !{!2590, !2585, !2591, !2592}
!2590 = !DILocalVariable(name: "s1", arg: 1, scope: !2586, file: !2409, line: 62, type: !10)
!2591 = !DILocalVariable(name: "s27", arg: 3, scope: !2586, file: !2409, line: 62, type: !12)
!2592 = !DILocalVariable(name: "s28", arg: 4, scope: !2586, file: !2409, line: 62, type: !12)
!2593 = !DILocation(line: 62, column: 41, scope: !2586, inlinedAt: !2594)
!2594 = distinct !DILocation(line: 83, column: 16, scope: !2595, inlinedAt: !2577)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !2409, line: 80, column: 11)
!2596 = distinct !DILexicalBlock(scope: !2583, file: !2409, line: 79, column: 5)
!2597 = !DILocation(line: 62, column: 50, scope: !2586, inlinedAt: !2594)
!2598 = !DILocation(line: 62, column: 60, scope: !2586, inlinedAt: !2594)
!2599 = !DILocation(line: 64, column: 7, scope: !2600, inlinedAt: !2594)
!2600 = distinct !DILexicalBlock(scope: !2586, file: !2409, line: 64, column: 7)
!2601 = !DILocation(line: 228, column: 7, scope: !2390)
!2602 = !DILocation(line: 229, column: 12, scope: !2539)
!2603 = !DILocation(line: 229, column: 21, scope: !2539)
!2604 = !DILocation(line: 229, column: 5, scope: !2539)
!2605 = !DILocation(line: 231, column: 13, scope: !2390)
!2606 = !DILocation(line: 231, column: 11, scope: !2390)
!2607 = !DILocation(line: 231, column: 3, scope: !2390)
!2608 = !DILocation(line: 232, column: 1, scope: !2390)
!2609 = distinct !DISubprogram(name: "quotearg_alloc", scope: !95, file: !95, line: 791, type: !2610, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !2612)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!45, !10, !89, !1734}
!2612 = !{!2613, !2614, !2615}
!2613 = !DILocalVariable(name: "arg", arg: 1, scope: !2609, file: !95, line: 791, type: !10)
!2614 = !DILocalVariable(name: "argsize", arg: 2, scope: !2609, file: !95, line: 791, type: !89)
!2615 = !DILocalVariable(name: "o", arg: 3, scope: !2609, file: !95, line: 792, type: !1734)
!2616 = !DILocation(line: 791, column: 29, scope: !2609)
!2617 = !DILocation(line: 791, column: 41, scope: !2609)
!2618 = !DILocation(line: 792, column: 47, scope: !2609)
!2619 = !DILocalVariable(name: "arg", arg: 1, scope: !2620, file: !95, line: 804, type: !10)
!2620 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !95, file: !95, line: 804, type: !2621, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !2623)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!45, !10, !89, !570, !1734}
!2623 = !{!2619, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631}
!2624 = !DILocalVariable(name: "argsize", arg: 2, scope: !2620, file: !95, line: 804, type: !89)
!2625 = !DILocalVariable(name: "size", arg: 3, scope: !2620, file: !95, line: 804, type: !570)
!2626 = !DILocalVariable(name: "o", arg: 4, scope: !2620, file: !95, line: 805, type: !1734)
!2627 = !DILocalVariable(name: "p", scope: !2620, file: !95, line: 807, type: !1734)
!2628 = !DILocalVariable(name: "e", scope: !2620, file: !95, line: 808, type: !20)
!2629 = !DILocalVariable(name: "flags", scope: !2620, file: !95, line: 810, type: !20)
!2630 = !DILocalVariable(name: "bufsize", scope: !2620, file: !95, line: 811, type: !89)
!2631 = !DILocalVariable(name: "buf", scope: !2620, file: !95, line: 815, type: !45)
!2632 = !DILocation(line: 804, column: 33, scope: !2620, inlinedAt: !2633)
!2633 = distinct !DILocation(line: 794, column: 10, scope: !2609)
!2634 = !DILocation(line: 804, column: 45, scope: !2620, inlinedAt: !2633)
!2635 = !DILocation(line: 804, column: 62, scope: !2620, inlinedAt: !2633)
!2636 = !DILocation(line: 805, column: 51, scope: !2620, inlinedAt: !2633)
!2637 = !DILocation(line: 807, column: 37, scope: !2620, inlinedAt: !2633)
!2638 = !DILocation(line: 807, column: 33, scope: !2620, inlinedAt: !2633)
!2639 = !DILocation(line: 808, column: 11, scope: !2620, inlinedAt: !2633)
!2640 = !DILocation(line: 808, column: 7, scope: !2620, inlinedAt: !2633)
!2641 = !DILocation(line: 810, column: 18, scope: !2620, inlinedAt: !2633)
!2642 = !DILocation(line: 810, column: 24, scope: !2620, inlinedAt: !2633)
!2643 = !DILocation(line: 810, column: 7, scope: !2620, inlinedAt: !2633)
!2644 = !DILocation(line: 811, column: 69, scope: !2620, inlinedAt: !2633)
!2645 = !DILocation(line: 812, column: 53, scope: !2620, inlinedAt: !2633)
!2646 = !DILocation(line: 813, column: 49, scope: !2620, inlinedAt: !2633)
!2647 = !DILocation(line: 814, column: 49, scope: !2620, inlinedAt: !2633)
!2648 = !DILocation(line: 811, column: 20, scope: !2620, inlinedAt: !2633)
!2649 = !DILocation(line: 814, column: 62, scope: !2620, inlinedAt: !2633)
!2650 = !DILocation(line: 811, column: 10, scope: !2620, inlinedAt: !2633)
!2651 = !DILocalVariable(name: "n", arg: 1, scope: !2652, file: !566, line: 220, type: !89)
!2652 = distinct !DISubprogram(name: "xcharalloc", scope: !566, file: !566, line: 220, type: !2653, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !2655)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!45, !89}
!2655 = !{!2651}
!2656 = !DILocation(line: 220, column: 20, scope: !2652, inlinedAt: !2657)
!2657 = distinct !DILocation(line: 815, column: 15, scope: !2620, inlinedAt: !2633)
!2658 = !DILocation(line: 222, column: 10, scope: !2652, inlinedAt: !2657)
!2659 = !DILocation(line: 815, column: 9, scope: !2620, inlinedAt: !2633)
!2660 = !DILocation(line: 816, column: 60, scope: !2620, inlinedAt: !2633)
!2661 = !DILocation(line: 818, column: 32, scope: !2620, inlinedAt: !2633)
!2662 = !DILocation(line: 818, column: 47, scope: !2620, inlinedAt: !2633)
!2663 = !DILocation(line: 816, column: 3, scope: !2620, inlinedAt: !2633)
!2664 = !DILocation(line: 819, column: 9, scope: !2620, inlinedAt: !2633)
!2665 = !DILocation(line: 794, column: 3, scope: !2609)
!2666 = !DILocation(line: 804, column: 33, scope: !2620)
!2667 = !DILocation(line: 804, column: 45, scope: !2620)
!2668 = !DILocation(line: 804, column: 62, scope: !2620)
!2669 = !DILocation(line: 805, column: 51, scope: !2620)
!2670 = !DILocation(line: 807, column: 37, scope: !2620)
!2671 = !DILocation(line: 807, column: 33, scope: !2620)
!2672 = !DILocation(line: 808, column: 11, scope: !2620)
!2673 = !DILocation(line: 808, column: 7, scope: !2620)
!2674 = !DILocation(line: 810, column: 18, scope: !2620)
!2675 = !DILocation(line: 810, column: 27, scope: !2620)
!2676 = !DILocation(line: 810, column: 24, scope: !2620)
!2677 = !DILocation(line: 810, column: 7, scope: !2620)
!2678 = !DILocation(line: 811, column: 69, scope: !2620)
!2679 = !DILocation(line: 812, column: 53, scope: !2620)
!2680 = !DILocation(line: 813, column: 49, scope: !2620)
!2681 = !DILocation(line: 814, column: 49, scope: !2620)
!2682 = !DILocation(line: 811, column: 20, scope: !2620)
!2683 = !DILocation(line: 814, column: 62, scope: !2620)
!2684 = !DILocation(line: 811, column: 10, scope: !2620)
!2685 = !DILocation(line: 220, column: 20, scope: !2652, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 815, column: 15, scope: !2620)
!2687 = !DILocation(line: 222, column: 10, scope: !2652, inlinedAt: !2686)
!2688 = !DILocation(line: 815, column: 9, scope: !2620)
!2689 = !DILocation(line: 816, column: 60, scope: !2620)
!2690 = !DILocation(line: 818, column: 32, scope: !2620)
!2691 = !DILocation(line: 818, column: 47, scope: !2620)
!2692 = !DILocation(line: 816, column: 3, scope: !2620)
!2693 = !DILocation(line: 819, column: 9, scope: !2620)
!2694 = !DILocation(line: 820, column: 7, scope: !2620)
!2695 = !DILocation(line: 821, column: 11, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2620, file: !95, line: 820, column: 7)
!2697 = !{!2698, !2698, i64 0}
!2698 = !{!"long", !616, i64 0}
!2699 = !DILocation(line: 821, column: 5, scope: !2696)
!2700 = !DILocation(line: 822, column: 3, scope: !2620)
!2701 = distinct !DISubprogram(name: "quotearg_free", scope: !95, file: !95, line: 840, type: !1353, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !2702)
!2702 = !{!2703, !2704}
!2703 = !DILocalVariable(name: "sv", scope: !2701, file: !95, line: 842, type: !122)
!2704 = !DILocalVariable(name: "i", scope: !2701, file: !95, line: 843, type: !20)
!2705 = !DILocation(line: 842, column: 24, scope: !2701)
!2706 = !DILocation(line: 842, column: 19, scope: !2701)
!2707 = !DILocation(line: 843, column: 7, scope: !2701)
!2708 = !DILocation(line: 844, column: 19, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2710, file: !95, line: 844, column: 3)
!2710 = distinct !DILexicalBlock(scope: !2701, file: !95, line: 844, column: 3)
!2711 = !DILocation(line: 844, column: 17, scope: !2709)
!2712 = !DILocation(line: 844, column: 3, scope: !2710)
!2713 = !DILocation(line: 845, column: 17, scope: !2709)
!2714 = !{!2715, !615, i64 8}
!2715 = !{!"slotvec", !2698, i64 0, !615, i64 8}
!2716 = !DILocation(line: 845, column: 5, scope: !2709)
!2717 = !DILocation(line: 844, column: 28, scope: !2709)
!2718 = distinct !{!2718, !2712, !2719}
!2719 = !DILocation(line: 845, column: 20, scope: !2710)
!2720 = !DILocation(line: 846, column: 13, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2701, file: !95, line: 846, column: 7)
!2722 = !DILocation(line: 846, column: 17, scope: !2721)
!2723 = !DILocation(line: 846, column: 7, scope: !2701)
!2724 = !DILocation(line: 848, column: 7, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2721, file: !95, line: 847, column: 5)
!2726 = !DILocation(line: 849, column: 21, scope: !2725)
!2727 = !{!2715, !2698, i64 0}
!2728 = !DILocation(line: 850, column: 20, scope: !2725)
!2729 = !DILocation(line: 851, column: 5, scope: !2725)
!2730 = !DILocation(line: 852, column: 10, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2701, file: !95, line: 852, column: 7)
!2732 = !DILocation(line: 852, column: 7, scope: !2701)
!2733 = !DILocation(line: 854, column: 13, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2731, file: !95, line: 853, column: 5)
!2735 = !DILocation(line: 854, column: 7, scope: !2734)
!2736 = !DILocation(line: 855, column: 15, scope: !2734)
!2737 = !DILocation(line: 856, column: 5, scope: !2734)
!2738 = !DILocation(line: 857, column: 10, scope: !2701)
!2739 = !DILocation(line: 858, column: 1, scope: !2701)
!2740 = distinct !DISubprogram(name: "quotearg_n", scope: !95, file: !95, line: 922, type: !2741, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !2743)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!45, !20, !10}
!2743 = !{!2744, !2745}
!2744 = !DILocalVariable(name: "n", arg: 1, scope: !2740, file: !95, line: 922, type: !20)
!2745 = !DILocalVariable(name: "arg", arg: 2, scope: !2740, file: !95, line: 922, type: !10)
!2746 = !DILocation(line: 922, column: 17, scope: !2740)
!2747 = !DILocation(line: 922, column: 32, scope: !2740)
!2748 = !DILocation(line: 924, column: 10, scope: !2740)
!2749 = !DILocation(line: 924, column: 3, scope: !2740)
!2750 = distinct !DISubprogram(name: "quotearg_n_options", scope: !95, file: !95, line: 869, type: !2751, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !2753)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!45, !20, !10, !89, !1734}
!2753 = !{!2754, !2755, !2756, !2757, !2758, !2759, !2760, !2763, !2765, !2766, !2767}
!2754 = !DILocalVariable(name: "n", arg: 1, scope: !2750, file: !95, line: 869, type: !20)
!2755 = !DILocalVariable(name: "arg", arg: 2, scope: !2750, file: !95, line: 869, type: !10)
!2756 = !DILocalVariable(name: "argsize", arg: 3, scope: !2750, file: !95, line: 869, type: !89)
!2757 = !DILocalVariable(name: "options", arg: 4, scope: !2750, file: !95, line: 870, type: !1734)
!2758 = !DILocalVariable(name: "e", scope: !2750, file: !95, line: 872, type: !20)
!2759 = !DILocalVariable(name: "sv", scope: !2750, file: !95, line: 874, type: !122)
!2760 = !DILocalVariable(name: "preallocated", scope: !2761, file: !95, line: 881, type: !9)
!2761 = distinct !DILexicalBlock(scope: !2762, file: !95, line: 880, column: 5)
!2762 = distinct !DILexicalBlock(scope: !2750, file: !95, line: 879, column: 7)
!2763 = !DILocalVariable(name: "size", scope: !2764, file: !95, line: 894, type: !89)
!2764 = distinct !DILexicalBlock(scope: !2750, file: !95, line: 893, column: 3)
!2765 = !DILocalVariable(name: "val", scope: !2764, file: !95, line: 895, type: !45)
!2766 = !DILocalVariable(name: "flags", scope: !2764, file: !95, line: 897, type: !20)
!2767 = !DILocalVariable(name: "qsize", scope: !2764, file: !95, line: 898, type: !89)
!2768 = !DILocation(line: 869, column: 25, scope: !2750)
!2769 = !DILocation(line: 869, column: 40, scope: !2750)
!2770 = !DILocation(line: 869, column: 52, scope: !2750)
!2771 = !DILocation(line: 870, column: 51, scope: !2750)
!2772 = !DILocation(line: 872, column: 11, scope: !2750)
!2773 = !DILocation(line: 872, column: 7, scope: !2750)
!2774 = !DILocation(line: 874, column: 24, scope: !2750)
!2775 = !DILocation(line: 874, column: 19, scope: !2750)
!2776 = !DILocation(line: 876, column: 9, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2750, file: !95, line: 876, column: 7)
!2778 = !DILocation(line: 876, column: 7, scope: !2750)
!2779 = !DILocation(line: 877, column: 5, scope: !2777)
!2780 = !DILocation(line: 879, column: 7, scope: !2762)
!2781 = !DILocation(line: 879, column: 14, scope: !2762)
!2782 = !DILocation(line: 879, column: 7, scope: !2750)
!2783 = !DILocation(line: 881, column: 31, scope: !2761)
!2784 = !DILocation(line: 883, column: 67, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2761, file: !95, line: 883, column: 11)
!2786 = !DILocation(line: 883, column: 11, scope: !2761)
!2787 = !DILocation(line: 884, column: 9, scope: !2785)
!2788 = !DILocation(line: 886, column: 32, scope: !2761)
!2789 = !DILocation(line: 886, column: 61, scope: !2761)
!2790 = !DILocation(line: 886, column: 58, scope: !2761)
!2791 = !DILocation(line: 886, column: 66, scope: !2761)
!2792 = !DILocation(line: 886, column: 22, scope: !2761)
!2793 = !DILocation(line: 886, column: 15, scope: !2761)
!2794 = !DILocation(line: 887, column: 11, scope: !2761)
!2795 = !DILocation(line: 888, column: 15, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2761, file: !95, line: 887, column: 11)
!2797 = !{i64 0, i64 8, !2697, i64 8, i64 8, !614}
!2798 = !DILocation(line: 888, column: 9, scope: !2796)
!2799 = !DILocation(line: 889, column: 20, scope: !2761)
!2800 = !DILocation(line: 889, column: 18, scope: !2761)
!2801 = !DILocation(line: 889, column: 7, scope: !2761)
!2802 = !DILocation(line: 889, column: 38, scope: !2761)
!2803 = !DILocation(line: 889, column: 31, scope: !2761)
!2804 = !DILocation(line: 889, column: 48, scope: !2761)
!2805 = !DILocation(line: 890, column: 14, scope: !2761)
!2806 = !DILocation(line: 891, column: 5, scope: !2761)
!2807 = !DILocation(line: 894, column: 19, scope: !2764)
!2808 = !DILocation(line: 894, column: 25, scope: !2764)
!2809 = !DILocation(line: 894, column: 12, scope: !2764)
!2810 = !DILocation(line: 895, column: 23, scope: !2764)
!2811 = !DILocation(line: 895, column: 11, scope: !2764)
!2812 = !DILocation(line: 897, column: 26, scope: !2764)
!2813 = !DILocation(line: 897, column: 32, scope: !2764)
!2814 = !DILocation(line: 897, column: 9, scope: !2764)
!2815 = !DILocation(line: 899, column: 55, scope: !2764)
!2816 = !DILocation(line: 900, column: 46, scope: !2764)
!2817 = !DILocation(line: 901, column: 55, scope: !2764)
!2818 = !DILocation(line: 902, column: 55, scope: !2764)
!2819 = !DILocation(line: 898, column: 20, scope: !2764)
!2820 = !DILocation(line: 898, column: 12, scope: !2764)
!2821 = !DILocation(line: 904, column: 14, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2764, file: !95, line: 904, column: 9)
!2823 = !DILocation(line: 904, column: 9, scope: !2764)
!2824 = !DILocation(line: 906, column: 35, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2822, file: !95, line: 905, column: 7)
!2826 = !DILocation(line: 906, column: 20, scope: !2825)
!2827 = !DILocation(line: 907, column: 17, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2825, file: !95, line: 907, column: 13)
!2829 = !DILocation(line: 907, column: 13, scope: !2825)
!2830 = !DILocation(line: 908, column: 11, scope: !2828)
!2831 = !DILocation(line: 220, column: 20, scope: !2652, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 909, column: 27, scope: !2825)
!2833 = !DILocation(line: 222, column: 10, scope: !2652, inlinedAt: !2832)
!2834 = !DILocation(line: 909, column: 19, scope: !2825)
!2835 = !DILocation(line: 910, column: 69, scope: !2825)
!2836 = !DILocation(line: 912, column: 44, scope: !2825)
!2837 = !DILocation(line: 913, column: 44, scope: !2825)
!2838 = !DILocation(line: 910, column: 9, scope: !2825)
!2839 = !DILocation(line: 914, column: 7, scope: !2825)
!2840 = !DILocation(line: 916, column: 11, scope: !2764)
!2841 = !DILocation(line: 917, column: 5, scope: !2764)
!2842 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !95, file: !95, line: 928, type: !2843, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !2845)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!45, !20, !10, !89}
!2845 = !{!2846, !2847, !2848}
!2846 = !DILocalVariable(name: "n", arg: 1, scope: !2842, file: !95, line: 928, type: !20)
!2847 = !DILocalVariable(name: "arg", arg: 2, scope: !2842, file: !95, line: 928, type: !10)
!2848 = !DILocalVariable(name: "argsize", arg: 3, scope: !2842, file: !95, line: 928, type: !89)
!2849 = !DILocation(line: 928, column: 21, scope: !2842)
!2850 = !DILocation(line: 928, column: 36, scope: !2842)
!2851 = !DILocation(line: 928, column: 48, scope: !2842)
!2852 = !DILocation(line: 930, column: 10, scope: !2842)
!2853 = !DILocation(line: 930, column: 3, scope: !2842)
!2854 = distinct !DISubprogram(name: "quotearg", scope: !95, file: !95, line: 934, type: !2855, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !2857)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!45, !10}
!2857 = !{!2858}
!2858 = !DILocalVariable(name: "arg", arg: 1, scope: !2854, file: !95, line: 934, type: !10)
!2859 = !DILocation(line: 934, column: 23, scope: !2854)
!2860 = !DILocation(line: 922, column: 17, scope: !2740, inlinedAt: !2861)
!2861 = distinct !DILocation(line: 936, column: 10, scope: !2854)
!2862 = !DILocation(line: 922, column: 32, scope: !2740, inlinedAt: !2861)
!2863 = !DILocation(line: 924, column: 10, scope: !2740, inlinedAt: !2861)
!2864 = !DILocation(line: 936, column: 3, scope: !2854)
!2865 = distinct !DISubprogram(name: "quotearg_mem", scope: !95, file: !95, line: 940, type: !2866, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !2868)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!45, !10, !89}
!2868 = !{!2869, !2870}
!2869 = !DILocalVariable(name: "arg", arg: 1, scope: !2865, file: !95, line: 940, type: !10)
!2870 = !DILocalVariable(name: "argsize", arg: 2, scope: !2865, file: !95, line: 940, type: !89)
!2871 = !DILocation(line: 940, column: 27, scope: !2865)
!2872 = !DILocation(line: 940, column: 39, scope: !2865)
!2873 = !DILocation(line: 928, column: 21, scope: !2842, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 942, column: 10, scope: !2865)
!2875 = !DILocation(line: 928, column: 36, scope: !2842, inlinedAt: !2874)
!2876 = !DILocation(line: 928, column: 48, scope: !2842, inlinedAt: !2874)
!2877 = !DILocation(line: 930, column: 10, scope: !2842, inlinedAt: !2874)
!2878 = !DILocation(line: 942, column: 3, scope: !2865)
!2879 = distinct !DISubprogram(name: "quotearg_n_style", scope: !95, file: !95, line: 946, type: !2880, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !2882)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!45, !20, !53, !10}
!2882 = !{!2883, !2884, !2885, !2886}
!2883 = !DILocalVariable(name: "n", arg: 1, scope: !2879, file: !95, line: 946, type: !20)
!2884 = !DILocalVariable(name: "s", arg: 2, scope: !2879, file: !95, line: 946, type: !53)
!2885 = !DILocalVariable(name: "arg", arg: 3, scope: !2879, file: !95, line: 946, type: !10)
!2886 = !DILocalVariable(name: "o", scope: !2879, file: !95, line: 948, type: !1735)
!2887 = !DILocalVariable(name: "o", scope: !2888, file: !95, line: 187, type: !102)
!2888 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !95, file: !95, line: 185, type: !2889, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !2891)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!102, !53}
!2891 = !{!2892, !2887}
!2892 = !DILocalVariable(name: "style", arg: 1, scope: !2888, file: !95, line: 185, type: !53)
!2893 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2894 = !DILocation(line: 187, column: 26, scope: !2888, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 948, column: 36, scope: !2879)
!2896 = !DILocation(line: 946, column: 23, scope: !2879)
!2897 = !DILocation(line: 946, column: 45, scope: !2879)
!2898 = !DILocation(line: 946, column: 60, scope: !2879)
!2899 = !DILocation(line: 948, column: 3, scope: !2879)
!2900 = !DILocation(line: 948, column: 32, scope: !2879)
!2901 = !DILocation(line: 185, column: 48, scope: !2888, inlinedAt: !2895)
!2902 = !DILocation(line: 187, column: 3, scope: !2888, inlinedAt: !2895)
!2903 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2904 = !DILocation(line: 188, column: 13, scope: !2905, inlinedAt: !2895)
!2905 = distinct !DILexicalBlock(scope: !2888, file: !95, line: 188, column: 7)
!2906 = !DILocation(line: 188, column: 7, scope: !2888, inlinedAt: !2895)
!2907 = !DILocation(line: 189, column: 5, scope: !2905, inlinedAt: !2895)
!2908 = !{!2909}
!2909 = distinct !{!2909, !2910, !"quoting_options_from_style: argument 0"}
!2910 = distinct !{!2910, !"quoting_options_from_style"}
!2911 = !DILocation(line: 191, column: 10, scope: !2888, inlinedAt: !2895)
!2912 = !DILocation(line: 192, column: 1, scope: !2888, inlinedAt: !2895)
!2913 = !DILocation(line: 949, column: 10, scope: !2879)
!2914 = !DILocation(line: 950, column: 1, scope: !2879)
!2915 = !DILocation(line: 949, column: 3, scope: !2879)
!2916 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !95, file: !95, line: 953, type: !2917, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !2919)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!45, !20, !53, !10, !89}
!2919 = !{!2920, !2921, !2922, !2923, !2924}
!2920 = !DILocalVariable(name: "n", arg: 1, scope: !2916, file: !95, line: 953, type: !20)
!2921 = !DILocalVariable(name: "s", arg: 2, scope: !2916, file: !95, line: 953, type: !53)
!2922 = !DILocalVariable(name: "arg", arg: 3, scope: !2916, file: !95, line: 954, type: !10)
!2923 = !DILocalVariable(name: "argsize", arg: 4, scope: !2916, file: !95, line: 954, type: !89)
!2924 = !DILocalVariable(name: "o", scope: !2916, file: !95, line: 956, type: !1735)
!2925 = !DILocation(line: 187, column: 26, scope: !2888, inlinedAt: !2926)
!2926 = distinct !DILocation(line: 956, column: 36, scope: !2916)
!2927 = !DILocation(line: 953, column: 27, scope: !2916)
!2928 = !DILocation(line: 953, column: 49, scope: !2916)
!2929 = !DILocation(line: 954, column: 35, scope: !2916)
!2930 = !DILocation(line: 954, column: 47, scope: !2916)
!2931 = !DILocation(line: 956, column: 3, scope: !2916)
!2932 = !DILocation(line: 956, column: 32, scope: !2916)
!2933 = !DILocation(line: 185, column: 48, scope: !2888, inlinedAt: !2926)
!2934 = !DILocation(line: 187, column: 3, scope: !2888, inlinedAt: !2926)
!2935 = !DILocation(line: 188, column: 13, scope: !2905, inlinedAt: !2926)
!2936 = !DILocation(line: 188, column: 7, scope: !2888, inlinedAt: !2926)
!2937 = !DILocation(line: 189, column: 5, scope: !2905, inlinedAt: !2926)
!2938 = !{!2939}
!2939 = distinct !{!2939, !2940, !"quoting_options_from_style: argument 0"}
!2940 = distinct !{!2940, !"quoting_options_from_style"}
!2941 = !DILocation(line: 191, column: 10, scope: !2888, inlinedAt: !2926)
!2942 = !DILocation(line: 192, column: 1, scope: !2888, inlinedAt: !2926)
!2943 = !DILocation(line: 957, column: 10, scope: !2916)
!2944 = !DILocation(line: 958, column: 1, scope: !2916)
!2945 = !DILocation(line: 957, column: 3, scope: !2916)
!2946 = distinct !DISubprogram(name: "quotearg_style", scope: !95, file: !95, line: 961, type: !2947, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !2949)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!45, !53, !10}
!2949 = !{!2950, !2951}
!2950 = !DILocalVariable(name: "s", arg: 1, scope: !2946, file: !95, line: 961, type: !53)
!2951 = !DILocalVariable(name: "arg", arg: 2, scope: !2946, file: !95, line: 961, type: !10)
!2952 = !DILocation(line: 187, column: 26, scope: !2888, inlinedAt: !2953)
!2953 = distinct !DILocation(line: 948, column: 36, scope: !2879, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 963, column: 10, scope: !2946)
!2955 = !DILocation(line: 961, column: 36, scope: !2946)
!2956 = !DILocation(line: 961, column: 51, scope: !2946)
!2957 = !DILocation(line: 946, column: 23, scope: !2879, inlinedAt: !2954)
!2958 = !DILocation(line: 946, column: 45, scope: !2879, inlinedAt: !2954)
!2959 = !DILocation(line: 946, column: 60, scope: !2879, inlinedAt: !2954)
!2960 = !DILocation(line: 948, column: 3, scope: !2879, inlinedAt: !2954)
!2961 = !DILocation(line: 948, column: 32, scope: !2879, inlinedAt: !2954)
!2962 = !DILocation(line: 185, column: 48, scope: !2888, inlinedAt: !2953)
!2963 = !DILocation(line: 187, column: 3, scope: !2888, inlinedAt: !2953)
!2964 = !DILocation(line: 188, column: 13, scope: !2905, inlinedAt: !2953)
!2965 = !DILocation(line: 188, column: 7, scope: !2888, inlinedAt: !2953)
!2966 = !DILocation(line: 189, column: 5, scope: !2905, inlinedAt: !2953)
!2967 = !{!2968}
!2968 = distinct !{!2968, !2969, !"quoting_options_from_style: argument 0"}
!2969 = distinct !{!2969, !"quoting_options_from_style"}
!2970 = !DILocation(line: 191, column: 10, scope: !2888, inlinedAt: !2953)
!2971 = !DILocation(line: 192, column: 1, scope: !2888, inlinedAt: !2953)
!2972 = !DILocation(line: 949, column: 10, scope: !2879, inlinedAt: !2954)
!2973 = !DILocation(line: 950, column: 1, scope: !2879, inlinedAt: !2954)
!2974 = !DILocation(line: 963, column: 3, scope: !2946)
!2975 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !95, file: !95, line: 967, type: !2976, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !2978)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!45, !53, !10, !89}
!2978 = !{!2979, !2980, !2981}
!2979 = !DILocalVariable(name: "s", arg: 1, scope: !2975, file: !95, line: 967, type: !53)
!2980 = !DILocalVariable(name: "arg", arg: 2, scope: !2975, file: !95, line: 967, type: !10)
!2981 = !DILocalVariable(name: "argsize", arg: 3, scope: !2975, file: !95, line: 967, type: !89)
!2982 = !DILocation(line: 187, column: 26, scope: !2888, inlinedAt: !2983)
!2983 = distinct !DILocation(line: 956, column: 36, scope: !2916, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 969, column: 10, scope: !2975)
!2985 = !DILocation(line: 967, column: 40, scope: !2975)
!2986 = !DILocation(line: 967, column: 55, scope: !2975)
!2987 = !DILocation(line: 967, column: 67, scope: !2975)
!2988 = !DILocation(line: 953, column: 27, scope: !2916, inlinedAt: !2984)
!2989 = !DILocation(line: 953, column: 49, scope: !2916, inlinedAt: !2984)
!2990 = !DILocation(line: 954, column: 35, scope: !2916, inlinedAt: !2984)
!2991 = !DILocation(line: 954, column: 47, scope: !2916, inlinedAt: !2984)
!2992 = !DILocation(line: 956, column: 3, scope: !2916, inlinedAt: !2984)
!2993 = !DILocation(line: 956, column: 32, scope: !2916, inlinedAt: !2984)
!2994 = !DILocation(line: 185, column: 48, scope: !2888, inlinedAt: !2983)
!2995 = !DILocation(line: 187, column: 3, scope: !2888, inlinedAt: !2983)
!2996 = !DILocation(line: 188, column: 13, scope: !2905, inlinedAt: !2983)
!2997 = !DILocation(line: 188, column: 7, scope: !2888, inlinedAt: !2983)
!2998 = !DILocation(line: 189, column: 5, scope: !2905, inlinedAt: !2983)
!2999 = !{!3000}
!3000 = distinct !{!3000, !3001, !"quoting_options_from_style: argument 0"}
!3001 = distinct !{!3001, !"quoting_options_from_style"}
!3002 = !DILocation(line: 191, column: 10, scope: !2888, inlinedAt: !2983)
!3003 = !DILocation(line: 192, column: 1, scope: !2888, inlinedAt: !2983)
!3004 = !DILocation(line: 957, column: 10, scope: !2916, inlinedAt: !2984)
!3005 = !DILocation(line: 958, column: 1, scope: !2916, inlinedAt: !2984)
!3006 = !DILocation(line: 969, column: 3, scope: !2975)
!3007 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !95, file: !95, line: 973, type: !3008, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3010)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!45, !10, !89, !12}
!3010 = !{!3011, !3012, !3013, !3014}
!3011 = !DILocalVariable(name: "arg", arg: 1, scope: !3007, file: !95, line: 973, type: !10)
!3012 = !DILocalVariable(name: "argsize", arg: 2, scope: !3007, file: !95, line: 973, type: !89)
!3013 = !DILocalVariable(name: "ch", arg: 3, scope: !3007, file: !95, line: 973, type: !12)
!3014 = !DILocalVariable(name: "options", scope: !3007, file: !95, line: 975, type: !102)
!3015 = !DILocation(line: 973, column: 32, scope: !3007)
!3016 = !DILocation(line: 973, column: 44, scope: !3007)
!3017 = !DILocation(line: 973, column: 58, scope: !3007)
!3018 = !DILocation(line: 975, column: 3, scope: !3007)
!3019 = !DILocation(line: 976, column: 13, scope: !3007)
!3020 = !{i64 0, i64 4, !716, i64 4, i64 4, !1369, i64 8, i64 32, !716, i64 40, i64 8, !614, i64 48, i64 8, !614}
!3021 = !DILocation(line: 975, column: 26, scope: !3007)
!3022 = !DILocation(line: 144, column: 43, scope: !1756, inlinedAt: !3023)
!3023 = distinct !DILocation(line: 977, column: 3, scope: !3007)
!3024 = !DILocation(line: 144, column: 51, scope: !1756, inlinedAt: !3023)
!3025 = !DILocation(line: 144, column: 58, scope: !1756, inlinedAt: !3023)
!3026 = !DILocation(line: 146, column: 17, scope: !1756, inlinedAt: !3023)
!3027 = !DILocation(line: 148, column: 62, scope: !1756, inlinedAt: !3023)
!3028 = !DILocation(line: 148, column: 57, scope: !1756, inlinedAt: !3023)
!3029 = !DILocation(line: 147, column: 17, scope: !1756, inlinedAt: !3023)
!3030 = !DILocation(line: 149, column: 18, scope: !1756, inlinedAt: !3023)
!3031 = !DILocation(line: 149, column: 15, scope: !1756, inlinedAt: !3023)
!3032 = !DILocation(line: 149, column: 7, scope: !1756, inlinedAt: !3023)
!3033 = !DILocation(line: 150, column: 12, scope: !1756, inlinedAt: !3023)
!3034 = !DILocation(line: 150, column: 15, scope: !1756, inlinedAt: !3023)
!3035 = !DILocation(line: 150, column: 25, scope: !1756, inlinedAt: !3023)
!3036 = !DILocation(line: 150, column: 7, scope: !1756, inlinedAt: !3023)
!3037 = !DILocation(line: 151, column: 18, scope: !1756, inlinedAt: !3023)
!3038 = !DILocation(line: 151, column: 23, scope: !1756, inlinedAt: !3023)
!3039 = !DILocation(line: 151, column: 6, scope: !1756, inlinedAt: !3023)
!3040 = !DILocation(line: 978, column: 10, scope: !3007)
!3041 = !DILocation(line: 979, column: 1, scope: !3007)
!3042 = !DILocation(line: 978, column: 3, scope: !3007)
!3043 = distinct !DISubprogram(name: "quotearg_char", scope: !95, file: !95, line: 982, type: !3044, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3046)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!45, !10, !12}
!3046 = !{!3047, !3048}
!3047 = !DILocalVariable(name: "arg", arg: 1, scope: !3043, file: !95, line: 982, type: !10)
!3048 = !DILocalVariable(name: "ch", arg: 2, scope: !3043, file: !95, line: 982, type: !12)
!3049 = !DILocation(line: 982, column: 28, scope: !3043)
!3050 = !DILocation(line: 982, column: 38, scope: !3043)
!3051 = !DILocation(line: 973, column: 32, scope: !3007, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 984, column: 10, scope: !3043)
!3053 = !DILocation(line: 973, column: 44, scope: !3007, inlinedAt: !3052)
!3054 = !DILocation(line: 973, column: 58, scope: !3007, inlinedAt: !3052)
!3055 = !DILocation(line: 975, column: 3, scope: !3007, inlinedAt: !3052)
!3056 = !DILocation(line: 976, column: 13, scope: !3007, inlinedAt: !3052)
!3057 = !DILocation(line: 975, column: 26, scope: !3007, inlinedAt: !3052)
!3058 = !DILocation(line: 144, column: 43, scope: !1756, inlinedAt: !3059)
!3059 = distinct !DILocation(line: 977, column: 3, scope: !3007, inlinedAt: !3052)
!3060 = !DILocation(line: 144, column: 51, scope: !1756, inlinedAt: !3059)
!3061 = !DILocation(line: 144, column: 58, scope: !1756, inlinedAt: !3059)
!3062 = !DILocation(line: 146, column: 17, scope: !1756, inlinedAt: !3059)
!3063 = !DILocation(line: 148, column: 62, scope: !1756, inlinedAt: !3059)
!3064 = !DILocation(line: 148, column: 57, scope: !1756, inlinedAt: !3059)
!3065 = !DILocation(line: 147, column: 17, scope: !1756, inlinedAt: !3059)
!3066 = !DILocation(line: 149, column: 18, scope: !1756, inlinedAt: !3059)
!3067 = !DILocation(line: 149, column: 15, scope: !1756, inlinedAt: !3059)
!3068 = !DILocation(line: 149, column: 7, scope: !1756, inlinedAt: !3059)
!3069 = !DILocation(line: 150, column: 12, scope: !1756, inlinedAt: !3059)
!3070 = !DILocation(line: 150, column: 15, scope: !1756, inlinedAt: !3059)
!3071 = !DILocation(line: 150, column: 25, scope: !1756, inlinedAt: !3059)
!3072 = !DILocation(line: 150, column: 7, scope: !1756, inlinedAt: !3059)
!3073 = !DILocation(line: 151, column: 18, scope: !1756, inlinedAt: !3059)
!3074 = !DILocation(line: 151, column: 23, scope: !1756, inlinedAt: !3059)
!3075 = !DILocation(line: 151, column: 6, scope: !1756, inlinedAt: !3059)
!3076 = !DILocation(line: 978, column: 10, scope: !3007, inlinedAt: !3052)
!3077 = !DILocation(line: 979, column: 1, scope: !3007, inlinedAt: !3052)
!3078 = !DILocation(line: 984, column: 3, scope: !3043)
!3079 = distinct !DISubprogram(name: "quotearg_colon", scope: !95, file: !95, line: 988, type: !2855, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3080)
!3080 = !{!3081}
!3081 = !DILocalVariable(name: "arg", arg: 1, scope: !3079, file: !95, line: 988, type: !10)
!3082 = !DILocation(line: 988, column: 29, scope: !3079)
!3083 = !DILocation(line: 982, column: 28, scope: !3043, inlinedAt: !3084)
!3084 = distinct !DILocation(line: 990, column: 10, scope: !3079)
!3085 = !DILocation(line: 982, column: 38, scope: !3043, inlinedAt: !3084)
!3086 = !DILocation(line: 973, column: 32, scope: !3007, inlinedAt: !3087)
!3087 = distinct !DILocation(line: 984, column: 10, scope: !3043, inlinedAt: !3084)
!3088 = !DILocation(line: 973, column: 44, scope: !3007, inlinedAt: !3087)
!3089 = !DILocation(line: 973, column: 58, scope: !3007, inlinedAt: !3087)
!3090 = !DILocation(line: 975, column: 3, scope: !3007, inlinedAt: !3087)
!3091 = !DILocation(line: 976, column: 13, scope: !3007, inlinedAt: !3087)
!3092 = !DILocation(line: 975, column: 26, scope: !3007, inlinedAt: !3087)
!3093 = !DILocation(line: 144, column: 43, scope: !1756, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 977, column: 3, scope: !3007, inlinedAt: !3087)
!3095 = !DILocation(line: 144, column: 51, scope: !1756, inlinedAt: !3094)
!3096 = !DILocation(line: 144, column: 58, scope: !1756, inlinedAt: !3094)
!3097 = !DILocation(line: 146, column: 17, scope: !1756, inlinedAt: !3094)
!3098 = !DILocation(line: 148, column: 57, scope: !1756, inlinedAt: !3094)
!3099 = !DILocation(line: 147, column: 17, scope: !1756, inlinedAt: !3094)
!3100 = !DILocation(line: 149, column: 7, scope: !1756, inlinedAt: !3094)
!3101 = !DILocation(line: 150, column: 12, scope: !1756, inlinedAt: !3094)
!3102 = !DILocation(line: 151, column: 6, scope: !1756, inlinedAt: !3094)
!3103 = !DILocation(line: 978, column: 10, scope: !3007, inlinedAt: !3087)
!3104 = !DILocation(line: 979, column: 1, scope: !3007, inlinedAt: !3087)
!3105 = !DILocation(line: 990, column: 3, scope: !3079)
!3106 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !95, file: !95, line: 994, type: !2866, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3107)
!3107 = !{!3108, !3109}
!3108 = !DILocalVariable(name: "arg", arg: 1, scope: !3106, file: !95, line: 994, type: !10)
!3109 = !DILocalVariable(name: "argsize", arg: 2, scope: !3106, file: !95, line: 994, type: !89)
!3110 = !DILocation(line: 994, column: 33, scope: !3106)
!3111 = !DILocation(line: 994, column: 45, scope: !3106)
!3112 = !DILocation(line: 973, column: 32, scope: !3007, inlinedAt: !3113)
!3113 = distinct !DILocation(line: 996, column: 10, scope: !3106)
!3114 = !DILocation(line: 973, column: 44, scope: !3007, inlinedAt: !3113)
!3115 = !DILocation(line: 973, column: 58, scope: !3007, inlinedAt: !3113)
!3116 = !DILocation(line: 975, column: 3, scope: !3007, inlinedAt: !3113)
!3117 = !DILocation(line: 976, column: 13, scope: !3007, inlinedAt: !3113)
!3118 = !DILocation(line: 975, column: 26, scope: !3007, inlinedAt: !3113)
!3119 = !DILocation(line: 144, column: 43, scope: !1756, inlinedAt: !3120)
!3120 = distinct !DILocation(line: 977, column: 3, scope: !3007, inlinedAt: !3113)
!3121 = !DILocation(line: 144, column: 51, scope: !1756, inlinedAt: !3120)
!3122 = !DILocation(line: 144, column: 58, scope: !1756, inlinedAt: !3120)
!3123 = !DILocation(line: 146, column: 17, scope: !1756, inlinedAt: !3120)
!3124 = !DILocation(line: 148, column: 57, scope: !1756, inlinedAt: !3120)
!3125 = !DILocation(line: 147, column: 17, scope: !1756, inlinedAt: !3120)
!3126 = !DILocation(line: 149, column: 7, scope: !1756, inlinedAt: !3120)
!3127 = !DILocation(line: 150, column: 12, scope: !1756, inlinedAt: !3120)
!3128 = !DILocation(line: 151, column: 6, scope: !1756, inlinedAt: !3120)
!3129 = !DILocation(line: 978, column: 10, scope: !3007, inlinedAt: !3113)
!3130 = !DILocation(line: 979, column: 1, scope: !3007, inlinedAt: !3113)
!3131 = !DILocation(line: 996, column: 3, scope: !3106)
!3132 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !95, file: !95, line: 1000, type: !2880, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3133)
!3133 = !{!3134, !3135, !3136, !3137}
!3134 = !DILocalVariable(name: "n", arg: 1, scope: !3132, file: !95, line: 1000, type: !20)
!3135 = !DILocalVariable(name: "s", arg: 2, scope: !3132, file: !95, line: 1000, type: !53)
!3136 = !DILocalVariable(name: "arg", arg: 3, scope: !3132, file: !95, line: 1000, type: !10)
!3137 = !DILocalVariable(name: "options", scope: !3132, file: !95, line: 1002, type: !102)
!3138 = !DILocation(line: 187, column: 26, scope: !2888, inlinedAt: !3139)
!3139 = distinct !DILocation(line: 1003, column: 13, scope: !3132)
!3140 = !DILocation(line: 1000, column: 29, scope: !3132)
!3141 = !DILocation(line: 1000, column: 51, scope: !3132)
!3142 = !DILocation(line: 1000, column: 66, scope: !3132)
!3143 = !DILocation(line: 1002, column: 3, scope: !3132)
!3144 = !DILocation(line: 185, column: 48, scope: !2888, inlinedAt: !3139)
!3145 = !DILocation(line: 187, column: 3, scope: !2888, inlinedAt: !3139)
!3146 = !DILocation(line: 188, column: 13, scope: !2905, inlinedAt: !3139)
!3147 = !DILocation(line: 188, column: 7, scope: !2888, inlinedAt: !3139)
!3148 = !DILocation(line: 189, column: 5, scope: !2905, inlinedAt: !3139)
!3149 = !{!3150}
!3150 = distinct !{!3150, !3151, !"quoting_options_from_style: argument 0"}
!3151 = distinct !{!3151, !"quoting_options_from_style"}
!3152 = !DILocation(line: 191, column: 10, scope: !2888, inlinedAt: !3139)
!3153 = !DILocation(line: 192, column: 1, scope: !2888, inlinedAt: !3139)
!3154 = !DILocation(line: 1003, column: 13, scope: !3132)
!3155 = !DILocation(line: 1002, column: 26, scope: !3132)
!3156 = !DILocation(line: 144, column: 43, scope: !1756, inlinedAt: !3157)
!3157 = distinct !DILocation(line: 1004, column: 3, scope: !3132)
!3158 = !DILocation(line: 144, column: 51, scope: !1756, inlinedAt: !3157)
!3159 = !DILocation(line: 144, column: 58, scope: !1756, inlinedAt: !3157)
!3160 = !DILocation(line: 146, column: 17, scope: !1756, inlinedAt: !3157)
!3161 = !DILocation(line: 148, column: 57, scope: !1756, inlinedAt: !3157)
!3162 = !DILocation(line: 147, column: 17, scope: !1756, inlinedAt: !3157)
!3163 = !DILocation(line: 149, column: 7, scope: !1756, inlinedAt: !3157)
!3164 = !DILocation(line: 150, column: 12, scope: !1756, inlinedAt: !3157)
!3165 = !DILocation(line: 151, column: 6, scope: !1756, inlinedAt: !3157)
!3166 = !DILocation(line: 1005, column: 10, scope: !3132)
!3167 = !DILocation(line: 1006, column: 1, scope: !3132)
!3168 = !DILocation(line: 1005, column: 3, scope: !3132)
!3169 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !95, file: !95, line: 1009, type: !3170, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3172)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!45, !20, !10, !10, !10}
!3172 = !{!3173, !3174, !3175, !3176}
!3173 = !DILocalVariable(name: "n", arg: 1, scope: !3169, file: !95, line: 1009, type: !20)
!3174 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3169, file: !95, line: 1009, type: !10)
!3175 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3169, file: !95, line: 1010, type: !10)
!3176 = !DILocalVariable(name: "arg", arg: 4, scope: !3169, file: !95, line: 1010, type: !10)
!3177 = !DILocation(line: 1009, column: 24, scope: !3169)
!3178 = !DILocation(line: 1009, column: 39, scope: !3169)
!3179 = !DILocation(line: 1010, column: 32, scope: !3169)
!3180 = !DILocation(line: 1010, column: 57, scope: !3169)
!3181 = !DILocalVariable(name: "n", arg: 1, scope: !3182, file: !95, line: 1017, type: !20)
!3182 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !95, file: !95, line: 1017, type: !3183, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3185)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!45, !20, !10, !10, !10, !89}
!3185 = !{!3181, !3186, !3187, !3188, !3189, !3190}
!3186 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3182, file: !95, line: 1017, type: !10)
!3187 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3182, file: !95, line: 1018, type: !10)
!3188 = !DILocalVariable(name: "arg", arg: 4, scope: !3182, file: !95, line: 1019, type: !10)
!3189 = !DILocalVariable(name: "argsize", arg: 5, scope: !3182, file: !95, line: 1019, type: !89)
!3190 = !DILocalVariable(name: "o", scope: !3182, file: !95, line: 1021, type: !102)
!3191 = !DILocation(line: 1017, column: 28, scope: !3182, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 1012, column: 10, scope: !3169)
!3193 = !DILocation(line: 1017, column: 43, scope: !3182, inlinedAt: !3192)
!3194 = !DILocation(line: 1018, column: 36, scope: !3182, inlinedAt: !3192)
!3195 = !DILocation(line: 1019, column: 36, scope: !3182, inlinedAt: !3192)
!3196 = !DILocation(line: 1019, column: 48, scope: !3182, inlinedAt: !3192)
!3197 = !DILocation(line: 1021, column: 3, scope: !3182, inlinedAt: !3192)
!3198 = !DILocation(line: 1021, column: 30, scope: !3182, inlinedAt: !3192)
!3199 = !DILocation(line: 1021, column: 26, scope: !3182, inlinedAt: !3192)
!3200 = !DILocation(line: 171, column: 45, scope: !1805, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 1022, column: 3, scope: !3182, inlinedAt: !3192)
!3202 = !DILocation(line: 172, column: 33, scope: !1805, inlinedAt: !3201)
!3203 = !DILocation(line: 172, column: 57, scope: !1805, inlinedAt: !3201)
!3204 = !DILocation(line: 176, column: 6, scope: !1805, inlinedAt: !3201)
!3205 = !DILocation(line: 176, column: 12, scope: !1805, inlinedAt: !3201)
!3206 = !DILocation(line: 177, column: 8, scope: !1821, inlinedAt: !3201)
!3207 = !DILocation(line: 177, column: 23, scope: !1821, inlinedAt: !3201)
!3208 = !DILocation(line: 177, column: 19, scope: !1821, inlinedAt: !3201)
!3209 = !DILocation(line: 178, column: 5, scope: !1821, inlinedAt: !3201)
!3210 = !DILocation(line: 179, column: 6, scope: !1805, inlinedAt: !3201)
!3211 = !DILocation(line: 179, column: 17, scope: !1805, inlinedAt: !3201)
!3212 = !DILocation(line: 180, column: 6, scope: !1805, inlinedAt: !3201)
!3213 = !DILocation(line: 180, column: 18, scope: !1805, inlinedAt: !3201)
!3214 = !DILocation(line: 1023, column: 10, scope: !3182, inlinedAt: !3192)
!3215 = !DILocation(line: 1024, column: 1, scope: !3182, inlinedAt: !3192)
!3216 = !DILocation(line: 1012, column: 3, scope: !3169)
!3217 = !DILocation(line: 1017, column: 28, scope: !3182)
!3218 = !DILocation(line: 1017, column: 43, scope: !3182)
!3219 = !DILocation(line: 1018, column: 36, scope: !3182)
!3220 = !DILocation(line: 1019, column: 36, scope: !3182)
!3221 = !DILocation(line: 1019, column: 48, scope: !3182)
!3222 = !DILocation(line: 1021, column: 3, scope: !3182)
!3223 = !DILocation(line: 1021, column: 30, scope: !3182)
!3224 = !DILocation(line: 1021, column: 26, scope: !3182)
!3225 = !DILocation(line: 171, column: 45, scope: !1805, inlinedAt: !3226)
!3226 = distinct !DILocation(line: 1022, column: 3, scope: !3182)
!3227 = !DILocation(line: 172, column: 33, scope: !1805, inlinedAt: !3226)
!3228 = !DILocation(line: 172, column: 57, scope: !1805, inlinedAt: !3226)
!3229 = !DILocation(line: 176, column: 6, scope: !1805, inlinedAt: !3226)
!3230 = !DILocation(line: 176, column: 12, scope: !1805, inlinedAt: !3226)
!3231 = !DILocation(line: 177, column: 8, scope: !1821, inlinedAt: !3226)
!3232 = !DILocation(line: 177, column: 23, scope: !1821, inlinedAt: !3226)
!3233 = !DILocation(line: 177, column: 19, scope: !1821, inlinedAt: !3226)
!3234 = !DILocation(line: 178, column: 5, scope: !1821, inlinedAt: !3226)
!3235 = !DILocation(line: 179, column: 6, scope: !1805, inlinedAt: !3226)
!3236 = !DILocation(line: 179, column: 17, scope: !1805, inlinedAt: !3226)
!3237 = !DILocation(line: 180, column: 6, scope: !1805, inlinedAt: !3226)
!3238 = !DILocation(line: 180, column: 18, scope: !1805, inlinedAt: !3226)
!3239 = !DILocation(line: 1023, column: 10, scope: !3182)
!3240 = !DILocation(line: 1024, column: 1, scope: !3182)
!3241 = !DILocation(line: 1023, column: 3, scope: !3182)
!3242 = distinct !DISubprogram(name: "quotearg_custom", scope: !95, file: !95, line: 1027, type: !3243, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3245)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!45, !10, !10, !10}
!3245 = !{!3246, !3247, !3248}
!3246 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3242, file: !95, line: 1027, type: !10)
!3247 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3242, file: !95, line: 1027, type: !10)
!3248 = !DILocalVariable(name: "arg", arg: 3, scope: !3242, file: !95, line: 1028, type: !10)
!3249 = !DILocation(line: 1027, column: 30, scope: !3242)
!3250 = !DILocation(line: 1027, column: 54, scope: !3242)
!3251 = !DILocation(line: 1028, column: 30, scope: !3242)
!3252 = !DILocation(line: 1009, column: 24, scope: !3169, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 1030, column: 10, scope: !3242)
!3254 = !DILocation(line: 1009, column: 39, scope: !3169, inlinedAt: !3253)
!3255 = !DILocation(line: 1010, column: 32, scope: !3169, inlinedAt: !3253)
!3256 = !DILocation(line: 1010, column: 57, scope: !3169, inlinedAt: !3253)
!3257 = !DILocation(line: 1017, column: 28, scope: !3182, inlinedAt: !3258)
!3258 = distinct !DILocation(line: 1012, column: 10, scope: !3169, inlinedAt: !3253)
!3259 = !DILocation(line: 1017, column: 43, scope: !3182, inlinedAt: !3258)
!3260 = !DILocation(line: 1018, column: 36, scope: !3182, inlinedAt: !3258)
!3261 = !DILocation(line: 1019, column: 36, scope: !3182, inlinedAt: !3258)
!3262 = !DILocation(line: 1019, column: 48, scope: !3182, inlinedAt: !3258)
!3263 = !DILocation(line: 1021, column: 3, scope: !3182, inlinedAt: !3258)
!3264 = !DILocation(line: 1021, column: 30, scope: !3182, inlinedAt: !3258)
!3265 = !DILocation(line: 1021, column: 26, scope: !3182, inlinedAt: !3258)
!3266 = !DILocation(line: 171, column: 45, scope: !1805, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 1022, column: 3, scope: !3182, inlinedAt: !3258)
!3268 = !DILocation(line: 172, column: 33, scope: !1805, inlinedAt: !3267)
!3269 = !DILocation(line: 172, column: 57, scope: !1805, inlinedAt: !3267)
!3270 = !DILocation(line: 176, column: 6, scope: !1805, inlinedAt: !3267)
!3271 = !DILocation(line: 176, column: 12, scope: !1805, inlinedAt: !3267)
!3272 = !DILocation(line: 177, column: 8, scope: !1821, inlinedAt: !3267)
!3273 = !DILocation(line: 177, column: 23, scope: !1821, inlinedAt: !3267)
!3274 = !DILocation(line: 177, column: 19, scope: !1821, inlinedAt: !3267)
!3275 = !DILocation(line: 178, column: 5, scope: !1821, inlinedAt: !3267)
!3276 = !DILocation(line: 179, column: 6, scope: !1805, inlinedAt: !3267)
!3277 = !DILocation(line: 179, column: 17, scope: !1805, inlinedAt: !3267)
!3278 = !DILocation(line: 180, column: 6, scope: !1805, inlinedAt: !3267)
!3279 = !DILocation(line: 180, column: 18, scope: !1805, inlinedAt: !3267)
!3280 = !DILocation(line: 1023, column: 10, scope: !3182, inlinedAt: !3258)
!3281 = !DILocation(line: 1024, column: 1, scope: !3182, inlinedAt: !3258)
!3282 = !DILocation(line: 1030, column: 3, scope: !3242)
!3283 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !95, file: !95, line: 1034, type: !3284, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3286)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!45, !10, !10, !10, !89}
!3286 = !{!3287, !3288, !3289, !3290}
!3287 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3283, file: !95, line: 1034, type: !10)
!3288 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3283, file: !95, line: 1034, type: !10)
!3289 = !DILocalVariable(name: "arg", arg: 3, scope: !3283, file: !95, line: 1035, type: !10)
!3290 = !DILocalVariable(name: "argsize", arg: 4, scope: !3283, file: !95, line: 1035, type: !89)
!3291 = !DILocation(line: 1034, column: 34, scope: !3283)
!3292 = !DILocation(line: 1034, column: 58, scope: !3283)
!3293 = !DILocation(line: 1035, column: 34, scope: !3283)
!3294 = !DILocation(line: 1035, column: 46, scope: !3283)
!3295 = !DILocation(line: 1017, column: 28, scope: !3182, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 1037, column: 10, scope: !3283)
!3297 = !DILocation(line: 1017, column: 43, scope: !3182, inlinedAt: !3296)
!3298 = !DILocation(line: 1018, column: 36, scope: !3182, inlinedAt: !3296)
!3299 = !DILocation(line: 1019, column: 36, scope: !3182, inlinedAt: !3296)
!3300 = !DILocation(line: 1019, column: 48, scope: !3182, inlinedAt: !3296)
!3301 = !DILocation(line: 1021, column: 3, scope: !3182, inlinedAt: !3296)
!3302 = !DILocation(line: 1021, column: 30, scope: !3182, inlinedAt: !3296)
!3303 = !DILocation(line: 1021, column: 26, scope: !3182, inlinedAt: !3296)
!3304 = !DILocation(line: 171, column: 45, scope: !1805, inlinedAt: !3305)
!3305 = distinct !DILocation(line: 1022, column: 3, scope: !3182, inlinedAt: !3296)
!3306 = !DILocation(line: 172, column: 33, scope: !1805, inlinedAt: !3305)
!3307 = !DILocation(line: 172, column: 57, scope: !1805, inlinedAt: !3305)
!3308 = !DILocation(line: 176, column: 6, scope: !1805, inlinedAt: !3305)
!3309 = !DILocation(line: 176, column: 12, scope: !1805, inlinedAt: !3305)
!3310 = !DILocation(line: 177, column: 8, scope: !1821, inlinedAt: !3305)
!3311 = !DILocation(line: 177, column: 23, scope: !1821, inlinedAt: !3305)
!3312 = !DILocation(line: 177, column: 19, scope: !1821, inlinedAt: !3305)
!3313 = !DILocation(line: 178, column: 5, scope: !1821, inlinedAt: !3305)
!3314 = !DILocation(line: 179, column: 6, scope: !1805, inlinedAt: !3305)
!3315 = !DILocation(line: 179, column: 17, scope: !1805, inlinedAt: !3305)
!3316 = !DILocation(line: 180, column: 6, scope: !1805, inlinedAt: !3305)
!3317 = !DILocation(line: 180, column: 18, scope: !1805, inlinedAt: !3305)
!3318 = !DILocation(line: 1023, column: 10, scope: !3182, inlinedAt: !3296)
!3319 = !DILocation(line: 1024, column: 1, scope: !3182, inlinedAt: !3296)
!3320 = !DILocation(line: 1037, column: 3, scope: !3283)
!3321 = distinct !DISubprogram(name: "quote_n_mem", scope: !95, file: !95, line: 1052, type: !3322, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3324)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!10, !20, !10, !89}
!3324 = !{!3325, !3326, !3327}
!3325 = !DILocalVariable(name: "n", arg: 1, scope: !3321, file: !95, line: 1052, type: !20)
!3326 = !DILocalVariable(name: "arg", arg: 2, scope: !3321, file: !95, line: 1052, type: !10)
!3327 = !DILocalVariable(name: "argsize", arg: 3, scope: !3321, file: !95, line: 1052, type: !89)
!3328 = !DILocation(line: 1052, column: 18, scope: !3321)
!3329 = !DILocation(line: 1052, column: 33, scope: !3321)
!3330 = !DILocation(line: 1052, column: 45, scope: !3321)
!3331 = !DILocation(line: 1054, column: 10, scope: !3321)
!3332 = !DILocation(line: 1054, column: 3, scope: !3321)
!3333 = distinct !DISubprogram(name: "quote_mem", scope: !95, file: !95, line: 1058, type: !3334, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3336)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!10, !10, !89}
!3336 = !{!3337, !3338}
!3337 = !DILocalVariable(name: "arg", arg: 1, scope: !3333, file: !95, line: 1058, type: !10)
!3338 = !DILocalVariable(name: "argsize", arg: 2, scope: !3333, file: !95, line: 1058, type: !89)
!3339 = !DILocation(line: 1058, column: 24, scope: !3333)
!3340 = !DILocation(line: 1058, column: 36, scope: !3333)
!3341 = !DILocation(line: 1052, column: 18, scope: !3321, inlinedAt: !3342)
!3342 = distinct !DILocation(line: 1060, column: 10, scope: !3333)
!3343 = !DILocation(line: 1052, column: 33, scope: !3321, inlinedAt: !3342)
!3344 = !DILocation(line: 1052, column: 45, scope: !3321, inlinedAt: !3342)
!3345 = !DILocation(line: 1054, column: 10, scope: !3321, inlinedAt: !3342)
!3346 = !DILocation(line: 1060, column: 3, scope: !3333)
!3347 = distinct !DISubprogram(name: "quote_n", scope: !95, file: !95, line: 1064, type: !3348, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3350)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!10, !20, !10}
!3350 = !{!3351, !3352}
!3351 = !DILocalVariable(name: "n", arg: 1, scope: !3347, file: !95, line: 1064, type: !20)
!3352 = !DILocalVariable(name: "arg", arg: 2, scope: !3347, file: !95, line: 1064, type: !10)
!3353 = !DILocation(line: 1064, column: 14, scope: !3347)
!3354 = !DILocation(line: 1064, column: 29, scope: !3347)
!3355 = !DILocation(line: 1052, column: 18, scope: !3321, inlinedAt: !3356)
!3356 = distinct !DILocation(line: 1066, column: 10, scope: !3347)
!3357 = !DILocation(line: 1052, column: 33, scope: !3321, inlinedAt: !3356)
!3358 = !DILocation(line: 1052, column: 45, scope: !3321, inlinedAt: !3356)
!3359 = !DILocation(line: 1054, column: 10, scope: !3321, inlinedAt: !3356)
!3360 = !DILocation(line: 1066, column: 3, scope: !3347)
!3361 = distinct !DISubprogram(name: "quote", scope: !95, file: !95, line: 1070, type: !3362, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !50, variables: !3364)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!10, !10}
!3364 = !{!3365}
!3365 = !DILocalVariable(name: "arg", arg: 1, scope: !3361, file: !95, line: 1070, type: !10)
!3366 = !DILocation(line: 1070, column: 20, scope: !3361)
!3367 = !DILocation(line: 1064, column: 14, scope: !3347, inlinedAt: !3368)
!3368 = distinct !DILocation(line: 1072, column: 10, scope: !3361)
!3369 = !DILocation(line: 1064, column: 29, scope: !3347, inlinedAt: !3368)
!3370 = !DILocation(line: 1052, column: 18, scope: !3321, inlinedAt: !3371)
!3371 = distinct !DILocation(line: 1066, column: 10, scope: !3347, inlinedAt: !3368)
!3372 = !DILocation(line: 1052, column: 33, scope: !3321, inlinedAt: !3371)
!3373 = !DILocation(line: 1052, column: 45, scope: !3321, inlinedAt: !3371)
!3374 = !DILocation(line: 1054, column: 10, scope: !3321, inlinedAt: !3371)
!3375 = !DILocation(line: 1072, column: 3, scope: !3361)
!3376 = distinct !DISubprogram(name: "version_etc_arn", scope: !558, file: !558, line: 62, type: !3377, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !3430)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{null, !3379, !10, !10, !10, !3429, !89}
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3381, line: 7, baseType: !3382)
!3381 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3383, line: 241, size: 1728, elements: !3384)
!3383 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3384 = !{!3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3405, !3406, !3407, !3408, !3409, !3410, !3412, !3414, !3417, !3419, !3420, !3421, !3422, !3423, !3424, !3425}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3382, file: !3383, line: 242, baseType: !20, size: 32)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3382, file: !3383, line: 247, baseType: !45, size: 64, offset: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3382, file: !3383, line: 248, baseType: !45, size: 64, offset: 128)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3382, file: !3383, line: 249, baseType: !45, size: 64, offset: 192)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3382, file: !3383, line: 250, baseType: !45, size: 64, offset: 256)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3382, file: !3383, line: 251, baseType: !45, size: 64, offset: 320)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3382, file: !3383, line: 252, baseType: !45, size: 64, offset: 384)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3382, file: !3383, line: 253, baseType: !45, size: 64, offset: 448)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3382, file: !3383, line: 254, baseType: !45, size: 64, offset: 512)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3382, file: !3383, line: 256, baseType: !45, size: 64, offset: 576)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3382, file: !3383, line: 257, baseType: !45, size: 64, offset: 640)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3382, file: !3383, line: 258, baseType: !45, size: 64, offset: 704)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3382, file: !3383, line: 260, baseType: !3398, size: 64, offset: 768)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3383, line: 156, size: 192, elements: !3400)
!3400 = !{!3401, !3402, !3404}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3399, file: !3383, line: 157, baseType: !3398, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3399, file: !3383, line: 158, baseType: !3403, size: 64, offset: 64)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3399, file: !3383, line: 162, baseType: !20, size: 32, offset: 128)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3382, file: !3383, line: 262, baseType: !3403, size: 64, offset: 832)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3382, file: !3383, line: 264, baseType: !20, size: 32, offset: 896)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3382, file: !3383, line: 268, baseType: !20, size: 32, offset: 928)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3382, file: !3383, line: 270, baseType: !526, size: 64, offset: 960)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3382, file: !3383, line: 274, baseType: !88, size: 16, offset: 1024)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3382, file: !3383, line: 275, baseType: !3411, size: 8, offset: 1040)
!3411 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3382, file: !3383, line: 276, baseType: !3413, size: 8, offset: 1048)
!3413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 8, elements: !1649)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3382, file: !3383, line: 280, baseType: !3415, size: 64, offset: 1088)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3383, line: 150, baseType: null)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3382, file: !3383, line: 289, baseType: !3418, size: 64, offset: 1152)
!3418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !508, line: 141, baseType: !511)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3382, file: !3383, line: 297, baseType: !44, size: 64, offset: 1216)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3382, file: !3383, line: 298, baseType: !44, size: 64, offset: 1280)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3382, file: !3383, line: 299, baseType: !44, size: 64, offset: 1344)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3382, file: !3383, line: 300, baseType: !44, size: 64, offset: 1408)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3382, file: !3383, line: 302, baseType: !89, size: 64, offset: 1472)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3382, file: !3383, line: 303, baseType: !20, size: 32, offset: 1536)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3382, file: !3383, line: 305, baseType: !3426, size: 160, offset: 1568)
!3426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 160, elements: !3427)
!3427 = !{!3428}
!3428 = !DISubrange(count: 20)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!3430 = !{!3431, !3432, !3433, !3434, !3435, !3436}
!3431 = !DILocalVariable(name: "stream", arg: 1, scope: !3376, file: !558, line: 62, type: !3379)
!3432 = !DILocalVariable(name: "command_name", arg: 2, scope: !3376, file: !558, line: 63, type: !10)
!3433 = !DILocalVariable(name: "package", arg: 3, scope: !3376, file: !558, line: 63, type: !10)
!3434 = !DILocalVariable(name: "version", arg: 4, scope: !3376, file: !558, line: 64, type: !10)
!3435 = !DILocalVariable(name: "authors", arg: 5, scope: !3376, file: !558, line: 65, type: !3429)
!3436 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3376, file: !558, line: 65, type: !89)
!3437 = !DILocation(line: 62, column: 24, scope: !3376)
!3438 = !DILocation(line: 63, column: 30, scope: !3376)
!3439 = !DILocation(line: 63, column: 56, scope: !3376)
!3440 = !DILocation(line: 64, column: 30, scope: !3376)
!3441 = !DILocation(line: 65, column: 39, scope: !3376)
!3442 = !DILocation(line: 65, column: 55, scope: !3376)
!3443 = !DILocation(line: 67, column: 7, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3376, file: !558, line: 67, column: 7)
!3445 = !DILocation(line: 67, column: 7, scope: !3376)
!3446 = !DILocation(line: 68, column: 5, scope: !3444)
!3447 = !DILocation(line: 70, column: 5, scope: !3444)
!3448 = !DILocation(line: 84, column: 3, scope: !3376)
!3449 = !DILocation(line: 86, column: 3, scope: !3376)
!3450 = !DILocation(line: 95, column: 3, scope: !3376)
!3451 = !DILocation(line: 99, column: 7, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3376, file: !558, line: 96, column: 5)
!3453 = !DILocation(line: 102, column: 7, scope: !3452)
!3454 = !DILocation(line: 103, column: 7, scope: !3452)
!3455 = !DILocation(line: 106, column: 7, scope: !3452)
!3456 = !DILocation(line: 107, column: 7, scope: !3452)
!3457 = !DILocation(line: 110, column: 7, scope: !3452)
!3458 = !DILocation(line: 112, column: 7, scope: !3452)
!3459 = !DILocation(line: 117, column: 7, scope: !3452)
!3460 = !DILocation(line: 119, column: 7, scope: !3452)
!3461 = !DILocation(line: 124, column: 7, scope: !3452)
!3462 = !DILocation(line: 126, column: 7, scope: !3452)
!3463 = !DILocation(line: 131, column: 7, scope: !3452)
!3464 = !DILocation(line: 134, column: 7, scope: !3452)
!3465 = !DILocation(line: 139, column: 7, scope: !3452)
!3466 = !DILocation(line: 142, column: 7, scope: !3452)
!3467 = !DILocation(line: 147, column: 7, scope: !3452)
!3468 = !DILocation(line: 151, column: 7, scope: !3452)
!3469 = !DILocation(line: 156, column: 7, scope: !3452)
!3470 = !DILocation(line: 160, column: 7, scope: !3452)
!3471 = !DILocation(line: 167, column: 7, scope: !3452)
!3472 = !DILocation(line: 171, column: 7, scope: !3452)
!3473 = !DILocation(line: 173, column: 1, scope: !3376)
!3474 = distinct !DISubprogram(name: "version_etc_ar", scope: !558, file: !558, line: 180, type: !3475, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !3477)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{null, !3379, !10, !10, !10, !3429}
!3477 = !{!3478, !3479, !3480, !3481, !3482, !3483}
!3478 = !DILocalVariable(name: "stream", arg: 1, scope: !3474, file: !558, line: 180, type: !3379)
!3479 = !DILocalVariable(name: "command_name", arg: 2, scope: !3474, file: !558, line: 181, type: !10)
!3480 = !DILocalVariable(name: "package", arg: 3, scope: !3474, file: !558, line: 181, type: !10)
!3481 = !DILocalVariable(name: "version", arg: 4, scope: !3474, file: !558, line: 182, type: !10)
!3482 = !DILocalVariable(name: "authors", arg: 5, scope: !3474, file: !558, line: 182, type: !3429)
!3483 = !DILocalVariable(name: "n_authors", scope: !3474, file: !558, line: 184, type: !89)
!3484 = !DILocation(line: 180, column: 23, scope: !3474)
!3485 = !DILocation(line: 181, column: 29, scope: !3474)
!3486 = !DILocation(line: 181, column: 55, scope: !3474)
!3487 = !DILocation(line: 182, column: 29, scope: !3474)
!3488 = !DILocation(line: 182, column: 59, scope: !3474)
!3489 = !DILocation(line: 184, column: 10, scope: !3474)
!3490 = !DILocation(line: 186, column: 8, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3474, file: !558, line: 186, column: 3)
!3492 = !DILocation(line: 186, column: 23, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3491, file: !558, line: 186, column: 3)
!3494 = !DILocation(line: 186, column: 3, scope: !3491)
!3495 = !DILocation(line: 186, column: 52, scope: !3493)
!3496 = distinct !{!3496, !3494, !3497}
!3497 = !DILocation(line: 187, column: 5, scope: !3491)
!3498 = !DILocation(line: 188, column: 3, scope: !3474)
!3499 = !DILocation(line: 189, column: 1, scope: !3474)
!3500 = distinct !DISubprogram(name: "version_etc_va", scope: !558, file: !558, line: 196, type: !3501, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !3510)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{null, !3379, !10, !10, !10, !3503}
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !555, line: 189, size: 192, elements: !3505)
!3505 = !{!3506, !3507, !3508, !3509}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3504, file: !555, line: 189, baseType: !108, size: 32)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3504, file: !555, line: 189, baseType: !108, size: 32, offset: 32)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3504, file: !555, line: 189, baseType: !44, size: 64, offset: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3504, file: !555, line: 189, baseType: !44, size: 64, offset: 128)
!3510 = !{!3511, !3512, !3513, !3514, !3515, !3516, !3517}
!3511 = !DILocalVariable(name: "stream", arg: 1, scope: !3500, file: !558, line: 196, type: !3379)
!3512 = !DILocalVariable(name: "command_name", arg: 2, scope: !3500, file: !558, line: 197, type: !10)
!3513 = !DILocalVariable(name: "package", arg: 3, scope: !3500, file: !558, line: 197, type: !10)
!3514 = !DILocalVariable(name: "version", arg: 4, scope: !3500, file: !558, line: 198, type: !10)
!3515 = !DILocalVariable(name: "authors", arg: 5, scope: !3500, file: !558, line: 198, type: !3503)
!3516 = !DILocalVariable(name: "n_authors", scope: !3500, file: !558, line: 200, type: !89)
!3517 = !DILocalVariable(name: "authtab", scope: !3500, file: !558, line: 201, type: !3518)
!3518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 640, elements: !98)
!3519 = !DILocation(line: 196, column: 23, scope: !3500)
!3520 = !DILocation(line: 197, column: 29, scope: !3500)
!3521 = !DILocation(line: 197, column: 55, scope: !3500)
!3522 = !DILocation(line: 198, column: 29, scope: !3500)
!3523 = !DILocation(line: 198, column: 46, scope: !3500)
!3524 = !DILocation(line: 201, column: 3, scope: !3500)
!3525 = !DILocation(line: 201, column: 15, scope: !3500)
!3526 = !DILocation(line: 200, column: 10, scope: !3500)
!3527 = !DILocation(line: 205, column: 35, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3529, file: !558, line: 203, column: 3)
!3529 = distinct !DILexicalBlock(scope: !3500, file: !558, line: 203, column: 3)
!3530 = !DILocation(line: 205, column: 14, scope: !3528)
!3531 = !DILocation(line: 205, column: 33, scope: !3528)
!3532 = !DILocation(line: 205, column: 67, scope: !3528)
!3533 = !DILocation(line: 203, column: 3, scope: !3529)
!3534 = !DILocation(line: 208, column: 3, scope: !3500)
!3535 = !DILocation(line: 210, column: 1, scope: !3500)
!3536 = distinct !DISubprogram(name: "version_etc", scope: !558, file: !558, line: 227, type: !3537, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !3539)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{null, !3379, !10, !10, !10, null}
!3539 = !{!3540, !3541, !3542, !3543, !3544}
!3540 = !DILocalVariable(name: "stream", arg: 1, scope: !3536, file: !558, line: 227, type: !3379)
!3541 = !DILocalVariable(name: "command_name", arg: 2, scope: !3536, file: !558, line: 228, type: !10)
!3542 = !DILocalVariable(name: "package", arg: 3, scope: !3536, file: !558, line: 228, type: !10)
!3543 = !DILocalVariable(name: "version", arg: 4, scope: !3536, file: !558, line: 229, type: !10)
!3544 = !DILocalVariable(name: "authors", scope: !3536, file: !558, line: 231, type: !3545)
!3545 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !513, line: 46, baseType: !3546)
!3546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1640, line: 48, baseType: !3547)
!3547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !555, line: 231, baseType: !3548)
!3548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3504, size: 192, elements: !1649)
!3549 = !DILocation(line: 227, column: 20, scope: !3536)
!3550 = !DILocation(line: 228, column: 26, scope: !3536)
!3551 = !DILocation(line: 228, column: 52, scope: !3536)
!3552 = !DILocation(line: 229, column: 26, scope: !3536)
!3553 = !DILocation(line: 231, column: 3, scope: !3536)
!3554 = !DILocation(line: 231, column: 11, scope: !3536)
!3555 = !DILocation(line: 233, column: 3, scope: !3536)
!3556 = !DILocation(line: 234, column: 3, scope: !3536)
!3557 = !DILocation(line: 235, column: 3, scope: !3536)
!3558 = !DILocation(line: 236, column: 1, scope: !3536)
!3559 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !558, file: !558, line: 239, type: !1353, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !4)
!3560 = !DILocation(line: 245, column: 3, scope: !3559)
!3561 = !DILocation(line: 251, column: 3, scope: !3559)
!3562 = !DILocation(line: 256, column: 3, scope: !3559)
!3563 = !DILocation(line: 258, column: 1, scope: !3559)
!3564 = distinct !DISubprogram(name: "xnmalloc", scope: !566, file: !566, line: 105, type: !3565, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !562, variables: !3567)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{!44, !89, !89}
!3567 = !{!3568, !3569}
!3568 = !DILocalVariable(name: "n", arg: 1, scope: !3564, file: !566, line: 105, type: !89)
!3569 = !DILocalVariable(name: "s", arg: 2, scope: !3564, file: !566, line: 105, type: !89)
!3570 = !DILocation(line: 105, column: 18, scope: !3564)
!3571 = !DILocation(line: 105, column: 28, scope: !3564)
!3572 = !DILocation(line: 107, column: 7, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3564, file: !566, line: 107, column: 7)
!3574 = !DILocation(line: 107, column: 7, scope: !3564)
!3575 = !DILocation(line: 108, column: 5, scope: !3573)
!3576 = !DILocation(line: 109, column: 21, scope: !3564)
!3577 = !DILocalVariable(name: "n", arg: 1, scope: !3578, file: !3579, line: 39, type: !89)
!3578 = distinct !DISubprogram(name: "xmalloc", scope: !3579, file: !3579, line: 39, type: !3580, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !562, variables: !3582)
!3579 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!44, !89}
!3582 = !{!3577, !3583}
!3583 = !DILocalVariable(name: "p", scope: !3578, file: !3579, line: 41, type: !44)
!3584 = !DILocation(line: 39, column: 17, scope: !3578, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 109, column: 10, scope: !3564)
!3586 = !DILocation(line: 41, column: 13, scope: !3578, inlinedAt: !3585)
!3587 = !DILocation(line: 41, column: 9, scope: !3578, inlinedAt: !3585)
!3588 = !DILocation(line: 42, column: 8, scope: !3589, inlinedAt: !3585)
!3589 = distinct !DILexicalBlock(scope: !3578, file: !3579, line: 42, column: 7)
!3590 = !DILocation(line: 42, column: 15, scope: !3589, inlinedAt: !3585)
!3591 = !DILocation(line: 42, column: 10, scope: !3589, inlinedAt: !3585)
!3592 = !DILocation(line: 43, column: 5, scope: !3589, inlinedAt: !3585)
!3593 = !DILocation(line: 109, column: 3, scope: !3564)
!3594 = !DILocation(line: 39, column: 17, scope: !3578)
!3595 = !DILocation(line: 41, column: 13, scope: !3578)
!3596 = !DILocation(line: 41, column: 9, scope: !3578)
!3597 = !DILocation(line: 42, column: 8, scope: !3589)
!3598 = !DILocation(line: 42, column: 15, scope: !3589)
!3599 = !DILocation(line: 42, column: 10, scope: !3589)
!3600 = !DILocation(line: 43, column: 5, scope: !3589)
!3601 = !DILocation(line: 44, column: 3, scope: !3578)
!3602 = distinct !DISubprogram(name: "xnrealloc", scope: !566, file: !566, line: 118, type: !3603, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !562, variables: !3605)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!44, !44, !89, !89}
!3605 = !{!3606, !3607, !3608}
!3606 = !DILocalVariable(name: "p", arg: 1, scope: !3602, file: !566, line: 118, type: !44)
!3607 = !DILocalVariable(name: "n", arg: 2, scope: !3602, file: !566, line: 118, type: !89)
!3608 = !DILocalVariable(name: "s", arg: 3, scope: !3602, file: !566, line: 118, type: !89)
!3609 = !DILocation(line: 118, column: 18, scope: !3602)
!3610 = !DILocation(line: 118, column: 28, scope: !3602)
!3611 = !DILocation(line: 118, column: 38, scope: !3602)
!3612 = !DILocation(line: 120, column: 7, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3602, file: !566, line: 120, column: 7)
!3614 = !DILocation(line: 120, column: 7, scope: !3602)
!3615 = !DILocation(line: 121, column: 5, scope: !3613)
!3616 = !DILocation(line: 122, column: 25, scope: !3602)
!3617 = !DILocalVariable(name: "p", arg: 1, scope: !3618, file: !3579, line: 51, type: !44)
!3618 = distinct !DISubprogram(name: "xrealloc", scope: !3579, file: !3579, line: 51, type: !3619, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !562, variables: !3621)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{!44, !44, !89}
!3621 = !{!3617, !3622}
!3622 = !DILocalVariable(name: "n", arg: 2, scope: !3618, file: !3579, line: 51, type: !89)
!3623 = !DILocation(line: 51, column: 17, scope: !3618, inlinedAt: !3624)
!3624 = distinct !DILocation(line: 122, column: 10, scope: !3602)
!3625 = !DILocation(line: 51, column: 27, scope: !3618, inlinedAt: !3624)
!3626 = !DILocation(line: 53, column: 8, scope: !3627, inlinedAt: !3624)
!3627 = distinct !DILexicalBlock(scope: !3618, file: !3579, line: 53, column: 7)
!3628 = !DILocation(line: 53, column: 13, scope: !3627, inlinedAt: !3624)
!3629 = !DILocation(line: 53, column: 10, scope: !3627, inlinedAt: !3624)
!3630 = !DILocation(line: 57, column: 7, scope: !3631, inlinedAt: !3624)
!3631 = distinct !DILexicalBlock(scope: !3627, file: !3579, line: 54, column: 5)
!3632 = !DILocation(line: 58, column: 7, scope: !3631, inlinedAt: !3624)
!3633 = !DILocation(line: 61, column: 7, scope: !3618, inlinedAt: !3624)
!3634 = !DILocation(line: 62, column: 8, scope: !3635, inlinedAt: !3624)
!3635 = distinct !DILexicalBlock(scope: !3618, file: !3579, line: 62, column: 7)
!3636 = !DILocation(line: 62, column: 13, scope: !3635, inlinedAt: !3624)
!3637 = !DILocation(line: 62, column: 10, scope: !3635, inlinedAt: !3624)
!3638 = !DILocation(line: 63, column: 5, scope: !3635, inlinedAt: !3624)
!3639 = !DILocation(line: 122, column: 3, scope: !3602)
!3640 = !DILocation(line: 51, column: 17, scope: !3618)
!3641 = !DILocation(line: 51, column: 27, scope: !3618)
!3642 = !DILocation(line: 53, column: 8, scope: !3627)
!3643 = !DILocation(line: 53, column: 13, scope: !3627)
!3644 = !DILocation(line: 53, column: 10, scope: !3627)
!3645 = !DILocation(line: 57, column: 7, scope: !3631)
!3646 = !DILocation(line: 58, column: 7, scope: !3631)
!3647 = !DILocation(line: 61, column: 7, scope: !3618)
!3648 = !DILocation(line: 62, column: 8, scope: !3635)
!3649 = !DILocation(line: 62, column: 13, scope: !3635)
!3650 = !DILocation(line: 62, column: 10, scope: !3635)
!3651 = !DILocation(line: 63, column: 5, scope: !3635)
!3652 = !DILocation(line: 65, column: 1, scope: !3618)
!3653 = !DILocation(line: 180, column: 19, scope: !567)
!3654 = !DILocation(line: 180, column: 30, scope: !567)
!3655 = !DILocation(line: 180, column: 41, scope: !567)
!3656 = !DILocation(line: 182, column: 14, scope: !567)
!3657 = !DILocation(line: 182, column: 10, scope: !567)
!3658 = !DILocation(line: 184, column: 9, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !567, file: !566, line: 184, column: 7)
!3660 = !DILocation(line: 184, column: 7, scope: !567)
!3661 = !DILocation(line: 186, column: 13, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3663, file: !566, line: 186, column: 11)
!3663 = distinct !DILexicalBlock(scope: !3659, file: !566, line: 185, column: 5)
!3664 = !DILocation(line: 186, column: 11, scope: !3663)
!3665 = !DILocation(line: 194, column: 30, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3662, file: !566, line: 187, column: 9)
!3667 = !DILocation(line: 195, column: 16, scope: !3666)
!3668 = !DILocation(line: 195, column: 13, scope: !3666)
!3669 = !DILocation(line: 196, column: 9, scope: !3666)
!3670 = !DILocation(line: 204, column: 69, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3672, file: !566, line: 204, column: 11)
!3672 = distinct !DILexicalBlock(scope: !3659, file: !566, line: 199, column: 5)
!3673 = !DILocation(line: 205, column: 11, scope: !3671)
!3674 = !DILocation(line: 204, column: 11, scope: !3672)
!3675 = !DILocation(line: 206, column: 9, scope: !3671)
!3676 = !DILocation(line: 210, column: 7, scope: !567)
!3677 = !DILocation(line: 211, column: 25, scope: !567)
!3678 = !DILocation(line: 51, column: 17, scope: !3618, inlinedAt: !3679)
!3679 = distinct !DILocation(line: 211, column: 10, scope: !567)
!3680 = !DILocation(line: 51, column: 27, scope: !3618, inlinedAt: !3679)
!3681 = !DILocation(line: 53, column: 10, scope: !3627, inlinedAt: !3679)
!3682 = !DILocation(line: 207, column: 14, scope: !3672)
!3683 = !DILocation(line: 207, column: 18, scope: !3672)
!3684 = !DILocation(line: 207, column: 9, scope: !3672)
!3685 = !DILocation(line: 53, column: 8, scope: !3627, inlinedAt: !3679)
!3686 = !DILocation(line: 57, column: 7, scope: !3631, inlinedAt: !3679)
!3687 = !DILocation(line: 58, column: 7, scope: !3631, inlinedAt: !3679)
!3688 = !DILocation(line: 61, column: 7, scope: !3618, inlinedAt: !3679)
!3689 = !DILocation(line: 62, column: 8, scope: !3635, inlinedAt: !3679)
!3690 = !DILocation(line: 62, column: 13, scope: !3635, inlinedAt: !3679)
!3691 = !DILocation(line: 62, column: 10, scope: !3635, inlinedAt: !3679)
!3692 = !DILocation(line: 63, column: 5, scope: !3635, inlinedAt: !3679)
!3693 = !DILocation(line: 211, column: 3, scope: !567)
!3694 = distinct !DISubprogram(name: "xcharalloc", scope: !566, file: !566, line: 220, type: !2653, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !562, variables: !3695)
!3695 = !{!3696}
!3696 = !DILocalVariable(name: "n", arg: 1, scope: !3694, file: !566, line: 220, type: !89)
!3697 = !DILocation(line: 220, column: 20, scope: !3694)
!3698 = !DILocation(line: 39, column: 17, scope: !3578, inlinedAt: !3699)
!3699 = distinct !DILocation(line: 222, column: 10, scope: !3694)
!3700 = !DILocation(line: 41, column: 13, scope: !3578, inlinedAt: !3699)
!3701 = !DILocation(line: 41, column: 9, scope: !3578, inlinedAt: !3699)
!3702 = !DILocation(line: 42, column: 8, scope: !3589, inlinedAt: !3699)
!3703 = !DILocation(line: 42, column: 15, scope: !3589, inlinedAt: !3699)
!3704 = !DILocation(line: 42, column: 10, scope: !3589, inlinedAt: !3699)
!3705 = !DILocation(line: 43, column: 5, scope: !3589, inlinedAt: !3699)
!3706 = !DILocation(line: 222, column: 3, scope: !3694)
!3707 = distinct !DISubprogram(name: "x2realloc", scope: !3579, file: !3579, line: 74, type: !3708, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !562, variables: !3710)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!44, !44, !570}
!3710 = !{!3711, !3712}
!3711 = !DILocalVariable(name: "p", arg: 1, scope: !3707, file: !3579, line: 74, type: !44)
!3712 = !DILocalVariable(name: "pn", arg: 2, scope: !3707, file: !3579, line: 74, type: !570)
!3713 = !DILocation(line: 74, column: 18, scope: !3707)
!3714 = !DILocation(line: 74, column: 29, scope: !3707)
!3715 = !DILocation(line: 180, column: 19, scope: !567, inlinedAt: !3716)
!3716 = distinct !DILocation(line: 76, column: 10, scope: !3707)
!3717 = !DILocation(line: 180, column: 30, scope: !567, inlinedAt: !3716)
!3718 = !DILocation(line: 180, column: 41, scope: !567, inlinedAt: !3716)
!3719 = !DILocation(line: 182, column: 14, scope: !567, inlinedAt: !3716)
!3720 = !DILocation(line: 182, column: 10, scope: !567, inlinedAt: !3716)
!3721 = !DILocation(line: 184, column: 9, scope: !3659, inlinedAt: !3716)
!3722 = !DILocation(line: 184, column: 7, scope: !567, inlinedAt: !3716)
!3723 = !DILocation(line: 186, column: 13, scope: !3662, inlinedAt: !3716)
!3724 = !DILocation(line: 186, column: 11, scope: !3663, inlinedAt: !3716)
!3725 = !DILocation(line: 210, column: 7, scope: !567, inlinedAt: !3716)
!3726 = !DILocation(line: 51, column: 17, scope: !3618, inlinedAt: !3727)
!3727 = distinct !DILocation(line: 211, column: 10, scope: !567, inlinedAt: !3716)
!3728 = !DILocation(line: 51, column: 27, scope: !3618, inlinedAt: !3727)
!3729 = !DILocation(line: 53, column: 10, scope: !3627, inlinedAt: !3727)
!3730 = !DILocation(line: 205, column: 11, scope: !3671, inlinedAt: !3716)
!3731 = !DILocation(line: 204, column: 11, scope: !3672, inlinedAt: !3716)
!3732 = !DILocation(line: 206, column: 9, scope: !3671, inlinedAt: !3716)
!3733 = !DILocation(line: 207, column: 14, scope: !3672, inlinedAt: !3716)
!3734 = !DILocation(line: 207, column: 18, scope: !3672, inlinedAt: !3716)
!3735 = !DILocation(line: 207, column: 9, scope: !3672, inlinedAt: !3716)
!3736 = !DILocation(line: 53, column: 8, scope: !3627, inlinedAt: !3727)
!3737 = !DILocation(line: 57, column: 7, scope: !3631, inlinedAt: !3727)
!3738 = !DILocation(line: 58, column: 7, scope: !3631, inlinedAt: !3727)
!3739 = !DILocation(line: 61, column: 7, scope: !3618, inlinedAt: !3727)
!3740 = !DILocation(line: 62, column: 8, scope: !3635, inlinedAt: !3727)
!3741 = !DILocation(line: 62, column: 13, scope: !3635, inlinedAt: !3727)
!3742 = !DILocation(line: 62, column: 10, scope: !3635, inlinedAt: !3727)
!3743 = !DILocation(line: 63, column: 5, scope: !3635, inlinedAt: !3727)
!3744 = !DILocation(line: 76, column: 3, scope: !3707)
!3745 = distinct !DISubprogram(name: "xzalloc", scope: !3579, file: !3579, line: 84, type: !3580, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !562, variables: !3746)
!3746 = !{!3747}
!3747 = !DILocalVariable(name: "s", arg: 1, scope: !3745, file: !3579, line: 84, type: !89)
!3748 = !DILocation(line: 84, column: 17, scope: !3745)
!3749 = !DILocation(line: 39, column: 17, scope: !3578, inlinedAt: !3750)
!3750 = distinct !DILocation(line: 86, column: 18, scope: !3745)
!3751 = !DILocation(line: 41, column: 13, scope: !3578, inlinedAt: !3750)
!3752 = !DILocation(line: 41, column: 9, scope: !3578, inlinedAt: !3750)
!3753 = !DILocation(line: 42, column: 8, scope: !3589, inlinedAt: !3750)
!3754 = !DILocation(line: 42, column: 15, scope: !3589, inlinedAt: !3750)
!3755 = !DILocation(line: 42, column: 10, scope: !3589, inlinedAt: !3750)
!3756 = !DILocation(line: 43, column: 5, scope: !3589, inlinedAt: !3750)
!3757 = !DILocation(line: 86, column: 10, scope: !3745)
!3758 = !DILocation(line: 86, column: 3, scope: !3745)
!3759 = distinct !DISubprogram(name: "xcalloc", scope: !3579, file: !3579, line: 93, type: !3565, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !562, variables: !3760)
!3760 = !{!3761, !3762, !3763}
!3761 = !DILocalVariable(name: "n", arg: 1, scope: !3759, file: !3579, line: 93, type: !89)
!3762 = !DILocalVariable(name: "s", arg: 2, scope: !3759, file: !3579, line: 93, type: !89)
!3763 = !DILocalVariable(name: "p", scope: !3759, file: !3579, line: 95, type: !44)
!3764 = !DILocation(line: 93, column: 17, scope: !3759)
!3765 = !DILocation(line: 93, column: 27, scope: !3759)
!3766 = !DILocation(line: 100, column: 7, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3759, file: !3579, line: 100, column: 7)
!3768 = !DILocation(line: 101, column: 7, scope: !3767)
!3769 = !DILocation(line: 101, column: 18, scope: !3767)
!3770 = !DILocation(line: 95, column: 9, scope: !3759)
!3771 = !DILocation(line: 101, column: 16, scope: !3767)
!3772 = !DILocation(line: 100, column: 7, scope: !3759)
!3773 = !DILocation(line: 102, column: 5, scope: !3767)
!3774 = !DILocation(line: 103, column: 3, scope: !3759)
!3775 = distinct !DISubprogram(name: "xmemdup", scope: !3579, file: !3579, line: 111, type: !3776, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !562, variables: !3780)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!44, !3778, !89}
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3780 = !{!3781, !3782}
!3781 = !DILocalVariable(name: "p", arg: 1, scope: !3775, file: !3579, line: 111, type: !3778)
!3782 = !DILocalVariable(name: "s", arg: 2, scope: !3775, file: !3579, line: 111, type: !89)
!3783 = !DILocation(line: 111, column: 22, scope: !3775)
!3784 = !DILocation(line: 111, column: 32, scope: !3775)
!3785 = !DILocation(line: 39, column: 17, scope: !3578, inlinedAt: !3786)
!3786 = distinct !DILocation(line: 113, column: 18, scope: !3775)
!3787 = !DILocation(line: 41, column: 13, scope: !3578, inlinedAt: !3786)
!3788 = !DILocation(line: 41, column: 9, scope: !3578, inlinedAt: !3786)
!3789 = !DILocation(line: 42, column: 8, scope: !3589, inlinedAt: !3786)
!3790 = !DILocation(line: 42, column: 15, scope: !3589, inlinedAt: !3786)
!3791 = !DILocation(line: 42, column: 10, scope: !3589, inlinedAt: !3786)
!3792 = !DILocation(line: 43, column: 5, scope: !3589, inlinedAt: !3786)
!3793 = !DILocation(line: 113, column: 10, scope: !3775)
!3794 = !DILocation(line: 113, column: 3, scope: !3775)
!3795 = distinct !DISubprogram(name: "xstrdup", scope: !3579, file: !3579, line: 119, type: !2855, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !562, variables: !3796)
!3796 = !{!3797}
!3797 = !DILocalVariable(name: "string", arg: 1, scope: !3795, file: !3579, line: 119, type: !10)
!3798 = !DILocation(line: 119, column: 22, scope: !3795)
!3799 = !DILocation(line: 121, column: 27, scope: !3795)
!3800 = !DILocation(line: 121, column: 43, scope: !3795)
!3801 = !DILocation(line: 111, column: 22, scope: !3775, inlinedAt: !3802)
!3802 = distinct !DILocation(line: 121, column: 10, scope: !3795)
!3803 = !DILocation(line: 111, column: 32, scope: !3775, inlinedAt: !3802)
!3804 = !DILocation(line: 39, column: 17, scope: !3578, inlinedAt: !3805)
!3805 = distinct !DILocation(line: 113, column: 18, scope: !3775, inlinedAt: !3802)
!3806 = !DILocation(line: 41, column: 13, scope: !3578, inlinedAt: !3805)
!3807 = !DILocation(line: 41, column: 9, scope: !3578, inlinedAt: !3805)
!3808 = !DILocation(line: 42, column: 8, scope: !3589, inlinedAt: !3805)
!3809 = !DILocation(line: 42, column: 15, scope: !3589, inlinedAt: !3805)
!3810 = !DILocation(line: 42, column: 10, scope: !3589, inlinedAt: !3805)
!3811 = !DILocation(line: 43, column: 5, scope: !3589, inlinedAt: !3805)
!3812 = !DILocation(line: 113, column: 10, scope: !3775, inlinedAt: !3802)
!3813 = !DILocation(line: 121, column: 3, scope: !3795)
!3814 = distinct !DISubprogram(name: "xalloc_die", scope: !3815, file: !3815, line: 32, type: !1353, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !579, variables: !4)
!3815 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3816 = !DILocation(line: 34, column: 10, scope: !3814)
!3817 = !DILocation(line: 34, column: 33, scope: !3814)
!3818 = !DILocation(line: 34, column: 3, scope: !3814)
!3819 = !DILocation(line: 40, column: 3, scope: !3814)
!3820 = distinct !DISubprogram(name: "rpl_calloc", scope: !3821, file: !3821, line: 42, type: !3565, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !581, variables: !3822)
!3821 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3822 = !{!3823, !3824, !3825, !3826}
!3823 = !DILocalVariable(name: "n", arg: 1, scope: !3820, file: !3821, line: 42, type: !89)
!3824 = !DILocalVariable(name: "s", arg: 2, scope: !3820, file: !3821, line: 42, type: !89)
!3825 = !DILocalVariable(name: "result", scope: !3820, file: !3821, line: 44, type: !44)
!3826 = !DILocalVariable(name: "bytes", scope: !3827, file: !3821, line: 56, type: !89)
!3827 = distinct !DILexicalBlock(scope: !3828, file: !3821, line: 53, column: 5)
!3828 = distinct !DILexicalBlock(scope: !3820, file: !3821, line: 47, column: 7)
!3829 = !DILocation(line: 42, column: 20, scope: !3820)
!3830 = !DILocation(line: 42, column: 30, scope: !3820)
!3831 = !DILocation(line: 47, column: 9, scope: !3828)
!3832 = !DILocation(line: 47, column: 19, scope: !3828)
!3833 = !DILocation(line: 47, column: 14, scope: !3828)
!3834 = !DILocation(line: 56, column: 24, scope: !3827)
!3835 = !DILocation(line: 56, column: 14, scope: !3827)
!3836 = !DILocation(line: 57, column: 17, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3827, file: !3821, line: 57, column: 11)
!3838 = !DILocation(line: 57, column: 21, scope: !3837)
!3839 = !DILocation(line: 57, column: 11, scope: !3827)
!3840 = !DILocation(line: 59, column: 11, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3837, file: !3821, line: 58, column: 9)
!3842 = !DILocation(line: 59, column: 17, scope: !3841)
!3843 = !DILocation(line: 65, column: 12, scope: !3820)
!3844 = !DILocation(line: 44, column: 9, scope: !3820)
!3845 = !DILocation(line: 72, column: 3, scope: !3820)
!3846 = !DILocation(line: 73, column: 1, scope: !3820)
!3847 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3848, file: !3848, line: 334, type: !3849, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3863)
!3848 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!89, !3851, !10, !89, !3852}
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1904, line: 6, baseType: !3854)
!3854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1906, line: 21, baseType: !3855)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1906, line: 13, size: 64, elements: !3856)
!3856 = !{!3857, !3858}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3855, file: !1906, line: 15, baseType: !20, size: 32)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3855, file: !1906, line: 20, baseType: !3859, size: 32, offset: 32)
!3859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3855, file: !1906, line: 16, size: 32, elements: !3860)
!3860 = !{!3861, !3862}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3859, file: !1906, line: 18, baseType: !108, size: 32)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3859, file: !1906, line: 19, baseType: !1915, size: 32)
!3863 = !{!3864, !3865, !3866, !3867, !3868, !3869, !3870}
!3864 = !DILocalVariable(name: "pwc", arg: 1, scope: !3847, file: !3848, line: 334, type: !3851)
!3865 = !DILocalVariable(name: "s", arg: 2, scope: !3847, file: !3848, line: 334, type: !10)
!3866 = !DILocalVariable(name: "n", arg: 3, scope: !3847, file: !3848, line: 334, type: !89)
!3867 = !DILocalVariable(name: "ps", arg: 4, scope: !3847, file: !3848, line: 334, type: !3852)
!3868 = !DILocalVariable(name: "ret", scope: !3847, file: !3848, line: 336, type: !89)
!3869 = !DILocalVariable(name: "wc", scope: !3847, file: !3848, line: 337, type: !1920)
!3870 = !DILocalVariable(name: "uc", scope: !3871, file: !3848, line: 398, type: !489)
!3871 = distinct !DILexicalBlock(scope: !3872, file: !3848, line: 397, column: 5)
!3872 = distinct !DILexicalBlock(scope: !3847, file: !3848, line: 396, column: 7)
!3873 = !DILocation(line: 334, column: 23, scope: !3847)
!3874 = !DILocation(line: 334, column: 40, scope: !3847)
!3875 = !DILocation(line: 334, column: 50, scope: !3847)
!3876 = !DILocation(line: 334, column: 64, scope: !3847)
!3877 = !DILocation(line: 337, column: 3, scope: !3847)
!3878 = !DILocation(line: 353, column: 9, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3847, file: !3848, line: 353, column: 7)
!3880 = !DILocation(line: 353, column: 7, scope: !3847)
!3881 = !DILocation(line: 388, column: 9, scope: !3847)
!3882 = !DILocation(line: 336, column: 10, scope: !3847)
!3883 = !DILocation(line: 396, column: 19, scope: !3872)
!3884 = !DILocation(line: 396, column: 31, scope: !3872)
!3885 = !DILocation(line: 396, column: 26, scope: !3872)
!3886 = !DILocation(line: 396, column: 41, scope: !3872)
!3887 = !DILocation(line: 396, column: 7, scope: !3847)
!3888 = !DILocation(line: 398, column: 26, scope: !3871)
!3889 = !DILocation(line: 398, column: 21, scope: !3871)
!3890 = !DILocation(line: 399, column: 14, scope: !3871)
!3891 = !DILocation(line: 399, column: 12, scope: !3871)
!3892 = !DILocation(line: 405, column: 1, scope: !3847)
!3893 = distinct !DISubprogram(name: "close_stream", scope: !3894, file: !3894, line: 56, type: !3895, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !586, variables: !3937)
!3894 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!20, !3897}
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3381, line: 7, baseType: !3899)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3383, line: 241, size: 1728, elements: !3900)
!3900 = !{!3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3899, file: !3383, line: 242, baseType: !20, size: 32)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3899, file: !3383, line: 247, baseType: !45, size: 64, offset: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3899, file: !3383, line: 248, baseType: !45, size: 64, offset: 128)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3899, file: !3383, line: 249, baseType: !45, size: 64, offset: 192)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3899, file: !3383, line: 250, baseType: !45, size: 64, offset: 256)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3899, file: !3383, line: 251, baseType: !45, size: 64, offset: 320)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3899, file: !3383, line: 252, baseType: !45, size: 64, offset: 384)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3899, file: !3383, line: 253, baseType: !45, size: 64, offset: 448)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3899, file: !3383, line: 254, baseType: !45, size: 64, offset: 512)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3899, file: !3383, line: 256, baseType: !45, size: 64, offset: 576)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3899, file: !3383, line: 257, baseType: !45, size: 64, offset: 640)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3899, file: !3383, line: 258, baseType: !45, size: 64, offset: 704)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3899, file: !3383, line: 260, baseType: !3914, size: 64, offset: 768)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3383, line: 156, size: 192, elements: !3916)
!3916 = !{!3917, !3918, !3920}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3915, file: !3383, line: 157, baseType: !3914, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3915, file: !3383, line: 158, baseType: !3919, size: 64, offset: 64)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3915, file: !3383, line: 162, baseType: !20, size: 32, offset: 128)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3899, file: !3383, line: 262, baseType: !3919, size: 64, offset: 832)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3899, file: !3383, line: 264, baseType: !20, size: 32, offset: 896)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3899, file: !3383, line: 268, baseType: !20, size: 32, offset: 928)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3899, file: !3383, line: 270, baseType: !526, size: 64, offset: 960)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3899, file: !3383, line: 274, baseType: !88, size: 16, offset: 1024)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3899, file: !3383, line: 275, baseType: !3411, size: 8, offset: 1040)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3899, file: !3383, line: 276, baseType: !3413, size: 8, offset: 1048)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3899, file: !3383, line: 280, baseType: !3415, size: 64, offset: 1088)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3899, file: !3383, line: 289, baseType: !3418, size: 64, offset: 1152)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3899, file: !3383, line: 297, baseType: !44, size: 64, offset: 1216)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3899, file: !3383, line: 298, baseType: !44, size: 64, offset: 1280)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3899, file: !3383, line: 299, baseType: !44, size: 64, offset: 1344)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3899, file: !3383, line: 300, baseType: !44, size: 64, offset: 1408)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3899, file: !3383, line: 302, baseType: !89, size: 64, offset: 1472)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3899, file: !3383, line: 303, baseType: !20, size: 32, offset: 1536)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3899, file: !3383, line: 305, baseType: !3426, size: 160, offset: 1568)
!3937 = !{!3938, !3939, !3941, !3942}
!3938 = !DILocalVariable(name: "stream", arg: 1, scope: !3893, file: !3894, line: 56, type: !3897)
!3939 = !DILocalVariable(name: "some_pending", scope: !3893, file: !3894, line: 58, type: !3940)
!3940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!3941 = !DILocalVariable(name: "prev_fail", scope: !3893, file: !3894, line: 59, type: !3940)
!3942 = !DILocalVariable(name: "fclose_fail", scope: !3893, file: !3894, line: 60, type: !3940)
!3943 = !DILocation(line: 56, column: 21, scope: !3893)
!3944 = !DILocation(line: 58, column: 30, scope: !3893)
!3945 = !DILocalVariable(name: "__stream", arg: 1, scope: !3946, file: !3947, line: 132, type: !3897)
!3946 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3947, file: !3947, line: 132, type: !3895, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !586, variables: !3948)
!3947 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3948 = !{!3945}
!3949 = !DILocation(line: 132, column: 1, scope: !3946, inlinedAt: !3950)
!3950 = distinct !DILocation(line: 59, column: 27, scope: !3893)
!3951 = !DILocation(line: 134, column: 10, scope: !3946, inlinedAt: !3950)
!3952 = !{!3953, !1370, i64 0}
!3953 = !{!"_IO_FILE", !1370, i64 0, !615, i64 8, !615, i64 16, !615, i64 24, !615, i64 32, !615, i64 40, !615, i64 48, !615, i64 56, !615, i64 64, !615, i64 72, !615, i64 80, !615, i64 88, !615, i64 96, !615, i64 104, !1370, i64 112, !1370, i64 116, !2698, i64 120, !2154, i64 128, !616, i64 130, !616, i64 131, !615, i64 136, !2698, i64 144, !615, i64 152, !615, i64 160, !615, i64 168, !615, i64 176, !2698, i64 184, !1370, i64 192, !616, i64 196}
!3954 = !DILocation(line: 59, column: 43, scope: !3893)
!3955 = !DILocation(line: 60, column: 29, scope: !3893)
!3956 = !DILocation(line: 60, column: 45, scope: !3893)
!3957 = !DILocation(line: 70, column: 17, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3893, file: !3894, line: 70, column: 7)
!3959 = !DILocation(line: 58, column: 50, scope: !3893)
!3960 = !DILocation(line: 70, column: 33, scope: !3958)
!3961 = !DILocation(line: 70, column: 53, scope: !3958)
!3962 = !DILocation(line: 70, column: 59, scope: !3958)
!3963 = !DILocation(line: 70, column: 7, scope: !3893)
!3964 = !DILocation(line: 72, column: 11, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3958, file: !3894, line: 71, column: 5)
!3966 = !DILocation(line: 73, column: 9, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3965, file: !3894, line: 72, column: 11)
!3968 = !DILocation(line: 73, column: 15, scope: !3967)
!3969 = !DILocation(line: 78, column: 1, scope: !3893)
!3970 = distinct !DISubprogram(name: "hard_locale", scope: !3971, file: !3971, line: 38, type: !3972, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !588, variables: !3974)
!3971 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!9, !20}
!3974 = !{!3975, !3976, !3977}
!3975 = !DILocalVariable(name: "category", arg: 1, scope: !3970, file: !3971, line: 38, type: !20)
!3976 = !DILocalVariable(name: "hard", scope: !3970, file: !3971, line: 40, type: !9)
!3977 = !DILocalVariable(name: "p", scope: !3970, file: !3971, line: 41, type: !10)
!3978 = !DILocation(line: 38, column: 18, scope: !3970)
!3979 = !DILocation(line: 40, column: 8, scope: !3970)
!3980 = !DILocation(line: 41, column: 19, scope: !3970)
!3981 = !DILocation(line: 41, column: 15, scope: !3970)
!3982 = !DILocation(line: 43, column: 7, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3970, file: !3971, line: 43, column: 7)
!3984 = !DILocation(line: 43, column: 7, scope: !3970)
!3985 = !DILocation(line: 47, column: 15, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3987, file: !3971, line: 47, column: 15)
!3987 = distinct !DILexicalBlock(scope: !3988, file: !3971, line: 46, column: 9)
!3988 = distinct !DILexicalBlock(scope: !3989, file: !3971, line: 45, column: 11)
!3989 = distinct !DILexicalBlock(scope: !3983, file: !3971, line: 44, column: 5)
!3990 = !DILocation(line: 47, column: 31, scope: !3986)
!3991 = !DILocation(line: 47, column: 36, scope: !3986)
!3992 = !DILocation(line: 47, column: 39, scope: !3986)
!3993 = !DILocation(line: 47, column: 59, scope: !3986)
!3994 = !DILocation(line: 47, column: 15, scope: !3987)
!3995 = !DILocation(line: 48, column: 13, scope: !3986)
!3996 = !DILocation(line: 71, column: 3, scope: !3970)
!3997 = distinct !DISubprogram(name: "locale_charset", scope: !491, file: !491, line: 393, type: !3998, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !4000)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!10}
!4000 = !{!4001, !4002}
!4001 = !DILocalVariable(name: "codeset", scope: !3997, file: !491, line: 395, type: !10)
!4002 = !DILocalVariable(name: "aliases", scope: !3997, file: !491, line: 396, type: !10)
!4003 = !DILocalVariable(name: "buf1", scope: !4004, file: !491, line: 196, type: !4071)
!4004 = distinct !DILexicalBlock(scope: !4005, file: !491, line: 194, column: 21)
!4005 = distinct !DILexicalBlock(scope: !4006, file: !491, line: 193, column: 19)
!4006 = distinct !DILexicalBlock(scope: !4007, file: !491, line: 193, column: 19)
!4007 = distinct !DILexicalBlock(scope: !4008, file: !491, line: 188, column: 17)
!4008 = distinct !DILexicalBlock(scope: !4009, file: !491, line: 181, column: 19)
!4009 = distinct !DILexicalBlock(scope: !4010, file: !491, line: 177, column: 13)
!4010 = distinct !DILexicalBlock(scope: !4011, file: !491, line: 173, column: 15)
!4011 = distinct !DILexicalBlock(scope: !4012, file: !491, line: 161, column: 9)
!4012 = distinct !DILexicalBlock(scope: !4013, file: !491, line: 157, column: 11)
!4013 = distinct !DILexicalBlock(scope: !4014, file: !491, line: 130, column: 5)
!4014 = distinct !DILexicalBlock(scope: !4015, file: !491, line: 129, column: 7)
!4015 = distinct !DISubprogram(name: "get_charset_aliases", scope: !491, file: !491, line: 124, type: !3998, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !4016)
!4016 = !{!4017, !4018, !4019, !4020, !4021, !4023, !4024, !4025, !4026, !4067, !4068, !4069, !4003, !4070, !4074, !4075, !4076}
!4017 = !DILocalVariable(name: "cp", scope: !4015, file: !491, line: 126, type: !10)
!4018 = !DILocalVariable(name: "dir", scope: !4013, file: !491, line: 132, type: !10)
!4019 = !DILocalVariable(name: "base", scope: !4013, file: !491, line: 133, type: !10)
!4020 = !DILocalVariable(name: "file_name", scope: !4013, file: !491, line: 134, type: !45)
!4021 = !DILocalVariable(name: "dir_len", scope: !4022, file: !491, line: 144, type: !89)
!4022 = distinct !DILexicalBlock(scope: !4013, file: !491, line: 143, column: 7)
!4023 = !DILocalVariable(name: "base_len", scope: !4022, file: !491, line: 145, type: !89)
!4024 = !DILocalVariable(name: "add_slash", scope: !4022, file: !491, line: 146, type: !20)
!4025 = !DILocalVariable(name: "fd", scope: !4011, file: !491, line: 162, type: !20)
!4026 = !DILocalVariable(name: "fp", scope: !4009, file: !491, line: 178, type: !4027)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3381, line: 7, baseType: !4029)
!4029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3383, line: 241, size: 1728, elements: !4030)
!4030 = !{!4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4029, file: !3383, line: 242, baseType: !20, size: 32)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4029, file: !3383, line: 247, baseType: !45, size: 64, offset: 64)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4029, file: !3383, line: 248, baseType: !45, size: 64, offset: 128)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4029, file: !3383, line: 249, baseType: !45, size: 64, offset: 192)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4029, file: !3383, line: 250, baseType: !45, size: 64, offset: 256)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4029, file: !3383, line: 251, baseType: !45, size: 64, offset: 320)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4029, file: !3383, line: 252, baseType: !45, size: 64, offset: 384)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4029, file: !3383, line: 253, baseType: !45, size: 64, offset: 448)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4029, file: !3383, line: 254, baseType: !45, size: 64, offset: 512)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4029, file: !3383, line: 256, baseType: !45, size: 64, offset: 576)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4029, file: !3383, line: 257, baseType: !45, size: 64, offset: 640)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4029, file: !3383, line: 258, baseType: !45, size: 64, offset: 704)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4029, file: !3383, line: 260, baseType: !4044, size: 64, offset: 768)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3383, line: 156, size: 192, elements: !4046)
!4046 = !{!4047, !4048, !4050}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4045, file: !3383, line: 157, baseType: !4044, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4045, file: !3383, line: 158, baseType: !4049, size: 64, offset: 64)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4045, file: !3383, line: 162, baseType: !20, size: 32, offset: 128)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4029, file: !3383, line: 262, baseType: !4049, size: 64, offset: 832)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4029, file: !3383, line: 264, baseType: !20, size: 32, offset: 896)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4029, file: !3383, line: 268, baseType: !20, size: 32, offset: 928)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4029, file: !3383, line: 270, baseType: !526, size: 64, offset: 960)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4029, file: !3383, line: 274, baseType: !88, size: 16, offset: 1024)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4029, file: !3383, line: 275, baseType: !3411, size: 8, offset: 1040)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4029, file: !3383, line: 276, baseType: !3413, size: 8, offset: 1048)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4029, file: !3383, line: 280, baseType: !3415, size: 64, offset: 1088)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4029, file: !3383, line: 289, baseType: !3418, size: 64, offset: 1152)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4029, file: !3383, line: 297, baseType: !44, size: 64, offset: 1216)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4029, file: !3383, line: 298, baseType: !44, size: 64, offset: 1280)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4029, file: !3383, line: 299, baseType: !44, size: 64, offset: 1344)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4029, file: !3383, line: 300, baseType: !44, size: 64, offset: 1408)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4029, file: !3383, line: 302, baseType: !89, size: 64, offset: 1472)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4029, file: !3383, line: 303, baseType: !20, size: 32, offset: 1536)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4029, file: !3383, line: 305, baseType: !3426, size: 160, offset: 1568)
!4067 = !DILocalVariable(name: "res_ptr", scope: !4007, file: !491, line: 190, type: !45)
!4068 = !DILocalVariable(name: "res_size", scope: !4007, file: !491, line: 191, type: !89)
!4069 = !DILocalVariable(name: "c", scope: !4004, file: !491, line: 195, type: !20)
!4070 = !DILocalVariable(name: "buf2", scope: !4004, file: !491, line: 197, type: !4071)
!4071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 408, elements: !4072)
!4072 = !{!4073}
!4073 = !DISubrange(count: 51)
!4074 = !DILocalVariable(name: "l1", scope: !4004, file: !491, line: 198, type: !89)
!4075 = !DILocalVariable(name: "l2", scope: !4004, file: !491, line: 198, type: !89)
!4076 = !DILocalVariable(name: "old_res_ptr", scope: !4004, file: !491, line: 199, type: !45)
!4077 = !DILocation(line: 196, column: 28, scope: !4004, inlinedAt: !4078)
!4078 = distinct !DILocation(line: 589, column: 18, scope: !4079)
!4079 = distinct !DILexicalBlock(scope: !3997, file: !491, line: 589, column: 3)
!4080 = !DILocation(line: 197, column: 28, scope: !4004, inlinedAt: !4078)
!4081 = !DILocation(line: 403, column: 13, scope: !3997)
!4082 = !DILocation(line: 395, column: 15, scope: !3997)
!4083 = !DILocation(line: 584, column: 15, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !3997, file: !491, line: 584, column: 7)
!4085 = !DILocation(line: 584, column: 7, scope: !3997)
!4086 = !DILocation(line: 128, column: 8, scope: !4015, inlinedAt: !4078)
!4087 = !DILocation(line: 126, column: 15, scope: !4015, inlinedAt: !4078)
!4088 = !DILocation(line: 129, column: 10, scope: !4014, inlinedAt: !4078)
!4089 = !DILocation(line: 129, column: 7, scope: !4015, inlinedAt: !4078)
!4090 = !DILocation(line: 138, column: 13, scope: !4013, inlinedAt: !4078)
!4091 = !DILocation(line: 132, column: 19, scope: !4013, inlinedAt: !4078)
!4092 = !DILocation(line: 139, column: 15, scope: !4093, inlinedAt: !4078)
!4093 = distinct !DILexicalBlock(scope: !4013, file: !491, line: 139, column: 11)
!4094 = !DILocation(line: 139, column: 23, scope: !4093, inlinedAt: !4078)
!4095 = !DILocation(line: 139, column: 26, scope: !4093, inlinedAt: !4078)
!4096 = !DILocation(line: 139, column: 33, scope: !4093, inlinedAt: !4078)
!4097 = !DILocation(line: 139, column: 11, scope: !4013, inlinedAt: !4078)
!4098 = !DILocation(line: 140, column: 9, scope: !4093, inlinedAt: !4078)
!4099 = !DILocation(line: 144, column: 26, scope: !4022, inlinedAt: !4078)
!4100 = !DILocation(line: 144, column: 16, scope: !4022, inlinedAt: !4078)
!4101 = !DILocation(line: 145, column: 16, scope: !4022, inlinedAt: !4078)
!4102 = !DILocation(line: 146, column: 34, scope: !4022, inlinedAt: !4078)
!4103 = !DILocation(line: 146, column: 38, scope: !4022, inlinedAt: !4078)
!4104 = !DILocation(line: 146, column: 42, scope: !4022, inlinedAt: !4078)
!4105 = !DILocation(line: 147, column: 48, scope: !4022, inlinedAt: !4078)
!4106 = !DILocation(line: 147, column: 46, scope: !4022, inlinedAt: !4078)
!4107 = !DILocation(line: 147, column: 69, scope: !4022, inlinedAt: !4078)
!4108 = !DILocation(line: 147, column: 30, scope: !4022, inlinedAt: !4078)
!4109 = !DILocation(line: 134, column: 13, scope: !4013, inlinedAt: !4078)
!4110 = !DILocation(line: 148, column: 13, scope: !4022, inlinedAt: !4078)
!4111 = !DILocation(line: 150, column: 13, scope: !4112, inlinedAt: !4078)
!4112 = distinct !DILexicalBlock(scope: !4113, file: !491, line: 149, column: 11)
!4113 = distinct !DILexicalBlock(scope: !4022, file: !491, line: 148, column: 13)
!4114 = !DILocation(line: 151, column: 17, scope: !4112, inlinedAt: !4078)
!4115 = !DILocation(line: 152, column: 34, scope: !4116, inlinedAt: !4078)
!4116 = distinct !DILexicalBlock(scope: !4112, file: !491, line: 151, column: 17)
!4117 = !DILocation(line: 153, column: 41, scope: !4112, inlinedAt: !4078)
!4118 = !DILocation(line: 153, column: 13, scope: !4112, inlinedAt: !4078)
!4119 = !DILocation(line: 157, column: 11, scope: !4013, inlinedAt: !4078)
!4120 = !DILocation(line: 171, column: 16, scope: !4011, inlinedAt: !4078)
!4121 = !DILocation(line: 162, column: 15, scope: !4011, inlinedAt: !4078)
!4122 = !DILocation(line: 173, column: 18, scope: !4010, inlinedAt: !4078)
!4123 = !DILocation(line: 173, column: 15, scope: !4011, inlinedAt: !4078)
!4124 = !DILocation(line: 180, column: 20, scope: !4009, inlinedAt: !4078)
!4125 = !DILocation(line: 178, column: 21, scope: !4009, inlinedAt: !4078)
!4126 = !DILocation(line: 181, column: 22, scope: !4008, inlinedAt: !4078)
!4127 = !DILocation(line: 181, column: 19, scope: !4009, inlinedAt: !4078)
!4128 = !DILocation(line: 184, column: 19, scope: !4129, inlinedAt: !4078)
!4129 = distinct !DILexicalBlock(scope: !4008, file: !491, line: 182, column: 17)
!4130 = !DILocation(line: 186, column: 17, scope: !4129, inlinedAt: !4078)
!4131 = !DILocation(line: 190, column: 25, scope: !4007, inlinedAt: !4078)
!4132 = !DILocation(line: 191, column: 26, scope: !4007, inlinedAt: !4078)
!4133 = !DILocation(line: 193, column: 19, scope: !4007, inlinedAt: !4078)
!4134 = !DILocation(line: 196, column: 23, scope: !4004, inlinedAt: !4078)
!4135 = !DILocation(line: 197, column: 23, scope: !4004, inlinedAt: !4078)
!4136 = !DILocalVariable(name: "__fp", arg: 1, scope: !4137, file: !3947, line: 63, type: !4027)
!4137 = distinct !DISubprogram(name: "getc_unlocked", scope: !3947, file: !3947, line: 63, type: !4138, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !4140)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!20, !4027}
!4140 = !{!4136}
!4141 = !DILocation(line: 63, column: 22, scope: !4137, inlinedAt: !4142)
!4142 = distinct !DILocation(line: 201, column: 27, scope: !4004, inlinedAt: !4078)
!4143 = !DILocation(line: 65, column: 10, scope: !4137, inlinedAt: !4142)
!4144 = !{!3953, !615, i64 8}
!4145 = !{!3953, !615, i64 16}
!4146 = !{!"branch_weights", i32 2000, i32 1}
!4147 = !DILocation(line: 195, column: 27, scope: !4004, inlinedAt: !4078)
!4148 = !DILocation(line: 202, column: 27, scope: !4004, inlinedAt: !4078)
!4149 = distinct !{!4149, !4150, !4153}
!4150 = !DILocation(line: 209, column: 27, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !4152, file: !491, line: 207, column: 25)
!4152 = distinct !DILexicalBlock(scope: !4004, file: !491, line: 206, column: 27)
!4153 = !DILocation(line: 211, column: 58, scope: !4151)
!4154 = !DILocation(line: 65, column: 10, scope: !4137, inlinedAt: !4155)
!4155 = distinct !DILocation(line: 210, column: 33, scope: !4151, inlinedAt: !4078)
!4156 = !DILocation(line: 63, column: 22, scope: !4137, inlinedAt: !4155)
!4157 = !DILocation(line: 210, column: 29, scope: !4151, inlinedAt: !4078)
!4158 = distinct !{!4158, !4159, !4160}
!4159 = !DILocation(line: 193, column: 19, scope: !4006)
!4160 = !DILocation(line: 241, column: 21, scope: !4006)
!4161 = !DILocation(line: 216, column: 23, scope: !4004, inlinedAt: !4078)
!4162 = !DILocation(line: 217, column: 27, scope: !4163, inlinedAt: !4078)
!4163 = distinct !DILexicalBlock(scope: !4004, file: !491, line: 217, column: 27)
!4164 = !DILocation(line: 217, column: 64, scope: !4163, inlinedAt: !4078)
!4165 = !DILocation(line: 217, column: 27, scope: !4004, inlinedAt: !4078)
!4166 = !DILocation(line: 219, column: 28, scope: !4004, inlinedAt: !4078)
!4167 = !DILocation(line: 198, column: 30, scope: !4004, inlinedAt: !4078)
!4168 = !DILocation(line: 220, column: 28, scope: !4004, inlinedAt: !4078)
!4169 = !DILocation(line: 198, column: 34, scope: !4004, inlinedAt: !4078)
!4170 = !DILocation(line: 199, column: 29, scope: !4004, inlinedAt: !4078)
!4171 = !DILocation(line: 222, column: 36, scope: !4172, inlinedAt: !4078)
!4172 = distinct !DILexicalBlock(scope: !4004, file: !491, line: 222, column: 27)
!4173 = !DILocation(line: 222, column: 27, scope: !4004, inlinedAt: !4078)
!4174 = !DILocation(line: 225, column: 63, scope: !4175, inlinedAt: !4078)
!4175 = distinct !DILexicalBlock(scope: !4172, file: !491, line: 223, column: 25)
!4176 = !DILocation(line: 225, column: 46, scope: !4175, inlinedAt: !4078)
!4177 = !DILocation(line: 226, column: 25, scope: !4175, inlinedAt: !4078)
!4178 = !DILocation(line: 229, column: 36, scope: !4179, inlinedAt: !4078)
!4179 = distinct !DILexicalBlock(scope: !4172, file: !491, line: 228, column: 25)
!4180 = !DILocation(line: 230, column: 73, scope: !4179, inlinedAt: !4078)
!4181 = !DILocation(line: 230, column: 46, scope: !4179, inlinedAt: !4078)
!4182 = !DILocation(line: 232, column: 35, scope: !4183, inlinedAt: !4078)
!4183 = distinct !DILexicalBlock(scope: !4004, file: !491, line: 232, column: 27)
!4184 = !DILocation(line: 232, column: 27, scope: !4004, inlinedAt: !4078)
!4185 = !DILocation(line: 236, column: 27, scope: !4186, inlinedAt: !4078)
!4186 = distinct !DILexicalBlock(scope: !4183, file: !491, line: 233, column: 25)
!4187 = !DILocation(line: 237, column: 27, scope: !4186, inlinedAt: !4078)
!4188 = !DILocation(line: 241, column: 21, scope: !4005, inlinedAt: !4078)
!4189 = !DILocation(line: 239, column: 39, scope: !4004, inlinedAt: !4078)
!4190 = !DILocation(line: 239, column: 50, scope: !4004, inlinedAt: !4078)
!4191 = !DILocation(line: 239, column: 61, scope: !4004, inlinedAt: !4078)
!4192 = !DILocalVariable(name: "__dest", arg: 1, scope: !4193, file: !4194, line: 88, type: !4197)
!4193 = distinct !DISubprogram(name: "strcpy", scope: !4194, file: !4194, line: 88, type: !4195, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !4199)
!4194 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!45, !4197, !4198}
!4197 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !45)
!4198 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !10)
!4199 = !{!4192, !4200}
!4200 = !DILocalVariable(name: "__src", arg: 2, scope: !4193, file: !4194, line: 88, type: !4198)
!4201 = !DILocation(line: 88, column: 1, scope: !4193, inlinedAt: !4202)
!4202 = distinct !DILocation(line: 239, column: 23, scope: !4004, inlinedAt: !4078)
!4203 = !DILocation(line: 90, column: 49, scope: !4193, inlinedAt: !4202)
!4204 = !DILocation(line: 90, column: 10, scope: !4193, inlinedAt: !4202)
!4205 = !DILocation(line: 88, column: 1, scope: !4193, inlinedAt: !4206)
!4206 = distinct !DILocation(line: 240, column: 23, scope: !4004, inlinedAt: !4078)
!4207 = !DILocation(line: 90, column: 49, scope: !4193, inlinedAt: !4206)
!4208 = !DILocation(line: 90, column: 10, scope: !4193, inlinedAt: !4206)
!4209 = !DILocation(line: 193, column: 19, scope: !4005, inlinedAt: !4078)
!4210 = !DILocation(line: 242, column: 19, scope: !4007, inlinedAt: !4078)
!4211 = !DILocation(line: 243, column: 32, scope: !4212, inlinedAt: !4078)
!4212 = distinct !DILexicalBlock(scope: !4007, file: !491, line: 243, column: 23)
!4213 = !DILocation(line: 243, column: 23, scope: !4007, inlinedAt: !4078)
!4214 = !DILocation(line: 247, column: 33, scope: !4215, inlinedAt: !4078)
!4215 = distinct !DILexicalBlock(scope: !4212, file: !491, line: 246, column: 21)
!4216 = !DILocation(line: 247, column: 45, scope: !4215, inlinedAt: !4078)
!4217 = !DILocation(line: 253, column: 11, scope: !4011, inlinedAt: !4078)
!4218 = !DILocation(line: 377, column: 23, scope: !4013, inlinedAt: !4078)
!4219 = !DILocation(line: 378, column: 5, scope: !4013, inlinedAt: !4078)
!4220 = !DILocation(line: 396, column: 15, scope: !3997)
!4221 = !DILocation(line: 590, column: 8, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4079, file: !491, line: 589, column: 3)
!4223 = !DILocation(line: 590, column: 17, scope: !4222)
!4224 = !DILocation(line: 589, column: 3, scope: !4079)
!4225 = !DILocation(line: 592, column: 9, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4222, file: !491, line: 592, column: 9)
!4227 = !DILocation(line: 592, column: 35, scope: !4226)
!4228 = !DILocation(line: 593, column: 9, scope: !4226)
!4229 = !DILocation(line: 593, column: 24, scope: !4226)
!4230 = !DILocation(line: 593, column: 31, scope: !4226)
!4231 = !DILocation(line: 593, column: 34, scope: !4226)
!4232 = !DILocation(line: 593, column: 45, scope: !4226)
!4233 = !DILocation(line: 592, column: 9, scope: !4222)
!4234 = !DILocation(line: 595, column: 29, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4226, file: !491, line: 594, column: 7)
!4236 = !DILocation(line: 595, column: 27, scope: !4235)
!4237 = !DILocation(line: 595, column: 46, scope: !4235)
!4238 = !DILocation(line: 596, column: 9, scope: !4235)
!4239 = !DILocation(line: 591, column: 19, scope: !4222)
!4240 = !DILocation(line: 591, column: 36, scope: !4222)
!4241 = !DILocation(line: 591, column: 16, scope: !4222)
!4242 = !DILocation(line: 591, column: 52, scope: !4222)
!4243 = !DILocation(line: 591, column: 69, scope: !4222)
!4244 = !DILocation(line: 591, column: 49, scope: !4222)
!4245 = distinct !{!4245, !4224, !4246}
!4246 = !DILocation(line: 597, column: 7, scope: !4079)
!4247 = !DILocation(line: 602, column: 7, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !3997, file: !491, line: 602, column: 7)
!4249 = !DILocation(line: 602, column: 18, scope: !4248)
!4250 = !DILocation(line: 602, column: 7, scope: !3997)
!4251 = !DILocation(line: 612, column: 3, scope: !3997)
!4252 = distinct !DISubprogram(name: "rpl_fclose", scope: !4253, file: !4253, line: 56, type: !4254, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !590, variables: !4296)
!4253 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!20, !4256}
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3381, line: 7, baseType: !4258)
!4258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3383, line: 241, size: 1728, elements: !4259)
!4259 = !{!4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4258, file: !3383, line: 242, baseType: !20, size: 32)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4258, file: !3383, line: 247, baseType: !45, size: 64, offset: 64)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4258, file: !3383, line: 248, baseType: !45, size: 64, offset: 128)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4258, file: !3383, line: 249, baseType: !45, size: 64, offset: 192)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4258, file: !3383, line: 250, baseType: !45, size: 64, offset: 256)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4258, file: !3383, line: 251, baseType: !45, size: 64, offset: 320)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4258, file: !3383, line: 252, baseType: !45, size: 64, offset: 384)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4258, file: !3383, line: 253, baseType: !45, size: 64, offset: 448)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4258, file: !3383, line: 254, baseType: !45, size: 64, offset: 512)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4258, file: !3383, line: 256, baseType: !45, size: 64, offset: 576)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4258, file: !3383, line: 257, baseType: !45, size: 64, offset: 640)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4258, file: !3383, line: 258, baseType: !45, size: 64, offset: 704)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4258, file: !3383, line: 260, baseType: !4273, size: 64, offset: 768)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3383, line: 156, size: 192, elements: !4275)
!4275 = !{!4276, !4277, !4279}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4274, file: !3383, line: 157, baseType: !4273, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4274, file: !3383, line: 158, baseType: !4278, size: 64, offset: 64)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4274, file: !3383, line: 162, baseType: !20, size: 32, offset: 128)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4258, file: !3383, line: 262, baseType: !4278, size: 64, offset: 832)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4258, file: !3383, line: 264, baseType: !20, size: 32, offset: 896)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4258, file: !3383, line: 268, baseType: !20, size: 32, offset: 928)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4258, file: !3383, line: 270, baseType: !526, size: 64, offset: 960)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4258, file: !3383, line: 274, baseType: !88, size: 16, offset: 1024)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4258, file: !3383, line: 275, baseType: !3411, size: 8, offset: 1040)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4258, file: !3383, line: 276, baseType: !3413, size: 8, offset: 1048)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4258, file: !3383, line: 280, baseType: !3415, size: 64, offset: 1088)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4258, file: !3383, line: 289, baseType: !3418, size: 64, offset: 1152)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4258, file: !3383, line: 297, baseType: !44, size: 64, offset: 1216)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4258, file: !3383, line: 298, baseType: !44, size: 64, offset: 1280)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4258, file: !3383, line: 299, baseType: !44, size: 64, offset: 1344)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4258, file: !3383, line: 300, baseType: !44, size: 64, offset: 1408)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4258, file: !3383, line: 302, baseType: !89, size: 64, offset: 1472)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4258, file: !3383, line: 303, baseType: !20, size: 32, offset: 1536)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4258, file: !3383, line: 305, baseType: !3426, size: 160, offset: 1568)
!4296 = !{!4297, !4298, !4299, !4300}
!4297 = !DILocalVariable(name: "fp", arg: 1, scope: !4252, file: !4253, line: 56, type: !4256)
!4298 = !DILocalVariable(name: "saved_errno", scope: !4252, file: !4253, line: 58, type: !20)
!4299 = !DILocalVariable(name: "fd", scope: !4252, file: !4253, line: 59, type: !20)
!4300 = !DILocalVariable(name: "result", scope: !4252, file: !4253, line: 60, type: !20)
!4301 = !DILocation(line: 56, column: 19, scope: !4252)
!4302 = !DILocation(line: 58, column: 7, scope: !4252)
!4303 = !DILocation(line: 60, column: 7, scope: !4252)
!4304 = !DILocation(line: 63, column: 8, scope: !4252)
!4305 = !DILocation(line: 59, column: 7, scope: !4252)
!4306 = !DILocation(line: 64, column: 10, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4252, file: !4253, line: 64, column: 7)
!4308 = !DILocation(line: 64, column: 7, scope: !4252)
!4309 = !DILocation(line: 65, column: 12, scope: !4307)
!4310 = !DILocation(line: 65, column: 5, scope: !4307)
!4311 = !DILocation(line: 70, column: 9, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4252, file: !4253, line: 70, column: 7)
!4313 = !DILocation(line: 70, column: 23, scope: !4312)
!4314 = !DILocation(line: 70, column: 33, scope: !4312)
!4315 = !DILocation(line: 70, column: 26, scope: !4312)
!4316 = !DILocation(line: 70, column: 59, scope: !4312)
!4317 = !DILocation(line: 71, column: 7, scope: !4312)
!4318 = !DILocation(line: 71, column: 10, scope: !4312)
!4319 = !DILocation(line: 70, column: 7, scope: !4252)
!4320 = !DILocation(line: 98, column: 12, scope: !4252)
!4321 = !DILocation(line: 103, column: 7, scope: !4252)
!4322 = !DILocation(line: 72, column: 19, scope: !4312)
!4323 = !DILocation(line: 103, column: 19, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4252, file: !4253, line: 103, column: 7)
!4325 = !DILocation(line: 105, column: 13, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4324, file: !4253, line: 104, column: 5)
!4327 = !DILocation(line: 107, column: 5, scope: !4326)
!4328 = !DILocation(line: 110, column: 1, scope: !4252)
!4329 = distinct !DISubprogram(name: "rpl_fflush", scope: !4330, file: !4330, line: 127, type: !4331, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !592, variables: !4373)
!4330 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4331 = !DISubroutineType(types: !4332)
!4332 = !{!20, !4333}
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4334 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3381, line: 7, baseType: !4335)
!4335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3383, line: 241, size: 1728, elements: !4336)
!4336 = !{!4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4335, file: !3383, line: 242, baseType: !20, size: 32)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4335, file: !3383, line: 247, baseType: !45, size: 64, offset: 64)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4335, file: !3383, line: 248, baseType: !45, size: 64, offset: 128)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4335, file: !3383, line: 249, baseType: !45, size: 64, offset: 192)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4335, file: !3383, line: 250, baseType: !45, size: 64, offset: 256)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4335, file: !3383, line: 251, baseType: !45, size: 64, offset: 320)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4335, file: !3383, line: 252, baseType: !45, size: 64, offset: 384)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4335, file: !3383, line: 253, baseType: !45, size: 64, offset: 448)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4335, file: !3383, line: 254, baseType: !45, size: 64, offset: 512)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4335, file: !3383, line: 256, baseType: !45, size: 64, offset: 576)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4335, file: !3383, line: 257, baseType: !45, size: 64, offset: 640)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4335, file: !3383, line: 258, baseType: !45, size: 64, offset: 704)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4335, file: !3383, line: 260, baseType: !4350, size: 64, offset: 768)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3383, line: 156, size: 192, elements: !4352)
!4352 = !{!4353, !4354, !4356}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4351, file: !3383, line: 157, baseType: !4350, size: 64)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4351, file: !3383, line: 158, baseType: !4355, size: 64, offset: 64)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4351, file: !3383, line: 162, baseType: !20, size: 32, offset: 128)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4335, file: !3383, line: 262, baseType: !4355, size: 64, offset: 832)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4335, file: !3383, line: 264, baseType: !20, size: 32, offset: 896)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4335, file: !3383, line: 268, baseType: !20, size: 32, offset: 928)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4335, file: !3383, line: 270, baseType: !526, size: 64, offset: 960)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4335, file: !3383, line: 274, baseType: !88, size: 16, offset: 1024)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4335, file: !3383, line: 275, baseType: !3411, size: 8, offset: 1040)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4335, file: !3383, line: 276, baseType: !3413, size: 8, offset: 1048)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4335, file: !3383, line: 280, baseType: !3415, size: 64, offset: 1088)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4335, file: !3383, line: 289, baseType: !3418, size: 64, offset: 1152)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4335, file: !3383, line: 297, baseType: !44, size: 64, offset: 1216)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4335, file: !3383, line: 298, baseType: !44, size: 64, offset: 1280)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4335, file: !3383, line: 299, baseType: !44, size: 64, offset: 1344)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4335, file: !3383, line: 300, baseType: !44, size: 64, offset: 1408)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4335, file: !3383, line: 302, baseType: !89, size: 64, offset: 1472)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4335, file: !3383, line: 303, baseType: !20, size: 32, offset: 1536)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4335, file: !3383, line: 305, baseType: !3426, size: 160, offset: 1568)
!4373 = !{!4374}
!4374 = !DILocalVariable(name: "stream", arg: 1, scope: !4329, file: !4330, line: 127, type: !4333)
!4375 = !DILocation(line: 127, column: 19, scope: !4329)
!4376 = !DILocation(line: 148, column: 14, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4329, file: !4330, line: 148, column: 7)
!4378 = !DILocation(line: 148, column: 22, scope: !4377)
!4379 = !DILocation(line: 148, column: 27, scope: !4377)
!4380 = !DILocation(line: 148, column: 7, scope: !4329)
!4381 = !DILocation(line: 149, column: 12, scope: !4377)
!4382 = !DILocation(line: 149, column: 5, scope: !4377)
!4383 = !DILocalVariable(name: "fp", arg: 1, scope: !4384, file: !4330, line: 40, type: !4333)
!4384 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4330, file: !4330, line: 40, type: !4385, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !592, variables: !4387)
!4385 = !DISubroutineType(types: !4386)
!4386 = !{null, !4333}
!4387 = !{!4383}
!4388 = !DILocation(line: 40, column: 48, scope: !4384, inlinedAt: !4389)
!4389 = distinct !DILocation(line: 153, column: 3, scope: !4329)
!4390 = !DILocation(line: 42, column: 11, scope: !4391, inlinedAt: !4389)
!4391 = distinct !DILexicalBlock(scope: !4384, file: !4330, line: 42, column: 7)
!4392 = !DILocation(line: 42, column: 18, scope: !4391, inlinedAt: !4389)
!4393 = !DILocation(line: 42, column: 7, scope: !4384, inlinedAt: !4389)
!4394 = !DILocation(line: 44, column: 5, scope: !4391, inlinedAt: !4389)
!4395 = !DILocation(line: 155, column: 10, scope: !4329)
!4396 = !DILocation(line: 155, column: 3, scope: !4329)
!4397 = !DILocation(line: 229, column: 1, scope: !4329)
!4398 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4399, file: !4399, line: 28, type: !4400, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !594, variables: !4442)
!4399 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4400 = !DISubroutineType(types: !4401)
!4401 = !{!20, !4402, !525, !20}
!4402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4403, size: 64)
!4403 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3381, line: 7, baseType: !4404)
!4404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3383, line: 241, size: 1728, elements: !4405)
!4405 = !{!4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4404, file: !3383, line: 242, baseType: !20, size: 32)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4404, file: !3383, line: 247, baseType: !45, size: 64, offset: 64)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4404, file: !3383, line: 248, baseType: !45, size: 64, offset: 128)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4404, file: !3383, line: 249, baseType: !45, size: 64, offset: 192)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4404, file: !3383, line: 250, baseType: !45, size: 64, offset: 256)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4404, file: !3383, line: 251, baseType: !45, size: 64, offset: 320)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4404, file: !3383, line: 252, baseType: !45, size: 64, offset: 384)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4404, file: !3383, line: 253, baseType: !45, size: 64, offset: 448)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4404, file: !3383, line: 254, baseType: !45, size: 64, offset: 512)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4404, file: !3383, line: 256, baseType: !45, size: 64, offset: 576)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4404, file: !3383, line: 257, baseType: !45, size: 64, offset: 640)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4404, file: !3383, line: 258, baseType: !45, size: 64, offset: 704)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4404, file: !3383, line: 260, baseType: !4419, size: 64, offset: 768)
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3383, line: 156, size: 192, elements: !4421)
!4421 = !{!4422, !4423, !4425}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4420, file: !3383, line: 157, baseType: !4419, size: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4420, file: !3383, line: 158, baseType: !4424, size: 64, offset: 64)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4420, file: !3383, line: 162, baseType: !20, size: 32, offset: 128)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4404, file: !3383, line: 262, baseType: !4424, size: 64, offset: 832)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4404, file: !3383, line: 264, baseType: !20, size: 32, offset: 896)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4404, file: !3383, line: 268, baseType: !20, size: 32, offset: 928)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4404, file: !3383, line: 270, baseType: !526, size: 64, offset: 960)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4404, file: !3383, line: 274, baseType: !88, size: 16, offset: 1024)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4404, file: !3383, line: 275, baseType: !3411, size: 8, offset: 1040)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4404, file: !3383, line: 276, baseType: !3413, size: 8, offset: 1048)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4404, file: !3383, line: 280, baseType: !3415, size: 64, offset: 1088)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4404, file: !3383, line: 289, baseType: !3418, size: 64, offset: 1152)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4404, file: !3383, line: 297, baseType: !44, size: 64, offset: 1216)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4404, file: !3383, line: 298, baseType: !44, size: 64, offset: 1280)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4404, file: !3383, line: 299, baseType: !44, size: 64, offset: 1344)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4404, file: !3383, line: 300, baseType: !44, size: 64, offset: 1408)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4404, file: !3383, line: 302, baseType: !89, size: 64, offset: 1472)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4404, file: !3383, line: 303, baseType: !20, size: 32, offset: 1536)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4404, file: !3383, line: 305, baseType: !3426, size: 160, offset: 1568)
!4442 = !{!4443, !4444, !4445, !4446}
!4443 = !DILocalVariable(name: "fp", arg: 1, scope: !4398, file: !4399, line: 28, type: !4402)
!4444 = !DILocalVariable(name: "offset", arg: 2, scope: !4398, file: !4399, line: 28, type: !525)
!4445 = !DILocalVariable(name: "whence", arg: 3, scope: !4398, file: !4399, line: 28, type: !20)
!4446 = !DILocalVariable(name: "pos", scope: !4447, file: !4399, line: 116, type: !525)
!4447 = distinct !DILexicalBlock(scope: !4448, file: !4399, line: 112, column: 5)
!4448 = distinct !DILexicalBlock(scope: !4398, file: !4399, line: 51, column: 7)
!4449 = !DILocation(line: 28, column: 15, scope: !4398)
!4450 = !DILocation(line: 28, column: 25, scope: !4398)
!4451 = !DILocation(line: 28, column: 37, scope: !4398)
!4452 = !DILocation(line: 51, column: 11, scope: !4448)
!4453 = !DILocation(line: 51, column: 31, scope: !4448)
!4454 = !DILocation(line: 51, column: 24, scope: !4448)
!4455 = !DILocation(line: 52, column: 7, scope: !4448)
!4456 = !DILocation(line: 52, column: 14, scope: !4448)
!4457 = !{!3953, !615, i64 40}
!4458 = !DILocation(line: 52, column: 35, scope: !4448)
!4459 = !{!3953, !615, i64 32}
!4460 = !DILocation(line: 52, column: 28, scope: !4448)
!4461 = !DILocation(line: 53, column: 7, scope: !4448)
!4462 = !DILocation(line: 53, column: 14, scope: !4448)
!4463 = !{!3953, !615, i64 72}
!4464 = !DILocation(line: 53, column: 28, scope: !4448)
!4465 = !DILocation(line: 51, column: 7, scope: !4398)
!4466 = !DILocation(line: 116, column: 26, scope: !4447)
!4467 = !DILocation(line: 116, column: 19, scope: !4447)
!4468 = !DILocation(line: 116, column: 13, scope: !4447)
!4469 = !DILocation(line: 117, column: 15, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4447, file: !4399, line: 117, column: 11)
!4471 = !DILocation(line: 117, column: 11, scope: !4447)
!4472 = !DILocation(line: 127, column: 11, scope: !4447)
!4473 = !DILocation(line: 127, column: 18, scope: !4447)
!4474 = !DILocation(line: 128, column: 11, scope: !4447)
!4475 = !DILocation(line: 128, column: 19, scope: !4447)
!4476 = !{!3953, !2698, i64 144}
!4477 = !DILocation(line: 159, column: 7, scope: !4447)
!4478 = !DILocation(line: 161, column: 10, scope: !4398)
!4479 = !DILocation(line: 161, column: 3, scope: !4398)
!4480 = !DILocation(line: 162, column: 1, scope: !4398)
