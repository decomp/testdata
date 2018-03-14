; ModuleID = 'coreutils-8.27/src/pinky.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.utmpx = type { i16, i32, [32 x i8], [4 x i8], [32 x i8], [256 x i8], %struct.__exit_status, i32, %struct.anon, [4 x i32], [20 x i8] }
%struct.__exit_status = type { i16, i16 }
%struct.anon = type { i32, i32 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [USER]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [328 x i8] c"\0A  -l              produce long format output for the specified USERs\0A  -b              omit the user's home directory and shell in long format\0A  -h              omit the user's project file in long format\0A  -p              omit the user's plan file in long format\0A  -s              do short format output, this is the default\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [309 x i8] c"  -f              omit the line of column headings in short format\0A  -w              omit the user's full name in short format\0A  -i              omit the user's full name and remote host in short format\0A  -q              omit the user's full name, remote host and idle time\0A                  in short format\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [85 x i8] c"\0AA lightweight 'finger' program;  print user information.\0AThe utmp file will be %s.\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"/var/run/utmp\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"pinky\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.29 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.31 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"sfwiqbhlp\00", align 1
@longopts = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@do_short_format = internal unnamed_addr global i1 false, align 1
@include_heading = internal unnamed_addr global i1 false, align 1
@include_fullname = internal unnamed_addr global i1 false, align 1
@include_where = internal unnamed_addr global i1 false, align 1
@include_idle = internal unnamed_addr global i1 false, align 1
@include_project = internal unnamed_addr global i1 false, align 1
@include_plan = internal unnamed_addr global i1 false, align 1
@include_home_and_shell = internal unnamed_addr global i1 false, align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Joseph Arceneaux\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Kaveh Ghazi\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [68 x i8] c"no username specified; at least one must be specified when using -l\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"%Y-%m-%d %H:%M\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"%b %e %H:%M\00", align 1
@time_format = internal unnamed_addr global i8* null, align 8, !dbg !88
@time_format_width = internal unnamed_addr global i32 0, align 4, !dbg !90
@.str.39 = private unnamed_addr constant [6 x i8] c"Login\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"%-8s\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c" %-19s\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c" TTY\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c" %-9s\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"Idle\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c" %-6s\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"When\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c" %-*s\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"Where\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"Login name: \00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"%-28s\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"In real life: \00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"???\0A\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"Directory: \00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"%-29s\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"Shell: \00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"/.project\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"Project: \00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"/.plan\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"Plan:\0A\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"%-8.*s\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"        ???\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c" %19s\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c" %-19.19s\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c" %c%-8.*s\00", align 1
@idle_string.now = internal global i64 0, align 8, !dbg !92
@idle_string.buf = internal global [22 x i8] zeroinitializer, align 16, !dbg !111
@.str.59 = private unnamed_addr constant [10 x i8] c"%02d:%02d\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"%lud\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"     \00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"?????\00", align 1
@time_string.buf = internal global [33 x i8] zeroinitializer, align 16, !dbg !116
@.str.57 = private unnamed_addr constant [7 x i8] c" %s:%s\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), align 8, !dbg !196
@.str.18 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@last_cherror = internal global i32 0, align 4, !dbg !202
@canon_host_r.hints = internal global %struct.addrinfo zeroinitializer, align 8, !dbg !207
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !245
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !250
@.str.23 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.24 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.25 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !253
@.str.73 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.74 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !260
@.str.81 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.82 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.83 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.85, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.86, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.87, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.88, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.89, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.90, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.91, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.92, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.93, i32 0, i32 0), i8* null], align 16, !dbg !267
@.str.84 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.85 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.86 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.87 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.88 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.89 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.90 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.91 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.92 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.93 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !279
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !286
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !298
@.str.11.94 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.95 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.96 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.97 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.98 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.99 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.100 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !302
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !309
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !300
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !311
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
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !317
@.str.1.136 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.137 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.154 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !326
@.str.3.155 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.156 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.157 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.158 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.159 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.160 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !743 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !747, metadata !748), !dbg !749
  %2 = icmp eq i32 %0, 0, !dbg !750
  br i1 %2, label %8, label %3, !dbg !752

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !753, !tbaa !755
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !753
  %6 = load i8*, i8** @program_name, align 8, !dbg !753, !tbaa !755
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !753
  br label %41, !dbg !753

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !759
  %10 = load i8*, i8** @program_name, align 8, !dbg !759, !tbaa !755
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #11, !dbg !759
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([328 x i8], [328 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !761
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !761, !tbaa !755
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11, !dbg !761
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([309 x i8], [309 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !762
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !762, !tbaa !755
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11, !dbg !762
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !763
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !763, !tbaa !755
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11, !dbg !763
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !764
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !764, !tbaa !755
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #11, !dbg !764
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.6, i64 0, i64 0), i32 5) #11, !dbg !765
  %25 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !765
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !59, metadata !748) #11, !dbg !766
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i64 0, metadata !59, metadata !748) #11, !dbg !766
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0), i32 5) #11, !dbg !768
  %27 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.27, i64 0, i64 0)) #11, !dbg !768
  %28 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !769
  tail call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !67, metadata !748) #11, !dbg !770
  %29 = icmp eq i8* %28, null, !dbg !771
  br i1 %29, label %36, label %30, !dbg !773

; <label>:30:                                     ; preds = %8
  %31 = tail call i32 @strncmp(i8* nonnull %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i64 3) #14, !dbg !774
  %32 = icmp eq i32 %31, 0, !dbg !774
  br i1 %32, label %36, label %33, !dbg !775

; <label>:33:                                     ; preds = %30
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.29, i64 0, i64 0), i32 5) #11, !dbg !776
  %35 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !776
  br label %36, !dbg !778

; <label>:36:                                     ; preds = %8, %30, %33
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i32 5) #11, !dbg !779
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !779
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.31, i64 0, i64 0), i32 5) #11, !dbg !780
  %40 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0)) #11, !dbg !780
  br label %41

; <label>:41:                                     ; preds = %36, %3
  tail call void @exit(i32 %0) #15, !dbg !781
  unreachable, !dbg !781
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !782 {
  %3 = alloca [1024 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [1024 x i8]* %3, metadata !791, metadata !748), !dbg !884
  %4 = alloca [1024 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !875, metadata !748), !dbg !899
  %5 = alloca i64, align 8
  %6 = alloca %struct.utmpx*, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !787, metadata !748), !dbg !900
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !788, metadata !748), !dbg !901
  %7 = load i8*, i8** %1, align 8, !dbg !902, !tbaa !755
  tail call void @set_program_name(i8* %7) #11, !dbg !903
  %8 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !904
  %9 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !905
  %10 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !906
  %11 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !907
  br label %12, !dbg !908

; <label>:12:                                     ; preds = %23, %2
  %13 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #11, !dbg !909
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !789, metadata !748), !dbg !910
  switch i32 %13, label %28 [
    i32 -1, label %29
    i32 115, label %14
    i32 108, label %15
    i32 102, label %16
    i32 119, label %17
    i32 105, label %18
    i32 113, label %19
    i32 104, label %20
    i32 112, label %21
    i32 98, label %22
    i32 -130, label %24
    i32 -131, label %25
  ], !dbg !908

; <label>:14:                                     ; preds = %12
  store i1 false, i1* @do_short_format, align 1
  br label %23, !dbg !911

; <label>:15:                                     ; preds = %12
  store i1 true, i1* @do_short_format, align 1
  br label %23, !dbg !914

; <label>:16:                                     ; preds = %12
  store i1 true, i1* @include_heading, align 1
  br label %23, !dbg !915

; <label>:17:                                     ; preds = %12
  store i1 true, i1* @include_fullname, align 1
  br label %23, !dbg !916

; <label>:18:                                     ; preds = %12
  store i1 true, i1* @include_fullname, align 1
  store i1 true, i1* @include_where, align 1
  br label %23, !dbg !917

; <label>:19:                                     ; preds = %12
  store i1 true, i1* @include_fullname, align 1
  store i1 true, i1* @include_where, align 1
  store i1 true, i1* @include_idle, align 1
  br label %23, !dbg !918

; <label>:20:                                     ; preds = %12
  store i1 true, i1* @include_project, align 1
  br label %23, !dbg !919

; <label>:21:                                     ; preds = %12
  store i1 true, i1* @include_plan, align 1
  br label %23, !dbg !920

; <label>:22:                                     ; preds = %12
  store i1 true, i1* @include_home_and_shell, align 1
  br label %23, !dbg !921

; <label>:23:                                     ; preds = %22, %21, %20, %19, %18, %17, %16, %15, %14
  br label %12, !dbg !909, !llvm.loop !922

; <label>:24:                                     ; preds = %12
  tail call void @usage(i32 0) #16, !dbg !924
  unreachable, !dbg !924

; <label>:25:                                     ; preds = %12
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !925, !tbaa !755
  %27 = load i8*, i8** @Version, align 8, !dbg !925, !tbaa !755
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* null) #11, !dbg !925
  tail call void @exit(i32 0) #15, !dbg !925
  unreachable, !dbg !925

; <label>:28:                                     ; preds = %12
  tail call void @usage(i32 1) #16, !dbg !926
  unreachable, !dbg !926

; <label>:29:                                     ; preds = %12
  %30 = load i32, i32* @optind, align 4, !dbg !927, !tbaa !928
  %31 = sub nsw i32 %0, %30, !dbg !930
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !790, metadata !748), !dbg !931
  %32 = load i1, i1* @do_short_format, align 1
  %33 = icmp eq i32 %31, 0, !dbg !932
  %34 = and i1 %32, %33, !dbg !934
  br i1 %34, label %35, label %37, !dbg !934

; <label>:35:                                     ; preds = %29
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.17, i64 0, i64 0), i32 5) #11, !dbg !935
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %36) #11, !dbg !937
  tail call void @usage(i32 1) #16, !dbg !938
  unreachable, !dbg !938

; <label>:37:                                     ; preds = %29
  %38 = sext i32 %30 to i64
  %39 = getelementptr inbounds i8*, i8** %1, i64 %38
  br i1 %32, label %123, label %40, !dbg !939

; <label>:40:                                     ; preds = %37
  %41 = bitcast i64* %5 to i8*, !dbg !940
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %41) #11, !dbg !940
  %42 = bitcast %struct.utmpx** %6 to i8*, !dbg !952
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %42) #11, !dbg !952
  tail call void @llvm.dbg.value(metadata %struct.utmpx* null, i64 0, metadata !949, metadata !748) #11, !dbg !953
  store %struct.utmpx* null, %struct.utmpx** %6, align 8, !dbg !953, !tbaa !755
  tail call void @llvm.dbg.value(metadata i64* %5, i64 0, metadata !948, metadata !748) #11, !dbg !954
  tail call void @llvm.dbg.value(metadata %struct.utmpx** %6, i64 0, metadata !949, metadata !748) #11, !dbg !953
  %43 = call i32 @read_utmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i64* nonnull %5, %struct.utmpx** nonnull %6, i32 0) #11, !dbg !955
  %44 = icmp eq i32 %43, 0, !dbg !957
  br i1 %44, label %49, label %45, !dbg !958

; <label>:45:                                     ; preds = %40
  %46 = tail call i32* @__errno_location() #17, !dbg !959
  %47 = load i32, i32* %46, align 4, !dbg !959, !tbaa !928
  %48 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !959
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0), i8* %48) #11, !dbg !959
  unreachable, !dbg !959

; <label>:49:                                     ; preds = %40
  %50 = load i64, i64* %5, align 8, !dbg !960, !tbaa !961
  call void @llvm.dbg.value(metadata i64 %50, i64 0, metadata !948, metadata !748) #11, !dbg !954
  %51 = load %struct.utmpx*, %struct.utmpx** %6, align 8, !dbg !963, !tbaa !755
  call void @llvm.dbg.value(metadata %struct.utmpx* %51, i64 0, metadata !949, metadata !748) #11, !dbg !953
  call void @llvm.dbg.value(metadata i64 %50, i64 0, metadata !964, metadata !748) #11, !dbg !978
  call void @llvm.dbg.value(metadata %struct.utmpx* %51, i64 0, metadata !969, metadata !748) #11, !dbg !980
  call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !970, metadata !748) #11, !dbg !981
  call void @llvm.dbg.value(metadata i8** %39, i64 0, metadata !971, metadata !748) #11, !dbg !982
  %52 = call zeroext i1 @hard_locale(i32 2) #11, !dbg !983
  %53 = select i1 %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), !dbg !985
  %54 = select i1 %52, i32 16, i32 12, !dbg !985
  store i8* %53, i8** @time_format, align 8, !tbaa !755
  store i32 %54, i32* @time_format_width, align 4, !tbaa !928
  %55 = load i1, i1* @include_heading, align 1
  br i1 %55, label %89, label %56, !dbg !986

; <label>:56:                                     ; preds = %49
  %57 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i64 0, i64 0), i32 5) #11, !dbg !987
  %58 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), i8* %57) #11, !dbg !987
  %59 = load i1, i1* @include_fullname, align 1
  br i1 %59, label %63, label %60, !dbg !993

; <label>:60:                                     ; preds = %56
  %61 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), i32 5) #11, !dbg !994
  %62 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i8* %61) #11, !dbg !994
  br label %63, !dbg !994

; <label>:63:                                     ; preds = %60, %56
  %64 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), i32 5) #11, !dbg !996
  %65 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), i8* %64) #11, !dbg !996
  %66 = load i1, i1* @include_idle, align 1
  br i1 %66, label %70, label %67, !dbg !997

; <label>:67:                                     ; preds = %63
  %68 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i32 5) #11, !dbg !998
  %69 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i8* %68) #11, !dbg !998
  br label %70, !dbg !998

; <label>:70:                                     ; preds = %67, %63
  %71 = load i32, i32* @time_format_width, align 4, !dbg !1000, !tbaa !928
  %72 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i32 5) #11, !dbg !1000
  %73 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0), i32 %71, i8* %72) #11, !dbg !1000
  %74 = load i1, i1* @include_where, align 1
  br i1 %74, label %78, label %75, !dbg !1001

; <label>:75:                                     ; preds = %70
  %76 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0), i32 5) #11, !dbg !1002
  %77 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* %76) #11, !dbg !1002
  br label %78, !dbg !1002

; <label>:78:                                     ; preds = %75, %70
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1004, metadata !748) #11, !dbg !1010
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1012, !tbaa !755
  %80 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %79, i64 0, i32 5, !dbg !1012
  %81 = load i8*, i8** %80, align 8, !dbg !1012, !tbaa !1013
  %82 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %79, i64 0, i32 6, !dbg !1012
  %83 = load i8*, i8** %82, align 8, !dbg !1012, !tbaa !1016
  %84 = icmp ult i8* %81, %83, !dbg !1012
  br i1 %84, label %87, label %85, !dbg !1012, !prof !1017

; <label>:85:                                     ; preds = %78
  %86 = call i32 @__overflow(%struct._IO_FILE* %79, i32 10) #11, !dbg !1012
  br label %89, !dbg !1012

; <label>:87:                                     ; preds = %78
  %88 = getelementptr inbounds i8, i8* %81, i64 1, !dbg !1012
  store i8* %88, i8** %80, align 8, !dbg !1012, !tbaa !1013
  store i8 10, i8* %81, align 1, !dbg !1012, !tbaa !1018
  br label %89, !dbg !1012

; <label>:89:                                     ; preds = %87, %85, %49
  call void @llvm.dbg.value(metadata i64 %50, i64 0, metadata !964, metadata !748) #11, !dbg !978
  call void @llvm.dbg.value(metadata %struct.utmpx* %51, i64 0, metadata !969, metadata !748) #11, !dbg !980
  %90 = icmp eq i64 %50, 0, !dbg !1019
  br i1 %90, label %122, label %91, !dbg !1019

; <label>:91:                                     ; preds = %89
  %92 = icmp sgt i32 %31, 0
  %93 = sext i32 %31 to i64, !dbg !1019
  br label %94, !dbg !1019

; <label>:94:                                     ; preds = %119, %91
  %95 = phi i64 [ %50, %91 ], [ %97, %119 ]
  %96 = phi %struct.utmpx* [ %51, %91 ], [ %120, %119 ]
  %97 = add i64 %95, -1, !dbg !1020
  call void @llvm.dbg.value(metadata %struct.utmpx* %96, i64 0, metadata !969, metadata !748) #11, !dbg !980
  %98 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %96, i64 0, i32 4, i64 0, !dbg !1021
  %99 = load i8, i8* %98, align 4, !dbg !1021, !tbaa !1018
  %100 = icmp eq i8 %99, 0, !dbg !1021
  br i1 %100, label %119, label %101, !dbg !1021

; <label>:101:                                    ; preds = %94
  %102 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %96, i64 0, i32 0, !dbg !1021
  %103 = load i16, i16* %102, align 4, !dbg !1021, !tbaa !1022
  %104 = icmp eq i16 %103, 7, !dbg !1021
  br i1 %104, label %105, label %119, !dbg !1026

; <label>:105:                                    ; preds = %101
  br i1 %33, label %118, label %106, !dbg !1027

; <label>:106:                                    ; preds = %105
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !972, metadata !748) #11, !dbg !1028
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !972, metadata !748) #11, !dbg !1028
  br i1 %92, label %107, label %119, !dbg !1029

; <label>:107:                                    ; preds = %106
  br label %110, !dbg !1031

; <label>:108:                                    ; preds = %110
  %109 = icmp slt i64 %116, %93, !dbg !1034
  br i1 %109, label %110, label %119, !dbg !1029, !llvm.loop !1035

; <label>:110:                                    ; preds = %107, %108
  %111 = phi i64 [ %116, %108 ], [ 0, %107 ]
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !972, metadata !748) #11, !dbg !1028
  %112 = getelementptr inbounds i8*, i8** %39, i64 %111, !dbg !1031
  %113 = load i8*, i8** %112, align 8, !dbg !1031, !tbaa !755
  %114 = call i32 @strncmp(i8* %98, i8* %113, i64 32) #14, !dbg !1031
  %115 = icmp eq i32 %114, 0, !dbg !1031
  %116 = add nuw nsw i64 %111, 1, !dbg !1038
  br i1 %115, label %117, label %108, !dbg !1039

; <label>:117:                                    ; preds = %110
  call fastcc void @print_entry(%struct.utmpx* %96) #11, !dbg !1040
  br label %119, !dbg !1042

; <label>:118:                                    ; preds = %105
  call fastcc void @print_entry(%struct.utmpx* nonnull %96) #11, !dbg !1043
  br label %119

; <label>:119:                                    ; preds = %108, %118, %117, %106, %101, %94
  %120 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %96, i64 1, !dbg !1044
  call void @llvm.dbg.value(metadata %struct.utmpx* %120, i64 0, metadata !969, metadata !748) #11, !dbg !980
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !964, metadata !748) #11, !dbg !978
  call void @llvm.dbg.value(metadata %struct.utmpx* %120, i64 0, metadata !969, metadata !748) #11, !dbg !980
  %121 = icmp eq i64 %97, 0, !dbg !1019
  br i1 %121, label %122, label %94, !dbg !1019, !llvm.loop !1045

; <label>:122:                                    ; preds = %119, %89
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %42) #11, !dbg !1048
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %41) #11, !dbg !1048
  br label %259, !dbg !1049

; <label>:123:                                    ; preds = %37
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !894, metadata !748) #11, !dbg !1050
  tail call void @llvm.dbg.value(metadata i8** %39, i64 0, metadata !895, metadata !748) #11, !dbg !1051
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !896, metadata !748) #11, !dbg !1052
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !896, metadata !748) #11, !dbg !1052
  %124 = icmp sgt i32 %31, 0, !dbg !1053
  br i1 %124, label %125, label %259, !dbg !1054

; <label>:125:                                    ; preds = %123
  %126 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %127 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %128 = zext i32 %31 to i64
  br label %129, !dbg !1054

; <label>:129:                                    ; preds = %256, %125
  %130 = phi i64 [ 0, %125 ], [ %257, %256 ]
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !896, metadata !748) #11, !dbg !1052
  %131 = getelementptr inbounds i8*, i8** %39, i64 %130, !dbg !1055
  %132 = load i8*, i8** %131, align 8, !dbg !1055, !tbaa !755
  call void @llvm.dbg.value(metadata i8* %132, i64 0, metadata !796, metadata !748) #11, !dbg !1056
  %133 = call %struct.passwd* @getpwnam(i8* %132) #11, !dbg !1057
  call void @llvm.dbg.value(metadata %struct.passwd* %133, i64 0, metadata !797, metadata !748) #11, !dbg !1058
  %134 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.61, i64 0, i64 0), i32 5) #11, !dbg !1059
  %135 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %134) #11, !dbg !1059
  %136 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i64 0, i64 0), i8* %132) #11, !dbg !1060
  %137 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i64 0, i64 0), i32 5) #11, !dbg !1061
  %138 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %137) #11, !dbg !1061
  %139 = icmp eq %struct.passwd* %133, null, !dbg !1062
  br i1 %139, label %140, label %143, !dbg !1063

; <label>:140:                                    ; preds = %129
  %141 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i64 0, i64 0), i32 5) #11, !dbg !1064
  %142 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* %141) #11, !dbg !1064
  br label %256, !dbg !1066

; <label>:143:                                    ; preds = %129
  %144 = getelementptr inbounds %struct.passwd, %struct.passwd* %133, i64 0, i32 4, !dbg !1067
  %145 = load i8*, i8** %144, align 8, !dbg !1067, !tbaa !1068
  %146 = call i8* @strchr(i8* %145, i32 44) #14, !dbg !1070
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !811, metadata !748) #11, !dbg !1071
  %147 = icmp eq i8* %146, null, !dbg !1072
  br i1 %147, label %150, label %148, !dbg !1074

; <label>:148:                                    ; preds = %143
  store i8 0, i8* %146, align 1, !dbg !1075, !tbaa !1018
  %149 = load i8*, i8** %144, align 8, !dbg !1076, !tbaa !1068
  br label %150, !dbg !1077

; <label>:150:                                    ; preds = %148, %143
  %151 = phi i8* [ %145, %143 ], [ %149, %148 ], !dbg !1076
  %152 = getelementptr inbounds %struct.passwd, %struct.passwd* %133, i64 0, i32 0, !dbg !1078
  %153 = load i8*, i8** %152, align 8, !dbg !1078, !tbaa !1079
  %154 = call fastcc i8* @create_fullname(i8* %151, i8* %153) #11, !dbg !1080
  call void @llvm.dbg.value(metadata i8* %154, i64 0, metadata !815, metadata !748) #11, !dbg !1081
  %155 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* %154) #11, !dbg !1082
  call void @free(i8* %154) #11, !dbg !1083
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1004, metadata !748) #11, !dbg !1084
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1086, !tbaa !755
  %157 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %156, i64 0, i32 5, !dbg !1086
  %158 = load i8*, i8** %157, align 8, !dbg !1086, !tbaa !1013
  %159 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %156, i64 0, i32 6, !dbg !1086
  %160 = load i8*, i8** %159, align 8, !dbg !1086, !tbaa !1016
  %161 = icmp ult i8* %158, %160, !dbg !1086
  br i1 %161, label %164, label %162, !dbg !1086, !prof !1017

; <label>:162:                                    ; preds = %150
  %163 = call i32 @__overflow(%struct._IO_FILE* %156, i32 10) #11, !dbg !1086
  br label %166, !dbg !1086

; <label>:164:                                    ; preds = %150
  %165 = getelementptr inbounds i8, i8* %158, i64 1, !dbg !1086
  store i8* %165, i8** %157, align 8, !dbg !1086, !tbaa !1013
  store i8 10, i8* %158, align 1, !dbg !1086, !tbaa !1018
  br label %166, !dbg !1086

; <label>:166:                                    ; preds = %164, %162
  %167 = load i1, i1* @include_home_and_shell, align 1
  br i1 %167, label %189, label %168, !dbg !1087

; <label>:168:                                    ; preds = %166
  %169 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i64 0, i64 0), i32 5) #11, !dbg !1088
  %170 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %169) #11, !dbg !1088
  %171 = getelementptr inbounds %struct.passwd, %struct.passwd* %133, i64 0, i32 5, !dbg !1091
  %172 = load i8*, i8** %171, align 8, !dbg !1091, !tbaa !1092
  %173 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i64 0, i64 0), i8* %172) #11, !dbg !1091
  %174 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0), i32 5) #11, !dbg !1093
  %175 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %174) #11, !dbg !1093
  %176 = getelementptr inbounds %struct.passwd, %struct.passwd* %133, i64 0, i32 6, !dbg !1094
  %177 = load i8*, i8** %176, align 8, !dbg !1094, !tbaa !1095
  %178 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* %177) #11, !dbg !1094
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1004, metadata !748) #11, !dbg !1096
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1098, !tbaa !755
  %180 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %179, i64 0, i32 5, !dbg !1098
  %181 = load i8*, i8** %180, align 8, !dbg !1098, !tbaa !1013
  %182 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %179, i64 0, i32 6, !dbg !1098
  %183 = load i8*, i8** %182, align 8, !dbg !1098, !tbaa !1016
  %184 = icmp ult i8* %181, %183, !dbg !1098
  br i1 %184, label %187, label %185, !dbg !1098, !prof !1017

; <label>:185:                                    ; preds = %168
  %186 = call i32 @__overflow(%struct._IO_FILE* %179, i32 10) #11, !dbg !1098
  br label %189, !dbg !1098

; <label>:187:                                    ; preds = %168
  %188 = getelementptr inbounds i8, i8* %181, i64 1, !dbg !1098
  store i8* %188, i8** %180, align 8, !dbg !1098, !tbaa !1013
  store i8 10, i8* %181, align 1, !dbg !1098, !tbaa !1018
  br label %189, !dbg !1098

; <label>:189:                                    ; preds = %187, %185, %166
  %190 = load i1, i1* @include_project, align 1
  br i1 %190, label %217, label %191, !dbg !1099

; <label>:191:                                    ; preds = %189
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %127) #11, !dbg !1100
  %192 = getelementptr inbounds %struct.passwd, %struct.passwd* %133, i64 0, i32 5, !dbg !1101
  %193 = load i8*, i8** %192, align 8, !dbg !1101, !tbaa !1092
  %194 = call i64 @strlen(i8* %193) #14, !dbg !1102
  %195 = add i64 %194, 10, !dbg !1103
  %196 = call noalias i8* @xmalloc(i64 %195) #11, !dbg !1104
  call void @llvm.dbg.value(metadata i8* %196, i64 0, metadata !868, metadata !748) #11, !dbg !1105
  %197 = load i8*, i8** %192, align 8, !dbg !1106, !tbaa !1092
  call void @llvm.dbg.value(metadata i8* %196, i64 0, metadata !1107, metadata !748) #11, !dbg !1116
  call void @llvm.dbg.value(metadata i8* %197, i64 0, metadata !1115, metadata !748) #11, !dbg !1116
  %198 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %196, i1 false, i1 true) #11, !dbg !1118
  %199 = call i8* @__stpcpy_chk(i8* nonnull %196, i8* nonnull %197, i64 %198) #11, !dbg !1119
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %199, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i64 0, i64 0), i64 10, i32 1, i1 false) #11, !dbg !1120
  %200 = call %struct._IO_FILE* @fopen(i8* nonnull %196, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0)) #11, !dbg !1121
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %200, i64 0, metadata !816, metadata !748) #11, !dbg !1122
  %201 = icmp eq %struct._IO_FILE* %200, null, !dbg !1123
  br i1 %201, label %216, label %202, !dbg !1124

; <label>:202:                                    ; preds = %191
  %203 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i64 0, i64 0), i32 5) #11, !dbg !1125
  %204 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %203) #11, !dbg !1125
  %205 = call i64 @fread_unlocked(i8* nonnull %127, i64 1, i64 1024, %struct._IO_FILE* nonnull %200) #11, !dbg !1126
  call void @llvm.dbg.value(metadata i64 %205, i64 0, metadata !869, metadata !748) #11, !dbg !1127
  %206 = icmp eq i64 %205, 0, !dbg !1128
  br i1 %206, label %214, label %207, !dbg !1129

; <label>:207:                                    ; preds = %202
  br label %208, !dbg !1130

; <label>:208:                                    ; preds = %207, %208
  %209 = phi i64 [ %212, %208 ], [ %205, %207 ]
  %210 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1130, !tbaa !755
  %211 = call i64 @fwrite_unlocked(i8* nonnull %127, i64 1, i64 %209, %struct._IO_FILE* %210) #11, !dbg !1130
  %212 = call i64 @fread_unlocked(i8* nonnull %127, i64 1, i64 1024, %struct._IO_FILE* nonnull %200) #11, !dbg !1126
  call void @llvm.dbg.value(metadata i64 %212, i64 0, metadata !869, metadata !748) #11, !dbg !1127
  %213 = icmp eq i64 %212, 0, !dbg !1128
  br i1 %213, label %214, label %208, !dbg !1129, !llvm.loop !1131

; <label>:214:                                    ; preds = %208, %202
  %215 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %200) #11, !dbg !1134
  br label %216, !dbg !1135

; <label>:216:                                    ; preds = %214, %191
  call void @free(i8* %196) #11, !dbg !1136
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %127) #11, !dbg !1137
  br label %217, !dbg !1138

; <label>:217:                                    ; preds = %216, %189
  %218 = load i1, i1* @include_plan, align 1
  br i1 %218, label %245, label %219, !dbg !1139

; <label>:219:                                    ; preds = %217
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %126) #11, !dbg !1140
  %220 = getelementptr inbounds %struct.passwd, %struct.passwd* %133, i64 0, i32 5, !dbg !1141
  %221 = load i8*, i8** %220, align 8, !dbg !1141, !tbaa !1092
  %222 = call i64 @strlen(i8* %221) #14, !dbg !1142
  %223 = add i64 %222, 7, !dbg !1143
  %224 = call noalias i8* @xmalloc(i64 %223) #11, !dbg !1144
  call void @llvm.dbg.value(metadata i8* %224, i64 0, metadata !880, metadata !748) #11, !dbg !1145
  %225 = load i8*, i8** %220, align 8, !dbg !1146, !tbaa !1092
  call void @llvm.dbg.value(metadata i8* %224, i64 0, metadata !1107, metadata !748) #11, !dbg !1147
  call void @llvm.dbg.value(metadata i8* %225, i64 0, metadata !1115, metadata !748) #11, !dbg !1147
  %226 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %224, i1 false, i1 true) #11, !dbg !1149
  %227 = call i8* @__stpcpy_chk(i8* nonnull %224, i8* nonnull %225, i64 %226) #11, !dbg !1150
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %227, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i64 0, i64 0), i64 7, i32 1, i1 false) #11, !dbg !1151
  %228 = call %struct._IO_FILE* @fopen(i8* nonnull %224, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0)) #11, !dbg !1152
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %228, i64 0, metadata !872, metadata !748) #11, !dbg !1153
  %229 = icmp eq %struct._IO_FILE* %228, null, !dbg !1154
  br i1 %229, label %244, label %230, !dbg !1155

; <label>:230:                                    ; preds = %219
  %231 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i64 0, i64 0), i32 5) #11, !dbg !1156
  %232 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %231) #11, !dbg !1156
  %233 = call i64 @fread_unlocked(i8* nonnull %126, i64 1, i64 1024, %struct._IO_FILE* nonnull %228) #11, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %233, i64 0, metadata !881, metadata !748) #11, !dbg !1158
  %234 = icmp eq i64 %233, 0, !dbg !1159
  br i1 %234, label %242, label %235, !dbg !1160

; <label>:235:                                    ; preds = %230
  br label %236, !dbg !1161

; <label>:236:                                    ; preds = %235, %236
  %237 = phi i64 [ %240, %236 ], [ %233, %235 ]
  %238 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1161, !tbaa !755
  %239 = call i64 @fwrite_unlocked(i8* nonnull %126, i64 1, i64 %237, %struct._IO_FILE* %238) #11, !dbg !1161
  %240 = call i64 @fread_unlocked(i8* nonnull %126, i64 1, i64 1024, %struct._IO_FILE* nonnull %228) #11, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !881, metadata !748) #11, !dbg !1158
  %241 = icmp eq i64 %240, 0, !dbg !1159
  br i1 %241, label %242, label %236, !dbg !1160, !llvm.loop !1162

; <label>:242:                                    ; preds = %236, %230
  %243 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %228) #11, !dbg !1165
  br label %244, !dbg !1166

; <label>:244:                                    ; preds = %242, %219
  call void @free(i8* %224) #11, !dbg !1167
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %126) #11, !dbg !1168
  br label %245, !dbg !1169

; <label>:245:                                    ; preds = %244, %217
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1004, metadata !748) #11, !dbg !1170
  %246 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1172, !tbaa !755
  %247 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %246, i64 0, i32 5, !dbg !1172
  %248 = load i8*, i8** %247, align 8, !dbg !1172, !tbaa !1013
  %249 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %246, i64 0, i32 6, !dbg !1172
  %250 = load i8*, i8** %249, align 8, !dbg !1172, !tbaa !1016
  %251 = icmp ult i8* %248, %250, !dbg !1172
  br i1 %251, label %254, label %252, !dbg !1172, !prof !1017

; <label>:252:                                    ; preds = %245
  %253 = call i32 @__overflow(%struct._IO_FILE* %246, i32 10) #11, !dbg !1172
  br label %256, !dbg !1172

; <label>:254:                                    ; preds = %245
  %255 = getelementptr inbounds i8, i8* %248, i64 1, !dbg !1172
  store i8* %255, i8** %247, align 8, !dbg !1172, !tbaa !1013
  store i8 10, i8* %248, align 1, !dbg !1172, !tbaa !1018
  br label %256, !dbg !1172

; <label>:256:                                    ; preds = %254, %252, %140
  %257 = add nuw nsw i64 %130, 1, !dbg !1173
  %258 = icmp eq i64 %257, %128, !dbg !1053
  br i1 %258, label %259, label %129, !dbg !1054, !llvm.loop !1174

; <label>:259:                                    ; preds = %256, %123, %122
  ret i32 0, !dbg !1177
}

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
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_entry(%struct.utmpx*) unnamed_addr #6 !dbg !1178 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.stat, align 8
  %4 = alloca [38 x i8], align 16
  %5 = alloca [33 x i8], align 16
  %6 = alloca [257 x i8], align 16
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %0, i64 0, metadata !1182, metadata !748), !dbg !1238
  %7 = bitcast %struct.stat* %3 to i8*, !dbg !1239
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %7) #11, !dbg !1239
  %8 = getelementptr inbounds [38 x i8], [38 x i8]* %4, i64 0, i64 0, !dbg !1240
  call void @llvm.lifetime.start.p0i8(i64 38, i8* nonnull %8) #11, !dbg !1240
  tail call void @llvm.dbg.declare(metadata [38 x i8]* %4, metadata !1217, metadata !748), !dbg !1241
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1221, metadata !748), !dbg !1242
  %9 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 2, i64 0, !dbg !1243
  %10 = load i8, i8* %9, align 4, !dbg !1243, !tbaa !1018
  %11 = icmp eq i8 %10, 47, !dbg !1243
  br i1 %11, label %14, label %12, !dbg !1245

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds [38 x i8], [38 x i8]* %4, i64 0, i64 5, !dbg !1246
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0), i64 6, i32 1, i1 false), !dbg !1246
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !1221, metadata !748), !dbg !1242
  br label %14, !dbg !1247

; <label>:14:                                     ; preds = %12, %1
  %15 = phi i8* [ %8, %1 ], [ %13, %12 ]
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !1221, metadata !748), !dbg !1242
  %16 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 2, i64 32, !dbg !1248
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !1256, metadata !748), !dbg !1258
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !1253, metadata !748), !dbg !1259
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !1254, metadata !748), !dbg !1260
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !1254, metadata !748), !dbg !1260
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !1253, metadata !748), !dbg !1259
  %17 = icmp eq i8 %10, 0, !dbg !1261
  br i1 %17, label %29, label %18, !dbg !1262

; <label>:18:                                     ; preds = %14
  br label %19, !dbg !1263

; <label>:19:                                     ; preds = %18, %26
  %20 = phi i8* [ %23, %26 ], [ %9, %18 ]
  %21 = phi i8* [ %24, %26 ], [ %15, %18 ]
  %22 = phi i8 [ %27, %26 ], [ %10, %18 ]
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !1253, metadata !748), !dbg !1259
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1254, metadata !748), !dbg !1260
  %23 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !1263
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1254, metadata !748), !dbg !1260
  %24 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !1264
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !1253, metadata !748), !dbg !1259
  store i8 %22, i8* %21, align 1, !dbg !1265, !tbaa !1018, !alias.scope !1266, !noalias !1269
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !1253, metadata !748), !dbg !1259
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1254, metadata !748), !dbg !1260
  %25 = icmp ult i8* %23, %16, !dbg !1271
  br i1 %25, label %26, label %29, !dbg !1261, !llvm.loop !1272

; <label>:26:                                     ; preds = %19
  %27 = load i8, i8* %23, align 1, !dbg !1275, !tbaa !1018, !alias.scope !1269, !noalias !1266
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1254, metadata !748), !dbg !1260
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !1253, metadata !748), !dbg !1259
  %28 = icmp eq i8 %27, 0, !dbg !1261
  br i1 %28, label %29, label %19, !dbg !1262

; <label>:29:                                     ; preds = %19, %26, %14
  %30 = phi i8* [ %15, %14 ], [ %24, %26 ], [ %24, %19 ]
  store i8 0, i8* %30, align 1, !dbg !1276, !tbaa !1018, !alias.scope !1266, !noalias !1269
  tail call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !1183, metadata !748), !dbg !1277
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1278, metadata !748) #11, !dbg !1286
  tail call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !1285, metadata !748) #11, !dbg !1286
  %31 = call i32 @__xstat(i32 1, i8* nonnull %8, %struct.stat* nonnull %3) #11, !dbg !1289
  %32 = icmp eq i32 %31, 0, !dbg !1290
  br i1 %32, label %33, label %41, !dbg !1291

; <label>:33:                                     ; preds = %29
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 3, !dbg !1292
  %35 = load i32, i32* %34, align 8, !dbg !1292, !tbaa !1294
  %36 = and i32 %35, 16, !dbg !1297
  %37 = icmp eq i32 %36, 0, !dbg !1298
  %38 = select i1 %37, i32 42, i32 32, !dbg !1298
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 11, i32 0, !dbg !1299
  %40 = load i64, i64* %39, align 8, !dbg !1299, !tbaa !1300
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1215, metadata !748), !dbg !1301
  br label %41, !dbg !1302

; <label>:41:                                     ; preds = %29, %33
  %42 = phi i32 [ %38, %33 ], [ 63, %29 ]
  %43 = phi i64 [ %40, %33 ], [ 0, %29 ]
  call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !1215, metadata !748), !dbg !1301
  %44 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 4, i64 0, !dbg !1303
  %45 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0), i32 32, i8* %44) #11, !dbg !1303
  %46 = load i1, i1* @include_fullname, align 1
  br i1 %46, label %80, label %47, !dbg !1304

; <label>:47:                                     ; preds = %41
  %48 = getelementptr inbounds [33 x i8], [33 x i8]* %5, i64 0, i64 0, !dbg !1305
  call void @llvm.lifetime.start.p0i8(i64 33, i8* nonnull %48) #11, !dbg !1305
  call void @llvm.dbg.declare(metadata [33 x i8]* %5, metadata !1225, metadata !748), !dbg !1306
  %49 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 4, i64 32, !dbg !1307
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1256, metadata !748), !dbg !1309
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !1253, metadata !748), !dbg !1310
  tail call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !1254, metadata !748), !dbg !1311
  br label %50, !dbg !1312

; <label>:50:                                     ; preds = %55, %47
  %51 = phi i8* [ %48, %47 ], [ %57, %55 ]
  %52 = phi i8* [ %44, %47 ], [ %56, %55 ]
  tail call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1254, metadata !748), !dbg !1311
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !1253, metadata !748), !dbg !1310
  %53 = load i8, i8* %52, align 1, !dbg !1313, !tbaa !1018, !alias.scope !1314, !noalias !1317
  %54 = icmp eq i8 %53, 0, !dbg !1312
  br i1 %54, label %59, label %55, !dbg !1319

; <label>:55:                                     ; preds = %50
  %56 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !1320
  tail call void @llvm.dbg.value(metadata i8* %56, i64 0, metadata !1254, metadata !748), !dbg !1311
  %57 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !1321
  tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !1253, metadata !748), !dbg !1310
  store i8 %53, i8* %51, align 1, !dbg !1322, !tbaa !1018, !alias.scope !1317, !noalias !1314
  tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !1253, metadata !748), !dbg !1310
  tail call void @llvm.dbg.value(metadata i8* %56, i64 0, metadata !1254, metadata !748), !dbg !1311
  %58 = icmp ult i8* %56, %49, !dbg !1323
  br i1 %58, label %50, label %59, !dbg !1312, !llvm.loop !1272

; <label>:59:                                     ; preds = %50, %55
  %60 = phi i8* [ %51, %50 ], [ %57, %55 ]
  store i8 0, i8* %60, align 1, !dbg !1324, !tbaa !1018, !alias.scope !1317, !noalias !1314
  %61 = call %struct.passwd* @getpwnam(i8* nonnull %48), !dbg !1325
  call void @llvm.dbg.value(metadata %struct.passwd* %61, i64 0, metadata !1222, metadata !748), !dbg !1326
  %62 = icmp eq %struct.passwd* %61, null, !dbg !1327
  br i1 %62, label %63, label %66, !dbg !1328

; <label>:63:                                     ; preds = %59
  %64 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0), i32 5) #11, !dbg !1329
  %65 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i64 0, i64 0), i8* %64) #11, !dbg !1329
  br label %79, !dbg !1329

; <label>:66:                                     ; preds = %59
  %67 = getelementptr inbounds %struct.passwd, %struct.passwd* %61, i64 0, i32 4, !dbg !1330
  %68 = load i8*, i8** %67, align 8, !dbg !1330, !tbaa !1068
  %69 = call i8* @strchr(i8* %68, i32 44) #14, !dbg !1331
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1226, metadata !748), !dbg !1332
  %70 = icmp eq i8* %69, null, !dbg !1333
  br i1 %70, label %73, label %71, !dbg !1335

; <label>:71:                                     ; preds = %66
  store i8 0, i8* %69, align 1, !dbg !1336, !tbaa !1018
  %72 = load i8*, i8** %67, align 8, !dbg !1337, !tbaa !1068
  br label %73, !dbg !1338

; <label>:73:                                     ; preds = %66, %71
  %74 = phi i8* [ %68, %66 ], [ %72, %71 ], !dbg !1337
  %75 = getelementptr inbounds %struct.passwd, %struct.passwd* %61, i64 0, i32 0, !dbg !1339
  %76 = load i8*, i8** %75, align 8, !dbg !1339, !tbaa !1079
  %77 = call fastcc i8* @create_fullname(i8* %74, i8* %76), !dbg !1340
  call void @llvm.dbg.value(metadata i8* %77, i64 0, metadata !1229, metadata !748), !dbg !1341
  %78 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i64 0, i64 0), i8* %77) #11, !dbg !1342
  call void @free(i8* %77) #11, !dbg !1343
  br label %79

; <label>:79:                                     ; preds = %73, %63
  call void @llvm.lifetime.end.p0i8(i64 33, i8* nonnull %48) #11, !dbg !1344
  br label %80, !dbg !1345

; <label>:80:                                     ; preds = %41, %79
  %81 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i64 0, i64 0), i32 %42, i32 32, i8* %9) #11, !dbg !1346
  %82 = load i1, i1* @include_idle, align 1
  br i1 %82, label %113, label %83, !dbg !1347

; <label>:83:                                     ; preds = %80
  %84 = icmp eq i64 %43, 0, !dbg !1348
  br i1 %84, label %110, label %85, !dbg !1352

; <label>:85:                                     ; preds = %83
  call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !103, metadata !748) #11, !dbg !1353
  %86 = load i64, i64* @idle_string.now, align 8, !dbg !1355, !tbaa !961
  %87 = icmp eq i64 %86, 0, !dbg !1357
  br i1 %87, label %88, label %91, !dbg !1358

; <label>:88:                                     ; preds = %85
  %89 = call i64 @time(i64* nonnull @idle_string.now) #11, !dbg !1359
  %90 = load i64, i64* @idle_string.now, align 8, !dbg !1360, !tbaa !961
  br label %91, !dbg !1359

; <label>:91:                                     ; preds = %88, %85
  %92 = phi i64 [ %90, %88 ], [ %86, %85 ], !dbg !1360
  %93 = sub nsw i64 %92, %43, !dbg !1361
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !104, metadata !748) #11, !dbg !1362
  %94 = icmp slt i64 %93, 60, !dbg !1363
  br i1 %94, label %107, label %95, !dbg !1365

; <label>:95:                                     ; preds = %91
  %96 = icmp slt i64 %93, 86400, !dbg !1366
  br i1 %96, label %97, label %104, !dbg !1367

; <label>:97:                                     ; preds = %95
  %98 = udiv i64 %93, 3600
  %99 = trunc i64 %98 to i32, !dbg !1368
  call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !105, metadata !748) #11, !dbg !1369
  %100 = urem i64 %93, 3600
  %101 = udiv i64 %100, 60, !dbg !1370
  %102 = trunc i64 %101 to i32, !dbg !1371
  call void @llvm.dbg.value(metadata i32 %102, i64 0, metadata !108, metadata !748) #11, !dbg !1372
  %103 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @idle_string.buf, i64 0, i64 0), i32 1, i64 22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i64 0, i64 0), i32 %99, i32 %102) #11, !dbg !1373
  br label %107, !dbg !1374

; <label>:104:                                    ; preds = %95
  %105 = udiv i64 %93, 86400
  call void @llvm.dbg.value(metadata i64 %105, i64 0, metadata !109, metadata !748) #11, !dbg !1375
  %106 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @idle_string.buf, i64 0, i64 0), i32 1, i64 22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), i64 %105) #11, !dbg !1376
  br label %107

; <label>:107:                                    ; preds = %91, %97, %104
  %108 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), %91 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @idle_string.buf, i64 0, i64 0), %104 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @idle_string.buf, i64 0, i64 0), %97 ]
  %109 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i8* nonnull %108) #11, !dbg !1377
  br label %113, !dbg !1377

; <label>:110:                                    ; preds = %83
  %111 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i64 0, i64 0), i32 5) #11, !dbg !1378
  %112 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i8* %111) #11, !dbg !1378
  br label %113

; <label>:113:                                    ; preds = %80, %107, %110
  call void @llvm.dbg.value(metadata %struct.utmpx* %0, i64 0, metadata !163, metadata !748) #11, !dbg !1379
  %114 = bitcast i64* %2 to i8*, !dbg !1381
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %114) #11, !dbg !1381
  %115 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 8, i32 0, !dbg !1382
  %116 = load i32, i32* %115, align 4, !dbg !1382, !tbaa !1383
  %117 = sext i32 %116 to i64, !dbg !1382
  call void @llvm.dbg.value(metadata i64 %117, i64 0, metadata !164, metadata !748) #11, !dbg !1384
  store i64 %117, i64* %2, align 8, !dbg !1384, !tbaa !961
  call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !164, metadata !748) #11, !dbg !1384
  %118 = call %struct.tm* @localtime(i64* nonnull %2) #11, !dbg !1385
  call void @llvm.dbg.value(metadata %struct.tm* %118, i64 0, metadata !165, metadata !748) #11, !dbg !1386
  %119 = icmp eq %struct.tm* %118, null, !dbg !1387
  br i1 %119, label %123, label %120, !dbg !1389

; <label>:120:                                    ; preds = %113
  %121 = load i8*, i8** @time_format, align 8, !dbg !1390, !tbaa !755
  %122 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %121, %struct.tm* nonnull %118) #11, !dbg !1392
  br label %126, !dbg !1393

; <label>:123:                                    ; preds = %113
  %124 = load i64, i64* %2, align 8, !dbg !1394, !tbaa !961
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !164, metadata !748) #11, !dbg !1384
  %125 = call i8* @imaxtostr(i64 %124, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #11, !dbg !1395
  br label %126, !dbg !1403

; <label>:126:                                    ; preds = %120, %123
  %127 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %120 ], [ %125, %123 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %114) #11, !dbg !1404
  %128 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* %127) #11, !dbg !1405
  %129 = load i1, i1* @include_where, align 1
  br i1 %129, label %171, label %130, !dbg !1406

; <label>:130:                                    ; preds = %126
  %131 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 5, i64 0, !dbg !1407
  %132 = load i8, i8* %131, align 4, !dbg !1407, !tbaa !1018
  %133 = icmp eq i8 %132, 0, !dbg !1407
  br i1 %133, label %171, label %134, !dbg !1408

; <label>:134:                                    ; preds = %130
  %135 = getelementptr inbounds [257 x i8], [257 x i8]* %6, i64 0, i64 0, !dbg !1409
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %135) #11, !dbg !1409
  call void @llvm.dbg.declare(metadata [257 x i8]* %6, metadata !1230, metadata !748), !dbg !1410
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1236, metadata !748), !dbg !1411
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1237, metadata !748), !dbg !1412
  %136 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 5, i64 256, !dbg !1413
  tail call void @llvm.dbg.value(metadata i8* %136, i64 0, metadata !1256, metadata !748), !dbg !1415
  tail call void @llvm.dbg.value(metadata i8* %135, i64 0, metadata !1253, metadata !748), !dbg !1416
  tail call void @llvm.dbg.value(metadata i8* %131, i64 0, metadata !1254, metadata !748), !dbg !1417
  tail call void @llvm.dbg.value(metadata i8* %131, i64 0, metadata !1254, metadata !748), !dbg !1417
  tail call void @llvm.dbg.value(metadata i8* %135, i64 0, metadata !1253, metadata !748), !dbg !1416
  br label %137, !dbg !1418

; <label>:137:                                    ; preds = %134, %144
  %138 = phi i8* [ %131, %134 ], [ %141, %144 ]
  %139 = phi i8* [ %135, %134 ], [ %142, %144 ]
  %140 = phi i8 [ %132, %134 ], [ %145, %144 ]
  tail call void @llvm.dbg.value(metadata i8* %139, i64 0, metadata !1253, metadata !748), !dbg !1416
  tail call void @llvm.dbg.value(metadata i8* %138, i64 0, metadata !1254, metadata !748), !dbg !1417
  %141 = getelementptr inbounds i8, i8* %138, i64 1, !dbg !1419
  tail call void @llvm.dbg.value(metadata i8* %141, i64 0, metadata !1254, metadata !748), !dbg !1417
  %142 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !1420
  tail call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !1253, metadata !748), !dbg !1416
  store i8 %140, i8* %139, align 1, !dbg !1421, !tbaa !1018, !alias.scope !1422, !noalias !1425
  tail call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !1253, metadata !748), !dbg !1416
  tail call void @llvm.dbg.value(metadata i8* %141, i64 0, metadata !1254, metadata !748), !dbg !1417
  %143 = icmp ult i8* %141, %136, !dbg !1427
  br i1 %143, label %144, label %147, !dbg !1428, !llvm.loop !1272

; <label>:144:                                    ; preds = %137
  %145 = load i8, i8* %141, align 1, !dbg !1429, !tbaa !1018, !alias.scope !1425, !noalias !1422
  tail call void @llvm.dbg.value(metadata i8* %141, i64 0, metadata !1254, metadata !748), !dbg !1417
  tail call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !1253, metadata !748), !dbg !1416
  %146 = icmp eq i8 %145, 0, !dbg !1428
  br i1 %146, label %147, label %137, !dbg !1418

; <label>:147:                                    ; preds = %137, %144
  store i8 0, i8* %142, align 1, !dbg !1430, !tbaa !1018, !alias.scope !1422, !noalias !1425
  %148 = call i8* @strchr(i8* nonnull %135, i32 58) #14, !dbg !1431
  call void @llvm.dbg.value(metadata i8* %148, i64 0, metadata !1237, metadata !748), !dbg !1412
  %149 = icmp eq i8* %148, null, !dbg !1432
  br i1 %149, label %152, label %150, !dbg !1434

; <label>:150:                                    ; preds = %147
  %151 = getelementptr inbounds i8, i8* %148, i64 1, !dbg !1435
  call void @llvm.dbg.value(metadata i8* %151, i64 0, metadata !1237, metadata !748), !dbg !1412
  store i8 0, i8* %148, align 1, !dbg !1436, !tbaa !1018
  br label %152, !dbg !1437

; <label>:152:                                    ; preds = %147, %150
  %153 = phi i8* [ %151, %150 ], [ null, %147 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !1237, metadata !748), !dbg !1412
  %154 = load i8, i8* %135, align 16, !dbg !1438, !tbaa !1018
  %155 = icmp eq i8 %154, 0, !dbg !1438
  br i1 %155, label %158, label %156, !dbg !1440

; <label>:156:                                    ; preds = %152
  %157 = call i8* @canon_host(i8* nonnull %135) #11, !dbg !1441
  call void @llvm.dbg.value(metadata i8* %157, i64 0, metadata !1236, metadata !748), !dbg !1411
  br label %158, !dbg !1442

; <label>:158:                                    ; preds = %152, %156
  %159 = phi i8* [ %157, %156 ], [ null, %152 ]
  call void @llvm.dbg.value(metadata i8* %159, i64 0, metadata !1236, metadata !748), !dbg !1411
  %160 = icmp eq i8* %159, null, !dbg !1443
  call void @llvm.dbg.value(metadata i8* %135, i64 0, metadata !1236, metadata !748), !dbg !1411
  %161 = select i1 %160, i8* %135, i8* %159, !dbg !1445
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !1236, metadata !748), !dbg !1411
  %162 = icmp eq i8* %153, null, !dbg !1446
  br i1 %162, label %165, label %163, !dbg !1448

; <label>:163:                                    ; preds = %158
  %164 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0), i8* %161, i8* nonnull %153) #11, !dbg !1449
  br label %167, !dbg !1449

; <label>:165:                                    ; preds = %158
  %166 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* %161) #11, !dbg !1450
  br label %167

; <label>:167:                                    ; preds = %165, %163
  %168 = icmp eq i8* %161, %135, !dbg !1451
  br i1 %168, label %170, label %169, !dbg !1453

; <label>:169:                                    ; preds = %167
  call void @free(i8* %161) #11, !dbg !1454
  br label %170, !dbg !1454

; <label>:170:                                    ; preds = %167, %169
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %135) #11, !dbg !1455
  br label %171, !dbg !1456

; <label>:171:                                    ; preds = %130, %126, %170
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1004, metadata !748) #11, !dbg !1457
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1459, !tbaa !755
  %173 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %172, i64 0, i32 5, !dbg !1459
  %174 = load i8*, i8** %173, align 8, !dbg !1459, !tbaa !1013
  %175 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %172, i64 0, i32 6, !dbg !1459
  %176 = load i8*, i8** %175, align 8, !dbg !1459, !tbaa !1016
  %177 = icmp ult i8* %174, %176, !dbg !1459
  br i1 %177, label %180, label %178, !dbg !1459, !prof !1017

; <label>:178:                                    ; preds = %171
  %179 = call i32 @__overflow(%struct._IO_FILE* %172, i32 10) #11, !dbg !1459
  br label %182, !dbg !1459

; <label>:180:                                    ; preds = %171
  %181 = getelementptr inbounds i8, i8* %174, i64 1, !dbg !1459
  store i8* %181, i8** %173, align 8, !dbg !1459, !tbaa !1013
  store i8 10, i8* %174, align 1, !dbg !1459, !tbaa !1018
  br label %182, !dbg !1459

; <label>:182:                                    ; preds = %178, %180
  call void @llvm.lifetime.end.p0i8(i64 38, i8* nonnull %8) #11, !dbg !1460
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %7) #11, !dbg !1460
  ret void, !dbg !1460
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare %struct.passwd* @getpwnam(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias i8* @create_fullname(i8* nocapture readonly, i8* nocapture readonly) unnamed_addr #6 !dbg !1461 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1465, metadata !748), !dbg !1482
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1466, metadata !748), !dbg !1483
  %3 = tail call i64 @strlen(i8* %0) #14, !dbg !1484
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !1467, metadata !748), !dbg !1485
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1486, metadata !748), !dbg !1492
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1491, metadata !748), !dbg !1494
  br label %4, !dbg !1495, !llvm.loop !1496

; <label>:4:                                      ; preds = %4, %2
  %5 = phi i8* [ %0, %2 ], [ %11, %4 ]
  %6 = phi i64 [ 0, %2 ], [ %10, %4 ]
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !1491, metadata !748), !dbg !1494
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !1486, metadata !748), !dbg !1492
  %7 = load i8, i8* %5, align 1, !dbg !1499, !tbaa !1018
  %8 = icmp eq i8 %7, 38, !dbg !1502
  %9 = zext i1 %8 to i64, !dbg !1503
  %10 = add i64 %6, %9, !dbg !1503
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !1491, metadata !748), !dbg !1494
  %11 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1504
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !1486, metadata !748), !dbg !1492
  %12 = icmp eq i8 %7, 0, !dbg !1505
  br i1 %12, label %13, label %4, !dbg !1505, !llvm.loop !1496

; <label>:13:                                     ; preds = %4
  %14 = add i64 %3, 1, !dbg !1506
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !1470, metadata !748), !dbg !1507
  %15 = icmp eq i64 %10, 0, !dbg !1508
  br i1 %15, label %26, label %16, !dbg !1509

; <label>:16:                                     ; preds = %13
  %17 = tail call i64 @strlen(i8* %1) #14, !dbg !1510
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !1471, metadata !748), !dbg !1511
  %18 = mul i64 %17, %10, !dbg !1512
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !1474, metadata !748), !dbg !1513
  %19 = sub i64 %18, %10, !dbg !1514
  %20 = add i64 %19, %14, !dbg !1515
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !1467, metadata !748), !dbg !1485
  %21 = udiv i64 9223372036854775807, %10, !dbg !1516
  %22 = icmp ult i64 %21, %17, !dbg !1516
  %23 = icmp ult i64 %20, %18, !dbg !1518
  %24 = or i1 %22, %23, !dbg !1519
  br i1 %24, label %25, label %26, !dbg !1519

; <label>:25:                                     ; preds = %16
  tail call void @xalloc_die() #15, !dbg !1520
  unreachable, !dbg !1520

; <label>:26:                                     ; preds = %16, %13
  %27 = phi i64 [ %14, %13 ], [ %20, %16 ]
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !1467, metadata !748), !dbg !1485
  %28 = tail call noalias i8* @xmalloc(i64 %27) #11, !dbg !1521
  tail call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !1468, metadata !748), !dbg !1522
  tail call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !1469, metadata !748), !dbg !1523
  %29 = getelementptr inbounds i8, i8* %1, i64 1
  br label %30, !dbg !1524

; <label>:30:                                     ; preds = %67, %26
  %31 = phi i8* [ %28, %26 ], [ %68, %67 ]
  %32 = phi i8* [ %0, %26 ], [ %69, %67 ]
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1465, metadata !748), !dbg !1482
  tail call void @llvm.dbg.value(metadata i8* %31, i64 0, metadata !1469, metadata !748), !dbg !1523
  %33 = load i8, i8* %32, align 1, !dbg !1525, !tbaa !1018
  switch i8 %33, label %65 [
    i8 0, label %70
    i8 38, label %34
  ], !dbg !1524

; <label>:34:                                     ; preds = %30
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1475, metadata !748), !dbg !1526
  %35 = tail call i16** @__ctype_b_loc() #17, !dbg !1527
  %36 = load i16*, i16** %35, align 8, !dbg !1527, !tbaa !755
  %37 = load i8, i8* %1, align 1, !dbg !1527, !tbaa !1018
  %38 = zext i8 %37 to i64, !dbg !1527
  %39 = getelementptr inbounds i16, i16* %36, i64 %38, !dbg !1527
  %40 = load i16, i16* %39, align 2, !dbg !1527, !tbaa !1528
  %41 = and i16 %40, 512, !dbg !1527
  %42 = icmp eq i16 %41, 0, !dbg !1527
  br i1 %42, label %51, label %43, !dbg !1529

; <label>:43:                                     ; preds = %34
  %44 = tail call i32** @__ctype_toupper_loc() #17, !dbg !1530
  %45 = load i32*, i32** %44, align 8, !dbg !1530, !tbaa !755
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1475, metadata !748), !dbg !1526
  %46 = getelementptr inbounds i32, i32* %45, i64 %38, !dbg !1530
  %47 = load i32, i32* %46, align 4, !dbg !1530, !tbaa !928
  tail call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !1479, metadata !748), !dbg !1532
  %48 = trunc i32 %47 to i8, !dbg !1533
  %49 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !1534
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1469, metadata !748), !dbg !1523
  store i8 %48, i8* %31, align 1, !dbg !1535, !tbaa !1018
  %50 = load i8, i8* %29, align 1, !dbg !1536, !tbaa !1018
  br label %51, !dbg !1537

; <label>:51:                                     ; preds = %34, %43
  %52 = phi i8 [ %50, %43 ], [ %37, %34 ], !dbg !1536
  %53 = phi i8* [ %49, %43 ], [ %31, %34 ]
  %54 = phi i8* [ %29, %43 ], [ %1, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %54, i64 0, metadata !1475, metadata !748), !dbg !1526
  tail call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1469, metadata !748), !dbg !1523
  tail call void @llvm.dbg.value(metadata i8* %54, i64 0, metadata !1475, metadata !748), !dbg !1526
  tail call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1469, metadata !748), !dbg !1523
  %55 = icmp eq i8 %52, 0, !dbg !1538
  br i1 %55, label %67, label %56, !dbg !1538

; <label>:56:                                     ; preds = %51
  br label %57, !dbg !1539

; <label>:57:                                     ; preds = %56, %57
  %58 = phi i8 [ %63, %57 ], [ %52, %56 ]
  %59 = phi i8* [ %61, %57 ], [ %54, %56 ]
  %60 = phi i8* [ %62, %57 ], [ %53, %56 ]
  tail call void @llvm.dbg.value(metadata i8* %60, i64 0, metadata !1469, metadata !748), !dbg !1523
  tail call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !1475, metadata !748), !dbg !1526
  %61 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !1539
  tail call void @llvm.dbg.value(metadata i8* %61, i64 0, metadata !1475, metadata !748), !dbg !1526
  %62 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1540
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1469, metadata !748), !dbg !1523
  store i8 %58, i8* %60, align 1, !dbg !1541, !tbaa !1018
  tail call void @llvm.dbg.value(metadata i8* %61, i64 0, metadata !1475, metadata !748), !dbg !1526
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1469, metadata !748), !dbg !1523
  %63 = load i8, i8* %61, align 1, !dbg !1536, !tbaa !1018
  %64 = icmp eq i8 %63, 0, !dbg !1538
  br i1 %64, label %67, label %57, !dbg !1538, !llvm.loop !1542

; <label>:65:                                     ; preds = %30
  %66 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !1543
  tail call void @llvm.dbg.value(metadata i8* %66, i64 0, metadata !1469, metadata !748), !dbg !1523
  store i8 %33, i8* %31, align 1, !dbg !1545, !tbaa !1018
  br label %67

; <label>:67:                                     ; preds = %57, %51, %65
  %68 = phi i8* [ %66, %65 ], [ %53, %51 ], [ %62, %57 ]
  tail call void @llvm.dbg.value(metadata i8* %68, i64 0, metadata !1469, metadata !748), !dbg !1523
  %69 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !1546
  tail call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1465, metadata !748), !dbg !1482
  br label %30, !dbg !1524, !llvm.loop !1547

; <label>:70:                                     ; preds = %30
  store i8 0, i8* %31, align 1, !dbg !1549, !tbaa !1018
  ret i8* %28, !dbg !1550
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #9

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__stpcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

declare i64 @fread_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(i64*) local_unnamed_addr #2

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @canon_host(i8*) local_unnamed_addr #6 !dbg !1551 {
  %2 = alloca %struct.addrinfo*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1555, metadata !748), !dbg !1556
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !214, metadata !748) #11, !dbg !1557
  tail call void @llvm.dbg.value(metadata i32* @last_cherror, i64 0, metadata !215, metadata !748) #11, !dbg !1559
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !216, metadata !748) #11, !dbg !1560
  %3 = bitcast %struct.addrinfo** %2 to i8*, !dbg !1561
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11, !dbg !1561
  tail call void @llvm.dbg.value(metadata %struct.addrinfo* null, i64 0, metadata !217, metadata !748) #11, !dbg !1562
  store %struct.addrinfo* null, %struct.addrinfo** %2, align 8, !dbg !1562, !tbaa !755
  store i32 2, i32* getelementptr inbounds (%struct.addrinfo, %struct.addrinfo* @canon_host_r.hints, i64 0, i32 0), align 8, !dbg !1563, !tbaa !1564
  tail call void @llvm.dbg.value(metadata %struct.addrinfo** %2, i64 0, metadata !217, metadata !748) #11, !dbg !1562
  %4 = call i32 @getaddrinfo(i8* %0, i8* null, %struct.addrinfo* nonnull @canon_host_r.hints, %struct.addrinfo** nonnull %2) #11, !dbg !1566
  call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !244, metadata !748) #11, !dbg !1567
  %5 = icmp eq i32 %4, 0, !dbg !1568
  br i1 %5, label %6, label %17, !dbg !1570

; <label>:6:                                      ; preds = %1
  %7 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8, !dbg !1571, !tbaa !755
  call void @llvm.dbg.value(metadata %struct.addrinfo* %7, i64 0, metadata !217, metadata !748) #11, !dbg !1562
  %8 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %7, i64 0, i32 6, !dbg !1573
  %9 = load i8*, i8** %8, align 8, !dbg !1573, !tbaa !1574
  %10 = icmp eq i8* %9, null, !dbg !1571
  %11 = select i1 %10, i8* %0, i8* %9, !dbg !1571
  %12 = call noalias i8* @strdup(i8* %11) #11, !dbg !1575
  call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !216, metadata !748) #11, !dbg !1560
  %13 = icmp eq i8* %12, null, !dbg !1576
  br i1 %13, label %14, label %15, !dbg !1578

; <label>:14:                                     ; preds = %6
  store i32 -10, i32* @last_cherror, align 4, !dbg !1579, !tbaa !928
  br label %15, !dbg !1580

; <label>:15:                                     ; preds = %14, %6
  %16 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8, !dbg !1581, !tbaa !755
  call void @llvm.dbg.value(metadata %struct.addrinfo* %16, i64 0, metadata !217, metadata !748) #11, !dbg !1562
  call void @freeaddrinfo(%struct.addrinfo* %16) #11, !dbg !1582
  br label %18, !dbg !1583

; <label>:17:                                     ; preds = %1
  store i32 %4, i32* @last_cherror, align 4, !dbg !1584, !tbaa !928
  br label %18, !dbg !1586

; <label>:18:                                     ; preds = %15, %17
  %19 = phi i8* [ null, %17 ], [ %12, %15 ]
  call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !216, metadata !748) #11, !dbg !1560
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11, !dbg !1587
  ret i8* %19, !dbg !1588
}

declare i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) local_unnamed_addr #3

; Function Attrs: nounwind
declare noalias i8* @strdup(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @freeaddrinfo(%struct.addrinfo*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @canon_host_r(i8*, i32*) local_unnamed_addr #6 !dbg !209 {
  %3 = alloca %struct.addrinfo*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !214, metadata !748), !dbg !1589
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !215, metadata !748), !dbg !1590
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !216, metadata !748), !dbg !1591
  %4 = bitcast %struct.addrinfo** %3 to i8*, !dbg !1592
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #11, !dbg !1592
  tail call void @llvm.dbg.value(metadata %struct.addrinfo* null, i64 0, metadata !217, metadata !748), !dbg !1593
  store %struct.addrinfo* null, %struct.addrinfo** %3, align 8, !dbg !1593, !tbaa !755
  store i32 2, i32* getelementptr inbounds (%struct.addrinfo, %struct.addrinfo* @canon_host_r.hints, i64 0, i32 0), align 8, !dbg !1594, !tbaa !1564
  tail call void @llvm.dbg.value(metadata %struct.addrinfo** %3, i64 0, metadata !217, metadata !748), !dbg !1593
  %5 = call i32 @getaddrinfo(i8* %0, i8* null, %struct.addrinfo* nonnull @canon_host_r.hints, %struct.addrinfo** nonnull %3) #11, !dbg !1595
  call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !244, metadata !748), !dbg !1596
  %6 = icmp eq i32 %5, 0, !dbg !1597
  br i1 %6, label %7, label %20, !dbg !1598

; <label>:7:                                      ; preds = %2
  %8 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8, !dbg !1599, !tbaa !755
  call void @llvm.dbg.value(metadata %struct.addrinfo* %8, i64 0, metadata !217, metadata !748), !dbg !1593
  %9 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i64 0, i32 6, !dbg !1600
  %10 = load i8*, i8** %9, align 8, !dbg !1600, !tbaa !1574
  %11 = icmp eq i8* %10, null, !dbg !1599
  %12 = select i1 %11, i8* %0, i8* %10, !dbg !1599
  %13 = call noalias i8* @strdup(i8* %12) #11, !dbg !1601
  call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !216, metadata !748), !dbg !1591
  %14 = icmp eq i8* %13, null, !dbg !1602
  %15 = icmp ne i32* %1, null, !dbg !1603
  %16 = and i1 %15, %14, !dbg !1604
  br i1 %16, label %17, label %18, !dbg !1604

; <label>:17:                                     ; preds = %7
  store i32 -10, i32* %1, align 4, !dbg !1605, !tbaa !928
  br label %18, !dbg !1606

; <label>:18:                                     ; preds = %7, %17
  %19 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8, !dbg !1607, !tbaa !755
  call void @llvm.dbg.value(metadata %struct.addrinfo* %19, i64 0, metadata !217, metadata !748), !dbg !1593
  call void @freeaddrinfo(%struct.addrinfo* %19) #11, !dbg !1608
  br label %23, !dbg !1609

; <label>:20:                                     ; preds = %2
  %21 = icmp eq i32* %1, null, !dbg !1610
  br i1 %21, label %23, label %22, !dbg !1611

; <label>:22:                                     ; preds = %20
  store i32 %5, i32* %1, align 4, !dbg !1612, !tbaa !928
  br label %23, !dbg !1613

; <label>:23:                                     ; preds = %20, %22, %18
  %24 = phi i8* [ null, %22 ], [ null, %20 ], [ %13, %18 ]
  call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !216, metadata !748), !dbg !1591
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #11, !dbg !1614
  ret i8* %24, !dbg !1615
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @ch_strerror() local_unnamed_addr #6 !dbg !1616 {
  %1 = load i32, i32* @last_cherror, align 4, !dbg !1619, !tbaa !928
  %2 = tail call i8* @gai_strerror(i32 %1) #11, !dbg !1620
  ret i8* %2, !dbg !1621
}

; Function Attrs: nounwind
declare i8* @gai_strerror(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1622 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1624, metadata !748), !dbg !1625
  store i8* %0, i8** @file_name, align 8, !dbg !1626, !tbaa !755
  ret void, !dbg !1627
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1628 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1632, metadata !748), !dbg !1633
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1634, !tbaa !1635
  ret void, !dbg !1637
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1638 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1643, !tbaa !755
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1644
  %3 = icmp eq i32 %2, 0, !dbg !1645
  br i1 %3, label %21, label %4, !dbg !1646

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1647, !tbaa !1635, !range !1648
  %6 = icmp eq i8 %5, 0, !dbg !1647
  %7 = tail call i32* @__errno_location() #17, !dbg !1649
  br i1 %6, label %11, label %8, !dbg !1651

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1652, !tbaa !928
  %10 = icmp eq i32 %9, 32, !dbg !1653
  br i1 %10, label %21, label %11, !dbg !1654

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i32 5) #11, !dbg !1655
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1640, metadata !748), !dbg !1656
  %13 = load i8*, i8** @file_name, align 8, !dbg !1657, !tbaa !755
  %14 = icmp eq i8* %13, null, !dbg !1657
  %15 = load i32, i32* %7, align 4, !tbaa !928
  br i1 %14, label %18, label %16, !dbg !1658

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1659
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.24, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !1660
  br label %19, !dbg !1660

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.25, i64 0, i64 0), i8* %12) #11, !dbg !1661
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1662, !tbaa !928
  tail call void @_exit(i32 %20) #15, !dbg !1663
  unreachable, !dbg !1663

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1664, !tbaa !755
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !1666
  %24 = icmp eq i32 %23, 0, !dbg !1667
  br i1 %24, label %27, label %25, !dbg !1668

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1669, !tbaa !928
  tail call void @_exit(i32 %26) #15, !dbg !1670
  unreachable, !dbg !1670

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1671
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !1672 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1677, metadata !748), !dbg !1680
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1678, metadata !748), !dbg !1681
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !1682
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1679, metadata !748), !dbg !1683
  %3 = icmp eq i8* %2, null, !dbg !1684
  br i1 %3, label %11, label %4, !dbg !1686

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.73, i64 0, i64 0)) #14, !dbg !1687
  %6 = icmp eq i32 %5, 0, !dbg !1692
  br i1 %6, label %10, label %7, !dbg !1693

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.74, i64 0, i64 0)) #14, !dbg !1694
  %9 = icmp eq i32 %8, 0, !dbg !1695
  br i1 %9, label %10, label %11, !dbg !1696

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1678, metadata !748), !dbg !1681
  br label %11, !dbg !1697

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !1698
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @imaxtostr(i64, i8*) local_unnamed_addr #6 !dbg !1699 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !1704, metadata !748), !dbg !1707
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1705, metadata !748), !dbg !1708
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1709
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1706, metadata !748), !dbg !1710
  store i8 0, i8* %3, align 1, !dbg !1711, !tbaa !1018
  %4 = icmp slt i64 %0, 0, !dbg !1712
  br i1 %4, label %6, label %5, !dbg !1714, !llvm.loop !1715

; <label>:5:                                      ; preds = %2
  br label %19, !dbg !1719

; <label>:6:                                      ; preds = %2
  br label %7, !dbg !1720

; <label>:7:                                      ; preds = %6, %7
  %8 = phi i64 [ %14, %7 ], [ %0, %6 ]
  %9 = phi i8* [ %13, %7 ], [ %3, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !1706, metadata !748), !dbg !1710
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !1704, metadata !748), !dbg !1707
  %10 = srem i64 %8, 10, !dbg !1720
  %11 = sub nsw i64 48, %10, !dbg !1722
  %12 = trunc i64 %11 to i8, !dbg !1723
  %13 = getelementptr inbounds i8, i8* %9, i64 -1, !dbg !1724
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !1706, metadata !748), !dbg !1710
  store i8 %12, i8* %13, align 1, !dbg !1725, !tbaa !1018
  %14 = sdiv i64 %8, 10, !dbg !1726
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !1704, metadata !748), !dbg !1707
  %15 = add i64 %8, 9, !dbg !1727
  %16 = icmp ugt i64 %15, 18, !dbg !1727
  br i1 %16, label %7, label %17, !dbg !1728, !llvm.loop !1729

; <label>:17:                                     ; preds = %7
  %18 = getelementptr inbounds i8, i8* %9, i64 -2, !dbg !1732
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !1706, metadata !748), !dbg !1710
  store i8 45, i8* %18, align 1, !dbg !1733, !tbaa !1018
  br label %29, !dbg !1734

; <label>:19:                                     ; preds = %5, %19
  %20 = phi i64 [ %26, %19 ], [ %0, %5 ]
  %21 = phi i8* [ %25, %19 ], [ %3, %5 ]
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !1706, metadata !748), !dbg !1710
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !1704, metadata !748), !dbg !1707
  %22 = srem i64 %20, 10, !dbg !1719
  %23 = add nsw i64 %22, 48, !dbg !1735
  %24 = trunc i64 %23 to i8, !dbg !1736
  %25 = getelementptr inbounds i8, i8* %21, i64 -1, !dbg !1737
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1706, metadata !748), !dbg !1710
  store i8 %24, i8* %25, align 1, !dbg !1738, !tbaa !1018
  %26 = sdiv i64 %20, 10, !dbg !1739
  tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !1704, metadata !748), !dbg !1707
  %27 = add i64 %20, 9, !dbg !1740
  %28 = icmp ugt i64 %27, 18, !dbg !1740
  br i1 %28, label %19, label %29, !dbg !1741, !llvm.loop !1715

; <label>:29:                                     ; preds = %19, %17
  %30 = phi i8* [ %18, %17 ], [ %25, %19 ]
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1706, metadata !748), !dbg !1710
  ret i8* %30, !dbg !1742
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1743 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1745, metadata !748), !dbg !1748
  %2 = icmp eq i8* %0, null, !dbg !1749
  br i1 %2, label %3, label %6, !dbg !1751

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1752, !tbaa !755
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.81, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1754
  tail call void @abort() #15, !dbg !1755
  unreachable, !dbg !1755

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1756
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1746, metadata !748), !dbg !1757
  %8 = icmp eq i8* %7, null, !dbg !1758
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1759
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1760
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1747, metadata !748), !dbg !1761
  %11 = ptrtoint i8* %10 to i64, !dbg !1762
  %12 = ptrtoint i8* %0 to i64, !dbg !1762
  %13 = sub i64 %11, %12, !dbg !1762
  %14 = icmp sgt i64 %13, 6, !dbg !1764
  br i1 %14, label %15, label %24, !dbg !1765

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1766
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.82, i64 0, i64 0), i64 7) #14, !dbg !1767
  %18 = icmp eq i32 %17, 0, !dbg !1768
  br i1 %18, label %19, label %24, !dbg !1769

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1745, metadata !748), !dbg !1748
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.83, i64 0, i64 0), i64 3) #14, !dbg !1770
  %21 = icmp eq i32 %20, 0, !dbg !1773
  br i1 %21, label %22, label %24, !dbg !1774

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1775
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1745, metadata !748), !dbg !1748
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1777, !tbaa !755
  br label %24, !dbg !1778

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1745, metadata !748), !dbg !1748
  store i8* %25, i8** @program_name, align 8, !dbg !1779, !tbaa !755
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1780, !tbaa !755
  ret void, !dbg !1781
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1782 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1787, metadata !748), !dbg !1790
  %2 = tail call i32* @__errno_location() #17, !dbg !1791
  %3 = load i32, i32* %2, align 4, !dbg !1791, !tbaa !928
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1788, metadata !748), !dbg !1792
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1793
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1793
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1793
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1794
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1794
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1789, metadata !748), !dbg !1795
  store i32 %3, i32* %2, align 4, !dbg !1796, !tbaa !928
  ret %struct.quoting_options* %8, !dbg !1797
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !1798 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1804, metadata !748), !dbg !1805
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1806
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1806
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1807
  %5 = load i32, i32* %4, align 8, !dbg !1807, !tbaa !1808
  ret i32 %5, !dbg !1810
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1811 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1815, metadata !748), !dbg !1817
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1816, metadata !748), !dbg !1818
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1819
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1819
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1820
  store i32 %1, i32* %5, align 8, !dbg !1821, !tbaa !1808
  ret void, !dbg !1822
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1823 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1827, metadata !748), !dbg !1835
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1828, metadata !748), !dbg !1836
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1829, metadata !748), !dbg !1837
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1830, metadata !748), !dbg !1838
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1839
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1839
  %6 = lshr i8 %1, 5, !dbg !1840
  %7 = zext i8 %6 to i64, !dbg !1840
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1841
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1831, metadata !748), !dbg !1842
  %9 = and i8 %1, 31, !dbg !1843
  %10 = zext i8 %9 to i32, !dbg !1844
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1833, metadata !748), !dbg !1845
  %11 = load i32, i32* %8, align 4, !dbg !1846, !tbaa !928
  %12 = lshr i32 %11, %10, !dbg !1847
  %13 = and i32 %12, 1, !dbg !1848
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1834, metadata !748), !dbg !1849
  %14 = and i32 %2, 1, !dbg !1850
  %15 = xor i32 %13, %14, !dbg !1851
  %16 = shl i32 %15, %10, !dbg !1852
  %17 = xor i32 %16, %11, !dbg !1853
  store i32 %17, i32* %8, align 4, !dbg !1853, !tbaa !928
  ret i32 %13, !dbg !1854
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1855 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1859, metadata !748), !dbg !1862
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1860, metadata !748), !dbg !1863
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1864
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1859, metadata !748), !dbg !1862
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1866
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1859, metadata !748), !dbg !1862
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1867
  %6 = load i32, i32* %5, align 4, !dbg !1867, !tbaa !1868
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1861, metadata !748), !dbg !1869
  store i32 %1, i32* %5, align 4, !dbg !1870, !tbaa !1868
  ret i32 %6, !dbg !1871
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1872 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1876, metadata !748), !dbg !1879
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1877, metadata !748), !dbg !1880
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1878, metadata !748), !dbg !1881
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1882
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1876, metadata !748), !dbg !1879
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1884
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1876, metadata !748), !dbg !1879
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1885
  store i32 10, i32* %6, align 8, !dbg !1886, !tbaa !1808
  %7 = icmp ne i8* %1, null, !dbg !1887
  %8 = icmp ne i8* %2, null, !dbg !1889
  %9 = and i1 %7, %8, !dbg !1890
  br i1 %9, label %11, label %10, !dbg !1890

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1891
  unreachable, !dbg !1891

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1892
  store i8* %1, i8** %12, align 8, !dbg !1893, !tbaa !1894
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1895
  store i8* %2, i8** %13, align 8, !dbg !1896, !tbaa !1897
  ret void, !dbg !1898
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1899 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1903, metadata !748), !dbg !1911
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1904, metadata !748), !dbg !1912
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1905, metadata !748), !dbg !1913
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1906, metadata !748), !dbg !1914
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1907, metadata !748), !dbg !1915
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1916
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1916
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1908, metadata !748), !dbg !1917
  %8 = tail call i32* @__errno_location() #17, !dbg !1918
  %9 = load i32, i32* %8, align 4, !dbg !1918, !tbaa !928
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1909, metadata !748), !dbg !1919
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1920
  %11 = load i32, i32* %10, align 8, !dbg !1920, !tbaa !1808
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1921
  %13 = load i32, i32* %12, align 4, !dbg !1921, !tbaa !1868
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1922
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1923
  %16 = load i8*, i8** %15, align 8, !dbg !1923, !tbaa !1894
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1924
  %18 = load i8*, i8** %17, align 8, !dbg !1924, !tbaa !1897
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1910, metadata !748), !dbg !1926
  store i32 %9, i32* %8, align 4, !dbg !1927, !tbaa !928
  ret i64 %19, !dbg !1928
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1929 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1935, metadata !748), !dbg !1996
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1936, metadata !748), !dbg !1997
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1937, metadata !748), !dbg !1998
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1938, metadata !748), !dbg !1999
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1939, metadata !748), !dbg !2000
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1940, metadata !748), !dbg !2001
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1941, metadata !748), !dbg !2002
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1942, metadata !748), !dbg !2003
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1943, metadata !748), !dbg !2004
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1945, metadata !748), !dbg !2005
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1946, metadata !748), !dbg !2006
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1947, metadata !748), !dbg !2007
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1948, metadata !748), !dbg !2008
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1949, metadata !748), !dbg !2009
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !2010
  %14 = icmp eq i64 %13, 1, !dbg !2011
  %15 = lshr i32 %5, 1, !dbg !2012
  %16 = trunc i32 %15 to i8, !dbg !2012
  %17 = and i8 %16, 1, !dbg !2012
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1951, metadata !748), !dbg !2012
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1952, metadata !748), !dbg !2013
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1953, metadata !748), !dbg !2014
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1954, metadata !748), !dbg !2015
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2016

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1936, metadata !748), !dbg !1997
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1954, metadata !748), !dbg !2015
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1953, metadata !748), !dbg !2014
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1952, metadata !748), !dbg !2013
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1951, metadata !748), !dbg !2012
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1938, metadata !748), !dbg !1999
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1949, metadata !748), !dbg !2009
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1948, metadata !748), !dbg !2008
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1947, metadata !748), !dbg !2007
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1946, metadata !748), !dbg !2006
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1945, metadata !748), !dbg !2005
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1943, metadata !748), !dbg !2004
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1942, metadata !748), !dbg !2003
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1939, metadata !748), !dbg !2000
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
  ], !dbg !2017

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1939, metadata !748), !dbg !2000
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1951, metadata !748), !dbg !2012
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1951, metadata !748), !dbg !2012
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1939, metadata !748), !dbg !2000
  br label %94, !dbg !2018

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1951, metadata !748), !dbg !2012
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1939, metadata !748), !dbg !2000
  %43 = and i8 %36, 1, !dbg !2020
  %44 = icmp eq i8 %43, 0, !dbg !2020
  br i1 %44, label %45, label %94, !dbg !2018

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2022
  br i1 %46, label %94, label %47, !dbg !2025

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2022, !tbaa !1018
  br label %94, !dbg !2022

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.94, i64 0, i64 0), i32 %28), !dbg !2026
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1942, metadata !748), !dbg !2003
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), i32 %28), !dbg !2030
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1943, metadata !748), !dbg !2004
  br label %51, !dbg !2031

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1943, metadata !748), !dbg !2004
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1942, metadata !748), !dbg !2003
  %54 = and i8 %36, 1, !dbg !2032
  %55 = icmp eq i8 %54, 0, !dbg !2032
  br i1 %55, label %56, label %72, !dbg !2034

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1947, metadata !748), !dbg !2007
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1947, metadata !748), !dbg !2007
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1945, metadata !748), !dbg !2005
  %57 = load i8, i8* %52, align 1, !dbg !2035, !tbaa !1018
  %58 = icmp eq i8 %57, 0, !dbg !2038
  br i1 %58, label %72, label %59, !dbg !2038

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2039

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1945, metadata !748), !dbg !2005
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1947, metadata !748), !dbg !2007
  %64 = icmp ult i64 %63, %40, !dbg !2039
  br i1 %64, label %65, label %67, !dbg !2042

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2039
  store i8 %61, i8* %66, align 1, !dbg !2039, !tbaa !1018
  br label %67, !dbg !2039

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1945, metadata !748), !dbg !2005
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2043
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1947, metadata !748), !dbg !2007
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1947, metadata !748), !dbg !2007
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1945, metadata !748), !dbg !2005
  %70 = load i8, i8* %69, align 1, !dbg !2035, !tbaa !1018
  %71 = icmp eq i8 %70, 0, !dbg !2038
  br i1 %71, label %72, label %60, !dbg !2038, !llvm.loop !2044

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1945, metadata !748), !dbg !2005
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1949, metadata !748), !dbg !2009
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1947, metadata !748), !dbg !2007
  %74 = call i64 @strlen(i8* %53) #14, !dbg !2046
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1948, metadata !748), !dbg !2008
  br label %94, !dbg !2047

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1949, metadata !748), !dbg !2009
  br label %76, !dbg !2048

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1949, metadata !748), !dbg !2009
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1951, metadata !748), !dbg !2012
  br label %78, !dbg !2049

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1951, metadata !748), !dbg !2012
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1949, metadata !748), !dbg !2009
  %81 = and i8 %80, 1, !dbg !2050
  %82 = icmp eq i8 %81, 0, !dbg !2050
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1949, metadata !748), !dbg !2009
  %83 = select i1 %82, i8 1, i8 %79, !dbg !2052
  br label %84, !dbg !2052

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1951, metadata !748), !dbg !2012
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1949, metadata !748), !dbg !2009
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1939, metadata !748), !dbg !2000
  %87 = and i8 %86, 1, !dbg !2053
  %88 = icmp eq i8 %87, 0, !dbg !2053
  br i1 %88, label %89, label %94, !dbg !2055

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !2056
  br i1 %90, label %94, label %91, !dbg !2059

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !2056, !tbaa !1018
  br label %94, !dbg !2056

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1951, metadata !748), !dbg !2012
  br label %94, !dbg !2060

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !2061
  unreachable, !dbg !2061

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1951, metadata !748), !dbg !2012
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1949, metadata !748), !dbg !2009
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1948, metadata !748), !dbg !2008
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1947, metadata !748), !dbg !2007
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1945, metadata !748), !dbg !2005
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1943, metadata !748), !dbg !2004
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1942, metadata !748), !dbg !2003
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1939, metadata !748), !dbg !2000
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1944, metadata !748), !dbg !2062
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
  br label %122, !dbg !2063

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1936, metadata !748), !dbg !1997
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1954, metadata !748), !dbg !2015
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1953, metadata !748), !dbg !2014
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1952, metadata !748), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1938, metadata !748), !dbg !1999
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1946, metadata !748), !dbg !2006
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1945, metadata !748), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1944, metadata !748), !dbg !2062
  %131 = icmp eq i64 %126, -1, !dbg !2064
  br i1 %131, label %134, label %132, !dbg !2065

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !2066
  br i1 %133, label %590, label %138, !dbg !2067

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2068
  %136 = load i8, i8* %135, align 1, !dbg !2068, !tbaa !1018
  %137 = icmp eq i8 %136, 0, !dbg !2069
  br i1 %137, label %590, label %138, !dbg !2067

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1960, metadata !748), !dbg !2070
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1961, metadata !748), !dbg !2071
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1962, metadata !748), !dbg !2072
  br i1 %108, label %139, label %154, !dbg !2073

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !2075
  %141 = and i1 %109, %131, !dbg !2076
  br i1 %141, label %142, label %144, !dbg !2076

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !2077
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1938, metadata !748), !dbg !1999
  br label %144, !dbg !2078

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1938, metadata !748), !dbg !1999
  %146 = icmp ugt i64 %140, %145, !dbg !2079
  br i1 %146, label %154, label %147, !dbg !2080

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2081
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !2082
  %150 = icmp ne i32 %149, 0, !dbg !2083
  %151 = or i1 %150, %111, !dbg !2084
  %152 = xor i1 %150, true, !dbg !2084
  %153 = zext i1 %152 to i8, !dbg !2084
  br i1 %151, label %154, label %635, !dbg !2084

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1960, metadata !748), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1938, metadata !748), !dbg !1999
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2085
  %158 = load i8, i8* %157, align 1, !dbg !2085, !tbaa !1018
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1955, metadata !748), !dbg !2086
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
  ], !dbg !2087

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !2088

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !2089

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1961, metadata !748), !dbg !2071
  %162 = and i8 %127, 1, !dbg !2093
  %163 = icmp eq i8 %162, 0, !dbg !2093
  %164 = and i1 %113, %163, !dbg !2093
  br i1 %164, label %165, label %181, !dbg !2093

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2095
  br i1 %166, label %167, label %169, !dbg !2099

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2095
  store i8 39, i8* %168, align 1, !dbg !2095, !tbaa !1018
  br label %169, !dbg !2095

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2099
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1945, metadata !748), !dbg !2005
  %171 = icmp ult i64 %170, %130, !dbg !2100
  br i1 %171, label %172, label %174, !dbg !2103

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2100
  store i8 36, i8* %173, align 1, !dbg !2100, !tbaa !1018
  br label %174, !dbg !2100

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2103
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1945, metadata !748), !dbg !2005
  %176 = icmp ult i64 %175, %130, !dbg !2104
  br i1 %176, label %177, label %179, !dbg !2107

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2104
  store i8 39, i8* %178, align 1, !dbg !2104, !tbaa !1018
  br label %179, !dbg !2104

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2107
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1945, metadata !748), !dbg !2005
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1952, metadata !748), !dbg !2013
  br label %181, !dbg !2108

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1952, metadata !748), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1945, metadata !748), !dbg !2005
  %184 = icmp ult i64 %182, %130, !dbg !2109
  br i1 %184, label %185, label %187, !dbg !2112

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2109
  store i8 92, i8* %186, align 1, !dbg !2109, !tbaa !1018
  br label %187, !dbg !2109

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2112
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1945, metadata !748), !dbg !2005
  br i1 %105, label %189, label %470, !dbg !2113

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !2115
  %191 = icmp ult i64 %190, %155, !dbg !2116
  br i1 %191, label %192, label %470, !dbg !2117

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2118
  %194 = load i8, i8* %193, align 1, !dbg !2118, !tbaa !1018
  %195 = add i8 %194, -48, !dbg !2119
  %196 = icmp ult i8 %195, 10, !dbg !2119
  br i1 %196, label %197, label %470, !dbg !2119

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2120
  br i1 %198, label %199, label %201, !dbg !2124

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2120
  store i8 48, i8* %200, align 1, !dbg !2120, !tbaa !1018
  br label %201, !dbg !2120

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2124
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1945, metadata !748), !dbg !2005
  %203 = icmp ult i64 %202, %130, !dbg !2125
  br i1 %203, label %204, label %206, !dbg !2128

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2125
  store i8 48, i8* %205, align 1, !dbg !2125, !tbaa !1018
  br label %206, !dbg !2125

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2128
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1945, metadata !748), !dbg !2005
  br label %470, !dbg !2129

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !2130

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2131

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !2132

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !2134

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !2136
  %214 = icmp ult i64 %213, %155, !dbg !2137
  br i1 %214, label %215, label %470, !dbg !2138

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !2139
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2140
  %218 = load i8, i8* %217, align 1, !dbg !2140, !tbaa !1018
  %219 = icmp eq i8 %218, 63, !dbg !2141
  br i1 %219, label %220, label %470, !dbg !2142

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2143
  %222 = load i8, i8* %221, align 1, !dbg !2143, !tbaa !1018
  %223 = sext i8 %222 to i32, !dbg !2143
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
  ], !dbg !2144

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !2145

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1955, metadata !748), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1944, metadata !748), !dbg !2062
  %226 = icmp ult i64 %124, %130, !dbg !2147
  br i1 %226, label %227, label %229, !dbg !2150

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2147
  store i8 63, i8* %228, align 1, !dbg !2147, !tbaa !1018
  br label %229, !dbg !2147

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2150
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1945, metadata !748), !dbg !2005
  %231 = icmp ult i64 %230, %130, !dbg !2151
  br i1 %231, label %232, label %234, !dbg !2154

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2151
  store i8 34, i8* %233, align 1, !dbg !2151, !tbaa !1018
  br label %234, !dbg !2151

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2154
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1945, metadata !748), !dbg !2005
  %236 = icmp ult i64 %235, %130, !dbg !2155
  br i1 %236, label %237, label %239, !dbg !2158

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2155
  store i8 34, i8* %238, align 1, !dbg !2155, !tbaa !1018
  br label %239, !dbg !2155

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2158
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1945, metadata !748), !dbg !2005
  %241 = icmp ult i64 %240, %130, !dbg !2159
  br i1 %241, label %242, label %244, !dbg !2162

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2159
  store i8 63, i8* %243, align 1, !dbg !2159, !tbaa !1018
  br label %244, !dbg !2159

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2162
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1945, metadata !748), !dbg !2005
  br label %470, !dbg !2163

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1959, metadata !748), !dbg !2164
  br label %256, !dbg !2165

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1959, metadata !748), !dbg !2164
  br label %256, !dbg !2166

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1959, metadata !748), !dbg !2164
  br label %254, !dbg !2167

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1959, metadata !748), !dbg !2164
  br label %254, !dbg !2168

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1959, metadata !748), !dbg !2164
  br label %256, !dbg !2169

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1959, metadata !748), !dbg !2164
  br i1 %113, label %252, label %253, !dbg !2170

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !2171

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !2174

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1959, metadata !748), !dbg !2164
  br i1 %117, label %256, label %635, !dbg !2176

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1959, metadata !748), !dbg !2164
  br i1 %104, label %497, label %470, !dbg !2178

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !2179
  br i1 %259, label %260, label %265, !dbg !2181

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !2182, !tbaa !1018
  %262 = icmp ne i8 %261, 0, !dbg !2183
  %263 = icmp ne i64 %123, 0, !dbg !2184
  %264 = or i1 %263, %262, !dbg !2186
  br i1 %264, label %470, label %271, !dbg !2186

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !2187
  %267 = icmp ne i64 %123, 0, !dbg !2184
  %268 = or i1 %267, %266, !dbg !2181
  br i1 %268, label %470, label %271, !dbg !2181

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !2184
  br i1 %270, label %271, label %470, !dbg !2188

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1962, metadata !748), !dbg !2072
  br label %272, !dbg !2189

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1962, metadata !748), !dbg !2072
  br i1 %117, label %470, label %635, !dbg !2190

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1953, metadata !748), !dbg !2014
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1962, metadata !748), !dbg !2072
  br i1 %113, label %275, label %470, !dbg !2192

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !2193

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !2196
  %278 = icmp ne i64 %125, 0, !dbg !2198
  %279 = or i1 %278, %277, !dbg !2199
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1946, metadata !748), !dbg !2006
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1936, metadata !748), !dbg !1997
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !2199
  %281 = select i1 %279, i64 %130, i64 0, !dbg !2199
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1936, metadata !748), !dbg !1997
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1946, metadata !748), !dbg !2006
  %282 = icmp ult i64 %124, %281, !dbg !2200
  br i1 %282, label %283, label %285, !dbg !2203

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2200
  store i8 39, i8* %284, align 1, !dbg !2200, !tbaa !1018
  br label %285, !dbg !2200

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !2203
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1945, metadata !748), !dbg !2005
  %287 = icmp ult i64 %286, %281, !dbg !2204
  br i1 %287, label %288, label %290, !dbg !2207

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !2204
  store i8 92, i8* %289, align 1, !dbg !2204, !tbaa !1018
  br label %290, !dbg !2204

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !2207
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1945, metadata !748), !dbg !2005
  %292 = icmp ult i64 %291, %281, !dbg !2208
  br i1 %292, label %293, label %295, !dbg !2211

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !2208
  store i8 39, i8* %294, align 1, !dbg !2208, !tbaa !1018
  br label %295, !dbg !2208

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !2211
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1945, metadata !748), !dbg !2005
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1952, metadata !748), !dbg !2013
  br label %470, !dbg !2212

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !2213

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1963, metadata !748), !dbg !2214
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !2215
  %300 = load i16*, i16** %299, align 8, !dbg !2215, !tbaa !755
  %301 = zext i8 %158 to i64, !dbg !2215
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !2215
  %303 = load i16, i16* %302, align 2, !dbg !2215, !tbaa !1528
  %304 = lshr i16 %303, 14, !dbg !2217
  %305 = trunc i16 %304 to i8, !dbg !2217
  %306 = and i8 %305, 1, !dbg !2217
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1966, metadata !748), !dbg !2218
  br label %362, !dbg !2219

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #11, !dbg !2220
  store i64 0, i64* %10, align 8, !dbg !2221
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1963, metadata !748), !dbg !2214
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1966, metadata !748), !dbg !2218
  %308 = icmp eq i64 %155, -1, !dbg !2222
  br i1 %308, label %309, label %311, !dbg !2224

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2225
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1938, metadata !748), !dbg !1999
  br label %311, !dbg !2226

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1938, metadata !748), !dbg !1999
  br label %313, !dbg !2227, !llvm.loop !2228

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1966, metadata !748), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1963, metadata !748), !dbg !2214
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2230
  %316 = add i64 %314, %123, !dbg !2231
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !2232
  %318 = sub i64 %312, %316, !dbg !2233
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1967, metadata !748), !dbg !2234
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1982, metadata !748), !dbg !2235
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #11, !dbg !2236
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1985, metadata !748), !dbg !2237
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !2238

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1966, metadata !748), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1963, metadata !748), !dbg !2214
  %321 = icmp ugt i64 %312, %316, !dbg !2239
  br i1 %321, label %322, label %347, !dbg !2241

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !2242

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1963, metadata !748), !dbg !2214
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !2242
  %327 = load i8, i8* %326, align 1, !dbg !2242, !tbaa !1018
  %328 = icmp eq i8 %327, 0, !dbg !2241
  br i1 %328, label %347, label %329, !dbg !2243

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !2244
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1963, metadata !748), !dbg !2214
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1963, metadata !748), !dbg !2214
  %331 = add i64 %330, %123, !dbg !2245
  %332 = icmp ult i64 %331, %312, !dbg !2239
  br i1 %332, label %323, label %347, !dbg !2241, !llvm.loop !2246

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !2247
  %335 = and i1 %115, %334, !dbg !2250
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1986, metadata !748), !dbg !2251
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1986, metadata !748), !dbg !2251
  br i1 %335, label %336, label %350, !dbg !2250

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !2252

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1986, metadata !748), !dbg !2251
  %339 = add i64 %338, %316, !dbg !2252
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !2253
  %341 = load i8, i8* %340, align 1, !dbg !2253, !tbaa !1018
  %342 = sext i8 %341 to i32, !dbg !2253
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !2254

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !2255
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1986, metadata !748), !dbg !2251
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1986, metadata !748), !dbg !2251
  %345 = icmp ult i64 %344, %319, !dbg !2247
  br i1 %345, label %337, label %350, !dbg !2256, !llvm.loop !2257

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !2259

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1966, metadata !748), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1963, metadata !748), !dbg !2214
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2259
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !2260, !tbaa !928
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1982, metadata !748), !dbg !2235
  %352 = call i32 @iswprint(i32 %351) #11, !dbg !2262
  %353 = icmp eq i32 %352, 0, !dbg !2262
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1966, metadata !748), !dbg !2218
  %354 = select i1 %353, i8 0, i8 %315, !dbg !2263
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1966, metadata !748), !dbg !2218
  %355 = add i64 %319, %314, !dbg !2264
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1963, metadata !748), !dbg !2214
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1966, metadata !748), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1963, metadata !748), !dbg !2214
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2259
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1967, metadata !748), !dbg !2234
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2265
  %357 = icmp eq i32 %356, 0, !dbg !2266
  br i1 %357, label %313, label %358, !dbg !2267, !llvm.loop !2228

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !2268
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1966, metadata !748), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1963, metadata !748), !dbg !2214
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2259
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !2268
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1966, metadata !748), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1963, metadata !748), !dbg !2214
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1938, metadata !748), !dbg !1999
  %366 = and i8 %365, 1, !dbg !2269
  %367 = icmp ne i8 %366, 0, !dbg !2269
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1962, metadata !748), !dbg !2072
  %368 = icmp ult i64 %364, 2, !dbg !2270
  %369 = or i1 %367, %112, !dbg !2271
  %370 = and i1 %368, %369, !dbg !2272
  br i1 %370, label %470, label %371, !dbg !2272

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !2273
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1993, metadata !748), !dbg !2274
  br label %373, !dbg !2275

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1961, metadata !748), !dbg !2071
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1960, metadata !748), !dbg !2070
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1955, metadata !748), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1952, metadata !748), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1945, metadata !748), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1944, metadata !748), !dbg !2062
  br i1 %369, label %426, label %380, !dbg !2276

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !2281

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1961, metadata !748), !dbg !2071
  %382 = and i8 %376, 1, !dbg !2284
  %383 = icmp eq i8 %382, 0, !dbg !2284
  %384 = and i1 %113, %383, !dbg !2284
  br i1 %384, label %385, label %401, !dbg !2284

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !2286
  br i1 %386, label %387, label %389, !dbg !2290

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2286
  store i8 39, i8* %388, align 1, !dbg !2286, !tbaa !1018
  br label %389, !dbg !2286

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !2290
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1945, metadata !748), !dbg !2005
  %391 = icmp ult i64 %390, %130, !dbg !2291
  br i1 %391, label %392, label %394, !dbg !2294

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2291
  store i8 36, i8* %393, align 1, !dbg !2291, !tbaa !1018
  br label %394, !dbg !2291

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !2294
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1945, metadata !748), !dbg !2005
  %396 = icmp ult i64 %395, %130, !dbg !2295
  br i1 %396, label %397, label %399, !dbg !2298

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2295
  store i8 39, i8* %398, align 1, !dbg !2295, !tbaa !1018
  br label %399, !dbg !2295

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !2298
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1945, metadata !748), !dbg !2005
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1952, metadata !748), !dbg !2013
  br label %401, !dbg !2299

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1952, metadata !748), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1945, metadata !748), !dbg !2005
  %404 = icmp ult i64 %402, %130, !dbg !2300
  br i1 %404, label %405, label %407, !dbg !2303

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !2300
  store i8 92, i8* %406, align 1, !dbg !2300, !tbaa !1018
  br label %407, !dbg !2300

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !2303
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1945, metadata !748), !dbg !2005
  %409 = icmp ult i64 %408, %130, !dbg !2304
  br i1 %409, label %410, label %414, !dbg !2307

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !2304
  %412 = or i8 %411, 48, !dbg !2304
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2304
  store i8 %412, i8* %413, align 1, !dbg !2304, !tbaa !1018
  br label %414, !dbg !2304

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !2307
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1945, metadata !748), !dbg !2005
  %416 = icmp ult i64 %415, %130, !dbg !2308
  br i1 %416, label %417, label %422, !dbg !2311

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !2308
  %419 = and i8 %418, 7, !dbg !2308
  %420 = or i8 %419, 48, !dbg !2308
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !2308
  store i8 %420, i8* %421, align 1, !dbg !2308, !tbaa !1018
  br label %422, !dbg !2308

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !2311
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1945, metadata !748), !dbg !2005
  %424 = and i8 %377, 7, !dbg !2312
  %425 = or i8 %424, 48, !dbg !2313
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1955, metadata !748), !dbg !2086
  br label %435, !dbg !2314

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !2315
  %428 = icmp eq i8 %427, 0, !dbg !2315
  br i1 %428, label %435, label %429, !dbg !2317

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !2318
  br i1 %430, label %431, label %433, !dbg !2322

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2318
  store i8 92, i8* %432, align 1, !dbg !2318, !tbaa !1018
  br label %433, !dbg !2318

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !2322
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1945, metadata !748), !dbg !2005
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1960, metadata !748), !dbg !2070
  br label %435, !dbg !2323

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1961, metadata !748), !dbg !2071
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1960, metadata !748), !dbg !2070
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1955, metadata !748), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1952, metadata !748), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1945, metadata !748), !dbg !2005
  %441 = add i64 %374, 1, !dbg !2324
  %442 = icmp ugt i64 %372, %441, !dbg !2326
  br i1 %442, label %443, label %535, !dbg !2327

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !2328
  %445 = icmp ne i8 %444, 0, !dbg !2328
  %446 = and i8 %440, 1, !dbg !2328
  %447 = icmp eq i8 %446, 0, !dbg !2328
  %448 = and i1 %445, %447, !dbg !2328
  br i1 %448, label %449, label %460, !dbg !2328

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !2331
  br i1 %450, label %451, label %453, !dbg !2335

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !2331
  store i8 39, i8* %452, align 1, !dbg !2331, !tbaa !1018
  br label %453, !dbg !2331

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !2335
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1945, metadata !748), !dbg !2005
  %455 = icmp ult i64 %454, %130, !dbg !2336
  br i1 %455, label %456, label %458, !dbg !2339

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2336
  store i8 39, i8* %457, align 1, !dbg !2336, !tbaa !1018
  br label %458, !dbg !2336

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !2339
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1945, metadata !748), !dbg !2005
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1952, metadata !748), !dbg !2013
  br label %460, !dbg !2340

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1952, metadata !748), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1945, metadata !748), !dbg !2005
  %463 = icmp ult i64 %461, %130, !dbg !2341
  br i1 %463, label %464, label %466, !dbg !2344

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !2341
  store i8 %438, i8* %465, align 1, !dbg !2341, !tbaa !1018
  br label %466, !dbg !2341

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !2344
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1945, metadata !748), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1944, metadata !748), !dbg !2062
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !2345
  %469 = load i8, i8* %468, align 1, !dbg !2345, !tbaa !1018
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1955, metadata !748), !dbg !2086
  br label %373, !dbg !2346, !llvm.loop !2347

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1936, metadata !748), !dbg !1997
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1962, metadata !748), !dbg !2072
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1961, metadata !748), !dbg !2071
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1960, metadata !748), !dbg !2070
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1955, metadata !748), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1953, metadata !748), !dbg !2014
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1952, metadata !748), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1938, metadata !748), !dbg !1999
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1946, metadata !748), !dbg !2006
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1945, metadata !748), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1944, metadata !748), !dbg !2062
  br i1 %106, label %482, label %481, !dbg !2350

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !2352

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !2353

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !2354
  %485 = zext i8 %484 to i64, !dbg !2354
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !2355
  %487 = load i32, i32* %486, align 4, !dbg !2355, !tbaa !928
  %488 = and i8 %477, 31, !dbg !2356
  %489 = zext i8 %488 to i32, !dbg !2357
  %490 = shl i32 1, %489, !dbg !2358
  %491 = and i32 %487, %490, !dbg !2358
  %492 = icmp eq i32 %491, 0, !dbg !2358
  %493 = icmp eq i8 %156, 0, !dbg !2359
  %494 = and i1 %493, %492, !dbg !2360
  br i1 %494, label %535, label %497, !dbg !2360

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !2359
  br i1 %496, label %535, label %497, !dbg !2361

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1936, metadata !748), !dbg !1997
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1962, metadata !748), !dbg !2072
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1955, metadata !748), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1953, metadata !748), !dbg !2014
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1952, metadata !748), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1938, metadata !748), !dbg !1999
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1946, metadata !748), !dbg !2006
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1945, metadata !748), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1944, metadata !748), !dbg !2062
  br i1 %111, label %507, label %635, !dbg !2362

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1961, metadata !748), !dbg !2071
  %508 = and i8 %502, 1, !dbg !2364
  %509 = icmp eq i8 %508, 0, !dbg !2364
  %510 = and i1 %113, %509, !dbg !2364
  br i1 %510, label %511, label %527, !dbg !2364

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !2366
  br i1 %512, label %513, label %515, !dbg !2370

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !2366
  store i8 39, i8* %514, align 1, !dbg !2366, !tbaa !1018
  br label %515, !dbg !2366

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !2370
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1945, metadata !748), !dbg !2005
  %517 = icmp ult i64 %516, %506, !dbg !2371
  br i1 %517, label %518, label %520, !dbg !2374

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !2371
  store i8 36, i8* %519, align 1, !dbg !2371, !tbaa !1018
  br label %520, !dbg !2371

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !2374
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1945, metadata !748), !dbg !2005
  %522 = icmp ult i64 %521, %506, !dbg !2375
  br i1 %522, label %523, label %525, !dbg !2378

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !2375
  store i8 39, i8* %524, align 1, !dbg !2375, !tbaa !1018
  br label %525, !dbg !2375

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !2378
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1945, metadata !748), !dbg !2005
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1952, metadata !748), !dbg !2013
  br label %527, !dbg !2379

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1952, metadata !748), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1945, metadata !748), !dbg !2005
  %530 = icmp ult i64 %528, %506, !dbg !2380
  br i1 %530, label %531, label %533, !dbg !2383

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2380
  store i8 92, i8* %532, align 1, !dbg !2380, !tbaa !1018
  br label %533, !dbg !2380

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !2383
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1945, metadata !748), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1936, metadata !748), !dbg !1997
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1962, metadata !748), !dbg !2072
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1961, metadata !748), !dbg !2071
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1955, metadata !748), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1953, metadata !748), !dbg !2014
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1952, metadata !748), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1938, metadata !748), !dbg !1999
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1946, metadata !748), !dbg !2006
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1945, metadata !748), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1944, metadata !748), !dbg !2062
  br label %562, !dbg !2384

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1936, metadata !748), !dbg !1997
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1962, metadata !748), !dbg !2072
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1961, metadata !748), !dbg !2071
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1955, metadata !748), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1953, metadata !748), !dbg !2014
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1952, metadata !748), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1938, metadata !748), !dbg !1999
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1946, metadata !748), !dbg !2006
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1945, metadata !748), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1944, metadata !748), !dbg !2062
  %546 = and i8 %540, 1, !dbg !2384
  %547 = icmp ne i8 %546, 0, !dbg !2384
  %548 = and i8 %543, 1, !dbg !2384
  %549 = icmp eq i8 %548, 0, !dbg !2384
  %550 = and i1 %547, %549, !dbg !2384
  br i1 %550, label %551, label %562, !dbg !2384

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !2387
  br i1 %552, label %553, label %555, !dbg !2391

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !2387
  store i8 39, i8* %554, align 1, !dbg !2387, !tbaa !1018
  br label %555, !dbg !2387

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !2391
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1945, metadata !748), !dbg !2005
  %557 = icmp ult i64 %556, %545, !dbg !2392
  br i1 %557, label %558, label %560, !dbg !2395

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !2392
  store i8 39, i8* %559, align 1, !dbg !2392, !tbaa !1018
  br label %560, !dbg !2392

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !2395
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1945, metadata !748), !dbg !2005
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1952, metadata !748), !dbg !2013
  br label %562, !dbg !2396

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1952, metadata !748), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1945, metadata !748), !dbg !2005
  %572 = icmp ult i64 %570, %563, !dbg !2397
  br i1 %572, label %573, label %575, !dbg !2400

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !2397
  store i8 %565, i8* %574, align 1, !dbg !2397, !tbaa !1018
  br label %575, !dbg !2397

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !2400
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1945, metadata !748), !dbg !2005
  %577 = and i8 %564, 1, !dbg !2401
  %578 = icmp eq i8 %577, 0, !dbg !2401
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1954, metadata !748), !dbg !2015
  %579 = select i1 %578, i8 0, i8 %129, !dbg !2403
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1954, metadata !748), !dbg !2015
  br label %580, !dbg !2404

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1936, metadata !748), !dbg !1997
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1954, metadata !748), !dbg !2015
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1953, metadata !748), !dbg !2014
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1952, metadata !748), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1938, metadata !748), !dbg !1999
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1946, metadata !748), !dbg !2006
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1945, metadata !748), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1944, metadata !748), !dbg !2062
  %589 = add i64 %581, 1, !dbg !2405
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1944, metadata !748), !dbg !2062
  br label %122, !dbg !2406, !llvm.loop !2407

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !2409
  %593 = and i1 %113, %592, !dbg !2411
  %594 = xor i1 %593, true, !dbg !2411
  %595 = or i1 %111, %594, !dbg !2411
  br i1 %595, label %596, label %635, !dbg !2411

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !2412
  %598 = xor i1 %597, true, !dbg !2412
  %599 = and i8 %128, 1, !dbg !2414
  %600 = icmp eq i8 %599, 0, !dbg !2414
  %601 = or i1 %600, %598, !dbg !2412
  br i1 %601, label %611, label %602, !dbg !2412

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !2415
  %604 = icmp eq i8 %603, 0, !dbg !2415
  br i1 %604, label %607, label %605, !dbg !2418

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !2419
  br label %645, !dbg !2420

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !2421
  %609 = icmp ne i64 %125, 0, !dbg !2423
  %610 = and i1 %609, %608, !dbg !2424
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1936, metadata !748), !dbg !1997
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1945, metadata !748), !dbg !2005
  br i1 %610, label %27, label %611, !dbg !2424

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !2425
  %613 = and i1 %612, %111, !dbg !2427
  br i1 %613, label %614, label %630, !dbg !2427

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1947, metadata !748), !dbg !2007
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1945, metadata !748), !dbg !2005
  %615 = load i8, i8* %99, align 1, !dbg !2428, !tbaa !1018
  %616 = icmp eq i8 %615, 0, !dbg !2431
  br i1 %616, label %630, label %617, !dbg !2431

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !2432

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1945, metadata !748), !dbg !2005
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1947, metadata !748), !dbg !2007
  %622 = icmp ult i64 %621, %130, !dbg !2432
  br i1 %622, label %623, label %625, !dbg !2435

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2432
  store i8 %619, i8* %624, align 1, !dbg !2432, !tbaa !1018
  br label %625, !dbg !2432

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !2435
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1945, metadata !748), !dbg !2005
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !2436
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1947, metadata !748), !dbg !2007
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1947, metadata !748), !dbg !2007
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1945, metadata !748), !dbg !2005
  %628 = load i8, i8* %627, align 1, !dbg !2428, !tbaa !1018
  %629 = icmp eq i8 %628, 0, !dbg !2431
  br i1 %629, label %630, label %618, !dbg !2431, !llvm.loop !2437

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1945, metadata !748), !dbg !2005
  %632 = icmp ult i64 %631, %130, !dbg !2439
  br i1 %632, label %633, label %645, !dbg !2441

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !2442
  store i8 0, i8* %634, align 1, !dbg !2443, !tbaa !1018
  br label %645, !dbg !2442

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1936, metadata !748), !dbg !1997
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1938, metadata !748), !dbg !1999
  %639 = icmp ne i32 %636, 2, !dbg !2444
  %640 = icmp eq i8 %103, 0, !dbg !2446
  %641 = or i1 %639, %640, !dbg !2447
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1939, metadata !748), !dbg !2000
  %642 = select i1 %641, i32 %636, i32 4, !dbg !2447
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1939, metadata !748), !dbg !2000
  %643 = and i32 %5, -3, !dbg !2448
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !2449
  br label %645, !dbg !2450

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !2451
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2452 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2456, metadata !748), !dbg !2460
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2457, metadata !748), !dbg !2461
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !2462
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2458, metadata !748), !dbg !2463
  %4 = icmp eq i8* %3, %0, !dbg !2464
  br i1 %4, label %5, label %75, !dbg !2466

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !2467
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2459, metadata !748), !dbg !2468
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2469, metadata !748), !dbg !2485
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2483, metadata !748), !dbg !2488
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2484, metadata !748), !dbg !2489
  %7 = load i8, i8* %6, align 1, !dbg !2490, !tbaa !1018
  %8 = sext i8 %7 to i32, !dbg !2490
  %9 = and i32 %8, -33, !dbg !2490
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2490

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2492, metadata !748), !dbg !2506
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2504, metadata !748), !dbg !2510
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2505, metadata !748), !dbg !2511
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2512
  %12 = load i8, i8* %11, align 1, !dbg !2512, !tbaa !1018
  %13 = sext i8 %12 to i32, !dbg !2512
  %14 = and i32 %13, -33, !dbg !2512
  %15 = icmp eq i32 %14, 84, !dbg !2512
  br i1 %15, label %16, label %72, !dbg !2512

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2514, metadata !748), !dbg !2527
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2525, metadata !748), !dbg !2531
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2526, metadata !748), !dbg !2532
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2533
  %18 = load i8, i8* %17, align 1, !dbg !2533, !tbaa !1018
  %19 = sext i8 %18 to i32, !dbg !2533
  %20 = and i32 %19, -33, !dbg !2533
  %21 = icmp eq i32 %20, 70, !dbg !2533
  br i1 %21, label %22, label %72, !dbg !2533

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2535, metadata !748), !dbg !2547
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2545, metadata !748), !dbg !2551
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2546, metadata !748), !dbg !2552
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2553
  %24 = load i8, i8* %23, align 1, !dbg !2553, !tbaa !1018
  %25 = icmp eq i8 %24, 45, !dbg !2553
  br i1 %25, label %26, label %72, !dbg !2555

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2556, metadata !748), !dbg !2567
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2565, metadata !748), !dbg !2571
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2566, metadata !748), !dbg !2572
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2573
  %28 = load i8, i8* %27, align 1, !dbg !2573, !tbaa !1018
  %29 = icmp eq i8 %28, 56, !dbg !2573
  br i1 %29, label %30, label %72, !dbg !2575

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2576, metadata !748), !dbg !2586
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2584, metadata !748), !dbg !2590
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2585, metadata !748), !dbg !2591
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2592
  %32 = load i8, i8* %31, align 1, !dbg !2592, !tbaa !1018
  %33 = icmp eq i8 %32, 0, !dbg !2592
  br i1 %33, label %34, label %72, !dbg !2594

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2595, !tbaa !1018
  %36 = icmp eq i8 %35, 96, !dbg !2596
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.97, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.98, i64 0, i64 0), !dbg !2595
  br label %75, !dbg !2597

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2492, metadata !748), !dbg !2598
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2504, metadata !748), !dbg !2602
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2505, metadata !748), !dbg !2603
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2604
  %40 = load i8, i8* %39, align 1, !dbg !2604, !tbaa !1018
  %41 = sext i8 %40 to i32, !dbg !2604
  %42 = and i32 %41, -33, !dbg !2604
  %43 = icmp eq i32 %42, 66, !dbg !2604
  br i1 %43, label %44, label %72, !dbg !2604

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2514, metadata !748), !dbg !2605
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2525, metadata !748), !dbg !2607
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2526, metadata !748), !dbg !2608
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2609
  %46 = load i8, i8* %45, align 1, !dbg !2609, !tbaa !1018
  %47 = icmp eq i8 %46, 49, !dbg !2609
  br i1 %47, label %48, label %72, !dbg !2610

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2535, metadata !748), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2545, metadata !748), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2546, metadata !748), !dbg !2614
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2615
  %50 = load i8, i8* %49, align 1, !dbg !2615, !tbaa !1018
  %51 = icmp eq i8 %50, 56, !dbg !2615
  br i1 %51, label %52, label %72, !dbg !2616

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2556, metadata !748), !dbg !2617
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2565, metadata !748), !dbg !2619
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2566, metadata !748), !dbg !2620
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2621
  %54 = load i8, i8* %53, align 1, !dbg !2621, !tbaa !1018
  %55 = icmp eq i8 %54, 48, !dbg !2621
  br i1 %55, label %56, label %72, !dbg !2622

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2576, metadata !748), !dbg !2623
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2584, metadata !748), !dbg !2625
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2585, metadata !748), !dbg !2626
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2627
  %58 = load i8, i8* %57, align 1, !dbg !2627, !tbaa !1018
  %59 = icmp eq i8 %58, 51, !dbg !2627
  br i1 %59, label %60, label %72, !dbg !2628

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2629, metadata !748), !dbg !2638
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2636, metadata !748), !dbg !2642
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2637, metadata !748), !dbg !2643
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2644
  %62 = load i8, i8* %61, align 1, !dbg !2644, !tbaa !1018
  %63 = icmp eq i8 %62, 48, !dbg !2644
  br i1 %63, label %64, label %72, !dbg !2646

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2647, metadata !748), !dbg !2655
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2653, metadata !748), !dbg !2659
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2654, metadata !748), !dbg !2660
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2661
  %66 = load i8, i8* %65, align 1, !dbg !2661, !tbaa !1018
  %67 = icmp eq i8 %66, 0, !dbg !2661
  br i1 %67, label %68, label %72, !dbg !2663

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2664, !tbaa !1018
  %70 = icmp eq i8 %69, 96, !dbg !2665
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.99, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.100, i64 0, i64 0), !dbg !2664
  br label %75, !dbg !2666

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2667
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), !dbg !2668
  br label %75, !dbg !2669

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2670
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2671 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2675, metadata !748), !dbg !2678
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2676, metadata !748), !dbg !2679
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2677, metadata !748), !dbg !2680
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2681, metadata !748) #11, !dbg !2694
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2686, metadata !748) #11, !dbg !2696
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2687, metadata !748) #11, !dbg !2697
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2688, metadata !748) #11, !dbg !2698
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2699
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2699
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2689, metadata !748) #11, !dbg !2700
  %6 = tail call i32* @__errno_location() #17, !dbg !2701
  %7 = load i32, i32* %6, align 4, !dbg !2701, !tbaa !928
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2690, metadata !748) #11, !dbg !2702
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2703
  %9 = load i32, i32* %8, align 4, !dbg !2703, !tbaa !1868
  %10 = or i32 %9, 1, !dbg !2704
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2691, metadata !748) #11, !dbg !2705
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2706
  %12 = load i32, i32* %11, align 8, !dbg !2706, !tbaa !1808
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2707
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2708
  %15 = load i8*, i8** %14, align 8, !dbg !2708, !tbaa !1894
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2709
  %17 = load i8*, i8** %16, align 8, !dbg !2709, !tbaa !1897
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !2710
  %19 = add i64 %18, 1, !dbg !2711
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2692, metadata !748) #11, !dbg !2712
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2713, metadata !748) #11, !dbg !2718
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2720
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2693, metadata !748) #11, !dbg !2721
  %21 = load i32, i32* %11, align 8, !dbg !2722, !tbaa !1808
  %22 = load i8*, i8** %14, align 8, !dbg !2723, !tbaa !1894
  %23 = load i8*, i8** %16, align 8, !dbg !2724, !tbaa !1897
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !2725
  store i32 %7, i32* %6, align 4, !dbg !2726, !tbaa !928
  ret i8* %20, !dbg !2727
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2682 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2681, metadata !748), !dbg !2728
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2686, metadata !748), !dbg !2729
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2687, metadata !748), !dbg !2730
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2688, metadata !748), !dbg !2731
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2732
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2732
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2689, metadata !748), !dbg !2733
  %7 = tail call i32* @__errno_location() #17, !dbg !2734
  %8 = load i32, i32* %7, align 4, !dbg !2734, !tbaa !928
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2690, metadata !748), !dbg !2735
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2736
  %10 = load i32, i32* %9, align 4, !dbg !2736, !tbaa !1868
  %11 = icmp ne i64* %2, null, !dbg !2737
  %12 = xor i1 %11, true, !dbg !2737
  %13 = zext i1 %12 to i32, !dbg !2737
  %14 = or i32 %10, %13, !dbg !2738
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2691, metadata !748), !dbg !2739
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2740
  %16 = load i32, i32* %15, align 8, !dbg !2740, !tbaa !1808
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2741
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2742
  %19 = load i8*, i8** %18, align 8, !dbg !2742, !tbaa !1894
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2743
  %21 = load i8*, i8** %20, align 8, !dbg !2743, !tbaa !1897
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2744
  %23 = add i64 %22, 1, !dbg !2745
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2692, metadata !748), !dbg !2746
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2713, metadata !748) #11, !dbg !2747
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2749
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2693, metadata !748), !dbg !2750
  %25 = load i32, i32* %15, align 8, !dbg !2751, !tbaa !1808
  %26 = load i8*, i8** %18, align 8, !dbg !2752, !tbaa !1894
  %27 = load i8*, i8** %20, align 8, !dbg !2753, !tbaa !1897
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2754
  store i32 %8, i32* %7, align 4, !dbg !2755, !tbaa !928
  br i1 %11, label %29, label %30, !dbg !2756

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2757, !tbaa !961
  br label %30, !dbg !2759

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2760
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2761 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2765, !tbaa !755
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2763, metadata !748), !dbg !2766
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2764, metadata !748), !dbg !2767
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2764, metadata !748), !dbg !2767
  %2 = load i32, i32* @nslots, align 4, !dbg !2768, !tbaa !928
  %3 = icmp sgt i32 %2, 1, !dbg !2771
  br i1 %3, label %4, label %13, !dbg !2772

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2773

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2764, metadata !748), !dbg !2767
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2773
  %8 = load i8*, i8** %7, align 8, !dbg !2773, !tbaa !2774
  tail call void @free(i8* %8) #11, !dbg !2776
  %9 = add nuw i64 %6, 1, !dbg !2777
  %10 = load i32, i32* @nslots, align 4, !dbg !2768, !tbaa !928
  %11 = sext i32 %10 to i64, !dbg !2771
  %12 = icmp slt i64 %9, %11, !dbg !2771
  br i1 %12, label %5, label %13, !dbg !2772, !llvm.loop !2778

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2780
  %15 = load i8*, i8** %14, align 8, !dbg !2780, !tbaa !2774
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2782
  br i1 %16, label %18, label %17, !dbg !2783

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #11, !dbg !2784
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2786, !tbaa !2787
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2788, !tbaa !2774
  br label %18, !dbg !2789

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2790
  br i1 %19, label %22, label %20, !dbg !2792

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2793
  tail call void @free(i8* %21) #11, !dbg !2795
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2796, !tbaa !755
  br label %22, !dbg !2797

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2798, !tbaa !928
  ret void, !dbg !2799
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2800 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2804, metadata !748), !dbg !2806
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2805, metadata !748), !dbg !2807
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2808
  ret i8* %3, !dbg !2809
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2810 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2814, metadata !748), !dbg !2828
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2815, metadata !748), !dbg !2829
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2816, metadata !748), !dbg !2830
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2817, metadata !748), !dbg !2831
  %5 = tail call i32* @__errno_location() #17, !dbg !2832
  %6 = load i32, i32* %5, align 4, !dbg !2832, !tbaa !928
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2818, metadata !748), !dbg !2833
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2834, !tbaa !755
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2819, metadata !748), !dbg !2835
  %8 = icmp slt i32 %0, 0, !dbg !2836
  br i1 %8, label %9, label %10, !dbg !2838

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2839
  unreachable, !dbg !2839

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2840, !tbaa !928
  %12 = icmp sgt i32 %11, %0, !dbg !2841
  br i1 %12, label %34, label %13, !dbg !2842

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2843
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2844
  br i1 %15, label %16, label %17, !dbg !2846

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2847
  unreachable, !dbg !2847

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2848
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2848
  %20 = add nsw i32 %0, 1, !dbg !2849
  %21 = sext i32 %20 to i64, !dbg !2850
  %22 = shl nsw i64 %21, 4, !dbg !2851
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !2852
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2852
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2819, metadata !748), !dbg !2835
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2853, !tbaa !755
  br i1 %14, label %25, label %26, !dbg !2854

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2855, !tbaa.struct !2857
  br label %26, !dbg !2858

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2859, !tbaa !928
  %28 = sext i32 %27 to i64, !dbg !2860
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2860
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2861
  %31 = sub nsw i32 %20, %27, !dbg !2862
  %32 = sext i32 %31 to i64, !dbg !2863
  %33 = shl nsw i64 %32, 4, !dbg !2864
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2861
  store i32 %20, i32* @nslots, align 4, !dbg !2865, !tbaa !928
  br label %34, !dbg !2866

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2819, metadata !748), !dbg !2835
  %36 = sext i32 %0 to i64, !dbg !2867
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2868
  %38 = load i64, i64* %37, align 8, !dbg !2868, !tbaa !2787
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2823, metadata !748), !dbg !2869
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2870
  %40 = load i8*, i8** %39, align 8, !dbg !2870, !tbaa !2774
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2825, metadata !748), !dbg !2871
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2872
  %42 = load i32, i32* %41, align 4, !dbg !2872, !tbaa !1868
  %43 = or i32 %42, 1, !dbg !2873
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2826, metadata !748), !dbg !2874
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2875
  %45 = load i32, i32* %44, align 8, !dbg !2875, !tbaa !1808
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2876
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2877
  %48 = load i8*, i8** %47, align 8, !dbg !2877, !tbaa !1894
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2878
  %50 = load i8*, i8** %49, align 8, !dbg !2878, !tbaa !1897
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2879
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2827, metadata !748), !dbg !2880
  %52 = icmp ugt i64 %38, %51, !dbg !2881
  br i1 %52, label %63, label %53, !dbg !2883

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2884
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2823, metadata !748), !dbg !2869
  store i64 %54, i64* %37, align 8, !dbg !2886, !tbaa !2787
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2887
  br i1 %55, label %57, label %56, !dbg !2889

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !2890
  br label %57, !dbg !2890

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2713, metadata !748) #11, !dbg !2891
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !2893
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2825, metadata !748), !dbg !2871
  store i8* %58, i8** %39, align 8, !dbg !2894, !tbaa !2774
  %59 = load i32, i32* %44, align 8, !dbg !2895, !tbaa !1808
  %60 = load i8*, i8** %47, align 8, !dbg !2896, !tbaa !1894
  %61 = load i8*, i8** %49, align 8, !dbg !2897, !tbaa !1897
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2898
  br label %63, !dbg !2899

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2825, metadata !748), !dbg !2871
  store i32 %6, i32* %5, align 4, !dbg !2900, !tbaa !928
  ret i8* %64, !dbg !2901
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2902 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2906, metadata !748), !dbg !2909
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2907, metadata !748), !dbg !2910
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2908, metadata !748), !dbg !2911
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2912
  ret i8* %4, !dbg !2913
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2914 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2916, metadata !748), !dbg !2917
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2804, metadata !748) #11, !dbg !2918
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2805, metadata !748) #11, !dbg !2920
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2921
  ret i8* %2, !dbg !2922
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2923 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2927, metadata !748), !dbg !2929
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2928, metadata !748), !dbg !2930
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2906, metadata !748) #11, !dbg !2931
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2907, metadata !748) #11, !dbg !2933
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2908, metadata !748) #11, !dbg !2934
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2935
  ret i8* %3, !dbg !2936
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2937 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2945, metadata !2951), !dbg !2952
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2941, metadata !748), !dbg !2954
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2942, metadata !748), !dbg !2955
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2943, metadata !748), !dbg !2956
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2957
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2957
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2944, metadata !748), !dbg !2958
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2950, metadata !748) #11, !dbg !2959
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2960
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2960
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2945, metadata !748) #11, !dbg !2952
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2945, metadata !2961) #11, !dbg !2952
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2952
  %8 = icmp eq i32 %1, 10, !dbg !2962
  br i1 %8, label %9, label %10, !dbg !2964

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2965, !noalias !2966
  unreachable, !dbg !2965

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2945, metadata !2961) #11, !dbg !2952
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2969
  store i32 %1, i32* %11, align 8, !dbg !2969, !alias.scope !2966
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2969
  %13 = bitcast i32* %12 to i8*, !dbg !2969
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !2969
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2970
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2944, metadata !748), !dbg !2958
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2971
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2972
  ret i8* %14, !dbg !2973
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2974 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2945, metadata !2951), !dbg !2983
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2978, metadata !748), !dbg !2985
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2979, metadata !748), !dbg !2986
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2980, metadata !748), !dbg !2987
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2981, metadata !748), !dbg !2988
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2989
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2989
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2982, metadata !748), !dbg !2990
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2950, metadata !748) #11, !dbg !2991
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2992
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2992
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2945, metadata !748) #11, !dbg !2983
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2945, metadata !2961) #11, !dbg !2983
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2983
  %9 = icmp eq i32 %1, 10, !dbg !2993
  br i1 %9, label %10, label %11, !dbg !2994

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2995, !noalias !2996
  unreachable, !dbg !2995

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2945, metadata !2961) #11, !dbg !2983
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2999
  store i32 %1, i32* %12, align 8, !dbg !2999, !alias.scope !2996
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2999
  %14 = bitcast i32* %13 to i8*, !dbg !2999
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !2999
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3000
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2982, metadata !748), !dbg !2990
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3001
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3002
  ret i8* %15, !dbg !3003
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3004 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2945, metadata !2951), !dbg !3010
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3008, metadata !748), !dbg !3013
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3009, metadata !748), !dbg !3014
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2941, metadata !748) #11, !dbg !3015
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2942, metadata !748) #11, !dbg !3016
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2943, metadata !748) #11, !dbg !3017
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3018
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3018
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2944, metadata !748) #11, !dbg !3019
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2950, metadata !748) #11, !dbg !3020
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3021
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !3021
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2945, metadata !748) #11, !dbg !3010
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2945, metadata !2961) #11, !dbg !3010
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3010
  %7 = icmp eq i32 %0, 10, !dbg !3022
  br i1 %7, label %8, label %9, !dbg !3023

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3024, !noalias !3025
  unreachable, !dbg !3024

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2945, metadata !2961) #11, !dbg !3010
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3028
  store i32 %0, i32* %10, align 8, !dbg !3028, !alias.scope !3025
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3028
  %12 = bitcast i32* %11 to i8*, !dbg !3028
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !3028
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !3029
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2944, metadata !748) #11, !dbg !3019
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3030
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3031
  ret i8* %13, !dbg !3032
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3033 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2945, metadata !2951), !dbg !3040
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3037, metadata !748), !dbg !3043
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3038, metadata !748), !dbg !3044
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3039, metadata !748), !dbg !3045
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2978, metadata !748) #11, !dbg !3046
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2979, metadata !748) #11, !dbg !3047
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2980, metadata !748) #11, !dbg !3048
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2981, metadata !748) #11, !dbg !3049
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3050
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3050
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2982, metadata !748) #11, !dbg !3051
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2950, metadata !748) #11, !dbg !3052
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3053
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3053
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2945, metadata !748) #11, !dbg !3040
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2945, metadata !2961) #11, !dbg !3040
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3040
  %8 = icmp eq i32 %0, 10, !dbg !3054
  br i1 %8, label %9, label %10, !dbg !3055

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3056, !noalias !3057
  unreachable, !dbg !3056

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2945, metadata !2961) #11, !dbg !3040
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3060
  store i32 %0, i32* %11, align 8, !dbg !3060, !alias.scope !3057
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3060
  %13 = bitcast i32* %12 to i8*, !dbg !3060
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !3060
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3061
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2982, metadata !748) #11, !dbg !3051
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !3062
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3063
  ret i8* %14, !dbg !3064
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3065 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3069, metadata !748), !dbg !3073
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3070, metadata !748), !dbg !3074
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3071, metadata !748), !dbg !3075
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3076
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3076
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3077, !tbaa.struct !3078
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3072, metadata !748), !dbg !3079
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1827, metadata !748), !dbg !3080
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1828, metadata !748), !dbg !3082
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1829, metadata !748), !dbg !3083
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1830, metadata !748), !dbg !3084
  %6 = lshr i8 %2, 5, !dbg !3085
  %7 = zext i8 %6 to i64, !dbg !3085
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3086
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1831, metadata !748), !dbg !3087
  %9 = and i8 %2, 31, !dbg !3088
  %10 = zext i8 %9 to i32, !dbg !3089
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1833, metadata !748), !dbg !3090
  %11 = load i32, i32* %8, align 4, !dbg !3091, !tbaa !928
  %12 = lshr i32 %11, %10, !dbg !3092
  %13 = and i32 %12, 1, !dbg !3093
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1834, metadata !748), !dbg !3094
  %14 = xor i32 %13, 1, !dbg !3095
  %15 = shl i32 %14, %10, !dbg !3096
  %16 = xor i32 %15, %11, !dbg !3097
  store i32 %16, i32* %8, align 4, !dbg !3097, !tbaa !928
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3072, metadata !748), !dbg !3079
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3098
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3099
  ret i8* %17, !dbg !3100
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3101 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3105, metadata !748), !dbg !3107
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3106, metadata !748), !dbg !3108
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3069, metadata !748) #11, !dbg !3109
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3070, metadata !748) #11, !dbg !3111
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3071, metadata !748) #11, !dbg !3112
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3113
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3113
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3114, !tbaa.struct !3078
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3072, metadata !748) #11, !dbg !3115
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1827, metadata !748) #11, !dbg !3116
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1828, metadata !748) #11, !dbg !3118
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1829, metadata !748) #11, !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1830, metadata !748) #11, !dbg !3120
  %5 = lshr i8 %1, 5, !dbg !3121
  %6 = zext i8 %5 to i64, !dbg !3121
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3122
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1831, metadata !748) #11, !dbg !3123
  %8 = and i8 %1, 31, !dbg !3124
  %9 = zext i8 %8 to i32, !dbg !3125
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1833, metadata !748) #11, !dbg !3126
  %10 = load i32, i32* %7, align 4, !dbg !3127, !tbaa !928
  %11 = lshr i32 %10, %9, !dbg !3128
  %12 = and i32 %11, 1, !dbg !3129
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1834, metadata !748) #11, !dbg !3130
  %13 = xor i32 %12, 1, !dbg !3131
  %14 = shl i32 %13, %9, !dbg !3132
  %15 = xor i32 %14, %10, !dbg !3133
  store i32 %15, i32* %7, align 4, !dbg !3133, !tbaa !928
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3072, metadata !748) #11, !dbg !3115
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3134
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3135
  ret i8* %16, !dbg !3136
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3137 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3139, metadata !748), !dbg !3140
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3105, metadata !748) #11, !dbg !3141
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3106, metadata !748) #11, !dbg !3143
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3069, metadata !748) #11, !dbg !3144
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3070, metadata !748) #11, !dbg !3146
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3071, metadata !748) #11, !dbg !3147
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3148
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3148
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3149, !tbaa.struct !3078
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3072, metadata !748) #11, !dbg !3150
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1827, metadata !748) #11, !dbg !3151
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1828, metadata !748) #11, !dbg !3153
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1829, metadata !748) #11, !dbg !3154
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1830, metadata !748) #11, !dbg !3155
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3156
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1831, metadata !748) #11, !dbg !3157
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1833, metadata !748) #11, !dbg !3158
  %5 = load i32, i32* %4, align 4, !dbg !3159, !tbaa !928
  %6 = or i32 %5, 67108864, !dbg !3160
  store i32 %6, i32* %4, align 4, !dbg !3160, !tbaa !928
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3072, metadata !748) #11, !dbg !3150
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !3161
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3162
  ret i8* %7, !dbg !3163
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3164 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3166, metadata !748), !dbg !3168
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3167, metadata !748), !dbg !3169
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3069, metadata !748) #11, !dbg !3170
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3070, metadata !748) #11, !dbg !3172
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3071, metadata !748) #11, !dbg !3173
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3174
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3174
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3175, !tbaa.struct !3078
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3072, metadata !748) #11, !dbg !3176
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1827, metadata !748) #11, !dbg !3177
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1828, metadata !748) #11, !dbg !3179
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1829, metadata !748) #11, !dbg !3180
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1830, metadata !748) #11, !dbg !3181
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3182
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1831, metadata !748) #11, !dbg !3183
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1833, metadata !748) #11, !dbg !3184
  %6 = load i32, i32* %5, align 4, !dbg !3185, !tbaa !928
  %7 = or i32 %6, 67108864, !dbg !3186
  store i32 %7, i32* %5, align 4, !dbg !3186, !tbaa !928
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3072, metadata !748) #11, !dbg !3176
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !3187
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3188
  ret i8* %8, !dbg !3189
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3190 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2945, metadata !2951), !dbg !3196
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3192, metadata !748), !dbg !3198
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3193, metadata !748), !dbg !3199
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3194, metadata !748), !dbg !3200
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3201
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3201
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2950, metadata !748) #11, !dbg !3202
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3203
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3203
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2945, metadata !748) #11, !dbg !3196
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2945, metadata !2961) #11, !dbg !3196
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3196
  %9 = icmp eq i32 %1, 10, !dbg !3204
  br i1 %9, label %10, label %11, !dbg !3205

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3206, !noalias !3207
  unreachable, !dbg !3206

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2945, metadata !2961) #11, !dbg !3196
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3210
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3210
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3211
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3212
  store i32 %1, i32* %13, align 8, !dbg !3212
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3212
  %15 = bitcast i32* %14 to i8*, !dbg !3212
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3212
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3195, metadata !748), !dbg !3213
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1827, metadata !748), !dbg !3214
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1828, metadata !748), !dbg !3216
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1829, metadata !748), !dbg !3217
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1830, metadata !748), !dbg !3218
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3219
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1831, metadata !748), !dbg !3220
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1833, metadata !748), !dbg !3221
  %17 = load i32, i32* %16, align 4, !dbg !3222, !tbaa !928
  %18 = or i32 %17, 67108864, !dbg !3223
  store i32 %18, i32* %16, align 4, !dbg !3223, !tbaa !928
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3195, metadata !748), !dbg !3213
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3224
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3225
  ret i8* %19, !dbg !3226
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3227 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3231, metadata !748), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3232, metadata !748), !dbg !3236
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3233, metadata !748), !dbg !3237
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3234, metadata !748), !dbg !3238
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3239, metadata !748) #11, !dbg !3249
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3244, metadata !748) #11, !dbg !3251
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3245, metadata !748) #11, !dbg !3252
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3246, metadata !748) #11, !dbg !3253
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3247, metadata !748) #11, !dbg !3254
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3255
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3255
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3256, !tbaa.struct !3078
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3248, metadata !748) #11, !dbg !3257
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1876, metadata !748) #11, !dbg !3258
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1877, metadata !748) #11, !dbg !3260
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1878, metadata !748) #11, !dbg !3261
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1876, metadata !748) #11, !dbg !3258
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1876, metadata !748) #11, !dbg !3258
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3262
  store i32 10, i32* %7, align 8, !dbg !3263, !tbaa !1808
  %8 = icmp ne i8* %1, null, !dbg !3264
  %9 = icmp ne i8* %2, null, !dbg !3265
  %10 = and i1 %8, %9, !dbg !3266
  br i1 %10, label %12, label %11, !dbg !3266

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3267
  unreachable, !dbg !3267

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3268
  store i8* %1, i8** %13, align 8, !dbg !3269, !tbaa !1894
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3270
  store i8* %2, i8** %14, align 8, !dbg !3271, !tbaa !1897
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3248, metadata !748) #11, !dbg !3257
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !3272
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3273
  ret i8* %15, !dbg !3274
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3240 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3239, metadata !748), !dbg !3275
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3244, metadata !748), !dbg !3276
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3245, metadata !748), !dbg !3277
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3246, metadata !748), !dbg !3278
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3247, metadata !748), !dbg !3279
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3280
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3281, !tbaa.struct !3078
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3248, metadata !748), !dbg !3282
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1876, metadata !748) #11, !dbg !3283
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1877, metadata !748) #11, !dbg !3285
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1878, metadata !748) #11, !dbg !3286
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1876, metadata !748) #11, !dbg !3283
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1876, metadata !748) #11, !dbg !3283
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3287
  store i32 10, i32* %8, align 8, !dbg !3288, !tbaa !1808
  %9 = icmp ne i8* %1, null, !dbg !3289
  %10 = icmp ne i8* %2, null, !dbg !3290
  %11 = and i1 %9, %10, !dbg !3291
  br i1 %11, label %13, label %12, !dbg !3291

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3292
  unreachable, !dbg !3292

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3293
  store i8* %1, i8** %14, align 8, !dbg !3294, !tbaa !1894
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3295
  store i8* %2, i8** %15, align 8, !dbg !3296, !tbaa !1897
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3248, metadata !748), !dbg !3282
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3297
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3298
  ret i8* %16, !dbg !3299
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3300 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3304, metadata !748), !dbg !3307
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3305, metadata !748), !dbg !3308
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3306, metadata !748), !dbg !3309
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3231, metadata !748) #11, !dbg !3310
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3232, metadata !748) #11, !dbg !3312
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3233, metadata !748) #11, !dbg !3313
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3234, metadata !748) #11, !dbg !3314
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3239, metadata !748) #11, !dbg !3315
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3244, metadata !748) #11, !dbg !3317
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3245, metadata !748) #11, !dbg !3318
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3246, metadata !748) #11, !dbg !3319
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3247, metadata !748) #11, !dbg !3320
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3321
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3321
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3322, !tbaa.struct !3078
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3248, metadata !748) #11, !dbg !3323
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1876, metadata !748) #11, !dbg !3324
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1877, metadata !748) #11, !dbg !3326
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1878, metadata !748) #11, !dbg !3327
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1876, metadata !748) #11, !dbg !3324
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1876, metadata !748) #11, !dbg !3324
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3328
  store i32 10, i32* %6, align 8, !dbg !3329, !tbaa !1808
  %7 = icmp ne i8* %0, null, !dbg !3330
  %8 = icmp ne i8* %1, null, !dbg !3331
  %9 = and i1 %7, %8, !dbg !3332
  br i1 %9, label %11, label %10, !dbg !3332

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3333
  unreachable, !dbg !3333

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3334
  store i8* %0, i8** %12, align 8, !dbg !3335, !tbaa !1894
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3336
  store i8* %1, i8** %13, align 8, !dbg !3337, !tbaa !1897
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3248, metadata !748) #11, !dbg !3323
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3338
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3339
  ret i8* %14, !dbg !3340
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3341 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3345, metadata !748), !dbg !3349
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3346, metadata !748), !dbg !3350
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3347, metadata !748), !dbg !3351
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3348, metadata !748), !dbg !3352
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3239, metadata !748) #11, !dbg !3353
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3244, metadata !748) #11, !dbg !3355
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3245, metadata !748) #11, !dbg !3356
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3246, metadata !748) #11, !dbg !3357
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3247, metadata !748) #11, !dbg !3358
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3359
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3359
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3360, !tbaa.struct !3078
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3248, metadata !748) #11, !dbg !3361
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1876, metadata !748) #11, !dbg !3362
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1877, metadata !748) #11, !dbg !3364
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1878, metadata !748) #11, !dbg !3365
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1876, metadata !748) #11, !dbg !3362
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1876, metadata !748) #11, !dbg !3362
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3366
  store i32 10, i32* %7, align 8, !dbg !3367, !tbaa !1808
  %8 = icmp ne i8* %0, null, !dbg !3368
  %9 = icmp ne i8* %1, null, !dbg !3369
  %10 = and i1 %8, %9, !dbg !3370
  br i1 %10, label %12, label %11, !dbg !3370

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3371
  unreachable, !dbg !3371

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3372
  store i8* %0, i8** %13, align 8, !dbg !3373, !tbaa !1894
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3374
  store i8* %1, i8** %14, align 8, !dbg !3375, !tbaa !1897
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3248, metadata !748) #11, !dbg !3361
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !3376
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3377
  ret i8* %15, !dbg !3378
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3379 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3383, metadata !748), !dbg !3386
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3384, metadata !748), !dbg !3387
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3385, metadata !748), !dbg !3388
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3389
  ret i8* %4, !dbg !3390
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3391 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3395, metadata !748), !dbg !3397
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3396, metadata !748), !dbg !3398
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3383, metadata !748) #11, !dbg !3399
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3384, metadata !748) #11, !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3385, metadata !748) #11, !dbg !3402
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3403
  ret i8* %3, !dbg !3404
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3405 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3409, metadata !748), !dbg !3411
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3410, metadata !748), !dbg !3412
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3383, metadata !748) #11, !dbg !3413
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3384, metadata !748) #11, !dbg !3415
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3385, metadata !748) #11, !dbg !3416
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3417
  ret i8* %3, !dbg !3418
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3419 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3423, metadata !748), !dbg !3424
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3409, metadata !748) #11, !dbg !3425
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3410, metadata !748) #11, !dbg !3427
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3383, metadata !748) #11, !dbg !3428
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3384, metadata !748) #11, !dbg !3430
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3385, metadata !748) #11, !dbg !3431
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3432
  ret i8* %2, !dbg !3433
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3434 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3479, metadata !748), !dbg !3485
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3480, metadata !748), !dbg !3486
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3481, metadata !748), !dbg !3487
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3482, metadata !748), !dbg !3488
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3483, metadata !748), !dbg !3489
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3484, metadata !748), !dbg !3490
  %7 = icmp eq i8* %1, null, !dbg !3491
  br i1 %7, label %10, label %8, !dbg !3493

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.105, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !3494
  br label %12, !dbg !3494

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.106, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !3495
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.107, i64 0, i64 0), i32 5) #11, !dbg !3496
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !3496
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.108, i64 0, i64 0), i32 5) #11, !dbg !3497
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !3497
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
  ], !dbg !3498

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3499
  unreachable, !dbg !3499

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.109, i64 0, i64 0), i32 5) #11, !dbg !3501
  %20 = load i8*, i8** %4, align 8, !dbg !3501, !tbaa !755
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !3501
  br label %146, !dbg !3502

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.110, i64 0, i64 0), i32 5) #11, !dbg !3503
  %24 = load i8*, i8** %4, align 8, !dbg !3503, !tbaa !755
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3503
  %26 = load i8*, i8** %25, align 8, !dbg !3503, !tbaa !755
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !3503
  br label %146, !dbg !3504

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.111, i64 0, i64 0), i32 5) #11, !dbg !3505
  %30 = load i8*, i8** %4, align 8, !dbg !3505, !tbaa !755
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3505
  %32 = load i8*, i8** %31, align 8, !dbg !3505, !tbaa !755
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3505
  %34 = load i8*, i8** %33, align 8, !dbg !3505, !tbaa !755
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !3505
  br label %146, !dbg !3506

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.112, i64 0, i64 0), i32 5) #11, !dbg !3507
  %38 = load i8*, i8** %4, align 8, !dbg !3507, !tbaa !755
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3507
  %40 = load i8*, i8** %39, align 8, !dbg !3507, !tbaa !755
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3507
  %42 = load i8*, i8** %41, align 8, !dbg !3507, !tbaa !755
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3507
  %44 = load i8*, i8** %43, align 8, !dbg !3507, !tbaa !755
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !3507
  br label %146, !dbg !3508

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.113, i64 0, i64 0), i32 5) #11, !dbg !3509
  %48 = load i8*, i8** %4, align 8, !dbg !3509, !tbaa !755
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3509
  %50 = load i8*, i8** %49, align 8, !dbg !3509, !tbaa !755
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3509
  %52 = load i8*, i8** %51, align 8, !dbg !3509, !tbaa !755
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3509
  %54 = load i8*, i8** %53, align 8, !dbg !3509, !tbaa !755
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3509
  %56 = load i8*, i8** %55, align 8, !dbg !3509, !tbaa !755
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3509
  br label %146, !dbg !3510

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.114, i64 0, i64 0), i32 5) #11, !dbg !3511
  %60 = load i8*, i8** %4, align 8, !dbg !3511, !tbaa !755
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3511
  %62 = load i8*, i8** %61, align 8, !dbg !3511, !tbaa !755
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3511
  %64 = load i8*, i8** %63, align 8, !dbg !3511, !tbaa !755
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3511
  %66 = load i8*, i8** %65, align 8, !dbg !3511, !tbaa !755
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3511
  %68 = load i8*, i8** %67, align 8, !dbg !3511, !tbaa !755
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3511
  %70 = load i8*, i8** %69, align 8, !dbg !3511, !tbaa !755
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3511
  br label %146, !dbg !3512

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.115, i64 0, i64 0), i32 5) #11, !dbg !3513
  %74 = load i8*, i8** %4, align 8, !dbg !3513, !tbaa !755
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3513
  %76 = load i8*, i8** %75, align 8, !dbg !3513, !tbaa !755
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3513
  %78 = load i8*, i8** %77, align 8, !dbg !3513, !tbaa !755
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3513
  %80 = load i8*, i8** %79, align 8, !dbg !3513, !tbaa !755
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3513
  %82 = load i8*, i8** %81, align 8, !dbg !3513, !tbaa !755
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3513
  %84 = load i8*, i8** %83, align 8, !dbg !3513, !tbaa !755
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3513
  %86 = load i8*, i8** %85, align 8, !dbg !3513, !tbaa !755
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3513
  br label %146, !dbg !3514

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.116, i64 0, i64 0), i32 5) #11, !dbg !3515
  %90 = load i8*, i8** %4, align 8, !dbg !3515, !tbaa !755
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3515
  %92 = load i8*, i8** %91, align 8, !dbg !3515, !tbaa !755
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3515
  %94 = load i8*, i8** %93, align 8, !dbg !3515, !tbaa !755
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3515
  %96 = load i8*, i8** %95, align 8, !dbg !3515, !tbaa !755
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3515
  %98 = load i8*, i8** %97, align 8, !dbg !3515, !tbaa !755
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3515
  %100 = load i8*, i8** %99, align 8, !dbg !3515, !tbaa !755
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3515
  %102 = load i8*, i8** %101, align 8, !dbg !3515, !tbaa !755
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3515
  %104 = load i8*, i8** %103, align 8, !dbg !3515, !tbaa !755
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3515
  br label %146, !dbg !3516

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.117, i64 0, i64 0), i32 5) #11, !dbg !3517
  %108 = load i8*, i8** %4, align 8, !dbg !3517, !tbaa !755
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3517
  %110 = load i8*, i8** %109, align 8, !dbg !3517, !tbaa !755
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3517
  %112 = load i8*, i8** %111, align 8, !dbg !3517, !tbaa !755
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3517
  %114 = load i8*, i8** %113, align 8, !dbg !3517, !tbaa !755
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3517
  %116 = load i8*, i8** %115, align 8, !dbg !3517, !tbaa !755
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3517
  %118 = load i8*, i8** %117, align 8, !dbg !3517, !tbaa !755
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3517
  %120 = load i8*, i8** %119, align 8, !dbg !3517, !tbaa !755
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3517
  %122 = load i8*, i8** %121, align 8, !dbg !3517, !tbaa !755
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3517
  %124 = load i8*, i8** %123, align 8, !dbg !3517, !tbaa !755
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3517
  br label %146, !dbg !3518

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.118, i64 0, i64 0), i32 5) #11, !dbg !3519
  %128 = load i8*, i8** %4, align 8, !dbg !3519, !tbaa !755
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3519
  %130 = load i8*, i8** %129, align 8, !dbg !3519, !tbaa !755
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3519
  %132 = load i8*, i8** %131, align 8, !dbg !3519, !tbaa !755
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3519
  %134 = load i8*, i8** %133, align 8, !dbg !3519, !tbaa !755
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3519
  %136 = load i8*, i8** %135, align 8, !dbg !3519, !tbaa !755
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3519
  %138 = load i8*, i8** %137, align 8, !dbg !3519, !tbaa !755
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3519
  %140 = load i8*, i8** %139, align 8, !dbg !3519, !tbaa !755
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3519
  %142 = load i8*, i8** %141, align 8, !dbg !3519, !tbaa !755
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3519
  %144 = load i8*, i8** %143, align 8, !dbg !3519, !tbaa !755
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3519
  br label %146, !dbg !3520

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3521
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3522 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3526, metadata !748), !dbg !3532
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3527, metadata !748), !dbg !3533
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3528, metadata !748), !dbg !3534
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3529, metadata !748), !dbg !3535
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3530, metadata !748), !dbg !3536
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3531, metadata !748), !dbg !3537
  br label %6, !dbg !3538

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3531, metadata !748), !dbg !3537
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3540
  %9 = load i8*, i8** %8, align 8, !dbg !3540, !tbaa !755
  %10 = icmp eq i8* %9, null, !dbg !3542
  %11 = add i64 %7, 1, !dbg !3543
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3531, metadata !748), !dbg !3537
  br i1 %10, label %12, label %6, !dbg !3542, !llvm.loop !3544

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3546
  ret void, !dbg !3547
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3548 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3559, metadata !748), !dbg !3567
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3560, metadata !748), !dbg !3568
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3561, metadata !748), !dbg !3569
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3562, metadata !748), !dbg !3570
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3563, metadata !748), !dbg !3571
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3572
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3572
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3565, metadata !748), !dbg !3573
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3564, metadata !748), !dbg !3574
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3564, metadata !748), !dbg !3574
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3564, metadata !748), !dbg !3574
  %11 = load i32, i32* %8, align 8, !dbg !3575
  %12 = icmp ult i32 %11, 41, !dbg !3575
  br i1 %12, label %13, label %18, !dbg !3575

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3575
  %15 = sext i32 %11 to i64, !dbg !3575
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3575
  %17 = add i32 %11, 8, !dbg !3575
  store i32 %17, i32* %8, align 8, !dbg !3575
  br label %21, !dbg !3575

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3575
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3575
  store i8* %20, i8** %10, align 8, !dbg !3575
  br label %21, !dbg !3575

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3575
  %25 = load i8*, i8** %24, align 8, !dbg !3575
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3578
  store i8* %25, i8** %26, align 16, !dbg !3579, !tbaa !755
  %27 = icmp eq i8* %25, null, !dbg !3580
  br i1 %27, label %30, label %28, !dbg !3581

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3564, metadata !748), !dbg !3574
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3564, metadata !748), !dbg !3574
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3564, metadata !748), !dbg !3574
  %29 = icmp ult i32 %22, 41, !dbg !3575
  br i1 %29, label %35, label %32, !dbg !3575

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3582
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3583
  ret void, !dbg !3583

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3575
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3575
  store i8* %34, i8** %10, align 8, !dbg !3575
  br label %40, !dbg !3575

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3575
  %37 = sext i32 %22 to i64, !dbg !3575
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3575
  %39 = add i32 %22, 8, !dbg !3575
  store i32 %39, i32* %8, align 8, !dbg !3575
  br label %40, !dbg !3575

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3575
  %44 = load i8*, i8** %43, align 8, !dbg !3575
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3578
  store i8* %44, i8** %45, align 8, !dbg !3579, !tbaa !755
  %46 = icmp eq i8* %44, null, !dbg !3580
  br i1 %46, label %30, label %47, !dbg !3581

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3564, metadata !748), !dbg !3574
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3564, metadata !748), !dbg !3574
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3564, metadata !748), !dbg !3574
  %48 = icmp ult i32 %41, 41, !dbg !3575
  br i1 %48, label %52, label %49, !dbg !3575

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3575
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3575
  store i8* %51, i8** %10, align 8, !dbg !3575
  br label %57, !dbg !3575

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3575
  %54 = sext i32 %41 to i64, !dbg !3575
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3575
  %56 = add i32 %41, 8, !dbg !3575
  store i32 %56, i32* %8, align 8, !dbg !3575
  br label %57, !dbg !3575

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3575
  %61 = load i8*, i8** %60, align 8, !dbg !3575
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3578
  store i8* %61, i8** %62, align 16, !dbg !3579, !tbaa !755
  %63 = icmp eq i8* %61, null, !dbg !3580
  br i1 %63, label %30, label %64, !dbg !3581

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3564, metadata !748), !dbg !3574
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3564, metadata !748), !dbg !3574
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3564, metadata !748), !dbg !3574
  %65 = icmp ult i32 %58, 41, !dbg !3575
  br i1 %65, label %69, label %66, !dbg !3575

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3575
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3575
  store i8* %68, i8** %10, align 8, !dbg !3575
  br label %74, !dbg !3575

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3575
  %71 = sext i32 %58 to i64, !dbg !3575
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3575
  %73 = add i32 %58, 8, !dbg !3575
  store i32 %73, i32* %8, align 8, !dbg !3575
  br label %74, !dbg !3575

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3575
  %78 = load i8*, i8** %77, align 8, !dbg !3575
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3578
  store i8* %78, i8** %79, align 8, !dbg !3579, !tbaa !755
  %80 = icmp eq i8* %78, null, !dbg !3580
  br i1 %80, label %30, label %81, !dbg !3581

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3564, metadata !748), !dbg !3574
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3564, metadata !748), !dbg !3574
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3564, metadata !748), !dbg !3574
  %82 = icmp ult i32 %75, 41, !dbg !3575
  br i1 %82, label %86, label %83, !dbg !3575

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3575
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3575
  store i8* %85, i8** %10, align 8, !dbg !3575
  br label %91, !dbg !3575

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3575
  %88 = sext i32 %75 to i64, !dbg !3575
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3575
  %90 = add i32 %75, 8, !dbg !3575
  store i32 %90, i32* %8, align 8, !dbg !3575
  br label %91, !dbg !3575

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3575
  %95 = load i8*, i8** %94, align 8, !dbg !3575
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3578
  store i8* %95, i8** %96, align 16, !dbg !3579, !tbaa !755
  %97 = icmp eq i8* %95, null, !dbg !3580
  br i1 %97, label %30, label %98, !dbg !3581

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3564, metadata !748), !dbg !3574
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3564, metadata !748), !dbg !3574
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3564, metadata !748), !dbg !3574
  %99 = icmp ult i32 %92, 41, !dbg !3575
  br i1 %99, label %103, label %100, !dbg !3575

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3575
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3575
  store i8* %102, i8** %10, align 8, !dbg !3575
  br label %108, !dbg !3575

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3575
  %105 = sext i32 %92 to i64, !dbg !3575
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3575
  %107 = add i32 %92, 8, !dbg !3575
  store i32 %107, i32* %8, align 8, !dbg !3575
  br label %108, !dbg !3575

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3575
  %111 = load i8*, i8** %110, align 8, !dbg !3575
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3578
  store i8* %111, i8** %112, align 8, !dbg !3579, !tbaa !755
  %113 = icmp eq i8* %111, null, !dbg !3580
  br i1 %113, label %30, label %114, !dbg !3581

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3564, metadata !748), !dbg !3574
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3564, metadata !748), !dbg !3574
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3564, metadata !748), !dbg !3574
  %115 = load i8*, i8** %10, align 8, !dbg !3575
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3575
  store i8* %116, i8** %10, align 8, !dbg !3575
  %117 = bitcast i8* %115 to i8**, !dbg !3575
  %118 = load i8*, i8** %117, align 8, !dbg !3575
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3578
  store i8* %118, i8** %119, align 16, !dbg !3579, !tbaa !755
  %120 = icmp eq i8* %118, null, !dbg !3580
  br i1 %120, label %30, label %121, !dbg !3581

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3564, metadata !748), !dbg !3574
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3564, metadata !748), !dbg !3574
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3564, metadata !748), !dbg !3574
  %122 = load i8*, i8** %10, align 8, !dbg !3575
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3575
  store i8* %123, i8** %10, align 8, !dbg !3575
  %124 = bitcast i8* %122 to i8**, !dbg !3575
  %125 = load i8*, i8** %124, align 8, !dbg !3575
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3578
  store i8* %125, i8** %126, align 8, !dbg !3579, !tbaa !755
  %127 = icmp eq i8* %125, null, !dbg !3580
  br i1 %127, label %30, label %128, !dbg !3581

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3564, metadata !748), !dbg !3574
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3564, metadata !748), !dbg !3574
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3564, metadata !748), !dbg !3574
  %129 = load i8*, i8** %10, align 8, !dbg !3575
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3575
  store i8* %130, i8** %10, align 8, !dbg !3575
  %131 = bitcast i8* %129 to i8**, !dbg !3575
  %132 = load i8*, i8** %131, align 8, !dbg !3575
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3578
  store i8* %132, i8** %133, align 16, !dbg !3579, !tbaa !755
  %134 = icmp eq i8* %132, null, !dbg !3580
  br i1 %134, label %30, label %135, !dbg !3581

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3564, metadata !748), !dbg !3574
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3564, metadata !748), !dbg !3574
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3564, metadata !748), !dbg !3574
  %136 = load i8*, i8** %10, align 8, !dbg !3575
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3575
  store i8* %137, i8** %10, align 8, !dbg !3575
  %138 = bitcast i8* %136 to i8**, !dbg !3575
  %139 = load i8*, i8** %138, align 8, !dbg !3575
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3578
  store i8* %139, i8** %140, align 8, !dbg !3579, !tbaa !755
  %141 = icmp eq i8* %139, null, !dbg !3580
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3564, metadata !748), !dbg !3574
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3564, metadata !748), !dbg !3574
  %142 = select i1 %141, i64 9, i64 10, !dbg !3581
  br label %30, !dbg !3581
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3584 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3588, metadata !748), !dbg !3599
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3589, metadata !748), !dbg !3600
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3590, metadata !748), !dbg !3601
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3591, metadata !748), !dbg !3602
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3603
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3603
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3592, metadata !748), !dbg !3604
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3605
  call void @llvm.va_start(i8* nonnull %6), !dbg !3605
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3606
  call void @llvm.va_end(i8* nonnull %6), !dbg !3607
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3608
  ret void, !dbg !3608
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3609 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.121, i64 0, i64 0), i32 5) #11, !dbg !3610
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.122, i64 0, i64 0)) #11, !dbg !3610
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.123, i64 0, i64 0), i32 5) #11, !dbg !3611
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.124, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.125, i64 0, i64 0)) #11, !dbg !3611
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #11, !dbg !3612
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3612, !tbaa !755
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !3612
  ret void, !dbg !3613
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3614 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3618, metadata !748), !dbg !3620
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3619, metadata !748), !dbg !3621
  %3 = udiv i64 9223372036854775807, %1, !dbg !3622
  %4 = icmp ult i64 %3, %0, !dbg !3622
  br i1 %4, label %5, label %6, !dbg !3624

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3625
  unreachable, !dbg !3625

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3626
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3627, metadata !748) #11, !dbg !3634
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !3636
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3633, metadata !748) #11, !dbg !3637
  %9 = icmp eq i8* %8, null, !dbg !3638
  %10 = icmp ne i64 %7, 0, !dbg !3640
  %11 = and i1 %10, %9, !dbg !3641
  br i1 %11, label %12, label %13, !dbg !3641

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3642
  unreachable, !dbg !3642

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3643
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3628 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3627, metadata !748), !dbg !3644
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3645
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3633, metadata !748), !dbg !3646
  %3 = icmp eq i8* %2, null, !dbg !3647
  %4 = icmp ne i64 %0, 0, !dbg !3648
  %5 = and i1 %4, %3, !dbg !3649
  br i1 %5, label %6, label %7, !dbg !3649

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3650
  unreachable, !dbg !3650

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3651
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3652 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3656, metadata !748), !dbg !3659
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3657, metadata !748), !dbg !3660
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3658, metadata !748), !dbg !3661
  %4 = udiv i64 9223372036854775807, %2, !dbg !3662
  %5 = icmp ult i64 %4, %1, !dbg !3662
  br i1 %5, label %6, label %7, !dbg !3664

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3665
  unreachable, !dbg !3665

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3666
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3667, metadata !748) #11, !dbg !3673
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3672, metadata !748) #11, !dbg !3675
  %9 = icmp eq i64 %8, 0, !dbg !3676
  %10 = icmp ne i8* %0, null, !dbg !3678
  %11 = and i1 %10, %9, !dbg !3679
  br i1 %11, label %12, label %13, !dbg !3679

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !3680
  br label %19, !dbg !3682

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !3683
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3667, metadata !748) #11, !dbg !3673
  %15 = icmp eq i8* %14, null, !dbg !3684
  %16 = icmp ne i64 %8, 0, !dbg !3686
  %17 = and i1 %16, %15, !dbg !3687
  br i1 %17, label %18, label %19, !dbg !3687

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3688
  unreachable, !dbg !3688

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3689
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3668 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3667, metadata !748), !dbg !3690
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3672, metadata !748), !dbg !3691
  %3 = icmp eq i64 %1, 0, !dbg !3692
  %4 = icmp ne i8* %0, null, !dbg !3693
  %5 = and i1 %4, %3, !dbg !3694
  br i1 %5, label %6, label %7, !dbg !3694

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !3695
  br label %13, !dbg !3696

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !3697
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3667, metadata !748), !dbg !3690
  %9 = icmp eq i8* %8, null, !dbg !3698
  %10 = icmp ne i64 %1, 0, !dbg !3699
  %11 = and i1 %10, %9, !dbg !3700
  br i1 %11, label %12, label %13, !dbg !3700

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3701
  unreachable, !dbg !3701

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3702
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !695 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !700, metadata !748), !dbg !3703
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !701, metadata !748), !dbg !3704
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !702, metadata !748), !dbg !3705
  %4 = load i64, i64* %1, align 8, !dbg !3706, !tbaa !961
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !703, metadata !748), !dbg !3707
  %5 = icmp eq i8* %0, null, !dbg !3708
  br i1 %5, label %6, label %13, !dbg !3710

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3711
  br i1 %7, label %8, label %17, !dbg !3714

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3715
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !703, metadata !748), !dbg !3707
  %10 = icmp ugt i64 %2, 128, !dbg !3717
  %11 = zext i1 %10 to i64, !dbg !3717
  %12 = add nuw nsw i64 %9, %11, !dbg !3718
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !703, metadata !748), !dbg !3707
  br label %17, !dbg !3719

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3720
  %15 = icmp ugt i64 %14, %4, !dbg !3723
  br i1 %15, label %20, label %16, !dbg !3724

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3725
  unreachable, !dbg !3725

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !703, metadata !748), !dbg !3707
  store i64 %18, i64* %1, align 8, !dbg !3726, !tbaa !961
  %19 = mul i64 %18, %2, !dbg !3727
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3667, metadata !748) #11, !dbg !3728
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3672, metadata !748) #11, !dbg !3730
  br label %27, !dbg !3731

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3732
  %22 = add i64 %4, 1, !dbg !3733
  %23 = add i64 %22, %21, !dbg !3734
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !703, metadata !748), !dbg !3707
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !703, metadata !748), !dbg !3707
  store i64 %23, i64* %1, align 8, !dbg !3726, !tbaa !961
  %24 = mul i64 %23, %2, !dbg !3727
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3667, metadata !748) #11, !dbg !3728
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3672, metadata !748) #11, !dbg !3730
  %25 = icmp eq i64 %24, 0, !dbg !3735
  br i1 %25, label %26, label %27, !dbg !3731

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11, !dbg !3736
  br label %34, !dbg !3737

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !3738
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3667, metadata !748) #11, !dbg !3728
  %30 = icmp eq i8* %29, null, !dbg !3739
  %31 = icmp ne i64 %28, 0, !dbg !3740
  %32 = and i1 %31, %30, !dbg !3741
  br i1 %32, label %33, label %34, !dbg !3741

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3742
  unreachable, !dbg !3742

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3743
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3744 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3746, metadata !748), !dbg !3747
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3627, metadata !748) #11, !dbg !3748
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3750
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3633, metadata !748) #11, !dbg !3751
  %3 = icmp eq i8* %2, null, !dbg !3752
  %4 = icmp ne i64 %0, 0, !dbg !3753
  %5 = and i1 %4, %3, !dbg !3754
  br i1 %5, label %6, label %7, !dbg !3754

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3755
  unreachable, !dbg !3755

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3756
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3757 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3761, metadata !748), !dbg !3763
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3762, metadata !748), !dbg !3764
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !700, metadata !748) #11, !dbg !3765
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !701, metadata !748) #11, !dbg !3767
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !702, metadata !748) #11, !dbg !3768
  %3 = load i64, i64* %1, align 8, !dbg !3769, !tbaa !961
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !703, metadata !748) #11, !dbg !3770
  %4 = icmp eq i8* %0, null, !dbg !3771
  br i1 %4, label %5, label %8, !dbg !3772

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3773
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !703, metadata !748) #11, !dbg !3770
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !703, metadata !748) #11, !dbg !3770
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3774
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !703, metadata !748) #11, !dbg !3770
  store i64 %7, i64* %1, align 8, !dbg !3775, !tbaa !961
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3667, metadata !748) #11, !dbg !3776
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3672, metadata !748) #11, !dbg !3778
  br label %17, !dbg !3779

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3780
  br i1 %9, label %11, label %10, !dbg !3781

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3782
  unreachable, !dbg !3782

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3783
  %13 = add i64 %3, 1, !dbg !3784
  %14 = add i64 %13, %12, !dbg !3785
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !703, metadata !748) #11, !dbg !3770
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !703, metadata !748) #11, !dbg !3770
  store i64 %14, i64* %1, align 8, !dbg !3775, !tbaa !961
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3667, metadata !748) #11, !dbg !3776
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3672, metadata !748) #11, !dbg !3778
  %15 = icmp eq i64 %14, 0, !dbg !3786
  br i1 %15, label %16, label %17, !dbg !3779

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11, !dbg !3787
  br label %24, !dbg !3788

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !3789
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3667, metadata !748) #11, !dbg !3776
  %20 = icmp eq i8* %19, null, !dbg !3790
  %21 = icmp ne i64 %18, 0, !dbg !3791
  %22 = and i1 %21, %20, !dbg !3792
  br i1 %22, label %23, label %24, !dbg !3792

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3793
  unreachable, !dbg !3793

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3794
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3795 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3797, metadata !748), !dbg !3798
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3627, metadata !748) #11, !dbg !3799
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3801
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3633, metadata !748) #11, !dbg !3802
  %3 = icmp eq i8* %2, null, !dbg !3803
  %4 = icmp ne i64 %0, 0, !dbg !3804
  %5 = and i1 %4, %3, !dbg !3805
  br i1 %5, label %6, label %7, !dbg !3805

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3806
  unreachable, !dbg !3806

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3807
  ret i8* %2, !dbg !3808
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3809 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3811, metadata !748), !dbg !3814
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3812, metadata !748), !dbg !3815
  %3 = udiv i64 9223372036854775807, %1, !dbg !3816
  %4 = icmp ult i64 %3, %0, !dbg !3816
  br i1 %4, label %8, label %5, !dbg !3818

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !3819
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3813, metadata !748), !dbg !3820
  %7 = icmp eq i8* %6, null, !dbg !3821
  br i1 %7, label %8, label %9, !dbg !3822

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3823
  unreachable, !dbg !3823

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3824
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3825 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3831, metadata !748), !dbg !3833
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3832, metadata !748), !dbg !3834
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3627, metadata !748) #11, !dbg !3835
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !3837
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3633, metadata !748) #11, !dbg !3838
  %4 = icmp eq i8* %3, null, !dbg !3839
  %5 = icmp ne i64 %1, 0, !dbg !3840
  %6 = and i1 %5, %4, !dbg !3841
  br i1 %6, label %7, label %8, !dbg !3841

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3842
  unreachable, !dbg !3842

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3843
  ret i8* %3, !dbg !3844
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3845 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3847, metadata !748), !dbg !3848
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3849
  %3 = add i64 %2, 1, !dbg !3850
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3831, metadata !748) #11, !dbg !3851
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3832, metadata !748) #11, !dbg !3853
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3627, metadata !748) #11, !dbg !3854
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !3856
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3633, metadata !748) #11, !dbg !3857
  %5 = icmp eq i8* %4, null, !dbg !3858
  %6 = icmp ne i64 %3, 0, !dbg !3859
  %7 = and i1 %6, %5, !dbg !3860
  br i1 %7, label %8, label %9, !dbg !3860

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3861
  unreachable, !dbg !3861

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !3862
  ret i8* %4, !dbg !3863
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3864 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3866, !tbaa !928
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.136, i64 0, i64 0), i32 5) #11, !dbg !3867
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.137, i64 0, i64 0), i8* %2) #11, !dbg !3868
  tail call void @abort() #15, !dbg !3869
  unreachable, !dbg !3869
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3870 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3873, metadata !748), !dbg !3879
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3874, metadata !748), !dbg !3880
  %3 = icmp eq i64 %0, 0, !dbg !3881
  %4 = icmp eq i64 %1, 0, !dbg !3882
  %5 = or i1 %3, %4, !dbg !3883
  br i1 %5, label %12, label %6, !dbg !3883

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3884
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3876, metadata !748), !dbg !3885
  %8 = udiv i64 %7, %1, !dbg !3886
  %9 = icmp eq i64 %8, %0, !dbg !3888
  br i1 %9, label %12, label %10, !dbg !3889

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3890
  store i32 12, i32* %11, align 4, !dbg !3892, !tbaa !928
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3873, metadata !748), !dbg !3879
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3874, metadata !748), !dbg !3880
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !3893
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3875, metadata !748), !dbg !3894
  br label %16, !dbg !3895

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3896
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3897 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3942, metadata !748), !dbg !3946
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3943, metadata !748), !dbg !3947
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3945, metadata !748), !dbg !3948
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3949
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3944, metadata !748), !dbg !3950
  %3 = icmp slt i32 %2, 0, !dbg !3951
  br i1 %3, label %4, label %6, !dbg !3953

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3954
  br label %24, !dbg !3955

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !3956
  %8 = icmp eq i32 %7, 0, !dbg !3956
  br i1 %8, label %13, label %9, !dbg !3958

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3959
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !3960
  %12 = icmp eq i64 %11, -1, !dbg !3961
  br i1 %12, label %16, label %13, !dbg !3962

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !3963
  %15 = icmp eq i32 %14, 0, !dbg !3963
  br i1 %15, label %16, label %18, !dbg !3964

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3943, metadata !748), !dbg !3947
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3965
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3945, metadata !748), !dbg !3948
  br label %24, !dbg !3966

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3967
  %20 = load i32, i32* %19, align 4, !dbg !3967, !tbaa !928
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3943, metadata !748), !dbg !3947
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3943, metadata !748), !dbg !3947
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3965
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3945, metadata !748), !dbg !3948
  %22 = icmp eq i32 %20, 0, !dbg !3968
  br i1 %22, label %24, label %23, !dbg !3966

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3970, !tbaa !928
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3945, metadata !748), !dbg !3948
  br label %24, !dbg !3972

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3973
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3974 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4019, metadata !748), !dbg !4020
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4021
  br i1 %2, label %6, label %3, !dbg !4023

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4024
  %5 = icmp eq i32 %4, 0, !dbg !4024
  br i1 %5, label %6, label %8, !dbg !4025

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4026
  br label %17, !dbg !4027

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4028, metadata !748) #11, !dbg !4033
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4035
  %10 = load i32, i32* %9, align 8, !dbg !4035, !tbaa !4037
  %11 = and i32 %10, 256, !dbg !4038
  %12 = icmp eq i32 %11, 0, !dbg !4038
  br i1 %12, label %15, label %13, !dbg !4039

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4040
  br label %15, !dbg !4040

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4041
  br label %17, !dbg !4042

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4043
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4044 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4090, metadata !748), !dbg !4096
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4091, metadata !748), !dbg !4097
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4092, metadata !748), !dbg !4098
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4099
  %5 = load i8*, i8** %4, align 8, !dbg !4099, !tbaa !4100
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4101
  %7 = load i8*, i8** %6, align 8, !dbg !4101, !tbaa !4102
  %8 = icmp eq i8* %5, %7, !dbg !4103
  br i1 %8, label %9, label %28, !dbg !4104

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4105
  %11 = load i8*, i8** %10, align 8, !dbg !4105, !tbaa !1013
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4106
  %13 = load i8*, i8** %12, align 8, !dbg !4106, !tbaa !4107
  %14 = icmp eq i8* %11, %13, !dbg !4108
  br i1 %14, label %15, label %28, !dbg !4109

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4110
  %17 = load i8*, i8** %16, align 8, !dbg !4110, !tbaa !4111
  %18 = icmp eq i8* %17, null, !dbg !4112
  br i1 %18, label %19, label %28, !dbg !4113

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4114
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !4115
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4093, metadata !748), !dbg !4116
  %22 = icmp eq i64 %21, -1, !dbg !4117
  br i1 %22, label %30, label %23, !dbg !4119

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4120
  %25 = load i32, i32* %24, align 8, !dbg !4121, !tbaa !4037
  %26 = and i32 %25, -17, !dbg !4121
  store i32 %26, i32* %24, align 8, !dbg !4121, !tbaa !4037
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4122
  store i64 %21, i64* %27, align 8, !dbg !4123, !tbaa !4124
  br label %30, !dbg !4125

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4126
  br label %30, !dbg !4127

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4128
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4129 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4146, metadata !748), !dbg !4155
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4147, metadata !748), !dbg !4156
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4148, metadata !748), !dbg !4157
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4149, metadata !748), !dbg !4158
  %6 = bitcast i32* %5 to i8*, !dbg !4159
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4159
  %7 = icmp eq i32* %0, null, !dbg !4160
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4146, metadata !748), !dbg !4155
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4162
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4146, metadata !748), !dbg !4155
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !4163
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4150, metadata !748), !dbg !4164
  %10 = icmp ugt i64 %9, -3, !dbg !4165
  %11 = icmp ne i64 %2, 0, !dbg !4166
  %12 = and i1 %11, %10, !dbg !4167
  br i1 %12, label %13, label %18, !dbg !4167

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !4168
  br i1 %14, label %18, label %15, !dbg !4169

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4170, !tbaa !1018
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4152, metadata !748), !dbg !4171
  %17 = zext i8 %16 to i32, !dbg !4172
  store i32 %17, i32* %8, align 4, !dbg !4173, !tbaa !928
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4174
  ret i64 %19, !dbg !4174
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @extract_trimmed_name(%struct.utmpx*) local_unnamed_addr #6 !dbg !4175 {
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %0, i64 0, metadata !4204, metadata !748), !dbg !4207
  %2 = tail call noalias i8* @xmalloc(i64 33) #11, !dbg !4208
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4206, metadata !748), !dbg !4209
  %3 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 4, i64 0, !dbg !4210
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4211, metadata !748) #11, !dbg !4216
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4214, metadata !748) #11, !dbg !4216
  tail call void @llvm.dbg.value(metadata i64 32, i64 0, metadata !4215, metadata !748) #11, !dbg !4216
  %4 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %2, i1 false, i1 true) #11, !dbg !4218
  %5 = tail call i8* @__strncpy_chk(i8* nonnull %2, i8* nonnull %3, i64 32, i64 %4) #11, !dbg !4219
  %6 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !4220
  store i8 0, i8* %6, align 1, !dbg !4221, !tbaa !1018
  %7 = tail call i64 @strlen(i8* nonnull %2) #14, !dbg !4222
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !4205, metadata !748), !dbg !4224
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !4205, metadata !748), !dbg !4224
  %8 = icmp sgt i64 %7, 0, !dbg !4225
  br i1 %8, label %9, label %18, !dbg !4227

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds i8, i8* %2, i64 %7, !dbg !4228
  br label %11, !dbg !4227

; <label>:11:                                     ; preds = %9, %16
  %12 = phi i8* [ %10, %9 ], [ %13, %16 ]
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !4205, metadata !748), !dbg !4224
  %13 = getelementptr inbounds i8, i8* %12, i64 -1, !dbg !4229
  %14 = load i8, i8* %13, align 1, !dbg !4229, !tbaa !1018
  %15 = icmp eq i8 %14, 32, !dbg !4230
  br i1 %15, label %16, label %18, !dbg !4231

; <label>:16:                                     ; preds = %11
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4205, metadata !748), !dbg !4224
  store i8 0, i8* %13, align 1, !dbg !4232, !tbaa !1018
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4205, metadata !748), !dbg !4224
  %17 = icmp ult i8* %2, %13, !dbg !4225
  br i1 %17, label %11, label %18, !dbg !4227, !llvm.loop !4233

; <label>:18:                                     ; preds = %11, %16, %1
  ret i8* %2, !dbg !4235
}

; Function Attrs: nounwind
declare i8* @__strncpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @read_utmp(i8*, i64* nocapture, %struct.utmpx** nocapture, i32) local_unnamed_addr #6 !dbg !4236 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4242, metadata !748), !dbg !4250
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4243, metadata !748), !dbg !4251
  tail call void @llvm.dbg.value(metadata %struct.utmpx** %2, i64 0, metadata !4244, metadata !748), !dbg !4252
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !4245, metadata !748), !dbg !4253
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4246, metadata !748), !dbg !4254
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4247, metadata !748), !dbg !4255
  tail call void @llvm.dbg.value(metadata %struct.utmpx* null, i64 0, metadata !4248, metadata !748), !dbg !4256
  %5 = tail call i32 @utmpxname(i8* %0) #11, !dbg !4257
  tail call void @setutxent() #11, !dbg !4258
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4246, metadata !748), !dbg !4254
  tail call void @llvm.dbg.value(metadata %struct.utmpx* null, i64 0, metadata !4248, metadata !748), !dbg !4256
  %6 = tail call %struct.utmpx* @getutxent() #11, !dbg !4259
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %6, i64 0, metadata !4249, metadata !748), !dbg !4260
  %7 = icmp eq %struct.utmpx* %6, null, !dbg !4261
  br i1 %7, label %77, label %8, !dbg !4262

; <label>:8:                                      ; preds = %4
  %9 = and i32 %3, 2
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %3, 1
  %12 = icmp eq i32 %11, 0
  br label %13, !dbg !4262

; <label>:13:                                     ; preds = %8, %70
  %14 = phi %struct.utmpx* [ %6, %8 ], [ %75, %70 ]
  %15 = phi i64 [ 0, %8 ], [ %74, %70 ]
  %16 = phi %struct.utmpx* [ null, %8 ], [ %73, %70 ]
  %17 = phi i8* [ null, %8 ], [ %72, %70 ]
  %18 = phi i64 [ 0, %8 ], [ %71, %70 ]
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %14, i64 0, metadata !4263, metadata !748) #11, !dbg !4270
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !4268, metadata !748) #11, !dbg !4273
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %16, i64 0, metadata !4248, metadata !748), !dbg !4256
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !4246, metadata !748), !dbg !4254
  %19 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 4, i64 0, !dbg !4274
  %20 = load i8, i8* %19, align 4, !dbg !4274, !tbaa !1018
  %21 = icmp eq i8 %20, 0, !dbg !4274
  br i1 %21, label %26, label %22, !dbg !4274

; <label>:22:                                     ; preds = %13
  %23 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 0, !dbg !4274
  %24 = load i16, i16* %23, align 4, !dbg !4274, !tbaa !1022
  %25 = icmp eq i16 %24, 7, !dbg !4274
  br label %26

; <label>:26:                                     ; preds = %22, %13
  %27 = phi i1 [ false, %13 ], [ %25, %22 ]
  %28 = or i1 %10, %27, !dbg !4275
  br i1 %28, label %29, label %70, !dbg !4275

; <label>:29:                                     ; preds = %26
  %30 = xor i1 %27, true, !dbg !4277
  %31 = or i1 %12, %30, !dbg !4277
  br i1 %31, label %43, label %32, !dbg !4277

; <label>:32:                                     ; preds = %29
  %33 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 1, !dbg !4279
  %34 = load i32, i32* %33, align 4, !dbg !4279, !tbaa !4280
  %35 = icmp sgt i32 %34, 0, !dbg !4281
  br i1 %35, label %36, label %43, !dbg !4282

; <label>:36:                                     ; preds = %32
  %37 = tail call i32 @kill(i32 %34, i32 0) #11, !dbg !4283
  %38 = icmp slt i32 %37, 0, !dbg !4284
  br i1 %38, label %39, label %43, !dbg !4285

; <label>:39:                                     ; preds = %36
  %40 = tail call i32* @__errno_location() #17, !dbg !4286
  %41 = load i32, i32* %40, align 4, !dbg !4286, !tbaa !928
  %42 = icmp eq i32 %41, 3, !dbg !4287
  br i1 %42, label %70, label %43, !dbg !4288

; <label>:43:                                     ; preds = %39, %36, %32, %29
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !4247, metadata !748), !dbg !4255
  %44 = icmp eq i64 %15, %18, !dbg !4289
  br i1 %44, label %45, label %62, !dbg !4292

; <label>:45:                                     ; preds = %43
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !730, metadata !748) #11, !dbg !4293
  tail call void @llvm.dbg.value(metadata i64 384, i64 0, metadata !732, metadata !748) #11, !dbg !4295
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !733, metadata !748) #11, !dbg !4296
  %46 = icmp eq i8* %17, null, !dbg !4297
  br i1 %46, label %47, label %50, !dbg !4299

; <label>:47:                                     ; preds = %45
  %48 = icmp eq i64 %15, 0, !dbg !4300
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !733, metadata !748) #11, !dbg !4296
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !733, metadata !748) #11, !dbg !4296
  %49 = select i1 %48, i64 1, i64 %15, !dbg !4303
  br label %57, !dbg !4303

; <label>:50:                                     ; preds = %45
  %51 = icmp ult i64 %15, 16012798675095096, !dbg !4304
  br i1 %51, label %53, label %52, !dbg !4307

; <label>:52:                                     ; preds = %50
  tail call void @xalloc_die() #15, !dbg !4308
  unreachable, !dbg !4308

; <label>:53:                                     ; preds = %50
  %54 = lshr i64 %15, 1, !dbg !4309
  %55 = add i64 %15, 1, !dbg !4310
  %56 = add i64 %55, %54, !dbg !4311
  tail call void @llvm.dbg.value(metadata i64 %56, i64 0, metadata !733, metadata !748) #11, !dbg !4296
  br label %57

; <label>:57:                                     ; preds = %47, %53
  %58 = phi i64 [ %56, %53 ], [ %49, %47 ]
  tail call void @llvm.dbg.value(metadata i64 %58, i64 0, metadata !733, metadata !748) #11, !dbg !4296
  %59 = mul i64 %58, 384, !dbg !4312
  %60 = tail call i8* @xrealloc(i8* %17, i64 %59) #11, !dbg !4313
  %61 = bitcast i8* %60 to %struct.utmpx*, !dbg !4314
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %61, i64 0, metadata !4248, metadata !748), !dbg !4256
  br label %62, !dbg !4315

; <label>:62:                                     ; preds = %57, %43
  %63 = phi i64 [ %58, %57 ], [ %18, %43 ]
  %64 = phi i8* [ %60, %57 ], [ %17, %43 ]
  %65 = phi %struct.utmpx* [ %61, %57 ], [ %16, %43 ]
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %65, i64 0, metadata !4248, metadata !748), !dbg !4256
  %66 = add i64 %15, 1, !dbg !4316
  tail call void @llvm.dbg.value(metadata i64 %66, i64 0, metadata !4246, metadata !748), !dbg !4254
  %67 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %65, i64 %15, !dbg !4317
  %68 = bitcast %struct.utmpx* %67 to i8*, !dbg !4318
  %69 = bitcast %struct.utmpx* %14 to i8*, !dbg !4318
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 384, i32 4, i1 false), !dbg !4318, !tbaa.struct !4319
  br label %70, !dbg !4320

; <label>:70:                                     ; preds = %39, %26, %62
  %71 = phi i64 [ %63, %62 ], [ %18, %26 ], [ %18, %39 ]
  %72 = phi i8* [ %64, %62 ], [ %17, %26 ], [ %17, %39 ]
  %73 = phi %struct.utmpx* [ %65, %62 ], [ %16, %26 ], [ %16, %39 ]
  %74 = phi i64 [ %66, %62 ], [ %15, %26 ], [ %15, %39 ]
  tail call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !4246, metadata !748), !dbg !4254
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %73, i64 0, metadata !4248, metadata !748), !dbg !4256
  tail call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !4246, metadata !748), !dbg !4254
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %73, i64 0, metadata !4248, metadata !748), !dbg !4256
  %75 = tail call %struct.utmpx* @getutxent() #11, !dbg !4259
  tail call void @llvm.dbg.value(metadata %struct.utmpx* %75, i64 0, metadata !4249, metadata !748), !dbg !4260
  %76 = icmp eq %struct.utmpx* %75, null, !dbg !4261
  br i1 %76, label %77, label %13, !dbg !4262, !llvm.loop !4321

; <label>:77:                                     ; preds = %70, %4
  %78 = phi i8* [ null, %4 ], [ %72, %70 ]
  %79 = phi i64 [ 0, %4 ], [ %74, %70 ]
  tail call void @endutxent() #11, !dbg !4323
  store i64 %79, i64* %1, align 8, !dbg !4324, !tbaa !961
  %80 = bitcast %struct.utmpx** %2 to i8**, !dbg !4325
  store i8* %78, i8** %80, align 8, !dbg !4325, !tbaa !755
  ret i32 0, !dbg !4326
}

declare i32 @utmpxname(i8*) local_unnamed_addr #3

declare void @setutxent() local_unnamed_addr #3

declare %struct.utmpx* @getutxent() local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @kill(i32, i32) local_unnamed_addr #2

declare void @endutxent() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4327 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4372, metadata !748), !dbg !4377
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !4378
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4379, metadata !748), !dbg !4382
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4384
  %4 = load i32, i32* %3, align 8, !dbg !4384, !tbaa !4037
  %5 = and i32 %4, 32, !dbg !4384
  %6 = icmp eq i32 %5, 0, !dbg !4385
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !4386
  %8 = icmp ne i32 %7, 0, !dbg !4387
  br i1 %6, label %9, label %19, !dbg !4388

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4390
  %11 = xor i1 %8, true, !dbg !4391
  %12 = or i1 %10, %11, !dbg !4391
  %13 = sext i1 %8 to i32, !dbg !4391
  br i1 %12, label %22, label %14, !dbg !4391

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4392
  %16 = load i32, i32* %15, align 4, !dbg !4392, !tbaa !928
  %17 = icmp ne i32 %16, 9, !dbg !4393
  %18 = sext i1 %17 to i32, !dbg !4394
  br label %22, !dbg !4394

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4395

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4397
  store i32 0, i32* %21, align 4, !dbg !4399, !tbaa !928
  br label %22, !dbg !4397

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4400
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4401 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4405, metadata !748), !dbg !4479
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4472, metadata !748), !dbg !4482
  %3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !4483
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4403, metadata !748), !dbg !4484
  %4 = icmp eq i8* %3, null, !dbg !4485
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.154, i64 0, i64 0), i8* %3, !dbg !4487
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4403, metadata !748), !dbg !4484
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4488, !tbaa !755
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4419, metadata !748) #11, !dbg !4489
  %7 = icmp eq i8* %6, null, !dbg !4490
  br i1 %7, label %8, label %123, !dbg !4491

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.155, i64 0, i64 0)) #11, !dbg !4492
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4420, metadata !748) #11, !dbg !4493
  %10 = icmp eq i8* %9, null, !dbg !4494
  br i1 %10, label %14, label %11, !dbg !4496

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4497, !tbaa !1018
  %13 = icmp eq i8 %12, 0, !dbg !4498
  br i1 %13, label %14, label %15, !dbg !4499

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4500

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.156, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4420, metadata !748) #11, !dbg !4493
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !4501
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4423, metadata !748) #11, !dbg !4502
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4425, metadata !748) #11, !dbg !4503
  %18 = icmp eq i64 %17, 0, !dbg !4504
  br i1 %18, label %24, label %19, !dbg !4505

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4506
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4506
  %22 = load i8, i8* %21, align 1, !dbg !4506, !tbaa !1018
  %23 = icmp ne i8 %22, 47, !dbg !4506
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4507
  %27 = add i64 %17, 14, !dbg !4508
  %28 = add i64 %27, %26, !dbg !4509
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !4510
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4422, metadata !748) #11, !dbg !4511
  %30 = icmp eq i8* %29, null, !dbg !4512
  br i1 %30, label %121, label %31, !dbg !4512

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !4513
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4516

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4517, !tbaa !1018
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4519
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.157, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4520
  br label %37, !dbg !4521

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4519
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.157, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4520
  br label %37, !dbg !4521

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !4522
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4427, metadata !748) #11, !dbg !4523
  %39 = icmp slt i32 %38, 0, !dbg !4524
  br i1 %39, label %119, label %40, !dbg !4525

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.158, i64 0, i64 0)) #11, !dbg !4526
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4428, metadata !748) #11, !dbg !4527
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4528
  br i1 %42, label %43, label %45, !dbg !4529

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #11, !dbg !4530
  br label %119, !dbg !4532

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4469, metadata !748) #11, !dbg !4533
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4470, metadata !748) #11, !dbg !4534
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4535

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !4536

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4469, metadata !748) #11, !dbg !4533
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4470, metadata !748) #11, !dbg !4534
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4536
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4537
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4538, metadata !748) #11, !dbg !4543
  %54 = load i8*, i8** %48, align 8, !dbg !4545, !tbaa !4102
  %55 = load i8*, i8** %49, align 8, !dbg !4545, !tbaa !4100
  %56 = icmp ult i8* %54, %55, !dbg !4545
  br i1 %56, label %59, label %57, !dbg !4545, !prof !1017

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4545
  br label %63, !dbg !4545

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !4545
  store i8* %60, i8** %48, align 8, !dbg !4545, !tbaa !4102
  %61 = load i8, i8* %54, align 1, !dbg !4545, !tbaa !1018
  %62 = zext i8 %61 to i32, !dbg !4545
  br label %63, !dbg !4545

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !4545
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !4471, metadata !748) #11, !dbg !4546
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !4547, !llvm.loop !4548

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !4553

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4538, metadata !748) #11, !dbg !4555
  %67 = load i8*, i8** %48, align 8, !dbg !4553, !tbaa !4102
  %68 = load i8*, i8** %49, align 8, !dbg !4553, !tbaa !4100
  %69 = icmp ult i8* %67, %68, !dbg !4553
  br i1 %69, label %72, label %70, !dbg !4553, !prof !1017

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4553
  br label %76, !dbg !4553

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !4553
  store i8* %73, i8** %48, align 8, !dbg !4553, !tbaa !4102
  %74 = load i8, i8* %67, align 1, !dbg !4553, !tbaa !1018
  %75 = zext i8 %74 to i32, !dbg !4553
  br label %76, !dbg !4553

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !4553
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !4471, metadata !748) #11, !dbg !4546
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !4556, !llvm.loop !4557

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #11, !dbg !4560
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.159, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #11, !dbg !4561
  %81 = icmp slt i32 %80, 2, !dbg !4563
  br i1 %81, label %112, label %82, !dbg !4564

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !4565
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4476, metadata !748) #11, !dbg !4566
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !4567
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !4477, metadata !748) #11, !dbg !4568
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4478, metadata !748) #11, !dbg !4569
  %85 = icmp eq i64 %51, 0, !dbg !4570
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !4572

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !4470, metadata !748) #11, !dbg !4534
  %90 = add i64 %87, 2, !dbg !4573
  %91 = call noalias i8* @malloc(i64 %90) #11, !dbg !4575
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !4469, metadata !748) #11, !dbg !4533
  br label %96, !dbg !4576

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !4577
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !4470, metadata !748) #11, !dbg !4534
  %94 = add i64 %93, 1, !dbg !4579
  %95 = call i8* @realloc(i8* %52, i64 %94) #11, !dbg !4580
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !4469, metadata !748) #11, !dbg !4533
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4469, metadata !748) #11, !dbg !4533
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4470, metadata !748) #11, !dbg !4534
  %99 = icmp eq i8* %98, null, !dbg !4581
  br i1 %99, label %100, label %102, !dbg !4583

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4470, metadata !748) #11, !dbg !4534
  call void @free(i8* %52) #11, !dbg !4584
  br label %112, !dbg !4586

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4587
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4587
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !4588
  %104 = xor i64 %84, -1, !dbg !4589
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4589
  %106 = xor i64 %83, -1, !dbg !4590
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !4590
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !4591, metadata !748) #11, !dbg !4595
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !4594, metadata !748) #11, !dbg !4595
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #11, !dbg !4597
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #11, !dbg !4598
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4591, metadata !748) #11, !dbg !4599
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4594, metadata !748) #11, !dbg !4599
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #11, !dbg !4601
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #11, !dbg !4602
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4469, metadata !748) #11, !dbg !4533
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4470, metadata !748) #11, !dbg !4534
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4587
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4587
  br label %50, !dbg !4603, !llvm.loop !4557

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4587
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4587
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !4604
  %116 = icmp eq i64 %113, 0, !dbg !4605
  br i1 %116, label %119, label %117, !dbg !4607

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !4608
  store i8 0, i8* %118, align 1, !dbg !4610, !tbaa !1018
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.154, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.154, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.154, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !4419, metadata !748) #11, !dbg !4489
  call void @free(i8* %29) #11, !dbg !4611
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.154, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !4419, metadata !748) #11, !dbg !4489
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !4612, !tbaa !755
  br label %123, !dbg !4613

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4419, metadata !748) #11, !dbg !4489
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4404, metadata !748), !dbg !4614
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4404, metadata !748), !dbg !4614
  %125 = load i8, i8* %124, align 1, !dbg !4615, !tbaa !1018
  %126 = icmp eq i8 %125, 0, !dbg !4617
  br i1 %126, label %152, label %127, !dbg !4618

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !4619

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !4404, metadata !748), !dbg !4614
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !4619
  %132 = icmp eq i32 %131, 0, !dbg !4621
  br i1 %132, label %139, label %133, !dbg !4622

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !4623
  br i1 %134, label %135, label %143, !dbg !4624

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !4625
  %137 = load i8, i8* %136, align 1, !dbg !4625, !tbaa !1018
  %138 = icmp eq i8 %137, 0, !dbg !4626
  br i1 %138, label %139, label %143, !dbg !4627

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !4628
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !4630
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !4631
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !4403, metadata !748), !dbg !4484
  br label %152, !dbg !4632

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !4633
  %145 = add i64 %144, 1, !dbg !4634
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !4635
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4404, metadata !748), !dbg !4614
  %147 = call i64 @strlen(i8* %146) #14, !dbg !4636
  %148 = add i64 %147, 1, !dbg !4637
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !4638
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4404, metadata !748), !dbg !4614
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4404, metadata !748), !dbg !4614
  %150 = load i8, i8* %149, align 1, !dbg !4615, !tbaa !1018
  %151 = icmp eq i8 %150, 0, !dbg !4617
  br i1 %151, label %152, label %128, !dbg !4618, !llvm.loop !4639

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4403, metadata !748), !dbg !4484
  %154 = load i8, i8* %153, align 1, !dbg !4641, !tbaa !1018
  %155 = icmp eq i8 %154, 0, !dbg !4643
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.160, i64 0, i64 0), i8* %153, !dbg !4644
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !4403, metadata !748), !dbg !4484
  ret i8* %156, !dbg !4645
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

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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

!llvm.dbg.cu = !{!2, !198, !204, !247, !255, !674, !676, !262, !269, !682, !319, !690, !707, !709, !711, !713, !715, !717, !720, !735, !328}
!llvm.ident = !{!737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737}
!llvm.module.flags = !{!738, !739, !740, !741, !742}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 75, type: !184, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !38, globals: !48)
!3 = !DIFile(filename: "src/pinky.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !19, !23}
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 148, size: 32, elements: !21)
!20 = !DIFile(filename: "./lib/readutmp.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!21 = !{!22}
!22 = !DIEnumerator(name: "UT_USER_SIZE", value: 32)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !24, line: 46, size: 32, elements: !25)
!24 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37}
!26 = !DIEnumerator(name: "_ISupper", value: 256)
!27 = !DIEnumerator(name: "_ISlower", value: 512)
!28 = !DIEnumerator(name: "_ISalpha", value: 1024)
!29 = !DIEnumerator(name: "_ISdigit", value: 2048)
!30 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!31 = !DIEnumerator(name: "_ISspace", value: 8192)
!32 = !DIEnumerator(name: "_ISprint", value: 16384)
!33 = !DIEnumerator(name: "_ISgraph", value: 32768)
!34 = !DIEnumerator(name: "_ISblank", value: 1)
!35 = !DIEnumerator(name: "_IScntrl", value: 2)
!36 = !DIEnumerator(name: "_ISpunct", value: 4)
!37 = !DIEnumerator(name: "_ISalnum", value: 8)
!38 = !{!39, !41, !42, !43, !44, !47}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!43 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 62, baseType: !46)
!45 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!46 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!47 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!48 = !{!49, !0, !71, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !111, !116}
!49 = !DIGlobalVariableExpression(var: !50)
!50 = distinct !DIGlobalVariable(name: "infomap", scope: !51, file: !52, line: 632, type: !68, isLocal: true, isDefinition: true)
!51 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !52, file: !52, line: 630, type: !53, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !57)
!52 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!53 = !DISubroutineType(types: !54)
!54 = !{null, !55}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!57 = !{!58, !59, !60, !67}
!58 = !DILocalVariable(name: "program", arg: 1, scope: !51, file: !52, line: 630, type: !55)
!59 = !DILocalVariable(name: "node", scope: !51, file: !52, line: 642, type: !55)
!60 = !DILocalVariable(name: "map_prog", scope: !51, file: !52, line: 643, type: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !51, file: !52, line: 632, size: 128, elements: !64)
!64 = !{!65, !66}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !63, file: !52, line: 632, baseType: !55, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !63, file: !52, line: 632, baseType: !55, size: 64, offset: 64)
!67 = !DILocalVariable(name: "lc_messages", scope: !51, file: !52, line: 655, type: !55)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 896, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 7)
!71 = !DIGlobalVariableExpression(var: !72)
!72 = distinct !DIGlobalVariable(name: "do_short_format", scope: !2, file: !3, line: 63, type: !73, isLocal: true, isDefinition: true)
!73 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!74 = !DIGlobalVariableExpression(var: !75)
!75 = distinct !DIGlobalVariable(name: "include_heading", scope: !2, file: !3, line: 47, type: !73, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77)
!77 = distinct !DIGlobalVariable(name: "include_fullname", scope: !2, file: !3, line: 50, type: !73, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79)
!79 = distinct !DIGlobalVariable(name: "include_where", scope: !2, file: !3, line: 67, type: !73, isLocal: true, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81)
!81 = distinct !DIGlobalVariable(name: "include_idle", scope: !2, file: !3, line: 44, type: !73, isLocal: true, isDefinition: true)
!82 = !DIGlobalVariableExpression(var: !83)
!83 = distinct !DIGlobalVariable(name: "include_project", scope: !2, file: !3, line: 53, type: !73, isLocal: true, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !85)
!85 = distinct !DIGlobalVariable(name: "include_plan", scope: !2, file: !3, line: 56, type: !73, isLocal: true, isDefinition: true)
!86 = !DIGlobalVariableExpression(var: !87)
!87 = distinct !DIGlobalVariable(name: "include_home_and_shell", scope: !2, file: !3, line: 60, type: !73, isLocal: true, isDefinition: true)
!88 = !DIGlobalVariableExpression(var: !89)
!89 = distinct !DIGlobalVariable(name: "time_format", scope: !2, file: !3, line: 72, type: !55, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91)
!91 = distinct !DIGlobalVariable(name: "time_format_width", scope: !2, file: !3, line: 73, type: !43, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93)
!93 = distinct !DIGlobalVariable(name: "now", scope: !94, file: !3, line: 149, type: !97, isLocal: true, isDefinition: true)
!94 = distinct !DISubprogram(name: "idle_string", scope: !3, file: !3, line: 147, type: !95, isLocal: true, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !102)
!95 = !DISubroutineType(types: !96)
!96 = !{!55, !97}
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !98, line: 7, baseType: !99)
!98 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !100, line: 148, baseType: !101)
!100 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!101 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!102 = !{!103, !104, !105, !108, !109}
!103 = !DILocalVariable(name: "when", arg: 1, scope: !94, file: !3, line: 147, type: !97)
!104 = !DILocalVariable(name: "seconds_idle", scope: !94, file: !3, line: 151, type: !97)
!105 = !DILocalVariable(name: "hours", scope: !106, file: !3, line: 161, type: !43)
!106 = distinct !DILexicalBlock(scope: !107, file: !3, line: 160, column: 5)
!107 = distinct !DILexicalBlock(scope: !94, file: !3, line: 159, column: 7)
!108 = !DILocalVariable(name: "minutes", scope: !106, file: !3, line: 162, type: !43)
!109 = !DILocalVariable(name: "days", scope: !110, file: !3, line: 167, type: !46)
!110 = distinct !DILexicalBlock(scope: !107, file: !3, line: 166, column: 5)
!111 = !DIGlobalVariableExpression(var: !112)
!112 = distinct !DIGlobalVariable(name: "buf", scope: !94, file: !3, line: 150, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 176, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 22)
!116 = !DIGlobalVariableExpression(var: !117)
!117 = distinct !DIGlobalVariable(name: "buf", scope: !118, file: !3, line: 177, type: !181, isLocal: true, isDefinition: true)
!118 = distinct !DISubprogram(name: "time_string", scope: !3, file: !3, line: 175, type: !119, isLocal: true, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !162)
!119 = !DISubroutineType(types: !120)
!120 = !{!55, !121}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !20, line: 146, baseType: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !125, line: 55, size: 3072, elements: !126)
!125 = !DIFile(filename: "/usr/include/bits/utmpx.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!126 = !{!127, !129, !131, !135, !139, !140, !144, !149, !151, !156, !158}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !124, file: !125, line: 57, baseType: !128, size: 16)
!128 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !124, file: !125, line: 58, baseType: !130, size: 32, offset: 32)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !100, line: 142, baseType: !43)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !124, file: !125, line: 59, baseType: !132, size: 256, offset: 64)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 256, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !124, file: !125, line: 60, baseType: !136, size: 32, offset: 320)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 32, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 4)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !124, file: !125, line: 61, baseType: !132, size: 256, offset: 352)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !124, file: !125, line: 62, baseType: !141, size: 2048, offset: 608)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 2048, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 256)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !124, file: !125, line: 63, baseType: !145, size: 32, offset: 2656)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !125, line: 42, size: 32, elements: !146)
!146 = !{!147, !148}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !145, file: !125, line: 45, baseType: !128, size: 16)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !145, file: !125, line: 46, baseType: !128, size: 16, offset: 16)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !124, file: !125, line: 70, baseType: !150, size: 32, offset: 2688)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !100, line: 40, baseType: !43)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !124, file: !125, line: 75, baseType: !152, size: 64, offset: 2720)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !124, file: !125, line: 71, size: 64, elements: !153)
!153 = !{!154, !155}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !152, file: !125, line: 73, baseType: !150, size: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !152, file: !125, line: 74, baseType: !150, size: 32, offset: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !124, file: !125, line: 80, baseType: !157, size: 128, offset: 2784)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 128, elements: !137)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !124, file: !125, line: 81, baseType: !159, size: 160, offset: 2912)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 160, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 20)
!162 = !{!163, !164, !165}
!163 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !118, file: !3, line: 175, type: !121)
!164 = !DILocalVariable(name: "t", scope: !118, file: !3, line: 185, type: !97)
!165 = !DILocalVariable(name: "tmp", scope: !118, file: !3, line: 186, type: !166)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !168, line: 7, size: 448, elements: !169)
!168 = !DIFile(filename: "/usr/include/bits/types/struct_tm.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!169 = !{!170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !167, file: !168, line: 9, baseType: !43, size: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !167, file: !168, line: 10, baseType: !43, size: 32, offset: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !167, file: !168, line: 11, baseType: !43, size: 32, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !167, file: !168, line: 12, baseType: !43, size: 32, offset: 96)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !167, file: !168, line: 13, baseType: !43, size: 32, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !167, file: !168, line: 14, baseType: !43, size: 32, offset: 160)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !167, file: !168, line: 15, baseType: !43, size: 32, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !167, file: !168, line: 16, baseType: !43, size: 32, offset: 224)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !167, file: !168, line: 17, baseType: !43, size: 32, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !167, file: !168, line: 20, baseType: !101, size: 64, offset: 320)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !167, file: !168, line: 21, baseType: !55, size: 64, offset: 384)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 264, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 33)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 768, elements: !194)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !187, line: 50, size: 256, elements: !188)
!187 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!188 = !{!189, !190, !191, !193}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !186, file: !187, line: 52, baseType: !55, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !186, file: !187, line: 55, baseType: !43, size: 32, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !186, file: !187, line: 56, baseType: !192, size: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !186, file: !187, line: 57, baseType: !43, size: 32, offset: 192)
!194 = !{!195}
!195 = !DISubrange(count: 3)
!196 = !DIGlobalVariableExpression(var: !197)
!197 = distinct !DIGlobalVariable(name: "Version", scope: !198, file: !199, line: 2, type: !55, isLocal: false, isDefinition: true)
!198 = distinct !DICompileUnit(language: DW_LANG_C99, file: !199, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !200, globals: !201)
!199 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!200 = !{}
!201 = !{!196}
!202 = !DIGlobalVariableExpression(var: !203)
!203 = distinct !DIGlobalVariable(name: "last_cherror", scope: !204, file: !210, line: 28, type: !43, isLocal: true, isDefinition: true)
!204 = distinct !DICompileUnit(language: DW_LANG_C99, file: !205, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !200, globals: !206)
!205 = !DIFile(filename: "./lib/canon-host.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!206 = !{!207, !202}
!207 = !DIGlobalVariableExpression(var: !208)
!208 = distinct !DIGlobalVariable(name: "hints", scope: !209, file: !210, line: 63, type: !219, isLocal: true, isDefinition: true)
!209 = distinct !DISubprogram(name: "canon_host_r", scope: !210, file: !210, line: 60, type: !211, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !204, variables: !213)
!210 = !DIFile(filename: "lib/canon-host.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!211 = !DISubroutineType(types: !212)
!212 = !{!39, !55, !192}
!213 = !{!214, !215, !216, !217, !244}
!214 = !DILocalVariable(name: "host", arg: 1, scope: !209, file: !210, line: 60, type: !55)
!215 = !DILocalVariable(name: "cherror", arg: 2, scope: !209, file: !210, line: 60, type: !192)
!216 = !DILocalVariable(name: "retval", scope: !209, file: !210, line: 62, type: !39)
!217 = !DILocalVariable(name: "res", scope: !209, file: !210, line: 64, type: !218)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !220, line: 565, size: 384, elements: !221)
!220 = !DIFile(filename: "/usr/include/netdb.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!221 = !{!222, !223, !224, !225, !226, !231, !242, !243}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "ai_flags", scope: !219, file: !220, line: 567, baseType: !43, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "ai_family", scope: !219, file: !220, line: 568, baseType: !43, size: 32, offset: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "ai_socktype", scope: !219, file: !220, line: 569, baseType: !43, size: 32, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "ai_protocol", scope: !219, file: !220, line: 570, baseType: !43, size: 32, offset: 96)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addrlen", scope: !219, file: !220, line: 571, baseType: !227, size: 32, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !228, line: 33, baseType: !229)
!228 = !DIFile(filename: "/usr/include/bits/socket.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !100, line: 198, baseType: !230)
!230 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addr", scope: !219, file: !220, line: 572, baseType: !232, size: 64, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !228, line: 174, size: 128, elements: !234)
!234 = !{!235, !238}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !233, file: !228, line: 176, baseType: !236, size: 16)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !237, line: 28, baseType: !47)
!237 = !DIFile(filename: "/usr/include/bits/sockaddr.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!238 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !233, file: !228, line: 177, baseType: !239, size: 112, offset: 16)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 112, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 14)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "ai_canonname", scope: !219, file: !220, line: 573, baseType: !39, size: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "ai_next", scope: !219, file: !220, line: 574, baseType: !218, size: 64, offset: 320)
!244 = !DILocalVariable(name: "status", scope: !209, file: !210, line: 65, type: !43)
!245 = !DIGlobalVariableExpression(var: !246)
!246 = distinct !DIGlobalVariable(name: "file_name", scope: !247, file: !252, line: 36, type: !55, isLocal: true, isDefinition: true)
!247 = distinct !DICompileUnit(language: DW_LANG_C99, file: !248, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !200, globals: !249)
!248 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!249 = !{!245, !250}
!250 = !DIGlobalVariableExpression(var: !251)
!251 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !247, file: !252, line: 46, type: !73, isLocal: true, isDefinition: true)
!252 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!253 = !DIGlobalVariableExpression(var: !254)
!254 = distinct !DIGlobalVariable(name: "exit_failure", scope: !255, file: !258, line: 24, type: !259, isLocal: false, isDefinition: true)
!255 = distinct !DICompileUnit(language: DW_LANG_C99, file: !256, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !200, globals: !257)
!256 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!257 = !{!253}
!258 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!259 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !43)
!260 = !DIGlobalVariableExpression(var: !261)
!261 = distinct !DIGlobalVariable(name: "program_name", scope: !262, file: !266, line: 33, type: !55, isLocal: false, isDefinition: true)
!262 = distinct !DICompileUnit(language: DW_LANG_C99, file: !263, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !200, retainedTypes: !264, globals: !265)
!263 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!264 = !{!41, !39}
!265 = !{!260}
!266 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!267 = !DIGlobalVariableExpression(var: !268)
!268 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !269, file: !281, line: 77, type: !313, isLocal: false, isDefinition: true)
!269 = distinct !DICompileUnit(language: DW_LANG_C99, file: !270, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !271, retainedTypes: !277, globals: !278)
!270 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!271 = !{!5, !272, !23}
!272 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !273)
!273 = !{!274, !275, !276}
!274 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!275 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!276 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!277 = !{!43, !47, !44, !39}
!278 = !{!267, !279, !286, !298, !300, !302, !309, !311}
!279 = !DIGlobalVariableExpression(var: !280)
!280 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !269, file: !281, line: 93, type: !282, isLocal: false, isDefinition: true)
!281 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 320, elements: !284)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!284 = !{!285}
!285 = !DISubrange(count: 10)
!286 = !DIGlobalVariableExpression(var: !287)
!287 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !269, file: !281, line: 1043, type: !288, isLocal: false, isDefinition: true)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !281, line: 57, size: 448, elements: !289)
!289 = !{!290, !291, !292, !296, !297}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !288, file: !281, line: 60, baseType: !5, size: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !288, file: !281, line: 63, baseType: !43, size: 32, offset: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !288, file: !281, line: 67, baseType: !293, size: 256, offset: 64)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 256, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 8)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !288, file: !281, line: 70, baseType: !55, size: 64, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !288, file: !281, line: 73, baseType: !55, size: 64, offset: 384)
!298 = !DIGlobalVariableExpression(var: !299)
!299 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !269, file: !281, line: 108, type: !288, isLocal: true, isDefinition: true)
!300 = !DIGlobalVariableExpression(var: !301)
!301 = distinct !DIGlobalVariable(name: "slot0", scope: !269, file: !281, line: 834, type: !141, isLocal: true, isDefinition: true)
!302 = !DIGlobalVariableExpression(var: !303)
!303 = distinct !DIGlobalVariable(name: "slotvec", scope: !269, file: !281, line: 837, type: !304, isLocal: true, isDefinition: true)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !281, line: 826, size: 128, elements: !306)
!306 = !{!307, !308}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !305, file: !281, line: 828, baseType: !44, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !305, file: !281, line: 829, baseType: !39, size: 64, offset: 64)
!309 = !DIGlobalVariableExpression(var: !310)
!310 = distinct !DIGlobalVariable(name: "nslots", scope: !269, file: !281, line: 835, type: !43, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312)
!312 = distinct !DIGlobalVariable(name: "slotvec0", scope: !269, file: !281, line: 836, type: !305, isLocal: true, isDefinition: true)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 704, elements: !315)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!315 = !{!316}
!316 = !DISubrange(count: 11)
!317 = !DIGlobalVariableExpression(var: !318)
!318 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !319, file: !322, line: 26, type: !323, isLocal: false, isDefinition: true)
!319 = distinct !DICompileUnit(language: DW_LANG_C99, file: !320, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !200, globals: !321)
!320 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!321 = !{!317}
!322 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 376, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 47)
!326 = !DIGlobalVariableExpression(var: !327)
!327 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !328, file: !672, line: 120, type: !673, isLocal: true, isDefinition: true)
!328 = distinct !DICompileUnit(language: DW_LANG_C99, file: !329, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !330, retainedTypes: !669, globals: !671)
!329 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!330 = !{!331}
!331 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !332, line: 41, size: 32, elements: !333)
!332 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!333 = !{!334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668}
!334 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!335 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!336 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!337 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!338 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!339 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!340 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!341 = !DIEnumerator(name: "DAY_1", value: 131079)
!342 = !DIEnumerator(name: "DAY_2", value: 131080)
!343 = !DIEnumerator(name: "DAY_3", value: 131081)
!344 = !DIEnumerator(name: "DAY_4", value: 131082)
!345 = !DIEnumerator(name: "DAY_5", value: 131083)
!346 = !DIEnumerator(name: "DAY_6", value: 131084)
!347 = !DIEnumerator(name: "DAY_7", value: 131085)
!348 = !DIEnumerator(name: "ABMON_1", value: 131086)
!349 = !DIEnumerator(name: "ABMON_2", value: 131087)
!350 = !DIEnumerator(name: "ABMON_3", value: 131088)
!351 = !DIEnumerator(name: "ABMON_4", value: 131089)
!352 = !DIEnumerator(name: "ABMON_5", value: 131090)
!353 = !DIEnumerator(name: "ABMON_6", value: 131091)
!354 = !DIEnumerator(name: "ABMON_7", value: 131092)
!355 = !DIEnumerator(name: "ABMON_8", value: 131093)
!356 = !DIEnumerator(name: "ABMON_9", value: 131094)
!357 = !DIEnumerator(name: "ABMON_10", value: 131095)
!358 = !DIEnumerator(name: "ABMON_11", value: 131096)
!359 = !DIEnumerator(name: "ABMON_12", value: 131097)
!360 = !DIEnumerator(name: "MON_1", value: 131098)
!361 = !DIEnumerator(name: "MON_2", value: 131099)
!362 = !DIEnumerator(name: "MON_3", value: 131100)
!363 = !DIEnumerator(name: "MON_4", value: 131101)
!364 = !DIEnumerator(name: "MON_5", value: 131102)
!365 = !DIEnumerator(name: "MON_6", value: 131103)
!366 = !DIEnumerator(name: "MON_7", value: 131104)
!367 = !DIEnumerator(name: "MON_8", value: 131105)
!368 = !DIEnumerator(name: "MON_9", value: 131106)
!369 = !DIEnumerator(name: "MON_10", value: 131107)
!370 = !DIEnumerator(name: "MON_11", value: 131108)
!371 = !DIEnumerator(name: "MON_12", value: 131109)
!372 = !DIEnumerator(name: "AM_STR", value: 131110)
!373 = !DIEnumerator(name: "PM_STR", value: 131111)
!374 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!375 = !DIEnumerator(name: "D_FMT", value: 131113)
!376 = !DIEnumerator(name: "T_FMT", value: 131114)
!377 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!378 = !DIEnumerator(name: "ERA", value: 131116)
!379 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!380 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!381 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!382 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!383 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!384 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!385 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!386 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!387 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!388 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!389 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!390 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!391 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!392 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!393 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!394 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!395 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!396 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!397 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!398 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!399 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!400 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!401 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!402 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!403 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!404 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!405 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!406 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!407 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!408 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!409 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!410 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!411 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!412 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!413 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!414 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!415 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!416 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!417 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!418 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!419 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!420 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!421 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!422 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!423 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!424 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!425 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!426 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!427 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!428 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!429 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!430 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!431 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!432 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!433 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!434 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!435 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!436 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!437 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!438 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!439 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!440 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!441 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!442 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!443 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!444 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!445 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!446 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!447 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!448 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!449 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!450 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!451 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!452 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!453 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!454 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!455 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!456 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!457 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!458 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!459 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!460 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!461 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!462 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!463 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!464 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!465 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!466 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!467 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!468 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!469 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!470 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!471 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!472 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!473 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!474 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!475 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!476 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!477 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!478 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!479 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!480 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!481 = !DIEnumerator(name: "CODESET", value: 14)
!482 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!483 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!484 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!485 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!486 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!487 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!488 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!489 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!490 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!491 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!492 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!493 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!494 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!495 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!496 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!497 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!498 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!499 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!500 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!501 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!502 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!503 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!504 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!505 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!506 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!507 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!508 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!509 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!510 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!511 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!512 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!513 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!514 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!515 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!516 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!517 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!518 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!519 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!520 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!521 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!522 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!523 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!524 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!525 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!526 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!527 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!528 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!529 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!530 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!531 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!532 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!533 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!534 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!535 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!536 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!537 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!538 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!539 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!540 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!541 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!542 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!543 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!544 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!545 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!546 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!547 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!548 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!549 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!550 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!551 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!552 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!553 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!554 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!555 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!556 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!557 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!558 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!559 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!560 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!561 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!562 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!563 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!564 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!565 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!566 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!567 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!568 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!569 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!570 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!571 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!572 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!573 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!574 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!575 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!576 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!577 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!578 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!579 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!580 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!581 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!582 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!583 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!584 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!585 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!586 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!587 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!588 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!589 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!590 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!591 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!592 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!593 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!594 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!595 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!596 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!597 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!598 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!599 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!600 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!601 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!602 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!603 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!604 = !DIEnumerator(name: "THOUSEP", value: 65537)
!605 = !DIEnumerator(name: "__GROUPING", value: 65538)
!606 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!607 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!608 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!609 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!610 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!611 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!612 = !DIEnumerator(name: "__YESSTR", value: 327682)
!613 = !DIEnumerator(name: "__NOSTR", value: 327683)
!614 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!615 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!616 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!617 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!618 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!619 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!620 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!621 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!622 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!623 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!624 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!625 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!626 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!627 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!628 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!629 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!630 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!631 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!632 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!633 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!634 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!635 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!636 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!637 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!638 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!639 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!640 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!641 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!642 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!643 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!644 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!645 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!646 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!647 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!648 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!649 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!650 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!651 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!652 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!653 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!654 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!655 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!656 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!657 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!658 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!659 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!660 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!661 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!662 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!663 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!664 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!665 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!666 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!667 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!668 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!669 = !{!41, !39, !670}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!671 = !{!326}
!672 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!673 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !55)
!674 = distinct !DICompileUnit(language: DW_LANG_C99, file: !675, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !200)
!675 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!676 = distinct !DICompileUnit(language: DW_LANG_C99, file: !677, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !200, retainedTypes: !678)
!677 = !DIFile(filename: "./lib/imaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!678 = !{!679}
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !680, line: 111, baseType: !681)
!680 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !100, line: 61, baseType: !101)
!682 = distinct !DICompileUnit(language: DW_LANG_C99, file: !683, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !684, retainedTypes: !689)
!683 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!684 = !{!685}
!685 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !686, line: 41, size: 32, elements: !687)
!686 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!687 = !{!688}
!688 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!689 = !{!41}
!690 = distinct !DICompileUnit(language: DW_LANG_C99, file: !691, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !692, retainedTypes: !706)
!691 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!692 = !{!693}
!693 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !695, file: !694, line: 192, size: 32, elements: !704)
!694 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!695 = distinct !DISubprogram(name: "x2nrealloc", scope: !694, file: !694, line: 180, type: !696, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !690, variables: !699)
!696 = !DISubroutineType(types: !697)
!697 = !{!41, !41, !698, !44}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!699 = !{!700, !701, !702, !703}
!700 = !DILocalVariable(name: "p", arg: 1, scope: !695, file: !694, line: 180, type: !41)
!701 = !DILocalVariable(name: "pn", arg: 2, scope: !695, file: !694, line: 180, type: !698)
!702 = !DILocalVariable(name: "s", arg: 3, scope: !695, file: !694, line: 180, type: !44)
!703 = !DILocalVariable(name: "n", scope: !695, file: !694, line: 182, type: !44)
!704 = !{!705}
!705 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!706 = !{!44, !39, !41}
!707 = distinct !DICompileUnit(language: DW_LANG_C99, file: !708, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !200)
!708 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!709 = distinct !DICompileUnit(language: DW_LANG_C99, file: !710, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !200, retainedTypes: !689)
!710 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!711 = distinct !DICompileUnit(language: DW_LANG_C99, file: !712, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !200)
!712 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!713 = distinct !DICompileUnit(language: DW_LANG_C99, file: !714, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !200, retainedTypes: !689)
!714 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!715 = distinct !DICompileUnit(language: DW_LANG_C99, file: !716, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !200, retainedTypes: !689)
!716 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!717 = distinct !DICompileUnit(language: DW_LANG_C99, file: !718, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !200, retainedTypes: !719)
!718 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!719 = !{!44}
!720 = distinct !DICompileUnit(language: DW_LANG_C99, file: !721, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !722, retainedTypes: !734)
!721 = !DIFile(filename: "./lib/readutmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!722 = !{!723, !727}
!723 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 208, size: 32, elements: !724)
!724 = !{!725, !726}
!725 = !DIEnumerator(name: "READ_UTMP_CHECK_PIDS", value: 1)
!726 = !DIEnumerator(name: "READ_UTMP_USER_PROCESS", value: 2)
!727 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !728, file: !694, line: 192, size: 32, elements: !704)
!728 = distinct !DISubprogram(name: "x2nrealloc", scope: !694, file: !694, line: 180, type: !696, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !720, variables: !729)
!729 = !{!730, !731, !732, !733}
!730 = !DILocalVariable(name: "p", arg: 1, scope: !728, file: !694, line: 180, type: !41)
!731 = !DILocalVariable(name: "pn", arg: 2, scope: !728, file: !694, line: 180, type: !698)
!732 = !DILocalVariable(name: "s", arg: 3, scope: !728, file: !694, line: 180, type: !44)
!733 = !DILocalVariable(name: "n", scope: !728, file: !694, line: 182, type: !44)
!734 = !{!39, !41}
!735 = distinct !DICompileUnit(language: DW_LANG_C99, file: !736, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !200)
!736 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!737 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!738 = !{i32 2, !"Dwarf Version", i32 4}
!739 = !{i32 2, !"Debug Info Version", i32 3}
!740 = !{i32 1, !"wchar_size", i32 4}
!741 = !{i32 7, !"PIC Level", i32 2}
!742 = !{i32 7, !"PIE Level", i32 2}
!743 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 487, type: !744, isLocal: false, isDefinition: true, scopeLine: 488, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !746)
!744 = !DISubroutineType(types: !745)
!745 = !{null, !43}
!746 = !{!747}
!747 = !DILocalVariable(name: "status", arg: 1, scope: !743, file: !3, line: 487, type: !43)
!748 = !DIExpression()
!749 = !DILocation(line: 487, column: 12, scope: !743)
!750 = !DILocation(line: 489, column: 14, scope: !751)
!751 = distinct !DILexicalBlock(scope: !743, file: !3, line: 489, column: 7)
!752 = !DILocation(line: 489, column: 7, scope: !743)
!753 = !DILocation(line: 490, column: 5, scope: !754)
!754 = distinct !DILexicalBlock(scope: !751, file: !3, line: 490, column: 5)
!755 = !{!756, !756, i64 0}
!756 = !{!"any pointer", !757, i64 0}
!757 = !{!"omnipotent char", !758, i64 0}
!758 = !{!"Simple C/C++ TBAA"}
!759 = !DILocation(line: 493, column: 7, scope: !760)
!760 = distinct !DILexicalBlock(scope: !751, file: !3, line: 492, column: 5)
!761 = !DILocation(line: 494, column: 7, scope: !760)
!762 = !DILocation(line: 502, column: 7, scope: !760)
!763 = !DILocation(line: 509, column: 7, scope: !760)
!764 = !DILocation(line: 510, column: 7, scope: !760)
!765 = !DILocation(line: 511, column: 7, scope: !760)
!766 = !DILocation(line: 642, column: 15, scope: !51, inlinedAt: !767)
!767 = distinct !DILocation(line: 516, column: 7, scope: !760)
!768 = !DILocation(line: 651, column: 3, scope: !51, inlinedAt: !767)
!769 = !DILocation(line: 655, column: 29, scope: !51, inlinedAt: !767)
!770 = !DILocation(line: 655, column: 15, scope: !51, inlinedAt: !767)
!771 = !DILocation(line: 656, column: 7, scope: !772, inlinedAt: !767)
!772 = distinct !DILexicalBlock(scope: !51, file: !52, line: 656, column: 7)
!773 = !DILocation(line: 656, column: 19, scope: !772, inlinedAt: !767)
!774 = !DILocation(line: 656, column: 22, scope: !772, inlinedAt: !767)
!775 = !DILocation(line: 656, column: 7, scope: !51, inlinedAt: !767)
!776 = !DILocation(line: 662, column: 7, scope: !777, inlinedAt: !767)
!777 = distinct !DILexicalBlock(scope: !772, file: !52, line: 657, column: 5)
!778 = !DILocation(line: 664, column: 5, scope: !777, inlinedAt: !767)
!779 = !DILocation(line: 665, column: 3, scope: !51, inlinedAt: !767)
!780 = !DILocation(line: 667, column: 3, scope: !51, inlinedAt: !767)
!781 = !DILocation(line: 518, column: 3, scope: !743)
!782 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 522, type: !783, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !786)
!783 = !DISubroutineType(types: !784)
!784 = !{!43, !43, !785}
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!786 = !{!787, !788, !789, !790}
!787 = !DILocalVariable(name: "argc", arg: 1, scope: !782, file: !3, line: 522, type: !43)
!788 = !DILocalVariable(name: "argv", arg: 2, scope: !782, file: !3, line: 522, type: !785)
!789 = !DILocalVariable(name: "optc", scope: !782, file: !3, line: 524, type: !43)
!790 = !DILocalVariable(name: "n_users", scope: !782, file: !3, line: 525, type: !43)
!791 = !DILocalVariable(name: "buf", scope: !792, file: !3, line: 350, type: !876)
!792 = distinct !DILexicalBlock(scope: !793, file: !3, line: 348, column: 5)
!793 = distinct !DILexicalBlock(scope: !794, file: !3, line: 347, column: 7)
!794 = distinct !DISubprogram(name: "print_long_entry", scope: !3, file: !3, line: 307, type: !53, isLocal: true, isDefinition: true, scopeLine: 308, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !795)
!795 = !{!796, !797, !811, !815, !816, !791, !867, !868, !869, !872, !875, !879, !880, !881}
!796 = !DILocalVariable(name: "name", arg: 1, scope: !794, file: !3, line: 307, type: !55)
!797 = !DILocalVariable(name: "pw", scope: !794, file: !3, line: 309, type: !798)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !800, line: 49, size: 384, elements: !801)
!800 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!801 = !{!802, !803, !804, !806, !808, !809, !810}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !799, file: !800, line: 51, baseType: !39, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !799, file: !800, line: 52, baseType: !39, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !799, file: !800, line: 53, baseType: !805, size: 32, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !100, line: 134, baseType: !230)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !799, file: !800, line: 54, baseType: !807, size: 32, offset: 160)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !100, line: 135, baseType: !230)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !799, file: !800, line: 55, baseType: !39, size: 64, offset: 192)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !799, file: !800, line: 56, baseType: !39, size: 64, offset: 256)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !799, file: !800, line: 57, baseType: !39, size: 64, offset: 320)
!811 = !DILocalVariable(name: "comma", scope: !812, file: !3, line: 325, type: !814)
!812 = distinct !DILexicalBlock(scope: !813, file: !3, line: 324, column: 5)
!813 = distinct !DILexicalBlock(scope: !794, file: !3, line: 317, column: 7)
!814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!815 = !DILocalVariable(name: "result", scope: !812, file: !3, line: 326, type: !39)
!816 = !DILocalVariable(name: "stream", scope: !792, file: !3, line: 349, type: !817)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !819, line: 7, baseType: !820)
!819 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !821, line: 241, size: 1728, elements: !822)
!821 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!822 = !{!823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !843, !844, !845, !846, !848, !849, !851, !855, !858, !860, !861, !862, !863, !864, !865, !866}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !820, file: !821, line: 242, baseType: !43, size: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !820, file: !821, line: 247, baseType: !39, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !820, file: !821, line: 248, baseType: !39, size: 64, offset: 128)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !820, file: !821, line: 249, baseType: !39, size: 64, offset: 192)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !820, file: !821, line: 250, baseType: !39, size: 64, offset: 256)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !820, file: !821, line: 251, baseType: !39, size: 64, offset: 320)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !820, file: !821, line: 252, baseType: !39, size: 64, offset: 384)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !820, file: !821, line: 253, baseType: !39, size: 64, offset: 448)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !820, file: !821, line: 254, baseType: !39, size: 64, offset: 512)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !820, file: !821, line: 256, baseType: !39, size: 64, offset: 576)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !820, file: !821, line: 257, baseType: !39, size: 64, offset: 640)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !820, file: !821, line: 258, baseType: !39, size: 64, offset: 704)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !820, file: !821, line: 260, baseType: !836, size: 64, offset: 768)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !821, line: 156, size: 192, elements: !838)
!838 = !{!839, !840, !842}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !837, file: !821, line: 157, baseType: !836, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !837, file: !821, line: 158, baseType: !841, size: 64, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !837, file: !821, line: 162, baseType: !43, size: 32, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !820, file: !821, line: 262, baseType: !841, size: 64, offset: 832)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !820, file: !821, line: 264, baseType: !43, size: 32, offset: 896)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !820, file: !821, line: 268, baseType: !43, size: 32, offset: 928)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !820, file: !821, line: 270, baseType: !847, size: 64, offset: 960)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !100, line: 140, baseType: !101)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !820, file: !821, line: 274, baseType: !47, size: 16, offset: 1024)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !820, file: !821, line: 275, baseType: !850, size: 8, offset: 1040)
!850 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !820, file: !821, line: 276, baseType: !852, size: 8, offset: 1048)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 8, elements: !853)
!853 = !{!854}
!854 = !DISubrange(count: 1)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !820, file: !821, line: 280, baseType: !856, size: 64, offset: 1088)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !821, line: 150, baseType: null)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !820, file: !821, line: 289, baseType: !859, size: 64, offset: 1152)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !100, line: 141, baseType: !101)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !820, file: !821, line: 297, baseType: !41, size: 64, offset: 1216)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !820, file: !821, line: 298, baseType: !41, size: 64, offset: 1280)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !820, file: !821, line: 299, baseType: !41, size: 64, offset: 1344)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !820, file: !821, line: 300, baseType: !41, size: 64, offset: 1408)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !820, file: !821, line: 302, baseType: !44, size: 64, offset: 1472)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !820, file: !821, line: 303, baseType: !43, size: 32, offset: 1536)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !820, file: !821, line: 305, baseType: !159, size: 160, offset: 1568)
!867 = !DILocalVariable(name: "baseproject", scope: !792, file: !3, line: 351, type: !314)
!868 = !DILocalVariable(name: "project", scope: !792, file: !3, line: 352, type: !814)
!869 = !DILocalVariable(name: "bytes", scope: !870, file: !3, line: 359, type: !44)
!870 = distinct !DILexicalBlock(scope: !871, file: !3, line: 358, column: 9)
!871 = distinct !DILexicalBlock(scope: !792, file: !3, line: 357, column: 11)
!872 = !DILocalVariable(name: "stream", scope: !873, file: !3, line: 373, type: !817)
!873 = distinct !DILexicalBlock(scope: !874, file: !3, line: 372, column: 5)
!874 = distinct !DILexicalBlock(scope: !794, file: !3, line: 371, column: 7)
!875 = !DILocalVariable(name: "buf", scope: !873, file: !3, line: 374, type: !876)
!876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 8192, elements: !877)
!877 = !{!878}
!878 = !DISubrange(count: 1024)
!879 = !DILocalVariable(name: "baseplan", scope: !873, file: !3, line: 375, type: !314)
!880 = !DILocalVariable(name: "plan", scope: !873, file: !3, line: 376, type: !814)
!881 = !DILocalVariable(name: "bytes", scope: !882, file: !3, line: 383, type: !44)
!882 = distinct !DILexicalBlock(scope: !883, file: !3, line: 382, column: 9)
!883 = distinct !DILexicalBlock(scope: !873, file: !3, line: 381, column: 11)
!884 = !DILocation(line: 350, column: 12, scope: !792, inlinedAt: !885)
!885 = distinct !DILocation(line: 483, column: 5, scope: !886, inlinedAt: !897)
!886 = distinct !DILexicalBlock(scope: !887, file: !3, line: 482, column: 3)
!887 = distinct !DILexicalBlock(scope: !888, file: !3, line: 482, column: 3)
!888 = distinct !DISubprogram(name: "long_pinky", scope: !3, file: !3, line: 478, type: !889, isLocal: true, isDefinition: true, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !893)
!889 = !DISubroutineType(types: !890)
!890 = !{null, !891, !892}
!891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!893 = !{!894, !895, !896}
!894 = !DILocalVariable(name: "argc_names", arg: 1, scope: !888, file: !3, line: 478, type: !891)
!895 = !DILocalVariable(name: "argv_names", arg: 2, scope: !888, file: !3, line: 478, type: !892)
!896 = !DILocalVariable(name: "i", scope: !888, file: !3, line: 480, type: !43)
!897 = distinct !DILocation(line: 603, column: 5, scope: !898)
!898 = distinct !DILexicalBlock(scope: !782, file: !3, line: 600, column: 7)
!899 = !DILocation(line: 374, column: 12, scope: !873, inlinedAt: !885)
!900 = !DILocation(line: 522, column: 11, scope: !782)
!901 = !DILocation(line: 522, column: 24, scope: !782)
!902 = !DILocation(line: 528, column: 21, scope: !782)
!903 = !DILocation(line: 528, column: 3, scope: !782)
!904 = !DILocation(line: 529, column: 3, scope: !782)
!905 = !DILocation(line: 530, column: 3, scope: !782)
!906 = !DILocation(line: 531, column: 3, scope: !782)
!907 = !DILocation(line: 533, column: 3, scope: !782)
!908 = !DILocation(line: 535, column: 3, scope: !782)
!909 = !DILocation(line: 535, column: 18, scope: !782)
!910 = !DILocation(line: 524, column: 7, scope: !782)
!911 = !DILocation(line: 541, column: 11, scope: !912)
!912 = distinct !DILexicalBlock(scope: !913, file: !3, line: 538, column: 9)
!913 = distinct !DILexicalBlock(scope: !782, file: !3, line: 536, column: 5)
!914 = !DILocation(line: 545, column: 11, scope: !912)
!915 = !DILocation(line: 549, column: 11, scope: !912)
!916 = !DILocation(line: 553, column: 11, scope: !912)
!917 = !DILocation(line: 560, column: 11, scope: !912)
!918 = !DILocation(line: 568, column: 11, scope: !912)
!919 = !DILocation(line: 572, column: 11, scope: !912)
!920 = !DILocation(line: 576, column: 11, scope: !912)
!921 = !DILocation(line: 580, column: 11, scope: !912)
!922 = distinct !{!922, !908, !923}
!923 = !DILocation(line: 589, column: 5, scope: !782)
!924 = !DILocation(line: 582, column: 9, scope: !912)
!925 = !DILocation(line: 584, column: 9, scope: !912)
!926 = !DILocation(line: 587, column: 11, scope: !912)
!927 = !DILocation(line: 591, column: 20, scope: !782)
!928 = !{!929, !929, i64 0}
!929 = !{!"int", !757, i64 0}
!930 = !DILocation(line: 591, column: 18, scope: !782)
!931 = !DILocation(line: 525, column: 7, scope: !782)
!932 = !DILocation(line: 593, column: 35, scope: !933)
!933 = distinct !DILexicalBlock(scope: !782, file: !3, line: 593, column: 7)
!934 = !DILocation(line: 593, column: 24, scope: !933)
!935 = !DILocation(line: 595, column: 20, scope: !936)
!936 = distinct !DILexicalBlock(scope: !933, file: !3, line: 594, column: 5)
!937 = !DILocation(line: 595, column: 7, scope: !936)
!938 = !DILocation(line: 597, column: 7, scope: !936)
!939 = !DILocation(line: 600, column: 7, scope: !782)
!940 = !DILocation(line: 466, column: 3, scope: !941, inlinedAt: !951)
!941 = distinct !DISubprogram(name: "short_pinky", scope: !3, file: !3, line: 463, type: !942, isLocal: true, isDefinition: true, scopeLine: 465, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !944)
!942 = !DISubroutineType(types: !943)
!943 = !{null, !55, !891, !892}
!944 = !{!945, !946, !947, !948, !949}
!945 = !DILocalVariable(name: "filename", arg: 1, scope: !941, file: !3, line: 463, type: !55)
!946 = !DILocalVariable(name: "argc_names", arg: 2, scope: !941, file: !3, line: 464, type: !891)
!947 = !DILocalVariable(name: "argv_names", arg: 3, scope: !941, file: !3, line: 464, type: !892)
!948 = !DILocalVariable(name: "n_users", scope: !941, file: !3, line: 466, type: !44)
!949 = !DILocalVariable(name: "utmp_buf", scope: !941, file: !3, line: 467, type: !950)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!951 = distinct !DILocation(line: 601, column: 5, scope: !898)
!952 = !DILocation(line: 467, column: 3, scope: !941, inlinedAt: !951)
!953 = !DILocation(line: 467, column: 16, scope: !941, inlinedAt: !951)
!954 = !DILocation(line: 466, column: 10, scope: !941, inlinedAt: !951)
!955 = !DILocation(line: 469, column: 7, scope: !956, inlinedAt: !951)
!956 = distinct !DILexicalBlock(scope: !941, file: !3, line: 469, column: 7)
!957 = !DILocation(line: 469, column: 52, scope: !956, inlinedAt: !951)
!958 = !DILocation(line: 469, column: 7, scope: !941, inlinedAt: !951)
!959 = !DILocation(line: 470, column: 5, scope: !956, inlinedAt: !951)
!960 = !DILocation(line: 472, column: 17, scope: !941, inlinedAt: !951)
!961 = !{!962, !962, i64 0}
!962 = !{!"long", !757, i64 0}
!963 = !DILocation(line: 472, column: 26, scope: !941, inlinedAt: !951)
!964 = !DILocalVariable(name: "n", arg: 1, scope: !965, file: !3, line: 421, type: !44)
!965 = distinct !DISubprogram(name: "scan_entries", scope: !3, file: !3, line: 421, type: !966, isLocal: true, isDefinition: true, scopeLine: 423, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !968)
!966 = !DISubroutineType(types: !967)
!967 = !{null, !44, !121, !891, !892}
!968 = !{!964, !969, !970, !971, !972}
!969 = !DILocalVariable(name: "utmp_buf", arg: 2, scope: !965, file: !3, line: 421, type: !121)
!970 = !DILocalVariable(name: "argc_names", arg: 3, scope: !965, file: !3, line: 422, type: !891)
!971 = !DILocalVariable(name: "argv_names", arg: 4, scope: !965, file: !3, line: 422, type: !892)
!972 = !DILocalVariable(name: "i", scope: !973, file: !3, line: 444, type: !43)
!973 = distinct !DILexicalBlock(scope: !974, file: !3, line: 443, column: 13)
!974 = distinct !DILexicalBlock(scope: !975, file: !3, line: 442, column: 15)
!975 = distinct !DILexicalBlock(scope: !976, file: !3, line: 441, column: 9)
!976 = distinct !DILexicalBlock(scope: !977, file: !3, line: 440, column: 11)
!977 = distinct !DILexicalBlock(scope: !965, file: !3, line: 439, column: 5)
!978 = !DILocation(line: 421, column: 22, scope: !965, inlinedAt: !979)
!979 = distinct !DILocation(line: 472, column: 3, scope: !941, inlinedAt: !951)
!980 = !DILocation(line: 421, column: 44, scope: !965, inlinedAt: !979)
!981 = !DILocation(line: 422, column: 25, scope: !965, inlinedAt: !979)
!982 = !DILocation(line: 422, column: 49, scope: !965, inlinedAt: !979)
!983 = !DILocation(line: 424, column: 7, scope: !984, inlinedAt: !979)
!984 = distinct !DILexicalBlock(scope: !965, file: !3, line: 424, column: 7)
!985 = !DILocation(line: 424, column: 7, scope: !965, inlinedAt: !979)
!986 = !DILocation(line: 435, column: 7, scope: !965, inlinedAt: !979)
!987 = !DILocation(line: 404, column: 3, scope: !988, inlinedAt: !991)
!988 = distinct !DISubprogram(name: "print_heading", scope: !3, file: !3, line: 402, type: !989, isLocal: true, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !200)
!989 = !DISubroutineType(types: !990)
!990 = !{null}
!991 = distinct !DILocation(line: 436, column: 5, scope: !992, inlinedAt: !979)
!992 = distinct !DILexicalBlock(scope: !965, file: !3, line: 435, column: 7)
!993 = !DILocation(line: 405, column: 7, scope: !988, inlinedAt: !991)
!994 = !DILocation(line: 406, column: 5, scope: !995, inlinedAt: !991)
!995 = distinct !DILexicalBlock(scope: !988, file: !3, line: 405, column: 7)
!996 = !DILocation(line: 407, column: 3, scope: !988, inlinedAt: !991)
!997 = !DILocation(line: 408, column: 7, scope: !988, inlinedAt: !991)
!998 = !DILocation(line: 409, column: 5, scope: !999, inlinedAt: !991)
!999 = distinct !DILexicalBlock(scope: !988, file: !3, line: 408, column: 7)
!1000 = !DILocation(line: 410, column: 3, scope: !988, inlinedAt: !991)
!1001 = !DILocation(line: 412, column: 7, scope: !988, inlinedAt: !991)
!1002 = !DILocation(line: 413, column: 5, scope: !1003, inlinedAt: !991)
!1003 = distinct !DILexicalBlock(scope: !988, file: !3, line: 412, column: 7)
!1004 = !DILocalVariable(name: "__c", arg: 1, scope: !1005, file: !1006, line: 105, type: !43)
!1005 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1006, file: !1006, line: 105, type: !1007, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1009)
!1006 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!43, !43}
!1009 = !{!1004}
!1010 = !DILocation(line: 105, column: 23, scope: !1005, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 415, column: 3, scope: !988, inlinedAt: !991)
!1012 = !DILocation(line: 107, column: 10, scope: !1005, inlinedAt: !1011)
!1013 = !{!1014, !756, i64 40}
!1014 = !{!"_IO_FILE", !929, i64 0, !756, i64 8, !756, i64 16, !756, i64 24, !756, i64 32, !756, i64 40, !756, i64 48, !756, i64 56, !756, i64 64, !756, i64 72, !756, i64 80, !756, i64 88, !756, i64 96, !756, i64 104, !929, i64 112, !929, i64 116, !962, i64 120, !1015, i64 128, !757, i64 130, !757, i64 131, !756, i64 136, !962, i64 144, !756, i64 152, !756, i64 160, !756, i64 168, !756, i64 176, !962, i64 184, !929, i64 192, !757, i64 196}
!1015 = !{!"short", !757, i64 0}
!1016 = !{!1014, !756, i64 48}
!1017 = !{!"branch_weights", i32 2000, i32 1}
!1018 = !{!757, !757, i64 0}
!1019 = !DILocation(line: 438, column: 3, scope: !965, inlinedAt: !979)
!1020 = !DILocation(line: 438, column: 11, scope: !965, inlinedAt: !979)
!1021 = !DILocation(line: 440, column: 11, scope: !976, inlinedAt: !979)
!1022 = !{!1023, !1015, i64 0}
!1023 = !{!"utmpx", !1015, i64 0, !929, i64 4, !757, i64 8, !757, i64 40, !757, i64 44, !757, i64 76, !1024, i64 332, !929, i64 336, !1025, i64 340, !757, i64 348, !757, i64 364}
!1024 = !{!"__exit_status", !1015, i64 0, !1015, i64 2}
!1025 = !{!"", !929, i64 0, !929, i64 4}
!1026 = !DILocation(line: 440, column: 11, scope: !977, inlinedAt: !979)
!1027 = !DILocation(line: 442, column: 15, scope: !975, inlinedAt: !979)
!1028 = !DILocation(line: 444, column: 19, scope: !973, inlinedAt: !979)
!1029 = !DILocation(line: 446, column: 15, scope: !1030, inlinedAt: !979)
!1030 = distinct !DILexicalBlock(scope: !973, file: !3, line: 446, column: 15)
!1031 = !DILocation(line: 447, column: 21, scope: !1032, inlinedAt: !979)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 447, column: 21)
!1033 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 446, column: 15)
!1034 = !DILocation(line: 446, column: 29, scope: !1033, inlinedAt: !979)
!1035 = distinct !{!1035, !1036, !1037}
!1036 = !DILocation(line: 446, column: 15, scope: !1030)
!1037 = !DILocation(line: 451, column: 19, scope: !1030)
!1038 = !DILocation(line: 446, column: 44, scope: !1033, inlinedAt: !979)
!1039 = !DILocation(line: 447, column: 21, scope: !1033, inlinedAt: !979)
!1040 = !DILocation(line: 449, column: 21, scope: !1041, inlinedAt: !979)
!1041 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 448, column: 19)
!1042 = !DILocation(line: 450, column: 21, scope: !1041, inlinedAt: !979)
!1043 = !DILocation(line: 454, column: 13, scope: !974, inlinedAt: !979)
!1044 = !DILocation(line: 456, column: 15, scope: !977, inlinedAt: !979)
!1045 = distinct !{!1045, !1046, !1047}
!1046 = !DILocation(line: 438, column: 3, scope: !965)
!1047 = !DILocation(line: 457, column: 5, scope: !965)
!1048 = !DILocation(line: 475, column: 1, scope: !941, inlinedAt: !951)
!1049 = !DILocation(line: 601, column: 5, scope: !898)
!1050 = !DILocation(line: 478, column: 23, scope: !888, inlinedAt: !897)
!1051 = !DILocation(line: 478, column: 47, scope: !888, inlinedAt: !897)
!1052 = !DILocation(line: 480, column: 7, scope: !888, inlinedAt: !897)
!1053 = !DILocation(line: 482, column: 17, scope: !886, inlinedAt: !897)
!1054 = !DILocation(line: 482, column: 3, scope: !887, inlinedAt: !897)
!1055 = !DILocation(line: 483, column: 23, scope: !886, inlinedAt: !897)
!1056 = !DILocation(line: 307, column: 30, scope: !794, inlinedAt: !885)
!1057 = !DILocation(line: 311, column: 8, scope: !794, inlinedAt: !885)
!1058 = !DILocation(line: 309, column: 18, scope: !794, inlinedAt: !885)
!1059 = !DILocation(line: 313, column: 3, scope: !794, inlinedAt: !885)
!1060 = !DILocation(line: 314, column: 3, scope: !794, inlinedAt: !885)
!1061 = !DILocation(line: 316, column: 3, scope: !794, inlinedAt: !885)
!1062 = !DILocation(line: 317, column: 10, scope: !813, inlinedAt: !885)
!1063 = !DILocation(line: 317, column: 7, scope: !794, inlinedAt: !885)
!1064 = !DILocation(line: 320, column: 7, scope: !1065, inlinedAt: !885)
!1065 = distinct !DILexicalBlock(scope: !813, file: !3, line: 318, column: 5)
!1066 = !DILocation(line: 321, column: 7, scope: !1065, inlinedAt: !885)
!1067 = !DILocation(line: 325, column: 39, scope: !812, inlinedAt: !885)
!1068 = !{!1069, !756, i64 24}
!1069 = !{!"passwd", !756, i64 0, !756, i64 8, !929, i64 16, !929, i64 20, !756, i64 24, !756, i64 32, !756, i64 40}
!1070 = !DILocation(line: 325, column: 27, scope: !812, inlinedAt: !885)
!1071 = !DILocation(line: 325, column: 19, scope: !812, inlinedAt: !885)
!1072 = !DILocation(line: 328, column: 11, scope: !1073, inlinedAt: !885)
!1073 = distinct !DILexicalBlock(scope: !812, file: !3, line: 328, column: 11)
!1074 = !DILocation(line: 328, column: 11, scope: !812, inlinedAt: !885)
!1075 = !DILocation(line: 329, column: 16, scope: !1073, inlinedAt: !885)
!1076 = !DILocation(line: 331, column: 37, scope: !812, inlinedAt: !885)
!1077 = !DILocation(line: 329, column: 9, scope: !1073, inlinedAt: !885)
!1078 = !DILocation(line: 331, column: 51, scope: !812, inlinedAt: !885)
!1079 = !{!1069, !756, i64 0}
!1080 = !DILocation(line: 331, column: 16, scope: !812, inlinedAt: !885)
!1081 = !DILocation(line: 326, column: 13, scope: !812, inlinedAt: !885)
!1082 = !DILocation(line: 332, column: 7, scope: !812, inlinedAt: !885)
!1083 = !DILocation(line: 333, column: 7, scope: !812, inlinedAt: !885)
!1084 = !DILocation(line: 105, column: 23, scope: !1005, inlinedAt: !1085)
!1085 = distinct !DILocation(line: 336, column: 3, scope: !794, inlinedAt: !885)
!1086 = !DILocation(line: 107, column: 10, scope: !1005, inlinedAt: !1085)
!1087 = !DILocation(line: 338, column: 7, scope: !794, inlinedAt: !885)
!1088 = !DILocation(line: 340, column: 7, scope: !1089, inlinedAt: !885)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 339, column: 5)
!1090 = distinct !DILexicalBlock(scope: !794, file: !3, line: 338, column: 7)
!1091 = !DILocation(line: 341, column: 7, scope: !1089, inlinedAt: !885)
!1092 = !{!1069, !756, i64 32}
!1093 = !DILocation(line: 342, column: 7, scope: !1089, inlinedAt: !885)
!1094 = !DILocation(line: 343, column: 7, scope: !1089, inlinedAt: !885)
!1095 = !{!1069, !756, i64 40}
!1096 = !DILocation(line: 105, column: 23, scope: !1005, inlinedAt: !1097)
!1097 = distinct !DILocation(line: 344, column: 7, scope: !1089, inlinedAt: !885)
!1098 = !DILocation(line: 107, column: 10, scope: !1005, inlinedAt: !1097)
!1099 = !DILocation(line: 347, column: 7, scope: !794, inlinedAt: !885)
!1100 = !DILocation(line: 350, column: 7, scope: !792, inlinedAt: !885)
!1101 = !DILocation(line: 353, column: 30, scope: !792, inlinedAt: !885)
!1102 = !DILocation(line: 353, column: 18, scope: !792, inlinedAt: !885)
!1103 = !DILocation(line: 353, column: 61, scope: !792, inlinedAt: !885)
!1104 = !DILocation(line: 353, column: 9, scope: !792, inlinedAt: !885)
!1105 = !DILocation(line: 352, column: 19, scope: !792, inlinedAt: !885)
!1106 = !DILocation(line: 354, column: 36, scope: !792, inlinedAt: !885)
!1107 = !DILocalVariable(name: "__dest", arg: 1, scope: !1108, file: !1109, line: 95, type: !1112)
!1108 = distinct !DISubprogram(name: "stpcpy", scope: !1109, file: !1109, line: 95, type: !1110, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1114)
!1109 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!39, !1112, !1113}
!1112 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!1113 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !55)
!1114 = !{!1107, !1115}
!1115 = !DILocalVariable(name: "__src", arg: 2, scope: !1108, file: !1109, line: 95, type: !1113)
!1116 = !DILocation(line: 95, column: 1, scope: !1108, inlinedAt: !1117)
!1117 = distinct !DILocation(line: 354, column: 15, scope: !792, inlinedAt: !885)
!1118 = !DILocation(line: 97, column: 49, scope: !1108, inlinedAt: !1117)
!1119 = !DILocation(line: 97, column: 10, scope: !1108, inlinedAt: !1117)
!1120 = !DILocation(line: 354, column: 7, scope: !792, inlinedAt: !885)
!1121 = !DILocation(line: 356, column: 16, scope: !792, inlinedAt: !885)
!1122 = !DILocation(line: 349, column: 13, scope: !792, inlinedAt: !885)
!1123 = !DILocation(line: 357, column: 11, scope: !871, inlinedAt: !885)
!1124 = !DILocation(line: 357, column: 11, scope: !792, inlinedAt: !885)
!1125 = !DILocation(line: 361, column: 11, scope: !870, inlinedAt: !885)
!1126 = !DILocation(line: 363, column: 27, scope: !870, inlinedAt: !885)
!1127 = !DILocation(line: 359, column: 18, scope: !870, inlinedAt: !885)
!1128 = !DILocation(line: 363, column: 65, scope: !870, inlinedAt: !885)
!1129 = !DILocation(line: 363, column: 11, scope: !870, inlinedAt: !885)
!1130 = !DILocation(line: 364, column: 13, scope: !870, inlinedAt: !885)
!1131 = distinct !{!1131, !1132, !1133}
!1132 = !DILocation(line: 363, column: 11, scope: !870)
!1133 = !DILocation(line: 364, column: 13, scope: !870)
!1134 = !DILocation(line: 365, column: 11, scope: !870, inlinedAt: !885)
!1135 = !DILocation(line: 366, column: 9, scope: !870, inlinedAt: !885)
!1136 = !DILocation(line: 368, column: 7, scope: !792, inlinedAt: !885)
!1137 = !DILocation(line: 369, column: 5, scope: !793, inlinedAt: !885)
!1138 = !DILocation(line: 369, column: 5, scope: !792, inlinedAt: !885)
!1139 = !DILocation(line: 371, column: 7, scope: !794, inlinedAt: !885)
!1140 = !DILocation(line: 374, column: 7, scope: !873, inlinedAt: !885)
!1141 = !DILocation(line: 377, column: 30, scope: !873, inlinedAt: !885)
!1142 = !DILocation(line: 377, column: 18, scope: !873, inlinedAt: !885)
!1143 = !DILocation(line: 377, column: 58, scope: !873, inlinedAt: !885)
!1144 = !DILocation(line: 377, column: 9, scope: !873, inlinedAt: !885)
!1145 = !DILocation(line: 376, column: 19, scope: !873, inlinedAt: !885)
!1146 = !DILocation(line: 378, column: 33, scope: !873, inlinedAt: !885)
!1147 = !DILocation(line: 95, column: 1, scope: !1108, inlinedAt: !1148)
!1148 = distinct !DILocation(line: 378, column: 15, scope: !873, inlinedAt: !885)
!1149 = !DILocation(line: 97, column: 49, scope: !1108, inlinedAt: !1148)
!1150 = !DILocation(line: 97, column: 10, scope: !1108, inlinedAt: !1148)
!1151 = !DILocation(line: 378, column: 7, scope: !873, inlinedAt: !885)
!1152 = !DILocation(line: 380, column: 16, scope: !873, inlinedAt: !885)
!1153 = !DILocation(line: 373, column: 13, scope: !873, inlinedAt: !885)
!1154 = !DILocation(line: 381, column: 11, scope: !883, inlinedAt: !885)
!1155 = !DILocation(line: 381, column: 11, scope: !873, inlinedAt: !885)
!1156 = !DILocation(line: 385, column: 11, scope: !882, inlinedAt: !885)
!1157 = !DILocation(line: 387, column: 27, scope: !882, inlinedAt: !885)
!1158 = !DILocation(line: 383, column: 18, scope: !882, inlinedAt: !885)
!1159 = !DILocation(line: 387, column: 65, scope: !882, inlinedAt: !885)
!1160 = !DILocation(line: 387, column: 11, scope: !882, inlinedAt: !885)
!1161 = !DILocation(line: 388, column: 13, scope: !882, inlinedAt: !885)
!1162 = distinct !{!1162, !1163, !1164}
!1163 = !DILocation(line: 387, column: 11, scope: !882)
!1164 = !DILocation(line: 388, column: 13, scope: !882)
!1165 = !DILocation(line: 389, column: 11, scope: !882, inlinedAt: !885)
!1166 = !DILocation(line: 390, column: 9, scope: !882, inlinedAt: !885)
!1167 = !DILocation(line: 392, column: 7, scope: !873, inlinedAt: !885)
!1168 = !DILocation(line: 393, column: 5, scope: !874, inlinedAt: !885)
!1169 = !DILocation(line: 393, column: 5, scope: !873, inlinedAt: !885)
!1170 = !DILocation(line: 105, column: 23, scope: !1005, inlinedAt: !1171)
!1171 = distinct !DILocation(line: 395, column: 3, scope: !794, inlinedAt: !885)
!1172 = !DILocation(line: 107, column: 10, scope: !1005, inlinedAt: !1171)
!1173 = !DILocation(line: 482, column: 32, scope: !886, inlinedAt: !897)
!1174 = distinct !{!1174, !1175, !1176}
!1175 = !DILocation(line: 482, column: 3, scope: !887)
!1176 = !DILocation(line: 483, column: 36, scope: !887)
!1177 = !DILocation(line: 605, column: 3, scope: !782)
!1178 = distinct !DISubprogram(name: "print_entry", scope: !3, file: !3, line: 200, type: !1179, isLocal: true, isDefinition: true, scopeLine: 201, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1181)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{null, !121}
!1181 = !{!1182, !1183, !1215, !1216, !1217, !1221, !1222, !1225, !1226, !1229, !1230, !1236, !1237}
!1182 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !1178, file: !3, line: 200, type: !121)
!1183 = !DILocalVariable(name: "stats", scope: !1178, file: !3, line: 202, type: !1184)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1185, line: 46, size: 1152, elements: !1186)
!1185 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1186 = !{!1187, !1189, !1191, !1193, !1195, !1196, !1197, !1198, !1199, !1200, !1202, !1204, !1211, !1212, !1213}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1184, file: !1185, line: 48, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !100, line: 133, baseType: !46)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1184, file: !1185, line: 53, baseType: !1190, size: 64, offset: 64)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !100, line: 136, baseType: !46)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1184, file: !1185, line: 61, baseType: !1192, size: 64, offset: 128)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !100, line: 139, baseType: !46)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1184, file: !1185, line: 62, baseType: !1194, size: 32, offset: 192)
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !100, line: 138, baseType: !230)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1184, file: !1185, line: 64, baseType: !805, size: 32, offset: 224)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1184, file: !1185, line: 65, baseType: !807, size: 32, offset: 256)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1184, file: !1185, line: 67, baseType: !43, size: 32, offset: 288)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1184, file: !1185, line: 69, baseType: !1188, size: 64, offset: 320)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1184, file: !1185, line: 74, baseType: !847, size: 64, offset: 384)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1184, file: !1185, line: 78, baseType: !1201, size: 64, offset: 448)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !100, line: 162, baseType: !101)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1184, file: !1185, line: 80, baseType: !1203, size: 64, offset: 512)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !100, line: 167, baseType: !101)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1184, file: !1185, line: 91, baseType: !1205, size: 128, offset: 576)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1206, line: 8, size: 128, elements: !1207)
!1206 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1207 = !{!1208, !1209}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1205, file: !1206, line: 10, baseType: !99, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1205, file: !1206, line: 11, baseType: !1210, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !100, line: 184, baseType: !101)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1184, file: !1185, line: 92, baseType: !1205, size: 128, offset: 704)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1184, file: !1185, line: 93, baseType: !1205, size: 128, offset: 832)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1184, file: !1185, line: 106, baseType: !1214, size: 192, offset: 960)
!1214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1210, size: 192, elements: !194)
!1215 = !DILocalVariable(name: "last_change", scope: !1178, file: !3, line: 203, type: !97)
!1216 = !DILocalVariable(name: "mesg", scope: !1178, file: !3, line: 204, type: !40)
!1217 = !DILocalVariable(name: "line", scope: !1178, file: !3, line: 209, type: !1218)
!1218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 304, elements: !1219)
!1219 = !{!1220}
!1220 = !DISubrange(count: 38)
!1221 = !DILocalVariable(name: "p", scope: !1178, file: !3, line: 210, type: !39)
!1222 = !DILocalVariable(name: "pw", scope: !1223, file: !3, line: 234, type: !798)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 233, column: 5)
!1224 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 232, column: 7)
!1225 = !DILocalVariable(name: "name", scope: !1223, file: !3, line: 235, type: !181)
!1226 = !DILocalVariable(name: "comma", scope: !1227, file: !3, line: 244, type: !814)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 243, column: 9)
!1228 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 239, column: 11)
!1229 = !DILocalVariable(name: "result", scope: !1227, file: !3, line: 245, type: !39)
!1230 = !DILocalVariable(name: "ut_host", scope: !1231, file: !3, line: 273, type: !1233)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 272, column: 5)
!1232 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 271, column: 7)
!1233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 2056, elements: !1234)
!1234 = !{!1235}
!1235 = !DISubrange(count: 257)
!1236 = !DILocalVariable(name: "host", scope: !1231, file: !3, line: 274, type: !39)
!1237 = !DILocalVariable(name: "display", scope: !1231, file: !3, line: 275, type: !39)
!1238 = !DILocation(line: 200, column: 33, scope: !1178)
!1239 = !DILocation(line: 202, column: 3, scope: !1178)
!1240 = !DILocation(line: 209, column: 3, scope: !1178)
!1241 = !DILocation(line: 209, column: 8, scope: !1178)
!1242 = !DILocation(line: 210, column: 9, scope: !1178)
!1243 = !DILocation(line: 215, column: 10, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 215, column: 8)
!1245 = !DILocation(line: 215, column: 8, scope: !1178)
!1246 = !DILocation(line: 216, column: 9, scope: !1244)
!1247 = !DILocation(line: 216, column: 5, scope: !1244)
!1248 = !DILocation(line: 739, column: 29, scope: !1249, inlinedAt: !1257)
!1249 = distinct !DISubprogram(name: "stzncpy", scope: !52, file: !52, line: 737, type: !1250, isLocal: true, isDefinition: true, scopeLine: 738, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1252)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!39, !1112, !1113, !44}
!1252 = !{!1253, !1254, !1255, !1256}
!1253 = !DILocalVariable(name: "dest", arg: 1, scope: !1249, file: !52, line: 737, type: !1112)
!1254 = !DILocalVariable(name: "src", arg: 2, scope: !1249, file: !52, line: 737, type: !1113)
!1255 = !DILocalVariable(name: "len", arg: 3, scope: !1249, file: !52, line: 737, type: !44)
!1256 = !DILocalVariable(name: "src_end", scope: !1249, file: !52, line: 739, type: !55)
!1257 = distinct !DILocation(line: 217, column: 3, scope: !1178)
!1258 = !DILocation(line: 739, column: 15, scope: !1249, inlinedAt: !1257)
!1259 = !DILocation(line: 737, column: 25, scope: !1249, inlinedAt: !1257)
!1260 = !DILocation(line: 737, column: 52, scope: !1249, inlinedAt: !1257)
!1261 = !DILocation(line: 740, column: 24, scope: !1249, inlinedAt: !1257)
!1262 = !DILocation(line: 740, column: 3, scope: !1249, inlinedAt: !1257)
!1263 = !DILocation(line: 741, column: 19, scope: !1249, inlinedAt: !1257)
!1264 = !DILocation(line: 741, column: 10, scope: !1249, inlinedAt: !1257)
!1265 = !DILocation(line: 741, column: 13, scope: !1249, inlinedAt: !1257)
!1266 = !{!1267}
!1267 = distinct !{!1267, !1268, !"stzncpy: argument 0"}
!1268 = distinct !{!1268, !"stzncpy"}
!1269 = !{!1270}
!1270 = distinct !{!1270, !1268, !"stzncpy: argument 1"}
!1271 = !DILocation(line: 740, column: 14, scope: !1249, inlinedAt: !1257)
!1272 = distinct !{!1272, !1273, !1274}
!1273 = !DILocation(line: 740, column: 3, scope: !1249)
!1274 = !DILocation(line: 741, column: 19, scope: !1249)
!1275 = !DILocation(line: 740, column: 27, scope: !1249, inlinedAt: !1257)
!1276 = !DILocation(line: 742, column: 9, scope: !1249, inlinedAt: !1257)
!1277 = !DILocation(line: 202, column: 15, scope: !1178)
!1278 = !DILocalVariable(name: "__path", arg: 1, scope: !1279, file: !1280, line: 449, type: !55)
!1279 = distinct !DISubprogram(name: "stat", scope: !1280, file: !1280, line: 449, type: !1281, isLocal: false, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1284)
!1280 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!43, !55, !1283}
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1284 = !{!1278, !1285}
!1285 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1279, file: !1280, line: 449, type: !1283)
!1286 = !DILocation(line: 449, column: 1, scope: !1279, inlinedAt: !1287)
!1287 = distinct !DILocation(line: 219, column: 7, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 219, column: 7)
!1289 = !DILocation(line: 451, column: 10, scope: !1279, inlinedAt: !1287)
!1290 = !DILocation(line: 219, column: 27, scope: !1288)
!1291 = !DILocation(line: 219, column: 7, scope: !1178)
!1292 = !DILocation(line: 221, column: 21, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 220, column: 5)
!1294 = !{!1295, !929, i64 24}
!1295 = !{!"stat", !962, i64 0, !962, i64 8, !962, i64 16, !929, i64 24, !929, i64 28, !929, i64 32, !929, i64 36, !962, i64 40, !962, i64 48, !962, i64 56, !962, i64 64, !1296, i64 72, !1296, i64 88, !1296, i64 104, !757, i64 120}
!1296 = !{!"timespec", !962, i64 0, !962, i64 8}
!1297 = !DILocation(line: 221, column: 29, scope: !1293)
!1298 = !DILocation(line: 221, column: 14, scope: !1293)
!1299 = !DILocation(line: 222, column: 27, scope: !1293)
!1300 = !{!1295, !962, i64 72}
!1301 = !DILocation(line: 203, column: 10, scope: !1178)
!1302 = !DILocation(line: 223, column: 5, scope: !1293)
!1303 = !DILocation(line: 230, column: 3, scope: !1178)
!1304 = !DILocation(line: 232, column: 7, scope: !1178)
!1305 = !DILocation(line: 235, column: 7, scope: !1223)
!1306 = !DILocation(line: 235, column: 12, scope: !1223)
!1307 = !DILocation(line: 739, column: 29, scope: !1249, inlinedAt: !1308)
!1308 = distinct !DILocation(line: 237, column: 7, scope: !1223)
!1309 = !DILocation(line: 739, column: 15, scope: !1249, inlinedAt: !1308)
!1310 = !DILocation(line: 737, column: 25, scope: !1249, inlinedAt: !1308)
!1311 = !DILocation(line: 737, column: 52, scope: !1249, inlinedAt: !1308)
!1312 = !DILocation(line: 740, column: 24, scope: !1249, inlinedAt: !1308)
!1313 = !DILocation(line: 740, column: 27, scope: !1249, inlinedAt: !1308)
!1314 = !{!1315}
!1315 = distinct !{!1315, !1316, !"stzncpy: argument 1"}
!1316 = distinct !{!1316, !"stzncpy"}
!1317 = !{!1318}
!1318 = distinct !{!1318, !1316, !"stzncpy: argument 0"}
!1319 = !DILocation(line: 740, column: 3, scope: !1249, inlinedAt: !1308)
!1320 = !DILocation(line: 741, column: 19, scope: !1249, inlinedAt: !1308)
!1321 = !DILocation(line: 741, column: 10, scope: !1249, inlinedAt: !1308)
!1322 = !DILocation(line: 741, column: 13, scope: !1249, inlinedAt: !1308)
!1323 = !DILocation(line: 740, column: 14, scope: !1249, inlinedAt: !1308)
!1324 = !DILocation(line: 742, column: 9, scope: !1249, inlinedAt: !1308)
!1325 = !DILocation(line: 238, column: 12, scope: !1223)
!1326 = !DILocation(line: 234, column: 22, scope: !1223)
!1327 = !DILocation(line: 239, column: 14, scope: !1228)
!1328 = !DILocation(line: 239, column: 11, scope: !1223)
!1329 = !DILocation(line: 241, column: 9, scope: !1228)
!1330 = !DILocation(line: 244, column: 43, scope: !1227)
!1331 = !DILocation(line: 244, column: 31, scope: !1227)
!1332 = !DILocation(line: 244, column: 23, scope: !1227)
!1333 = !DILocation(line: 247, column: 15, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 247, column: 15)
!1335 = !DILocation(line: 247, column: 15, scope: !1227)
!1336 = !DILocation(line: 248, column: 20, scope: !1334)
!1337 = !DILocation(line: 250, column: 41, scope: !1227)
!1338 = !DILocation(line: 248, column: 13, scope: !1334)
!1339 = !DILocation(line: 250, column: 55, scope: !1227)
!1340 = !DILocation(line: 250, column: 20, scope: !1227)
!1341 = !DILocation(line: 245, column: 17, scope: !1227)
!1342 = !DILocation(line: 251, column: 11, scope: !1227)
!1343 = !DILocation(line: 252, column: 11, scope: !1227)
!1344 = !DILocation(line: 254, column: 5, scope: !1224)
!1345 = !DILocation(line: 254, column: 5, scope: !1223)
!1346 = !DILocation(line: 256, column: 3, scope: !1178)
!1347 = !DILocation(line: 259, column: 7, scope: !1178)
!1348 = !DILocation(line: 261, column: 11, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 261, column: 11)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 260, column: 5)
!1351 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 259, column: 7)
!1352 = !DILocation(line: 261, column: 11, scope: !1350)
!1353 = !DILocation(line: 147, column: 21, scope: !94, inlinedAt: !1354)
!1354 = distinct !DILocation(line: 262, column: 9, scope: !1349)
!1355 = !DILocation(line: 153, column: 7, scope: !1356, inlinedAt: !1354)
!1356 = distinct !DILexicalBlock(scope: !94, file: !3, line: 153, column: 7)
!1357 = !DILocation(line: 153, column: 11, scope: !1356, inlinedAt: !1354)
!1358 = !DILocation(line: 153, column: 7, scope: !94, inlinedAt: !1354)
!1359 = !DILocation(line: 154, column: 5, scope: !1356, inlinedAt: !1354)
!1360 = !DILocation(line: 156, column: 18, scope: !94, inlinedAt: !1354)
!1361 = !DILocation(line: 156, column: 22, scope: !94, inlinedAt: !1354)
!1362 = !DILocation(line: 151, column: 10, scope: !94, inlinedAt: !1354)
!1363 = !DILocation(line: 157, column: 20, scope: !1364, inlinedAt: !1354)
!1364 = distinct !DILexicalBlock(scope: !94, file: !3, line: 157, column: 7)
!1365 = !DILocation(line: 157, column: 7, scope: !94, inlinedAt: !1354)
!1366 = !DILocation(line: 159, column: 20, scope: !107, inlinedAt: !1354)
!1367 = !DILocation(line: 159, column: 7, scope: !94, inlinedAt: !1354)
!1368 = !DILocation(line: 161, column: 19, scope: !106, inlinedAt: !1354)
!1369 = !DILocation(line: 161, column: 11, scope: !106, inlinedAt: !1354)
!1370 = !DILocation(line: 162, column: 48, scope: !106, inlinedAt: !1354)
!1371 = !DILocation(line: 162, column: 21, scope: !106, inlinedAt: !1354)
!1372 = !DILocation(line: 162, column: 11, scope: !106, inlinedAt: !1354)
!1373 = !DILocation(line: 163, column: 7, scope: !106, inlinedAt: !1354)
!1374 = !DILocation(line: 164, column: 5, scope: !106, inlinedAt: !1354)
!1375 = !DILocation(line: 167, column: 25, scope: !110, inlinedAt: !1354)
!1376 = !DILocation(line: 168, column: 7, scope: !110, inlinedAt: !1354)
!1377 = !DILocation(line: 262, column: 9, scope: !1349)
!1378 = !DILocation(line: 265, column: 9, scope: !1349)
!1379 = !DILocation(line: 175, column: 33, scope: !118, inlinedAt: !1380)
!1380 = distinct !DILocation(line: 268, column: 3, scope: !1178)
!1381 = !DILocation(line: 185, column: 3, scope: !118, inlinedAt: !1380)
!1382 = !DILocation(line: 185, column: 14, scope: !118, inlinedAt: !1380)
!1383 = !{!1023, !929, i64 340}
!1384 = !DILocation(line: 185, column: 10, scope: !118, inlinedAt: !1380)
!1385 = !DILocation(line: 186, column: 20, scope: !118, inlinedAt: !1380)
!1386 = !DILocation(line: 186, column: 14, scope: !118, inlinedAt: !1380)
!1387 = !DILocation(line: 188, column: 7, scope: !1388, inlinedAt: !1380)
!1388 = distinct !DILexicalBlock(scope: !118, file: !3, line: 188, column: 7)
!1389 = !DILocation(line: 188, column: 7, scope: !118, inlinedAt: !1380)
!1390 = !DILocation(line: 190, column: 34, scope: !1391, inlinedAt: !1380)
!1391 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 189, column: 5)
!1392 = !DILocation(line: 190, column: 7, scope: !1391, inlinedAt: !1380)
!1393 = !DILocation(line: 191, column: 7, scope: !1391, inlinedAt: !1380)
!1394 = !DILocation(line: 194, column: 23, scope: !1388, inlinedAt: !1380)
!1395 = !DILocation(line: 689, column: 13, scope: !1396, inlinedAt: !1402)
!1396 = distinct !DISubprogram(name: "timetostr", scope: !52, file: !52, line: 686, type: !1397, isLocal: true, isDefinition: true, scopeLine: 687, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1399)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!39, !97, !39}
!1399 = !{!1400, !1401}
!1400 = !DILocalVariable(name: "t", arg: 1, scope: !1396, file: !52, line: 686, type: !97)
!1401 = !DILocalVariable(name: "buf", arg: 2, scope: !1396, file: !52, line: 686, type: !39)
!1402 = distinct !DILocation(line: 194, column: 12, scope: !1388, inlinedAt: !1380)
!1403 = !DILocation(line: 194, column: 5, scope: !1388, inlinedAt: !1380)
!1404 = !DILocation(line: 195, column: 1, scope: !118, inlinedAt: !1380)
!1405 = !DILocation(line: 268, column: 3, scope: !1178)
!1406 = !DILocation(line: 271, column: 21, scope: !1232)
!1407 = !DILocation(line: 271, column: 24, scope: !1232)
!1408 = !DILocation(line: 271, column: 7, scope: !1178)
!1409 = !DILocation(line: 273, column: 7, scope: !1231)
!1410 = !DILocation(line: 273, column: 12, scope: !1231)
!1411 = !DILocation(line: 274, column: 13, scope: !1231)
!1412 = !DILocation(line: 275, column: 13, scope: !1231)
!1413 = !DILocation(line: 739, column: 29, scope: !1249, inlinedAt: !1414)
!1414 = distinct !DILocation(line: 278, column: 7, scope: !1231)
!1415 = !DILocation(line: 739, column: 15, scope: !1249, inlinedAt: !1414)
!1416 = !DILocation(line: 737, column: 25, scope: !1249, inlinedAt: !1414)
!1417 = !DILocation(line: 737, column: 52, scope: !1249, inlinedAt: !1414)
!1418 = !DILocation(line: 740, column: 3, scope: !1249, inlinedAt: !1414)
!1419 = !DILocation(line: 741, column: 19, scope: !1249, inlinedAt: !1414)
!1420 = !DILocation(line: 741, column: 10, scope: !1249, inlinedAt: !1414)
!1421 = !DILocation(line: 741, column: 13, scope: !1249, inlinedAt: !1414)
!1422 = !{!1423}
!1423 = distinct !{!1423, !1424, !"stzncpy: argument 0"}
!1424 = distinct !{!1424, !"stzncpy"}
!1425 = !{!1426}
!1426 = distinct !{!1426, !1424, !"stzncpy: argument 1"}
!1427 = !DILocation(line: 740, column: 14, scope: !1249, inlinedAt: !1414)
!1428 = !DILocation(line: 740, column: 24, scope: !1249, inlinedAt: !1414)
!1429 = !DILocation(line: 740, column: 27, scope: !1249, inlinedAt: !1414)
!1430 = !DILocation(line: 742, column: 9, scope: !1249, inlinedAt: !1414)
!1431 = !DILocation(line: 281, column: 17, scope: !1231)
!1432 = !DILocation(line: 282, column: 11, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 282, column: 11)
!1434 = !DILocation(line: 282, column: 11, scope: !1231)
!1435 = !DILocation(line: 283, column: 17, scope: !1433)
!1436 = !DILocation(line: 283, column: 20, scope: !1433)
!1437 = !DILocation(line: 283, column: 9, scope: !1433)
!1438 = !DILocation(line: 285, column: 11, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 285, column: 11)
!1440 = !DILocation(line: 285, column: 11, scope: !1231)
!1441 = !DILocation(line: 287, column: 16, scope: !1439)
!1442 = !DILocation(line: 287, column: 9, scope: !1439)
!1443 = !DILocation(line: 288, column: 14, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 288, column: 12)
!1445 = !DILocation(line: 288, column: 12, scope: !1231)
!1446 = !DILocation(line: 291, column: 11, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 291, column: 11)
!1448 = !DILocation(line: 291, column: 11, scope: !1231)
!1449 = !DILocation(line: 292, column: 9, scope: !1447)
!1450 = !DILocation(line: 294, column: 9, scope: !1447)
!1451 = !DILocation(line: 296, column: 16, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 296, column: 11)
!1453 = !DILocation(line: 296, column: 11, scope: !1231)
!1454 = !DILocation(line: 297, column: 9, scope: !1452)
!1455 = !DILocation(line: 298, column: 5, scope: !1232)
!1456 = !DILocation(line: 298, column: 5, scope: !1231)
!1457 = !DILocation(line: 105, column: 23, scope: !1005, inlinedAt: !1458)
!1458 = distinct !DILocation(line: 301, column: 3, scope: !1178)
!1459 = !DILocation(line: 107, column: 10, scope: !1005, inlinedAt: !1458)
!1460 = !DILocation(line: 302, column: 1, scope: !1178)
!1461 = distinct !DISubprogram(name: "create_fullname", scope: !3, file: !3, line: 103, type: !1462, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1464)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!39, !55, !55}
!1464 = !{!1465, !1466, !1467, !1468, !1469, !1470, !1471, !1474, !1475, !1479}
!1465 = !DILocalVariable(name: "gecos_name", arg: 1, scope: !1461, file: !3, line: 103, type: !55)
!1466 = !DILocalVariable(name: "user_name", arg: 2, scope: !1461, file: !3, line: 103, type: !55)
!1467 = !DILocalVariable(name: "rsize", scope: !1461, file: !3, line: 105, type: !44)
!1468 = !DILocalVariable(name: "result", scope: !1461, file: !3, line: 106, type: !39)
!1469 = !DILocalVariable(name: "r", scope: !1461, file: !3, line: 107, type: !39)
!1470 = !DILocalVariable(name: "ampersands", scope: !1461, file: !3, line: 108, type: !44)
!1471 = !DILocalVariable(name: "ulen", scope: !1472, file: !3, line: 112, type: !44)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 111, column: 5)
!1473 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 110, column: 7)
!1474 = !DILocalVariable(name: "product", scope: !1472, file: !3, line: 113, type: !44)
!1475 = !DILocalVariable(name: "uname", scope: !1476, file: !3, line: 125, type: !55)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 124, column: 9)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 123, column: 11)
!1478 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 122, column: 5)
!1479 = !DILocalVariable(name: "__res", scope: !1480, file: !3, line: 127, type: !43)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 127, column: 20)
!1481 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 126, column: 15)
!1482 = !DILocation(line: 103, column: 30, scope: !1461)
!1483 = !DILocation(line: 103, column: 54, scope: !1461)
!1484 = !DILocation(line: 105, column: 18, scope: !1461)
!1485 = !DILocation(line: 105, column: 10, scope: !1461)
!1486 = !DILocalVariable(name: "str", arg: 1, scope: !1487, file: !3, line: 85, type: !55)
!1487 = distinct !DISubprogram(name: "count_ampersands", scope: !3, file: !3, line: 85, type: !1488, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1490)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!44, !55}
!1490 = !{!1486, !1491}
!1491 = !DILocalVariable(name: "count", scope: !1487, file: !3, line: 87, type: !44)
!1492 = !DILocation(line: 85, column: 31, scope: !1487, inlinedAt: !1493)
!1493 = distinct !DILocation(line: 108, column: 23, scope: !1461)
!1494 = !DILocation(line: 87, column: 10, scope: !1487, inlinedAt: !1493)
!1495 = !DILocation(line: 88, column: 3, scope: !1487, inlinedAt: !1493)
!1496 = distinct !{!1496, !1497, !1498}
!1497 = !DILocation(line: 88, column: 3, scope: !1487)
!1498 = !DILocation(line: 92, column: 20, scope: !1487)
!1499 = !DILocation(line: 90, column: 11, scope: !1500, inlinedAt: !1493)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 90, column: 11)
!1501 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 89, column: 5)
!1502 = !DILocation(line: 90, column: 16, scope: !1500, inlinedAt: !1493)
!1503 = !DILocation(line: 90, column: 11, scope: !1501, inlinedAt: !1493)
!1504 = !DILocation(line: 92, column: 18, scope: !1487, inlinedAt: !1493)
!1505 = !DILocation(line: 92, column: 5, scope: !1501, inlinedAt: !1493)
!1506 = !DILocation(line: 105, column: 38, scope: !1461)
!1507 = !DILocation(line: 108, column: 10, scope: !1461)
!1508 = !DILocation(line: 110, column: 18, scope: !1473)
!1509 = !DILocation(line: 110, column: 7, scope: !1461)
!1510 = !DILocation(line: 112, column: 21, scope: !1472)
!1511 = !DILocation(line: 112, column: 14, scope: !1472)
!1512 = !DILocation(line: 113, column: 35, scope: !1472)
!1513 = !DILocation(line: 113, column: 14, scope: !1472)
!1514 = !DILocation(line: 114, column: 24, scope: !1472)
!1515 = !DILocation(line: 114, column: 13, scope: !1472)
!1516 = !DILocation(line: 115, column: 11, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 115, column: 11)
!1518 = !DILocation(line: 115, column: 56, scope: !1517)
!1519 = !DILocation(line: 115, column: 47, scope: !1517)
!1520 = !DILocation(line: 116, column: 9, scope: !1517)
!1521 = !DILocation(line: 119, column: 16, scope: !1461)
!1522 = !DILocation(line: 106, column: 9, scope: !1461)
!1523 = !DILocation(line: 107, column: 9, scope: !1461)
!1524 = !DILocation(line: 121, column: 3, scope: !1461)
!1525 = !DILocation(line: 121, column: 10, scope: !1461)
!1526 = !DILocation(line: 125, column: 23, scope: !1476)
!1527 = !DILocation(line: 126, column: 15, scope: !1481)
!1528 = !{!1015, !1015, i64 0}
!1529 = !DILocation(line: 126, column: 15, scope: !1476)
!1530 = !DILocation(line: 127, column: 20, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 127, column: 20)
!1532 = !DILocation(line: 127, column: 20, scope: !1480)
!1533 = !DILocation(line: 127, column: 20, scope: !1481)
!1534 = !DILocation(line: 127, column: 15, scope: !1481)
!1535 = !DILocation(line: 127, column: 18, scope: !1481)
!1536 = !DILocation(line: 128, column: 18, scope: !1476)
!1537 = !DILocation(line: 127, column: 13, scope: !1481)
!1538 = !DILocation(line: 128, column: 11, scope: !1476)
!1539 = !DILocation(line: 129, column: 26, scope: !1476)
!1540 = !DILocation(line: 129, column: 15, scope: !1476)
!1541 = !DILocation(line: 129, column: 18, scope: !1476)
!1542 = distinct !{!1542, !1538, !1539}
!1543 = !DILocation(line: 133, column: 13, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 132, column: 9)
!1545 = !DILocation(line: 133, column: 16, scope: !1544)
!1546 = !DILocation(line: 136, column: 17, scope: !1478)
!1547 = distinct !{!1547, !1524, !1548}
!1548 = !DILocation(line: 137, column: 5, scope: !1461)
!1549 = !DILocation(line: 138, column: 6, scope: !1461)
!1550 = !DILocation(line: 140, column: 3, scope: !1461)
!1551 = distinct !DISubprogram(name: "canon_host", scope: !210, file: !210, line: 33, type: !1552, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, unit: !204, variables: !1554)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!39, !55}
!1554 = !{!1555}
!1555 = !DILocalVariable(name: "host", arg: 1, scope: !1551, file: !210, line: 33, type: !55)
!1556 = !DILocation(line: 33, column: 25, scope: !1551)
!1557 = !DILocation(line: 60, column: 27, scope: !209, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 35, column: 10, scope: !1551)
!1559 = !DILocation(line: 60, column: 38, scope: !209, inlinedAt: !1558)
!1560 = !DILocation(line: 62, column: 9, scope: !209, inlinedAt: !1558)
!1561 = !DILocation(line: 64, column: 3, scope: !209, inlinedAt: !1558)
!1562 = !DILocation(line: 64, column: 20, scope: !209, inlinedAt: !1558)
!1563 = !DILocation(line: 67, column: 18, scope: !209, inlinedAt: !1558)
!1564 = !{!1565, !929, i64 0}
!1565 = !{!"addrinfo", !929, i64 0, !929, i64 4, !929, i64 8, !929, i64 12, !929, i64 16, !756, i64 24, !756, i64 32, !756, i64 40}
!1566 = !DILocation(line: 68, column: 12, scope: !209, inlinedAt: !1558)
!1567 = !DILocation(line: 65, column: 7, scope: !209, inlinedAt: !1558)
!1568 = !DILocation(line: 69, column: 8, scope: !1569, inlinedAt: !1558)
!1569 = distinct !DILexicalBlock(scope: !209, file: !210, line: 69, column: 7)
!1570 = !DILocation(line: 69, column: 7, scope: !209, inlinedAt: !1558)
!1571 = !DILocation(line: 74, column: 24, scope: !1572, inlinedAt: !1558)
!1572 = distinct !DILexicalBlock(scope: !1569, file: !210, line: 70, column: 5)
!1573 = !DILocation(line: 74, column: 29, scope: !1572, inlinedAt: !1558)
!1574 = !{!1565, !756, i64 32}
!1575 = !DILocation(line: 74, column: 16, scope: !1572, inlinedAt: !1558)
!1576 = !DILocation(line: 75, column: 12, scope: !1577, inlinedAt: !1558)
!1577 = distinct !DILexicalBlock(scope: !1572, file: !210, line: 75, column: 11)
!1578 = !DILocation(line: 75, column: 19, scope: !1577, inlinedAt: !1558)
!1579 = !DILocation(line: 76, column: 18, scope: !1577, inlinedAt: !1558)
!1580 = !DILocation(line: 76, column: 9, scope: !1577, inlinedAt: !1558)
!1581 = !DILocation(line: 77, column: 21, scope: !1572, inlinedAt: !1558)
!1582 = !DILocation(line: 77, column: 7, scope: !1572, inlinedAt: !1558)
!1583 = !DILocation(line: 78, column: 5, scope: !1572, inlinedAt: !1558)
!1584 = !DILocation(line: 80, column: 14, scope: !1585, inlinedAt: !1558)
!1585 = distinct !DILexicalBlock(scope: !1569, file: !210, line: 79, column: 12)
!1586 = !DILocation(line: 80, column: 5, scope: !1585, inlinedAt: !1558)
!1587 = !DILocation(line: 83, column: 1, scope: !209, inlinedAt: !1558)
!1588 = !DILocation(line: 35, column: 3, scope: !1551)
!1589 = !DILocation(line: 60, column: 27, scope: !209)
!1590 = !DILocation(line: 60, column: 38, scope: !209)
!1591 = !DILocation(line: 62, column: 9, scope: !209)
!1592 = !DILocation(line: 64, column: 3, scope: !209)
!1593 = !DILocation(line: 64, column: 20, scope: !209)
!1594 = !DILocation(line: 67, column: 18, scope: !209)
!1595 = !DILocation(line: 68, column: 12, scope: !209)
!1596 = !DILocation(line: 65, column: 7, scope: !209)
!1597 = !DILocation(line: 69, column: 8, scope: !1569)
!1598 = !DILocation(line: 69, column: 7, scope: !209)
!1599 = !DILocation(line: 74, column: 24, scope: !1572)
!1600 = !DILocation(line: 74, column: 29, scope: !1572)
!1601 = !DILocation(line: 74, column: 16, scope: !1572)
!1602 = !DILocation(line: 75, column: 12, scope: !1577)
!1603 = !DILocation(line: 75, column: 22, scope: !1577)
!1604 = !DILocation(line: 75, column: 19, scope: !1577)
!1605 = !DILocation(line: 76, column: 18, scope: !1577)
!1606 = !DILocation(line: 76, column: 9, scope: !1577)
!1607 = !DILocation(line: 77, column: 21, scope: !1572)
!1608 = !DILocation(line: 77, column: 7, scope: !1572)
!1609 = !DILocation(line: 78, column: 5, scope: !1572)
!1610 = !DILocation(line: 79, column: 12, scope: !1585)
!1611 = !DILocation(line: 79, column: 12, scope: !1569)
!1612 = !DILocation(line: 80, column: 14, scope: !1585)
!1613 = !DILocation(line: 80, column: 5, scope: !1585)
!1614 = !DILocation(line: 83, column: 1, scope: !209)
!1615 = !DILocation(line: 82, column: 3, scope: !209)
!1616 = distinct !DISubprogram(name: "ch_strerror", scope: !210, file: !210, line: 87, type: !1617, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, unit: !204, variables: !200)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!55}
!1619 = !DILocation(line: 89, column: 24, scope: !1616)
!1620 = !DILocation(line: 89, column: 10, scope: !1616)
!1621 = !DILocation(line: 89, column: 3, scope: !1616)
!1622 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !252, file: !252, line: 41, type: !53, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !1623)
!1623 = !{!1624}
!1624 = !DILocalVariable(name: "file", arg: 1, scope: !1622, file: !252, line: 41, type: !55)
!1625 = !DILocation(line: 41, column: 41, scope: !1622)
!1626 = !DILocation(line: 43, column: 13, scope: !1622)
!1627 = !DILocation(line: 44, column: 1, scope: !1622)
!1628 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !252, file: !252, line: 78, type: !1629, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !1631)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{null, !73}
!1631 = !{!1632}
!1632 = !DILocalVariable(name: "ignore", arg: 1, scope: !1628, file: !252, line: 78, type: !73)
!1633 = !DILocation(line: 78, column: 37, scope: !1628)
!1634 = !DILocation(line: 80, column: 16, scope: !1628)
!1635 = !{!1636, !1636, i64 0}
!1636 = !{!"_Bool", !757, i64 0}
!1637 = !DILocation(line: 81, column: 1, scope: !1628)
!1638 = distinct !DISubprogram(name: "close_stdout", scope: !252, file: !252, line: 107, type: !989, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !1639)
!1639 = !{!1640}
!1640 = !DILocalVariable(name: "write_error", scope: !1641, file: !252, line: 112, type: !55)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !252, line: 111, column: 5)
!1642 = distinct !DILexicalBlock(scope: !1638, file: !252, line: 109, column: 7)
!1643 = !DILocation(line: 109, column: 21, scope: !1642)
!1644 = !DILocation(line: 109, column: 7, scope: !1642)
!1645 = !DILocation(line: 109, column: 29, scope: !1642)
!1646 = !DILocation(line: 110, column: 7, scope: !1642)
!1647 = !DILocation(line: 110, column: 12, scope: !1642)
!1648 = !{i8 0, i8 2}
!1649 = !DILocation(line: 114, column: 19, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1641, file: !252, line: 113, column: 11)
!1651 = !DILocation(line: 110, column: 25, scope: !1642)
!1652 = !DILocation(line: 110, column: 28, scope: !1642)
!1653 = !DILocation(line: 110, column: 34, scope: !1642)
!1654 = !DILocation(line: 109, column: 7, scope: !1638)
!1655 = !DILocation(line: 112, column: 33, scope: !1641)
!1656 = !DILocation(line: 112, column: 19, scope: !1641)
!1657 = !DILocation(line: 113, column: 11, scope: !1650)
!1658 = !DILocation(line: 113, column: 11, scope: !1641)
!1659 = !DILocation(line: 114, column: 36, scope: !1650)
!1660 = !DILocation(line: 114, column: 9, scope: !1650)
!1661 = !DILocation(line: 117, column: 9, scope: !1650)
!1662 = !DILocation(line: 119, column: 14, scope: !1641)
!1663 = !DILocation(line: 119, column: 7, scope: !1641)
!1664 = !DILocation(line: 122, column: 22, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1638, file: !252, line: 122, column: 8)
!1666 = !DILocation(line: 122, column: 8, scope: !1665)
!1667 = !DILocation(line: 122, column: 30, scope: !1665)
!1668 = !DILocation(line: 122, column: 8, scope: !1638)
!1669 = !DILocation(line: 123, column: 13, scope: !1665)
!1670 = !DILocation(line: 123, column: 6, scope: !1665)
!1671 = !DILocation(line: 124, column: 1, scope: !1638)
!1672 = distinct !DISubprogram(name: "hard_locale", scope: !1673, file: !1673, line: 38, type: !1674, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !674, variables: !1676)
!1673 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!73, !43}
!1676 = !{!1677, !1678, !1679}
!1677 = !DILocalVariable(name: "category", arg: 1, scope: !1672, file: !1673, line: 38, type: !43)
!1678 = !DILocalVariable(name: "hard", scope: !1672, file: !1673, line: 40, type: !73)
!1679 = !DILocalVariable(name: "p", scope: !1672, file: !1673, line: 41, type: !55)
!1680 = !DILocation(line: 38, column: 18, scope: !1672)
!1681 = !DILocation(line: 40, column: 8, scope: !1672)
!1682 = !DILocation(line: 41, column: 19, scope: !1672)
!1683 = !DILocation(line: 41, column: 15, scope: !1672)
!1684 = !DILocation(line: 43, column: 7, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1672, file: !1673, line: 43, column: 7)
!1686 = !DILocation(line: 43, column: 7, scope: !1672)
!1687 = !DILocation(line: 47, column: 15, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !1673, line: 47, column: 15)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !1673, line: 46, column: 9)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !1673, line: 45, column: 11)
!1691 = distinct !DILexicalBlock(scope: !1685, file: !1673, line: 44, column: 5)
!1692 = !DILocation(line: 47, column: 31, scope: !1688)
!1693 = !DILocation(line: 47, column: 36, scope: !1688)
!1694 = !DILocation(line: 47, column: 39, scope: !1688)
!1695 = !DILocation(line: 47, column: 59, scope: !1688)
!1696 = !DILocation(line: 47, column: 15, scope: !1689)
!1697 = !DILocation(line: 48, column: 13, scope: !1688)
!1698 = !DILocation(line: 71, column: 3, scope: !1672)
!1699 = distinct !DISubprogram(name: "imaxtostr", scope: !1700, file: !1700, line: 36, type: !1701, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !676, variables: !1703)
!1700 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!39, !679, !39}
!1703 = !{!1704, !1705, !1706}
!1704 = !DILocalVariable(name: "i", arg: 1, scope: !1699, file: !1700, line: 36, type: !679)
!1705 = !DILocalVariable(name: "buf", arg: 2, scope: !1699, file: !1700, line: 36, type: !39)
!1706 = !DILocalVariable(name: "p", scope: !1699, file: !1700, line: 38, type: !39)
!1707 = !DILocation(line: 36, column: 19, scope: !1699)
!1708 = !DILocation(line: 36, column: 28, scope: !1699)
!1709 = !DILocation(line: 38, column: 17, scope: !1699)
!1710 = !DILocation(line: 38, column: 9, scope: !1699)
!1711 = !DILocation(line: 39, column: 6, scope: !1699)
!1712 = !DILocation(line: 41, column: 9, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1699, file: !1700, line: 41, column: 7)
!1714 = !DILocation(line: 41, column: 7, scope: !1699)
!1715 = distinct !{!1715, !1716, !1718}
!1716 = !DILocation(line: 51, column: 7, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1713, file: !1700, line: 50, column: 5)
!1718 = !DILocation(line: 53, column: 28, scope: !1717)
!1719 = !DILocation(line: 52, column: 24, scope: !1717)
!1720 = !DILocation(line: 44, column: 24, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1713, file: !1700, line: 42, column: 5)
!1722 = !DILocation(line: 44, column: 20, scope: !1721)
!1723 = !DILocation(line: 44, column: 16, scope: !1721)
!1724 = !DILocation(line: 44, column: 10, scope: !1721)
!1725 = !DILocation(line: 44, column: 14, scope: !1721)
!1726 = !DILocation(line: 45, column: 17, scope: !1721)
!1727 = !DILocation(line: 45, column: 24, scope: !1721)
!1728 = !DILocation(line: 44, column: 9, scope: !1721)
!1729 = distinct !{!1729, !1730, !1731}
!1730 = !DILocation(line: 43, column: 7, scope: !1721)
!1731 = !DILocation(line: 45, column: 28, scope: !1721)
!1732 = !DILocation(line: 47, column: 8, scope: !1721)
!1733 = !DILocation(line: 47, column: 12, scope: !1721)
!1734 = !DILocation(line: 48, column: 5, scope: !1721)
!1735 = !DILocation(line: 52, column: 20, scope: !1717)
!1736 = !DILocation(line: 52, column: 16, scope: !1717)
!1737 = !DILocation(line: 52, column: 10, scope: !1717)
!1738 = !DILocation(line: 52, column: 14, scope: !1717)
!1739 = !DILocation(line: 53, column: 17, scope: !1717)
!1740 = !DILocation(line: 53, column: 24, scope: !1717)
!1741 = !DILocation(line: 52, column: 9, scope: !1717)
!1742 = !DILocation(line: 56, column: 3, scope: !1699)
!1743 = distinct !DISubprogram(name: "set_program_name", scope: !266, file: !266, line: 39, type: !53, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !262, variables: !1744)
!1744 = !{!1745, !1746, !1747}
!1745 = !DILocalVariable(name: "argv0", arg: 1, scope: !1743, file: !266, line: 39, type: !55)
!1746 = !DILocalVariable(name: "slash", scope: !1743, file: !266, line: 46, type: !55)
!1747 = !DILocalVariable(name: "base", scope: !1743, file: !266, line: 47, type: !55)
!1748 = !DILocation(line: 39, column: 31, scope: !1743)
!1749 = !DILocation(line: 51, column: 13, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1743, file: !266, line: 51, column: 7)
!1751 = !DILocation(line: 51, column: 7, scope: !1743)
!1752 = !DILocation(line: 55, column: 14, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1750, file: !266, line: 52, column: 5)
!1754 = !DILocation(line: 54, column: 7, scope: !1753)
!1755 = !DILocation(line: 56, column: 7, scope: !1753)
!1756 = !DILocation(line: 59, column: 11, scope: !1743)
!1757 = !DILocation(line: 46, column: 15, scope: !1743)
!1758 = !DILocation(line: 60, column: 17, scope: !1743)
!1759 = !DILocation(line: 60, column: 33, scope: !1743)
!1760 = !DILocation(line: 60, column: 11, scope: !1743)
!1761 = !DILocation(line: 47, column: 15, scope: !1743)
!1762 = !DILocation(line: 61, column: 12, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1743, file: !266, line: 61, column: 7)
!1764 = !DILocation(line: 61, column: 20, scope: !1763)
!1765 = !DILocation(line: 61, column: 25, scope: !1763)
!1766 = !DILocation(line: 61, column: 42, scope: !1763)
!1767 = !DILocation(line: 61, column: 28, scope: !1763)
!1768 = !DILocation(line: 61, column: 61, scope: !1763)
!1769 = !DILocation(line: 61, column: 7, scope: !1743)
!1770 = !DILocation(line: 64, column: 11, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !266, line: 64, column: 11)
!1772 = distinct !DILexicalBlock(scope: !1763, file: !266, line: 62, column: 5)
!1773 = !DILocation(line: 64, column: 36, scope: !1771)
!1774 = !DILocation(line: 64, column: 11, scope: !1772)
!1775 = !DILocation(line: 66, column: 24, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1771, file: !266, line: 65, column: 9)
!1777 = !DILocation(line: 70, column: 41, scope: !1776)
!1778 = !DILocation(line: 72, column: 9, scope: !1776)
!1779 = !DILocation(line: 84, column: 16, scope: !1743)
!1780 = !DILocation(line: 90, column: 27, scope: !1743)
!1781 = !DILocation(line: 92, column: 1, scope: !1743)
!1782 = distinct !DISubprogram(name: "clone_quoting_options", scope: !281, file: !281, line: 114, type: !1783, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !1786)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!1785, !1785}
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!1786 = !{!1787, !1788, !1789}
!1787 = !DILocalVariable(name: "o", arg: 1, scope: !1782, file: !281, line: 114, type: !1785)
!1788 = !DILocalVariable(name: "e", scope: !1782, file: !281, line: 116, type: !43)
!1789 = !DILocalVariable(name: "p", scope: !1782, file: !281, line: 117, type: !1785)
!1790 = !DILocation(line: 114, column: 48, scope: !1782)
!1791 = !DILocation(line: 116, column: 11, scope: !1782)
!1792 = !DILocation(line: 116, column: 7, scope: !1782)
!1793 = !DILocation(line: 117, column: 40, scope: !1782)
!1794 = !DILocation(line: 117, column: 31, scope: !1782)
!1795 = !DILocation(line: 117, column: 27, scope: !1782)
!1796 = !DILocation(line: 119, column: 9, scope: !1782)
!1797 = !DILocation(line: 120, column: 3, scope: !1782)
!1798 = distinct !DISubprogram(name: "get_quoting_style", scope: !281, file: !281, line: 125, type: !1799, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !1803)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!5, !1801}
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !288)
!1803 = !{!1804}
!1804 = !DILocalVariable(name: "o", arg: 1, scope: !1798, file: !281, line: 125, type: !1801)
!1805 = !DILocation(line: 125, column: 50, scope: !1798)
!1806 = !DILocation(line: 127, column: 11, scope: !1798)
!1807 = !DILocation(line: 127, column: 46, scope: !1798)
!1808 = !{!1809, !757, i64 0}
!1809 = !{!"quoting_options", !757, i64 0, !929, i64 4, !757, i64 8, !756, i64 40, !756, i64 48}
!1810 = !DILocation(line: 127, column: 3, scope: !1798)
!1811 = distinct !DISubprogram(name: "set_quoting_style", scope: !281, file: !281, line: 133, type: !1812, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !1814)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{null, !1785, !5}
!1814 = !{!1815, !1816}
!1815 = !DILocalVariable(name: "o", arg: 1, scope: !1811, file: !281, line: 133, type: !1785)
!1816 = !DILocalVariable(name: "s", arg: 2, scope: !1811, file: !281, line: 133, type: !5)
!1817 = !DILocation(line: 133, column: 44, scope: !1811)
!1818 = !DILocation(line: 133, column: 66, scope: !1811)
!1819 = !DILocation(line: 135, column: 4, scope: !1811)
!1820 = !DILocation(line: 135, column: 39, scope: !1811)
!1821 = !DILocation(line: 135, column: 45, scope: !1811)
!1822 = !DILocation(line: 136, column: 1, scope: !1811)
!1823 = distinct !DISubprogram(name: "set_char_quoting", scope: !281, file: !281, line: 144, type: !1824, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !1826)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!43, !1785, !40, !43}
!1826 = !{!1827, !1828, !1829, !1830, !1831, !1833, !1834}
!1827 = !DILocalVariable(name: "o", arg: 1, scope: !1823, file: !281, line: 144, type: !1785)
!1828 = !DILocalVariable(name: "c", arg: 2, scope: !1823, file: !281, line: 144, type: !40)
!1829 = !DILocalVariable(name: "i", arg: 3, scope: !1823, file: !281, line: 144, type: !43)
!1830 = !DILocalVariable(name: "uc", scope: !1823, file: !281, line: 146, type: !42)
!1831 = !DILocalVariable(name: "p", scope: !1823, file: !281, line: 147, type: !1832)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!1833 = !DILocalVariable(name: "shift", scope: !1823, file: !281, line: 149, type: !43)
!1834 = !DILocalVariable(name: "r", scope: !1823, file: !281, line: 150, type: !43)
!1835 = !DILocation(line: 144, column: 43, scope: !1823)
!1836 = !DILocation(line: 144, column: 51, scope: !1823)
!1837 = !DILocation(line: 144, column: 58, scope: !1823)
!1838 = !DILocation(line: 146, column: 17, scope: !1823)
!1839 = !DILocation(line: 148, column: 6, scope: !1823)
!1840 = !DILocation(line: 148, column: 62, scope: !1823)
!1841 = !DILocation(line: 148, column: 57, scope: !1823)
!1842 = !DILocation(line: 147, column: 17, scope: !1823)
!1843 = !DILocation(line: 149, column: 18, scope: !1823)
!1844 = !DILocation(line: 149, column: 15, scope: !1823)
!1845 = !DILocation(line: 149, column: 7, scope: !1823)
!1846 = !DILocation(line: 150, column: 12, scope: !1823)
!1847 = !DILocation(line: 150, column: 15, scope: !1823)
!1848 = !DILocation(line: 150, column: 25, scope: !1823)
!1849 = !DILocation(line: 150, column: 7, scope: !1823)
!1850 = !DILocation(line: 151, column: 13, scope: !1823)
!1851 = !DILocation(line: 151, column: 18, scope: !1823)
!1852 = !DILocation(line: 151, column: 23, scope: !1823)
!1853 = !DILocation(line: 151, column: 6, scope: !1823)
!1854 = !DILocation(line: 152, column: 3, scope: !1823)
!1855 = distinct !DISubprogram(name: "set_quoting_flags", scope: !281, file: !281, line: 160, type: !1856, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !1858)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!43, !1785, !43}
!1858 = !{!1859, !1860, !1861}
!1859 = !DILocalVariable(name: "o", arg: 1, scope: !1855, file: !281, line: 160, type: !1785)
!1860 = !DILocalVariable(name: "i", arg: 2, scope: !1855, file: !281, line: 160, type: !43)
!1861 = !DILocalVariable(name: "r", scope: !1855, file: !281, line: 162, type: !43)
!1862 = !DILocation(line: 160, column: 44, scope: !1855)
!1863 = !DILocation(line: 160, column: 51, scope: !1855)
!1864 = !DILocation(line: 163, column: 8, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1855, file: !281, line: 163, column: 7)
!1866 = !DILocation(line: 163, column: 7, scope: !1855)
!1867 = !DILocation(line: 165, column: 10, scope: !1855)
!1868 = !{!1809, !929, i64 4}
!1869 = !DILocation(line: 162, column: 7, scope: !1855)
!1870 = !DILocation(line: 166, column: 12, scope: !1855)
!1871 = !DILocation(line: 167, column: 3, scope: !1855)
!1872 = distinct !DISubprogram(name: "set_custom_quoting", scope: !281, file: !281, line: 171, type: !1873, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !1875)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{null, !1785, !55, !55}
!1875 = !{!1876, !1877, !1878}
!1876 = !DILocalVariable(name: "o", arg: 1, scope: !1872, file: !281, line: 171, type: !1785)
!1877 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1872, file: !281, line: 172, type: !55)
!1878 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1872, file: !281, line: 172, type: !55)
!1879 = !DILocation(line: 171, column: 45, scope: !1872)
!1880 = !DILocation(line: 172, column: 33, scope: !1872)
!1881 = !DILocation(line: 172, column: 57, scope: !1872)
!1882 = !DILocation(line: 174, column: 8, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1872, file: !281, line: 174, column: 7)
!1884 = !DILocation(line: 174, column: 7, scope: !1872)
!1885 = !DILocation(line: 176, column: 6, scope: !1872)
!1886 = !DILocation(line: 176, column: 12, scope: !1872)
!1887 = !DILocation(line: 177, column: 8, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1872, file: !281, line: 177, column: 7)
!1889 = !DILocation(line: 177, column: 23, scope: !1888)
!1890 = !DILocation(line: 177, column: 19, scope: !1888)
!1891 = !DILocation(line: 178, column: 5, scope: !1888)
!1892 = !DILocation(line: 179, column: 6, scope: !1872)
!1893 = !DILocation(line: 179, column: 17, scope: !1872)
!1894 = !{!1809, !756, i64 40}
!1895 = !DILocation(line: 180, column: 6, scope: !1872)
!1896 = !DILocation(line: 180, column: 18, scope: !1872)
!1897 = !{!1809, !756, i64 48}
!1898 = !DILocation(line: 181, column: 1, scope: !1872)
!1899 = distinct !DISubprogram(name: "quotearg_buffer", scope: !281, file: !281, line: 776, type: !1900, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !1902)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!44, !39, !44, !55, !44, !1801}
!1902 = !{!1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910}
!1903 = !DILocalVariable(name: "buffer", arg: 1, scope: !1899, file: !281, line: 776, type: !39)
!1904 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1899, file: !281, line: 776, type: !44)
!1905 = !DILocalVariable(name: "arg", arg: 3, scope: !1899, file: !281, line: 777, type: !55)
!1906 = !DILocalVariable(name: "argsize", arg: 4, scope: !1899, file: !281, line: 777, type: !44)
!1907 = !DILocalVariable(name: "o", arg: 5, scope: !1899, file: !281, line: 778, type: !1801)
!1908 = !DILocalVariable(name: "p", scope: !1899, file: !281, line: 780, type: !1801)
!1909 = !DILocalVariable(name: "e", scope: !1899, file: !281, line: 781, type: !43)
!1910 = !DILocalVariable(name: "r", scope: !1899, file: !281, line: 782, type: !44)
!1911 = !DILocation(line: 776, column: 24, scope: !1899)
!1912 = !DILocation(line: 776, column: 39, scope: !1899)
!1913 = !DILocation(line: 777, column: 30, scope: !1899)
!1914 = !DILocation(line: 777, column: 42, scope: !1899)
!1915 = !DILocation(line: 778, column: 48, scope: !1899)
!1916 = !DILocation(line: 780, column: 37, scope: !1899)
!1917 = !DILocation(line: 780, column: 33, scope: !1899)
!1918 = !DILocation(line: 781, column: 11, scope: !1899)
!1919 = !DILocation(line: 781, column: 7, scope: !1899)
!1920 = !DILocation(line: 783, column: 43, scope: !1899)
!1921 = !DILocation(line: 783, column: 53, scope: !1899)
!1922 = !DILocation(line: 783, column: 60, scope: !1899)
!1923 = !DILocation(line: 784, column: 43, scope: !1899)
!1924 = !DILocation(line: 784, column: 58, scope: !1899)
!1925 = !DILocation(line: 782, column: 14, scope: !1899)
!1926 = !DILocation(line: 782, column: 10, scope: !1899)
!1927 = !DILocation(line: 785, column: 9, scope: !1899)
!1928 = !DILocation(line: 786, column: 3, scope: !1899)
!1929 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !281, file: !281, line: 248, type: !1930, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !1934)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!44, !39, !44, !55, !44, !5, !43, !1932, !55, !55}
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!1934 = !{!1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1959, !1960, !1961, !1962, !1963, !1966, !1967, !1982, !1985, !1986, !1993}
!1935 = !DILocalVariable(name: "buffer", arg: 1, scope: !1929, file: !281, line: 248, type: !39)
!1936 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1929, file: !281, line: 248, type: !44)
!1937 = !DILocalVariable(name: "arg", arg: 3, scope: !1929, file: !281, line: 249, type: !55)
!1938 = !DILocalVariable(name: "argsize", arg: 4, scope: !1929, file: !281, line: 249, type: !44)
!1939 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1929, file: !281, line: 250, type: !5)
!1940 = !DILocalVariable(name: "flags", arg: 6, scope: !1929, file: !281, line: 250, type: !43)
!1941 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1929, file: !281, line: 251, type: !1932)
!1942 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1929, file: !281, line: 252, type: !55)
!1943 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1929, file: !281, line: 253, type: !55)
!1944 = !DILocalVariable(name: "i", scope: !1929, file: !281, line: 255, type: !44)
!1945 = !DILocalVariable(name: "len", scope: !1929, file: !281, line: 256, type: !44)
!1946 = !DILocalVariable(name: "orig_buffersize", scope: !1929, file: !281, line: 257, type: !44)
!1947 = !DILocalVariable(name: "quote_string", scope: !1929, file: !281, line: 258, type: !55)
!1948 = !DILocalVariable(name: "quote_string_len", scope: !1929, file: !281, line: 259, type: !44)
!1949 = !DILocalVariable(name: "backslash_escapes", scope: !1929, file: !281, line: 260, type: !73)
!1950 = !DILocalVariable(name: "unibyte_locale", scope: !1929, file: !281, line: 261, type: !73)
!1951 = !DILocalVariable(name: "elide_outer_quotes", scope: !1929, file: !281, line: 262, type: !73)
!1952 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1929, file: !281, line: 263, type: !73)
!1953 = !DILocalVariable(name: "encountered_single_quote", scope: !1929, file: !281, line: 264, type: !73)
!1954 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1929, file: !281, line: 265, type: !73)
!1955 = !DILocalVariable(name: "c", scope: !1956, file: !281, line: 394, type: !42)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !281, line: 393, column: 5)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !281, line: 392, column: 3)
!1958 = distinct !DILexicalBlock(scope: !1929, file: !281, line: 392, column: 3)
!1959 = !DILocalVariable(name: "esc", scope: !1956, file: !281, line: 395, type: !42)
!1960 = !DILocalVariable(name: "is_right_quote", scope: !1956, file: !281, line: 396, type: !73)
!1961 = !DILocalVariable(name: "escaping", scope: !1956, file: !281, line: 397, type: !73)
!1962 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1956, file: !281, line: 398, type: !73)
!1963 = !DILocalVariable(name: "m", scope: !1964, file: !281, line: 602, type: !44)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !281, line: 600, column: 11)
!1965 = distinct !DILexicalBlock(scope: !1956, file: !281, line: 418, column: 9)
!1966 = !DILocalVariable(name: "printable", scope: !1964, file: !281, line: 604, type: !73)
!1967 = !DILocalVariable(name: "mbstate", scope: !1968, file: !281, line: 613, type: !1970)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !281, line: 612, column: 15)
!1969 = distinct !DILexicalBlock(scope: !1964, file: !281, line: 606, column: 17)
!1970 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1971, line: 6, baseType: !1972)
!1971 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1972 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1973, line: 21, baseType: !1974)
!1973 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1973, line: 13, size: 64, elements: !1975)
!1975 = !{!1976, !1977}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1974, file: !1973, line: 15, baseType: !43, size: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1974, file: !1973, line: 20, baseType: !1978, size: 32, offset: 32)
!1978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1974, file: !1973, line: 16, size: 32, elements: !1979)
!1979 = !{!1980, !1981}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1978, file: !1973, line: 18, baseType: !230, size: 32)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1978, file: !1973, line: 19, baseType: !136, size: 32)
!1982 = !DILocalVariable(name: "w", scope: !1983, file: !281, line: 623, type: !1984)
!1983 = distinct !DILexicalBlock(scope: !1968, file: !281, line: 622, column: 19)
!1984 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !45, line: 90, baseType: !43)
!1985 = !DILocalVariable(name: "bytes", scope: !1983, file: !281, line: 624, type: !44)
!1986 = !DILocalVariable(name: "j", scope: !1987, file: !281, line: 649, type: !44)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !281, line: 648, column: 27)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !281, line: 646, column: 29)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !281, line: 641, column: 23)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !281, line: 633, column: 30)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !281, line: 628, column: 30)
!1992 = distinct !DILexicalBlock(scope: !1983, file: !281, line: 626, column: 25)
!1993 = !DILocalVariable(name: "ilim", scope: !1994, file: !281, line: 676, type: !44)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !281, line: 673, column: 15)
!1995 = distinct !DILexicalBlock(scope: !1964, file: !281, line: 672, column: 17)
!1996 = !DILocation(line: 248, column: 33, scope: !1929)
!1997 = !DILocation(line: 248, column: 48, scope: !1929)
!1998 = !DILocation(line: 249, column: 39, scope: !1929)
!1999 = !DILocation(line: 249, column: 51, scope: !1929)
!2000 = !DILocation(line: 250, column: 46, scope: !1929)
!2001 = !DILocation(line: 250, column: 65, scope: !1929)
!2002 = !DILocation(line: 251, column: 47, scope: !1929)
!2003 = !DILocation(line: 252, column: 39, scope: !1929)
!2004 = !DILocation(line: 253, column: 39, scope: !1929)
!2005 = !DILocation(line: 256, column: 10, scope: !1929)
!2006 = !DILocation(line: 257, column: 10, scope: !1929)
!2007 = !DILocation(line: 258, column: 15, scope: !1929)
!2008 = !DILocation(line: 259, column: 10, scope: !1929)
!2009 = !DILocation(line: 260, column: 8, scope: !1929)
!2010 = !DILocation(line: 261, column: 25, scope: !1929)
!2011 = !DILocation(line: 261, column: 36, scope: !1929)
!2012 = !DILocation(line: 262, column: 8, scope: !1929)
!2013 = !DILocation(line: 263, column: 8, scope: !1929)
!2014 = !DILocation(line: 264, column: 8, scope: !1929)
!2015 = !DILocation(line: 265, column: 8, scope: !1929)
!2016 = !DILocation(line: 265, column: 3, scope: !1929)
!2017 = !DILocation(line: 308, column: 3, scope: !1929)
!2018 = !DILocation(line: 315, column: 11, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1929, file: !281, line: 309, column: 5)
!2020 = !DILocation(line: 315, column: 12, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2019, file: !281, line: 315, column: 11)
!2022 = !DILocation(line: 316, column: 9, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !281, line: 316, column: 9)
!2024 = distinct !DILexicalBlock(scope: !2021, file: !281, line: 316, column: 9)
!2025 = !DILocation(line: 316, column: 9, scope: !2024)
!2026 = !DILocation(line: 354, column: 26, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !281, line: 332, column: 11)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !281, line: 331, column: 13)
!2029 = distinct !DILexicalBlock(scope: !2019, file: !281, line: 330, column: 7)
!2030 = !DILocation(line: 355, column: 27, scope: !2027)
!2031 = !DILocation(line: 356, column: 11, scope: !2027)
!2032 = !DILocation(line: 357, column: 14, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2029, file: !281, line: 357, column: 13)
!2034 = !DILocation(line: 357, column: 13, scope: !2029)
!2035 = !DILocation(line: 358, column: 43, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !281, line: 358, column: 11)
!2037 = distinct !DILexicalBlock(scope: !2033, file: !281, line: 358, column: 11)
!2038 = !DILocation(line: 358, column: 11, scope: !2037)
!2039 = !DILocation(line: 359, column: 13, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !281, line: 359, column: 13)
!2041 = distinct !DILexicalBlock(scope: !2036, file: !281, line: 359, column: 13)
!2042 = !DILocation(line: 359, column: 13, scope: !2041)
!2043 = !DILocation(line: 358, column: 70, scope: !2036)
!2044 = distinct !{!2044, !2038, !2045}
!2045 = !DILocation(line: 359, column: 13, scope: !2037)
!2046 = !DILocation(line: 362, column: 28, scope: !2029)
!2047 = !DILocation(line: 364, column: 7, scope: !2019)
!2048 = !DILocation(line: 367, column: 7, scope: !2019)
!2049 = !DILocation(line: 370, column: 7, scope: !2019)
!2050 = !DILocation(line: 373, column: 12, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2019, file: !281, line: 373, column: 11)
!2052 = !DILocation(line: 373, column: 11, scope: !2019)
!2053 = !DILocation(line: 378, column: 12, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2019, file: !281, line: 378, column: 11)
!2055 = !DILocation(line: 378, column: 11, scope: !2019)
!2056 = !DILocation(line: 379, column: 9, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !281, line: 379, column: 9)
!2058 = distinct !DILexicalBlock(scope: !2054, file: !281, line: 379, column: 9)
!2059 = !DILocation(line: 379, column: 9, scope: !2058)
!2060 = !DILocation(line: 386, column: 7, scope: !2019)
!2061 = !DILocation(line: 389, column: 7, scope: !2019)
!2062 = !DILocation(line: 255, column: 10, scope: !1929)
!2063 = !DILocation(line: 392, column: 8, scope: !1958)
!2064 = !DILocation(line: 392, column: 27, scope: !1957)
!2065 = !DILocation(line: 392, column: 19, scope: !1957)
!2066 = !DILocation(line: 392, column: 60, scope: !1957)
!2067 = !DILocation(line: 392, column: 3, scope: !1958)
!2068 = !DILocation(line: 392, column: 41, scope: !1957)
!2069 = !DILocation(line: 392, column: 48, scope: !1957)
!2070 = !DILocation(line: 396, column: 12, scope: !1956)
!2071 = !DILocation(line: 397, column: 12, scope: !1956)
!2072 = !DILocation(line: 398, column: 12, scope: !1956)
!2073 = !DILocation(line: 401, column: 11, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !1956, file: !281, line: 400, column: 11)
!2075 = !DILocation(line: 403, column: 17, scope: !2074)
!2076 = !DILocation(line: 404, column: 39, scope: !2074)
!2077 = !DILocation(line: 408, column: 32, scope: !2074)
!2078 = !DILocation(line: 404, column: 19, scope: !2074)
!2079 = !DILocation(line: 404, column: 15, scope: !2074)
!2080 = !DILocation(line: 409, column: 11, scope: !2074)
!2081 = !DILocation(line: 409, column: 26, scope: !2074)
!2082 = !DILocation(line: 409, column: 14, scope: !2074)
!2083 = !DILocation(line: 409, column: 63, scope: !2074)
!2084 = !DILocation(line: 400, column: 11, scope: !1956)
!2085 = !DILocation(line: 416, column: 11, scope: !1956)
!2086 = !DILocation(line: 394, column: 21, scope: !1956)
!2087 = !DILocation(line: 417, column: 7, scope: !1956)
!2088 = !DILocation(line: 420, column: 15, scope: !1965)
!2089 = !DILocation(line: 422, column: 15, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !281, line: 422, column: 15)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !281, line: 421, column: 13)
!2092 = distinct !DILexicalBlock(scope: !1965, file: !281, line: 420, column: 15)
!2093 = !DILocation(line: 422, column: 15, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2090, file: !281, line: 422, column: 15)
!2095 = !DILocation(line: 422, column: 15, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !281, line: 422, column: 15)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !281, line: 422, column: 15)
!2098 = distinct !DILexicalBlock(scope: !2094, file: !281, line: 422, column: 15)
!2099 = !DILocation(line: 422, column: 15, scope: !2097)
!2100 = !DILocation(line: 422, column: 15, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !281, line: 422, column: 15)
!2102 = distinct !DILexicalBlock(scope: !2098, file: !281, line: 422, column: 15)
!2103 = !DILocation(line: 422, column: 15, scope: !2102)
!2104 = !DILocation(line: 422, column: 15, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !281, line: 422, column: 15)
!2106 = distinct !DILexicalBlock(scope: !2098, file: !281, line: 422, column: 15)
!2107 = !DILocation(line: 422, column: 15, scope: !2106)
!2108 = !DILocation(line: 422, column: 15, scope: !2098)
!2109 = !DILocation(line: 422, column: 15, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !281, line: 422, column: 15)
!2111 = distinct !DILexicalBlock(scope: !2090, file: !281, line: 422, column: 15)
!2112 = !DILocation(line: 422, column: 15, scope: !2111)
!2113 = !DILocation(line: 430, column: 19, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2091, file: !281, line: 429, column: 19)
!2115 = !DILocation(line: 430, column: 24, scope: !2114)
!2116 = !DILocation(line: 430, column: 28, scope: !2114)
!2117 = !DILocation(line: 430, column: 38, scope: !2114)
!2118 = !DILocation(line: 430, column: 48, scope: !2114)
!2119 = !DILocation(line: 430, column: 59, scope: !2114)
!2120 = !DILocation(line: 432, column: 19, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !281, line: 432, column: 19)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !281, line: 432, column: 19)
!2123 = distinct !DILexicalBlock(scope: !2114, file: !281, line: 431, column: 17)
!2124 = !DILocation(line: 432, column: 19, scope: !2122)
!2125 = !DILocation(line: 433, column: 19, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !281, line: 433, column: 19)
!2127 = distinct !DILexicalBlock(scope: !2123, file: !281, line: 433, column: 19)
!2128 = !DILocation(line: 433, column: 19, scope: !2127)
!2129 = !DILocation(line: 434, column: 17, scope: !2123)
!2130 = !DILocation(line: 441, column: 20, scope: !2092)
!2131 = !DILocation(line: 446, column: 11, scope: !1965)
!2132 = !DILocation(line: 449, column: 19, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !1965, file: !281, line: 447, column: 13)
!2134 = !DILocation(line: 455, column: 19, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2133, file: !281, line: 454, column: 19)
!2136 = !DILocation(line: 455, column: 24, scope: !2135)
!2137 = !DILocation(line: 455, column: 28, scope: !2135)
!2138 = !DILocation(line: 455, column: 38, scope: !2135)
!2139 = !DILocation(line: 455, column: 47, scope: !2135)
!2140 = !DILocation(line: 455, column: 41, scope: !2135)
!2141 = !DILocation(line: 455, column: 52, scope: !2135)
!2142 = !DILocation(line: 454, column: 19, scope: !2133)
!2143 = !DILocation(line: 456, column: 25, scope: !2135)
!2144 = !DILocation(line: 456, column: 17, scope: !2135)
!2145 = !DILocation(line: 463, column: 25, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2135, file: !281, line: 457, column: 19)
!2147 = !DILocation(line: 467, column: 21, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !281, line: 467, column: 21)
!2149 = distinct !DILexicalBlock(scope: !2146, file: !281, line: 467, column: 21)
!2150 = !DILocation(line: 467, column: 21, scope: !2149)
!2151 = !DILocation(line: 468, column: 21, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !281, line: 468, column: 21)
!2153 = distinct !DILexicalBlock(scope: !2146, file: !281, line: 468, column: 21)
!2154 = !DILocation(line: 468, column: 21, scope: !2153)
!2155 = !DILocation(line: 469, column: 21, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !281, line: 469, column: 21)
!2157 = distinct !DILexicalBlock(scope: !2146, file: !281, line: 469, column: 21)
!2158 = !DILocation(line: 469, column: 21, scope: !2157)
!2159 = !DILocation(line: 470, column: 21, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !281, line: 470, column: 21)
!2161 = distinct !DILexicalBlock(scope: !2146, file: !281, line: 470, column: 21)
!2162 = !DILocation(line: 470, column: 21, scope: !2161)
!2163 = !DILocation(line: 471, column: 21, scope: !2146)
!2164 = !DILocation(line: 395, column: 21, scope: !1956)
!2165 = !DILocation(line: 484, column: 31, scope: !1965)
!2166 = !DILocation(line: 485, column: 31, scope: !1965)
!2167 = !DILocation(line: 487, column: 31, scope: !1965)
!2168 = !DILocation(line: 488, column: 31, scope: !1965)
!2169 = !DILocation(line: 489, column: 31, scope: !1965)
!2170 = !DILocation(line: 492, column: 15, scope: !1965)
!2171 = !DILocation(line: 494, column: 19, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !281, line: 493, column: 13)
!2173 = distinct !DILexicalBlock(scope: !1965, file: !281, line: 492, column: 15)
!2174 = !DILocation(line: 501, column: 33, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !1965, file: !281, line: 501, column: 15)
!2176 = !DILocation(line: 506, column: 15, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !1965, file: !281, line: 505, column: 15)
!2178 = !DILocation(line: 510, column: 15, scope: !1965)
!2179 = !DILocation(line: 518, column: 26, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !1965, file: !281, line: 518, column: 15)
!2181 = !DILocation(line: 518, column: 15, scope: !1965)
!2182 = !DILocation(line: 518, column: 40, scope: !2180)
!2183 = !DILocation(line: 518, column: 47, scope: !2180)
!2184 = !DILocation(line: 522, column: 17, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !1965, file: !281, line: 522, column: 15)
!2186 = !DILocation(line: 518, column: 18, scope: !2180)
!2187 = !DILocation(line: 518, column: 65, scope: !2180)
!2188 = !DILocation(line: 522, column: 15, scope: !1965)
!2189 = !DILocation(line: 526, column: 11, scope: !1965)
!2190 = !DILocation(line: 541, column: 15, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !1965, file: !281, line: 540, column: 15)
!2192 = !DILocation(line: 548, column: 15, scope: !1965)
!2193 = !DILocation(line: 550, column: 19, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !281, line: 549, column: 13)
!2195 = distinct !DILexicalBlock(scope: !1965, file: !281, line: 548, column: 15)
!2196 = !DILocation(line: 553, column: 19, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2194, file: !281, line: 553, column: 19)
!2198 = !DILocation(line: 553, column: 35, scope: !2197)
!2199 = !DILocation(line: 553, column: 30, scope: !2197)
!2200 = !DILocation(line: 562, column: 15, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !281, line: 562, column: 15)
!2202 = distinct !DILexicalBlock(scope: !2194, file: !281, line: 562, column: 15)
!2203 = !DILocation(line: 562, column: 15, scope: !2202)
!2204 = !DILocation(line: 563, column: 15, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !281, line: 563, column: 15)
!2206 = distinct !DILexicalBlock(scope: !2194, file: !281, line: 563, column: 15)
!2207 = !DILocation(line: 563, column: 15, scope: !2206)
!2208 = !DILocation(line: 564, column: 15, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !281, line: 564, column: 15)
!2210 = distinct !DILexicalBlock(scope: !2194, file: !281, line: 564, column: 15)
!2211 = !DILocation(line: 564, column: 15, scope: !2210)
!2212 = !DILocation(line: 566, column: 13, scope: !2194)
!2213 = !DILocation(line: 606, column: 17, scope: !1964)
!2214 = !DILocation(line: 602, column: 20, scope: !1964)
!2215 = !DILocation(line: 609, column: 29, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !1969, file: !281, line: 607, column: 15)
!2217 = !DILocation(line: 609, column: 27, scope: !2216)
!2218 = !DILocation(line: 604, column: 18, scope: !1964)
!2219 = !DILocation(line: 610, column: 15, scope: !2216)
!2220 = !DILocation(line: 613, column: 17, scope: !1968)
!2221 = !DILocation(line: 614, column: 17, scope: !1968)
!2222 = !DILocation(line: 618, column: 29, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !1968, file: !281, line: 618, column: 21)
!2224 = !DILocation(line: 618, column: 21, scope: !1968)
!2225 = !DILocation(line: 619, column: 29, scope: !2223)
!2226 = !DILocation(line: 619, column: 19, scope: !2223)
!2227 = !DILocation(line: 621, column: 17, scope: !1968)
!2228 = distinct !{!2228, !2227, !2229}
!2229 = !DILocation(line: 667, column: 44, scope: !1968)
!2230 = !DILocation(line: 623, column: 21, scope: !1983)
!2231 = !DILocation(line: 624, column: 56, scope: !1983)
!2232 = !DILocation(line: 624, column: 50, scope: !1983)
!2233 = !DILocation(line: 625, column: 53, scope: !1983)
!2234 = !DILocation(line: 613, column: 27, scope: !1968)
!2235 = !DILocation(line: 623, column: 29, scope: !1983)
!2236 = !DILocation(line: 624, column: 36, scope: !1983)
!2237 = !DILocation(line: 624, column: 28, scope: !1983)
!2238 = !DILocation(line: 626, column: 25, scope: !1983)
!2239 = !DILocation(line: 636, column: 38, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !1990, file: !281, line: 634, column: 23)
!2241 = !DILocation(line: 636, column: 48, scope: !2240)
!2242 = !DILocation(line: 636, column: 51, scope: !2240)
!2243 = !DILocation(line: 636, column: 25, scope: !2240)
!2244 = !DILocation(line: 637, column: 28, scope: !2240)
!2245 = !DILocation(line: 636, column: 34, scope: !2240)
!2246 = distinct !{!2246, !2243, !2244}
!2247 = !DILocation(line: 650, column: 43, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !281, line: 650, column: 29)
!2249 = distinct !DILexicalBlock(scope: !1987, file: !281, line: 650, column: 29)
!2250 = !DILocation(line: 647, column: 29, scope: !1988)
!2251 = !DILocation(line: 649, column: 36, scope: !1987)
!2252 = !DILocation(line: 651, column: 49, scope: !2248)
!2253 = !DILocation(line: 651, column: 39, scope: !2248)
!2254 = !DILocation(line: 651, column: 31, scope: !2248)
!2255 = !DILocation(line: 650, column: 53, scope: !2248)
!2256 = !DILocation(line: 650, column: 29, scope: !2249)
!2257 = distinct !{!2257, !2256, !2258}
!2258 = !DILocation(line: 659, column: 33, scope: !2249)
!2259 = !DILocation(line: 666, column: 19, scope: !1968)
!2260 = !DILocation(line: 662, column: 41, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !1989, file: !281, line: 662, column: 29)
!2262 = !DILocation(line: 662, column: 31, scope: !2261)
!2263 = !DILocation(line: 662, column: 29, scope: !1989)
!2264 = !DILocation(line: 664, column: 27, scope: !1989)
!2265 = !DILocation(line: 667, column: 26, scope: !1968)
!2266 = !DILocation(line: 667, column: 24, scope: !1968)
!2267 = !DILocation(line: 666, column: 19, scope: !1983)
!2268 = !DILocation(line: 668, column: 15, scope: !1969)
!2269 = !DILocation(line: 670, column: 40, scope: !1964)
!2270 = !DILocation(line: 672, column: 19, scope: !1995)
!2271 = !DILocation(line: 672, column: 45, scope: !1995)
!2272 = !DILocation(line: 672, column: 23, scope: !1995)
!2273 = !DILocation(line: 676, column: 33, scope: !1994)
!2274 = !DILocation(line: 676, column: 24, scope: !1994)
!2275 = !DILocation(line: 678, column: 17, scope: !1994)
!2276 = !DILocation(line: 680, column: 43, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !281, line: 680, column: 25)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !281, line: 679, column: 19)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !281, line: 678, column: 17)
!2280 = distinct !DILexicalBlock(scope: !1994, file: !281, line: 678, column: 17)
!2281 = !DILocation(line: 682, column: 25, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !281, line: 682, column: 25)
!2283 = distinct !DILexicalBlock(scope: !2277, file: !281, line: 681, column: 23)
!2284 = !DILocation(line: 682, column: 25, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2282, file: !281, line: 682, column: 25)
!2286 = !DILocation(line: 682, column: 25, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !281, line: 682, column: 25)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !281, line: 682, column: 25)
!2289 = distinct !DILexicalBlock(scope: !2285, file: !281, line: 682, column: 25)
!2290 = !DILocation(line: 682, column: 25, scope: !2288)
!2291 = !DILocation(line: 682, column: 25, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !281, line: 682, column: 25)
!2293 = distinct !DILexicalBlock(scope: !2289, file: !281, line: 682, column: 25)
!2294 = !DILocation(line: 682, column: 25, scope: !2293)
!2295 = !DILocation(line: 682, column: 25, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !281, line: 682, column: 25)
!2297 = distinct !DILexicalBlock(scope: !2289, file: !281, line: 682, column: 25)
!2298 = !DILocation(line: 682, column: 25, scope: !2297)
!2299 = !DILocation(line: 682, column: 25, scope: !2289)
!2300 = !DILocation(line: 682, column: 25, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !281, line: 682, column: 25)
!2302 = distinct !DILexicalBlock(scope: !2282, file: !281, line: 682, column: 25)
!2303 = !DILocation(line: 682, column: 25, scope: !2302)
!2304 = !DILocation(line: 683, column: 25, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !281, line: 683, column: 25)
!2306 = distinct !DILexicalBlock(scope: !2283, file: !281, line: 683, column: 25)
!2307 = !DILocation(line: 683, column: 25, scope: !2306)
!2308 = !DILocation(line: 684, column: 25, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !281, line: 684, column: 25)
!2310 = distinct !DILexicalBlock(scope: !2283, file: !281, line: 684, column: 25)
!2311 = !DILocation(line: 684, column: 25, scope: !2310)
!2312 = !DILocation(line: 685, column: 38, scope: !2283)
!2313 = !DILocation(line: 685, column: 33, scope: !2283)
!2314 = !DILocation(line: 686, column: 23, scope: !2283)
!2315 = !DILocation(line: 687, column: 30, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2277, file: !281, line: 687, column: 30)
!2317 = !DILocation(line: 687, column: 30, scope: !2277)
!2318 = !DILocation(line: 689, column: 25, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !281, line: 689, column: 25)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !281, line: 689, column: 25)
!2321 = distinct !DILexicalBlock(scope: !2316, file: !281, line: 688, column: 23)
!2322 = !DILocation(line: 689, column: 25, scope: !2320)
!2323 = !DILocation(line: 691, column: 23, scope: !2321)
!2324 = !DILocation(line: 692, column: 35, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2278, file: !281, line: 692, column: 25)
!2326 = !DILocation(line: 692, column: 30, scope: !2325)
!2327 = !DILocation(line: 692, column: 25, scope: !2278)
!2328 = !DILocation(line: 694, column: 21, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !281, line: 694, column: 21)
!2330 = distinct !DILexicalBlock(scope: !2278, file: !281, line: 694, column: 21)
!2331 = !DILocation(line: 694, column: 21, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !281, line: 694, column: 21)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !281, line: 694, column: 21)
!2334 = distinct !DILexicalBlock(scope: !2329, file: !281, line: 694, column: 21)
!2335 = !DILocation(line: 694, column: 21, scope: !2333)
!2336 = !DILocation(line: 694, column: 21, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !281, line: 694, column: 21)
!2338 = distinct !DILexicalBlock(scope: !2334, file: !281, line: 694, column: 21)
!2339 = !DILocation(line: 694, column: 21, scope: !2338)
!2340 = !DILocation(line: 694, column: 21, scope: !2334)
!2341 = !DILocation(line: 695, column: 21, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !281, line: 695, column: 21)
!2343 = distinct !DILexicalBlock(scope: !2278, file: !281, line: 695, column: 21)
!2344 = !DILocation(line: 695, column: 21, scope: !2343)
!2345 = !DILocation(line: 696, column: 25, scope: !2278)
!2346 = !DILocation(line: 678, column: 17, scope: !2279)
!2347 = distinct !{!2347, !2348, !2349}
!2348 = !DILocation(line: 678, column: 17, scope: !2280)
!2349 = !DILocation(line: 697, column: 19, scope: !2280)
!2350 = !DILocation(line: 704, column: 34, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !1956, file: !281, line: 704, column: 11)
!2352 = !DILocation(line: 706, column: 14, scope: !2351)
!2353 = !DILocation(line: 707, column: 14, scope: !2351)
!2354 = !DILocation(line: 707, column: 35, scope: !2351)
!2355 = !DILocation(line: 707, column: 17, scope: !2351)
!2356 = !DILocation(line: 707, column: 53, scope: !2351)
!2357 = !DILocation(line: 707, column: 47, scope: !2351)
!2358 = !DILocation(line: 707, column: 65, scope: !2351)
!2359 = !DILocation(line: 708, column: 15, scope: !2351)
!2360 = !DILocation(line: 708, column: 11, scope: !2351)
!2361 = !DILocation(line: 704, column: 11, scope: !1956)
!2362 = !DILocation(line: 712, column: 7, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !1956, file: !281, line: 712, column: 7)
!2364 = !DILocation(line: 712, column: 7, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2363, file: !281, line: 712, column: 7)
!2366 = !DILocation(line: 712, column: 7, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !281, line: 712, column: 7)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !281, line: 712, column: 7)
!2369 = distinct !DILexicalBlock(scope: !2365, file: !281, line: 712, column: 7)
!2370 = !DILocation(line: 712, column: 7, scope: !2368)
!2371 = !DILocation(line: 712, column: 7, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !281, line: 712, column: 7)
!2373 = distinct !DILexicalBlock(scope: !2369, file: !281, line: 712, column: 7)
!2374 = !DILocation(line: 712, column: 7, scope: !2373)
!2375 = !DILocation(line: 712, column: 7, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !281, line: 712, column: 7)
!2377 = distinct !DILexicalBlock(scope: !2369, file: !281, line: 712, column: 7)
!2378 = !DILocation(line: 712, column: 7, scope: !2377)
!2379 = !DILocation(line: 712, column: 7, scope: !2369)
!2380 = !DILocation(line: 712, column: 7, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !281, line: 712, column: 7)
!2382 = distinct !DILexicalBlock(scope: !2363, file: !281, line: 712, column: 7)
!2383 = !DILocation(line: 712, column: 7, scope: !2382)
!2384 = !DILocation(line: 715, column: 7, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !281, line: 715, column: 7)
!2386 = distinct !DILexicalBlock(scope: !1956, file: !281, line: 715, column: 7)
!2387 = !DILocation(line: 715, column: 7, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !281, line: 715, column: 7)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !281, line: 715, column: 7)
!2390 = distinct !DILexicalBlock(scope: !2385, file: !281, line: 715, column: 7)
!2391 = !DILocation(line: 715, column: 7, scope: !2389)
!2392 = !DILocation(line: 715, column: 7, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !281, line: 715, column: 7)
!2394 = distinct !DILexicalBlock(scope: !2390, file: !281, line: 715, column: 7)
!2395 = !DILocation(line: 715, column: 7, scope: !2394)
!2396 = !DILocation(line: 715, column: 7, scope: !2390)
!2397 = !DILocation(line: 716, column: 7, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !281, line: 716, column: 7)
!2399 = distinct !DILexicalBlock(scope: !1956, file: !281, line: 716, column: 7)
!2400 = !DILocation(line: 716, column: 7, scope: !2399)
!2401 = !DILocation(line: 718, column: 13, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !1956, file: !281, line: 718, column: 11)
!2403 = !DILocation(line: 718, column: 11, scope: !1956)
!2404 = !DILocation(line: 720, column: 5, scope: !1957)
!2405 = !DILocation(line: 392, column: 75, scope: !1957)
!2406 = !DILocation(line: 392, column: 3, scope: !1957)
!2407 = distinct !{!2407, !2067, !2408}
!2408 = !DILocation(line: 720, column: 5, scope: !1958)
!2409 = !DILocation(line: 722, column: 11, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !1929, file: !281, line: 722, column: 7)
!2411 = !DILocation(line: 722, column: 16, scope: !2410)
!2412 = !DILocation(line: 730, column: 51, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !1929, file: !281, line: 730, column: 7)
!2414 = !DILocation(line: 731, column: 10, scope: !2413)
!2415 = !DILocation(line: 733, column: 11, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !281, line: 733, column: 11)
!2417 = distinct !DILexicalBlock(scope: !2413, file: !281, line: 732, column: 5)
!2418 = !DILocation(line: 733, column: 11, scope: !2417)
!2419 = !DILocation(line: 734, column: 16, scope: !2416)
!2420 = !DILocation(line: 734, column: 9, scope: !2416)
!2421 = !DILocation(line: 738, column: 18, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2416, file: !281, line: 738, column: 16)
!2423 = !DILocation(line: 738, column: 32, scope: !2422)
!2424 = !DILocation(line: 738, column: 29, scope: !2422)
!2425 = !DILocation(line: 747, column: 7, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !1929, file: !281, line: 747, column: 7)
!2427 = !DILocation(line: 747, column: 20, scope: !2426)
!2428 = !DILocation(line: 748, column: 12, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !281, line: 748, column: 5)
!2430 = distinct !DILexicalBlock(scope: !2426, file: !281, line: 748, column: 5)
!2431 = !DILocation(line: 748, column: 5, scope: !2430)
!2432 = !DILocation(line: 749, column: 7, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !281, line: 749, column: 7)
!2434 = distinct !DILexicalBlock(scope: !2429, file: !281, line: 749, column: 7)
!2435 = !DILocation(line: 749, column: 7, scope: !2434)
!2436 = !DILocation(line: 748, column: 39, scope: !2429)
!2437 = distinct !{!2437, !2431, !2438}
!2438 = !DILocation(line: 749, column: 7, scope: !2430)
!2439 = !DILocation(line: 751, column: 11, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !1929, file: !281, line: 751, column: 7)
!2441 = !DILocation(line: 751, column: 7, scope: !1929)
!2442 = !DILocation(line: 752, column: 5, scope: !2440)
!2443 = !DILocation(line: 752, column: 17, scope: !2440)
!2444 = !DILocation(line: 758, column: 21, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !1929, file: !281, line: 758, column: 7)
!2446 = !DILocation(line: 758, column: 54, scope: !2445)
!2447 = !DILocation(line: 758, column: 51, scope: !2445)
!2448 = !DILocation(line: 762, column: 42, scope: !1929)
!2449 = !DILocation(line: 760, column: 10, scope: !1929)
!2450 = !DILocation(line: 760, column: 3, scope: !1929)
!2451 = !DILocation(line: 764, column: 1, scope: !1929)
!2452 = distinct !DISubprogram(name: "gettext_quote", scope: !281, file: !281, line: 199, type: !2453, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !2455)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!55, !55, !5}
!2455 = !{!2456, !2457, !2458, !2459}
!2456 = !DILocalVariable(name: "msgid", arg: 1, scope: !2452, file: !281, line: 199, type: !55)
!2457 = !DILocalVariable(name: "s", arg: 2, scope: !2452, file: !281, line: 199, type: !5)
!2458 = !DILocalVariable(name: "translation", scope: !2452, file: !281, line: 201, type: !55)
!2459 = !DILocalVariable(name: "locale_code", scope: !2452, file: !281, line: 202, type: !55)
!2460 = !DILocation(line: 199, column: 28, scope: !2452)
!2461 = !DILocation(line: 199, column: 54, scope: !2452)
!2462 = !DILocation(line: 201, column: 29, scope: !2452)
!2463 = !DILocation(line: 201, column: 15, scope: !2452)
!2464 = !DILocation(line: 204, column: 19, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2452, file: !281, line: 204, column: 7)
!2466 = !DILocation(line: 204, column: 7, scope: !2452)
!2467 = !DILocation(line: 225, column: 17, scope: !2452)
!2468 = !DILocation(line: 202, column: 15, scope: !2452)
!2469 = !DILocalVariable(name: "s2", arg: 2, scope: !2470, file: !2471, line: 160, type: !55)
!2470 = distinct !DISubprogram(name: "strcaseeq0", scope: !2471, file: !2471, line: 160, type: !2472, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !2474)
!2471 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!43, !55, !55, !40, !40, !40, !40, !40, !40, !40, !40, !40}
!2474 = !{!2475, !2469, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484}
!2475 = !DILocalVariable(name: "s1", arg: 1, scope: !2470, file: !2471, line: 160, type: !55)
!2476 = !DILocalVariable(name: "s20", arg: 3, scope: !2470, file: !2471, line: 160, type: !40)
!2477 = !DILocalVariable(name: "s21", arg: 4, scope: !2470, file: !2471, line: 160, type: !40)
!2478 = !DILocalVariable(name: "s22", arg: 5, scope: !2470, file: !2471, line: 160, type: !40)
!2479 = !DILocalVariable(name: "s23", arg: 6, scope: !2470, file: !2471, line: 160, type: !40)
!2480 = !DILocalVariable(name: "s24", arg: 7, scope: !2470, file: !2471, line: 160, type: !40)
!2481 = !DILocalVariable(name: "s25", arg: 8, scope: !2470, file: !2471, line: 160, type: !40)
!2482 = !DILocalVariable(name: "s26", arg: 9, scope: !2470, file: !2471, line: 160, type: !40)
!2483 = !DILocalVariable(name: "s27", arg: 10, scope: !2470, file: !2471, line: 160, type: !40)
!2484 = !DILocalVariable(name: "s28", arg: 11, scope: !2470, file: !2471, line: 160, type: !40)
!2485 = !DILocation(line: 160, column: 41, scope: !2470, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 226, column: 7, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2452, file: !281, line: 226, column: 7)
!2488 = !DILocation(line: 160, column: 120, scope: !2470, inlinedAt: !2486)
!2489 = !DILocation(line: 160, column: 130, scope: !2470, inlinedAt: !2486)
!2490 = !DILocation(line: 162, column: 7, scope: !2491, inlinedAt: !2486)
!2491 = distinct !DILexicalBlock(scope: !2470, file: !2471, line: 162, column: 7)
!2492 = !DILocalVariable(name: "s2", arg: 2, scope: !2493, file: !2471, line: 146, type: !55)
!2493 = distinct !DISubprogram(name: "strcaseeq1", scope: !2471, file: !2471, line: 146, type: !2494, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !2496)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!43, !55, !55, !40, !40, !40, !40, !40, !40, !40, !40}
!2496 = !{!2497, !2492, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505}
!2497 = !DILocalVariable(name: "s1", arg: 1, scope: !2493, file: !2471, line: 146, type: !55)
!2498 = !DILocalVariable(name: "s21", arg: 3, scope: !2493, file: !2471, line: 146, type: !40)
!2499 = !DILocalVariable(name: "s22", arg: 4, scope: !2493, file: !2471, line: 146, type: !40)
!2500 = !DILocalVariable(name: "s23", arg: 5, scope: !2493, file: !2471, line: 146, type: !40)
!2501 = !DILocalVariable(name: "s24", arg: 6, scope: !2493, file: !2471, line: 146, type: !40)
!2502 = !DILocalVariable(name: "s25", arg: 7, scope: !2493, file: !2471, line: 146, type: !40)
!2503 = !DILocalVariable(name: "s26", arg: 8, scope: !2493, file: !2471, line: 146, type: !40)
!2504 = !DILocalVariable(name: "s27", arg: 9, scope: !2493, file: !2471, line: 146, type: !40)
!2505 = !DILocalVariable(name: "s28", arg: 10, scope: !2493, file: !2471, line: 146, type: !40)
!2506 = !DILocation(line: 146, column: 41, scope: !2493, inlinedAt: !2507)
!2507 = distinct !DILocation(line: 167, column: 16, scope: !2508, inlinedAt: !2486)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !2471, line: 164, column: 11)
!2509 = distinct !DILexicalBlock(scope: !2491, file: !2471, line: 163, column: 5)
!2510 = !DILocation(line: 146, column: 110, scope: !2493, inlinedAt: !2507)
!2511 = !DILocation(line: 146, column: 120, scope: !2493, inlinedAt: !2507)
!2512 = !DILocation(line: 148, column: 7, scope: !2513, inlinedAt: !2507)
!2513 = distinct !DILexicalBlock(scope: !2493, file: !2471, line: 148, column: 7)
!2514 = !DILocalVariable(name: "s2", arg: 2, scope: !2515, file: !2471, line: 132, type: !55)
!2515 = distinct !DISubprogram(name: "strcaseeq2", scope: !2471, file: !2471, line: 132, type: !2516, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !2518)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!43, !55, !55, !40, !40, !40, !40, !40, !40, !40}
!2518 = !{!2519, !2514, !2520, !2521, !2522, !2523, !2524, !2525, !2526}
!2519 = !DILocalVariable(name: "s1", arg: 1, scope: !2515, file: !2471, line: 132, type: !55)
!2520 = !DILocalVariable(name: "s22", arg: 3, scope: !2515, file: !2471, line: 132, type: !40)
!2521 = !DILocalVariable(name: "s23", arg: 4, scope: !2515, file: !2471, line: 132, type: !40)
!2522 = !DILocalVariable(name: "s24", arg: 5, scope: !2515, file: !2471, line: 132, type: !40)
!2523 = !DILocalVariable(name: "s25", arg: 6, scope: !2515, file: !2471, line: 132, type: !40)
!2524 = !DILocalVariable(name: "s26", arg: 7, scope: !2515, file: !2471, line: 132, type: !40)
!2525 = !DILocalVariable(name: "s27", arg: 8, scope: !2515, file: !2471, line: 132, type: !40)
!2526 = !DILocalVariable(name: "s28", arg: 9, scope: !2515, file: !2471, line: 132, type: !40)
!2527 = !DILocation(line: 132, column: 41, scope: !2515, inlinedAt: !2528)
!2528 = distinct !DILocation(line: 153, column: 16, scope: !2529, inlinedAt: !2507)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !2471, line: 150, column: 11)
!2530 = distinct !DILexicalBlock(scope: !2513, file: !2471, line: 149, column: 5)
!2531 = !DILocation(line: 132, column: 100, scope: !2515, inlinedAt: !2528)
!2532 = !DILocation(line: 132, column: 110, scope: !2515, inlinedAt: !2528)
!2533 = !DILocation(line: 134, column: 7, scope: !2534, inlinedAt: !2528)
!2534 = distinct !DILexicalBlock(scope: !2515, file: !2471, line: 134, column: 7)
!2535 = !DILocalVariable(name: "s2", arg: 2, scope: !2536, file: !2471, line: 118, type: !55)
!2536 = distinct !DISubprogram(name: "strcaseeq3", scope: !2471, file: !2471, line: 118, type: !2537, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !2539)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!43, !55, !55, !40, !40, !40, !40, !40, !40}
!2539 = !{!2540, !2535, !2541, !2542, !2543, !2544, !2545, !2546}
!2540 = !DILocalVariable(name: "s1", arg: 1, scope: !2536, file: !2471, line: 118, type: !55)
!2541 = !DILocalVariable(name: "s23", arg: 3, scope: !2536, file: !2471, line: 118, type: !40)
!2542 = !DILocalVariable(name: "s24", arg: 4, scope: !2536, file: !2471, line: 118, type: !40)
!2543 = !DILocalVariable(name: "s25", arg: 5, scope: !2536, file: !2471, line: 118, type: !40)
!2544 = !DILocalVariable(name: "s26", arg: 6, scope: !2536, file: !2471, line: 118, type: !40)
!2545 = !DILocalVariable(name: "s27", arg: 7, scope: !2536, file: !2471, line: 118, type: !40)
!2546 = !DILocalVariable(name: "s28", arg: 8, scope: !2536, file: !2471, line: 118, type: !40)
!2547 = !DILocation(line: 118, column: 41, scope: !2536, inlinedAt: !2548)
!2548 = distinct !DILocation(line: 139, column: 16, scope: !2549, inlinedAt: !2528)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !2471, line: 136, column: 11)
!2550 = distinct !DILexicalBlock(scope: !2534, file: !2471, line: 135, column: 5)
!2551 = !DILocation(line: 118, column: 90, scope: !2536, inlinedAt: !2548)
!2552 = !DILocation(line: 118, column: 100, scope: !2536, inlinedAt: !2548)
!2553 = !DILocation(line: 120, column: 7, scope: !2554, inlinedAt: !2548)
!2554 = distinct !DILexicalBlock(scope: !2536, file: !2471, line: 120, column: 7)
!2555 = !DILocation(line: 120, column: 7, scope: !2536, inlinedAt: !2548)
!2556 = !DILocalVariable(name: "s2", arg: 2, scope: !2557, file: !2471, line: 104, type: !55)
!2557 = distinct !DISubprogram(name: "strcaseeq4", scope: !2471, file: !2471, line: 104, type: !2558, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !2560)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!43, !55, !55, !40, !40, !40, !40, !40}
!2560 = !{!2561, !2556, !2562, !2563, !2564, !2565, !2566}
!2561 = !DILocalVariable(name: "s1", arg: 1, scope: !2557, file: !2471, line: 104, type: !55)
!2562 = !DILocalVariable(name: "s24", arg: 3, scope: !2557, file: !2471, line: 104, type: !40)
!2563 = !DILocalVariable(name: "s25", arg: 4, scope: !2557, file: !2471, line: 104, type: !40)
!2564 = !DILocalVariable(name: "s26", arg: 5, scope: !2557, file: !2471, line: 104, type: !40)
!2565 = !DILocalVariable(name: "s27", arg: 6, scope: !2557, file: !2471, line: 104, type: !40)
!2566 = !DILocalVariable(name: "s28", arg: 7, scope: !2557, file: !2471, line: 104, type: !40)
!2567 = !DILocation(line: 104, column: 41, scope: !2557, inlinedAt: !2568)
!2568 = distinct !DILocation(line: 125, column: 16, scope: !2569, inlinedAt: !2548)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !2471, line: 122, column: 11)
!2570 = distinct !DILexicalBlock(scope: !2554, file: !2471, line: 121, column: 5)
!2571 = !DILocation(line: 104, column: 80, scope: !2557, inlinedAt: !2568)
!2572 = !DILocation(line: 104, column: 90, scope: !2557, inlinedAt: !2568)
!2573 = !DILocation(line: 106, column: 7, scope: !2574, inlinedAt: !2568)
!2574 = distinct !DILexicalBlock(scope: !2557, file: !2471, line: 106, column: 7)
!2575 = !DILocation(line: 106, column: 7, scope: !2557, inlinedAt: !2568)
!2576 = !DILocalVariable(name: "s2", arg: 2, scope: !2577, file: !2471, line: 90, type: !55)
!2577 = distinct !DISubprogram(name: "strcaseeq5", scope: !2471, file: !2471, line: 90, type: !2578, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !2580)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!43, !55, !55, !40, !40, !40, !40}
!2580 = !{!2581, !2576, !2582, !2583, !2584, !2585}
!2581 = !DILocalVariable(name: "s1", arg: 1, scope: !2577, file: !2471, line: 90, type: !55)
!2582 = !DILocalVariable(name: "s25", arg: 3, scope: !2577, file: !2471, line: 90, type: !40)
!2583 = !DILocalVariable(name: "s26", arg: 4, scope: !2577, file: !2471, line: 90, type: !40)
!2584 = !DILocalVariable(name: "s27", arg: 5, scope: !2577, file: !2471, line: 90, type: !40)
!2585 = !DILocalVariable(name: "s28", arg: 6, scope: !2577, file: !2471, line: 90, type: !40)
!2586 = !DILocation(line: 90, column: 41, scope: !2577, inlinedAt: !2587)
!2587 = distinct !DILocation(line: 111, column: 16, scope: !2588, inlinedAt: !2568)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !2471, line: 108, column: 11)
!2589 = distinct !DILexicalBlock(scope: !2574, file: !2471, line: 107, column: 5)
!2590 = !DILocation(line: 90, column: 70, scope: !2577, inlinedAt: !2587)
!2591 = !DILocation(line: 90, column: 80, scope: !2577, inlinedAt: !2587)
!2592 = !DILocation(line: 92, column: 7, scope: !2593, inlinedAt: !2587)
!2593 = distinct !DILexicalBlock(scope: !2577, file: !2471, line: 92, column: 7)
!2594 = !DILocation(line: 92, column: 7, scope: !2577, inlinedAt: !2587)
!2595 = !DILocation(line: 227, column: 12, scope: !2487)
!2596 = !DILocation(line: 227, column: 21, scope: !2487)
!2597 = !DILocation(line: 227, column: 5, scope: !2487)
!2598 = !DILocation(line: 146, column: 41, scope: !2493, inlinedAt: !2599)
!2599 = distinct !DILocation(line: 167, column: 16, scope: !2508, inlinedAt: !2600)
!2600 = distinct !DILocation(line: 228, column: 7, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2452, file: !281, line: 228, column: 7)
!2602 = !DILocation(line: 146, column: 110, scope: !2493, inlinedAt: !2599)
!2603 = !DILocation(line: 146, column: 120, scope: !2493, inlinedAt: !2599)
!2604 = !DILocation(line: 148, column: 7, scope: !2513, inlinedAt: !2599)
!2605 = !DILocation(line: 132, column: 41, scope: !2515, inlinedAt: !2606)
!2606 = distinct !DILocation(line: 153, column: 16, scope: !2529, inlinedAt: !2599)
!2607 = !DILocation(line: 132, column: 100, scope: !2515, inlinedAt: !2606)
!2608 = !DILocation(line: 132, column: 110, scope: !2515, inlinedAt: !2606)
!2609 = !DILocation(line: 134, column: 7, scope: !2534, inlinedAt: !2606)
!2610 = !DILocation(line: 134, column: 7, scope: !2515, inlinedAt: !2606)
!2611 = !DILocation(line: 118, column: 41, scope: !2536, inlinedAt: !2612)
!2612 = distinct !DILocation(line: 139, column: 16, scope: !2549, inlinedAt: !2606)
!2613 = !DILocation(line: 118, column: 90, scope: !2536, inlinedAt: !2612)
!2614 = !DILocation(line: 118, column: 100, scope: !2536, inlinedAt: !2612)
!2615 = !DILocation(line: 120, column: 7, scope: !2554, inlinedAt: !2612)
!2616 = !DILocation(line: 120, column: 7, scope: !2536, inlinedAt: !2612)
!2617 = !DILocation(line: 104, column: 41, scope: !2557, inlinedAt: !2618)
!2618 = distinct !DILocation(line: 125, column: 16, scope: !2569, inlinedAt: !2612)
!2619 = !DILocation(line: 104, column: 80, scope: !2557, inlinedAt: !2618)
!2620 = !DILocation(line: 104, column: 90, scope: !2557, inlinedAt: !2618)
!2621 = !DILocation(line: 106, column: 7, scope: !2574, inlinedAt: !2618)
!2622 = !DILocation(line: 106, column: 7, scope: !2557, inlinedAt: !2618)
!2623 = !DILocation(line: 90, column: 41, scope: !2577, inlinedAt: !2624)
!2624 = distinct !DILocation(line: 111, column: 16, scope: !2588, inlinedAt: !2618)
!2625 = !DILocation(line: 90, column: 70, scope: !2577, inlinedAt: !2624)
!2626 = !DILocation(line: 90, column: 80, scope: !2577, inlinedAt: !2624)
!2627 = !DILocation(line: 92, column: 7, scope: !2593, inlinedAt: !2624)
!2628 = !DILocation(line: 92, column: 7, scope: !2577, inlinedAt: !2624)
!2629 = !DILocalVariable(name: "s2", arg: 2, scope: !2630, file: !2471, line: 76, type: !55)
!2630 = distinct !DISubprogram(name: "strcaseeq6", scope: !2471, file: !2471, line: 76, type: !2631, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !2633)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!43, !55, !55, !40, !40, !40}
!2633 = !{!2634, !2629, !2635, !2636, !2637}
!2634 = !DILocalVariable(name: "s1", arg: 1, scope: !2630, file: !2471, line: 76, type: !55)
!2635 = !DILocalVariable(name: "s26", arg: 3, scope: !2630, file: !2471, line: 76, type: !40)
!2636 = !DILocalVariable(name: "s27", arg: 4, scope: !2630, file: !2471, line: 76, type: !40)
!2637 = !DILocalVariable(name: "s28", arg: 5, scope: !2630, file: !2471, line: 76, type: !40)
!2638 = !DILocation(line: 76, column: 41, scope: !2630, inlinedAt: !2639)
!2639 = distinct !DILocation(line: 97, column: 16, scope: !2640, inlinedAt: !2624)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !2471, line: 94, column: 11)
!2641 = distinct !DILexicalBlock(scope: !2593, file: !2471, line: 93, column: 5)
!2642 = !DILocation(line: 76, column: 60, scope: !2630, inlinedAt: !2639)
!2643 = !DILocation(line: 76, column: 70, scope: !2630, inlinedAt: !2639)
!2644 = !DILocation(line: 78, column: 7, scope: !2645, inlinedAt: !2639)
!2645 = distinct !DILexicalBlock(scope: !2630, file: !2471, line: 78, column: 7)
!2646 = !DILocation(line: 78, column: 7, scope: !2630, inlinedAt: !2639)
!2647 = !DILocalVariable(name: "s2", arg: 2, scope: !2648, file: !2471, line: 62, type: !55)
!2648 = distinct !DISubprogram(name: "strcaseeq7", scope: !2471, file: !2471, line: 62, type: !2649, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !2651)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!43, !55, !55, !40, !40}
!2651 = !{!2652, !2647, !2653, !2654}
!2652 = !DILocalVariable(name: "s1", arg: 1, scope: !2648, file: !2471, line: 62, type: !55)
!2653 = !DILocalVariable(name: "s27", arg: 3, scope: !2648, file: !2471, line: 62, type: !40)
!2654 = !DILocalVariable(name: "s28", arg: 4, scope: !2648, file: !2471, line: 62, type: !40)
!2655 = !DILocation(line: 62, column: 41, scope: !2648, inlinedAt: !2656)
!2656 = distinct !DILocation(line: 83, column: 16, scope: !2657, inlinedAt: !2639)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !2471, line: 80, column: 11)
!2658 = distinct !DILexicalBlock(scope: !2645, file: !2471, line: 79, column: 5)
!2659 = !DILocation(line: 62, column: 50, scope: !2648, inlinedAt: !2656)
!2660 = !DILocation(line: 62, column: 60, scope: !2648, inlinedAt: !2656)
!2661 = !DILocation(line: 64, column: 7, scope: !2662, inlinedAt: !2656)
!2662 = distinct !DILexicalBlock(scope: !2648, file: !2471, line: 64, column: 7)
!2663 = !DILocation(line: 228, column: 7, scope: !2452)
!2664 = !DILocation(line: 229, column: 12, scope: !2601)
!2665 = !DILocation(line: 229, column: 21, scope: !2601)
!2666 = !DILocation(line: 229, column: 5, scope: !2601)
!2667 = !DILocation(line: 231, column: 13, scope: !2452)
!2668 = !DILocation(line: 231, column: 11, scope: !2452)
!2669 = !DILocation(line: 231, column: 3, scope: !2452)
!2670 = !DILocation(line: 232, column: 1, scope: !2452)
!2671 = distinct !DISubprogram(name: "quotearg_alloc", scope: !281, file: !281, line: 791, type: !2672, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !2674)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!39, !55, !44, !1801}
!2674 = !{!2675, !2676, !2677}
!2675 = !DILocalVariable(name: "arg", arg: 1, scope: !2671, file: !281, line: 791, type: !55)
!2676 = !DILocalVariable(name: "argsize", arg: 2, scope: !2671, file: !281, line: 791, type: !44)
!2677 = !DILocalVariable(name: "o", arg: 3, scope: !2671, file: !281, line: 792, type: !1801)
!2678 = !DILocation(line: 791, column: 29, scope: !2671)
!2679 = !DILocation(line: 791, column: 41, scope: !2671)
!2680 = !DILocation(line: 792, column: 47, scope: !2671)
!2681 = !DILocalVariable(name: "arg", arg: 1, scope: !2682, file: !281, line: 804, type: !55)
!2682 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !281, file: !281, line: 804, type: !2683, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !2685)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!39, !55, !44, !698, !1801}
!2685 = !{!2681, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693}
!2686 = !DILocalVariable(name: "argsize", arg: 2, scope: !2682, file: !281, line: 804, type: !44)
!2687 = !DILocalVariable(name: "size", arg: 3, scope: !2682, file: !281, line: 804, type: !698)
!2688 = !DILocalVariable(name: "o", arg: 4, scope: !2682, file: !281, line: 805, type: !1801)
!2689 = !DILocalVariable(name: "p", scope: !2682, file: !281, line: 807, type: !1801)
!2690 = !DILocalVariable(name: "e", scope: !2682, file: !281, line: 808, type: !43)
!2691 = !DILocalVariable(name: "flags", scope: !2682, file: !281, line: 810, type: !43)
!2692 = !DILocalVariable(name: "bufsize", scope: !2682, file: !281, line: 811, type: !44)
!2693 = !DILocalVariable(name: "buf", scope: !2682, file: !281, line: 815, type: !39)
!2694 = !DILocation(line: 804, column: 33, scope: !2682, inlinedAt: !2695)
!2695 = distinct !DILocation(line: 794, column: 10, scope: !2671)
!2696 = !DILocation(line: 804, column: 45, scope: !2682, inlinedAt: !2695)
!2697 = !DILocation(line: 804, column: 62, scope: !2682, inlinedAt: !2695)
!2698 = !DILocation(line: 805, column: 51, scope: !2682, inlinedAt: !2695)
!2699 = !DILocation(line: 807, column: 37, scope: !2682, inlinedAt: !2695)
!2700 = !DILocation(line: 807, column: 33, scope: !2682, inlinedAt: !2695)
!2701 = !DILocation(line: 808, column: 11, scope: !2682, inlinedAt: !2695)
!2702 = !DILocation(line: 808, column: 7, scope: !2682, inlinedAt: !2695)
!2703 = !DILocation(line: 810, column: 18, scope: !2682, inlinedAt: !2695)
!2704 = !DILocation(line: 810, column: 24, scope: !2682, inlinedAt: !2695)
!2705 = !DILocation(line: 810, column: 7, scope: !2682, inlinedAt: !2695)
!2706 = !DILocation(line: 811, column: 69, scope: !2682, inlinedAt: !2695)
!2707 = !DILocation(line: 812, column: 53, scope: !2682, inlinedAt: !2695)
!2708 = !DILocation(line: 813, column: 49, scope: !2682, inlinedAt: !2695)
!2709 = !DILocation(line: 814, column: 49, scope: !2682, inlinedAt: !2695)
!2710 = !DILocation(line: 811, column: 20, scope: !2682, inlinedAt: !2695)
!2711 = !DILocation(line: 814, column: 62, scope: !2682, inlinedAt: !2695)
!2712 = !DILocation(line: 811, column: 10, scope: !2682, inlinedAt: !2695)
!2713 = !DILocalVariable(name: "n", arg: 1, scope: !2714, file: !694, line: 220, type: !44)
!2714 = distinct !DISubprogram(name: "xcharalloc", scope: !694, file: !694, line: 220, type: !2715, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !2717)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!39, !44}
!2717 = !{!2713}
!2718 = !DILocation(line: 220, column: 20, scope: !2714, inlinedAt: !2719)
!2719 = distinct !DILocation(line: 815, column: 15, scope: !2682, inlinedAt: !2695)
!2720 = !DILocation(line: 222, column: 10, scope: !2714, inlinedAt: !2719)
!2721 = !DILocation(line: 815, column: 9, scope: !2682, inlinedAt: !2695)
!2722 = !DILocation(line: 816, column: 60, scope: !2682, inlinedAt: !2695)
!2723 = !DILocation(line: 818, column: 32, scope: !2682, inlinedAt: !2695)
!2724 = !DILocation(line: 818, column: 47, scope: !2682, inlinedAt: !2695)
!2725 = !DILocation(line: 816, column: 3, scope: !2682, inlinedAt: !2695)
!2726 = !DILocation(line: 819, column: 9, scope: !2682, inlinedAt: !2695)
!2727 = !DILocation(line: 794, column: 3, scope: !2671)
!2728 = !DILocation(line: 804, column: 33, scope: !2682)
!2729 = !DILocation(line: 804, column: 45, scope: !2682)
!2730 = !DILocation(line: 804, column: 62, scope: !2682)
!2731 = !DILocation(line: 805, column: 51, scope: !2682)
!2732 = !DILocation(line: 807, column: 37, scope: !2682)
!2733 = !DILocation(line: 807, column: 33, scope: !2682)
!2734 = !DILocation(line: 808, column: 11, scope: !2682)
!2735 = !DILocation(line: 808, column: 7, scope: !2682)
!2736 = !DILocation(line: 810, column: 18, scope: !2682)
!2737 = !DILocation(line: 810, column: 27, scope: !2682)
!2738 = !DILocation(line: 810, column: 24, scope: !2682)
!2739 = !DILocation(line: 810, column: 7, scope: !2682)
!2740 = !DILocation(line: 811, column: 69, scope: !2682)
!2741 = !DILocation(line: 812, column: 53, scope: !2682)
!2742 = !DILocation(line: 813, column: 49, scope: !2682)
!2743 = !DILocation(line: 814, column: 49, scope: !2682)
!2744 = !DILocation(line: 811, column: 20, scope: !2682)
!2745 = !DILocation(line: 814, column: 62, scope: !2682)
!2746 = !DILocation(line: 811, column: 10, scope: !2682)
!2747 = !DILocation(line: 220, column: 20, scope: !2714, inlinedAt: !2748)
!2748 = distinct !DILocation(line: 815, column: 15, scope: !2682)
!2749 = !DILocation(line: 222, column: 10, scope: !2714, inlinedAt: !2748)
!2750 = !DILocation(line: 815, column: 9, scope: !2682)
!2751 = !DILocation(line: 816, column: 60, scope: !2682)
!2752 = !DILocation(line: 818, column: 32, scope: !2682)
!2753 = !DILocation(line: 818, column: 47, scope: !2682)
!2754 = !DILocation(line: 816, column: 3, scope: !2682)
!2755 = !DILocation(line: 819, column: 9, scope: !2682)
!2756 = !DILocation(line: 820, column: 7, scope: !2682)
!2757 = !DILocation(line: 821, column: 11, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2682, file: !281, line: 820, column: 7)
!2759 = !DILocation(line: 821, column: 5, scope: !2758)
!2760 = !DILocation(line: 822, column: 3, scope: !2682)
!2761 = distinct !DISubprogram(name: "quotearg_free", scope: !281, file: !281, line: 840, type: !989, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !2762)
!2762 = !{!2763, !2764}
!2763 = !DILocalVariable(name: "sv", scope: !2761, file: !281, line: 842, type: !304)
!2764 = !DILocalVariable(name: "i", scope: !2761, file: !281, line: 843, type: !43)
!2765 = !DILocation(line: 842, column: 24, scope: !2761)
!2766 = !DILocation(line: 842, column: 19, scope: !2761)
!2767 = !DILocation(line: 843, column: 7, scope: !2761)
!2768 = !DILocation(line: 844, column: 19, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2770, file: !281, line: 844, column: 3)
!2770 = distinct !DILexicalBlock(scope: !2761, file: !281, line: 844, column: 3)
!2771 = !DILocation(line: 844, column: 17, scope: !2769)
!2772 = !DILocation(line: 844, column: 3, scope: !2770)
!2773 = !DILocation(line: 845, column: 17, scope: !2769)
!2774 = !{!2775, !756, i64 8}
!2775 = !{!"slotvec", !962, i64 0, !756, i64 8}
!2776 = !DILocation(line: 845, column: 5, scope: !2769)
!2777 = !DILocation(line: 844, column: 28, scope: !2769)
!2778 = distinct !{!2778, !2772, !2779}
!2779 = !DILocation(line: 845, column: 20, scope: !2770)
!2780 = !DILocation(line: 846, column: 13, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2761, file: !281, line: 846, column: 7)
!2782 = !DILocation(line: 846, column: 17, scope: !2781)
!2783 = !DILocation(line: 846, column: 7, scope: !2761)
!2784 = !DILocation(line: 848, column: 7, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2781, file: !281, line: 847, column: 5)
!2786 = !DILocation(line: 849, column: 21, scope: !2785)
!2787 = !{!2775, !962, i64 0}
!2788 = !DILocation(line: 850, column: 20, scope: !2785)
!2789 = !DILocation(line: 851, column: 5, scope: !2785)
!2790 = !DILocation(line: 852, column: 10, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2761, file: !281, line: 852, column: 7)
!2792 = !DILocation(line: 852, column: 7, scope: !2761)
!2793 = !DILocation(line: 854, column: 13, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2791, file: !281, line: 853, column: 5)
!2795 = !DILocation(line: 854, column: 7, scope: !2794)
!2796 = !DILocation(line: 855, column: 15, scope: !2794)
!2797 = !DILocation(line: 856, column: 5, scope: !2794)
!2798 = !DILocation(line: 857, column: 10, scope: !2761)
!2799 = !DILocation(line: 858, column: 1, scope: !2761)
!2800 = distinct !DISubprogram(name: "quotearg_n", scope: !281, file: !281, line: 922, type: !2801, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !2803)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!39, !43, !55}
!2803 = !{!2804, !2805}
!2804 = !DILocalVariable(name: "n", arg: 1, scope: !2800, file: !281, line: 922, type: !43)
!2805 = !DILocalVariable(name: "arg", arg: 2, scope: !2800, file: !281, line: 922, type: !55)
!2806 = !DILocation(line: 922, column: 17, scope: !2800)
!2807 = !DILocation(line: 922, column: 32, scope: !2800)
!2808 = !DILocation(line: 924, column: 10, scope: !2800)
!2809 = !DILocation(line: 924, column: 3, scope: !2800)
!2810 = distinct !DISubprogram(name: "quotearg_n_options", scope: !281, file: !281, line: 869, type: !2811, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !2813)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!39, !43, !55, !44, !1801}
!2813 = !{!2814, !2815, !2816, !2817, !2818, !2819, !2820, !2823, !2825, !2826, !2827}
!2814 = !DILocalVariable(name: "n", arg: 1, scope: !2810, file: !281, line: 869, type: !43)
!2815 = !DILocalVariable(name: "arg", arg: 2, scope: !2810, file: !281, line: 869, type: !55)
!2816 = !DILocalVariable(name: "argsize", arg: 3, scope: !2810, file: !281, line: 869, type: !44)
!2817 = !DILocalVariable(name: "options", arg: 4, scope: !2810, file: !281, line: 870, type: !1801)
!2818 = !DILocalVariable(name: "e", scope: !2810, file: !281, line: 872, type: !43)
!2819 = !DILocalVariable(name: "sv", scope: !2810, file: !281, line: 874, type: !304)
!2820 = !DILocalVariable(name: "preallocated", scope: !2821, file: !281, line: 881, type: !73)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !281, line: 880, column: 5)
!2822 = distinct !DILexicalBlock(scope: !2810, file: !281, line: 879, column: 7)
!2823 = !DILocalVariable(name: "size", scope: !2824, file: !281, line: 894, type: !44)
!2824 = distinct !DILexicalBlock(scope: !2810, file: !281, line: 893, column: 3)
!2825 = !DILocalVariable(name: "val", scope: !2824, file: !281, line: 895, type: !39)
!2826 = !DILocalVariable(name: "flags", scope: !2824, file: !281, line: 897, type: !43)
!2827 = !DILocalVariable(name: "qsize", scope: !2824, file: !281, line: 898, type: !44)
!2828 = !DILocation(line: 869, column: 25, scope: !2810)
!2829 = !DILocation(line: 869, column: 40, scope: !2810)
!2830 = !DILocation(line: 869, column: 52, scope: !2810)
!2831 = !DILocation(line: 870, column: 51, scope: !2810)
!2832 = !DILocation(line: 872, column: 11, scope: !2810)
!2833 = !DILocation(line: 872, column: 7, scope: !2810)
!2834 = !DILocation(line: 874, column: 24, scope: !2810)
!2835 = !DILocation(line: 874, column: 19, scope: !2810)
!2836 = !DILocation(line: 876, column: 9, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2810, file: !281, line: 876, column: 7)
!2838 = !DILocation(line: 876, column: 7, scope: !2810)
!2839 = !DILocation(line: 877, column: 5, scope: !2837)
!2840 = !DILocation(line: 879, column: 7, scope: !2822)
!2841 = !DILocation(line: 879, column: 14, scope: !2822)
!2842 = !DILocation(line: 879, column: 7, scope: !2810)
!2843 = !DILocation(line: 881, column: 31, scope: !2821)
!2844 = !DILocation(line: 883, column: 67, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2821, file: !281, line: 883, column: 11)
!2846 = !DILocation(line: 883, column: 11, scope: !2821)
!2847 = !DILocation(line: 884, column: 9, scope: !2845)
!2848 = !DILocation(line: 886, column: 32, scope: !2821)
!2849 = !DILocation(line: 886, column: 61, scope: !2821)
!2850 = !DILocation(line: 886, column: 58, scope: !2821)
!2851 = !DILocation(line: 886, column: 66, scope: !2821)
!2852 = !DILocation(line: 886, column: 22, scope: !2821)
!2853 = !DILocation(line: 886, column: 15, scope: !2821)
!2854 = !DILocation(line: 887, column: 11, scope: !2821)
!2855 = !DILocation(line: 888, column: 15, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2821, file: !281, line: 887, column: 11)
!2857 = !{i64 0, i64 8, !961, i64 8, i64 8, !755}
!2858 = !DILocation(line: 888, column: 9, scope: !2856)
!2859 = !DILocation(line: 889, column: 20, scope: !2821)
!2860 = !DILocation(line: 889, column: 18, scope: !2821)
!2861 = !DILocation(line: 889, column: 7, scope: !2821)
!2862 = !DILocation(line: 889, column: 38, scope: !2821)
!2863 = !DILocation(line: 889, column: 31, scope: !2821)
!2864 = !DILocation(line: 889, column: 48, scope: !2821)
!2865 = !DILocation(line: 890, column: 14, scope: !2821)
!2866 = !DILocation(line: 891, column: 5, scope: !2821)
!2867 = !DILocation(line: 894, column: 19, scope: !2824)
!2868 = !DILocation(line: 894, column: 25, scope: !2824)
!2869 = !DILocation(line: 894, column: 12, scope: !2824)
!2870 = !DILocation(line: 895, column: 23, scope: !2824)
!2871 = !DILocation(line: 895, column: 11, scope: !2824)
!2872 = !DILocation(line: 897, column: 26, scope: !2824)
!2873 = !DILocation(line: 897, column: 32, scope: !2824)
!2874 = !DILocation(line: 897, column: 9, scope: !2824)
!2875 = !DILocation(line: 899, column: 55, scope: !2824)
!2876 = !DILocation(line: 900, column: 46, scope: !2824)
!2877 = !DILocation(line: 901, column: 55, scope: !2824)
!2878 = !DILocation(line: 902, column: 55, scope: !2824)
!2879 = !DILocation(line: 898, column: 20, scope: !2824)
!2880 = !DILocation(line: 898, column: 12, scope: !2824)
!2881 = !DILocation(line: 904, column: 14, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2824, file: !281, line: 904, column: 9)
!2883 = !DILocation(line: 904, column: 9, scope: !2824)
!2884 = !DILocation(line: 906, column: 35, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2882, file: !281, line: 905, column: 7)
!2886 = !DILocation(line: 906, column: 20, scope: !2885)
!2887 = !DILocation(line: 907, column: 17, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2885, file: !281, line: 907, column: 13)
!2889 = !DILocation(line: 907, column: 13, scope: !2885)
!2890 = !DILocation(line: 908, column: 11, scope: !2888)
!2891 = !DILocation(line: 220, column: 20, scope: !2714, inlinedAt: !2892)
!2892 = distinct !DILocation(line: 909, column: 27, scope: !2885)
!2893 = !DILocation(line: 222, column: 10, scope: !2714, inlinedAt: !2892)
!2894 = !DILocation(line: 909, column: 19, scope: !2885)
!2895 = !DILocation(line: 910, column: 69, scope: !2885)
!2896 = !DILocation(line: 912, column: 44, scope: !2885)
!2897 = !DILocation(line: 913, column: 44, scope: !2885)
!2898 = !DILocation(line: 910, column: 9, scope: !2885)
!2899 = !DILocation(line: 914, column: 7, scope: !2885)
!2900 = !DILocation(line: 916, column: 11, scope: !2824)
!2901 = !DILocation(line: 917, column: 5, scope: !2824)
!2902 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !281, file: !281, line: 928, type: !2903, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !2905)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!39, !43, !55, !44}
!2905 = !{!2906, !2907, !2908}
!2906 = !DILocalVariable(name: "n", arg: 1, scope: !2902, file: !281, line: 928, type: !43)
!2907 = !DILocalVariable(name: "arg", arg: 2, scope: !2902, file: !281, line: 928, type: !55)
!2908 = !DILocalVariable(name: "argsize", arg: 3, scope: !2902, file: !281, line: 928, type: !44)
!2909 = !DILocation(line: 928, column: 21, scope: !2902)
!2910 = !DILocation(line: 928, column: 36, scope: !2902)
!2911 = !DILocation(line: 928, column: 48, scope: !2902)
!2912 = !DILocation(line: 930, column: 10, scope: !2902)
!2913 = !DILocation(line: 930, column: 3, scope: !2902)
!2914 = distinct !DISubprogram(name: "quotearg", scope: !281, file: !281, line: 934, type: !1552, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !2915)
!2915 = !{!2916}
!2916 = !DILocalVariable(name: "arg", arg: 1, scope: !2914, file: !281, line: 934, type: !55)
!2917 = !DILocation(line: 934, column: 23, scope: !2914)
!2918 = !DILocation(line: 922, column: 17, scope: !2800, inlinedAt: !2919)
!2919 = distinct !DILocation(line: 936, column: 10, scope: !2914)
!2920 = !DILocation(line: 922, column: 32, scope: !2800, inlinedAt: !2919)
!2921 = !DILocation(line: 924, column: 10, scope: !2800, inlinedAt: !2919)
!2922 = !DILocation(line: 936, column: 3, scope: !2914)
!2923 = distinct !DISubprogram(name: "quotearg_mem", scope: !281, file: !281, line: 940, type: !2924, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !2926)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!39, !55, !44}
!2926 = !{!2927, !2928}
!2927 = !DILocalVariable(name: "arg", arg: 1, scope: !2923, file: !281, line: 940, type: !55)
!2928 = !DILocalVariable(name: "argsize", arg: 2, scope: !2923, file: !281, line: 940, type: !44)
!2929 = !DILocation(line: 940, column: 27, scope: !2923)
!2930 = !DILocation(line: 940, column: 39, scope: !2923)
!2931 = !DILocation(line: 928, column: 21, scope: !2902, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 942, column: 10, scope: !2923)
!2933 = !DILocation(line: 928, column: 36, scope: !2902, inlinedAt: !2932)
!2934 = !DILocation(line: 928, column: 48, scope: !2902, inlinedAt: !2932)
!2935 = !DILocation(line: 930, column: 10, scope: !2902, inlinedAt: !2932)
!2936 = !DILocation(line: 942, column: 3, scope: !2923)
!2937 = distinct !DISubprogram(name: "quotearg_n_style", scope: !281, file: !281, line: 946, type: !2938, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !2940)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!39, !43, !5, !55}
!2940 = !{!2941, !2942, !2943, !2944}
!2941 = !DILocalVariable(name: "n", arg: 1, scope: !2937, file: !281, line: 946, type: !43)
!2942 = !DILocalVariable(name: "s", arg: 2, scope: !2937, file: !281, line: 946, type: !5)
!2943 = !DILocalVariable(name: "arg", arg: 3, scope: !2937, file: !281, line: 946, type: !55)
!2944 = !DILocalVariable(name: "o", scope: !2937, file: !281, line: 948, type: !1802)
!2945 = !DILocalVariable(name: "o", scope: !2946, file: !281, line: 187, type: !288)
!2946 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !281, file: !281, line: 185, type: !2947, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !2949)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!288, !5}
!2949 = !{!2950, !2945}
!2950 = !DILocalVariable(name: "style", arg: 1, scope: !2946, file: !281, line: 185, type: !5)
!2951 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2952 = !DILocation(line: 187, column: 26, scope: !2946, inlinedAt: !2953)
!2953 = distinct !DILocation(line: 948, column: 36, scope: !2937)
!2954 = !DILocation(line: 946, column: 23, scope: !2937)
!2955 = !DILocation(line: 946, column: 45, scope: !2937)
!2956 = !DILocation(line: 946, column: 60, scope: !2937)
!2957 = !DILocation(line: 948, column: 3, scope: !2937)
!2958 = !DILocation(line: 948, column: 32, scope: !2937)
!2959 = !DILocation(line: 185, column: 48, scope: !2946, inlinedAt: !2953)
!2960 = !DILocation(line: 187, column: 3, scope: !2946, inlinedAt: !2953)
!2961 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2962 = !DILocation(line: 188, column: 13, scope: !2963, inlinedAt: !2953)
!2963 = distinct !DILexicalBlock(scope: !2946, file: !281, line: 188, column: 7)
!2964 = !DILocation(line: 188, column: 7, scope: !2946, inlinedAt: !2953)
!2965 = !DILocation(line: 189, column: 5, scope: !2963, inlinedAt: !2953)
!2966 = !{!2967}
!2967 = distinct !{!2967, !2968, !"quoting_options_from_style: argument 0"}
!2968 = distinct !{!2968, !"quoting_options_from_style"}
!2969 = !DILocation(line: 191, column: 10, scope: !2946, inlinedAt: !2953)
!2970 = !DILocation(line: 192, column: 1, scope: !2946, inlinedAt: !2953)
!2971 = !DILocation(line: 949, column: 10, scope: !2937)
!2972 = !DILocation(line: 950, column: 1, scope: !2937)
!2973 = !DILocation(line: 949, column: 3, scope: !2937)
!2974 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !281, file: !281, line: 953, type: !2975, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !2977)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!39, !43, !5, !55, !44}
!2977 = !{!2978, !2979, !2980, !2981, !2982}
!2978 = !DILocalVariable(name: "n", arg: 1, scope: !2974, file: !281, line: 953, type: !43)
!2979 = !DILocalVariable(name: "s", arg: 2, scope: !2974, file: !281, line: 953, type: !5)
!2980 = !DILocalVariable(name: "arg", arg: 3, scope: !2974, file: !281, line: 954, type: !55)
!2981 = !DILocalVariable(name: "argsize", arg: 4, scope: !2974, file: !281, line: 954, type: !44)
!2982 = !DILocalVariable(name: "o", scope: !2974, file: !281, line: 956, type: !1802)
!2983 = !DILocation(line: 187, column: 26, scope: !2946, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 956, column: 36, scope: !2974)
!2985 = !DILocation(line: 953, column: 27, scope: !2974)
!2986 = !DILocation(line: 953, column: 49, scope: !2974)
!2987 = !DILocation(line: 954, column: 35, scope: !2974)
!2988 = !DILocation(line: 954, column: 47, scope: !2974)
!2989 = !DILocation(line: 956, column: 3, scope: !2974)
!2990 = !DILocation(line: 956, column: 32, scope: !2974)
!2991 = !DILocation(line: 185, column: 48, scope: !2946, inlinedAt: !2984)
!2992 = !DILocation(line: 187, column: 3, scope: !2946, inlinedAt: !2984)
!2993 = !DILocation(line: 188, column: 13, scope: !2963, inlinedAt: !2984)
!2994 = !DILocation(line: 188, column: 7, scope: !2946, inlinedAt: !2984)
!2995 = !DILocation(line: 189, column: 5, scope: !2963, inlinedAt: !2984)
!2996 = !{!2997}
!2997 = distinct !{!2997, !2998, !"quoting_options_from_style: argument 0"}
!2998 = distinct !{!2998, !"quoting_options_from_style"}
!2999 = !DILocation(line: 191, column: 10, scope: !2946, inlinedAt: !2984)
!3000 = !DILocation(line: 192, column: 1, scope: !2946, inlinedAt: !2984)
!3001 = !DILocation(line: 957, column: 10, scope: !2974)
!3002 = !DILocation(line: 958, column: 1, scope: !2974)
!3003 = !DILocation(line: 957, column: 3, scope: !2974)
!3004 = distinct !DISubprogram(name: "quotearg_style", scope: !281, file: !281, line: 961, type: !3005, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !3007)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!39, !5, !55}
!3007 = !{!3008, !3009}
!3008 = !DILocalVariable(name: "s", arg: 1, scope: !3004, file: !281, line: 961, type: !5)
!3009 = !DILocalVariable(name: "arg", arg: 2, scope: !3004, file: !281, line: 961, type: !55)
!3010 = !DILocation(line: 187, column: 26, scope: !2946, inlinedAt: !3011)
!3011 = distinct !DILocation(line: 948, column: 36, scope: !2937, inlinedAt: !3012)
!3012 = distinct !DILocation(line: 963, column: 10, scope: !3004)
!3013 = !DILocation(line: 961, column: 36, scope: !3004)
!3014 = !DILocation(line: 961, column: 51, scope: !3004)
!3015 = !DILocation(line: 946, column: 23, scope: !2937, inlinedAt: !3012)
!3016 = !DILocation(line: 946, column: 45, scope: !2937, inlinedAt: !3012)
!3017 = !DILocation(line: 946, column: 60, scope: !2937, inlinedAt: !3012)
!3018 = !DILocation(line: 948, column: 3, scope: !2937, inlinedAt: !3012)
!3019 = !DILocation(line: 948, column: 32, scope: !2937, inlinedAt: !3012)
!3020 = !DILocation(line: 185, column: 48, scope: !2946, inlinedAt: !3011)
!3021 = !DILocation(line: 187, column: 3, scope: !2946, inlinedAt: !3011)
!3022 = !DILocation(line: 188, column: 13, scope: !2963, inlinedAt: !3011)
!3023 = !DILocation(line: 188, column: 7, scope: !2946, inlinedAt: !3011)
!3024 = !DILocation(line: 189, column: 5, scope: !2963, inlinedAt: !3011)
!3025 = !{!3026}
!3026 = distinct !{!3026, !3027, !"quoting_options_from_style: argument 0"}
!3027 = distinct !{!3027, !"quoting_options_from_style"}
!3028 = !DILocation(line: 191, column: 10, scope: !2946, inlinedAt: !3011)
!3029 = !DILocation(line: 192, column: 1, scope: !2946, inlinedAt: !3011)
!3030 = !DILocation(line: 949, column: 10, scope: !2937, inlinedAt: !3012)
!3031 = !DILocation(line: 950, column: 1, scope: !2937, inlinedAt: !3012)
!3032 = !DILocation(line: 963, column: 3, scope: !3004)
!3033 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !281, file: !281, line: 967, type: !3034, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !3036)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!39, !5, !55, !44}
!3036 = !{!3037, !3038, !3039}
!3037 = !DILocalVariable(name: "s", arg: 1, scope: !3033, file: !281, line: 967, type: !5)
!3038 = !DILocalVariable(name: "arg", arg: 2, scope: !3033, file: !281, line: 967, type: !55)
!3039 = !DILocalVariable(name: "argsize", arg: 3, scope: !3033, file: !281, line: 967, type: !44)
!3040 = !DILocation(line: 187, column: 26, scope: !2946, inlinedAt: !3041)
!3041 = distinct !DILocation(line: 956, column: 36, scope: !2974, inlinedAt: !3042)
!3042 = distinct !DILocation(line: 969, column: 10, scope: !3033)
!3043 = !DILocation(line: 967, column: 40, scope: !3033)
!3044 = !DILocation(line: 967, column: 55, scope: !3033)
!3045 = !DILocation(line: 967, column: 67, scope: !3033)
!3046 = !DILocation(line: 953, column: 27, scope: !2974, inlinedAt: !3042)
!3047 = !DILocation(line: 953, column: 49, scope: !2974, inlinedAt: !3042)
!3048 = !DILocation(line: 954, column: 35, scope: !2974, inlinedAt: !3042)
!3049 = !DILocation(line: 954, column: 47, scope: !2974, inlinedAt: !3042)
!3050 = !DILocation(line: 956, column: 3, scope: !2974, inlinedAt: !3042)
!3051 = !DILocation(line: 956, column: 32, scope: !2974, inlinedAt: !3042)
!3052 = !DILocation(line: 185, column: 48, scope: !2946, inlinedAt: !3041)
!3053 = !DILocation(line: 187, column: 3, scope: !2946, inlinedAt: !3041)
!3054 = !DILocation(line: 188, column: 13, scope: !2963, inlinedAt: !3041)
!3055 = !DILocation(line: 188, column: 7, scope: !2946, inlinedAt: !3041)
!3056 = !DILocation(line: 189, column: 5, scope: !2963, inlinedAt: !3041)
!3057 = !{!3058}
!3058 = distinct !{!3058, !3059, !"quoting_options_from_style: argument 0"}
!3059 = distinct !{!3059, !"quoting_options_from_style"}
!3060 = !DILocation(line: 191, column: 10, scope: !2946, inlinedAt: !3041)
!3061 = !DILocation(line: 192, column: 1, scope: !2946, inlinedAt: !3041)
!3062 = !DILocation(line: 957, column: 10, scope: !2974, inlinedAt: !3042)
!3063 = !DILocation(line: 958, column: 1, scope: !2974, inlinedAt: !3042)
!3064 = !DILocation(line: 969, column: 3, scope: !3033)
!3065 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !281, file: !281, line: 973, type: !3066, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !3068)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!39, !55, !44, !40}
!3068 = !{!3069, !3070, !3071, !3072}
!3069 = !DILocalVariable(name: "arg", arg: 1, scope: !3065, file: !281, line: 973, type: !55)
!3070 = !DILocalVariable(name: "argsize", arg: 2, scope: !3065, file: !281, line: 973, type: !44)
!3071 = !DILocalVariable(name: "ch", arg: 3, scope: !3065, file: !281, line: 973, type: !40)
!3072 = !DILocalVariable(name: "options", scope: !3065, file: !281, line: 975, type: !288)
!3073 = !DILocation(line: 973, column: 32, scope: !3065)
!3074 = !DILocation(line: 973, column: 44, scope: !3065)
!3075 = !DILocation(line: 973, column: 58, scope: !3065)
!3076 = !DILocation(line: 975, column: 3, scope: !3065)
!3077 = !DILocation(line: 976, column: 13, scope: !3065)
!3078 = !{i64 0, i64 4, !1018, i64 4, i64 4, !928, i64 8, i64 32, !1018, i64 40, i64 8, !755, i64 48, i64 8, !755}
!3079 = !DILocation(line: 975, column: 26, scope: !3065)
!3080 = !DILocation(line: 144, column: 43, scope: !1823, inlinedAt: !3081)
!3081 = distinct !DILocation(line: 977, column: 3, scope: !3065)
!3082 = !DILocation(line: 144, column: 51, scope: !1823, inlinedAt: !3081)
!3083 = !DILocation(line: 144, column: 58, scope: !1823, inlinedAt: !3081)
!3084 = !DILocation(line: 146, column: 17, scope: !1823, inlinedAt: !3081)
!3085 = !DILocation(line: 148, column: 62, scope: !1823, inlinedAt: !3081)
!3086 = !DILocation(line: 148, column: 57, scope: !1823, inlinedAt: !3081)
!3087 = !DILocation(line: 147, column: 17, scope: !1823, inlinedAt: !3081)
!3088 = !DILocation(line: 149, column: 18, scope: !1823, inlinedAt: !3081)
!3089 = !DILocation(line: 149, column: 15, scope: !1823, inlinedAt: !3081)
!3090 = !DILocation(line: 149, column: 7, scope: !1823, inlinedAt: !3081)
!3091 = !DILocation(line: 150, column: 12, scope: !1823, inlinedAt: !3081)
!3092 = !DILocation(line: 150, column: 15, scope: !1823, inlinedAt: !3081)
!3093 = !DILocation(line: 150, column: 25, scope: !1823, inlinedAt: !3081)
!3094 = !DILocation(line: 150, column: 7, scope: !1823, inlinedAt: !3081)
!3095 = !DILocation(line: 151, column: 18, scope: !1823, inlinedAt: !3081)
!3096 = !DILocation(line: 151, column: 23, scope: !1823, inlinedAt: !3081)
!3097 = !DILocation(line: 151, column: 6, scope: !1823, inlinedAt: !3081)
!3098 = !DILocation(line: 978, column: 10, scope: !3065)
!3099 = !DILocation(line: 979, column: 1, scope: !3065)
!3100 = !DILocation(line: 978, column: 3, scope: !3065)
!3101 = distinct !DISubprogram(name: "quotearg_char", scope: !281, file: !281, line: 982, type: !3102, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !3104)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!39, !55, !40}
!3104 = !{!3105, !3106}
!3105 = !DILocalVariable(name: "arg", arg: 1, scope: !3101, file: !281, line: 982, type: !55)
!3106 = !DILocalVariable(name: "ch", arg: 2, scope: !3101, file: !281, line: 982, type: !40)
!3107 = !DILocation(line: 982, column: 28, scope: !3101)
!3108 = !DILocation(line: 982, column: 38, scope: !3101)
!3109 = !DILocation(line: 973, column: 32, scope: !3065, inlinedAt: !3110)
!3110 = distinct !DILocation(line: 984, column: 10, scope: !3101)
!3111 = !DILocation(line: 973, column: 44, scope: !3065, inlinedAt: !3110)
!3112 = !DILocation(line: 973, column: 58, scope: !3065, inlinedAt: !3110)
!3113 = !DILocation(line: 975, column: 3, scope: !3065, inlinedAt: !3110)
!3114 = !DILocation(line: 976, column: 13, scope: !3065, inlinedAt: !3110)
!3115 = !DILocation(line: 975, column: 26, scope: !3065, inlinedAt: !3110)
!3116 = !DILocation(line: 144, column: 43, scope: !1823, inlinedAt: !3117)
!3117 = distinct !DILocation(line: 977, column: 3, scope: !3065, inlinedAt: !3110)
!3118 = !DILocation(line: 144, column: 51, scope: !1823, inlinedAt: !3117)
!3119 = !DILocation(line: 144, column: 58, scope: !1823, inlinedAt: !3117)
!3120 = !DILocation(line: 146, column: 17, scope: !1823, inlinedAt: !3117)
!3121 = !DILocation(line: 148, column: 62, scope: !1823, inlinedAt: !3117)
!3122 = !DILocation(line: 148, column: 57, scope: !1823, inlinedAt: !3117)
!3123 = !DILocation(line: 147, column: 17, scope: !1823, inlinedAt: !3117)
!3124 = !DILocation(line: 149, column: 18, scope: !1823, inlinedAt: !3117)
!3125 = !DILocation(line: 149, column: 15, scope: !1823, inlinedAt: !3117)
!3126 = !DILocation(line: 149, column: 7, scope: !1823, inlinedAt: !3117)
!3127 = !DILocation(line: 150, column: 12, scope: !1823, inlinedAt: !3117)
!3128 = !DILocation(line: 150, column: 15, scope: !1823, inlinedAt: !3117)
!3129 = !DILocation(line: 150, column: 25, scope: !1823, inlinedAt: !3117)
!3130 = !DILocation(line: 150, column: 7, scope: !1823, inlinedAt: !3117)
!3131 = !DILocation(line: 151, column: 18, scope: !1823, inlinedAt: !3117)
!3132 = !DILocation(line: 151, column: 23, scope: !1823, inlinedAt: !3117)
!3133 = !DILocation(line: 151, column: 6, scope: !1823, inlinedAt: !3117)
!3134 = !DILocation(line: 978, column: 10, scope: !3065, inlinedAt: !3110)
!3135 = !DILocation(line: 979, column: 1, scope: !3065, inlinedAt: !3110)
!3136 = !DILocation(line: 984, column: 3, scope: !3101)
!3137 = distinct !DISubprogram(name: "quotearg_colon", scope: !281, file: !281, line: 988, type: !1552, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !3138)
!3138 = !{!3139}
!3139 = !DILocalVariable(name: "arg", arg: 1, scope: !3137, file: !281, line: 988, type: !55)
!3140 = !DILocation(line: 988, column: 29, scope: !3137)
!3141 = !DILocation(line: 982, column: 28, scope: !3101, inlinedAt: !3142)
!3142 = distinct !DILocation(line: 990, column: 10, scope: !3137)
!3143 = !DILocation(line: 982, column: 38, scope: !3101, inlinedAt: !3142)
!3144 = !DILocation(line: 973, column: 32, scope: !3065, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 984, column: 10, scope: !3101, inlinedAt: !3142)
!3146 = !DILocation(line: 973, column: 44, scope: !3065, inlinedAt: !3145)
!3147 = !DILocation(line: 973, column: 58, scope: !3065, inlinedAt: !3145)
!3148 = !DILocation(line: 975, column: 3, scope: !3065, inlinedAt: !3145)
!3149 = !DILocation(line: 976, column: 13, scope: !3065, inlinedAt: !3145)
!3150 = !DILocation(line: 975, column: 26, scope: !3065, inlinedAt: !3145)
!3151 = !DILocation(line: 144, column: 43, scope: !1823, inlinedAt: !3152)
!3152 = distinct !DILocation(line: 977, column: 3, scope: !3065, inlinedAt: !3145)
!3153 = !DILocation(line: 144, column: 51, scope: !1823, inlinedAt: !3152)
!3154 = !DILocation(line: 144, column: 58, scope: !1823, inlinedAt: !3152)
!3155 = !DILocation(line: 146, column: 17, scope: !1823, inlinedAt: !3152)
!3156 = !DILocation(line: 148, column: 57, scope: !1823, inlinedAt: !3152)
!3157 = !DILocation(line: 147, column: 17, scope: !1823, inlinedAt: !3152)
!3158 = !DILocation(line: 149, column: 7, scope: !1823, inlinedAt: !3152)
!3159 = !DILocation(line: 150, column: 12, scope: !1823, inlinedAt: !3152)
!3160 = !DILocation(line: 151, column: 6, scope: !1823, inlinedAt: !3152)
!3161 = !DILocation(line: 978, column: 10, scope: !3065, inlinedAt: !3145)
!3162 = !DILocation(line: 979, column: 1, scope: !3065, inlinedAt: !3145)
!3163 = !DILocation(line: 990, column: 3, scope: !3137)
!3164 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !281, file: !281, line: 994, type: !2924, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !3165)
!3165 = !{!3166, !3167}
!3166 = !DILocalVariable(name: "arg", arg: 1, scope: !3164, file: !281, line: 994, type: !55)
!3167 = !DILocalVariable(name: "argsize", arg: 2, scope: !3164, file: !281, line: 994, type: !44)
!3168 = !DILocation(line: 994, column: 33, scope: !3164)
!3169 = !DILocation(line: 994, column: 45, scope: !3164)
!3170 = !DILocation(line: 973, column: 32, scope: !3065, inlinedAt: !3171)
!3171 = distinct !DILocation(line: 996, column: 10, scope: !3164)
!3172 = !DILocation(line: 973, column: 44, scope: !3065, inlinedAt: !3171)
!3173 = !DILocation(line: 973, column: 58, scope: !3065, inlinedAt: !3171)
!3174 = !DILocation(line: 975, column: 3, scope: !3065, inlinedAt: !3171)
!3175 = !DILocation(line: 976, column: 13, scope: !3065, inlinedAt: !3171)
!3176 = !DILocation(line: 975, column: 26, scope: !3065, inlinedAt: !3171)
!3177 = !DILocation(line: 144, column: 43, scope: !1823, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 977, column: 3, scope: !3065, inlinedAt: !3171)
!3179 = !DILocation(line: 144, column: 51, scope: !1823, inlinedAt: !3178)
!3180 = !DILocation(line: 144, column: 58, scope: !1823, inlinedAt: !3178)
!3181 = !DILocation(line: 146, column: 17, scope: !1823, inlinedAt: !3178)
!3182 = !DILocation(line: 148, column: 57, scope: !1823, inlinedAt: !3178)
!3183 = !DILocation(line: 147, column: 17, scope: !1823, inlinedAt: !3178)
!3184 = !DILocation(line: 149, column: 7, scope: !1823, inlinedAt: !3178)
!3185 = !DILocation(line: 150, column: 12, scope: !1823, inlinedAt: !3178)
!3186 = !DILocation(line: 151, column: 6, scope: !1823, inlinedAt: !3178)
!3187 = !DILocation(line: 978, column: 10, scope: !3065, inlinedAt: !3171)
!3188 = !DILocation(line: 979, column: 1, scope: !3065, inlinedAt: !3171)
!3189 = !DILocation(line: 996, column: 3, scope: !3164)
!3190 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !281, file: !281, line: 1000, type: !2938, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !3191)
!3191 = !{!3192, !3193, !3194, !3195}
!3192 = !DILocalVariable(name: "n", arg: 1, scope: !3190, file: !281, line: 1000, type: !43)
!3193 = !DILocalVariable(name: "s", arg: 2, scope: !3190, file: !281, line: 1000, type: !5)
!3194 = !DILocalVariable(name: "arg", arg: 3, scope: !3190, file: !281, line: 1000, type: !55)
!3195 = !DILocalVariable(name: "options", scope: !3190, file: !281, line: 1002, type: !288)
!3196 = !DILocation(line: 187, column: 26, scope: !2946, inlinedAt: !3197)
!3197 = distinct !DILocation(line: 1003, column: 13, scope: !3190)
!3198 = !DILocation(line: 1000, column: 29, scope: !3190)
!3199 = !DILocation(line: 1000, column: 51, scope: !3190)
!3200 = !DILocation(line: 1000, column: 66, scope: !3190)
!3201 = !DILocation(line: 1002, column: 3, scope: !3190)
!3202 = !DILocation(line: 185, column: 48, scope: !2946, inlinedAt: !3197)
!3203 = !DILocation(line: 187, column: 3, scope: !2946, inlinedAt: !3197)
!3204 = !DILocation(line: 188, column: 13, scope: !2963, inlinedAt: !3197)
!3205 = !DILocation(line: 188, column: 7, scope: !2946, inlinedAt: !3197)
!3206 = !DILocation(line: 189, column: 5, scope: !2963, inlinedAt: !3197)
!3207 = !{!3208}
!3208 = distinct !{!3208, !3209, !"quoting_options_from_style: argument 0"}
!3209 = distinct !{!3209, !"quoting_options_from_style"}
!3210 = !DILocation(line: 191, column: 10, scope: !2946, inlinedAt: !3197)
!3211 = !DILocation(line: 192, column: 1, scope: !2946, inlinedAt: !3197)
!3212 = !DILocation(line: 1003, column: 13, scope: !3190)
!3213 = !DILocation(line: 1002, column: 26, scope: !3190)
!3214 = !DILocation(line: 144, column: 43, scope: !1823, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 1004, column: 3, scope: !3190)
!3216 = !DILocation(line: 144, column: 51, scope: !1823, inlinedAt: !3215)
!3217 = !DILocation(line: 144, column: 58, scope: !1823, inlinedAt: !3215)
!3218 = !DILocation(line: 146, column: 17, scope: !1823, inlinedAt: !3215)
!3219 = !DILocation(line: 148, column: 57, scope: !1823, inlinedAt: !3215)
!3220 = !DILocation(line: 147, column: 17, scope: !1823, inlinedAt: !3215)
!3221 = !DILocation(line: 149, column: 7, scope: !1823, inlinedAt: !3215)
!3222 = !DILocation(line: 150, column: 12, scope: !1823, inlinedAt: !3215)
!3223 = !DILocation(line: 151, column: 6, scope: !1823, inlinedAt: !3215)
!3224 = !DILocation(line: 1005, column: 10, scope: !3190)
!3225 = !DILocation(line: 1006, column: 1, scope: !3190)
!3226 = !DILocation(line: 1005, column: 3, scope: !3190)
!3227 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !281, file: !281, line: 1009, type: !3228, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !3230)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!39, !43, !55, !55, !55}
!3230 = !{!3231, !3232, !3233, !3234}
!3231 = !DILocalVariable(name: "n", arg: 1, scope: !3227, file: !281, line: 1009, type: !43)
!3232 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3227, file: !281, line: 1009, type: !55)
!3233 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3227, file: !281, line: 1010, type: !55)
!3234 = !DILocalVariable(name: "arg", arg: 4, scope: !3227, file: !281, line: 1010, type: !55)
!3235 = !DILocation(line: 1009, column: 24, scope: !3227)
!3236 = !DILocation(line: 1009, column: 39, scope: !3227)
!3237 = !DILocation(line: 1010, column: 32, scope: !3227)
!3238 = !DILocation(line: 1010, column: 57, scope: !3227)
!3239 = !DILocalVariable(name: "n", arg: 1, scope: !3240, file: !281, line: 1017, type: !43)
!3240 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !281, file: !281, line: 1017, type: !3241, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !3243)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!39, !43, !55, !55, !55, !44}
!3243 = !{!3239, !3244, !3245, !3246, !3247, !3248}
!3244 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3240, file: !281, line: 1017, type: !55)
!3245 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3240, file: !281, line: 1018, type: !55)
!3246 = !DILocalVariable(name: "arg", arg: 4, scope: !3240, file: !281, line: 1019, type: !55)
!3247 = !DILocalVariable(name: "argsize", arg: 5, scope: !3240, file: !281, line: 1019, type: !44)
!3248 = !DILocalVariable(name: "o", scope: !3240, file: !281, line: 1021, type: !288)
!3249 = !DILocation(line: 1017, column: 28, scope: !3240, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 1012, column: 10, scope: !3227)
!3251 = !DILocation(line: 1017, column: 43, scope: !3240, inlinedAt: !3250)
!3252 = !DILocation(line: 1018, column: 36, scope: !3240, inlinedAt: !3250)
!3253 = !DILocation(line: 1019, column: 36, scope: !3240, inlinedAt: !3250)
!3254 = !DILocation(line: 1019, column: 48, scope: !3240, inlinedAt: !3250)
!3255 = !DILocation(line: 1021, column: 3, scope: !3240, inlinedAt: !3250)
!3256 = !DILocation(line: 1021, column: 30, scope: !3240, inlinedAt: !3250)
!3257 = !DILocation(line: 1021, column: 26, scope: !3240, inlinedAt: !3250)
!3258 = !DILocation(line: 171, column: 45, scope: !1872, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 1022, column: 3, scope: !3240, inlinedAt: !3250)
!3260 = !DILocation(line: 172, column: 33, scope: !1872, inlinedAt: !3259)
!3261 = !DILocation(line: 172, column: 57, scope: !1872, inlinedAt: !3259)
!3262 = !DILocation(line: 176, column: 6, scope: !1872, inlinedAt: !3259)
!3263 = !DILocation(line: 176, column: 12, scope: !1872, inlinedAt: !3259)
!3264 = !DILocation(line: 177, column: 8, scope: !1888, inlinedAt: !3259)
!3265 = !DILocation(line: 177, column: 23, scope: !1888, inlinedAt: !3259)
!3266 = !DILocation(line: 177, column: 19, scope: !1888, inlinedAt: !3259)
!3267 = !DILocation(line: 178, column: 5, scope: !1888, inlinedAt: !3259)
!3268 = !DILocation(line: 179, column: 6, scope: !1872, inlinedAt: !3259)
!3269 = !DILocation(line: 179, column: 17, scope: !1872, inlinedAt: !3259)
!3270 = !DILocation(line: 180, column: 6, scope: !1872, inlinedAt: !3259)
!3271 = !DILocation(line: 180, column: 18, scope: !1872, inlinedAt: !3259)
!3272 = !DILocation(line: 1023, column: 10, scope: !3240, inlinedAt: !3250)
!3273 = !DILocation(line: 1024, column: 1, scope: !3240, inlinedAt: !3250)
!3274 = !DILocation(line: 1012, column: 3, scope: !3227)
!3275 = !DILocation(line: 1017, column: 28, scope: !3240)
!3276 = !DILocation(line: 1017, column: 43, scope: !3240)
!3277 = !DILocation(line: 1018, column: 36, scope: !3240)
!3278 = !DILocation(line: 1019, column: 36, scope: !3240)
!3279 = !DILocation(line: 1019, column: 48, scope: !3240)
!3280 = !DILocation(line: 1021, column: 3, scope: !3240)
!3281 = !DILocation(line: 1021, column: 30, scope: !3240)
!3282 = !DILocation(line: 1021, column: 26, scope: !3240)
!3283 = !DILocation(line: 171, column: 45, scope: !1872, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 1022, column: 3, scope: !3240)
!3285 = !DILocation(line: 172, column: 33, scope: !1872, inlinedAt: !3284)
!3286 = !DILocation(line: 172, column: 57, scope: !1872, inlinedAt: !3284)
!3287 = !DILocation(line: 176, column: 6, scope: !1872, inlinedAt: !3284)
!3288 = !DILocation(line: 176, column: 12, scope: !1872, inlinedAt: !3284)
!3289 = !DILocation(line: 177, column: 8, scope: !1888, inlinedAt: !3284)
!3290 = !DILocation(line: 177, column: 23, scope: !1888, inlinedAt: !3284)
!3291 = !DILocation(line: 177, column: 19, scope: !1888, inlinedAt: !3284)
!3292 = !DILocation(line: 178, column: 5, scope: !1888, inlinedAt: !3284)
!3293 = !DILocation(line: 179, column: 6, scope: !1872, inlinedAt: !3284)
!3294 = !DILocation(line: 179, column: 17, scope: !1872, inlinedAt: !3284)
!3295 = !DILocation(line: 180, column: 6, scope: !1872, inlinedAt: !3284)
!3296 = !DILocation(line: 180, column: 18, scope: !1872, inlinedAt: !3284)
!3297 = !DILocation(line: 1023, column: 10, scope: !3240)
!3298 = !DILocation(line: 1024, column: 1, scope: !3240)
!3299 = !DILocation(line: 1023, column: 3, scope: !3240)
!3300 = distinct !DISubprogram(name: "quotearg_custom", scope: !281, file: !281, line: 1027, type: !3301, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !3303)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!39, !55, !55, !55}
!3303 = !{!3304, !3305, !3306}
!3304 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3300, file: !281, line: 1027, type: !55)
!3305 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3300, file: !281, line: 1027, type: !55)
!3306 = !DILocalVariable(name: "arg", arg: 3, scope: !3300, file: !281, line: 1028, type: !55)
!3307 = !DILocation(line: 1027, column: 30, scope: !3300)
!3308 = !DILocation(line: 1027, column: 54, scope: !3300)
!3309 = !DILocation(line: 1028, column: 30, scope: !3300)
!3310 = !DILocation(line: 1009, column: 24, scope: !3227, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 1030, column: 10, scope: !3300)
!3312 = !DILocation(line: 1009, column: 39, scope: !3227, inlinedAt: !3311)
!3313 = !DILocation(line: 1010, column: 32, scope: !3227, inlinedAt: !3311)
!3314 = !DILocation(line: 1010, column: 57, scope: !3227, inlinedAt: !3311)
!3315 = !DILocation(line: 1017, column: 28, scope: !3240, inlinedAt: !3316)
!3316 = distinct !DILocation(line: 1012, column: 10, scope: !3227, inlinedAt: !3311)
!3317 = !DILocation(line: 1017, column: 43, scope: !3240, inlinedAt: !3316)
!3318 = !DILocation(line: 1018, column: 36, scope: !3240, inlinedAt: !3316)
!3319 = !DILocation(line: 1019, column: 36, scope: !3240, inlinedAt: !3316)
!3320 = !DILocation(line: 1019, column: 48, scope: !3240, inlinedAt: !3316)
!3321 = !DILocation(line: 1021, column: 3, scope: !3240, inlinedAt: !3316)
!3322 = !DILocation(line: 1021, column: 30, scope: !3240, inlinedAt: !3316)
!3323 = !DILocation(line: 1021, column: 26, scope: !3240, inlinedAt: !3316)
!3324 = !DILocation(line: 171, column: 45, scope: !1872, inlinedAt: !3325)
!3325 = distinct !DILocation(line: 1022, column: 3, scope: !3240, inlinedAt: !3316)
!3326 = !DILocation(line: 172, column: 33, scope: !1872, inlinedAt: !3325)
!3327 = !DILocation(line: 172, column: 57, scope: !1872, inlinedAt: !3325)
!3328 = !DILocation(line: 176, column: 6, scope: !1872, inlinedAt: !3325)
!3329 = !DILocation(line: 176, column: 12, scope: !1872, inlinedAt: !3325)
!3330 = !DILocation(line: 177, column: 8, scope: !1888, inlinedAt: !3325)
!3331 = !DILocation(line: 177, column: 23, scope: !1888, inlinedAt: !3325)
!3332 = !DILocation(line: 177, column: 19, scope: !1888, inlinedAt: !3325)
!3333 = !DILocation(line: 178, column: 5, scope: !1888, inlinedAt: !3325)
!3334 = !DILocation(line: 179, column: 6, scope: !1872, inlinedAt: !3325)
!3335 = !DILocation(line: 179, column: 17, scope: !1872, inlinedAt: !3325)
!3336 = !DILocation(line: 180, column: 6, scope: !1872, inlinedAt: !3325)
!3337 = !DILocation(line: 180, column: 18, scope: !1872, inlinedAt: !3325)
!3338 = !DILocation(line: 1023, column: 10, scope: !3240, inlinedAt: !3316)
!3339 = !DILocation(line: 1024, column: 1, scope: !3240, inlinedAt: !3316)
!3340 = !DILocation(line: 1030, column: 3, scope: !3300)
!3341 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !281, file: !281, line: 1034, type: !3342, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !3344)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!39, !55, !55, !55, !44}
!3344 = !{!3345, !3346, !3347, !3348}
!3345 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3341, file: !281, line: 1034, type: !55)
!3346 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3341, file: !281, line: 1034, type: !55)
!3347 = !DILocalVariable(name: "arg", arg: 3, scope: !3341, file: !281, line: 1035, type: !55)
!3348 = !DILocalVariable(name: "argsize", arg: 4, scope: !3341, file: !281, line: 1035, type: !44)
!3349 = !DILocation(line: 1034, column: 34, scope: !3341)
!3350 = !DILocation(line: 1034, column: 58, scope: !3341)
!3351 = !DILocation(line: 1035, column: 34, scope: !3341)
!3352 = !DILocation(line: 1035, column: 46, scope: !3341)
!3353 = !DILocation(line: 1017, column: 28, scope: !3240, inlinedAt: !3354)
!3354 = distinct !DILocation(line: 1037, column: 10, scope: !3341)
!3355 = !DILocation(line: 1017, column: 43, scope: !3240, inlinedAt: !3354)
!3356 = !DILocation(line: 1018, column: 36, scope: !3240, inlinedAt: !3354)
!3357 = !DILocation(line: 1019, column: 36, scope: !3240, inlinedAt: !3354)
!3358 = !DILocation(line: 1019, column: 48, scope: !3240, inlinedAt: !3354)
!3359 = !DILocation(line: 1021, column: 3, scope: !3240, inlinedAt: !3354)
!3360 = !DILocation(line: 1021, column: 30, scope: !3240, inlinedAt: !3354)
!3361 = !DILocation(line: 1021, column: 26, scope: !3240, inlinedAt: !3354)
!3362 = !DILocation(line: 171, column: 45, scope: !1872, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 1022, column: 3, scope: !3240, inlinedAt: !3354)
!3364 = !DILocation(line: 172, column: 33, scope: !1872, inlinedAt: !3363)
!3365 = !DILocation(line: 172, column: 57, scope: !1872, inlinedAt: !3363)
!3366 = !DILocation(line: 176, column: 6, scope: !1872, inlinedAt: !3363)
!3367 = !DILocation(line: 176, column: 12, scope: !1872, inlinedAt: !3363)
!3368 = !DILocation(line: 177, column: 8, scope: !1888, inlinedAt: !3363)
!3369 = !DILocation(line: 177, column: 23, scope: !1888, inlinedAt: !3363)
!3370 = !DILocation(line: 177, column: 19, scope: !1888, inlinedAt: !3363)
!3371 = !DILocation(line: 178, column: 5, scope: !1888, inlinedAt: !3363)
!3372 = !DILocation(line: 179, column: 6, scope: !1872, inlinedAt: !3363)
!3373 = !DILocation(line: 179, column: 17, scope: !1872, inlinedAt: !3363)
!3374 = !DILocation(line: 180, column: 6, scope: !1872, inlinedAt: !3363)
!3375 = !DILocation(line: 180, column: 18, scope: !1872, inlinedAt: !3363)
!3376 = !DILocation(line: 1023, column: 10, scope: !3240, inlinedAt: !3354)
!3377 = !DILocation(line: 1024, column: 1, scope: !3240, inlinedAt: !3354)
!3378 = !DILocation(line: 1037, column: 3, scope: !3341)
!3379 = distinct !DISubprogram(name: "quote_n_mem", scope: !281, file: !281, line: 1052, type: !3380, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !3382)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!55, !43, !55, !44}
!3382 = !{!3383, !3384, !3385}
!3383 = !DILocalVariable(name: "n", arg: 1, scope: !3379, file: !281, line: 1052, type: !43)
!3384 = !DILocalVariable(name: "arg", arg: 2, scope: !3379, file: !281, line: 1052, type: !55)
!3385 = !DILocalVariable(name: "argsize", arg: 3, scope: !3379, file: !281, line: 1052, type: !44)
!3386 = !DILocation(line: 1052, column: 18, scope: !3379)
!3387 = !DILocation(line: 1052, column: 33, scope: !3379)
!3388 = !DILocation(line: 1052, column: 45, scope: !3379)
!3389 = !DILocation(line: 1054, column: 10, scope: !3379)
!3390 = !DILocation(line: 1054, column: 3, scope: !3379)
!3391 = distinct !DISubprogram(name: "quote_mem", scope: !281, file: !281, line: 1058, type: !3392, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !3394)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!55, !55, !44}
!3394 = !{!3395, !3396}
!3395 = !DILocalVariable(name: "arg", arg: 1, scope: !3391, file: !281, line: 1058, type: !55)
!3396 = !DILocalVariable(name: "argsize", arg: 2, scope: !3391, file: !281, line: 1058, type: !44)
!3397 = !DILocation(line: 1058, column: 24, scope: !3391)
!3398 = !DILocation(line: 1058, column: 36, scope: !3391)
!3399 = !DILocation(line: 1052, column: 18, scope: !3379, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 1060, column: 10, scope: !3391)
!3401 = !DILocation(line: 1052, column: 33, scope: !3379, inlinedAt: !3400)
!3402 = !DILocation(line: 1052, column: 45, scope: !3379, inlinedAt: !3400)
!3403 = !DILocation(line: 1054, column: 10, scope: !3379, inlinedAt: !3400)
!3404 = !DILocation(line: 1060, column: 3, scope: !3391)
!3405 = distinct !DISubprogram(name: "quote_n", scope: !281, file: !281, line: 1064, type: !3406, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !3408)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!55, !43, !55}
!3408 = !{!3409, !3410}
!3409 = !DILocalVariable(name: "n", arg: 1, scope: !3405, file: !281, line: 1064, type: !43)
!3410 = !DILocalVariable(name: "arg", arg: 2, scope: !3405, file: !281, line: 1064, type: !55)
!3411 = !DILocation(line: 1064, column: 14, scope: !3405)
!3412 = !DILocation(line: 1064, column: 29, scope: !3405)
!3413 = !DILocation(line: 1052, column: 18, scope: !3379, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 1066, column: 10, scope: !3405)
!3415 = !DILocation(line: 1052, column: 33, scope: !3379, inlinedAt: !3414)
!3416 = !DILocation(line: 1052, column: 45, scope: !3379, inlinedAt: !3414)
!3417 = !DILocation(line: 1054, column: 10, scope: !3379, inlinedAt: !3414)
!3418 = !DILocation(line: 1066, column: 3, scope: !3405)
!3419 = distinct !DISubprogram(name: "quote", scope: !281, file: !281, line: 1070, type: !3420, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !269, variables: !3422)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!55, !55}
!3422 = !{!3423}
!3423 = !DILocalVariable(name: "arg", arg: 1, scope: !3419, file: !281, line: 1070, type: !55)
!3424 = !DILocation(line: 1070, column: 20, scope: !3419)
!3425 = !DILocation(line: 1064, column: 14, scope: !3405, inlinedAt: !3426)
!3426 = distinct !DILocation(line: 1072, column: 10, scope: !3419)
!3427 = !DILocation(line: 1064, column: 29, scope: !3405, inlinedAt: !3426)
!3428 = !DILocation(line: 1052, column: 18, scope: !3379, inlinedAt: !3429)
!3429 = distinct !DILocation(line: 1066, column: 10, scope: !3405, inlinedAt: !3426)
!3430 = !DILocation(line: 1052, column: 33, scope: !3379, inlinedAt: !3429)
!3431 = !DILocation(line: 1052, column: 45, scope: !3379, inlinedAt: !3429)
!3432 = !DILocation(line: 1054, column: 10, scope: !3379, inlinedAt: !3429)
!3433 = !DILocation(line: 1072, column: 3, scope: !3419)
!3434 = distinct !DISubprogram(name: "version_etc_arn", scope: !686, file: !686, line: 62, type: !3435, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !682, variables: !3478)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{null, !3437, !55, !55, !55, !3477, !44}
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !819, line: 7, baseType: !3439)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !821, line: 241, size: 1728, elements: !3440)
!3440 = !{!3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3439, file: !821, line: 242, baseType: !43, size: 32)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3439, file: !821, line: 247, baseType: !39, size: 64, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3439, file: !821, line: 248, baseType: !39, size: 64, offset: 128)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3439, file: !821, line: 249, baseType: !39, size: 64, offset: 192)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3439, file: !821, line: 250, baseType: !39, size: 64, offset: 256)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3439, file: !821, line: 251, baseType: !39, size: 64, offset: 320)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3439, file: !821, line: 252, baseType: !39, size: 64, offset: 384)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3439, file: !821, line: 253, baseType: !39, size: 64, offset: 448)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3439, file: !821, line: 254, baseType: !39, size: 64, offset: 512)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3439, file: !821, line: 256, baseType: !39, size: 64, offset: 576)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3439, file: !821, line: 257, baseType: !39, size: 64, offset: 640)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3439, file: !821, line: 258, baseType: !39, size: 64, offset: 704)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3439, file: !821, line: 260, baseType: !3454, size: 64, offset: 768)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !821, line: 156, size: 192, elements: !3456)
!3456 = !{!3457, !3458, !3460}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3455, file: !821, line: 157, baseType: !3454, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3455, file: !821, line: 158, baseType: !3459, size: 64, offset: 64)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3455, file: !821, line: 162, baseType: !43, size: 32, offset: 128)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3439, file: !821, line: 262, baseType: !3459, size: 64, offset: 832)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3439, file: !821, line: 264, baseType: !43, size: 32, offset: 896)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3439, file: !821, line: 268, baseType: !43, size: 32, offset: 928)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3439, file: !821, line: 270, baseType: !847, size: 64, offset: 960)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3439, file: !821, line: 274, baseType: !47, size: 16, offset: 1024)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3439, file: !821, line: 275, baseType: !850, size: 8, offset: 1040)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3439, file: !821, line: 276, baseType: !852, size: 8, offset: 1048)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3439, file: !821, line: 280, baseType: !856, size: 64, offset: 1088)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3439, file: !821, line: 289, baseType: !859, size: 64, offset: 1152)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3439, file: !821, line: 297, baseType: !41, size: 64, offset: 1216)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3439, file: !821, line: 298, baseType: !41, size: 64, offset: 1280)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3439, file: !821, line: 299, baseType: !41, size: 64, offset: 1344)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3439, file: !821, line: 300, baseType: !41, size: 64, offset: 1408)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3439, file: !821, line: 302, baseType: !44, size: 64, offset: 1472)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3439, file: !821, line: 303, baseType: !43, size: 32, offset: 1536)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3439, file: !821, line: 305, baseType: !159, size: 160, offset: 1568)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!3478 = !{!3479, !3480, !3481, !3482, !3483, !3484}
!3479 = !DILocalVariable(name: "stream", arg: 1, scope: !3434, file: !686, line: 62, type: !3437)
!3480 = !DILocalVariable(name: "command_name", arg: 2, scope: !3434, file: !686, line: 63, type: !55)
!3481 = !DILocalVariable(name: "package", arg: 3, scope: !3434, file: !686, line: 63, type: !55)
!3482 = !DILocalVariable(name: "version", arg: 4, scope: !3434, file: !686, line: 64, type: !55)
!3483 = !DILocalVariable(name: "authors", arg: 5, scope: !3434, file: !686, line: 65, type: !3477)
!3484 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3434, file: !686, line: 65, type: !44)
!3485 = !DILocation(line: 62, column: 24, scope: !3434)
!3486 = !DILocation(line: 63, column: 30, scope: !3434)
!3487 = !DILocation(line: 63, column: 56, scope: !3434)
!3488 = !DILocation(line: 64, column: 30, scope: !3434)
!3489 = !DILocation(line: 65, column: 39, scope: !3434)
!3490 = !DILocation(line: 65, column: 55, scope: !3434)
!3491 = !DILocation(line: 67, column: 7, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3434, file: !686, line: 67, column: 7)
!3493 = !DILocation(line: 67, column: 7, scope: !3434)
!3494 = !DILocation(line: 68, column: 5, scope: !3492)
!3495 = !DILocation(line: 70, column: 5, scope: !3492)
!3496 = !DILocation(line: 84, column: 3, scope: !3434)
!3497 = !DILocation(line: 86, column: 3, scope: !3434)
!3498 = !DILocation(line: 95, column: 3, scope: !3434)
!3499 = !DILocation(line: 99, column: 7, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3434, file: !686, line: 96, column: 5)
!3501 = !DILocation(line: 102, column: 7, scope: !3500)
!3502 = !DILocation(line: 103, column: 7, scope: !3500)
!3503 = !DILocation(line: 106, column: 7, scope: !3500)
!3504 = !DILocation(line: 107, column: 7, scope: !3500)
!3505 = !DILocation(line: 110, column: 7, scope: !3500)
!3506 = !DILocation(line: 112, column: 7, scope: !3500)
!3507 = !DILocation(line: 117, column: 7, scope: !3500)
!3508 = !DILocation(line: 119, column: 7, scope: !3500)
!3509 = !DILocation(line: 124, column: 7, scope: !3500)
!3510 = !DILocation(line: 126, column: 7, scope: !3500)
!3511 = !DILocation(line: 131, column: 7, scope: !3500)
!3512 = !DILocation(line: 134, column: 7, scope: !3500)
!3513 = !DILocation(line: 139, column: 7, scope: !3500)
!3514 = !DILocation(line: 142, column: 7, scope: !3500)
!3515 = !DILocation(line: 147, column: 7, scope: !3500)
!3516 = !DILocation(line: 151, column: 7, scope: !3500)
!3517 = !DILocation(line: 156, column: 7, scope: !3500)
!3518 = !DILocation(line: 160, column: 7, scope: !3500)
!3519 = !DILocation(line: 167, column: 7, scope: !3500)
!3520 = !DILocation(line: 171, column: 7, scope: !3500)
!3521 = !DILocation(line: 173, column: 1, scope: !3434)
!3522 = distinct !DISubprogram(name: "version_etc_ar", scope: !686, file: !686, line: 180, type: !3523, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !682, variables: !3525)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{null, !3437, !55, !55, !55, !3477}
!3525 = !{!3526, !3527, !3528, !3529, !3530, !3531}
!3526 = !DILocalVariable(name: "stream", arg: 1, scope: !3522, file: !686, line: 180, type: !3437)
!3527 = !DILocalVariable(name: "command_name", arg: 2, scope: !3522, file: !686, line: 181, type: !55)
!3528 = !DILocalVariable(name: "package", arg: 3, scope: !3522, file: !686, line: 181, type: !55)
!3529 = !DILocalVariable(name: "version", arg: 4, scope: !3522, file: !686, line: 182, type: !55)
!3530 = !DILocalVariable(name: "authors", arg: 5, scope: !3522, file: !686, line: 182, type: !3477)
!3531 = !DILocalVariable(name: "n_authors", scope: !3522, file: !686, line: 184, type: !44)
!3532 = !DILocation(line: 180, column: 23, scope: !3522)
!3533 = !DILocation(line: 181, column: 29, scope: !3522)
!3534 = !DILocation(line: 181, column: 55, scope: !3522)
!3535 = !DILocation(line: 182, column: 29, scope: !3522)
!3536 = !DILocation(line: 182, column: 59, scope: !3522)
!3537 = !DILocation(line: 184, column: 10, scope: !3522)
!3538 = !DILocation(line: 186, column: 8, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3522, file: !686, line: 186, column: 3)
!3540 = !DILocation(line: 186, column: 23, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3539, file: !686, line: 186, column: 3)
!3542 = !DILocation(line: 186, column: 3, scope: !3539)
!3543 = !DILocation(line: 186, column: 52, scope: !3541)
!3544 = distinct !{!3544, !3542, !3545}
!3545 = !DILocation(line: 187, column: 5, scope: !3539)
!3546 = !DILocation(line: 188, column: 3, scope: !3522)
!3547 = !DILocation(line: 189, column: 1, scope: !3522)
!3548 = distinct !DISubprogram(name: "version_etc_va", scope: !686, file: !686, line: 196, type: !3549, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !682, variables: !3558)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{null, !3437, !55, !55, !55, !3551}
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !683, line: 189, size: 192, elements: !3553)
!3553 = !{!3554, !3555, !3556, !3557}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3552, file: !683, line: 189, baseType: !230, size: 32)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3552, file: !683, line: 189, baseType: !230, size: 32, offset: 32)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3552, file: !683, line: 189, baseType: !41, size: 64, offset: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3552, file: !683, line: 189, baseType: !41, size: 64, offset: 128)
!3558 = !{!3559, !3560, !3561, !3562, !3563, !3564, !3565}
!3559 = !DILocalVariable(name: "stream", arg: 1, scope: !3548, file: !686, line: 196, type: !3437)
!3560 = !DILocalVariable(name: "command_name", arg: 2, scope: !3548, file: !686, line: 197, type: !55)
!3561 = !DILocalVariable(name: "package", arg: 3, scope: !3548, file: !686, line: 197, type: !55)
!3562 = !DILocalVariable(name: "version", arg: 4, scope: !3548, file: !686, line: 198, type: !55)
!3563 = !DILocalVariable(name: "authors", arg: 5, scope: !3548, file: !686, line: 198, type: !3551)
!3564 = !DILocalVariable(name: "n_authors", scope: !3548, file: !686, line: 200, type: !44)
!3565 = !DILocalVariable(name: "authtab", scope: !3548, file: !686, line: 201, type: !3566)
!3566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 640, elements: !284)
!3567 = !DILocation(line: 196, column: 23, scope: !3548)
!3568 = !DILocation(line: 197, column: 29, scope: !3548)
!3569 = !DILocation(line: 197, column: 55, scope: !3548)
!3570 = !DILocation(line: 198, column: 29, scope: !3548)
!3571 = !DILocation(line: 198, column: 46, scope: !3548)
!3572 = !DILocation(line: 201, column: 3, scope: !3548)
!3573 = !DILocation(line: 201, column: 15, scope: !3548)
!3574 = !DILocation(line: 200, column: 10, scope: !3548)
!3575 = !DILocation(line: 205, column: 35, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3577, file: !686, line: 203, column: 3)
!3577 = distinct !DILexicalBlock(scope: !3548, file: !686, line: 203, column: 3)
!3578 = !DILocation(line: 205, column: 14, scope: !3576)
!3579 = !DILocation(line: 205, column: 33, scope: !3576)
!3580 = !DILocation(line: 205, column: 67, scope: !3576)
!3581 = !DILocation(line: 203, column: 3, scope: !3577)
!3582 = !DILocation(line: 208, column: 3, scope: !3548)
!3583 = !DILocation(line: 210, column: 1, scope: !3548)
!3584 = distinct !DISubprogram(name: "version_etc", scope: !686, file: !686, line: 227, type: !3585, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !682, variables: !3587)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{null, !3437, !55, !55, !55, null}
!3587 = !{!3588, !3589, !3590, !3591, !3592}
!3588 = !DILocalVariable(name: "stream", arg: 1, scope: !3584, file: !686, line: 227, type: !3437)
!3589 = !DILocalVariable(name: "command_name", arg: 2, scope: !3584, file: !686, line: 228, type: !55)
!3590 = !DILocalVariable(name: "package", arg: 3, scope: !3584, file: !686, line: 228, type: !55)
!3591 = !DILocalVariable(name: "version", arg: 4, scope: !3584, file: !686, line: 229, type: !55)
!3592 = !DILocalVariable(name: "authors", scope: !3584, file: !686, line: 231, type: !3593)
!3593 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3594, line: 46, baseType: !3595)
!3594 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3596, line: 48, baseType: !3597)
!3596 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !683, line: 231, baseType: !3598)
!3598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3552, size: 192, elements: !853)
!3599 = !DILocation(line: 227, column: 20, scope: !3584)
!3600 = !DILocation(line: 228, column: 26, scope: !3584)
!3601 = !DILocation(line: 228, column: 52, scope: !3584)
!3602 = !DILocation(line: 229, column: 26, scope: !3584)
!3603 = !DILocation(line: 231, column: 3, scope: !3584)
!3604 = !DILocation(line: 231, column: 11, scope: !3584)
!3605 = !DILocation(line: 233, column: 3, scope: !3584)
!3606 = !DILocation(line: 234, column: 3, scope: !3584)
!3607 = !DILocation(line: 235, column: 3, scope: !3584)
!3608 = !DILocation(line: 236, column: 1, scope: !3584)
!3609 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !686, file: !686, line: 239, type: !989, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !682, variables: !200)
!3610 = !DILocation(line: 245, column: 3, scope: !3609)
!3611 = !DILocation(line: 251, column: 3, scope: !3609)
!3612 = !DILocation(line: 256, column: 3, scope: !3609)
!3613 = !DILocation(line: 258, column: 1, scope: !3609)
!3614 = distinct !DISubprogram(name: "xnmalloc", scope: !694, file: !694, line: 105, type: !3615, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !690, variables: !3617)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!41, !44, !44}
!3617 = !{!3618, !3619}
!3618 = !DILocalVariable(name: "n", arg: 1, scope: !3614, file: !694, line: 105, type: !44)
!3619 = !DILocalVariable(name: "s", arg: 2, scope: !3614, file: !694, line: 105, type: !44)
!3620 = !DILocation(line: 105, column: 18, scope: !3614)
!3621 = !DILocation(line: 105, column: 28, scope: !3614)
!3622 = !DILocation(line: 107, column: 7, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3614, file: !694, line: 107, column: 7)
!3624 = !DILocation(line: 107, column: 7, scope: !3614)
!3625 = !DILocation(line: 108, column: 5, scope: !3623)
!3626 = !DILocation(line: 109, column: 21, scope: !3614)
!3627 = !DILocalVariable(name: "n", arg: 1, scope: !3628, file: !3629, line: 39, type: !44)
!3628 = distinct !DISubprogram(name: "xmalloc", scope: !3629, file: !3629, line: 39, type: !3630, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !690, variables: !3632)
!3629 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!41, !44}
!3632 = !{!3627, !3633}
!3633 = !DILocalVariable(name: "p", scope: !3628, file: !3629, line: 41, type: !41)
!3634 = !DILocation(line: 39, column: 17, scope: !3628, inlinedAt: !3635)
!3635 = distinct !DILocation(line: 109, column: 10, scope: !3614)
!3636 = !DILocation(line: 41, column: 13, scope: !3628, inlinedAt: !3635)
!3637 = !DILocation(line: 41, column: 9, scope: !3628, inlinedAt: !3635)
!3638 = !DILocation(line: 42, column: 8, scope: !3639, inlinedAt: !3635)
!3639 = distinct !DILexicalBlock(scope: !3628, file: !3629, line: 42, column: 7)
!3640 = !DILocation(line: 42, column: 15, scope: !3639, inlinedAt: !3635)
!3641 = !DILocation(line: 42, column: 10, scope: !3639, inlinedAt: !3635)
!3642 = !DILocation(line: 43, column: 5, scope: !3639, inlinedAt: !3635)
!3643 = !DILocation(line: 109, column: 3, scope: !3614)
!3644 = !DILocation(line: 39, column: 17, scope: !3628)
!3645 = !DILocation(line: 41, column: 13, scope: !3628)
!3646 = !DILocation(line: 41, column: 9, scope: !3628)
!3647 = !DILocation(line: 42, column: 8, scope: !3639)
!3648 = !DILocation(line: 42, column: 15, scope: !3639)
!3649 = !DILocation(line: 42, column: 10, scope: !3639)
!3650 = !DILocation(line: 43, column: 5, scope: !3639)
!3651 = !DILocation(line: 44, column: 3, scope: !3628)
!3652 = distinct !DISubprogram(name: "xnrealloc", scope: !694, file: !694, line: 118, type: !3653, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !690, variables: !3655)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{!41, !41, !44, !44}
!3655 = !{!3656, !3657, !3658}
!3656 = !DILocalVariable(name: "p", arg: 1, scope: !3652, file: !694, line: 118, type: !41)
!3657 = !DILocalVariable(name: "n", arg: 2, scope: !3652, file: !694, line: 118, type: !44)
!3658 = !DILocalVariable(name: "s", arg: 3, scope: !3652, file: !694, line: 118, type: !44)
!3659 = !DILocation(line: 118, column: 18, scope: !3652)
!3660 = !DILocation(line: 118, column: 28, scope: !3652)
!3661 = !DILocation(line: 118, column: 38, scope: !3652)
!3662 = !DILocation(line: 120, column: 7, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3652, file: !694, line: 120, column: 7)
!3664 = !DILocation(line: 120, column: 7, scope: !3652)
!3665 = !DILocation(line: 121, column: 5, scope: !3663)
!3666 = !DILocation(line: 122, column: 25, scope: !3652)
!3667 = !DILocalVariable(name: "p", arg: 1, scope: !3668, file: !3629, line: 51, type: !41)
!3668 = distinct !DISubprogram(name: "xrealloc", scope: !3629, file: !3629, line: 51, type: !3669, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !690, variables: !3671)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!41, !41, !44}
!3671 = !{!3667, !3672}
!3672 = !DILocalVariable(name: "n", arg: 2, scope: !3668, file: !3629, line: 51, type: !44)
!3673 = !DILocation(line: 51, column: 17, scope: !3668, inlinedAt: !3674)
!3674 = distinct !DILocation(line: 122, column: 10, scope: !3652)
!3675 = !DILocation(line: 51, column: 27, scope: !3668, inlinedAt: !3674)
!3676 = !DILocation(line: 53, column: 8, scope: !3677, inlinedAt: !3674)
!3677 = distinct !DILexicalBlock(scope: !3668, file: !3629, line: 53, column: 7)
!3678 = !DILocation(line: 53, column: 13, scope: !3677, inlinedAt: !3674)
!3679 = !DILocation(line: 53, column: 10, scope: !3677, inlinedAt: !3674)
!3680 = !DILocation(line: 57, column: 7, scope: !3681, inlinedAt: !3674)
!3681 = distinct !DILexicalBlock(scope: !3677, file: !3629, line: 54, column: 5)
!3682 = !DILocation(line: 58, column: 7, scope: !3681, inlinedAt: !3674)
!3683 = !DILocation(line: 61, column: 7, scope: !3668, inlinedAt: !3674)
!3684 = !DILocation(line: 62, column: 8, scope: !3685, inlinedAt: !3674)
!3685 = distinct !DILexicalBlock(scope: !3668, file: !3629, line: 62, column: 7)
!3686 = !DILocation(line: 62, column: 13, scope: !3685, inlinedAt: !3674)
!3687 = !DILocation(line: 62, column: 10, scope: !3685, inlinedAt: !3674)
!3688 = !DILocation(line: 63, column: 5, scope: !3685, inlinedAt: !3674)
!3689 = !DILocation(line: 122, column: 3, scope: !3652)
!3690 = !DILocation(line: 51, column: 17, scope: !3668)
!3691 = !DILocation(line: 51, column: 27, scope: !3668)
!3692 = !DILocation(line: 53, column: 8, scope: !3677)
!3693 = !DILocation(line: 53, column: 13, scope: !3677)
!3694 = !DILocation(line: 53, column: 10, scope: !3677)
!3695 = !DILocation(line: 57, column: 7, scope: !3681)
!3696 = !DILocation(line: 58, column: 7, scope: !3681)
!3697 = !DILocation(line: 61, column: 7, scope: !3668)
!3698 = !DILocation(line: 62, column: 8, scope: !3685)
!3699 = !DILocation(line: 62, column: 13, scope: !3685)
!3700 = !DILocation(line: 62, column: 10, scope: !3685)
!3701 = !DILocation(line: 63, column: 5, scope: !3685)
!3702 = !DILocation(line: 65, column: 1, scope: !3668)
!3703 = !DILocation(line: 180, column: 19, scope: !695)
!3704 = !DILocation(line: 180, column: 30, scope: !695)
!3705 = !DILocation(line: 180, column: 41, scope: !695)
!3706 = !DILocation(line: 182, column: 14, scope: !695)
!3707 = !DILocation(line: 182, column: 10, scope: !695)
!3708 = !DILocation(line: 184, column: 9, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !695, file: !694, line: 184, column: 7)
!3710 = !DILocation(line: 184, column: 7, scope: !695)
!3711 = !DILocation(line: 186, column: 13, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3713, file: !694, line: 186, column: 11)
!3713 = distinct !DILexicalBlock(scope: !3709, file: !694, line: 185, column: 5)
!3714 = !DILocation(line: 186, column: 11, scope: !3713)
!3715 = !DILocation(line: 194, column: 30, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3712, file: !694, line: 187, column: 9)
!3717 = !DILocation(line: 195, column: 16, scope: !3716)
!3718 = !DILocation(line: 195, column: 13, scope: !3716)
!3719 = !DILocation(line: 196, column: 9, scope: !3716)
!3720 = !DILocation(line: 204, column: 69, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3722, file: !694, line: 204, column: 11)
!3722 = distinct !DILexicalBlock(scope: !3709, file: !694, line: 199, column: 5)
!3723 = !DILocation(line: 205, column: 11, scope: !3721)
!3724 = !DILocation(line: 204, column: 11, scope: !3722)
!3725 = !DILocation(line: 206, column: 9, scope: !3721)
!3726 = !DILocation(line: 210, column: 7, scope: !695)
!3727 = !DILocation(line: 211, column: 25, scope: !695)
!3728 = !DILocation(line: 51, column: 17, scope: !3668, inlinedAt: !3729)
!3729 = distinct !DILocation(line: 211, column: 10, scope: !695)
!3730 = !DILocation(line: 51, column: 27, scope: !3668, inlinedAt: !3729)
!3731 = !DILocation(line: 53, column: 10, scope: !3677, inlinedAt: !3729)
!3732 = !DILocation(line: 207, column: 14, scope: !3722)
!3733 = !DILocation(line: 207, column: 18, scope: !3722)
!3734 = !DILocation(line: 207, column: 9, scope: !3722)
!3735 = !DILocation(line: 53, column: 8, scope: !3677, inlinedAt: !3729)
!3736 = !DILocation(line: 57, column: 7, scope: !3681, inlinedAt: !3729)
!3737 = !DILocation(line: 58, column: 7, scope: !3681, inlinedAt: !3729)
!3738 = !DILocation(line: 61, column: 7, scope: !3668, inlinedAt: !3729)
!3739 = !DILocation(line: 62, column: 8, scope: !3685, inlinedAt: !3729)
!3740 = !DILocation(line: 62, column: 13, scope: !3685, inlinedAt: !3729)
!3741 = !DILocation(line: 62, column: 10, scope: !3685, inlinedAt: !3729)
!3742 = !DILocation(line: 63, column: 5, scope: !3685, inlinedAt: !3729)
!3743 = !DILocation(line: 211, column: 3, scope: !695)
!3744 = distinct !DISubprogram(name: "xcharalloc", scope: !694, file: !694, line: 220, type: !2715, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !690, variables: !3745)
!3745 = !{!3746}
!3746 = !DILocalVariable(name: "n", arg: 1, scope: !3744, file: !694, line: 220, type: !44)
!3747 = !DILocation(line: 220, column: 20, scope: !3744)
!3748 = !DILocation(line: 39, column: 17, scope: !3628, inlinedAt: !3749)
!3749 = distinct !DILocation(line: 222, column: 10, scope: !3744)
!3750 = !DILocation(line: 41, column: 13, scope: !3628, inlinedAt: !3749)
!3751 = !DILocation(line: 41, column: 9, scope: !3628, inlinedAt: !3749)
!3752 = !DILocation(line: 42, column: 8, scope: !3639, inlinedAt: !3749)
!3753 = !DILocation(line: 42, column: 15, scope: !3639, inlinedAt: !3749)
!3754 = !DILocation(line: 42, column: 10, scope: !3639, inlinedAt: !3749)
!3755 = !DILocation(line: 43, column: 5, scope: !3639, inlinedAt: !3749)
!3756 = !DILocation(line: 222, column: 3, scope: !3744)
!3757 = distinct !DISubprogram(name: "x2realloc", scope: !3629, file: !3629, line: 74, type: !3758, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !690, variables: !3760)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!41, !41, !698}
!3760 = !{!3761, !3762}
!3761 = !DILocalVariable(name: "p", arg: 1, scope: !3757, file: !3629, line: 74, type: !41)
!3762 = !DILocalVariable(name: "pn", arg: 2, scope: !3757, file: !3629, line: 74, type: !698)
!3763 = !DILocation(line: 74, column: 18, scope: !3757)
!3764 = !DILocation(line: 74, column: 29, scope: !3757)
!3765 = !DILocation(line: 180, column: 19, scope: !695, inlinedAt: !3766)
!3766 = distinct !DILocation(line: 76, column: 10, scope: !3757)
!3767 = !DILocation(line: 180, column: 30, scope: !695, inlinedAt: !3766)
!3768 = !DILocation(line: 180, column: 41, scope: !695, inlinedAt: !3766)
!3769 = !DILocation(line: 182, column: 14, scope: !695, inlinedAt: !3766)
!3770 = !DILocation(line: 182, column: 10, scope: !695, inlinedAt: !3766)
!3771 = !DILocation(line: 184, column: 9, scope: !3709, inlinedAt: !3766)
!3772 = !DILocation(line: 184, column: 7, scope: !695, inlinedAt: !3766)
!3773 = !DILocation(line: 186, column: 13, scope: !3712, inlinedAt: !3766)
!3774 = !DILocation(line: 186, column: 11, scope: !3713, inlinedAt: !3766)
!3775 = !DILocation(line: 210, column: 7, scope: !695, inlinedAt: !3766)
!3776 = !DILocation(line: 51, column: 17, scope: !3668, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 211, column: 10, scope: !695, inlinedAt: !3766)
!3778 = !DILocation(line: 51, column: 27, scope: !3668, inlinedAt: !3777)
!3779 = !DILocation(line: 53, column: 10, scope: !3677, inlinedAt: !3777)
!3780 = !DILocation(line: 205, column: 11, scope: !3721, inlinedAt: !3766)
!3781 = !DILocation(line: 204, column: 11, scope: !3722, inlinedAt: !3766)
!3782 = !DILocation(line: 206, column: 9, scope: !3721, inlinedAt: !3766)
!3783 = !DILocation(line: 207, column: 14, scope: !3722, inlinedAt: !3766)
!3784 = !DILocation(line: 207, column: 18, scope: !3722, inlinedAt: !3766)
!3785 = !DILocation(line: 207, column: 9, scope: !3722, inlinedAt: !3766)
!3786 = !DILocation(line: 53, column: 8, scope: !3677, inlinedAt: !3777)
!3787 = !DILocation(line: 57, column: 7, scope: !3681, inlinedAt: !3777)
!3788 = !DILocation(line: 58, column: 7, scope: !3681, inlinedAt: !3777)
!3789 = !DILocation(line: 61, column: 7, scope: !3668, inlinedAt: !3777)
!3790 = !DILocation(line: 62, column: 8, scope: !3685, inlinedAt: !3777)
!3791 = !DILocation(line: 62, column: 13, scope: !3685, inlinedAt: !3777)
!3792 = !DILocation(line: 62, column: 10, scope: !3685, inlinedAt: !3777)
!3793 = !DILocation(line: 63, column: 5, scope: !3685, inlinedAt: !3777)
!3794 = !DILocation(line: 76, column: 3, scope: !3757)
!3795 = distinct !DISubprogram(name: "xzalloc", scope: !3629, file: !3629, line: 84, type: !3630, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !690, variables: !3796)
!3796 = !{!3797}
!3797 = !DILocalVariable(name: "s", arg: 1, scope: !3795, file: !3629, line: 84, type: !44)
!3798 = !DILocation(line: 84, column: 17, scope: !3795)
!3799 = !DILocation(line: 39, column: 17, scope: !3628, inlinedAt: !3800)
!3800 = distinct !DILocation(line: 86, column: 18, scope: !3795)
!3801 = !DILocation(line: 41, column: 13, scope: !3628, inlinedAt: !3800)
!3802 = !DILocation(line: 41, column: 9, scope: !3628, inlinedAt: !3800)
!3803 = !DILocation(line: 42, column: 8, scope: !3639, inlinedAt: !3800)
!3804 = !DILocation(line: 42, column: 15, scope: !3639, inlinedAt: !3800)
!3805 = !DILocation(line: 42, column: 10, scope: !3639, inlinedAt: !3800)
!3806 = !DILocation(line: 43, column: 5, scope: !3639, inlinedAt: !3800)
!3807 = !DILocation(line: 86, column: 10, scope: !3795)
!3808 = !DILocation(line: 86, column: 3, scope: !3795)
!3809 = distinct !DISubprogram(name: "xcalloc", scope: !3629, file: !3629, line: 93, type: !3615, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !690, variables: !3810)
!3810 = !{!3811, !3812, !3813}
!3811 = !DILocalVariable(name: "n", arg: 1, scope: !3809, file: !3629, line: 93, type: !44)
!3812 = !DILocalVariable(name: "s", arg: 2, scope: !3809, file: !3629, line: 93, type: !44)
!3813 = !DILocalVariable(name: "p", scope: !3809, file: !3629, line: 95, type: !41)
!3814 = !DILocation(line: 93, column: 17, scope: !3809)
!3815 = !DILocation(line: 93, column: 27, scope: !3809)
!3816 = !DILocation(line: 100, column: 7, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3809, file: !3629, line: 100, column: 7)
!3818 = !DILocation(line: 101, column: 7, scope: !3817)
!3819 = !DILocation(line: 101, column: 18, scope: !3817)
!3820 = !DILocation(line: 95, column: 9, scope: !3809)
!3821 = !DILocation(line: 101, column: 16, scope: !3817)
!3822 = !DILocation(line: 100, column: 7, scope: !3809)
!3823 = !DILocation(line: 102, column: 5, scope: !3817)
!3824 = !DILocation(line: 103, column: 3, scope: !3809)
!3825 = distinct !DISubprogram(name: "xmemdup", scope: !3629, file: !3629, line: 111, type: !3826, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !690, variables: !3830)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!41, !3828, !44}
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3830 = !{!3831, !3832}
!3831 = !DILocalVariable(name: "p", arg: 1, scope: !3825, file: !3629, line: 111, type: !3828)
!3832 = !DILocalVariable(name: "s", arg: 2, scope: !3825, file: !3629, line: 111, type: !44)
!3833 = !DILocation(line: 111, column: 22, scope: !3825)
!3834 = !DILocation(line: 111, column: 32, scope: !3825)
!3835 = !DILocation(line: 39, column: 17, scope: !3628, inlinedAt: !3836)
!3836 = distinct !DILocation(line: 113, column: 18, scope: !3825)
!3837 = !DILocation(line: 41, column: 13, scope: !3628, inlinedAt: !3836)
!3838 = !DILocation(line: 41, column: 9, scope: !3628, inlinedAt: !3836)
!3839 = !DILocation(line: 42, column: 8, scope: !3639, inlinedAt: !3836)
!3840 = !DILocation(line: 42, column: 15, scope: !3639, inlinedAt: !3836)
!3841 = !DILocation(line: 42, column: 10, scope: !3639, inlinedAt: !3836)
!3842 = !DILocation(line: 43, column: 5, scope: !3639, inlinedAt: !3836)
!3843 = !DILocation(line: 113, column: 10, scope: !3825)
!3844 = !DILocation(line: 113, column: 3, scope: !3825)
!3845 = distinct !DISubprogram(name: "xstrdup", scope: !3629, file: !3629, line: 119, type: !1552, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !690, variables: !3846)
!3846 = !{!3847}
!3847 = !DILocalVariable(name: "string", arg: 1, scope: !3845, file: !3629, line: 119, type: !55)
!3848 = !DILocation(line: 119, column: 22, scope: !3845)
!3849 = !DILocation(line: 121, column: 27, scope: !3845)
!3850 = !DILocation(line: 121, column: 43, scope: !3845)
!3851 = !DILocation(line: 111, column: 22, scope: !3825, inlinedAt: !3852)
!3852 = distinct !DILocation(line: 121, column: 10, scope: !3845)
!3853 = !DILocation(line: 111, column: 32, scope: !3825, inlinedAt: !3852)
!3854 = !DILocation(line: 39, column: 17, scope: !3628, inlinedAt: !3855)
!3855 = distinct !DILocation(line: 113, column: 18, scope: !3825, inlinedAt: !3852)
!3856 = !DILocation(line: 41, column: 13, scope: !3628, inlinedAt: !3855)
!3857 = !DILocation(line: 41, column: 9, scope: !3628, inlinedAt: !3855)
!3858 = !DILocation(line: 42, column: 8, scope: !3639, inlinedAt: !3855)
!3859 = !DILocation(line: 42, column: 15, scope: !3639, inlinedAt: !3855)
!3860 = !DILocation(line: 42, column: 10, scope: !3639, inlinedAt: !3855)
!3861 = !DILocation(line: 43, column: 5, scope: !3639, inlinedAt: !3855)
!3862 = !DILocation(line: 113, column: 10, scope: !3825, inlinedAt: !3852)
!3863 = !DILocation(line: 121, column: 3, scope: !3845)
!3864 = distinct !DISubprogram(name: "xalloc_die", scope: !3865, file: !3865, line: 32, type: !989, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !707, variables: !200)
!3865 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3866 = !DILocation(line: 34, column: 10, scope: !3864)
!3867 = !DILocation(line: 34, column: 33, scope: !3864)
!3868 = !DILocation(line: 34, column: 3, scope: !3864)
!3869 = !DILocation(line: 40, column: 3, scope: !3864)
!3870 = distinct !DISubprogram(name: "rpl_calloc", scope: !3871, file: !3871, line: 42, type: !3615, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !709, variables: !3872)
!3871 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3872 = !{!3873, !3874, !3875, !3876}
!3873 = !DILocalVariable(name: "n", arg: 1, scope: !3870, file: !3871, line: 42, type: !44)
!3874 = !DILocalVariable(name: "s", arg: 2, scope: !3870, file: !3871, line: 42, type: !44)
!3875 = !DILocalVariable(name: "result", scope: !3870, file: !3871, line: 44, type: !41)
!3876 = !DILocalVariable(name: "bytes", scope: !3877, file: !3871, line: 56, type: !44)
!3877 = distinct !DILexicalBlock(scope: !3878, file: !3871, line: 53, column: 5)
!3878 = distinct !DILexicalBlock(scope: !3870, file: !3871, line: 47, column: 7)
!3879 = !DILocation(line: 42, column: 20, scope: !3870)
!3880 = !DILocation(line: 42, column: 30, scope: !3870)
!3881 = !DILocation(line: 47, column: 9, scope: !3878)
!3882 = !DILocation(line: 47, column: 19, scope: !3878)
!3883 = !DILocation(line: 47, column: 14, scope: !3878)
!3884 = !DILocation(line: 56, column: 24, scope: !3877)
!3885 = !DILocation(line: 56, column: 14, scope: !3877)
!3886 = !DILocation(line: 57, column: 17, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3877, file: !3871, line: 57, column: 11)
!3888 = !DILocation(line: 57, column: 21, scope: !3887)
!3889 = !DILocation(line: 57, column: 11, scope: !3877)
!3890 = !DILocation(line: 59, column: 11, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3887, file: !3871, line: 58, column: 9)
!3892 = !DILocation(line: 59, column: 17, scope: !3891)
!3893 = !DILocation(line: 65, column: 12, scope: !3870)
!3894 = !DILocation(line: 44, column: 9, scope: !3870)
!3895 = !DILocation(line: 72, column: 3, scope: !3870)
!3896 = !DILocation(line: 73, column: 1, scope: !3870)
!3897 = distinct !DISubprogram(name: "rpl_fclose", scope: !3898, file: !3898, line: 56, type: !3899, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !711, variables: !3941)
!3898 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!43, !3901}
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !819, line: 7, baseType: !3903)
!3903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !821, line: 241, size: 1728, elements: !3904)
!3904 = !{!3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3903, file: !821, line: 242, baseType: !43, size: 32)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3903, file: !821, line: 247, baseType: !39, size: 64, offset: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3903, file: !821, line: 248, baseType: !39, size: 64, offset: 128)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3903, file: !821, line: 249, baseType: !39, size: 64, offset: 192)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3903, file: !821, line: 250, baseType: !39, size: 64, offset: 256)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3903, file: !821, line: 251, baseType: !39, size: 64, offset: 320)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3903, file: !821, line: 252, baseType: !39, size: 64, offset: 384)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3903, file: !821, line: 253, baseType: !39, size: 64, offset: 448)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3903, file: !821, line: 254, baseType: !39, size: 64, offset: 512)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3903, file: !821, line: 256, baseType: !39, size: 64, offset: 576)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3903, file: !821, line: 257, baseType: !39, size: 64, offset: 640)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3903, file: !821, line: 258, baseType: !39, size: 64, offset: 704)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3903, file: !821, line: 260, baseType: !3918, size: 64, offset: 768)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !821, line: 156, size: 192, elements: !3920)
!3920 = !{!3921, !3922, !3924}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3919, file: !821, line: 157, baseType: !3918, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3919, file: !821, line: 158, baseType: !3923, size: 64, offset: 64)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3919, file: !821, line: 162, baseType: !43, size: 32, offset: 128)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3903, file: !821, line: 262, baseType: !3923, size: 64, offset: 832)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3903, file: !821, line: 264, baseType: !43, size: 32, offset: 896)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3903, file: !821, line: 268, baseType: !43, size: 32, offset: 928)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3903, file: !821, line: 270, baseType: !847, size: 64, offset: 960)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3903, file: !821, line: 274, baseType: !47, size: 16, offset: 1024)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3903, file: !821, line: 275, baseType: !850, size: 8, offset: 1040)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3903, file: !821, line: 276, baseType: !852, size: 8, offset: 1048)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3903, file: !821, line: 280, baseType: !856, size: 64, offset: 1088)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3903, file: !821, line: 289, baseType: !859, size: 64, offset: 1152)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3903, file: !821, line: 297, baseType: !41, size: 64, offset: 1216)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3903, file: !821, line: 298, baseType: !41, size: 64, offset: 1280)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3903, file: !821, line: 299, baseType: !41, size: 64, offset: 1344)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3903, file: !821, line: 300, baseType: !41, size: 64, offset: 1408)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3903, file: !821, line: 302, baseType: !44, size: 64, offset: 1472)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3903, file: !821, line: 303, baseType: !43, size: 32, offset: 1536)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3903, file: !821, line: 305, baseType: !159, size: 160, offset: 1568)
!3941 = !{!3942, !3943, !3944, !3945}
!3942 = !DILocalVariable(name: "fp", arg: 1, scope: !3897, file: !3898, line: 56, type: !3901)
!3943 = !DILocalVariable(name: "saved_errno", scope: !3897, file: !3898, line: 58, type: !43)
!3944 = !DILocalVariable(name: "fd", scope: !3897, file: !3898, line: 59, type: !43)
!3945 = !DILocalVariable(name: "result", scope: !3897, file: !3898, line: 60, type: !43)
!3946 = !DILocation(line: 56, column: 19, scope: !3897)
!3947 = !DILocation(line: 58, column: 7, scope: !3897)
!3948 = !DILocation(line: 60, column: 7, scope: !3897)
!3949 = !DILocation(line: 63, column: 8, scope: !3897)
!3950 = !DILocation(line: 59, column: 7, scope: !3897)
!3951 = !DILocation(line: 64, column: 10, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3897, file: !3898, line: 64, column: 7)
!3953 = !DILocation(line: 64, column: 7, scope: !3897)
!3954 = !DILocation(line: 65, column: 12, scope: !3952)
!3955 = !DILocation(line: 65, column: 5, scope: !3952)
!3956 = !DILocation(line: 70, column: 9, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3897, file: !3898, line: 70, column: 7)
!3958 = !DILocation(line: 70, column: 23, scope: !3957)
!3959 = !DILocation(line: 70, column: 33, scope: !3957)
!3960 = !DILocation(line: 70, column: 26, scope: !3957)
!3961 = !DILocation(line: 70, column: 59, scope: !3957)
!3962 = !DILocation(line: 71, column: 7, scope: !3957)
!3963 = !DILocation(line: 71, column: 10, scope: !3957)
!3964 = !DILocation(line: 70, column: 7, scope: !3897)
!3965 = !DILocation(line: 98, column: 12, scope: !3897)
!3966 = !DILocation(line: 103, column: 7, scope: !3897)
!3967 = !DILocation(line: 72, column: 19, scope: !3957)
!3968 = !DILocation(line: 103, column: 19, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3897, file: !3898, line: 103, column: 7)
!3970 = !DILocation(line: 105, column: 13, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3969, file: !3898, line: 104, column: 5)
!3972 = !DILocation(line: 107, column: 5, scope: !3971)
!3973 = !DILocation(line: 110, column: 1, scope: !3897)
!3974 = distinct !DISubprogram(name: "rpl_fflush", scope: !3975, file: !3975, line: 127, type: !3976, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !713, variables: !4018)
!3975 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!43, !3978}
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !819, line: 7, baseType: !3980)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !821, line: 241, size: 1728, elements: !3981)
!3981 = !{!3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3980, file: !821, line: 242, baseType: !43, size: 32)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3980, file: !821, line: 247, baseType: !39, size: 64, offset: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3980, file: !821, line: 248, baseType: !39, size: 64, offset: 128)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3980, file: !821, line: 249, baseType: !39, size: 64, offset: 192)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3980, file: !821, line: 250, baseType: !39, size: 64, offset: 256)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3980, file: !821, line: 251, baseType: !39, size: 64, offset: 320)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3980, file: !821, line: 252, baseType: !39, size: 64, offset: 384)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3980, file: !821, line: 253, baseType: !39, size: 64, offset: 448)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3980, file: !821, line: 254, baseType: !39, size: 64, offset: 512)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3980, file: !821, line: 256, baseType: !39, size: 64, offset: 576)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3980, file: !821, line: 257, baseType: !39, size: 64, offset: 640)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3980, file: !821, line: 258, baseType: !39, size: 64, offset: 704)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3980, file: !821, line: 260, baseType: !3995, size: 64, offset: 768)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !821, line: 156, size: 192, elements: !3997)
!3997 = !{!3998, !3999, !4001}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3996, file: !821, line: 157, baseType: !3995, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3996, file: !821, line: 158, baseType: !4000, size: 64, offset: 64)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3996, file: !821, line: 162, baseType: !43, size: 32, offset: 128)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3980, file: !821, line: 262, baseType: !4000, size: 64, offset: 832)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3980, file: !821, line: 264, baseType: !43, size: 32, offset: 896)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3980, file: !821, line: 268, baseType: !43, size: 32, offset: 928)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3980, file: !821, line: 270, baseType: !847, size: 64, offset: 960)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3980, file: !821, line: 274, baseType: !47, size: 16, offset: 1024)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3980, file: !821, line: 275, baseType: !850, size: 8, offset: 1040)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3980, file: !821, line: 276, baseType: !852, size: 8, offset: 1048)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3980, file: !821, line: 280, baseType: !856, size: 64, offset: 1088)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3980, file: !821, line: 289, baseType: !859, size: 64, offset: 1152)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3980, file: !821, line: 297, baseType: !41, size: 64, offset: 1216)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3980, file: !821, line: 298, baseType: !41, size: 64, offset: 1280)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3980, file: !821, line: 299, baseType: !41, size: 64, offset: 1344)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3980, file: !821, line: 300, baseType: !41, size: 64, offset: 1408)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3980, file: !821, line: 302, baseType: !44, size: 64, offset: 1472)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3980, file: !821, line: 303, baseType: !43, size: 32, offset: 1536)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3980, file: !821, line: 305, baseType: !159, size: 160, offset: 1568)
!4018 = !{!4019}
!4019 = !DILocalVariable(name: "stream", arg: 1, scope: !3974, file: !3975, line: 127, type: !3978)
!4020 = !DILocation(line: 127, column: 19, scope: !3974)
!4021 = !DILocation(line: 148, column: 14, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !3974, file: !3975, line: 148, column: 7)
!4023 = !DILocation(line: 148, column: 22, scope: !4022)
!4024 = !DILocation(line: 148, column: 27, scope: !4022)
!4025 = !DILocation(line: 148, column: 7, scope: !3974)
!4026 = !DILocation(line: 149, column: 12, scope: !4022)
!4027 = !DILocation(line: 149, column: 5, scope: !4022)
!4028 = !DILocalVariable(name: "fp", arg: 1, scope: !4029, file: !3975, line: 40, type: !3978)
!4029 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3975, file: !3975, line: 40, type: !4030, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !713, variables: !4032)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{null, !3978}
!4032 = !{!4028}
!4033 = !DILocation(line: 40, column: 48, scope: !4029, inlinedAt: !4034)
!4034 = distinct !DILocation(line: 153, column: 3, scope: !3974)
!4035 = !DILocation(line: 42, column: 11, scope: !4036, inlinedAt: !4034)
!4036 = distinct !DILexicalBlock(scope: !4029, file: !3975, line: 42, column: 7)
!4037 = !{!1014, !929, i64 0}
!4038 = !DILocation(line: 42, column: 18, scope: !4036, inlinedAt: !4034)
!4039 = !DILocation(line: 42, column: 7, scope: !4029, inlinedAt: !4034)
!4040 = !DILocation(line: 44, column: 5, scope: !4036, inlinedAt: !4034)
!4041 = !DILocation(line: 155, column: 10, scope: !3974)
!4042 = !DILocation(line: 155, column: 3, scope: !3974)
!4043 = !DILocation(line: 229, column: 1, scope: !3974)
!4044 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4045, file: !4045, line: 28, type: !4046, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !715, variables: !4089)
!4045 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!43, !4048, !4088, !43}
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !819, line: 7, baseType: !4050)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !821, line: 241, size: 1728, elements: !4051)
!4051 = !{!4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4050, file: !821, line: 242, baseType: !43, size: 32)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4050, file: !821, line: 247, baseType: !39, size: 64, offset: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4050, file: !821, line: 248, baseType: !39, size: 64, offset: 128)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4050, file: !821, line: 249, baseType: !39, size: 64, offset: 192)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4050, file: !821, line: 250, baseType: !39, size: 64, offset: 256)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4050, file: !821, line: 251, baseType: !39, size: 64, offset: 320)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4050, file: !821, line: 252, baseType: !39, size: 64, offset: 384)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4050, file: !821, line: 253, baseType: !39, size: 64, offset: 448)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4050, file: !821, line: 254, baseType: !39, size: 64, offset: 512)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4050, file: !821, line: 256, baseType: !39, size: 64, offset: 576)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4050, file: !821, line: 257, baseType: !39, size: 64, offset: 640)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4050, file: !821, line: 258, baseType: !39, size: 64, offset: 704)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4050, file: !821, line: 260, baseType: !4065, size: 64, offset: 768)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !821, line: 156, size: 192, elements: !4067)
!4067 = !{!4068, !4069, !4071}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4066, file: !821, line: 157, baseType: !4065, size: 64)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4066, file: !821, line: 158, baseType: !4070, size: 64, offset: 64)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4066, file: !821, line: 162, baseType: !43, size: 32, offset: 128)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4050, file: !821, line: 262, baseType: !4070, size: 64, offset: 832)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4050, file: !821, line: 264, baseType: !43, size: 32, offset: 896)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4050, file: !821, line: 268, baseType: !43, size: 32, offset: 928)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4050, file: !821, line: 270, baseType: !847, size: 64, offset: 960)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4050, file: !821, line: 274, baseType: !47, size: 16, offset: 1024)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4050, file: !821, line: 275, baseType: !850, size: 8, offset: 1040)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4050, file: !821, line: 276, baseType: !852, size: 8, offset: 1048)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4050, file: !821, line: 280, baseType: !856, size: 64, offset: 1088)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4050, file: !821, line: 289, baseType: !859, size: 64, offset: 1152)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4050, file: !821, line: 297, baseType: !41, size: 64, offset: 1216)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4050, file: !821, line: 298, baseType: !41, size: 64, offset: 1280)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4050, file: !821, line: 299, baseType: !41, size: 64, offset: 1344)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4050, file: !821, line: 300, baseType: !41, size: 64, offset: 1408)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4050, file: !821, line: 302, baseType: !44, size: 64, offset: 1472)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4050, file: !821, line: 303, baseType: !43, size: 32, offset: 1536)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4050, file: !821, line: 305, baseType: !159, size: 160, offset: 1568)
!4088 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3594, line: 57, baseType: !847)
!4089 = !{!4090, !4091, !4092, !4093}
!4090 = !DILocalVariable(name: "fp", arg: 1, scope: !4044, file: !4045, line: 28, type: !4048)
!4091 = !DILocalVariable(name: "offset", arg: 2, scope: !4044, file: !4045, line: 28, type: !4088)
!4092 = !DILocalVariable(name: "whence", arg: 3, scope: !4044, file: !4045, line: 28, type: !43)
!4093 = !DILocalVariable(name: "pos", scope: !4094, file: !4045, line: 116, type: !4088)
!4094 = distinct !DILexicalBlock(scope: !4095, file: !4045, line: 112, column: 5)
!4095 = distinct !DILexicalBlock(scope: !4044, file: !4045, line: 51, column: 7)
!4096 = !DILocation(line: 28, column: 15, scope: !4044)
!4097 = !DILocation(line: 28, column: 25, scope: !4044)
!4098 = !DILocation(line: 28, column: 37, scope: !4044)
!4099 = !DILocation(line: 51, column: 11, scope: !4095)
!4100 = !{!1014, !756, i64 16}
!4101 = !DILocation(line: 51, column: 31, scope: !4095)
!4102 = !{!1014, !756, i64 8}
!4103 = !DILocation(line: 51, column: 24, scope: !4095)
!4104 = !DILocation(line: 52, column: 7, scope: !4095)
!4105 = !DILocation(line: 52, column: 14, scope: !4095)
!4106 = !DILocation(line: 52, column: 35, scope: !4095)
!4107 = !{!1014, !756, i64 32}
!4108 = !DILocation(line: 52, column: 28, scope: !4095)
!4109 = !DILocation(line: 53, column: 7, scope: !4095)
!4110 = !DILocation(line: 53, column: 14, scope: !4095)
!4111 = !{!1014, !756, i64 72}
!4112 = !DILocation(line: 53, column: 28, scope: !4095)
!4113 = !DILocation(line: 51, column: 7, scope: !4044)
!4114 = !DILocation(line: 116, column: 26, scope: !4094)
!4115 = !DILocation(line: 116, column: 19, scope: !4094)
!4116 = !DILocation(line: 116, column: 13, scope: !4094)
!4117 = !DILocation(line: 117, column: 15, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4094, file: !4045, line: 117, column: 11)
!4119 = !DILocation(line: 117, column: 11, scope: !4094)
!4120 = !DILocation(line: 127, column: 11, scope: !4094)
!4121 = !DILocation(line: 127, column: 18, scope: !4094)
!4122 = !DILocation(line: 128, column: 11, scope: !4094)
!4123 = !DILocation(line: 128, column: 19, scope: !4094)
!4124 = !{!1014, !962, i64 144}
!4125 = !DILocation(line: 159, column: 7, scope: !4094)
!4126 = !DILocation(line: 161, column: 10, scope: !4044)
!4127 = !DILocation(line: 161, column: 3, scope: !4044)
!4128 = !DILocation(line: 162, column: 1, scope: !4044)
!4129 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4130, file: !4130, line: 334, type: !4131, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !717, variables: !4145)
!4130 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!44, !4133, !55, !44, !4134}
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1971, line: 6, baseType: !4136)
!4136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1973, line: 21, baseType: !4137)
!4137 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1973, line: 13, size: 64, elements: !4138)
!4138 = !{!4139, !4140}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4137, file: !1973, line: 15, baseType: !43, size: 32)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4137, file: !1973, line: 20, baseType: !4141, size: 32, offset: 32)
!4141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4137, file: !1973, line: 16, size: 32, elements: !4142)
!4142 = !{!4143, !4144}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4141, file: !1973, line: 18, baseType: !230, size: 32)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4141, file: !1973, line: 19, baseType: !136, size: 32)
!4145 = !{!4146, !4147, !4148, !4149, !4150, !4151, !4152}
!4146 = !DILocalVariable(name: "pwc", arg: 1, scope: !4129, file: !4130, line: 334, type: !4133)
!4147 = !DILocalVariable(name: "s", arg: 2, scope: !4129, file: !4130, line: 334, type: !55)
!4148 = !DILocalVariable(name: "n", arg: 3, scope: !4129, file: !4130, line: 334, type: !44)
!4149 = !DILocalVariable(name: "ps", arg: 4, scope: !4129, file: !4130, line: 334, type: !4134)
!4150 = !DILocalVariable(name: "ret", scope: !4129, file: !4130, line: 336, type: !44)
!4151 = !DILocalVariable(name: "wc", scope: !4129, file: !4130, line: 337, type: !1984)
!4152 = !DILocalVariable(name: "uc", scope: !4153, file: !4130, line: 398, type: !42)
!4153 = distinct !DILexicalBlock(scope: !4154, file: !4130, line: 397, column: 5)
!4154 = distinct !DILexicalBlock(scope: !4129, file: !4130, line: 396, column: 7)
!4155 = !DILocation(line: 334, column: 23, scope: !4129)
!4156 = !DILocation(line: 334, column: 40, scope: !4129)
!4157 = !DILocation(line: 334, column: 50, scope: !4129)
!4158 = !DILocation(line: 334, column: 64, scope: !4129)
!4159 = !DILocation(line: 337, column: 3, scope: !4129)
!4160 = !DILocation(line: 353, column: 9, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4129, file: !4130, line: 353, column: 7)
!4162 = !DILocation(line: 353, column: 7, scope: !4129)
!4163 = !DILocation(line: 388, column: 9, scope: !4129)
!4164 = !DILocation(line: 336, column: 10, scope: !4129)
!4165 = !DILocation(line: 396, column: 19, scope: !4154)
!4166 = !DILocation(line: 396, column: 31, scope: !4154)
!4167 = !DILocation(line: 396, column: 26, scope: !4154)
!4168 = !DILocation(line: 396, column: 41, scope: !4154)
!4169 = !DILocation(line: 396, column: 7, scope: !4129)
!4170 = !DILocation(line: 398, column: 26, scope: !4153)
!4171 = !DILocation(line: 398, column: 21, scope: !4153)
!4172 = !DILocation(line: 399, column: 14, scope: !4153)
!4173 = !DILocation(line: 399, column: 12, scope: !4153)
!4174 = !DILocation(line: 405, column: 1, scope: !4129)
!4175 = distinct !DISubprogram(name: "extract_trimmed_name", scope: !4176, file: !4176, line: 45, type: !4177, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !720, variables: !4203)
!4176 = !DIFile(filename: "lib/readutmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!39, !4179}
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4181)
!4181 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !20, line: 146, baseType: !4182)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !125, line: 55, size: 3072, elements: !4183)
!4183 = !{!4184, !4185, !4186, !4187, !4188, !4189, !4190, !4195, !4196, !4201, !4202}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !4182, file: !125, line: 57, baseType: !128, size: 16)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !4182, file: !125, line: 58, baseType: !130, size: 32, offset: 32)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !4182, file: !125, line: 59, baseType: !132, size: 256, offset: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !4182, file: !125, line: 60, baseType: !136, size: 32, offset: 320)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !4182, file: !125, line: 61, baseType: !132, size: 256, offset: 352)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !4182, file: !125, line: 62, baseType: !141, size: 2048, offset: 608)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !4182, file: !125, line: 63, baseType: !4191, size: 32, offset: 2656)
!4191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !125, line: 42, size: 32, elements: !4192)
!4192 = !{!4193, !4194}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !4191, file: !125, line: 45, baseType: !128, size: 16)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !4191, file: !125, line: 46, baseType: !128, size: 16, offset: 16)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !4182, file: !125, line: 70, baseType: !150, size: 32, offset: 2688)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !4182, file: !125, line: 75, baseType: !4197, size: 64, offset: 2720)
!4197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4182, file: !125, line: 71, size: 64, elements: !4198)
!4198 = !{!4199, !4200}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4197, file: !125, line: 73, baseType: !150, size: 32)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !4197, file: !125, line: 74, baseType: !150, size: 32, offset: 32)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !4182, file: !125, line: 80, baseType: !157, size: 128, offset: 2784)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !4182, file: !125, line: 81, baseType: !159, size: 160, offset: 2912)
!4203 = !{!4204, !4205, !4206}
!4204 = !DILocalVariable(name: "ut", arg: 1, scope: !4175, file: !4176, line: 45, type: !4179)
!4205 = !DILocalVariable(name: "p", scope: !4175, file: !4176, line: 47, type: !39)
!4206 = !DILocalVariable(name: "trimmed_name", scope: !4175, file: !4176, line: 47, type: !39)
!4207 = !DILocation(line: 45, column: 42, scope: !4175)
!4208 = !DILocation(line: 49, column: 18, scope: !4175)
!4209 = !DILocation(line: 47, column: 13, scope: !4175)
!4210 = !DILocation(line: 50, column: 26, scope: !4175)
!4211 = !DILocalVariable(name: "__dest", arg: 1, scope: !4212, file: !1109, line: 103, type: !1112)
!4212 = distinct !DISubprogram(name: "strncpy", scope: !1109, file: !1109, line: 103, type: !1250, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !720, variables: !4213)
!4213 = !{!4211, !4214, !4215}
!4214 = !DILocalVariable(name: "__src", arg: 2, scope: !4212, file: !1109, line: 103, type: !1113)
!4215 = !DILocalVariable(name: "__len", arg: 3, scope: !4212, file: !1109, line: 103, type: !44)
!4216 = !DILocation(line: 103, column: 1, scope: !4212, inlinedAt: !4217)
!4217 = distinct !DILocation(line: 50, column: 3, scope: !4175)
!4218 = !DILocation(line: 106, column: 57, scope: !4212, inlinedAt: !4217)
!4219 = !DILocation(line: 106, column: 10, scope: !4212, inlinedAt: !4217)
!4220 = !DILocation(line: 54, column: 3, scope: !4175)
!4221 = !DILocation(line: 54, column: 39, scope: !4175)
!4222 = !DILocation(line: 55, column: 27, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4175, file: !4176, line: 55, column: 3)
!4224 = !DILocation(line: 47, column: 9, scope: !4175)
!4225 = !DILocation(line: 56, column: 21, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4223, file: !4176, line: 55, column: 3)
!4227 = !DILocation(line: 56, column: 25, scope: !4226)
!4228 = !DILocation(line: 55, column: 25, scope: !4223)
!4229 = !DILocation(line: 56, column: 28, scope: !4226)
!4230 = !DILocation(line: 56, column: 34, scope: !4226)
!4231 = !DILocation(line: 55, column: 3, scope: !4223)
!4232 = !DILocation(line: 57, column: 13, scope: !4226)
!4233 = distinct !{!4233, !4231, !4234}
!4234 = !DILocation(line: 58, column: 5, scope: !4223)
!4235 = !DILocation(line: 59, column: 3, scope: !4175)
!4236 = distinct !DISubprogram(name: "read_utmp", scope: !4176, file: !4176, line: 88, type: !4237, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !720, variables: !4241)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!43, !55, !698, !4239, !43}
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4241 = !{!4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249}
!4242 = !DILocalVariable(name: "file", arg: 1, scope: !4236, file: !4176, line: 88, type: !55)
!4243 = !DILocalVariable(name: "n_entries", arg: 2, scope: !4236, file: !4176, line: 88, type: !698)
!4244 = !DILocalVariable(name: "utmp_buf", arg: 3, scope: !4236, file: !4176, line: 88, type: !4239)
!4245 = !DILocalVariable(name: "options", arg: 4, scope: !4236, file: !4176, line: 89, type: !43)
!4246 = !DILocalVariable(name: "n_read", scope: !4236, file: !4176, line: 91, type: !44)
!4247 = !DILocalVariable(name: "n_alloc", scope: !4236, file: !4176, line: 92, type: !44)
!4248 = !DILocalVariable(name: "utmp", scope: !4236, file: !4176, line: 93, type: !4240)
!4249 = !DILocalVariable(name: "u", scope: !4236, file: !4176, line: 94, type: !4240)
!4250 = !DILocation(line: 88, column: 24, scope: !4236)
!4251 = !DILocation(line: 88, column: 38, scope: !4236)
!4252 = !DILocation(line: 88, column: 63, scope: !4236)
!4253 = !DILocation(line: 89, column: 16, scope: !4236)
!4254 = !DILocation(line: 91, column: 10, scope: !4236)
!4255 = !DILocation(line: 92, column: 10, scope: !4236)
!4256 = !DILocation(line: 93, column: 16, scope: !4236)
!4257 = !DILocation(line: 100, column: 3, scope: !4236)
!4258 = !DILocation(line: 102, column: 3, scope: !4236)
!4259 = !DILocation(line: 104, column: 15, scope: !4236)
!4260 = !DILocation(line: 94, column: 16, scope: !4236)
!4261 = !DILocation(line: 104, column: 32, scope: !4236)
!4262 = !DILocation(line: 104, column: 3, scope: !4236)
!4263 = !DILocalVariable(name: "u", arg: 1, scope: !4264, file: !4176, line: 65, type: !4179)
!4264 = distinct !DISubprogram(name: "desirable_utmp_entry", scope: !4176, file: !4176, line: 65, type: !4265, isLocal: true, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !720, variables: !4267)
!4265 = !DISubroutineType(types: !4266)
!4266 = !{!73, !4179, !43}
!4267 = !{!4263, !4268, !4269}
!4268 = !DILocalVariable(name: "options", arg: 2, scope: !4264, file: !4176, line: 65, type: !43)
!4269 = !DILocalVariable(name: "user_proc", scope: !4264, file: !4176, line: 67, type: !73)
!4270 = !DILocation(line: 65, column: 42, scope: !4264, inlinedAt: !4271)
!4271 = distinct !DILocation(line: 105, column: 9, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4236, file: !4176, line: 105, column: 9)
!4273 = !DILocation(line: 65, column: 49, scope: !4264, inlinedAt: !4271)
!4274 = !DILocation(line: 67, column: 20, scope: !4264, inlinedAt: !4271)
!4275 = !DILocation(line: 68, column: 42, scope: !4276, inlinedAt: !4271)
!4276 = distinct !DILexicalBlock(scope: !4264, file: !4176, line: 68, column: 7)
!4277 = !DILocation(line: 71, column: 7, scope: !4278, inlinedAt: !4271)
!4278 = distinct !DILexicalBlock(scope: !4264, file: !4176, line: 70, column: 7)
!4279 = !DILocation(line: 72, column: 14, scope: !4278, inlinedAt: !4271)
!4280 = !{!1023, !929, i64 4}
!4281 = !DILocation(line: 72, column: 12, scope: !4278, inlinedAt: !4271)
!4282 = !DILocation(line: 73, column: 7, scope: !4278, inlinedAt: !4271)
!4283 = !DILocation(line: 73, column: 11, scope: !4278, inlinedAt: !4271)
!4284 = !DILocation(line: 73, column: 32, scope: !4278, inlinedAt: !4271)
!4285 = !DILocation(line: 73, column: 36, scope: !4278, inlinedAt: !4271)
!4286 = !DILocation(line: 73, column: 39, scope: !4278, inlinedAt: !4271)
!4287 = !DILocation(line: 73, column: 45, scope: !4278, inlinedAt: !4271)
!4288 = !DILocation(line: 70, column: 7, scope: !4264, inlinedAt: !4271)
!4289 = !DILocation(line: 107, column: 20, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4291, file: !4176, line: 107, column: 13)
!4291 = distinct !DILexicalBlock(scope: !4272, file: !4176, line: 106, column: 7)
!4292 = !DILocation(line: 107, column: 13, scope: !4291)
!4293 = !DILocation(line: 180, column: 19, scope: !728, inlinedAt: !4294)
!4294 = distinct !DILocation(line: 108, column: 18, scope: !4290)
!4295 = !DILocation(line: 180, column: 41, scope: !728, inlinedAt: !4294)
!4296 = !DILocation(line: 182, column: 10, scope: !728, inlinedAt: !4294)
!4297 = !DILocation(line: 184, column: 9, scope: !4298, inlinedAt: !4294)
!4298 = distinct !DILexicalBlock(scope: !728, file: !694, line: 184, column: 7)
!4299 = !DILocation(line: 184, column: 7, scope: !728, inlinedAt: !4294)
!4300 = !DILocation(line: 186, column: 13, scope: !4301, inlinedAt: !4294)
!4301 = distinct !DILexicalBlock(scope: !4302, file: !694, line: 186, column: 11)
!4302 = distinct !DILexicalBlock(scope: !4298, file: !694, line: 185, column: 5)
!4303 = !DILocation(line: 186, column: 11, scope: !4302, inlinedAt: !4294)
!4304 = !DILocation(line: 205, column: 11, scope: !4305, inlinedAt: !4294)
!4305 = distinct !DILexicalBlock(scope: !4306, file: !694, line: 204, column: 11)
!4306 = distinct !DILexicalBlock(scope: !4298, file: !694, line: 199, column: 5)
!4307 = !DILocation(line: 204, column: 11, scope: !4306, inlinedAt: !4294)
!4308 = !DILocation(line: 206, column: 9, scope: !4305, inlinedAt: !4294)
!4309 = !DILocation(line: 207, column: 14, scope: !4306, inlinedAt: !4294)
!4310 = !DILocation(line: 207, column: 18, scope: !4306, inlinedAt: !4294)
!4311 = !DILocation(line: 207, column: 9, scope: !4306, inlinedAt: !4294)
!4312 = !DILocation(line: 211, column: 25, scope: !728, inlinedAt: !4294)
!4313 = !DILocation(line: 211, column: 10, scope: !728, inlinedAt: !4294)
!4314 = !DILocation(line: 108, column: 18, scope: !4290)
!4315 = !DILocation(line: 108, column: 11, scope: !4290)
!4316 = !DILocation(line: 110, column: 20, scope: !4291)
!4317 = !DILocation(line: 110, column: 9, scope: !4291)
!4318 = !DILocation(line: 110, column: 26, scope: !4291)
!4319 = !{i64 0, i64 2, !1528, i64 4, i64 4, !928, i64 8, i64 32, !1018, i64 40, i64 4, !1018, i64 44, i64 32, !1018, i64 76, i64 256, !1018, i64 332, i64 2, !1528, i64 334, i64 2, !1528, i64 336, i64 4, !928, i64 340, i64 4, !928, i64 344, i64 4, !928, i64 348, i64 16, !1018, i64 364, i64 20, !1018}
!4320 = !DILocation(line: 111, column: 7, scope: !4291)
!4321 = distinct !{!4321, !4262, !4322}
!4322 = !DILocation(line: 111, column: 7, scope: !4236)
!4323 = !DILocation(line: 113, column: 3, scope: !4236)
!4324 = !DILocation(line: 115, column: 14, scope: !4236)
!4325 = !DILocation(line: 116, column: 13, scope: !4236)
!4326 = !DILocation(line: 118, column: 3, scope: !4236)
!4327 = distinct !DISubprogram(name: "close_stream", scope: !4328, file: !4328, line: 56, type: !4329, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !735, variables: !4371)
!4328 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4329 = !DISubroutineType(types: !4330)
!4330 = !{!43, !4331}
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !819, line: 7, baseType: !4333)
!4333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !821, line: 241, size: 1728, elements: !4334)
!4334 = !{!4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4333, file: !821, line: 242, baseType: !43, size: 32)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4333, file: !821, line: 247, baseType: !39, size: 64, offset: 64)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4333, file: !821, line: 248, baseType: !39, size: 64, offset: 128)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4333, file: !821, line: 249, baseType: !39, size: 64, offset: 192)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4333, file: !821, line: 250, baseType: !39, size: 64, offset: 256)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4333, file: !821, line: 251, baseType: !39, size: 64, offset: 320)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4333, file: !821, line: 252, baseType: !39, size: 64, offset: 384)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4333, file: !821, line: 253, baseType: !39, size: 64, offset: 448)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4333, file: !821, line: 254, baseType: !39, size: 64, offset: 512)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4333, file: !821, line: 256, baseType: !39, size: 64, offset: 576)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4333, file: !821, line: 257, baseType: !39, size: 64, offset: 640)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4333, file: !821, line: 258, baseType: !39, size: 64, offset: 704)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4333, file: !821, line: 260, baseType: !4348, size: 64, offset: 768)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !821, line: 156, size: 192, elements: !4350)
!4350 = !{!4351, !4352, !4354}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4349, file: !821, line: 157, baseType: !4348, size: 64)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4349, file: !821, line: 158, baseType: !4353, size: 64, offset: 64)
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4349, file: !821, line: 162, baseType: !43, size: 32, offset: 128)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4333, file: !821, line: 262, baseType: !4353, size: 64, offset: 832)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4333, file: !821, line: 264, baseType: !43, size: 32, offset: 896)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4333, file: !821, line: 268, baseType: !43, size: 32, offset: 928)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4333, file: !821, line: 270, baseType: !847, size: 64, offset: 960)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4333, file: !821, line: 274, baseType: !47, size: 16, offset: 1024)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4333, file: !821, line: 275, baseType: !850, size: 8, offset: 1040)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4333, file: !821, line: 276, baseType: !852, size: 8, offset: 1048)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4333, file: !821, line: 280, baseType: !856, size: 64, offset: 1088)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4333, file: !821, line: 289, baseType: !859, size: 64, offset: 1152)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4333, file: !821, line: 297, baseType: !41, size: 64, offset: 1216)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4333, file: !821, line: 298, baseType: !41, size: 64, offset: 1280)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4333, file: !821, line: 299, baseType: !41, size: 64, offset: 1344)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4333, file: !821, line: 300, baseType: !41, size: 64, offset: 1408)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4333, file: !821, line: 302, baseType: !44, size: 64, offset: 1472)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4333, file: !821, line: 303, baseType: !43, size: 32, offset: 1536)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4333, file: !821, line: 305, baseType: !159, size: 160, offset: 1568)
!4371 = !{!4372, !4373, !4375, !4376}
!4372 = !DILocalVariable(name: "stream", arg: 1, scope: !4327, file: !4328, line: 56, type: !4331)
!4373 = !DILocalVariable(name: "some_pending", scope: !4327, file: !4328, line: 58, type: !4374)
!4374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!4375 = !DILocalVariable(name: "prev_fail", scope: !4327, file: !4328, line: 59, type: !4374)
!4376 = !DILocalVariable(name: "fclose_fail", scope: !4327, file: !4328, line: 60, type: !4374)
!4377 = !DILocation(line: 56, column: 21, scope: !4327)
!4378 = !DILocation(line: 58, column: 30, scope: !4327)
!4379 = !DILocalVariable(name: "__stream", arg: 1, scope: !4380, file: !1006, line: 132, type: !4331)
!4380 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1006, file: !1006, line: 132, type: !4329, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !735, variables: !4381)
!4381 = !{!4379}
!4382 = !DILocation(line: 132, column: 1, scope: !4380, inlinedAt: !4383)
!4383 = distinct !DILocation(line: 59, column: 27, scope: !4327)
!4384 = !DILocation(line: 134, column: 10, scope: !4380, inlinedAt: !4383)
!4385 = !DILocation(line: 59, column: 43, scope: !4327)
!4386 = !DILocation(line: 60, column: 29, scope: !4327)
!4387 = !DILocation(line: 60, column: 45, scope: !4327)
!4388 = !DILocation(line: 70, column: 17, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4327, file: !4328, line: 70, column: 7)
!4390 = !DILocation(line: 58, column: 50, scope: !4327)
!4391 = !DILocation(line: 70, column: 33, scope: !4389)
!4392 = !DILocation(line: 70, column: 53, scope: !4389)
!4393 = !DILocation(line: 70, column: 59, scope: !4389)
!4394 = !DILocation(line: 70, column: 7, scope: !4327)
!4395 = !DILocation(line: 72, column: 11, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4389, file: !4328, line: 71, column: 5)
!4397 = !DILocation(line: 73, column: 9, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4396, file: !4328, line: 72, column: 11)
!4399 = !DILocation(line: 73, column: 15, scope: !4398)
!4400 = !DILocation(line: 78, column: 1, scope: !4327)
!4401 = distinct !DISubprogram(name: "locale_charset", scope: !672, file: !672, line: 393, type: !1617, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !328, variables: !4402)
!4402 = !{!4403, !4404}
!4403 = !DILocalVariable(name: "codeset", scope: !4401, file: !672, line: 395, type: !55)
!4404 = !DILocalVariable(name: "aliases", scope: !4401, file: !672, line: 396, type: !55)
!4405 = !DILocalVariable(name: "buf1", scope: !4406, file: !672, line: 196, type: !4473)
!4406 = distinct !DILexicalBlock(scope: !4407, file: !672, line: 194, column: 21)
!4407 = distinct !DILexicalBlock(scope: !4408, file: !672, line: 193, column: 19)
!4408 = distinct !DILexicalBlock(scope: !4409, file: !672, line: 193, column: 19)
!4409 = distinct !DILexicalBlock(scope: !4410, file: !672, line: 188, column: 17)
!4410 = distinct !DILexicalBlock(scope: !4411, file: !672, line: 181, column: 19)
!4411 = distinct !DILexicalBlock(scope: !4412, file: !672, line: 177, column: 13)
!4412 = distinct !DILexicalBlock(scope: !4413, file: !672, line: 173, column: 15)
!4413 = distinct !DILexicalBlock(scope: !4414, file: !672, line: 161, column: 9)
!4414 = distinct !DILexicalBlock(scope: !4415, file: !672, line: 157, column: 11)
!4415 = distinct !DILexicalBlock(scope: !4416, file: !672, line: 130, column: 5)
!4416 = distinct !DILexicalBlock(scope: !4417, file: !672, line: 129, column: 7)
!4417 = distinct !DISubprogram(name: "get_charset_aliases", scope: !672, file: !672, line: 124, type: !1617, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !328, variables: !4418)
!4418 = !{!4419, !4420, !4421, !4422, !4423, !4425, !4426, !4427, !4428, !4469, !4470, !4471, !4405, !4472, !4476, !4477, !4478}
!4419 = !DILocalVariable(name: "cp", scope: !4417, file: !672, line: 126, type: !55)
!4420 = !DILocalVariable(name: "dir", scope: !4415, file: !672, line: 132, type: !55)
!4421 = !DILocalVariable(name: "base", scope: !4415, file: !672, line: 133, type: !55)
!4422 = !DILocalVariable(name: "file_name", scope: !4415, file: !672, line: 134, type: !39)
!4423 = !DILocalVariable(name: "dir_len", scope: !4424, file: !672, line: 144, type: !44)
!4424 = distinct !DILexicalBlock(scope: !4415, file: !672, line: 143, column: 7)
!4425 = !DILocalVariable(name: "base_len", scope: !4424, file: !672, line: 145, type: !44)
!4426 = !DILocalVariable(name: "add_slash", scope: !4424, file: !672, line: 146, type: !43)
!4427 = !DILocalVariable(name: "fd", scope: !4413, file: !672, line: 162, type: !43)
!4428 = !DILocalVariable(name: "fp", scope: !4411, file: !672, line: 178, type: !4429)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !819, line: 7, baseType: !4431)
!4431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !821, line: 241, size: 1728, elements: !4432)
!4432 = !{!4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4431, file: !821, line: 242, baseType: !43, size: 32)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4431, file: !821, line: 247, baseType: !39, size: 64, offset: 64)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4431, file: !821, line: 248, baseType: !39, size: 64, offset: 128)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4431, file: !821, line: 249, baseType: !39, size: 64, offset: 192)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4431, file: !821, line: 250, baseType: !39, size: 64, offset: 256)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4431, file: !821, line: 251, baseType: !39, size: 64, offset: 320)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4431, file: !821, line: 252, baseType: !39, size: 64, offset: 384)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4431, file: !821, line: 253, baseType: !39, size: 64, offset: 448)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4431, file: !821, line: 254, baseType: !39, size: 64, offset: 512)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4431, file: !821, line: 256, baseType: !39, size: 64, offset: 576)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4431, file: !821, line: 257, baseType: !39, size: 64, offset: 640)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4431, file: !821, line: 258, baseType: !39, size: 64, offset: 704)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4431, file: !821, line: 260, baseType: !4446, size: 64, offset: 768)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !821, line: 156, size: 192, elements: !4448)
!4448 = !{!4449, !4450, !4452}
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4447, file: !821, line: 157, baseType: !4446, size: 64)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4447, file: !821, line: 158, baseType: !4451, size: 64, offset: 64)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4447, file: !821, line: 162, baseType: !43, size: 32, offset: 128)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4431, file: !821, line: 262, baseType: !4451, size: 64, offset: 832)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4431, file: !821, line: 264, baseType: !43, size: 32, offset: 896)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4431, file: !821, line: 268, baseType: !43, size: 32, offset: 928)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4431, file: !821, line: 270, baseType: !847, size: 64, offset: 960)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4431, file: !821, line: 274, baseType: !47, size: 16, offset: 1024)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4431, file: !821, line: 275, baseType: !850, size: 8, offset: 1040)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4431, file: !821, line: 276, baseType: !852, size: 8, offset: 1048)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4431, file: !821, line: 280, baseType: !856, size: 64, offset: 1088)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4431, file: !821, line: 289, baseType: !859, size: 64, offset: 1152)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4431, file: !821, line: 297, baseType: !41, size: 64, offset: 1216)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4431, file: !821, line: 298, baseType: !41, size: 64, offset: 1280)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4431, file: !821, line: 299, baseType: !41, size: 64, offset: 1344)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4431, file: !821, line: 300, baseType: !41, size: 64, offset: 1408)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4431, file: !821, line: 302, baseType: !44, size: 64, offset: 1472)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4431, file: !821, line: 303, baseType: !43, size: 32, offset: 1536)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4431, file: !821, line: 305, baseType: !159, size: 160, offset: 1568)
!4469 = !DILocalVariable(name: "res_ptr", scope: !4409, file: !672, line: 190, type: !39)
!4470 = !DILocalVariable(name: "res_size", scope: !4409, file: !672, line: 191, type: !44)
!4471 = !DILocalVariable(name: "c", scope: !4406, file: !672, line: 195, type: !43)
!4472 = !DILocalVariable(name: "buf2", scope: !4406, file: !672, line: 197, type: !4473)
!4473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 408, elements: !4474)
!4474 = !{!4475}
!4475 = !DISubrange(count: 51)
!4476 = !DILocalVariable(name: "l1", scope: !4406, file: !672, line: 198, type: !44)
!4477 = !DILocalVariable(name: "l2", scope: !4406, file: !672, line: 198, type: !44)
!4478 = !DILocalVariable(name: "old_res_ptr", scope: !4406, file: !672, line: 199, type: !39)
!4479 = !DILocation(line: 196, column: 28, scope: !4406, inlinedAt: !4480)
!4480 = distinct !DILocation(line: 589, column: 18, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4401, file: !672, line: 589, column: 3)
!4482 = !DILocation(line: 197, column: 28, scope: !4406, inlinedAt: !4480)
!4483 = !DILocation(line: 403, column: 13, scope: !4401)
!4484 = !DILocation(line: 395, column: 15, scope: !4401)
!4485 = !DILocation(line: 584, column: 15, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4401, file: !672, line: 584, column: 7)
!4487 = !DILocation(line: 584, column: 7, scope: !4401)
!4488 = !DILocation(line: 128, column: 8, scope: !4417, inlinedAt: !4480)
!4489 = !DILocation(line: 126, column: 15, scope: !4417, inlinedAt: !4480)
!4490 = !DILocation(line: 129, column: 10, scope: !4416, inlinedAt: !4480)
!4491 = !DILocation(line: 129, column: 7, scope: !4417, inlinedAt: !4480)
!4492 = !DILocation(line: 138, column: 13, scope: !4415, inlinedAt: !4480)
!4493 = !DILocation(line: 132, column: 19, scope: !4415, inlinedAt: !4480)
!4494 = !DILocation(line: 139, column: 15, scope: !4495, inlinedAt: !4480)
!4495 = distinct !DILexicalBlock(scope: !4415, file: !672, line: 139, column: 11)
!4496 = !DILocation(line: 139, column: 23, scope: !4495, inlinedAt: !4480)
!4497 = !DILocation(line: 139, column: 26, scope: !4495, inlinedAt: !4480)
!4498 = !DILocation(line: 139, column: 33, scope: !4495, inlinedAt: !4480)
!4499 = !DILocation(line: 139, column: 11, scope: !4415, inlinedAt: !4480)
!4500 = !DILocation(line: 140, column: 9, scope: !4495, inlinedAt: !4480)
!4501 = !DILocation(line: 144, column: 26, scope: !4424, inlinedAt: !4480)
!4502 = !DILocation(line: 144, column: 16, scope: !4424, inlinedAt: !4480)
!4503 = !DILocation(line: 145, column: 16, scope: !4424, inlinedAt: !4480)
!4504 = !DILocation(line: 146, column: 34, scope: !4424, inlinedAt: !4480)
!4505 = !DILocation(line: 146, column: 38, scope: !4424, inlinedAt: !4480)
!4506 = !DILocation(line: 146, column: 42, scope: !4424, inlinedAt: !4480)
!4507 = !DILocation(line: 147, column: 48, scope: !4424, inlinedAt: !4480)
!4508 = !DILocation(line: 147, column: 46, scope: !4424, inlinedAt: !4480)
!4509 = !DILocation(line: 147, column: 69, scope: !4424, inlinedAt: !4480)
!4510 = !DILocation(line: 147, column: 30, scope: !4424, inlinedAt: !4480)
!4511 = !DILocation(line: 134, column: 13, scope: !4415, inlinedAt: !4480)
!4512 = !DILocation(line: 148, column: 13, scope: !4424, inlinedAt: !4480)
!4513 = !DILocation(line: 150, column: 13, scope: !4514, inlinedAt: !4480)
!4514 = distinct !DILexicalBlock(scope: !4515, file: !672, line: 149, column: 11)
!4515 = distinct !DILexicalBlock(scope: !4424, file: !672, line: 148, column: 13)
!4516 = !DILocation(line: 151, column: 17, scope: !4514, inlinedAt: !4480)
!4517 = !DILocation(line: 152, column: 34, scope: !4518, inlinedAt: !4480)
!4518 = distinct !DILexicalBlock(scope: !4514, file: !672, line: 151, column: 17)
!4519 = !DILocation(line: 153, column: 41, scope: !4514, inlinedAt: !4480)
!4520 = !DILocation(line: 153, column: 13, scope: !4514, inlinedAt: !4480)
!4521 = !DILocation(line: 157, column: 11, scope: !4415, inlinedAt: !4480)
!4522 = !DILocation(line: 171, column: 16, scope: !4413, inlinedAt: !4480)
!4523 = !DILocation(line: 162, column: 15, scope: !4413, inlinedAt: !4480)
!4524 = !DILocation(line: 173, column: 18, scope: !4412, inlinedAt: !4480)
!4525 = !DILocation(line: 173, column: 15, scope: !4413, inlinedAt: !4480)
!4526 = !DILocation(line: 180, column: 20, scope: !4411, inlinedAt: !4480)
!4527 = !DILocation(line: 178, column: 21, scope: !4411, inlinedAt: !4480)
!4528 = !DILocation(line: 181, column: 22, scope: !4410, inlinedAt: !4480)
!4529 = !DILocation(line: 181, column: 19, scope: !4411, inlinedAt: !4480)
!4530 = !DILocation(line: 184, column: 19, scope: !4531, inlinedAt: !4480)
!4531 = distinct !DILexicalBlock(scope: !4410, file: !672, line: 182, column: 17)
!4532 = !DILocation(line: 186, column: 17, scope: !4531, inlinedAt: !4480)
!4533 = !DILocation(line: 190, column: 25, scope: !4409, inlinedAt: !4480)
!4534 = !DILocation(line: 191, column: 26, scope: !4409, inlinedAt: !4480)
!4535 = !DILocation(line: 193, column: 19, scope: !4409, inlinedAt: !4480)
!4536 = !DILocation(line: 196, column: 23, scope: !4406, inlinedAt: !4480)
!4537 = !DILocation(line: 197, column: 23, scope: !4406, inlinedAt: !4480)
!4538 = !DILocalVariable(name: "__fp", arg: 1, scope: !4539, file: !1006, line: 63, type: !4429)
!4539 = distinct !DISubprogram(name: "getc_unlocked", scope: !1006, file: !1006, line: 63, type: !4540, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !328, variables: !4542)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{!43, !4429}
!4542 = !{!4538}
!4543 = !DILocation(line: 63, column: 22, scope: !4539, inlinedAt: !4544)
!4544 = distinct !DILocation(line: 201, column: 27, scope: !4406, inlinedAt: !4480)
!4545 = !DILocation(line: 65, column: 10, scope: !4539, inlinedAt: !4544)
!4546 = !DILocation(line: 195, column: 27, scope: !4406, inlinedAt: !4480)
!4547 = !DILocation(line: 202, column: 27, scope: !4406, inlinedAt: !4480)
!4548 = distinct !{!4548, !4549, !4552}
!4549 = !DILocation(line: 209, column: 27, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4551, file: !672, line: 207, column: 25)
!4551 = distinct !DILexicalBlock(scope: !4406, file: !672, line: 206, column: 27)
!4552 = !DILocation(line: 211, column: 58, scope: !4550)
!4553 = !DILocation(line: 65, column: 10, scope: !4539, inlinedAt: !4554)
!4554 = distinct !DILocation(line: 210, column: 33, scope: !4550, inlinedAt: !4480)
!4555 = !DILocation(line: 63, column: 22, scope: !4539, inlinedAt: !4554)
!4556 = !DILocation(line: 210, column: 29, scope: !4550, inlinedAt: !4480)
!4557 = distinct !{!4557, !4558, !4559}
!4558 = !DILocation(line: 193, column: 19, scope: !4408)
!4559 = !DILocation(line: 241, column: 21, scope: !4408)
!4560 = !DILocation(line: 216, column: 23, scope: !4406, inlinedAt: !4480)
!4561 = !DILocation(line: 217, column: 27, scope: !4562, inlinedAt: !4480)
!4562 = distinct !DILexicalBlock(scope: !4406, file: !672, line: 217, column: 27)
!4563 = !DILocation(line: 217, column: 64, scope: !4562, inlinedAt: !4480)
!4564 = !DILocation(line: 217, column: 27, scope: !4406, inlinedAt: !4480)
!4565 = !DILocation(line: 219, column: 28, scope: !4406, inlinedAt: !4480)
!4566 = !DILocation(line: 198, column: 30, scope: !4406, inlinedAt: !4480)
!4567 = !DILocation(line: 220, column: 28, scope: !4406, inlinedAt: !4480)
!4568 = !DILocation(line: 198, column: 34, scope: !4406, inlinedAt: !4480)
!4569 = !DILocation(line: 199, column: 29, scope: !4406, inlinedAt: !4480)
!4570 = !DILocation(line: 222, column: 36, scope: !4571, inlinedAt: !4480)
!4571 = distinct !DILexicalBlock(scope: !4406, file: !672, line: 222, column: 27)
!4572 = !DILocation(line: 222, column: 27, scope: !4406, inlinedAt: !4480)
!4573 = !DILocation(line: 225, column: 63, scope: !4574, inlinedAt: !4480)
!4574 = distinct !DILexicalBlock(scope: !4571, file: !672, line: 223, column: 25)
!4575 = !DILocation(line: 225, column: 46, scope: !4574, inlinedAt: !4480)
!4576 = !DILocation(line: 226, column: 25, scope: !4574, inlinedAt: !4480)
!4577 = !DILocation(line: 229, column: 36, scope: !4578, inlinedAt: !4480)
!4578 = distinct !DILexicalBlock(scope: !4571, file: !672, line: 228, column: 25)
!4579 = !DILocation(line: 230, column: 73, scope: !4578, inlinedAt: !4480)
!4580 = !DILocation(line: 230, column: 46, scope: !4578, inlinedAt: !4480)
!4581 = !DILocation(line: 232, column: 35, scope: !4582, inlinedAt: !4480)
!4582 = distinct !DILexicalBlock(scope: !4406, file: !672, line: 232, column: 27)
!4583 = !DILocation(line: 232, column: 27, scope: !4406, inlinedAt: !4480)
!4584 = !DILocation(line: 236, column: 27, scope: !4585, inlinedAt: !4480)
!4585 = distinct !DILexicalBlock(scope: !4582, file: !672, line: 233, column: 25)
!4586 = !DILocation(line: 237, column: 27, scope: !4585, inlinedAt: !4480)
!4587 = !DILocation(line: 241, column: 21, scope: !4407, inlinedAt: !4480)
!4588 = !DILocation(line: 239, column: 39, scope: !4406, inlinedAt: !4480)
!4589 = !DILocation(line: 239, column: 50, scope: !4406, inlinedAt: !4480)
!4590 = !DILocation(line: 239, column: 61, scope: !4406, inlinedAt: !4480)
!4591 = !DILocalVariable(name: "__dest", arg: 1, scope: !4592, file: !1109, line: 88, type: !1112)
!4592 = distinct !DISubprogram(name: "strcpy", scope: !1109, file: !1109, line: 88, type: !1110, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !328, variables: !4593)
!4593 = !{!4591, !4594}
!4594 = !DILocalVariable(name: "__src", arg: 2, scope: !4592, file: !1109, line: 88, type: !1113)
!4595 = !DILocation(line: 88, column: 1, scope: !4592, inlinedAt: !4596)
!4596 = distinct !DILocation(line: 239, column: 23, scope: !4406, inlinedAt: !4480)
!4597 = !DILocation(line: 90, column: 49, scope: !4592, inlinedAt: !4596)
!4598 = !DILocation(line: 90, column: 10, scope: !4592, inlinedAt: !4596)
!4599 = !DILocation(line: 88, column: 1, scope: !4592, inlinedAt: !4600)
!4600 = distinct !DILocation(line: 240, column: 23, scope: !4406, inlinedAt: !4480)
!4601 = !DILocation(line: 90, column: 49, scope: !4592, inlinedAt: !4600)
!4602 = !DILocation(line: 90, column: 10, scope: !4592, inlinedAt: !4600)
!4603 = !DILocation(line: 193, column: 19, scope: !4407, inlinedAt: !4480)
!4604 = !DILocation(line: 242, column: 19, scope: !4409, inlinedAt: !4480)
!4605 = !DILocation(line: 243, column: 32, scope: !4606, inlinedAt: !4480)
!4606 = distinct !DILexicalBlock(scope: !4409, file: !672, line: 243, column: 23)
!4607 = !DILocation(line: 243, column: 23, scope: !4409, inlinedAt: !4480)
!4608 = !DILocation(line: 247, column: 33, scope: !4609, inlinedAt: !4480)
!4609 = distinct !DILexicalBlock(scope: !4606, file: !672, line: 246, column: 21)
!4610 = !DILocation(line: 247, column: 45, scope: !4609, inlinedAt: !4480)
!4611 = !DILocation(line: 253, column: 11, scope: !4413, inlinedAt: !4480)
!4612 = !DILocation(line: 377, column: 23, scope: !4415, inlinedAt: !4480)
!4613 = !DILocation(line: 378, column: 5, scope: !4415, inlinedAt: !4480)
!4614 = !DILocation(line: 396, column: 15, scope: !4401)
!4615 = !DILocation(line: 590, column: 8, scope: !4616)
!4616 = distinct !DILexicalBlock(scope: !4481, file: !672, line: 589, column: 3)
!4617 = !DILocation(line: 590, column: 17, scope: !4616)
!4618 = !DILocation(line: 589, column: 3, scope: !4481)
!4619 = !DILocation(line: 592, column: 9, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4616, file: !672, line: 592, column: 9)
!4621 = !DILocation(line: 592, column: 35, scope: !4620)
!4622 = !DILocation(line: 593, column: 9, scope: !4620)
!4623 = !DILocation(line: 593, column: 24, scope: !4620)
!4624 = !DILocation(line: 593, column: 31, scope: !4620)
!4625 = !DILocation(line: 593, column: 34, scope: !4620)
!4626 = !DILocation(line: 593, column: 45, scope: !4620)
!4627 = !DILocation(line: 592, column: 9, scope: !4616)
!4628 = !DILocation(line: 595, column: 29, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4620, file: !672, line: 594, column: 7)
!4630 = !DILocation(line: 595, column: 27, scope: !4629)
!4631 = !DILocation(line: 595, column: 46, scope: !4629)
!4632 = !DILocation(line: 596, column: 9, scope: !4629)
!4633 = !DILocation(line: 591, column: 19, scope: !4616)
!4634 = !DILocation(line: 591, column: 36, scope: !4616)
!4635 = !DILocation(line: 591, column: 16, scope: !4616)
!4636 = !DILocation(line: 591, column: 52, scope: !4616)
!4637 = !DILocation(line: 591, column: 69, scope: !4616)
!4638 = !DILocation(line: 591, column: 49, scope: !4616)
!4639 = distinct !{!4639, !4618, !4640}
!4640 = !DILocation(line: 597, column: 7, scope: !4481)
!4641 = !DILocation(line: 602, column: 7, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4401, file: !672, line: 602, column: 7)
!4643 = !DILocation(line: 602, column: 18, scope: !4642)
!4644 = !DILocation(line: 602, column: 7, scope: !4401)
!4645 = !DILocation(line: 612, column: 3, scope: !4401)
