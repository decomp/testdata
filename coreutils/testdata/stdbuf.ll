; ModuleID = 'coreutils-8.27/src/stdbuf.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.anon = type { i64, i32, i8* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.allocator = type { i8* (i64)*, i8* (i8*, i64)*, void (i8*)*, void (i64)* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Usage: %s OPTION... COMMAND\0A\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"Run COMMAND, with modified buffering operations for its standard streams.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.26 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [182 x i8] c"  -i, --input=MODE   adjust standard input stream buffering\0A  -o, --output=MODE  adjust standard output stream buffering\0A  -e, --error=MODE   adjust standard error stream buffering\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [109 x i8] c"\0AIf MODE is 'L' the corresponding stream will be line buffered.\0AThis option is invalid with standard input.\0A\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"\0AIf MODE is '0' the corresponding stream will be unbuffered.\0A\00", align 1
@.str.8 = private unnamed_addr constant [253 x i8] c"\0AOtherwise MODE is a number which may be followed by one of the following:\0AKB 1000, K 1024, MB 1000*1000, M 1024*1024, and so on for G, T, P, E, Z, Y.\0AIn this case the corresponding stream will be fully buffered with the buffer\0Asize set to MODE bytes.\0A\00", align 1
@.str.9 = private unnamed_addr constant [267 x i8] c"\0ANOTE: If COMMAND adjusts the buffering of its standard streams ('tee' does\0Afor example) then that will override corresponding changes by 'stdbuf'.\0AAlso some filters (like 'dd' and 'cat' etc.) don't use streams for I/O,\0Aand are thus unaffected by 'stdbuf' settings.\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"stdbuf\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.38 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.40 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"+i:o:e:\00", align 1
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 1, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 1, i32* null, i32 111 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 1, i32* null, i32 101 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@stdbuf = internal global [3 x %struct.anon] zeroinitializer, align 16, !dbg !32
@optarg = external local_unnamed_addr global i8*, align 8
@.str.17 = private unnamed_addr constant [36 x i8] c"line buffering stdin is meaningless\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"EGkKMPTYZ0\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"invalid mode %s\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"Padraig Brady\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"%s%c=L\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"_STDBUF_\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"%s%c=%lu\00", align 1
@.str.51 = private unnamed_addr constant [41 x i8] c"failed to update the environment with %s\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"you must specify a buffering mode option\00", align 1
@program_path = internal unnamed_addr global i8* null, align 8, !dbg !30
@.str.52 = private unnamed_addr constant [15 x i8] c"/proc/self/exe\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"/usr/local/lib/coreutils\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"LD_PRELOAD\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"/usr/local/libexec/coreutils\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"libstdbuf.so\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"failed to find %s\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"%s=%s:%s\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"failed to run command %s\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), align 8, !dbg !78
@.str.15 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !84
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !89
@.str.27 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.28 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.29 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !93
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !100
@.str.62 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.63 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.64 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.66, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.67, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.68, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.69, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.71, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.72, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.73, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.74, i32 0, i32 0), i8* null], align 16, !dbg !107
@.str.65 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.66 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.67 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.68 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.69 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.70 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.71 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.72 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.73 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.74 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !149
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !156
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !169
@.str.11.75 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.76 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.77 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.78 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.79 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.80 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.81 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !176
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !183
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !171
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !185
@.str.86 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.87 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.88 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.89 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.90 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.91 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.92 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.93 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.94 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.95 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.96 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.97 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.98 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.99 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.102 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.103 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.104 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.105 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.106 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !191
@.str.1.119 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.120 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.125 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.126 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.139 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.140 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.143 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !200
@.str.3.144 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.145 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.146 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.147 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.148 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.149 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@stdlib_allocator = local_unnamed_addr constant %struct.allocator { i8* (i64)* @malloc, i8* (i8*, i64)* @realloc, void (i8*)* @free, void (i64)* null }, align 8, !dbg !549

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !645 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !649, metadata !650), !dbg !651
  %2 = icmp eq i32 %0, 0, !dbg !652
  br i1 %2, label %8, label %3, !dbg !654

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !655, !tbaa !657
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !655
  %6 = load i8*, i8** @program_name, align 8, !dbg !655, !tbaa !657
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #12, !dbg !655
  br label %54, !dbg !655

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !661
  %10 = load i8*, i8** @program_name, align 8, !dbg !661, !tbaa !657
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #12, !dbg !661
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !663
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !663, !tbaa !657
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #12, !dbg !663
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.26, i64 0, i64 0), i32 5) #12, !dbg !664
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !664, !tbaa !657
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #12, !dbg !664
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([182 x i8], [182 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !669
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !669, !tbaa !657
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #12, !dbg !669
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #12, !dbg !670
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !670, !tbaa !657
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #12, !dbg !670
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #12, !dbg !671
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !671, !tbaa !657
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #12, !dbg !671
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.6, i64 0, i64 0), i32 5) #12, !dbg !672
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !672, !tbaa !657
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #12, !dbg !672
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i32 5) #12, !dbg !673
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !673, !tbaa !657
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #12, !dbg !673
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([253 x i8], [253 x i8]* @.str.8, i64 0, i64 0), i32 5) #12, !dbg !674
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !674, !tbaa !657
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #12, !dbg !674
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([267 x i8], [267 x i8]* @.str.9, i64 0, i64 0), i32 5) #12, !dbg !675
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !675, !tbaa !657
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #12, !dbg !675
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !54, metadata !650) #12, !dbg !676
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i64 0, metadata !54, metadata !650) #12, !dbg !676
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0), i32 5) #12, !dbg !678
  %40 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.36, i64 0, i64 0)) #12, !dbg !678
  %41 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !679
  tail call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !62, metadata !650) #12, !dbg !680
  %42 = icmp eq i8* %41, null, !dbg !681
  br i1 %42, label %49, label %43, !dbg !683

; <label>:43:                                     ; preds = %8
  %44 = tail call i32 @strncmp(i8* nonnull %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0), i64 3) #14, !dbg !684
  %45 = icmp eq i32 %44, 0, !dbg !684
  br i1 %45, label %49, label %46, !dbg !685

; <label>:46:                                     ; preds = %43
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.38, i64 0, i64 0), i32 5) #12, !dbg !686
  %48 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #12, !dbg !686
  br label %49, !dbg !688

; <label>:49:                                     ; preds = %8, %43, %46
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.39, i64 0, i64 0), i32 5) #12, !dbg !689
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #12, !dbg !689
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.40, i64 0, i64 0), i32 5) #12, !dbg !690
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0)) #12, !dbg !690
  br label %54

; <label>:54:                                     ; preds = %49, %3
  tail call void @exit(i32 %0) #15, !dbg !691
  unreachable, !dbg !691
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !692 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [3 x i8*], align 16
  tail call void @llvm.dbg.declare(metadata [3 x i8*]* %6, metadata !703, metadata !650), !dbg !752
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !697, metadata !650), !dbg !754
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !698, metadata !650), !dbg !755
  %9 = load i8*, i8** %1, align 8, !dbg !756, !tbaa !657
  tail call void @set_program_name(i8* %9) #12, !dbg !757
  %10 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #12, !dbg !758
  %11 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #12, !dbg !759
  %12 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #12, !dbg !760
  tail call void @llvm.dbg.value(metadata i32 125, i64 0, metadata !761, metadata !650), !dbg !764
  store volatile i32 125, i32* @exit_failure, align 4, !dbg !766, !tbaa !768
  %13 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12, !dbg !770
  %14 = bitcast i64* %4 to i8*
  br label %15, !dbg !771

; <label>:15:                                     ; preds = %51, %2
  %16 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #12, !dbg !772
  call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !699, metadata !650), !dbg !773
  switch i32 %16, label %63 [
    i32 -1, label %64
    i32 -131, label %60
    i32 -130, label %59
    i32 101, label %19
    i32 105, label %17
    i32 111, label %18
  ], !dbg !771

; <label>:17:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !774, metadata !650), !dbg !780
  br label %19, !dbg !783

; <label>:18:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !774, metadata !650), !dbg !780
  br label %19, !dbg !785

; <label>:19:                                     ; preds = %15, %18, %17
  %20 = phi i64 [ 0, %17 ], [ 1, %18 ], [ 2, %15 ]
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !774, metadata !650), !dbg !780
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !700, metadata !650), !dbg !786
  %21 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 %20, i32 1, !dbg !787
  store i32 %16, i32* %21, align 8, !dbg !788, !tbaa !789
  %22 = load i8*, i8** @optarg, align 8, !dbg !792, !tbaa !657
  br label %23, !dbg !793

; <label>:23:                                     ; preds = %27, %19
  %24 = phi i8* [ %28, %27 ], [ %22, %19 ], !dbg !792
  %25 = load i8, i8* %24, align 1, !dbg !794, !tbaa !795
  %26 = sext i8 %25 to i32, !dbg !794
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !796, metadata !650), !dbg !802
  switch i32 %26, label %29 [
    i32 32, label %27
    i32 9, label %27
    i32 10, label %27
    i32 11, label %27
    i32 12, label %27
    i32 13, label %27
  ], !dbg !804

; <label>:27:                                     ; preds = %23, %23, %23, %23, %23, %23
  %28 = getelementptr inbounds i8, i8* %24, i64 1, !dbg !805
  store i8* %28, i8** @optarg, align 8, !dbg !805, !tbaa !657
  br label %23, !dbg !793, !llvm.loop !806

; <label>:29:                                     ; preds = %23
  %30 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 %20, i32 2, !dbg !807
  store i8* %24, i8** %30, align 8, !dbg !808, !tbaa !809
  %31 = icmp eq i32 %16, 105, !dbg !810
  br i1 %31, label %32, label %37, !dbg !812

; <label>:32:                                     ; preds = %29
  %33 = load i8, i8* %24, align 1, !dbg !813, !tbaa !795
  %34 = icmp eq i8 %33, 76, !dbg !814
  br i1 %34, label %35, label %37, !dbg !815

; <label>:35:                                     ; preds = %32
  %36 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0), i32 5) #12, !dbg !816
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %36) #12, !dbg !818
  call void @usage(i32 125) #16, !dbg !819
  unreachable, !dbg !819

; <label>:37:                                     ; preds = %32, %29
  %38 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #14, !dbg !820
  %39 = icmp eq i32 %38, 0, !dbg !820
  br i1 %39, label %51, label %40, !dbg !822

; <label>:40:                                     ; preds = %37
  call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !823, metadata !650) #12, !dbg !831
  call void @llvm.dbg.value(metadata i64* %48, i64 0, metadata !828, metadata !650) #12, !dbg !833
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #12, !dbg !834
  call void @llvm.dbg.value(metadata i64* %4, i64 0, metadata !829, metadata !650) #12, !dbg !835
  %41 = call i32 @xstrtoumax(i8* %24, i8** null, i32 10, i64* nonnull %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i64 0, i64 0)) #12, !dbg !836
  call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !830, metadata !650) #12, !dbg !837
  call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !830, metadata !650) #12, !dbg !837
  switch i32 %41, label %44 [
    i32 0, label %47
    i32 1, label %42
  ], !dbg !838

; <label>:42:                                     ; preds = %40
  %43 = tail call i32* @__errno_location() #17, !dbg !839
  br label %52, !dbg !838

; <label>:44:                                     ; preds = %40
  %45 = tail call i32* @__errno_location() #17, !dbg !840
  %46 = load i32, i32* %45, align 4, !dbg !840, !tbaa !768
  br label %52, !dbg !841

; <label>:47:                                     ; preds = %40
  %48 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 %20, i32 0, !dbg !842
  %49 = tail call i32* @__errno_location() #17, !dbg !843
  store i32 0, i32* %49, align 4, !dbg !846, !tbaa !768
  %50 = load i64, i64* %4, align 8, !dbg !847, !tbaa !848
  call void @llvm.dbg.value(metadata i64 %50, i64 0, metadata !829, metadata !650) #12, !dbg !835
  store i64 %50, i64* %48, align 8, !dbg !849, !tbaa !848
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #12, !dbg !850
  br label %51, !dbg !851

; <label>:51:                                     ; preds = %47, %37
  br label %15, !dbg !772, !llvm.loop !852

; <label>:52:                                     ; preds = %42, %44
  %53 = phi i32* [ %43, %42 ], [ %45, %44 ], !dbg !854
  %54 = phi i32 [ 75, %42 ], [ %46, %44 ], !dbg !841
  store i32 %54, i32* %53, align 4, !dbg !855, !tbaa !768
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #12, !dbg !850
  %55 = load i32, i32* %53, align 4, !dbg !854, !tbaa !768
  %56 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 5) #12, !dbg !854
  %57 = load i8*, i8** @optarg, align 8, !dbg !854, !tbaa !657
  %58 = call i8* @quote(i8* %57) #12, !dbg !854
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %55, i8* %56, i8* %58) #12, !dbg !854
  unreachable, !dbg !854

; <label>:59:                                     ; preds = %15
  call void @usage(i32 0) #16, !dbg !856
  unreachable, !dbg !856

; <label>:60:                                     ; preds = %15
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !857, !tbaa !657
  %62 = load i8*, i8** @Version, align 8, !dbg !857, !tbaa !657
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* null) #12, !dbg !857
  call void @exit(i32 0) #15, !dbg !857
  unreachable, !dbg !857

; <label>:63:                                     ; preds = %15
  call void @usage(i32 125) #16, !dbg !858
  unreachable, !dbg !858

; <label>:64:                                     ; preds = %15
  %65 = load i32, i32* @optind, align 4, !dbg !859, !tbaa !768
  %66 = sext i32 %65 to i64, !dbg !860
  %67 = getelementptr inbounds i8*, i8** %1, i64 %66, !dbg !860
  call void @llvm.dbg.value(metadata i8** %67, i64 0, metadata !698, metadata !650), !dbg !755
  %68 = icmp slt i32 %65, %0, !dbg !861
  br i1 %68, label %71, label %69, !dbg !863

; <label>:69:                                     ; preds = %64
  %70 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i32 5) #12, !dbg !864
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %70) #12, !dbg !866
  call void @usage(i32 125) #16, !dbg !867
  unreachable, !dbg !867

; <label>:71:                                     ; preds = %64
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !868, metadata !650) #12, !dbg !886
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !873, metadata !650) #12, !dbg !889
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !868, metadata !650) #12, !dbg !886
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !873, metadata !650) #12, !dbg !889
  %72 = bitcast i8** %3 to i8*
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !873, metadata !650) #12, !dbg !889
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !868, metadata !650) #12, !dbg !886
  %73 = load i8*, i8** getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 0, i32 2), align 16, !dbg !890, !tbaa !809
  %74 = icmp eq i8* %73, null, !dbg !891
  br i1 %74, label %109, label %75, !dbg !892

; <label>:75:                                     ; preds = %71
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %72) #12, !dbg !893
  %76 = load i8, i8* %73, align 1, !dbg !894, !tbaa !795
  %77 = icmp eq i8 %76, 76, !dbg !895
  %78 = load i32, i32* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 0, i32 1), align 8, !tbaa !789
  call void @llvm.dbg.value(metadata i32 %78, i64 0, metadata !896, metadata !650) #12, !dbg !899
  %79 = add i32 %78, 128, !dbg !904
  %80 = icmp ult i32 %79, 384, !dbg !904
  br i1 %80, label %81, label %87, !dbg !904

; <label>:81:                                     ; preds = %75
  %82 = tail call i32** @__ctype_toupper_loc() #17, !dbg !905
  %83 = load i32*, i32** %82, align 8, !dbg !906, !tbaa !657
  %84 = sext i32 %78 to i64, !dbg !907
  %85 = getelementptr inbounds i32, i32* %83, i64 %84, !dbg !907
  %86 = load i32, i32* %85, align 4, !dbg !907, !tbaa !768
  br label %87, !dbg !908

; <label>:87:                                     ; preds = %81, %75
  %88 = phi i32 [ %86, %81 ], [ %78, %75 ], !dbg !908
  br i1 %77, label %89, label %91, !dbg !909

; <label>:89:                                     ; preds = %87
  call void @llvm.dbg.value(metadata i32 %88, i64 0, metadata !881, metadata !650) #12, !dbg !910
  call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !874, metadata !650) #12, !dbg !911
  %90 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %3, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32 %88) #12, !dbg !912
  call void @llvm.dbg.value(metadata i32 %90, i64 0, metadata !880, metadata !650) #12, !dbg !913
  br label %94, !dbg !914

; <label>:91:                                     ; preds = %87
  %92 = load i64, i64* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 0, i32 0), align 16, !dbg !915, !tbaa !916
  call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !874, metadata !650) #12, !dbg !911
  %93 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %3, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32 %88, i64 %92) #12, !dbg !915
  call void @llvm.dbg.value(metadata i32 %93, i64 0, metadata !880, metadata !650) #12, !dbg !913
  br label %94

; <label>:94:                                     ; preds = %91, %89
  %95 = phi i32 [ %90, %89 ], [ %93, %91 ]
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !880, metadata !650) #12, !dbg !913
  %96 = icmp slt i32 %95, 0, !dbg !917
  br i1 %96, label %97, label %98, !dbg !919

; <label>:97:                                     ; preds = %163, %132, %94
  call void @xalloc_die() #15, !dbg !920
  unreachable, !dbg !920

; <label>:98:                                     ; preds = %94
  %99 = load i8*, i8** %3, align 8, !dbg !921, !tbaa !657
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !874, metadata !650) #12, !dbg !911
  %100 = call i32 @putenv(i8* %99) #12, !dbg !923
  %101 = icmp eq i32 %100, 0, !dbg !924
  br i1 %101, label %108, label %102, !dbg !925

; <label>:102:                                    ; preds = %166, %135, %98
  %103 = tail call i32* @__errno_location() #17, !dbg !926
  %104 = load i32, i32* %103, align 4, !dbg !926, !tbaa !768
  %105 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i64 0, i64 0), i32 5) #12, !dbg !926
  %106 = load i8*, i8** %3, align 8, !dbg !926, !tbaa !657
  call void @llvm.dbg.value(metadata i8* %106, i64 0, metadata !874, metadata !650) #12, !dbg !911
  %107 = call i8* @quote(i8* %106) #12, !dbg !926
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %104, i8* %105, i8* %107) #12, !dbg !926
  unreachable, !dbg !926

; <label>:108:                                    ; preds = %98
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !868, metadata !650) #12, !dbg !886
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %72) #12, !dbg !928
  br label %109, !dbg !929

; <label>:109:                                    ; preds = %108, %71
  %110 = phi i8 [ 1, %108 ], [ 0, %71 ]
  call void @llvm.dbg.value(metadata i8 %110, i64 0, metadata !868, metadata !650) #12, !dbg !886
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !873, metadata !650) #12, !dbg !889
  call void @llvm.dbg.value(metadata i8 %110, i64 0, metadata !868, metadata !650) #12, !dbg !886
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !873, metadata !650) #12, !dbg !889
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !873, metadata !650) #12, !dbg !889
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !868, metadata !650) #12, !dbg !886
  %111 = load i8*, i8** getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 1, i32 2), align 8, !dbg !890, !tbaa !809
  %112 = icmp eq i8* %111, null, !dbg !891
  br i1 %112, label %140, label %113, !dbg !892

; <label>:113:                                    ; preds = %109
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %72) #12, !dbg !893
  %114 = load i8, i8* %111, align 1, !dbg !894, !tbaa !795
  %115 = icmp eq i8 %114, 76, !dbg !895
  %116 = load i32, i32* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 1, i32 1), align 8, !tbaa !789
  call void @llvm.dbg.value(metadata i32 %78, i64 0, metadata !896, metadata !650) #12, !dbg !899
  %117 = add i32 %116, 128, !dbg !904
  %118 = icmp ult i32 %117, 384, !dbg !904
  br i1 %118, label %119, label %125, !dbg !904

; <label>:119:                                    ; preds = %113
  %120 = tail call i32** @__ctype_toupper_loc() #17, !dbg !905
  %121 = load i32*, i32** %120, align 8, !dbg !906, !tbaa !657
  %122 = sext i32 %116 to i64, !dbg !907
  %123 = getelementptr inbounds i32, i32* %121, i64 %122, !dbg !907
  %124 = load i32, i32* %123, align 4, !dbg !907, !tbaa !768
  br label %125, !dbg !908

; <label>:125:                                    ; preds = %119, %113
  %126 = phi i32 [ %124, %119 ], [ %116, %113 ], !dbg !908
  br i1 %115, label %130, label %127, !dbg !909

; <label>:127:                                    ; preds = %125
  %128 = load i64, i64* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 1, i32 0), align 8, !dbg !915, !tbaa !916
  call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !874, metadata !650) #12, !dbg !911
  %129 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %3, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32 %126, i64 %128) #12, !dbg !915
  call void @llvm.dbg.value(metadata i32 %93, i64 0, metadata !880, metadata !650) #12, !dbg !913
  br label %132

; <label>:130:                                    ; preds = %125
  call void @llvm.dbg.value(metadata i32 %88, i64 0, metadata !881, metadata !650) #12, !dbg !910
  call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !874, metadata !650) #12, !dbg !911
  %131 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %3, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32 %126) #12, !dbg !912
  br label %132, !dbg !914

; <label>:132:                                    ; preds = %130, %127
  %133 = phi i32 [ %131, %130 ], [ %129, %127 ]
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !880, metadata !650) #12, !dbg !913
  %134 = icmp slt i32 %133, 0, !dbg !917
  br i1 %134, label %97, label %135, !dbg !919

; <label>:135:                                    ; preds = %132
  %136 = load i8*, i8** %3, align 8, !dbg !921, !tbaa !657
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !874, metadata !650) #12, !dbg !911
  %137 = call i32 @putenv(i8* %136) #12, !dbg !923
  %138 = icmp eq i32 %137, 0, !dbg !924
  br i1 %138, label %139, label %102, !dbg !925

; <label>:139:                                    ; preds = %135
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !868, metadata !650) #12, !dbg !886
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %72) #12, !dbg !928
  br label %140, !dbg !929

; <label>:140:                                    ; preds = %139, %109
  %141 = phi i8 [ 1, %139 ], [ %110, %109 ]
  call void @llvm.dbg.value(metadata i8 %110, i64 0, metadata !868, metadata !650) #12, !dbg !886
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !873, metadata !650) #12, !dbg !889
  call void @llvm.dbg.value(metadata i8 %110, i64 0, metadata !868, metadata !650) #12, !dbg !886
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !873, metadata !650) #12, !dbg !889
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !873, metadata !650) #12, !dbg !889
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !868, metadata !650) #12, !dbg !886
  %142 = load i8*, i8** getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 2, i32 2), align 16, !dbg !890, !tbaa !809
  %143 = icmp eq i8* %142, null, !dbg !891
  br i1 %143, label %171, label %144, !dbg !892

; <label>:144:                                    ; preds = %140
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %72) #12, !dbg !893
  %145 = load i8, i8* %142, align 1, !dbg !894, !tbaa !795
  %146 = icmp eq i8 %145, 76, !dbg !895
  %147 = load i32, i32* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 2, i32 1), align 8, !tbaa !789
  call void @llvm.dbg.value(metadata i32 %78, i64 0, metadata !896, metadata !650) #12, !dbg !899
  %148 = add i32 %147, 128, !dbg !904
  %149 = icmp ult i32 %148, 384, !dbg !904
  br i1 %149, label %150, label %156, !dbg !904

; <label>:150:                                    ; preds = %144
  %151 = tail call i32** @__ctype_toupper_loc() #17, !dbg !905
  %152 = load i32*, i32** %151, align 8, !dbg !906, !tbaa !657
  %153 = sext i32 %147 to i64, !dbg !907
  %154 = getelementptr inbounds i32, i32* %152, i64 %153, !dbg !907
  %155 = load i32, i32* %154, align 4, !dbg !907, !tbaa !768
  br label %156, !dbg !908

; <label>:156:                                    ; preds = %150, %144
  %157 = phi i32 [ %155, %150 ], [ %147, %144 ], !dbg !908
  br i1 %146, label %161, label %158, !dbg !909

; <label>:158:                                    ; preds = %156
  %159 = load i64, i64* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 2, i32 0), align 16, !dbg !915, !tbaa !916
  call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !874, metadata !650) #12, !dbg !911
  %160 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %3, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32 %157, i64 %159) #12, !dbg !915
  call void @llvm.dbg.value(metadata i32 %93, i64 0, metadata !880, metadata !650) #12, !dbg !913
  br label %163

; <label>:161:                                    ; preds = %156
  call void @llvm.dbg.value(metadata i32 %88, i64 0, metadata !881, metadata !650) #12, !dbg !910
  call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !874, metadata !650) #12, !dbg !911
  %162 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %3, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32 %157) #12, !dbg !912
  br label %163, !dbg !914

; <label>:163:                                    ; preds = %161, %158
  %164 = phi i32 [ %162, %161 ], [ %160, %158 ]
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !880, metadata !650) #12, !dbg !913
  %165 = icmp slt i32 %164, 0, !dbg !917
  br i1 %165, label %97, label %166, !dbg !919

; <label>:166:                                    ; preds = %163
  %167 = load i8*, i8** %3, align 8, !dbg !921, !tbaa !657
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !874, metadata !650) #12, !dbg !911
  %168 = call i32 @putenv(i8* %167) #12, !dbg !923
  %169 = icmp eq i32 %168, 0, !dbg !924
  br i1 %169, label %170, label %102, !dbg !925

; <label>:170:                                    ; preds = %166
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !868, metadata !650) #12, !dbg !886
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %72) #12, !dbg !928
  call void @llvm.dbg.value(metadata i8 %110, i64 0, metadata !868, metadata !650) #12, !dbg !886
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !873, metadata !650) #12, !dbg !889
  call void @llvm.dbg.value(metadata i8 %110, i64 0, metadata !868, metadata !650) #12, !dbg !886
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !873, metadata !650) #12, !dbg !889
  br label %176, !dbg !930

; <label>:171:                                    ; preds = %140
  call void @llvm.dbg.value(metadata i8 %110, i64 0, metadata !868, metadata !650) #12, !dbg !886
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !873, metadata !650) #12, !dbg !889
  call void @llvm.dbg.value(metadata i8 %110, i64 0, metadata !868, metadata !650) #12, !dbg !886
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !873, metadata !650) #12, !dbg !889
  %172 = and i8 %141, 1, !dbg !931
  %173 = icmp eq i8 %172, 0, !dbg !931
  br i1 %173, label %174, label %176, !dbg !930

; <label>:174:                                    ; preds = %171
  %175 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i64 0, i64 0), i32 5) #12, !dbg !932
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %175) #12, !dbg !934
  call void @usage(i32 125) #16, !dbg !935
  unreachable, !dbg !935

; <label>:176:                                    ; preds = %171, %170
  %177 = load i8*, i8** @program_name, align 8, !dbg !936, !tbaa !657
  call void @llvm.dbg.value(metadata i8* %177, i64 0, metadata !937, metadata !650) #12, !dbg !951
  %178 = call i8* @strchr(i8* %177, i32 47) #14, !dbg !953
  %179 = icmp eq i8* %178, null, !dbg !953
  br i1 %179, label %182, label %180, !dbg !954

; <label>:180:                                    ; preds = %176
  %181 = call i8* @dir_name(i8* %177) #12, !dbg !955
  store i8* %181, i8** @program_path, align 8, !dbg !957, !tbaa !657
  br label %208, !dbg !958

; <label>:182:                                    ; preds = %176
  %183 = call i8* @xreadlink(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i64 0, i64 0)) #12, !dbg !959
  call void @llvm.dbg.value(metadata i8* %183, i64 0, metadata !940, metadata !650) #12, !dbg !960
  %184 = icmp eq i8* %183, null, !dbg !961
  br i1 %184, label %187, label %185, !dbg !962

; <label>:185:                                    ; preds = %182
  %186 = call i8* @dir_name(i8* nonnull %183) #12, !dbg !963
  store i8* %186, i8** @program_path, align 8, !dbg !964, !tbaa !657
  br label %205, !dbg !965

; <label>:187:                                    ; preds = %182
  %188 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0)) #12, !dbg !966
  call void @llvm.dbg.value(metadata i8* %188, i64 0, metadata !940, metadata !650) #12, !dbg !960
  %189 = icmp eq i8* %188, null, !dbg !967
  br i1 %189, label %205, label %190, !dbg !968

; <label>:190:                                    ; preds = %187
  %191 = call noalias i8* @xstrdup(i8* nonnull %188) #12, !dbg !969
  call void @llvm.dbg.value(metadata i8* %191, i64 0, metadata !940, metadata !650) #12, !dbg !960
  %192 = call i8* @strtok(i8* %191, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0)) #12, !dbg !970
  call void @llvm.dbg.value(metadata i8* %192, i64 0, metadata !943, metadata !650) #12, !dbg !971
  %193 = icmp eq i8* %192, null, !dbg !972
  br i1 %193, label %205, label %194, !dbg !973

; <label>:194:                                    ; preds = %190
  br label %195, !dbg !974

; <label>:195:                                    ; preds = %194, %202
  %196 = phi i8* [ %203, %202 ], [ %192, %194 ]
  %197 = call i8* @file_name_concat(i8* nonnull %196, i8* %177, i8** null) #12, !dbg !974
  call void @llvm.dbg.value(metadata i8* %197, i64 0, metadata !947, metadata !650) #12, !dbg !975
  %198 = call i32 @access(i8* %197, i32 1) #12, !dbg !976
  %199 = icmp eq i32 %198, 0, !dbg !978
  br i1 %199, label %200, label %202, !dbg !979

; <label>:200:                                    ; preds = %195
  %201 = call i8* @dir_name(i8* %197) #12, !dbg !980
  store i8* %201, i8** @program_path, align 8, !dbg !982, !tbaa !657
  call void @free(i8* %197) #12, !dbg !983
  br label %205

; <label>:202:                                    ; preds = %195
  call void @free(i8* %197) #12, !dbg !984
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !943, metadata !650) #12, !dbg !971
  %203 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0)) #12, !dbg !970
  call void @llvm.dbg.value(metadata i8* %203, i64 0, metadata !943, metadata !650) #12, !dbg !971
  %204 = icmp eq i8* %203, null, !dbg !972
  br i1 %204, label %205, label %195, !dbg !973, !llvm.loop !985

; <label>:205:                                    ; preds = %202, %200, %190, %187, %185
  %206 = phi i8* [ %183, %185 ], [ null, %187 ], [ %191, %200 ], [ %191, %190 ], [ %191, %202 ]
  call void @llvm.dbg.value(metadata i8* %206, i64 0, metadata !940, metadata !650) #12, !dbg !960
  call void @free(i8* %206) #12, !dbg !988
  %207 = load i8*, i8** @program_path, align 8, !dbg !989, !tbaa !657
  br label %208

; <label>:208:                                    ; preds = %180, %205
  %209 = phi i8* [ %181, %180 ], [ %207, %205 ]
  %210 = icmp eq i8* %209, null, !dbg !989
  br i1 %210, label %211, label %213, !dbg !991

; <label>:211:                                    ; preds = %208
  %212 = call noalias i8* @xstrdup(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0)) #12, !dbg !992
  store i8* %212, i8** @program_path, align 8, !dbg !993, !tbaa !657
  br label %213, !dbg !994

; <label>:213:                                    ; preds = %208, %211
  %214 = phi i8* [ %209, %208 ], [ %212, %211 ]
  %215 = ptrtoint i8* %214 to i64, !dbg !995
  %216 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0)) #12, !dbg !996
  call void @llvm.dbg.value(metadata i8* %216, i64 0, metadata !708, metadata !650) #12, !dbg !997
  %217 = bitcast i8** %5 to i8*, !dbg !998
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %217) #12, !dbg !998
  %218 = bitcast [3 x i8*]* %6 to i8*, !dbg !999
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %218) #12, !dbg !999
  %219 = bitcast [3 x i8*]* %6 to i64*, !dbg !1000
  store i64 %215, i64* %219, align 16, !dbg !1000, !tbaa !657
  %220 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 1, !dbg !1000
  %221 = bitcast i8** %220 to <2 x i8*>*, !dbg !1000
  store <2 x i8*> <i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.56, i64 0, i64 0), i8* null>, <2 x i8*>* %221, align 8, !dbg !1000, !tbaa !657
  %222 = bitcast i8** %7 to i8*, !dbg !1001
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %222) #12, !dbg !1001
  %223 = bitcast %struct.stat* %8 to i8*, !dbg !1002
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %223) #12, !dbg !1002
  %224 = load i8, i8* %214, align 1, !dbg !1003, !tbaa !795
  %225 = icmp eq i8 %224, 0, !dbg !1003
  br i1 %225, label %228, label %226, !dbg !1005

; <label>:226:                                    ; preds = %213
  %227 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 0, !dbg !1006
  br label %230, !dbg !1005

; <label>:228:                                    ; preds = %248, %213
  %229 = call noalias i8* @xstrdup(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0)) #12, !dbg !1007
  call void @llvm.dbg.value(metadata i8* %229, i64 0, metadata !712, metadata !650) #12, !dbg !1009
  store i8* %229, i8** %7, align 8, !dbg !1010, !tbaa !657
  br label %251, !dbg !1011

; <label>:230:                                    ; preds = %248, %226
  %231 = phi i8* [ %214, %226 ], [ %243, %248 ]
  %232 = phi i8** [ %227, %226 ], [ %242, %248 ]
  call void @llvm.dbg.value(metadata i8** %7, i64 0, metadata !712, metadata !650) #12, !dbg !1009
  call void @llvm.dbg.value(metadata i8** %232, i64 0, metadata !710, metadata !650) #12, !dbg !1012
  %233 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %7, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8* %231, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0)) #12, !dbg !1013
  call void @llvm.dbg.value(metadata i32 %233, i64 0, metadata !706, metadata !650) #12, !dbg !1014
  %234 = icmp slt i32 %233, 0, !dbg !1015
  br i1 %234, label %235, label %236, !dbg !1017

; <label>:235:                                    ; preds = %230
  call void @xalloc_die() #15, !dbg !1018
  unreachable, !dbg !1018

; <label>:236:                                    ; preds = %230
  %237 = load i8*, i8** %7, align 8, !dbg !1019, !tbaa !657
  call void @llvm.dbg.value(metadata i8* %237, i64 0, metadata !712, metadata !650) #12, !dbg !1009
  call void @llvm.dbg.value(metadata %struct.stat* %8, i64 0, metadata !713, metadata !650) #12, !dbg !1021
  call void @llvm.dbg.value(metadata i8* %237, i64 0, metadata !1022, metadata !650) #12, !dbg !1030
  call void @llvm.dbg.value(metadata %struct.stat* %8, i64 0, metadata !1029, metadata !650) #12, !dbg !1030
  %238 = call i32 @__xstat(i32 1, i8* nonnull %237, %struct.stat* nonnull %8) #12, !dbg !1032
  %239 = icmp eq i32 %238, 0, !dbg !1033
  %240 = load i8*, i8** %7, align 8, !tbaa !657
  br i1 %239, label %251, label %241, !dbg !1034

; <label>:241:                                    ; preds = %236
  call void @llvm.dbg.value(metadata i8* %240, i64 0, metadata !712, metadata !650) #12, !dbg !1009
  call void @free(i8* %240) #12, !dbg !1035
  %242 = getelementptr inbounds i8*, i8** %232, i64 1, !dbg !1036
  call void @llvm.dbg.value(metadata i8** %242, i64 0, metadata !710, metadata !650) #12, !dbg !1012
  %243 = load i8*, i8** %242, align 8, !dbg !1037, !tbaa !657
  %244 = icmp eq i8* %243, null, !dbg !1037
  br i1 %244, label %245, label %248, !dbg !1039

; <label>:245:                                    ; preds = %241
  %246 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.59, i64 0, i64 0), i32 5) #12, !dbg !1040
  %247 = call i8* @quote(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0)) #12, !dbg !1040
  call void (i32, i32, i8*, ...) @error(i32 125, i32 0, i8* %246, i8* %247) #12, !dbg !1040
  unreachable, !dbg !1040

; <label>:248:                                    ; preds = %241
  call void @llvm.dbg.value(metadata i8** %242, i64 0, metadata !710, metadata !650) #12, !dbg !1012
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %223) #12, !dbg !1041
  call void @llvm.dbg.value(metadata i8** %242, i64 0, metadata !710, metadata !650) #12, !dbg !1012
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %223) #12, !dbg !1002
  %249 = load i8, i8* %243, align 1, !dbg !1003, !tbaa !795
  %250 = icmp eq i8 %249, 0, !dbg !1003
  br i1 %250, label %228, label %230, !dbg !1005, !llvm.loop !1042

; <label>:251:                                    ; preds = %236, %228
  %252 = phi i8* [ %229, %228 ], [ %240, %236 ]
  call void @llvm.dbg.value(metadata i8** %242, i64 0, metadata !710, metadata !650) #12, !dbg !1012
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %223) #12, !dbg !1041
  %253 = icmp eq i8* %216, null, !dbg !1045
  call void @llvm.dbg.value(metadata i8* %252, i64 0, metadata !712, metadata !650) #12, !dbg !1009
  call void @llvm.dbg.value(metadata i8** %5, i64 0, metadata !709, metadata !650) #12, !dbg !1047
  br i1 %253, label %256, label %254, !dbg !1048

; <label>:254:                                    ; preds = %251
  %255 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %5, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0), i8* nonnull %216, i8* %252) #12, !dbg !1049
  call void @llvm.dbg.value(metadata i32 %255, i64 0, metadata !706, metadata !650) #12, !dbg !1014
  br label %258, !dbg !1050

; <label>:256:                                    ; preds = %251
  %257 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %5, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0), i8* %252) #12, !dbg !1051
  call void @llvm.dbg.value(metadata i32 %257, i64 0, metadata !706, metadata !650) #12, !dbg !1014
  br label %258

; <label>:258:                                    ; preds = %256, %254
  %259 = phi i32 [ %255, %254 ], [ %257, %256 ]
  call void @llvm.dbg.value(metadata i32 %259, i64 0, metadata !706, metadata !650) #12, !dbg !1014
  %260 = icmp slt i32 %259, 0, !dbg !1052
  br i1 %260, label %261, label %262, !dbg !1054

; <label>:261:                                    ; preds = %258
  call void @xalloc_die() #15, !dbg !1055
  unreachable, !dbg !1055

; <label>:262:                                    ; preds = %258
  %263 = load i8*, i8** %7, align 8, !dbg !1056, !tbaa !657
  call void @llvm.dbg.value(metadata i8* %263, i64 0, metadata !712, metadata !650) #12, !dbg !1009
  call void @free(i8* %263) #12, !dbg !1057
  %264 = load i8*, i8** %5, align 8, !dbg !1058, !tbaa !657
  call void @llvm.dbg.value(metadata i8* %264, i64 0, metadata !709, metadata !650) #12, !dbg !1047
  %265 = call i32 @putenv(i8* %264) #12, !dbg !1059
  call void @llvm.dbg.value(metadata i32 %265, i64 0, metadata !706, metadata !650) #12, !dbg !1014
  %266 = icmp eq i32 %265, 0, !dbg !1060
  br i1 %266, label %273, label %267, !dbg !1062

; <label>:267:                                    ; preds = %262
  %268 = tail call i32* @__errno_location() #17, !dbg !1063
  %269 = load i32, i32* %268, align 4, !dbg !1063, !tbaa !768
  %270 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i64 0, i64 0), i32 5) #12, !dbg !1063
  %271 = load i8*, i8** %5, align 8, !dbg !1063, !tbaa !657
  call void @llvm.dbg.value(metadata i8* %271, i64 0, metadata !709, metadata !650) #12, !dbg !1047
  %272 = call i8* @quote(i8* %271) #12, !dbg !1063
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %269, i8* %270, i8* %272) #12, !dbg !1063
  unreachable, !dbg !1063

; <label>:273:                                    ; preds = %262
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %222) #12, !dbg !1065
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %218) #12, !dbg !1065
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %217) #12, !dbg !1065
  %274 = load i8*, i8** @program_path, align 8, !dbg !1066, !tbaa !657
  call void @free(i8* %274) #12, !dbg !1067
  %275 = load i8*, i8** %67, align 8, !dbg !1068, !tbaa !657
  %276 = call i32 @execvp(i8* %275, i8** %67) #12, !dbg !1069
  %277 = tail call i32* @__errno_location() #17, !dbg !1070
  %278 = load i32, i32* %277, align 4, !dbg !1070, !tbaa !768
  %279 = icmp eq i32 %278, 2, !dbg !1071
  %280 = select i1 %279, i32 127, i32 126, !dbg !1070
  call void @llvm.dbg.value(metadata i32 %280, i64 0, metadata !702, metadata !650), !dbg !1072
  %281 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i32 5) #12, !dbg !1073
  %282 = load i8*, i8** %67, align 8, !dbg !1074, !tbaa !657
  %283 = call i8* @quote(i8* %282) #12, !dbg !1075
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %278, i8* %281, i8* %283) #12, !dbg !1076
  ret i32 %280, !dbg !1077
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

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @__asprintf_chk(i8**, i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @putenv(i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @access(i8* nocapture readonly, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @execvp(i8*, i8**) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1078 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1080, metadata !650), !dbg !1081
  store i8* %0, i8** @file_name, align 8, !dbg !1082, !tbaa !657
  ret void, !dbg !1083
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1084 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1088, metadata !650), !dbg !1089
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1090, !tbaa !1091
  ret void, !dbg !1093
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1094 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1099, !tbaa !657
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !1100
  %3 = icmp eq i32 %2, 0, !dbg !1101
  br i1 %3, label %21, label %4, !dbg !1102

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1103, !tbaa !1091, !range !1104
  %6 = icmp eq i8 %5, 0, !dbg !1103
  %7 = tail call i32* @__errno_location() #17, !dbg !1105
  br i1 %6, label %11, label %8, !dbg !1107

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1108, !tbaa !768
  %10 = icmp eq i32 %9, 32, !dbg !1109
  br i1 %10, label %21, label %11, !dbg !1110

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i32 5) #12, !dbg !1111
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1096, metadata !650), !dbg !1112
  %13 = load i8*, i8** @file_name, align 8, !dbg !1113, !tbaa !657
  %14 = icmp eq i8* %13, null, !dbg !1113
  %15 = load i32, i32* %7, align 4, !tbaa !768
  br i1 %14, label %18, label %16, !dbg !1114

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !1115
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.28, i64 0, i64 0), i8* %17, i8* %12) #12, !dbg !1116
  br label %19, !dbg !1116

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.29, i64 0, i64 0), i8* %12) #12, !dbg !1117
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1118, !tbaa !768
  tail call void @_exit(i32 %20) #15, !dbg !1119
  unreachable, !dbg !1119

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1120, !tbaa !657
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #12, !dbg !1122
  %24 = icmp eq i32 %23, 0, !dbg !1123
  br i1 %24, label %27, label %25, !dbg !1124

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1125, !tbaa !768
  tail call void @_exit(i32 %26) #15, !dbg !1126
  unreachable, !dbg !1126

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1127
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define i8* @dir_name(i8*) local_unnamed_addr #6 !dbg !1128 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1133, metadata !650), !dbg !1135
  %2 = tail call i8* @mdir_name(i8* %0) #12, !dbg !1136
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1134, metadata !650), !dbg !1137
  %3 = icmp eq i8* %2, null, !dbg !1138
  br i1 %3, label %4, label %5, !dbg !1140

; <label>:4:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !1141
  unreachable, !dbg !1141

; <label>:5:                                      ; preds = %1
  ret i8* %2, !dbg !1142
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @dir_len(i8*) local_unnamed_addr #10 !dbg !1143 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1148, metadata !650), !dbg !1151
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1149, metadata !650), !dbg !1152
  %2 = load i8, i8* %0, align 1, !dbg !1153, !tbaa !795
  %3 = icmp eq i8 %2, 47, !dbg !1153
  %4 = zext i1 %3 to i64, !dbg !1154
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !1149, metadata !650), !dbg !1152
  %5 = tail call i8* @last_component(i8* %0) #14, !dbg !1155
  %6 = ptrtoint i8* %5 to i64, !dbg !1157
  %7 = ptrtoint i8* %0 to i64, !dbg !1157
  %8 = sub i64 %6, %7, !dbg !1157
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !1150, metadata !650), !dbg !1158
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !1150, metadata !650), !dbg !1158
  %9 = icmp ugt i64 %8, %4, !dbg !1159
  br i1 %9, label %10, label %19, !dbg !1161

; <label>:10:                                     ; preds = %1
  br label %13, !dbg !1162

; <label>:11:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !1150, metadata !650), !dbg !1158
  %12 = icmp ugt i64 %15, %4, !dbg !1159
  br i1 %12, label %13, label %19, !dbg !1161, !llvm.loop !1164

; <label>:13:                                     ; preds = %10, %11
  %14 = phi i64 [ %15, %11 ], [ %8, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !1150, metadata !650), !dbg !1158
  %15 = add i64 %14, -1, !dbg !1162
  %16 = getelementptr inbounds i8, i8* %0, i64 %15, !dbg !1162
  %17 = load i8, i8* %16, align 1, !dbg !1162, !tbaa !795
  %18 = icmp eq i8 %17, 47, !dbg !1162
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !1150, metadata !650), !dbg !1158
  br i1 %18, label %11, label %19, !dbg !1166

; <label>:19:                                     ; preds = %11, %13, %1
  %20 = phi i64 [ %8, %1 ], [ %14, %13 ], [ %15, %11 ]
  ret i64 %20, !dbg !1167
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @mdir_name(i8*) local_unnamed_addr #6 !dbg !1168 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1170, metadata !650), !dbg !1174
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1148, metadata !650) #12, !dbg !1175
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1149, metadata !650) #12, !dbg !1177
  %2 = load i8, i8* %0, align 1, !dbg !1178, !tbaa !795
  %3 = icmp eq i8 %2, 47, !dbg !1178
  %4 = zext i1 %3 to i64, !dbg !1179
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !1149, metadata !650) #12, !dbg !1177
  %5 = tail call i8* @last_component(i8* %0) #14, !dbg !1180
  %6 = ptrtoint i8* %5 to i64, !dbg !1181
  %7 = ptrtoint i8* %0 to i64, !dbg !1181
  %8 = sub i64 %6, %7, !dbg !1181
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !1150, metadata !650) #12, !dbg !1182
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !1150, metadata !650) #12, !dbg !1182
  %9 = icmp ugt i64 %8, %4, !dbg !1183
  br i1 %9, label %10, label %19, !dbg !1184

; <label>:10:                                     ; preds = %1
  br label %13, !dbg !1185

; <label>:11:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !1150, metadata !650) #12, !dbg !1182
  %12 = icmp ugt i64 %15, %4, !dbg !1183
  br i1 %12, label %13, label %19, !dbg !1184, !llvm.loop !1164

; <label>:13:                                     ; preds = %10, %11
  %14 = phi i64 [ %15, %11 ], [ %8, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !1150, metadata !650) #12, !dbg !1182
  %15 = add i64 %14, -1, !dbg !1185
  %16 = getelementptr inbounds i8, i8* %0, i64 %15, !dbg !1185
  %17 = load i8, i8* %16, align 1, !dbg !1185, !tbaa !795
  %18 = icmp eq i8 %17, 47, !dbg !1185
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !1150, metadata !650) #12, !dbg !1182
  br i1 %18, label %11, label %19, !dbg !1186

; <label>:19:                                     ; preds = %11, %13, %1
  %20 = phi i64 [ %8, %1 ], [ %15, %11 ], [ %14, %13 ]
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !1171, metadata !650), !dbg !1187
  %21 = icmp eq i64 %20, 0, !dbg !1188
  %22 = zext i1 %21 to i64, !dbg !1189
  %23 = add i64 %20, 1, !dbg !1190
  %24 = add i64 %23, %22, !dbg !1191
  %25 = tail call noalias i8* @malloc(i64 %24) #12, !dbg !1192
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1173, metadata !650), !dbg !1193
  %26 = icmp eq i8* %25, null, !dbg !1194
  br i1 %26, label %32, label %27, !dbg !1196

; <label>:27:                                     ; preds = %19
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %25, i8* nonnull %0, i64 %20, i32 1, i1 false), !dbg !1197
  br i1 %21, label %28, label %29, !dbg !1198

; <label>:28:                                     ; preds = %27
  store i8 46, i8* %25, align 1, !dbg !1199, !tbaa !795
  br label %29, !dbg !1201

; <label>:29:                                     ; preds = %28, %27
  %30 = phi i64 [ 1, %28 ], [ %20, %27 ]
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !1171, metadata !650), !dbg !1187
  %31 = getelementptr inbounds i8, i8* %25, i64 %30, !dbg !1202
  store i8 0, i8* %31, align 1, !dbg !1203, !tbaa !795
  br label %32, !dbg !1204

; <label>:32:                                     ; preds = %19, %29
  %33 = phi i8* [ %25, %29 ], [ null, %19 ]
  ret i8* %33, !dbg !1205
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @last_component(i8* readonly) local_unnamed_addr #10 !dbg !1206 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1209, metadata !650), !dbg !1213
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1210, metadata !650), !dbg !1214
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1212, metadata !650), !dbg !1215
  br label %2, !dbg !1216

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ]
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1210, metadata !650), !dbg !1214
  %4 = load i8, i8* %3, align 1, !dbg !1217, !tbaa !795
  %5 = icmp eq i8 %4, 47, !dbg !1217
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1218
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1210, metadata !650), !dbg !1214
  br i1 %5, label %2, label %7, !dbg !1216, !llvm.loop !1219

; <label>:7:                                      ; preds = %2
  br label %8, !dbg !1220

; <label>:8:                                      ; preds = %7, %18
  %9 = phi i8 [ %22, %18 ], [ %4, %7 ], !dbg !1222
  %10 = phi i8* [ %19, %18 ], [ %3, %7 ]
  %11 = phi i8* [ %21, %18 ], [ %3, %7 ]
  %12 = phi i8 [ %20, %18 ], [ 0, %7 ]
  tail call void @llvm.dbg.value(metadata i8 %12, i64 0, metadata !1212, metadata !650), !dbg !1215
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !1211, metadata !650), !dbg !1224
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1210, metadata !650), !dbg !1214
  switch i8 %9, label %13 [
    i8 0, label %23
    i8 47, label %18
  ], !dbg !1220

; <label>:13:                                     ; preds = %8
  %14 = and i8 %12, 1, !dbg !1225
  %15 = icmp eq i8 %14, 0, !dbg !1225
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !1210, metadata !650), !dbg !1214
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1212, metadata !650), !dbg !1215
  %16 = select i1 %15, i8* %10, i8* %11, !dbg !1229
  %17 = select i1 %15, i8 %12, i8 0, !dbg !1229
  br label %18, !dbg !1229

; <label>:18:                                     ; preds = %13, %8
  %19 = phi i8* [ %10, %8 ], [ %16, %13 ]
  %20 = phi i8 [ 1, %8 ], [ %17, %13 ]
  tail call void @llvm.dbg.value(metadata i8 %20, i64 0, metadata !1212, metadata !650), !dbg !1215
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !1210, metadata !650), !dbg !1214
  %21 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1230
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !1211, metadata !650), !dbg !1224
  %22 = load i8, i8* %21, align 1, !dbg !1222, !tbaa !795
  br label %8, !dbg !1231, !llvm.loop !1232

; <label>:23:                                     ; preds = %8
  ret i8* %10, !dbg !1234
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @base_len(i8* nocapture readonly) local_unnamed_addr #10 !dbg !1235 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1237, metadata !650), !dbg !1240
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1239, metadata !650), !dbg !1241
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !1242
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1238, metadata !650), !dbg !1244
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1238, metadata !650), !dbg !1244
  %3 = icmp ugt i64 %2, 1, !dbg !1245
  br i1 %3, label %4, label %13, !dbg !1247

; <label>:4:                                      ; preds = %1
  br label %7, !dbg !1248

; <label>:5:                                      ; preds = %7
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !1238, metadata !650), !dbg !1244
  %6 = icmp ugt i64 %9, 1, !dbg !1245
  br i1 %6, label %7, label %13, !dbg !1247, !llvm.loop !1249

; <label>:7:                                      ; preds = %4, %5
  %8 = phi i64 [ %9, %5 ], [ %2, %4 ]
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !1238, metadata !650), !dbg !1244
  %9 = add i64 %8, -1, !dbg !1248
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !1248
  %11 = load i8, i8* %10, align 1, !dbg !1248, !tbaa !795
  %12 = icmp eq i8 %11, 47, !dbg !1248
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !1238, metadata !650), !dbg !1244
  br i1 %12, label %5, label %13, !dbg !1250

; <label>:13:                                     ; preds = %7, %5, %1
  %14 = phi i64 [ %2, %1 ], [ 1, %5 ], [ %8, %7 ]
  ret i64 %14, !dbg !1252
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define i8* @file_name_concat(i8*, i8*, i8**) local_unnamed_addr #6 !dbg !1253 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1258, metadata !650), !dbg !1262
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1259, metadata !650), !dbg !1263
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !1260, metadata !650), !dbg !1264
  %4 = tail call i8* @mfile_name_concat(i8* %0, i8* %1, i8** %2) #12, !dbg !1265
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !1261, metadata !650), !dbg !1266
  %5 = icmp eq i8* %4, null, !dbg !1267
  br i1 %5, label %6, label %7, !dbg !1269

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !1270
  unreachable, !dbg !1270

; <label>:7:                                      ; preds = %3
  ret i8* %4, !dbg !1271
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @mfile_name_concat(i8*, i8*, i8**) local_unnamed_addr #6 !dbg !1272 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1275, metadata !650), !dbg !1286
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1276, metadata !650), !dbg !1287
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !1277, metadata !650), !dbg !1288
  %4 = tail call i8* @last_component(i8* %0) #14, !dbg !1289
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !1278, metadata !650), !dbg !1290
  %5 = tail call i64 @base_len(i8* %4) #14, !dbg !1291
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !1279, metadata !650), !dbg !1292
  %6 = ptrtoint i8* %4 to i64, !dbg !1293
  %7 = ptrtoint i8* %0 to i64, !dbg !1293
  %8 = sub i64 %6, %7, !dbg !1293
  %9 = add i64 %8, %5, !dbg !1294
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !1280, metadata !650), !dbg !1295
  %10 = icmp eq i64 %5, 0, !dbg !1296
  br i1 %10, label %17, label %11, !dbg !1297

; <label>:11:                                     ; preds = %3
  %12 = add i64 %5, -1, !dbg !1298
  %13 = getelementptr inbounds i8, i8* %4, i64 %12, !dbg !1298
  %14 = load i8, i8* %13, align 1, !dbg !1298, !tbaa !795
  %15 = icmp ne i8 %14, 47, !dbg !1298
  %16 = zext i1 %15 to i64
  br label %17

; <label>:17:                                     ; preds = %3, %11
  %18 = phi i64 [ 0, %3 ], [ %16, %11 ]
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !1281, metadata !650), !dbg !1299
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1300, metadata !650), !dbg !1305
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1300, metadata !650), !dbg !1305
  br label %19, !dbg !1307

; <label>:19:                                     ; preds = %19, %17
  %20 = phi i8* [ %1, %17 ], [ %23, %19 ]
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1300, metadata !650), !dbg !1305
  %21 = load i8, i8* %20, align 1, !dbg !1309, !tbaa !795
  %22 = icmp eq i8 %21, 47, !dbg !1309
  %23 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !1311
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1300, metadata !650), !dbg !1305
  br i1 %22, label %19, label %24, !dbg !1312, !llvm.loop !1313

; <label>:24:                                     ; preds = %19
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1282, metadata !650), !dbg !1316
  %25 = tail call i64 @strlen(i8* %20) #14, !dbg !1317
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !1283, metadata !650), !dbg !1318
  %26 = add i64 %9, 1, !dbg !1319
  %27 = add i64 %26, %18, !dbg !1320
  %28 = add i64 %27, %25, !dbg !1321
  %29 = tail call noalias i8* @malloc(i64 %28) #12, !dbg !1322
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1284, metadata !650), !dbg !1323
  %30 = icmp eq i8* %29, null, !dbg !1324
  br i1 %30, label %44, label %31, !dbg !1326

; <label>:31:                                     ; preds = %24
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1327, metadata !650) #12, !dbg !1339
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1337, metadata !650) #12, !dbg !1339
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !1338, metadata !650) #12, !dbg !1339
  %32 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %29, i1 false, i1 true) #12, !dbg !1341
  %33 = tail call i8* @__mempcpy_chk(i8* nonnull %29, i8* nonnull %0, i64 %9, i64 %32) #12, !dbg !1342
  tail call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !1285, metadata !650), !dbg !1343
  store i8 47, i8* %33, align 1, !dbg !1344, !tbaa !795
  %34 = getelementptr inbounds i8, i8* %33, i64 %18, !dbg !1345
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !1285, metadata !650), !dbg !1343
  %35 = icmp eq i8** %2, null, !dbg !1346
  br i1 %35, label %41, label %36, !dbg !1348

; <label>:36:                                     ; preds = %31
  %37 = load i8, i8* %1, align 1, !dbg !1349, !tbaa !795
  %38 = icmp eq i8 %37, 47, !dbg !1349
  %39 = sext i1 %38 to i64, !dbg !1350
  %40 = getelementptr inbounds i8, i8* %34, i64 %39, !dbg !1350
  store i8* %40, i8** %2, align 8, !dbg !1351, !tbaa !657
  br label %41, !dbg !1352

; <label>:41:                                     ; preds = %31, %36
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !1327, metadata !650) #12, !dbg !1353
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1337, metadata !650) #12, !dbg !1353
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !1338, metadata !650) #12, !dbg !1353
  %42 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %34, i1 false, i1 true) #12, !dbg !1355
  %43 = tail call i8* @__mempcpy_chk(i8* nonnull %34, i8* nonnull %20, i64 %25, i64 %42) #12, !dbg !1356
  tail call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !1285, metadata !650), !dbg !1343
  store i8 0, i8* %43, align 1, !dbg !1357, !tbaa !795
  br label %44, !dbg !1358

; <label>:44:                                     ; preds = %24, %41
  %45 = phi i8* [ %29, %41 ], [ null, %24 ]
  ret i8* %45, !dbg !1359
}

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__mempcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1360 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1362, metadata !650), !dbg !1365
  %2 = icmp eq i8* %0, null, !dbg !1366
  br i1 %2, label %3, label %6, !dbg !1368

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1369, !tbaa !657
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.62, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1371
  tail call void @abort() #15, !dbg !1372
  unreachable, !dbg !1372

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1373
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1363, metadata !650), !dbg !1374
  %8 = icmp eq i8* %7, null, !dbg !1375
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1376
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1377
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1364, metadata !650), !dbg !1378
  %11 = ptrtoint i8* %10 to i64, !dbg !1379
  %12 = ptrtoint i8* %0 to i64, !dbg !1379
  %13 = sub i64 %11, %12, !dbg !1379
  %14 = icmp sgt i64 %13, 6, !dbg !1381
  br i1 %14, label %15, label %24, !dbg !1382

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1383
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.63, i64 0, i64 0), i64 7) #14, !dbg !1384
  %18 = icmp eq i32 %17, 0, !dbg !1385
  br i1 %18, label %19, label %24, !dbg !1386

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1362, metadata !650), !dbg !1365
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.64, i64 0, i64 0), i64 3) #14, !dbg !1387
  %21 = icmp eq i32 %20, 0, !dbg !1390
  br i1 %21, label %22, label %24, !dbg !1391

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1392
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1362, metadata !650), !dbg !1365
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1394, !tbaa !657
  br label %24, !dbg !1395

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1362, metadata !650), !dbg !1365
  store i8* %25, i8** @program_name, align 8, !dbg !1396, !tbaa !657
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1397, !tbaa !657
  ret void, !dbg !1398
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1399 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1404, metadata !650), !dbg !1407
  %2 = tail call i32* @__errno_location() #17, !dbg !1408
  %3 = load i32, i32* %2, align 4, !dbg !1408, !tbaa !768
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1405, metadata !650), !dbg !1409
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1410
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1410
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1410
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !1411
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1411
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1406, metadata !650), !dbg !1412
  store i32 %3, i32* %2, align 4, !dbg !1413, !tbaa !768
  ret %struct.quoting_options* %8, !dbg !1414
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #10 !dbg !1415 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1421, metadata !650), !dbg !1422
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1423
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1423
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1424
  %5 = load i32, i32* %4, align 8, !dbg !1424, !tbaa !1425
  ret i32 %5, !dbg !1427
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1428 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1432, metadata !650), !dbg !1434
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1433, metadata !650), !dbg !1435
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1436
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1436
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1437
  store i32 %1, i32* %5, align 8, !dbg !1438, !tbaa !1425
  ret void, !dbg !1439
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1440 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1444, metadata !650), !dbg !1452
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1445, metadata !650), !dbg !1453
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1446, metadata !650), !dbg !1454
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1447, metadata !650), !dbg !1455
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1456
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1456
  %6 = lshr i8 %1, 5, !dbg !1457
  %7 = zext i8 %6 to i64, !dbg !1457
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1458
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1448, metadata !650), !dbg !1459
  %9 = and i8 %1, 31, !dbg !1460
  %10 = zext i8 %9 to i32, !dbg !1461
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1450, metadata !650), !dbg !1462
  %11 = load i32, i32* %8, align 4, !dbg !1463, !tbaa !768
  %12 = lshr i32 %11, %10, !dbg !1464
  %13 = and i32 %12, 1, !dbg !1465
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1451, metadata !650), !dbg !1466
  %14 = and i32 %2, 1, !dbg !1467
  %15 = xor i32 %13, %14, !dbg !1468
  %16 = shl i32 %15, %10, !dbg !1469
  %17 = xor i32 %16, %11, !dbg !1470
  store i32 %17, i32* %8, align 4, !dbg !1470, !tbaa !768
  ret i32 %13, !dbg !1471
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1472 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1476, metadata !650), !dbg !1479
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1477, metadata !650), !dbg !1480
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1481
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1476, metadata !650), !dbg !1479
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1483
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1476, metadata !650), !dbg !1479
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1484
  %6 = load i32, i32* %5, align 4, !dbg !1484, !tbaa !1485
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1478, metadata !650), !dbg !1486
  store i32 %1, i32* %5, align 4, !dbg !1487, !tbaa !1485
  ret i32 %6, !dbg !1488
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1489 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1493, metadata !650), !dbg !1496
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1494, metadata !650), !dbg !1497
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1495, metadata !650), !dbg !1498
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1499
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1493, metadata !650), !dbg !1496
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1501
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1493, metadata !650), !dbg !1496
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1502
  store i32 10, i32* %6, align 8, !dbg !1503, !tbaa !1425
  %7 = icmp ne i8* %1, null, !dbg !1504
  %8 = icmp ne i8* %2, null, !dbg !1506
  %9 = and i1 %7, %8, !dbg !1507
  br i1 %9, label %11, label %10, !dbg !1507

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1508
  unreachable, !dbg !1508

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1509
  store i8* %1, i8** %12, align 8, !dbg !1510, !tbaa !1511
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1512
  store i8* %2, i8** %13, align 8, !dbg !1513, !tbaa !1514
  ret void, !dbg !1515
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1516 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1520, metadata !650), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1521, metadata !650), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1522, metadata !650), !dbg !1530
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1523, metadata !650), !dbg !1531
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1524, metadata !650), !dbg !1532
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1533
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1533
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1525, metadata !650), !dbg !1534
  %8 = tail call i32* @__errno_location() #17, !dbg !1535
  %9 = load i32, i32* %8, align 4, !dbg !1535, !tbaa !768
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1526, metadata !650), !dbg !1536
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1537
  %11 = load i32, i32* %10, align 8, !dbg !1537, !tbaa !1425
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1538
  %13 = load i32, i32* %12, align 4, !dbg !1538, !tbaa !1485
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1539
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1540
  %16 = load i8*, i8** %15, align 8, !dbg !1540, !tbaa !1511
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1541
  %18 = load i8*, i8** %17, align 8, !dbg !1541, !tbaa !1514
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1542
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1527, metadata !650), !dbg !1543
  store i32 %9, i32* %8, align 4, !dbg !1544, !tbaa !768
  ret i64 %19, !dbg !1545
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1546 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1552, metadata !650), !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1553, metadata !650), !dbg !1617
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1554, metadata !650), !dbg !1618
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1555, metadata !650), !dbg !1619
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1556, metadata !650), !dbg !1620
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1557, metadata !650), !dbg !1621
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1558, metadata !650), !dbg !1622
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1559, metadata !650), !dbg !1623
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1560, metadata !650), !dbg !1624
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1562, metadata !650), !dbg !1625
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1563, metadata !650), !dbg !1626
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1564, metadata !650), !dbg !1627
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1565, metadata !650), !dbg !1628
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1566, metadata !650), !dbg !1629
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !1630
  %14 = icmp eq i64 %13, 1, !dbg !1631
  %15 = lshr i32 %5, 1, !dbg !1632
  %16 = trunc i32 %15 to i8, !dbg !1632
  %17 = and i8 %16, 1, !dbg !1632
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1568, metadata !650), !dbg !1632
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1569, metadata !650), !dbg !1633
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1570, metadata !650), !dbg !1634
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1571, metadata !650), !dbg !1635
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1636

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1553, metadata !650), !dbg !1617
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1571, metadata !650), !dbg !1635
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1570, metadata !650), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1569, metadata !650), !dbg !1633
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1568, metadata !650), !dbg !1632
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1555, metadata !650), !dbg !1619
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1566, metadata !650), !dbg !1629
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1565, metadata !650), !dbg !1628
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1564, metadata !650), !dbg !1627
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1563, metadata !650), !dbg !1626
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1562, metadata !650), !dbg !1625
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1560, metadata !650), !dbg !1624
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1559, metadata !650), !dbg !1623
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1556, metadata !650), !dbg !1620
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
  ], !dbg !1637

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1556, metadata !650), !dbg !1620
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1568, metadata !650), !dbg !1632
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1568, metadata !650), !dbg !1632
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1556, metadata !650), !dbg !1620
  br label %94, !dbg !1638

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1568, metadata !650), !dbg !1632
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1556, metadata !650), !dbg !1620
  %43 = and i8 %36, 1, !dbg !1640
  %44 = icmp eq i8 %43, 0, !dbg !1640
  br i1 %44, label %45, label %94, !dbg !1638

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1642
  br i1 %46, label %94, label %47, !dbg !1645

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1642, !tbaa !795
  br label %94, !dbg !1642

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.75, i64 0, i64 0), i32 %28), !dbg !1646
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1559, metadata !650), !dbg !1623
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.76, i64 0, i64 0), i32 %28), !dbg !1650
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1560, metadata !650), !dbg !1624
  br label %51, !dbg !1651

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1560, metadata !650), !dbg !1624
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1559, metadata !650), !dbg !1623
  %54 = and i8 %36, 1, !dbg !1652
  %55 = icmp eq i8 %54, 0, !dbg !1652
  br i1 %55, label %56, label %72, !dbg !1654

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1564, metadata !650), !dbg !1627
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1564, metadata !650), !dbg !1627
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1562, metadata !650), !dbg !1625
  %57 = load i8, i8* %52, align 1, !dbg !1655, !tbaa !795
  %58 = icmp eq i8 %57, 0, !dbg !1658
  br i1 %58, label %72, label %59, !dbg !1658

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1659

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1562, metadata !650), !dbg !1625
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1564, metadata !650), !dbg !1627
  %64 = icmp ult i64 %63, %40, !dbg !1659
  br i1 %64, label %65, label %67, !dbg !1662

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1659
  store i8 %61, i8* %66, align 1, !dbg !1659, !tbaa !795
  br label %67, !dbg !1659

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1662
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1562, metadata !650), !dbg !1625
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1663
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1564, metadata !650), !dbg !1627
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1564, metadata !650), !dbg !1627
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1562, metadata !650), !dbg !1625
  %70 = load i8, i8* %69, align 1, !dbg !1655, !tbaa !795
  %71 = icmp eq i8 %70, 0, !dbg !1658
  br i1 %71, label %72, label %60, !dbg !1658, !llvm.loop !1664

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1562, metadata !650), !dbg !1625
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1566, metadata !650), !dbg !1629
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1564, metadata !650), !dbg !1627
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1666
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1565, metadata !650), !dbg !1628
  br label %94, !dbg !1667

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1566, metadata !650), !dbg !1629
  br label %76, !dbg !1668

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1566, metadata !650), !dbg !1629
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1568, metadata !650), !dbg !1632
  br label %78, !dbg !1669

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1568, metadata !650), !dbg !1632
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1566, metadata !650), !dbg !1629
  %81 = and i8 %80, 1, !dbg !1670
  %82 = icmp eq i8 %81, 0, !dbg !1670
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1566, metadata !650), !dbg !1629
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1672
  br label %84, !dbg !1672

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1568, metadata !650), !dbg !1632
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1566, metadata !650), !dbg !1629
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1556, metadata !650), !dbg !1620
  %87 = and i8 %86, 1, !dbg !1673
  %88 = icmp eq i8 %87, 0, !dbg !1673
  br i1 %88, label %89, label %94, !dbg !1675

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1676
  br i1 %90, label %94, label %91, !dbg !1679

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1676, !tbaa !795
  br label %94, !dbg !1676

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1568, metadata !650), !dbg !1632
  br label %94, !dbg !1680

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1681
  unreachable, !dbg !1681

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.77, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.77, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.77, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.76, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.76, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.76, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.77, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1568, metadata !650), !dbg !1632
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1566, metadata !650), !dbg !1629
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1565, metadata !650), !dbg !1628
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1564, metadata !650), !dbg !1627
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1562, metadata !650), !dbg !1625
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1560, metadata !650), !dbg !1624
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1559, metadata !650), !dbg !1623
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1556, metadata !650), !dbg !1620
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1561, metadata !650), !dbg !1682
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
  br label %122, !dbg !1683

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1553, metadata !650), !dbg !1617
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1571, metadata !650), !dbg !1635
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1570, metadata !650), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1569, metadata !650), !dbg !1633
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1555, metadata !650), !dbg !1619
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1563, metadata !650), !dbg !1626
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1562, metadata !650), !dbg !1625
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1561, metadata !650), !dbg !1682
  %131 = icmp eq i64 %126, -1, !dbg !1684
  br i1 %131, label %134, label %132, !dbg !1685

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1686
  br i1 %133, label %590, label %138, !dbg !1687

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1688
  %136 = load i8, i8* %135, align 1, !dbg !1688, !tbaa !795
  %137 = icmp eq i8 %136, 0, !dbg !1689
  br i1 %137, label %590, label %138, !dbg !1687

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1577, metadata !650), !dbg !1690
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1578, metadata !650), !dbg !1691
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1579, metadata !650), !dbg !1692
  br i1 %108, label %139, label %154, !dbg !1693

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1695
  %141 = and i1 %109, %131, !dbg !1696
  br i1 %141, label %142, label %144, !dbg !1696

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1697
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1555, metadata !650), !dbg !1619
  br label %144, !dbg !1698

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1555, metadata !650), !dbg !1619
  %146 = icmp ugt i64 %140, %145, !dbg !1699
  br i1 %146, label %154, label %147, !dbg !1700

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1701
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1702
  %150 = icmp ne i32 %149, 0, !dbg !1703
  %151 = or i1 %150, %111, !dbg !1704
  %152 = xor i1 %150, true, !dbg !1704
  %153 = zext i1 %152 to i8, !dbg !1704
  br i1 %151, label %154, label %635, !dbg !1704

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1577, metadata !650), !dbg !1690
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1555, metadata !650), !dbg !1619
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1705
  %158 = load i8, i8* %157, align 1, !dbg !1705, !tbaa !795
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1572, metadata !650), !dbg !1706
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
  ], !dbg !1707

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1708

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1709

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1578, metadata !650), !dbg !1691
  %162 = and i8 %127, 1, !dbg !1713
  %163 = icmp eq i8 %162, 0, !dbg !1713
  %164 = and i1 %113, %163, !dbg !1713
  br i1 %164, label %165, label %181, !dbg !1713

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1715
  br i1 %166, label %167, label %169, !dbg !1719

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1715
  store i8 39, i8* %168, align 1, !dbg !1715, !tbaa !795
  br label %169, !dbg !1715

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1719
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1562, metadata !650), !dbg !1625
  %171 = icmp ult i64 %170, %130, !dbg !1720
  br i1 %171, label %172, label %174, !dbg !1723

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1720
  store i8 36, i8* %173, align 1, !dbg !1720, !tbaa !795
  br label %174, !dbg !1720

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1723
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1562, metadata !650), !dbg !1625
  %176 = icmp ult i64 %175, %130, !dbg !1724
  br i1 %176, label %177, label %179, !dbg !1727

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1724
  store i8 39, i8* %178, align 1, !dbg !1724, !tbaa !795
  br label %179, !dbg !1724

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1727
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1562, metadata !650), !dbg !1625
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1569, metadata !650), !dbg !1633
  br label %181, !dbg !1728

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1569, metadata !650), !dbg !1633
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1562, metadata !650), !dbg !1625
  %184 = icmp ult i64 %182, %130, !dbg !1729
  br i1 %184, label %185, label %187, !dbg !1732

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1729
  store i8 92, i8* %186, align 1, !dbg !1729, !tbaa !795
  br label %187, !dbg !1729

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1732
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1562, metadata !650), !dbg !1625
  br i1 %105, label %189, label %470, !dbg !1733

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1735
  %191 = icmp ult i64 %190, %155, !dbg !1736
  br i1 %191, label %192, label %470, !dbg !1737

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1738
  %194 = load i8, i8* %193, align 1, !dbg !1738, !tbaa !795
  %195 = add i8 %194, -48, !dbg !1739
  %196 = icmp ult i8 %195, 10, !dbg !1739
  br i1 %196, label %197, label %470, !dbg !1739

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1740
  br i1 %198, label %199, label %201, !dbg !1744

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1740
  store i8 48, i8* %200, align 1, !dbg !1740, !tbaa !795
  br label %201, !dbg !1740

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1744
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1562, metadata !650), !dbg !1625
  %203 = icmp ult i64 %202, %130, !dbg !1745
  br i1 %203, label %204, label %206, !dbg !1748

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1745
  store i8 48, i8* %205, align 1, !dbg !1745, !tbaa !795
  br label %206, !dbg !1745

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1748
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1562, metadata !650), !dbg !1625
  br label %470, !dbg !1749

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1750

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1751

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1752

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1754

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1756
  %214 = icmp ult i64 %213, %155, !dbg !1757
  br i1 %214, label %215, label %470, !dbg !1758

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1759
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1760
  %218 = load i8, i8* %217, align 1, !dbg !1760, !tbaa !795
  %219 = icmp eq i8 %218, 63, !dbg !1761
  br i1 %219, label %220, label %470, !dbg !1762

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1763
  %222 = load i8, i8* %221, align 1, !dbg !1763, !tbaa !795
  %223 = sext i8 %222 to i32, !dbg !1763
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
  ], !dbg !1764

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1765

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1572, metadata !650), !dbg !1706
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1561, metadata !650), !dbg !1682
  %226 = icmp ult i64 %124, %130, !dbg !1767
  br i1 %226, label %227, label %229, !dbg !1770

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1767
  store i8 63, i8* %228, align 1, !dbg !1767, !tbaa !795
  br label %229, !dbg !1767

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1770
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1562, metadata !650), !dbg !1625
  %231 = icmp ult i64 %230, %130, !dbg !1771
  br i1 %231, label %232, label %234, !dbg !1774

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1771
  store i8 34, i8* %233, align 1, !dbg !1771, !tbaa !795
  br label %234, !dbg !1771

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1774
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1562, metadata !650), !dbg !1625
  %236 = icmp ult i64 %235, %130, !dbg !1775
  br i1 %236, label %237, label %239, !dbg !1778

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1775
  store i8 34, i8* %238, align 1, !dbg !1775, !tbaa !795
  br label %239, !dbg !1775

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1778
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1562, metadata !650), !dbg !1625
  %241 = icmp ult i64 %240, %130, !dbg !1779
  br i1 %241, label %242, label %244, !dbg !1782

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1779
  store i8 63, i8* %243, align 1, !dbg !1779, !tbaa !795
  br label %244, !dbg !1779

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1782
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1562, metadata !650), !dbg !1625
  br label %470, !dbg !1783

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1576, metadata !650), !dbg !1784
  br label %256, !dbg !1785

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1576, metadata !650), !dbg !1784
  br label %256, !dbg !1786

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1576, metadata !650), !dbg !1784
  br label %254, !dbg !1787

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1576, metadata !650), !dbg !1784
  br label %254, !dbg !1788

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1576, metadata !650), !dbg !1784
  br label %256, !dbg !1789

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1576, metadata !650), !dbg !1784
  br i1 %113, label %252, label %253, !dbg !1790

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1791

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1794

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1576, metadata !650), !dbg !1784
  br i1 %117, label %256, label %635, !dbg !1796

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1576, metadata !650), !dbg !1784
  br i1 %104, label %497, label %470, !dbg !1798

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1799
  br i1 %259, label %260, label %265, !dbg !1801

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1802, !tbaa !795
  %262 = icmp ne i8 %261, 0, !dbg !1803
  %263 = icmp ne i64 %123, 0, !dbg !1804
  %264 = or i1 %263, %262, !dbg !1806
  br i1 %264, label %470, label %271, !dbg !1806

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1807
  %267 = icmp ne i64 %123, 0, !dbg !1804
  %268 = or i1 %267, %266, !dbg !1801
  br i1 %268, label %470, label %271, !dbg !1801

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1804
  br i1 %270, label %271, label %470, !dbg !1808

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1579, metadata !650), !dbg !1692
  br label %272, !dbg !1809

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1579, metadata !650), !dbg !1692
  br i1 %117, label %470, label %635, !dbg !1810

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1570, metadata !650), !dbg !1634
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1579, metadata !650), !dbg !1692
  br i1 %113, label %275, label %470, !dbg !1812

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1813

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1816
  %278 = icmp ne i64 %125, 0, !dbg !1818
  %279 = or i1 %278, %277, !dbg !1819
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1563, metadata !650), !dbg !1626
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1553, metadata !650), !dbg !1617
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1819
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1819
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1553, metadata !650), !dbg !1617
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1563, metadata !650), !dbg !1626
  %282 = icmp ult i64 %124, %281, !dbg !1820
  br i1 %282, label %283, label %285, !dbg !1823

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1820
  store i8 39, i8* %284, align 1, !dbg !1820, !tbaa !795
  br label %285, !dbg !1820

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1823
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1562, metadata !650), !dbg !1625
  %287 = icmp ult i64 %286, %281, !dbg !1824
  br i1 %287, label %288, label %290, !dbg !1827

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1824
  store i8 92, i8* %289, align 1, !dbg !1824, !tbaa !795
  br label %290, !dbg !1824

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1827
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1562, metadata !650), !dbg !1625
  %292 = icmp ult i64 %291, %281, !dbg !1828
  br i1 %292, label %293, label %295, !dbg !1831

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1828
  store i8 39, i8* %294, align 1, !dbg !1828, !tbaa !795
  br label %295, !dbg !1828

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1831
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1562, metadata !650), !dbg !1625
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1569, metadata !650), !dbg !1633
  br label %470, !dbg !1832

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1833

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1580, metadata !650), !dbg !1834
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1835
  %300 = load i16*, i16** %299, align 8, !dbg !1835, !tbaa !657
  %301 = zext i8 %158 to i64, !dbg !1835
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1835
  %303 = load i16, i16* %302, align 2, !dbg !1835, !tbaa !1837
  %304 = lshr i16 %303, 14, !dbg !1839
  %305 = trunc i16 %304 to i8, !dbg !1839
  %306 = and i8 %305, 1, !dbg !1839
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1583, metadata !650), !dbg !1840
  br label %362, !dbg !1841

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #12, !dbg !1842
  store i64 0, i64* %10, align 8, !dbg !1843
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1580, metadata !650), !dbg !1834
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1583, metadata !650), !dbg !1840
  %308 = icmp eq i64 %155, -1, !dbg !1844
  br i1 %308, label %309, label %311, !dbg !1846

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1847
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1555, metadata !650), !dbg !1619
  br label %311, !dbg !1848

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1555, metadata !650), !dbg !1619
  br label %313, !dbg !1849, !llvm.loop !1850

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1583, metadata !650), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1580, metadata !650), !dbg !1834
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #12, !dbg !1852
  %316 = add i64 %314, %123, !dbg !1853
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1854
  %318 = sub i64 %312, %316, !dbg !1855
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1584, metadata !650), !dbg !1856
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1602, metadata !650), !dbg !1857
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #12, !dbg !1858
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1605, metadata !650), !dbg !1859
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1860

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1583, metadata !650), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1580, metadata !650), !dbg !1834
  %321 = icmp ugt i64 %312, %316, !dbg !1861
  br i1 %321, label %322, label %347, !dbg !1863

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1864

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1580, metadata !650), !dbg !1834
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1864
  %327 = load i8, i8* %326, align 1, !dbg !1864, !tbaa !795
  %328 = icmp eq i8 %327, 0, !dbg !1863
  br i1 %328, label %347, label %329, !dbg !1865

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1866
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1580, metadata !650), !dbg !1834
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1580, metadata !650), !dbg !1834
  %331 = add i64 %330, %123, !dbg !1867
  %332 = icmp ult i64 %331, %312, !dbg !1861
  br i1 %332, label %323, label %347, !dbg !1863, !llvm.loop !1868

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1869
  %335 = and i1 %115, %334, !dbg !1872
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1606, metadata !650), !dbg !1873
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1606, metadata !650), !dbg !1873
  br i1 %335, label %336, label %350, !dbg !1872

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1874

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1606, metadata !650), !dbg !1873
  %339 = add i64 %338, %316, !dbg !1874
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1875
  %341 = load i8, i8* %340, align 1, !dbg !1875, !tbaa !795
  %342 = sext i8 %341 to i32, !dbg !1875
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1876

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1877
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1606, metadata !650), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1606, metadata !650), !dbg !1873
  %345 = icmp ult i64 %344, %319, !dbg !1869
  br i1 %345, label %337, label %350, !dbg !1878, !llvm.loop !1879

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1881

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1583, metadata !650), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1580, metadata !650), !dbg !1834
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !1881
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1882, !tbaa !768
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1602, metadata !650), !dbg !1857
  %352 = call i32 @iswprint(i32 %351) #12, !dbg !1884
  %353 = icmp eq i32 %352, 0, !dbg !1884
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1583, metadata !650), !dbg !1840
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1885
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1583, metadata !650), !dbg !1840
  %355 = add i64 %319, %314, !dbg !1886
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1580, metadata !650), !dbg !1834
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1583, metadata !650), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1580, metadata !650), !dbg !1834
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !1881
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1584, metadata !650), !dbg !1856
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1887
  %357 = icmp eq i32 %356, 0, !dbg !1888
  br i1 %357, label %313, label %358, !dbg !1889, !llvm.loop !1850

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #12, !dbg !1890
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1583, metadata !650), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1580, metadata !650), !dbg !1834
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !1881
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #12, !dbg !1890
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1583, metadata !650), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1580, metadata !650), !dbg !1834
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1555, metadata !650), !dbg !1619
  %366 = and i8 %365, 1, !dbg !1891
  %367 = icmp ne i8 %366, 0, !dbg !1891
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1579, metadata !650), !dbg !1692
  %368 = icmp ult i64 %364, 2, !dbg !1892
  %369 = or i1 %367, %112, !dbg !1893
  %370 = and i1 %368, %369, !dbg !1894
  br i1 %370, label %470, label %371, !dbg !1894

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1895
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1613, metadata !650), !dbg !1896
  br label %373, !dbg !1897

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1578, metadata !650), !dbg !1691
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1577, metadata !650), !dbg !1690
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1572, metadata !650), !dbg !1706
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1569, metadata !650), !dbg !1633
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1562, metadata !650), !dbg !1625
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1561, metadata !650), !dbg !1682
  br i1 %369, label %426, label %380, !dbg !1898

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1903

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1578, metadata !650), !dbg !1691
  %382 = and i8 %376, 1, !dbg !1906
  %383 = icmp eq i8 %382, 0, !dbg !1906
  %384 = and i1 %113, %383, !dbg !1906
  br i1 %384, label %385, label %401, !dbg !1906

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1908
  br i1 %386, label %387, label %389, !dbg !1912

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1908
  store i8 39, i8* %388, align 1, !dbg !1908, !tbaa !795
  br label %389, !dbg !1908

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1912
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1562, metadata !650), !dbg !1625
  %391 = icmp ult i64 %390, %130, !dbg !1913
  br i1 %391, label %392, label %394, !dbg !1916

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1913
  store i8 36, i8* %393, align 1, !dbg !1913, !tbaa !795
  br label %394, !dbg !1913

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1916
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1562, metadata !650), !dbg !1625
  %396 = icmp ult i64 %395, %130, !dbg !1917
  br i1 %396, label %397, label %399, !dbg !1920

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1917
  store i8 39, i8* %398, align 1, !dbg !1917, !tbaa !795
  br label %399, !dbg !1917

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1920
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1562, metadata !650), !dbg !1625
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1569, metadata !650), !dbg !1633
  br label %401, !dbg !1921

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1569, metadata !650), !dbg !1633
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1562, metadata !650), !dbg !1625
  %404 = icmp ult i64 %402, %130, !dbg !1922
  br i1 %404, label %405, label %407, !dbg !1925

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1922
  store i8 92, i8* %406, align 1, !dbg !1922, !tbaa !795
  br label %407, !dbg !1922

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1925
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1562, metadata !650), !dbg !1625
  %409 = icmp ult i64 %408, %130, !dbg !1926
  br i1 %409, label %410, label %414, !dbg !1929

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1926
  %412 = or i8 %411, 48, !dbg !1926
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1926
  store i8 %412, i8* %413, align 1, !dbg !1926, !tbaa !795
  br label %414, !dbg !1926

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1929
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1562, metadata !650), !dbg !1625
  %416 = icmp ult i64 %415, %130, !dbg !1930
  br i1 %416, label %417, label %422, !dbg !1933

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1930
  %419 = and i8 %418, 7, !dbg !1930
  %420 = or i8 %419, 48, !dbg !1930
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1930
  store i8 %420, i8* %421, align 1, !dbg !1930, !tbaa !795
  br label %422, !dbg !1930

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1933
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1562, metadata !650), !dbg !1625
  %424 = and i8 %377, 7, !dbg !1934
  %425 = or i8 %424, 48, !dbg !1935
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1572, metadata !650), !dbg !1706
  br label %435, !dbg !1936

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1937
  %428 = icmp eq i8 %427, 0, !dbg !1937
  br i1 %428, label %435, label %429, !dbg !1939

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1940
  br i1 %430, label %431, label %433, !dbg !1944

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1940
  store i8 92, i8* %432, align 1, !dbg !1940, !tbaa !795
  br label %433, !dbg !1940

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1944
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1562, metadata !650), !dbg !1625
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1577, metadata !650), !dbg !1690
  br label %435, !dbg !1945

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1578, metadata !650), !dbg !1691
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1577, metadata !650), !dbg !1690
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1572, metadata !650), !dbg !1706
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1569, metadata !650), !dbg !1633
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1562, metadata !650), !dbg !1625
  %441 = add i64 %374, 1, !dbg !1946
  %442 = icmp ugt i64 %372, %441, !dbg !1948
  br i1 %442, label %443, label %535, !dbg !1949

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1950
  %445 = icmp ne i8 %444, 0, !dbg !1950
  %446 = and i8 %440, 1, !dbg !1950
  %447 = icmp eq i8 %446, 0, !dbg !1950
  %448 = and i1 %445, %447, !dbg !1950
  br i1 %448, label %449, label %460, !dbg !1950

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1953
  br i1 %450, label %451, label %453, !dbg !1957

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1953
  store i8 39, i8* %452, align 1, !dbg !1953, !tbaa !795
  br label %453, !dbg !1953

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1957
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1562, metadata !650), !dbg !1625
  %455 = icmp ult i64 %454, %130, !dbg !1958
  br i1 %455, label %456, label %458, !dbg !1961

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1958
  store i8 39, i8* %457, align 1, !dbg !1958, !tbaa !795
  br label %458, !dbg !1958

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1961
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1562, metadata !650), !dbg !1625
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1569, metadata !650), !dbg !1633
  br label %460, !dbg !1962

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1569, metadata !650), !dbg !1633
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1562, metadata !650), !dbg !1625
  %463 = icmp ult i64 %461, %130, !dbg !1963
  br i1 %463, label %464, label %466, !dbg !1966

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1963
  store i8 %438, i8* %465, align 1, !dbg !1963, !tbaa !795
  br label %466, !dbg !1963

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1966
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1562, metadata !650), !dbg !1625
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1561, metadata !650), !dbg !1682
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1967
  %469 = load i8, i8* %468, align 1, !dbg !1967, !tbaa !795
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1572, metadata !650), !dbg !1706
  br label %373, !dbg !1968, !llvm.loop !1969

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1553, metadata !650), !dbg !1617
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1579, metadata !650), !dbg !1692
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1578, metadata !650), !dbg !1691
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1577, metadata !650), !dbg !1690
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1572, metadata !650), !dbg !1706
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1570, metadata !650), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1569, metadata !650), !dbg !1633
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1555, metadata !650), !dbg !1619
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1563, metadata !650), !dbg !1626
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1562, metadata !650), !dbg !1625
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1561, metadata !650), !dbg !1682
  br i1 %106, label %482, label %481, !dbg !1972

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1974

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1975

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1976
  %485 = zext i8 %484 to i64, !dbg !1976
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1977
  %487 = load i32, i32* %486, align 4, !dbg !1977, !tbaa !768
  %488 = and i8 %477, 31, !dbg !1978
  %489 = zext i8 %488 to i32, !dbg !1979
  %490 = shl i32 1, %489, !dbg !1980
  %491 = and i32 %487, %490, !dbg !1980
  %492 = icmp eq i32 %491, 0, !dbg !1980
  %493 = icmp eq i8 %156, 0, !dbg !1981
  %494 = and i1 %493, %492, !dbg !1982
  br i1 %494, label %535, label %497, !dbg !1982

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1981
  br i1 %496, label %535, label %497, !dbg !1983

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1553, metadata !650), !dbg !1617
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1579, metadata !650), !dbg !1692
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1572, metadata !650), !dbg !1706
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1570, metadata !650), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1569, metadata !650), !dbg !1633
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1555, metadata !650), !dbg !1619
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1563, metadata !650), !dbg !1626
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1562, metadata !650), !dbg !1625
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1561, metadata !650), !dbg !1682
  br i1 %111, label %507, label %635, !dbg !1984

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1578, metadata !650), !dbg !1691
  %508 = and i8 %502, 1, !dbg !1986
  %509 = icmp eq i8 %508, 0, !dbg !1986
  %510 = and i1 %113, %509, !dbg !1986
  br i1 %510, label %511, label %527, !dbg !1986

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1988
  br i1 %512, label %513, label %515, !dbg !1992

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1988
  store i8 39, i8* %514, align 1, !dbg !1988, !tbaa !795
  br label %515, !dbg !1988

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1992
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1562, metadata !650), !dbg !1625
  %517 = icmp ult i64 %516, %506, !dbg !1993
  br i1 %517, label %518, label %520, !dbg !1996

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1993
  store i8 36, i8* %519, align 1, !dbg !1993, !tbaa !795
  br label %520, !dbg !1993

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1996
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1562, metadata !650), !dbg !1625
  %522 = icmp ult i64 %521, %506, !dbg !1997
  br i1 %522, label %523, label %525, !dbg !2000

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1997
  store i8 39, i8* %524, align 1, !dbg !1997, !tbaa !795
  br label %525, !dbg !1997

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !2000
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1562, metadata !650), !dbg !1625
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1569, metadata !650), !dbg !1633
  br label %527, !dbg !2001

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1569, metadata !650), !dbg !1633
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1562, metadata !650), !dbg !1625
  %530 = icmp ult i64 %528, %506, !dbg !2002
  br i1 %530, label %531, label %533, !dbg !2005

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2002
  store i8 92, i8* %532, align 1, !dbg !2002, !tbaa !795
  br label %533, !dbg !2002

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !2005
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1562, metadata !650), !dbg !1625
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1553, metadata !650), !dbg !1617
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1579, metadata !650), !dbg !1692
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1578, metadata !650), !dbg !1691
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1572, metadata !650), !dbg !1706
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1570, metadata !650), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1569, metadata !650), !dbg !1633
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1555, metadata !650), !dbg !1619
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1563, metadata !650), !dbg !1626
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1562, metadata !650), !dbg !1625
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1561, metadata !650), !dbg !1682
  br label %562, !dbg !2006

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1553, metadata !650), !dbg !1617
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1579, metadata !650), !dbg !1692
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1578, metadata !650), !dbg !1691
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1572, metadata !650), !dbg !1706
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1570, metadata !650), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1569, metadata !650), !dbg !1633
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1555, metadata !650), !dbg !1619
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1563, metadata !650), !dbg !1626
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1562, metadata !650), !dbg !1625
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1561, metadata !650), !dbg !1682
  %546 = and i8 %540, 1, !dbg !2006
  %547 = icmp ne i8 %546, 0, !dbg !2006
  %548 = and i8 %543, 1, !dbg !2006
  %549 = icmp eq i8 %548, 0, !dbg !2006
  %550 = and i1 %547, %549, !dbg !2006
  br i1 %550, label %551, label %562, !dbg !2006

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !2009
  br i1 %552, label %553, label %555, !dbg !2013

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !2009
  store i8 39, i8* %554, align 1, !dbg !2009, !tbaa !795
  br label %555, !dbg !2009

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !2013
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1562, metadata !650), !dbg !1625
  %557 = icmp ult i64 %556, %545, !dbg !2014
  br i1 %557, label %558, label %560, !dbg !2017

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !2014
  store i8 39, i8* %559, align 1, !dbg !2014, !tbaa !795
  br label %560, !dbg !2014

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !2017
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1562, metadata !650), !dbg !1625
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1569, metadata !650), !dbg !1633
  br label %562, !dbg !2018

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1569, metadata !650), !dbg !1633
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1562, metadata !650), !dbg !1625
  %572 = icmp ult i64 %570, %563, !dbg !2019
  br i1 %572, label %573, label %575, !dbg !2022

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !2019
  store i8 %565, i8* %574, align 1, !dbg !2019, !tbaa !795
  br label %575, !dbg !2019

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !2022
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1562, metadata !650), !dbg !1625
  %577 = and i8 %564, 1, !dbg !2023
  %578 = icmp eq i8 %577, 0, !dbg !2023
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1571, metadata !650), !dbg !1635
  %579 = select i1 %578, i8 0, i8 %129, !dbg !2025
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1571, metadata !650), !dbg !1635
  br label %580, !dbg !2026

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1553, metadata !650), !dbg !1617
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1571, metadata !650), !dbg !1635
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1570, metadata !650), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1569, metadata !650), !dbg !1633
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1555, metadata !650), !dbg !1619
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1563, metadata !650), !dbg !1626
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1562, metadata !650), !dbg !1625
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1561, metadata !650), !dbg !1682
  %589 = add i64 %581, 1, !dbg !2027
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1561, metadata !650), !dbg !1682
  br label %122, !dbg !2028, !llvm.loop !2029

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !2031
  %593 = and i1 %113, %592, !dbg !2033
  %594 = xor i1 %593, true, !dbg !2033
  %595 = or i1 %111, %594, !dbg !2033
  br i1 %595, label %596, label %635, !dbg !2033

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !2034
  %598 = xor i1 %597, true, !dbg !2034
  %599 = and i8 %128, 1, !dbg !2036
  %600 = icmp eq i8 %599, 0, !dbg !2036
  %601 = or i1 %600, %598, !dbg !2034
  br i1 %601, label %611, label %602, !dbg !2034

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !2037
  %604 = icmp eq i8 %603, 0, !dbg !2037
  br i1 %604, label %607, label %605, !dbg !2040

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !2041
  br label %645, !dbg !2042

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !2043
  %609 = icmp ne i64 %125, 0, !dbg !2045
  %610 = and i1 %609, %608, !dbg !2046
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1553, metadata !650), !dbg !1617
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1562, metadata !650), !dbg !1625
  br i1 %610, label %27, label %611, !dbg !2046

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !2047
  %613 = and i1 %612, %111, !dbg !2049
  br i1 %613, label %614, label %630, !dbg !2049

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1564, metadata !650), !dbg !1627
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1562, metadata !650), !dbg !1625
  %615 = load i8, i8* %99, align 1, !dbg !2050, !tbaa !795
  %616 = icmp eq i8 %615, 0, !dbg !2053
  br i1 %616, label %630, label %617, !dbg !2053

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !2054

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1562, metadata !650), !dbg !1625
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1564, metadata !650), !dbg !1627
  %622 = icmp ult i64 %621, %130, !dbg !2054
  br i1 %622, label %623, label %625, !dbg !2057

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2054
  store i8 %619, i8* %624, align 1, !dbg !2054, !tbaa !795
  br label %625, !dbg !2054

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !2057
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1562, metadata !650), !dbg !1625
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !2058
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1564, metadata !650), !dbg !1627
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1564, metadata !650), !dbg !1627
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1562, metadata !650), !dbg !1625
  %628 = load i8, i8* %627, align 1, !dbg !2050, !tbaa !795
  %629 = icmp eq i8 %628, 0, !dbg !2053
  br i1 %629, label %630, label %618, !dbg !2053, !llvm.loop !2059

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1562, metadata !650), !dbg !1625
  %632 = icmp ult i64 %631, %130, !dbg !2061
  br i1 %632, label %633, label %645, !dbg !2063

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !2064
  store i8 0, i8* %634, align 1, !dbg !2065, !tbaa !795
  br label %645, !dbg !2064

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1553, metadata !650), !dbg !1617
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1555, metadata !650), !dbg !1619
  %639 = icmp ne i32 %636, 2, !dbg !2066
  %640 = icmp eq i8 %103, 0, !dbg !2068
  %641 = or i1 %639, %640, !dbg !2069
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1556, metadata !650), !dbg !1620
  %642 = select i1 %641, i32 %636, i32 4, !dbg !2069
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1556, metadata !650), !dbg !1620
  %643 = and i32 %5, -3, !dbg !2070
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !2071
  br label %645, !dbg !2072

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !2073
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2074 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2078, metadata !650), !dbg !2082
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2079, metadata !650), !dbg !2083
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !2084
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2080, metadata !650), !dbg !2085
  %4 = icmp eq i8* %3, %0, !dbg !2086
  br i1 %4, label %5, label %75, !dbg !2088

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !2089
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2081, metadata !650), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2091, metadata !650), !dbg !2107
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2105, metadata !650), !dbg !2110
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2106, metadata !650), !dbg !2111
  %7 = load i8, i8* %6, align 1, !dbg !2112, !tbaa !795
  %8 = sext i8 %7 to i32, !dbg !2112
  %9 = and i32 %8, -33, !dbg !2112
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2112

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2114, metadata !650), !dbg !2128
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2126, metadata !650), !dbg !2132
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2127, metadata !650), !dbg !2133
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2134
  %12 = load i8, i8* %11, align 1, !dbg !2134, !tbaa !795
  %13 = sext i8 %12 to i32, !dbg !2134
  %14 = and i32 %13, -33, !dbg !2134
  %15 = icmp eq i32 %14, 84, !dbg !2134
  br i1 %15, label %16, label %72, !dbg !2134

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2136, metadata !650), !dbg !2149
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2147, metadata !650), !dbg !2153
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2148, metadata !650), !dbg !2154
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2155
  %18 = load i8, i8* %17, align 1, !dbg !2155, !tbaa !795
  %19 = sext i8 %18 to i32, !dbg !2155
  %20 = and i32 %19, -33, !dbg !2155
  %21 = icmp eq i32 %20, 70, !dbg !2155
  br i1 %21, label %22, label %72, !dbg !2155

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2157, metadata !650), !dbg !2169
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2167, metadata !650), !dbg !2173
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2168, metadata !650), !dbg !2174
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2175
  %24 = load i8, i8* %23, align 1, !dbg !2175, !tbaa !795
  %25 = icmp eq i8 %24, 45, !dbg !2175
  br i1 %25, label %26, label %72, !dbg !2177

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2178, metadata !650), !dbg !2189
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2187, metadata !650), !dbg !2193
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2188, metadata !650), !dbg !2194
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2195
  %28 = load i8, i8* %27, align 1, !dbg !2195, !tbaa !795
  %29 = icmp eq i8 %28, 56, !dbg !2195
  br i1 %29, label %30, label %72, !dbg !2197

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2198, metadata !650), !dbg !2208
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2206, metadata !650), !dbg !2212
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2207, metadata !650), !dbg !2213
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2214
  %32 = load i8, i8* %31, align 1, !dbg !2214, !tbaa !795
  %33 = icmp eq i8 %32, 0, !dbg !2214
  br i1 %33, label %34, label %72, !dbg !2216

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2217, !tbaa !795
  %36 = icmp eq i8 %35, 96, !dbg !2218
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.78, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.79, i64 0, i64 0), !dbg !2217
  br label %75, !dbg !2219

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2114, metadata !650), !dbg !2220
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2126, metadata !650), !dbg !2224
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2127, metadata !650), !dbg !2225
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2226
  %40 = load i8, i8* %39, align 1, !dbg !2226, !tbaa !795
  %41 = sext i8 %40 to i32, !dbg !2226
  %42 = and i32 %41, -33, !dbg !2226
  %43 = icmp eq i32 %42, 66, !dbg !2226
  br i1 %43, label %44, label %72, !dbg !2226

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2136, metadata !650), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2147, metadata !650), !dbg !2229
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2148, metadata !650), !dbg !2230
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2231
  %46 = load i8, i8* %45, align 1, !dbg !2231, !tbaa !795
  %47 = icmp eq i8 %46, 49, !dbg !2231
  br i1 %47, label %48, label %72, !dbg !2232

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2157, metadata !650), !dbg !2233
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2167, metadata !650), !dbg !2235
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2168, metadata !650), !dbg !2236
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2237
  %50 = load i8, i8* %49, align 1, !dbg !2237, !tbaa !795
  %51 = icmp eq i8 %50, 56, !dbg !2237
  br i1 %51, label %52, label %72, !dbg !2238

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2178, metadata !650), !dbg !2239
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2187, metadata !650), !dbg !2241
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2188, metadata !650), !dbg !2242
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2243
  %54 = load i8, i8* %53, align 1, !dbg !2243, !tbaa !795
  %55 = icmp eq i8 %54, 48, !dbg !2243
  br i1 %55, label %56, label %72, !dbg !2244

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2198, metadata !650), !dbg !2245
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2206, metadata !650), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2207, metadata !650), !dbg !2248
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2249
  %58 = load i8, i8* %57, align 1, !dbg !2249, !tbaa !795
  %59 = icmp eq i8 %58, 51, !dbg !2249
  br i1 %59, label %60, label %72, !dbg !2250

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2251, metadata !650), !dbg !2260
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2258, metadata !650), !dbg !2264
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2259, metadata !650), !dbg !2265
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2266
  %62 = load i8, i8* %61, align 1, !dbg !2266, !tbaa !795
  %63 = icmp eq i8 %62, 48, !dbg !2266
  br i1 %63, label %64, label %72, !dbg !2268

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2269, metadata !650), !dbg !2277
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2275, metadata !650), !dbg !2281
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2276, metadata !650), !dbg !2282
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2283
  %66 = load i8, i8* %65, align 1, !dbg !2283, !tbaa !795
  %67 = icmp eq i8 %66, 0, !dbg !2283
  br i1 %67, label %68, label %72, !dbg !2285

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2286, !tbaa !795
  %70 = icmp eq i8 %69, 96, !dbg !2287
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.80, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.81, i64 0, i64 0), !dbg !2286
  br label %75, !dbg !2288

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2289
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.77, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.76, i64 0, i64 0), !dbg !2290
  br label %75, !dbg !2291

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2292
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2293 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2297, metadata !650), !dbg !2300
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2298, metadata !650), !dbg !2301
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2299, metadata !650), !dbg !2302
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2303, metadata !650) #12, !dbg !2316
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2308, metadata !650) #12, !dbg !2318
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2309, metadata !650) #12, !dbg !2319
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2310, metadata !650) #12, !dbg !2320
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2321
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2321
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2311, metadata !650) #12, !dbg !2322
  %6 = tail call i32* @__errno_location() #17, !dbg !2323
  %7 = load i32, i32* %6, align 4, !dbg !2323, !tbaa !768
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2312, metadata !650) #12, !dbg !2324
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2325
  %9 = load i32, i32* %8, align 4, !dbg !2325, !tbaa !1485
  %10 = or i32 %9, 1, !dbg !2326
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2313, metadata !650) #12, !dbg !2327
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2328
  %12 = load i32, i32* %11, align 8, !dbg !2328, !tbaa !1425
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2329
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2330
  %15 = load i8*, i8** %14, align 8, !dbg !2330, !tbaa !1511
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2331
  %17 = load i8*, i8** %16, align 8, !dbg !2331, !tbaa !1514
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #12, !dbg !2332
  %19 = add i64 %18, 1, !dbg !2333
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2314, metadata !650) #12, !dbg !2334
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2335, metadata !650) #12, !dbg !2340
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !2342
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2315, metadata !650) #12, !dbg !2343
  %21 = load i32, i32* %11, align 8, !dbg !2344, !tbaa !1425
  %22 = load i8*, i8** %14, align 8, !dbg !2345, !tbaa !1511
  %23 = load i8*, i8** %16, align 8, !dbg !2346, !tbaa !1514
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #12, !dbg !2347
  store i32 %7, i32* %6, align 4, !dbg !2348, !tbaa !768
  ret i8* %20, !dbg !2349
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2304 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2303, metadata !650), !dbg !2350
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2308, metadata !650), !dbg !2351
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2309, metadata !650), !dbg !2352
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2310, metadata !650), !dbg !2353
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2354
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2354
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2311, metadata !650), !dbg !2355
  %7 = tail call i32* @__errno_location() #17, !dbg !2356
  %8 = load i32, i32* %7, align 4, !dbg !2356, !tbaa !768
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2312, metadata !650), !dbg !2357
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2358
  %10 = load i32, i32* %9, align 4, !dbg !2358, !tbaa !1485
  %11 = icmp ne i64* %2, null, !dbg !2359
  %12 = xor i1 %11, true, !dbg !2359
  %13 = zext i1 %12 to i32, !dbg !2359
  %14 = or i32 %10, %13, !dbg !2360
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2313, metadata !650), !dbg !2361
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2362
  %16 = load i32, i32* %15, align 8, !dbg !2362, !tbaa !1425
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2363
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2364
  %19 = load i8*, i8** %18, align 8, !dbg !2364, !tbaa !1511
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2365
  %21 = load i8*, i8** %20, align 8, !dbg !2365, !tbaa !1514
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2366
  %23 = add i64 %22, 1, !dbg !2367
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2314, metadata !650), !dbg !2368
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2335, metadata !650) #12, !dbg !2369
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !2371
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2315, metadata !650), !dbg !2372
  %25 = load i32, i32* %15, align 8, !dbg !2373, !tbaa !1425
  %26 = load i8*, i8** %18, align 8, !dbg !2374, !tbaa !1511
  %27 = load i8*, i8** %20, align 8, !dbg !2375, !tbaa !1514
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2376
  store i32 %8, i32* %7, align 4, !dbg !2377, !tbaa !768
  br i1 %11, label %29, label %30, !dbg !2378

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2379, !tbaa !848
  br label %30, !dbg !2381

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2382
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2383 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2387, !tbaa !657
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2385, metadata !650), !dbg !2388
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2386, metadata !650), !dbg !2389
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2386, metadata !650), !dbg !2389
  %2 = load i32, i32* @nslots, align 4, !dbg !2390, !tbaa !768
  %3 = icmp sgt i32 %2, 1, !dbg !2393
  br i1 %3, label %4, label %13, !dbg !2394

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2395

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2386, metadata !650), !dbg !2389
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2395
  %8 = load i8*, i8** %7, align 8, !dbg !2395, !tbaa !2396
  tail call void @free(i8* %8) #12, !dbg !2398
  %9 = add nuw i64 %6, 1, !dbg !2399
  %10 = load i32, i32* @nslots, align 4, !dbg !2390, !tbaa !768
  %11 = sext i32 %10 to i64, !dbg !2393
  %12 = icmp slt i64 %9, %11, !dbg !2393
  br i1 %12, label %5, label %13, !dbg !2394, !llvm.loop !2400

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2402
  %15 = load i8*, i8** %14, align 8, !dbg !2402, !tbaa !2396
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2404
  br i1 %16, label %18, label %17, !dbg !2405

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #12, !dbg !2406
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2408, !tbaa !2409
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2410, !tbaa !2396
  br label %18, !dbg !2411

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2412
  br i1 %19, label %22, label %20, !dbg !2414

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2415
  tail call void @free(i8* %21) #12, !dbg !2417
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2418, !tbaa !657
  br label %22, !dbg !2419

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2420, !tbaa !768
  ret void, !dbg !2421
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2422 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2426, metadata !650), !dbg !2428
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2427, metadata !650), !dbg !2429
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2430
  ret i8* %3, !dbg !2431
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2432 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2436, metadata !650), !dbg !2450
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2437, metadata !650), !dbg !2451
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2438, metadata !650), !dbg !2452
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2439, metadata !650), !dbg !2453
  %5 = tail call i32* @__errno_location() #17, !dbg !2454
  %6 = load i32, i32* %5, align 4, !dbg !2454, !tbaa !768
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2440, metadata !650), !dbg !2455
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2456, !tbaa !657
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2441, metadata !650), !dbg !2457
  %8 = icmp slt i32 %0, 0, !dbg !2458
  br i1 %8, label %9, label %10, !dbg !2460

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2461
  unreachable, !dbg !2461

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2462, !tbaa !768
  %12 = icmp sgt i32 %11, %0, !dbg !2463
  br i1 %12, label %34, label %13, !dbg !2464

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2465
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2466
  br i1 %15, label %16, label %17, !dbg !2468

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2469
  unreachable, !dbg !2469

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2470
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2470
  %20 = add nsw i32 %0, 1, !dbg !2471
  %21 = sext i32 %20 to i64, !dbg !2472
  %22 = shl nsw i64 %21, 4, !dbg !2473
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !2474
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2474
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2441, metadata !650), !dbg !2457
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2475, !tbaa !657
  br i1 %14, label %25, label %26, !dbg !2476

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2477, !tbaa.struct !2479
  br label %26, !dbg !2480

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2481, !tbaa !768
  %28 = sext i32 %27 to i64, !dbg !2482
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2482
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2483
  %31 = sub nsw i32 %20, %27, !dbg !2484
  %32 = sext i32 %31 to i64, !dbg !2485
  %33 = shl nsw i64 %32, 4, !dbg !2486
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2483
  store i32 %20, i32* @nslots, align 4, !dbg !2487, !tbaa !768
  br label %34, !dbg !2488

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2441, metadata !650), !dbg !2457
  %36 = sext i32 %0 to i64, !dbg !2489
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2490
  %38 = load i64, i64* %37, align 8, !dbg !2490, !tbaa !2409
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2445, metadata !650), !dbg !2491
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2492
  %40 = load i8*, i8** %39, align 8, !dbg !2492, !tbaa !2396
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2447, metadata !650), !dbg !2493
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2494
  %42 = load i32, i32* %41, align 4, !dbg !2494, !tbaa !1485
  %43 = or i32 %42, 1, !dbg !2495
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2448, metadata !650), !dbg !2496
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2497
  %45 = load i32, i32* %44, align 8, !dbg !2497, !tbaa !1425
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2498
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2499
  %48 = load i8*, i8** %47, align 8, !dbg !2499, !tbaa !1511
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2500
  %50 = load i8*, i8** %49, align 8, !dbg !2500, !tbaa !1514
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2501
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2449, metadata !650), !dbg !2502
  %52 = icmp ugt i64 %38, %51, !dbg !2503
  br i1 %52, label %63, label %53, !dbg !2505

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2506
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2445, metadata !650), !dbg !2491
  store i64 %54, i64* %37, align 8, !dbg !2508, !tbaa !2409
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2509
  br i1 %55, label %57, label %56, !dbg !2511

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !2512
  br label %57, !dbg !2512

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2335, metadata !650) #12, !dbg !2513
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !2515
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2447, metadata !650), !dbg !2493
  store i8* %58, i8** %39, align 8, !dbg !2516, !tbaa !2396
  %59 = load i32, i32* %44, align 8, !dbg !2517, !tbaa !1425
  %60 = load i8*, i8** %47, align 8, !dbg !2518, !tbaa !1511
  %61 = load i8*, i8** %49, align 8, !dbg !2519, !tbaa !1514
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2520
  br label %63, !dbg !2521

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2447, metadata !650), !dbg !2493
  store i32 %6, i32* %5, align 4, !dbg !2522, !tbaa !768
  ret i8* %64, !dbg !2523
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2524 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2528, metadata !650), !dbg !2531
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2529, metadata !650), !dbg !2532
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2530, metadata !650), !dbg !2533
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2534
  ret i8* %4, !dbg !2535
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2536 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2538, metadata !650), !dbg !2539
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2426, metadata !650) #12, !dbg !2540
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2427, metadata !650) #12, !dbg !2542
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2543
  ret i8* %2, !dbg !2544
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2545 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2549, metadata !650), !dbg !2551
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2550, metadata !650), !dbg !2552
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2528, metadata !650) #12, !dbg !2553
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2529, metadata !650) #12, !dbg !2555
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2530, metadata !650) #12, !dbg !2556
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2557
  ret i8* %3, !dbg !2558
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2559 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2567, metadata !2573), !dbg !2574
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2563, metadata !650), !dbg !2576
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2564, metadata !650), !dbg !2577
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2565, metadata !650), !dbg !2578
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2579
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2579
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2566, metadata !650), !dbg !2580
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2572, metadata !650) #12, !dbg !2581
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2582
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2582
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2567, metadata !650) #12, !dbg !2574
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2567, metadata !2583) #12, !dbg !2574
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2574
  %8 = icmp eq i32 %1, 10, !dbg !2584
  br i1 %8, label %9, label %10, !dbg !2586

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2587, !noalias !2588
  unreachable, !dbg !2587

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2567, metadata !2583) #12, !dbg !2574
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2591
  store i32 %1, i32* %11, align 8, !dbg !2591, !alias.scope !2588
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2591
  %13 = bitcast i32* %12 to i8*, !dbg !2591
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #12, !dbg !2591
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2592
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2566, metadata !650), !dbg !2580
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2593
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2594
  ret i8* %14, !dbg !2595
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2596 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2567, metadata !2573), !dbg !2605
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2600, metadata !650), !dbg !2607
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2601, metadata !650), !dbg !2608
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2602, metadata !650), !dbg !2609
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2603, metadata !650), !dbg !2610
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2611
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2611
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2604, metadata !650), !dbg !2612
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2572, metadata !650) #12, !dbg !2613
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2614
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2614
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2567, metadata !650) #12, !dbg !2605
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2567, metadata !2583) #12, !dbg !2605
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2605
  %9 = icmp eq i32 %1, 10, !dbg !2615
  br i1 %9, label %10, label %11, !dbg !2616

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2617, !noalias !2618
  unreachable, !dbg !2617

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2567, metadata !2583) #12, !dbg !2605
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2621
  store i32 %1, i32* %12, align 8, !dbg !2621, !alias.scope !2618
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2621
  %14 = bitcast i32* %13 to i8*, !dbg !2621
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #12, !dbg !2621
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2622
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2604, metadata !650), !dbg !2612
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2623
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2624
  ret i8* %15, !dbg !2625
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2626 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2567, metadata !2573), !dbg !2632
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2630, metadata !650), !dbg !2635
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2631, metadata !650), !dbg !2636
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2563, metadata !650) #12, !dbg !2637
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2564, metadata !650) #12, !dbg !2638
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2565, metadata !650) #12, !dbg !2639
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2640
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2640
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2566, metadata !650) #12, !dbg !2641
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2572, metadata !650) #12, !dbg !2642
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2643
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2643
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2567, metadata !650) #12, !dbg !2632
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2567, metadata !2583) #12, !dbg !2632
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2632
  %7 = icmp eq i32 %0, 10, !dbg !2644
  br i1 %7, label %8, label %9, !dbg !2645

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2646, !noalias !2647
  unreachable, !dbg !2646

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2567, metadata !2583) #12, !dbg !2632
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2650
  store i32 %0, i32* %10, align 8, !dbg !2650, !alias.scope !2647
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2650
  %12 = bitcast i32* %11 to i8*, !dbg !2650
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #12, !dbg !2650
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2651
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2566, metadata !650) #12, !dbg !2641
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !2652
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2653
  ret i8* %13, !dbg !2654
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2655 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2567, metadata !2573), !dbg !2662
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2659, metadata !650), !dbg !2665
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2660, metadata !650), !dbg !2666
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2661, metadata !650), !dbg !2667
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2600, metadata !650) #12, !dbg !2668
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2601, metadata !650) #12, !dbg !2669
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2602, metadata !650) #12, !dbg !2670
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2603, metadata !650) #12, !dbg !2671
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2672
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2672
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2604, metadata !650) #12, !dbg !2673
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2572, metadata !650) #12, !dbg !2674
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2675
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2675
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2567, metadata !650) #12, !dbg !2662
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2567, metadata !2583) #12, !dbg !2662
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2662
  %8 = icmp eq i32 %0, 10, !dbg !2676
  br i1 %8, label %9, label %10, !dbg !2677

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2678, !noalias !2679
  unreachable, !dbg !2678

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2567, metadata !2583) #12, !dbg !2662
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2682
  store i32 %0, i32* %11, align 8, !dbg !2682, !alias.scope !2679
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2682
  %13 = bitcast i32* %12 to i8*, !dbg !2682
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #12, !dbg !2682
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2683
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2604, metadata !650) #12, !dbg !2673
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #12, !dbg !2684
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2685
  ret i8* %14, !dbg !2686
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2687 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2691, metadata !650), !dbg !2695
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2692, metadata !650), !dbg !2696
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2693, metadata !650), !dbg !2697
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2698
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2698
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2699, !tbaa.struct !2700
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2694, metadata !650), !dbg !2701
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1444, metadata !650), !dbg !2702
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1445, metadata !650), !dbg !2704
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1446, metadata !650), !dbg !2705
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1447, metadata !650), !dbg !2706
  %6 = lshr i8 %2, 5, !dbg !2707
  %7 = zext i8 %6 to i64, !dbg !2707
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2708
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1448, metadata !650), !dbg !2709
  %9 = and i8 %2, 31, !dbg !2710
  %10 = zext i8 %9 to i32, !dbg !2711
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1450, metadata !650), !dbg !2712
  %11 = load i32, i32* %8, align 4, !dbg !2713, !tbaa !768
  %12 = lshr i32 %11, %10, !dbg !2714
  %13 = and i32 %12, 1, !dbg !2715
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1451, metadata !650), !dbg !2716
  %14 = xor i32 %13, 1, !dbg !2717
  %15 = shl i32 %14, %10, !dbg !2718
  %16 = xor i32 %15, %11, !dbg !2719
  store i32 %16, i32* %8, align 4, !dbg !2719, !tbaa !768
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2694, metadata !650), !dbg !2701
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2720
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2721
  ret i8* %17, !dbg !2722
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2723 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2727, metadata !650), !dbg !2729
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2728, metadata !650), !dbg !2730
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2691, metadata !650) #12, !dbg !2731
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2692, metadata !650) #12, !dbg !2733
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2693, metadata !650) #12, !dbg !2734
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2735
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2735
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !2736, !tbaa.struct !2700
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2694, metadata !650) #12, !dbg !2737
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1444, metadata !650) #12, !dbg !2738
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1445, metadata !650) #12, !dbg !2740
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1446, metadata !650) #12, !dbg !2741
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1447, metadata !650) #12, !dbg !2742
  %5 = lshr i8 %1, 5, !dbg !2743
  %6 = zext i8 %5 to i64, !dbg !2743
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2744
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1448, metadata !650) #12, !dbg !2745
  %8 = and i8 %1, 31, !dbg !2746
  %9 = zext i8 %8 to i32, !dbg !2747
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1450, metadata !650) #12, !dbg !2748
  %10 = load i32, i32* %7, align 4, !dbg !2749, !tbaa !768
  %11 = lshr i32 %10, %9, !dbg !2750
  %12 = and i32 %11, 1, !dbg !2751
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1451, metadata !650) #12, !dbg !2752
  %13 = xor i32 %12, 1, !dbg !2753
  %14 = shl i32 %13, %9, !dbg !2754
  %15 = xor i32 %14, %10, !dbg !2755
  store i32 %15, i32* %7, align 4, !dbg !2755, !tbaa !768
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2694, metadata !650) #12, !dbg !2737
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2756
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2757
  ret i8* %16, !dbg !2758
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2759 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2761, metadata !650), !dbg !2762
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2727, metadata !650) #12, !dbg !2763
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2728, metadata !650) #12, !dbg !2765
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2691, metadata !650) #12, !dbg !2766
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2692, metadata !650) #12, !dbg !2768
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2693, metadata !650) #12, !dbg !2769
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2770
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2770
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !2771, !tbaa.struct !2700
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2694, metadata !650) #12, !dbg !2772
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1444, metadata !650) #12, !dbg !2773
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1445, metadata !650) #12, !dbg !2775
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1446, metadata !650) #12, !dbg !2776
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1447, metadata !650) #12, !dbg !2777
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2778
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1448, metadata !650) #12, !dbg !2779
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1450, metadata !650) #12, !dbg !2780
  %5 = load i32, i32* %4, align 4, !dbg !2781, !tbaa !768
  %6 = or i32 %5, 67108864, !dbg !2782
  store i32 %6, i32* %4, align 4, !dbg !2782, !tbaa !768
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2694, metadata !650) #12, !dbg !2772
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !2783
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2784
  ret i8* %7, !dbg !2785
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2786 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2788, metadata !650), !dbg !2790
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2789, metadata !650), !dbg !2791
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2691, metadata !650) #12, !dbg !2792
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2692, metadata !650) #12, !dbg !2794
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2693, metadata !650) #12, !dbg !2795
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2796
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2796
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !2797, !tbaa.struct !2700
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2694, metadata !650) #12, !dbg !2798
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1444, metadata !650) #12, !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1445, metadata !650) #12, !dbg !2801
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1446, metadata !650) #12, !dbg !2802
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1447, metadata !650) #12, !dbg !2803
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2804
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1448, metadata !650) #12, !dbg !2805
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1450, metadata !650) #12, !dbg !2806
  %6 = load i32, i32* %5, align 4, !dbg !2807, !tbaa !768
  %7 = or i32 %6, 67108864, !dbg !2808
  store i32 %7, i32* %5, align 4, !dbg !2808, !tbaa !768
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2694, metadata !650) #12, !dbg !2798
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !2809
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2810
  ret i8* %8, !dbg !2811
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2812 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2567, metadata !2573), !dbg !2818
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2814, metadata !650), !dbg !2820
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2815, metadata !650), !dbg !2821
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2816, metadata !650), !dbg !2822
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2823
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2823
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2572, metadata !650) #12, !dbg !2824
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2825
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2825
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2567, metadata !650) #12, !dbg !2818
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2567, metadata !2583) #12, !dbg !2818
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2818
  %9 = icmp eq i32 %1, 10, !dbg !2826
  br i1 %9, label %10, label %11, !dbg !2827

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2828, !noalias !2829
  unreachable, !dbg !2828

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2567, metadata !2583) #12, !dbg !2818
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2832
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2832
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2833
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2834
  store i32 %1, i32* %13, align 8, !dbg !2834
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2834
  %15 = bitcast i32* %14 to i8*, !dbg !2834
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2834
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2817, metadata !650), !dbg !2835
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1444, metadata !650), !dbg !2836
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1445, metadata !650), !dbg !2838
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1446, metadata !650), !dbg !2839
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1447, metadata !650), !dbg !2840
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2841
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1448, metadata !650), !dbg !2842
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1450, metadata !650), !dbg !2843
  %17 = load i32, i32* %16, align 4, !dbg !2844, !tbaa !768
  %18 = or i32 %17, 67108864, !dbg !2845
  store i32 %18, i32* %16, align 4, !dbg !2845, !tbaa !768
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2817, metadata !650), !dbg !2835
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2846
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2847
  ret i8* %19, !dbg !2848
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2849 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2853, metadata !650), !dbg !2857
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2854, metadata !650), !dbg !2858
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2855, metadata !650), !dbg !2859
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2856, metadata !650), !dbg !2860
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2861, metadata !650) #12, !dbg !2871
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2866, metadata !650) #12, !dbg !2873
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2867, metadata !650) #12, !dbg !2874
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2868, metadata !650) #12, !dbg !2875
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2869, metadata !650) #12, !dbg !2876
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2877
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2877
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !2878, !tbaa.struct !2700
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2870, metadata !650) #12, !dbg !2879
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1493, metadata !650) #12, !dbg !2880
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1494, metadata !650) #12, !dbg !2882
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1495, metadata !650) #12, !dbg !2883
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1493, metadata !650) #12, !dbg !2880
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1493, metadata !650) #12, !dbg !2880
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2884
  store i32 10, i32* %7, align 8, !dbg !2885, !tbaa !1425
  %8 = icmp ne i8* %1, null, !dbg !2886
  %9 = icmp ne i8* %2, null, !dbg !2887
  %10 = and i1 %8, %9, !dbg !2888
  br i1 %10, label %12, label %11, !dbg !2888

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2889
  unreachable, !dbg !2889

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2890
  store i8* %1, i8** %13, align 8, !dbg !2891, !tbaa !1511
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2892
  store i8* %2, i8** %14, align 8, !dbg !2893, !tbaa !1514
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2870, metadata !650) #12, !dbg !2879
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !2894
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2895
  ret i8* %15, !dbg !2896
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2862 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2861, metadata !650), !dbg !2897
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2866, metadata !650), !dbg !2898
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2867, metadata !650), !dbg !2899
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2868, metadata !650), !dbg !2900
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2869, metadata !650), !dbg !2901
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2902
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2902
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2903, !tbaa.struct !2700
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2870, metadata !650), !dbg !2904
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1493, metadata !650) #12, !dbg !2905
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1494, metadata !650) #12, !dbg !2907
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1495, metadata !650) #12, !dbg !2908
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1493, metadata !650) #12, !dbg !2905
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1493, metadata !650) #12, !dbg !2905
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2909
  store i32 10, i32* %8, align 8, !dbg !2910, !tbaa !1425
  %9 = icmp ne i8* %1, null, !dbg !2911
  %10 = icmp ne i8* %2, null, !dbg !2912
  %11 = and i1 %9, %10, !dbg !2913
  br i1 %11, label %13, label %12, !dbg !2913

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2914
  unreachable, !dbg !2914

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2915
  store i8* %1, i8** %14, align 8, !dbg !2916, !tbaa !1511
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2917
  store i8* %2, i8** %15, align 8, !dbg !2918, !tbaa !1514
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2870, metadata !650), !dbg !2904
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2919
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2920
  ret i8* %16, !dbg !2921
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2922 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2926, metadata !650), !dbg !2929
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2927, metadata !650), !dbg !2930
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2928, metadata !650), !dbg !2931
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2853, metadata !650) #12, !dbg !2932
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2854, metadata !650) #12, !dbg !2934
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2855, metadata !650) #12, !dbg !2935
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2856, metadata !650) #12, !dbg !2936
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2861, metadata !650) #12, !dbg !2937
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2866, metadata !650) #12, !dbg !2939
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2867, metadata !650) #12, !dbg !2940
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2868, metadata !650) #12, !dbg !2941
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2869, metadata !650) #12, !dbg !2942
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2943
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2943
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !2944, !tbaa.struct !2700
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2870, metadata !650) #12, !dbg !2945
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1493, metadata !650) #12, !dbg !2946
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1494, metadata !650) #12, !dbg !2948
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1495, metadata !650) #12, !dbg !2949
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1493, metadata !650) #12, !dbg !2946
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1493, metadata !650) #12, !dbg !2946
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2950
  store i32 10, i32* %6, align 8, !dbg !2951, !tbaa !1425
  %7 = icmp ne i8* %0, null, !dbg !2952
  %8 = icmp ne i8* %1, null, !dbg !2953
  %9 = and i1 %7, %8, !dbg !2954
  br i1 %9, label %11, label %10, !dbg !2954

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2955
  unreachable, !dbg !2955

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2956
  store i8* %0, i8** %12, align 8, !dbg !2957, !tbaa !1511
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2958
  store i8* %1, i8** %13, align 8, !dbg !2959, !tbaa !1514
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2870, metadata !650) #12, !dbg !2945
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !2960
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2961
  ret i8* %14, !dbg !2962
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2963 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2967, metadata !650), !dbg !2971
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2968, metadata !650), !dbg !2972
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2969, metadata !650), !dbg !2973
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2970, metadata !650), !dbg !2974
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2861, metadata !650) #12, !dbg !2975
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2866, metadata !650) #12, !dbg !2977
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2867, metadata !650) #12, !dbg !2978
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2868, metadata !650) #12, !dbg !2979
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2869, metadata !650) #12, !dbg !2980
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2981
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2981
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !2982, !tbaa.struct !2700
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2870, metadata !650) #12, !dbg !2983
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1493, metadata !650) #12, !dbg !2984
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1494, metadata !650) #12, !dbg !2986
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1495, metadata !650) #12, !dbg !2987
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1493, metadata !650) #12, !dbg !2984
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1493, metadata !650) #12, !dbg !2984
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2988
  store i32 10, i32* %7, align 8, !dbg !2989, !tbaa !1425
  %8 = icmp ne i8* %0, null, !dbg !2990
  %9 = icmp ne i8* %1, null, !dbg !2991
  %10 = and i1 %8, %9, !dbg !2992
  br i1 %10, label %12, label %11, !dbg !2992

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2993
  unreachable, !dbg !2993

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2994
  store i8* %0, i8** %13, align 8, !dbg !2995, !tbaa !1511
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2996
  store i8* %1, i8** %14, align 8, !dbg !2997, !tbaa !1514
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2870, metadata !650) #12, !dbg !2983
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !2998
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2999
  ret i8* %15, !dbg !3000
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3001 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3005, metadata !650), !dbg !3008
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3006, metadata !650), !dbg !3009
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3007, metadata !650), !dbg !3010
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3011
  ret i8* %4, !dbg !3012
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3013 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3017, metadata !650), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3018, metadata !650), !dbg !3020
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3005, metadata !650) #12, !dbg !3021
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3006, metadata !650) #12, !dbg !3023
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3007, metadata !650) #12, !dbg !3024
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3025
  ret i8* %3, !dbg !3026
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3027 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3031, metadata !650), !dbg !3033
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3032, metadata !650), !dbg !3034
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3005, metadata !650) #12, !dbg !3035
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3006, metadata !650) #12, !dbg !3037
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3007, metadata !650) #12, !dbg !3038
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3039
  ret i8* %3, !dbg !3040
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3041 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3043, metadata !650), !dbg !3044
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3031, metadata !650) #12, !dbg !3045
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3032, metadata !650) #12, !dbg !3047
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3005, metadata !650) #12, !dbg !3048
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3006, metadata !650) #12, !dbg !3050
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3007, metadata !650) #12, !dbg !3051
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3052
  ret i8* %2, !dbg !3053
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3054 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3110, metadata !650), !dbg !3116
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3111, metadata !650), !dbg !3117
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3112, metadata !650), !dbg !3118
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3113, metadata !650), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3114, metadata !650), !dbg !3120
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3115, metadata !650), !dbg !3121
  %7 = icmp eq i8* %1, null, !dbg !3122
  br i1 %7, label %10, label %8, !dbg !3124

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.86, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !3125
  br label %12, !dbg !3125

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.87, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !3126
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.88, i64 0, i64 0), i32 5) #12, !dbg !3127
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #12, !dbg !3127
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.89, i64 0, i64 0), i32 5) #12, !dbg !3128
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #12, !dbg !3128
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
  ], !dbg !3129

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3130
  unreachable, !dbg !3130

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.90, i64 0, i64 0), i32 5) #12, !dbg !3132
  %20 = load i8*, i8** %4, align 8, !dbg !3132, !tbaa !657
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12, !dbg !3132
  br label %146, !dbg !3133

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.91, i64 0, i64 0), i32 5) #12, !dbg !3134
  %24 = load i8*, i8** %4, align 8, !dbg !3134, !tbaa !657
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3134
  %26 = load i8*, i8** %25, align 8, !dbg !3134, !tbaa !657
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12, !dbg !3134
  br label %146, !dbg !3135

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.92, i64 0, i64 0), i32 5) #12, !dbg !3136
  %30 = load i8*, i8** %4, align 8, !dbg !3136, !tbaa !657
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3136
  %32 = load i8*, i8** %31, align 8, !dbg !3136, !tbaa !657
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3136
  %34 = load i8*, i8** %33, align 8, !dbg !3136, !tbaa !657
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12, !dbg !3136
  br label %146, !dbg !3137

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.93, i64 0, i64 0), i32 5) #12, !dbg !3138
  %38 = load i8*, i8** %4, align 8, !dbg !3138, !tbaa !657
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3138
  %40 = load i8*, i8** %39, align 8, !dbg !3138, !tbaa !657
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3138
  %42 = load i8*, i8** %41, align 8, !dbg !3138, !tbaa !657
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3138
  %44 = load i8*, i8** %43, align 8, !dbg !3138, !tbaa !657
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #12, !dbg !3138
  br label %146, !dbg !3139

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.94, i64 0, i64 0), i32 5) #12, !dbg !3140
  %48 = load i8*, i8** %4, align 8, !dbg !3140, !tbaa !657
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3140
  %50 = load i8*, i8** %49, align 8, !dbg !3140, !tbaa !657
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3140
  %52 = load i8*, i8** %51, align 8, !dbg !3140, !tbaa !657
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3140
  %54 = load i8*, i8** %53, align 8, !dbg !3140, !tbaa !657
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3140
  %56 = load i8*, i8** %55, align 8, !dbg !3140, !tbaa !657
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #12, !dbg !3140
  br label %146, !dbg !3141

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.95, i64 0, i64 0), i32 5) #12, !dbg !3142
  %60 = load i8*, i8** %4, align 8, !dbg !3142, !tbaa !657
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3142
  %62 = load i8*, i8** %61, align 8, !dbg !3142, !tbaa !657
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3142
  %64 = load i8*, i8** %63, align 8, !dbg !3142, !tbaa !657
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3142
  %66 = load i8*, i8** %65, align 8, !dbg !3142, !tbaa !657
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3142
  %68 = load i8*, i8** %67, align 8, !dbg !3142, !tbaa !657
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3142
  %70 = load i8*, i8** %69, align 8, !dbg !3142, !tbaa !657
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #12, !dbg !3142
  br label %146, !dbg !3143

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.96, i64 0, i64 0), i32 5) #12, !dbg !3144
  %74 = load i8*, i8** %4, align 8, !dbg !3144, !tbaa !657
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3144
  %76 = load i8*, i8** %75, align 8, !dbg !3144, !tbaa !657
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3144
  %78 = load i8*, i8** %77, align 8, !dbg !3144, !tbaa !657
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3144
  %80 = load i8*, i8** %79, align 8, !dbg !3144, !tbaa !657
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3144
  %82 = load i8*, i8** %81, align 8, !dbg !3144, !tbaa !657
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3144
  %84 = load i8*, i8** %83, align 8, !dbg !3144, !tbaa !657
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3144
  %86 = load i8*, i8** %85, align 8, !dbg !3144, !tbaa !657
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #12, !dbg !3144
  br label %146, !dbg !3145

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.97, i64 0, i64 0), i32 5) #12, !dbg !3146
  %90 = load i8*, i8** %4, align 8, !dbg !3146, !tbaa !657
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3146
  %92 = load i8*, i8** %91, align 8, !dbg !3146, !tbaa !657
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3146
  %94 = load i8*, i8** %93, align 8, !dbg !3146, !tbaa !657
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3146
  %96 = load i8*, i8** %95, align 8, !dbg !3146, !tbaa !657
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3146
  %98 = load i8*, i8** %97, align 8, !dbg !3146, !tbaa !657
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3146
  %100 = load i8*, i8** %99, align 8, !dbg !3146, !tbaa !657
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3146
  %102 = load i8*, i8** %101, align 8, !dbg !3146, !tbaa !657
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3146
  %104 = load i8*, i8** %103, align 8, !dbg !3146, !tbaa !657
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #12, !dbg !3146
  br label %146, !dbg !3147

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.98, i64 0, i64 0), i32 5) #12, !dbg !3148
  %108 = load i8*, i8** %4, align 8, !dbg !3148, !tbaa !657
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3148
  %110 = load i8*, i8** %109, align 8, !dbg !3148, !tbaa !657
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3148
  %112 = load i8*, i8** %111, align 8, !dbg !3148, !tbaa !657
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3148
  %114 = load i8*, i8** %113, align 8, !dbg !3148, !tbaa !657
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3148
  %116 = load i8*, i8** %115, align 8, !dbg !3148, !tbaa !657
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3148
  %118 = load i8*, i8** %117, align 8, !dbg !3148, !tbaa !657
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3148
  %120 = load i8*, i8** %119, align 8, !dbg !3148, !tbaa !657
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3148
  %122 = load i8*, i8** %121, align 8, !dbg !3148, !tbaa !657
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3148
  %124 = load i8*, i8** %123, align 8, !dbg !3148, !tbaa !657
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #12, !dbg !3148
  br label %146, !dbg !3149

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.99, i64 0, i64 0), i32 5) #12, !dbg !3150
  %128 = load i8*, i8** %4, align 8, !dbg !3150, !tbaa !657
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3150
  %130 = load i8*, i8** %129, align 8, !dbg !3150, !tbaa !657
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3150
  %132 = load i8*, i8** %131, align 8, !dbg !3150, !tbaa !657
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3150
  %134 = load i8*, i8** %133, align 8, !dbg !3150, !tbaa !657
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3150
  %136 = load i8*, i8** %135, align 8, !dbg !3150, !tbaa !657
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3150
  %138 = load i8*, i8** %137, align 8, !dbg !3150, !tbaa !657
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3150
  %140 = load i8*, i8** %139, align 8, !dbg !3150, !tbaa !657
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3150
  %142 = load i8*, i8** %141, align 8, !dbg !3150, !tbaa !657
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3150
  %144 = load i8*, i8** %143, align 8, !dbg !3150, !tbaa !657
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #12, !dbg !3150
  br label %146, !dbg !3151

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3152
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3153 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3157, metadata !650), !dbg !3163
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3158, metadata !650), !dbg !3164
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3159, metadata !650), !dbg !3165
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3160, metadata !650), !dbg !3166
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3161, metadata !650), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3162, metadata !650), !dbg !3168
  br label %6, !dbg !3169

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3162, metadata !650), !dbg !3168
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3171
  %9 = load i8*, i8** %8, align 8, !dbg !3171, !tbaa !657
  %10 = icmp eq i8* %9, null, !dbg !3173
  %11 = add i64 %7, 1, !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3162, metadata !650), !dbg !3168
  br i1 %10, label %12, label %6, !dbg !3173, !llvm.loop !3175

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3177
  ret void, !dbg !3178
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3179 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3190, metadata !650), !dbg !3198
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3191, metadata !650), !dbg !3199
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3192, metadata !650), !dbg !3200
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3193, metadata !650), !dbg !3201
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3194, metadata !650), !dbg !3202
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3203
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3203
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3196, metadata !650), !dbg !3204
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3195, metadata !650), !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3195, metadata !650), !dbg !3205
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3195, metadata !650), !dbg !3205
  %11 = load i32, i32* %8, align 8, !dbg !3206
  %12 = icmp ult i32 %11, 41, !dbg !3206
  br i1 %12, label %13, label %18, !dbg !3206

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3206
  %15 = sext i32 %11 to i64, !dbg !3206
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3206
  %17 = add i32 %11, 8, !dbg !3206
  store i32 %17, i32* %8, align 8, !dbg !3206
  br label %21, !dbg !3206

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3206
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3206
  store i8* %20, i8** %10, align 8, !dbg !3206
  br label %21, !dbg !3206

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3206
  %25 = load i8*, i8** %24, align 8, !dbg !3206
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3209
  store i8* %25, i8** %26, align 16, !dbg !3210, !tbaa !657
  %27 = icmp eq i8* %25, null, !dbg !3211
  br i1 %27, label %30, label %28, !dbg !3212

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3195, metadata !650), !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3195, metadata !650), !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3195, metadata !650), !dbg !3205
  %29 = icmp ult i32 %22, 41, !dbg !3206
  br i1 %29, label %35, label %32, !dbg !3206

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3213
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3214
  ret void, !dbg !3214

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3206
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3206
  store i8* %34, i8** %10, align 8, !dbg !3206
  br label %40, !dbg !3206

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3206
  %37 = sext i32 %22 to i64, !dbg !3206
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3206
  %39 = add i32 %22, 8, !dbg !3206
  store i32 %39, i32* %8, align 8, !dbg !3206
  br label %40, !dbg !3206

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3206
  %44 = load i8*, i8** %43, align 8, !dbg !3206
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3209
  store i8* %44, i8** %45, align 8, !dbg !3210, !tbaa !657
  %46 = icmp eq i8* %44, null, !dbg !3211
  br i1 %46, label %30, label %47, !dbg !3212

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3195, metadata !650), !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3195, metadata !650), !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3195, metadata !650), !dbg !3205
  %48 = icmp ult i32 %41, 41, !dbg !3206
  br i1 %48, label %52, label %49, !dbg !3206

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3206
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3206
  store i8* %51, i8** %10, align 8, !dbg !3206
  br label %57, !dbg !3206

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3206
  %54 = sext i32 %41 to i64, !dbg !3206
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3206
  %56 = add i32 %41, 8, !dbg !3206
  store i32 %56, i32* %8, align 8, !dbg !3206
  br label %57, !dbg !3206

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3206
  %61 = load i8*, i8** %60, align 8, !dbg !3206
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3209
  store i8* %61, i8** %62, align 16, !dbg !3210, !tbaa !657
  %63 = icmp eq i8* %61, null, !dbg !3211
  br i1 %63, label %30, label %64, !dbg !3212

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3195, metadata !650), !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3195, metadata !650), !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3195, metadata !650), !dbg !3205
  %65 = icmp ult i32 %58, 41, !dbg !3206
  br i1 %65, label %69, label %66, !dbg !3206

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3206
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3206
  store i8* %68, i8** %10, align 8, !dbg !3206
  br label %74, !dbg !3206

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3206
  %71 = sext i32 %58 to i64, !dbg !3206
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3206
  %73 = add i32 %58, 8, !dbg !3206
  store i32 %73, i32* %8, align 8, !dbg !3206
  br label %74, !dbg !3206

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3206
  %78 = load i8*, i8** %77, align 8, !dbg !3206
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3209
  store i8* %78, i8** %79, align 8, !dbg !3210, !tbaa !657
  %80 = icmp eq i8* %78, null, !dbg !3211
  br i1 %80, label %30, label %81, !dbg !3212

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3195, metadata !650), !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3195, metadata !650), !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3195, metadata !650), !dbg !3205
  %82 = icmp ult i32 %75, 41, !dbg !3206
  br i1 %82, label %86, label %83, !dbg !3206

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3206
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3206
  store i8* %85, i8** %10, align 8, !dbg !3206
  br label %91, !dbg !3206

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3206
  %88 = sext i32 %75 to i64, !dbg !3206
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3206
  %90 = add i32 %75, 8, !dbg !3206
  store i32 %90, i32* %8, align 8, !dbg !3206
  br label %91, !dbg !3206

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3206
  %95 = load i8*, i8** %94, align 8, !dbg !3206
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3209
  store i8* %95, i8** %96, align 16, !dbg !3210, !tbaa !657
  %97 = icmp eq i8* %95, null, !dbg !3211
  br i1 %97, label %30, label %98, !dbg !3212

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3195, metadata !650), !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3195, metadata !650), !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3195, metadata !650), !dbg !3205
  %99 = icmp ult i32 %92, 41, !dbg !3206
  br i1 %99, label %103, label %100, !dbg !3206

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3206
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3206
  store i8* %102, i8** %10, align 8, !dbg !3206
  br label %108, !dbg !3206

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3206
  %105 = sext i32 %92 to i64, !dbg !3206
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3206
  %107 = add i32 %92, 8, !dbg !3206
  store i32 %107, i32* %8, align 8, !dbg !3206
  br label %108, !dbg !3206

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3206
  %111 = load i8*, i8** %110, align 8, !dbg !3206
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3209
  store i8* %111, i8** %112, align 8, !dbg !3210, !tbaa !657
  %113 = icmp eq i8* %111, null, !dbg !3211
  br i1 %113, label %30, label %114, !dbg !3212

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3195, metadata !650), !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3195, metadata !650), !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3195, metadata !650), !dbg !3205
  %115 = load i8*, i8** %10, align 8, !dbg !3206
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3206
  store i8* %116, i8** %10, align 8, !dbg !3206
  %117 = bitcast i8* %115 to i8**, !dbg !3206
  %118 = load i8*, i8** %117, align 8, !dbg !3206
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3209
  store i8* %118, i8** %119, align 16, !dbg !3210, !tbaa !657
  %120 = icmp eq i8* %118, null, !dbg !3211
  br i1 %120, label %30, label %121, !dbg !3212

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3195, metadata !650), !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3195, metadata !650), !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3195, metadata !650), !dbg !3205
  %122 = load i8*, i8** %10, align 8, !dbg !3206
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3206
  store i8* %123, i8** %10, align 8, !dbg !3206
  %124 = bitcast i8* %122 to i8**, !dbg !3206
  %125 = load i8*, i8** %124, align 8, !dbg !3206
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3209
  store i8* %125, i8** %126, align 8, !dbg !3210, !tbaa !657
  %127 = icmp eq i8* %125, null, !dbg !3211
  br i1 %127, label %30, label %128, !dbg !3212

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3195, metadata !650), !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3195, metadata !650), !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3195, metadata !650), !dbg !3205
  %129 = load i8*, i8** %10, align 8, !dbg !3206
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3206
  store i8* %130, i8** %10, align 8, !dbg !3206
  %131 = bitcast i8* %129 to i8**, !dbg !3206
  %132 = load i8*, i8** %131, align 8, !dbg !3206
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3209
  store i8* %132, i8** %133, align 16, !dbg !3210, !tbaa !657
  %134 = icmp eq i8* %132, null, !dbg !3211
  br i1 %134, label %30, label %135, !dbg !3212

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3195, metadata !650), !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3195, metadata !650), !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3195, metadata !650), !dbg !3205
  %136 = load i8*, i8** %10, align 8, !dbg !3206
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3206
  store i8* %137, i8** %10, align 8, !dbg !3206
  %138 = bitcast i8* %136 to i8**, !dbg !3206
  %139 = load i8*, i8** %138, align 8, !dbg !3206
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3209
  store i8* %139, i8** %140, align 8, !dbg !3210, !tbaa !657
  %141 = icmp eq i8* %139, null, !dbg !3211
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3195, metadata !650), !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3195, metadata !650), !dbg !3205
  %142 = select i1 %141, i64 9, i64 10, !dbg !3212
  br label %30, !dbg !3212
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3215 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3219, metadata !650), !dbg !3230
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3220, metadata !650), !dbg !3231
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3221, metadata !650), !dbg !3232
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3222, metadata !650), !dbg !3233
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3234
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3234
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3223, metadata !650), !dbg !3235
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3236
  call void @llvm.va_start(i8* nonnull %6), !dbg !3236
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3237
  call void @llvm.va_end(i8* nonnull %6), !dbg !3238
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3239
  ret void, !dbg !3239
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3240 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.102, i64 0, i64 0), i32 5) #12, !dbg !3241
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.103, i64 0, i64 0)) #12, !dbg !3241
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #12, !dbg !3242
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.104, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.105, i64 0, i64 0)) #12, !dbg !3242
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.106, i64 0, i64 0), i32 5) #12, !dbg !3243
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3243, !tbaa !657
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #12, !dbg !3243
  ret void, !dbg !3244
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3245 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3249, metadata !650), !dbg !3251
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3250, metadata !650), !dbg !3252
  %3 = udiv i64 9223372036854775807, %1, !dbg !3253
  %4 = icmp ult i64 %3, %0, !dbg !3253
  br i1 %4, label %5, label %6, !dbg !3255

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3256
  unreachable, !dbg !3256

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3257
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3258, metadata !650) #12, !dbg !3263
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !3265
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3262, metadata !650) #12, !dbg !3266
  %9 = icmp eq i8* %8, null, !dbg !3267
  %10 = icmp ne i64 %7, 0, !dbg !3269
  %11 = and i1 %10, %9, !dbg !3270
  br i1 %11, label %12, label %13, !dbg !3270

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3271
  unreachable, !dbg !3271

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3272
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3259 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3258, metadata !650), !dbg !3273
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3274
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3262, metadata !650), !dbg !3275
  %3 = icmp eq i8* %2, null, !dbg !3276
  %4 = icmp ne i64 %0, 0, !dbg !3277
  %5 = and i1 %4, %3, !dbg !3278
  br i1 %5, label %6, label %7, !dbg !3278

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3279
  unreachable, !dbg !3279

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3280
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3281 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3285, metadata !650), !dbg !3288
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3286, metadata !650), !dbg !3289
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3287, metadata !650), !dbg !3290
  %4 = udiv i64 9223372036854775807, %2, !dbg !3291
  %5 = icmp ult i64 %4, %1, !dbg !3291
  br i1 %5, label %6, label %7, !dbg !3293

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3294
  unreachable, !dbg !3294

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3295
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3296, metadata !650) #12, !dbg !3300
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3299, metadata !650) #12, !dbg !3302
  %9 = icmp eq i64 %8, 0, !dbg !3303
  %10 = icmp ne i8* %0, null, !dbg !3305
  %11 = and i1 %10, %9, !dbg !3306
  br i1 %11, label %12, label %13, !dbg !3306

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !3307
  br label %19, !dbg !3309

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !3310
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3296, metadata !650) #12, !dbg !3300
  %15 = icmp eq i8* %14, null, !dbg !3311
  %16 = icmp ne i64 %8, 0, !dbg !3313
  %17 = and i1 %16, %15, !dbg !3314
  br i1 %17, label %18, label %19, !dbg !3314

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3315
  unreachable, !dbg !3315

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3316
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3297 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3296, metadata !650), !dbg !3317
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3299, metadata !650), !dbg !3318
  %3 = icmp eq i64 %1, 0, !dbg !3319
  %4 = icmp ne i8* %0, null, !dbg !3320
  %5 = and i1 %4, %3, !dbg !3321
  br i1 %5, label %6, label %7, !dbg !3321

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !3322
  br label %13, !dbg !3323

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !3324
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3296, metadata !650), !dbg !3317
  %9 = icmp eq i8* %8, null, !dbg !3325
  %10 = icmp ne i64 %1, 0, !dbg !3326
  %11 = and i1 %10, %9, !dbg !3327
  br i1 %11, label %12, label %13, !dbg !3327

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3328
  unreachable, !dbg !3328

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3329
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !599 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !604, metadata !650), !dbg !3330
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !605, metadata !650), !dbg !3331
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !606, metadata !650), !dbg !3332
  %4 = load i64, i64* %1, align 8, !dbg !3333, !tbaa !848
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !607, metadata !650), !dbg !3334
  %5 = icmp eq i8* %0, null, !dbg !3335
  br i1 %5, label %6, label %13, !dbg !3337

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3338
  br i1 %7, label %8, label %17, !dbg !3341

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3342
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !607, metadata !650), !dbg !3334
  %10 = icmp ugt i64 %2, 128, !dbg !3344
  %11 = zext i1 %10 to i64, !dbg !3344
  %12 = add nuw nsw i64 %9, %11, !dbg !3345
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !607, metadata !650), !dbg !3334
  br label %17, !dbg !3346

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3347
  %15 = icmp ugt i64 %14, %4, !dbg !3350
  br i1 %15, label %20, label %16, !dbg !3351

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3352
  unreachable, !dbg !3352

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !607, metadata !650), !dbg !3334
  store i64 %18, i64* %1, align 8, !dbg !3353, !tbaa !848
  %19 = mul i64 %18, %2, !dbg !3354
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3296, metadata !650) #12, !dbg !3355
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3299, metadata !650) #12, !dbg !3357
  br label %27, !dbg !3358

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3359
  %22 = add i64 %4, 1, !dbg !3360
  %23 = add i64 %22, %21, !dbg !3361
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !607, metadata !650), !dbg !3334
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !607, metadata !650), !dbg !3334
  store i64 %23, i64* %1, align 8, !dbg !3353, !tbaa !848
  %24 = mul i64 %23, %2, !dbg !3354
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3296, metadata !650) #12, !dbg !3355
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3299, metadata !650) #12, !dbg !3357
  %25 = icmp eq i64 %24, 0, !dbg !3362
  br i1 %25, label %26, label %27, !dbg !3358

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #12, !dbg !3363
  br label %34, !dbg !3364

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #12, !dbg !3365
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3296, metadata !650) #12, !dbg !3355
  %30 = icmp eq i8* %29, null, !dbg !3366
  %31 = icmp ne i64 %28, 0, !dbg !3367
  %32 = and i1 %31, %30, !dbg !3368
  br i1 %32, label %33, label %34, !dbg !3368

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3369
  unreachable, !dbg !3369

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3370
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3371 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3373, metadata !650), !dbg !3374
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3258, metadata !650) #12, !dbg !3375
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3377
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3262, metadata !650) #12, !dbg !3378
  %3 = icmp eq i8* %2, null, !dbg !3379
  %4 = icmp ne i64 %0, 0, !dbg !3380
  %5 = and i1 %4, %3, !dbg !3381
  br i1 %5, label %6, label %7, !dbg !3381

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3382
  unreachable, !dbg !3382

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3383
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3384 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3388, metadata !650), !dbg !3390
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3389, metadata !650), !dbg !3391
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !604, metadata !650) #12, !dbg !3392
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !605, metadata !650) #12, !dbg !3394
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !606, metadata !650) #12, !dbg !3395
  %3 = load i64, i64* %1, align 8, !dbg !3396, !tbaa !848
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !607, metadata !650) #12, !dbg !3397
  %4 = icmp eq i8* %0, null, !dbg !3398
  br i1 %4, label %5, label %8, !dbg !3399

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3400
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !607, metadata !650) #12, !dbg !3397
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !607, metadata !650) #12, !dbg !3397
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !607, metadata !650) #12, !dbg !3397
  store i64 %7, i64* %1, align 8, !dbg !3402, !tbaa !848
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3296, metadata !650) #12, !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3299, metadata !650) #12, !dbg !3405
  br label %17, !dbg !3406

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3407
  br i1 %9, label %11, label %10, !dbg !3408

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3409
  unreachable, !dbg !3409

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3410
  %13 = add i64 %3, 1, !dbg !3411
  %14 = add i64 %13, %12, !dbg !3412
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !607, metadata !650) #12, !dbg !3397
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !607, metadata !650) #12, !dbg !3397
  store i64 %14, i64* %1, align 8, !dbg !3402, !tbaa !848
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3296, metadata !650) #12, !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3299, metadata !650) #12, !dbg !3405
  %15 = icmp eq i64 %14, 0, !dbg !3413
  br i1 %15, label %16, label %17, !dbg !3406

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #12, !dbg !3414
  br label %24, !dbg !3415

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #12, !dbg !3416
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3296, metadata !650) #12, !dbg !3403
  %20 = icmp eq i8* %19, null, !dbg !3417
  %21 = icmp ne i64 %18, 0, !dbg !3418
  %22 = and i1 %21, %20, !dbg !3419
  br i1 %22, label %23, label %24, !dbg !3419

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3420
  unreachable, !dbg !3420

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3421
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3422 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3424, metadata !650), !dbg !3425
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3258, metadata !650) #12, !dbg !3426
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3428
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3262, metadata !650) #12, !dbg !3429
  %3 = icmp eq i8* %2, null, !dbg !3430
  %4 = icmp ne i64 %0, 0, !dbg !3431
  %5 = and i1 %4, %3, !dbg !3432
  br i1 %5, label %6, label %7, !dbg !3432

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3433
  unreachable, !dbg !3433

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3434
  ret i8* %2, !dbg !3435
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3436 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3438, metadata !650), !dbg !3441
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3439, metadata !650), !dbg !3442
  %3 = udiv i64 9223372036854775807, %1, !dbg !3443
  %4 = icmp ult i64 %3, %0, !dbg !3443
  br i1 %4, label %8, label %5, !dbg !3445

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !3446
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3440, metadata !650), !dbg !3447
  %7 = icmp eq i8* %6, null, !dbg !3448
  br i1 %7, label %8, label %9, !dbg !3449

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3450
  unreachable, !dbg !3450

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3451
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3452 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3456, metadata !650), !dbg !3458
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3457, metadata !650), !dbg !3459
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3258, metadata !650) #12, !dbg !3460
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !3462
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3262, metadata !650) #12, !dbg !3463
  %4 = icmp eq i8* %3, null, !dbg !3464
  %5 = icmp ne i64 %1, 0, !dbg !3465
  %6 = and i1 %5, %4, !dbg !3466
  br i1 %6, label %7, label %8, !dbg !3466

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3467
  unreachable, !dbg !3467

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3468
  ret i8* %3, !dbg !3469
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3470 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3472, metadata !650), !dbg !3473
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3474
  %3 = add i64 %2, 1, !dbg !3475
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3456, metadata !650) #12, !dbg !3476
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3457, metadata !650) #12, !dbg !3478
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3258, metadata !650) #12, !dbg !3479
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !3481
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3262, metadata !650) #12, !dbg !3482
  %5 = icmp eq i8* %4, null, !dbg !3483
  %6 = icmp ne i64 %3, 0, !dbg !3484
  %7 = and i1 %6, %5, !dbg !3485
  br i1 %7, label %8, label %9, !dbg !3485

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3486
  unreachable, !dbg !3486

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #12, !dbg !3487
  ret i8* %4, !dbg !3488
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3489 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3491, !tbaa !768
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.119, i64 0, i64 0), i32 5) #12, !dbg !3492
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.120, i64 0, i64 0), i8* %2) #12, !dbg !3493
  tail call void @abort() #15, !dbg !3494
  unreachable, !dbg !3494
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @xreadlink(i8*) local_unnamed_addr #6 !dbg !3495 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3498, metadata !650), !dbg !3500
  %2 = tail call i8* @areadlink(i8* %0) #12, !dbg !3501
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3499, metadata !650), !dbg !3502
  %3 = icmp eq i8* %2, null, !dbg !3503
  br i1 %3, label %4, label %9, !dbg !3505

; <label>:4:                                      ; preds = %1
  %5 = tail call i32* @__errno_location() #17, !dbg !3506
  %6 = load i32, i32* %5, align 4, !dbg !3506, !tbaa !768
  %7 = icmp eq i32 %6, 12, !dbg !3507
  br i1 %7, label %8, label %9, !dbg !3508

; <label>:8:                                      ; preds = %4
  tail call void @xalloc_die() #15, !dbg !3509
  unreachable, !dbg !3509

; <label>:9:                                      ; preds = %4, %1
  ret i8* %2, !dbg !3510
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 !dbg !3511 {
  %6 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3518, metadata !650), !dbg !3536
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !3519, metadata !650), !dbg !3537
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3520, metadata !650), !dbg !3538
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !3521, metadata !650), !dbg !3539
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3522, metadata !650), !dbg !3540
  %7 = bitcast i8** %6 to i8*, !dbg !3541
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #12, !dbg !3541
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3526, metadata !650), !dbg !3542
  %8 = icmp ult i32 %2, 37, !dbg !3543
  br i1 %8, label %10, label %9, !dbg !3543

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.125, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.126, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #15, !dbg !3543
  unreachable, !dbg !3543

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3546
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !3524, metadata !650), !dbg !3547
  %12 = tail call i32* @__errno_location() #17, !dbg !3548
  store i32 0, i32* %12, align 4, !dbg !3549, !tbaa !768
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3527, metadata !650), !dbg !3550
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3530, metadata !3551), !dbg !3552
  %13 = tail call i16** @__ctype_b_loc() #17, !dbg !3553
  %14 = load i16*, i16** %13, align 8, !tbaa !657
  br label %15, !dbg !3554

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ]
  %17 = load i8, i8* %16, align 1, !tbaa !795
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !3530, metadata !650), !dbg !3552
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3527, metadata !650), !dbg !3550
  %18 = zext i8 %17 to i64, !dbg !3553
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !3553
  %20 = load i16, i16* %19, align 2, !dbg !3553, !tbaa !1837
  %21 = and i16 %20, 8192, !dbg !3553
  %22 = icmp eq i16 %21, 0, !dbg !3554
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !3555
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !3527, metadata !650), !dbg !3550
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !3530, metadata !3551), !dbg !3552
  br i1 %22, label %24, label %15, !dbg !3554, !llvm.loop !3556

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !3546
  %26 = icmp eq i8 %17, 45, !dbg !3558
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3560, metadata !650) #12, !dbg !3570
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !3568, metadata !650) #12, !dbg !3570
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3569, metadata !650) #12, !dbg !3570
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #12, !dbg !3572
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3525, metadata !650), !dbg !3573
  %29 = load i8*, i8** %25, align 8, !dbg !3574, !tbaa !657
  %30 = icmp eq i8* %29, %0, !dbg !3576
  br i1 %30, label %31, label %40, !dbg !3577

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !3578
  br i1 %32, label %265, label %33, !dbg !3581

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !3582, !tbaa !795
  %35 = icmp eq i8 %34, 0, !dbg !3582
  br i1 %35, label %265, label %36, !dbg !3583

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !3582
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #14, !dbg !3584
  %39 = icmp eq i8* %38, null, !dbg !3584
  br i1 %39, label %265, label %47, !dbg !3585

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !3586, !tbaa !768
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !3588

; <label>:42:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3526, metadata !650), !dbg !3542
  br label %43, !dbg !3589

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ 0, %40 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !3526, metadata !650), !dbg !3542
  %45 = icmp eq i8* %4, null, !dbg !3591
  br i1 %45, label %46, label %47, !dbg !3593

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3525, metadata !650), !dbg !3573
  store i64 %28, i64* %3, align 8, !dbg !3594, !tbaa !848
  br label %265, !dbg !3596

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !3597, !tbaa !795
  %51 = sext i8 %50 to i32, !dbg !3597
  %52 = icmp eq i8 %50, 0, !dbg !3598
  br i1 %52, label %262, label %53, !dbg !3599

; <label>:53:                                     ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !3531, metadata !650), !dbg !3600
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3534, metadata !650), !dbg !3601
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #14, !dbg !3602
  %55 = icmp eq i8* %54, null, !dbg !3602
  br i1 %55, label %56, label %58, !dbg !3604

; <label>:56:                                     ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3525, metadata !650), !dbg !3573
  store i64 %49, i64* %3, align 8, !dbg !3605, !tbaa !848
  %57 = or i32 %48, 2, !dbg !3607
  br label %265, !dbg !3608

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
  ], !dbg !3609

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #14, !dbg !3610
  %61 = icmp eq i8* %60, null, !dbg !3610
  br i1 %61, label %72, label %62, !dbg !3613

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !3614
  %64 = load i8, i8* %63, align 1, !dbg !3614, !tbaa !795
  %65 = sext i8 %64 to i32, !dbg !3614
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !3615

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !3616
  %68 = load i8, i8* %67, align 1, !dbg !3616, !tbaa !795
  %69 = icmp eq i8 %68, 66, !dbg !3619
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3534, metadata !650), !dbg !3601
  %70 = select i1 %69, i64 3, i64 1, !dbg !3620
  br label %72, !dbg !3620

; <label>:71:                                     ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !3531, metadata !650), !dbg !3600
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3534, metadata !650), !dbg !3601
  br label %72, !dbg !3621

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
  ], !dbg !3622

; <label>:75:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !3623, metadata !650), !dbg !3629
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !3632
  %77 = shl i64 %49, 9, !dbg !3634
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !3635
  %79 = zext i1 %76 to i32, !dbg !3635
  call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !3535, metadata !650), !dbg !3636
  br label %253, !dbg !3637

; <label>:80:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !3623, metadata !650), !dbg !3638
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !3640
  %82 = shl i64 %49, 10, !dbg !3641
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !3642
  %84 = zext i1 %81 to i32, !dbg !3642
  call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !3535, metadata !650), !dbg !3636
  br label %253, !dbg !3643

; <label>:85:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3644, metadata !650), !dbg !3652
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3654
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3654
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3644, metadata !650), !dbg !3652
  %86 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3644, metadata !650), !dbg !3652
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3654
  %87 = icmp ult i64 %86, %49, !dbg !3655
  %88 = mul i64 %49, %73, !dbg !3657
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !3658
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3644, metadata !650), !dbg !3652
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3644, metadata !650), !dbg !3652
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3644, metadata !650), !dbg !3652
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3654
  %90 = icmp ult i64 %86, %89, !dbg !3655
  %91 = mul i64 %89, %73, !dbg !3657
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !3658
  %93 = or i1 %87, %90, !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3644, metadata !650), !dbg !3652
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3644, metadata !650), !dbg !3652
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3644, metadata !650), !dbg !3652
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3654
  %94 = icmp ult i64 %86, %92, !dbg !3655
  %95 = mul i64 %92, %73, !dbg !3657
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !3658
  %97 = or i1 %93, %94, !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3644, metadata !650), !dbg !3652
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3644, metadata !650), !dbg !3652
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3644, metadata !650), !dbg !3652
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3654
  %98 = icmp ult i64 %86, %96, !dbg !3655
  %99 = mul i64 %96, %73, !dbg !3657
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !3658
  %101 = or i1 %97, %98, !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3644, metadata !650), !dbg !3652
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3644, metadata !650), !dbg !3652
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3644, metadata !650), !dbg !3652
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3654
  %102 = icmp ult i64 %86, %100, !dbg !3655
  %103 = mul i64 %100, %73, !dbg !3657
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !3658
  %105 = or i1 %101, %102, !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3644, metadata !650), !dbg !3652
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3644, metadata !650), !dbg !3652
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3644, metadata !650), !dbg !3652
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3654
  %106 = icmp ult i64 %86, %104, !dbg !3655
  %107 = mul i64 %104, %73, !dbg !3657
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !3658
  %109 = or i1 %105, %106, !dbg !3659
  %110 = zext i1 %109 to i32, !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3644, metadata !650), !dbg !3652
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3644, metadata !650), !dbg !3652
  br label %253, !dbg !3660

; <label>:111:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3644, metadata !650), !dbg !3661
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3663
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3663
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3644, metadata !650), !dbg !3661
  %112 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3644, metadata !650), !dbg !3661
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3663
  %113 = icmp ult i64 %112, %49, !dbg !3664
  %114 = mul i64 %49, %73, !dbg !3666
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !3667
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3644, metadata !650), !dbg !3661
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3644, metadata !650), !dbg !3661
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3644, metadata !650), !dbg !3661
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3663
  %116 = icmp ult i64 %112, %115, !dbg !3664
  %117 = mul i64 %115, %73, !dbg !3666
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !3667
  %119 = or i1 %113, %116, !dbg !3668
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3644, metadata !650), !dbg !3661
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3644, metadata !650), !dbg !3661
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3644, metadata !650), !dbg !3661
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3663
  %120 = icmp ult i64 %112, %118, !dbg !3664
  %121 = mul i64 %118, %73, !dbg !3666
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !3667
  %123 = or i1 %119, %120, !dbg !3668
  %124 = zext i1 %123 to i32, !dbg !3668
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3644, metadata !650), !dbg !3661
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3644, metadata !650), !dbg !3661
  br label %253, !dbg !3660

; <label>:125:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3644, metadata !650), !dbg !3669
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3671
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3671
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3644, metadata !650), !dbg !3669
  %126 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !3644, metadata !650), !dbg !3669
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3671
  %127 = icmp ult i64 %126, %49, !dbg !3672
  %128 = mul i64 %49, %73, !dbg !3674
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !3675
  %130 = zext i1 %127 to i32, !dbg !3675
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !3651, metadata !650), !dbg !3671
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !3651, metadata !650), !dbg !3671
  br label %253, !dbg !3660

; <label>:131:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3644, metadata !650), !dbg !3676
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3678
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3678
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3644, metadata !650), !dbg !3676
  %132 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3644, metadata !650), !dbg !3676
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3678
  %133 = icmp ult i64 %132, %49, !dbg !3679
  %134 = mul i64 %49, %73, !dbg !3681
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !3682
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3644, metadata !650), !dbg !3676
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3644, metadata !650), !dbg !3676
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3644, metadata !650), !dbg !3676
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3678
  %136 = icmp ult i64 %132, %135, !dbg !3679
  %137 = mul i64 %135, %73, !dbg !3681
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !3682
  %139 = or i1 %133, %136, !dbg !3683
  %140 = zext i1 %139 to i32, !dbg !3683
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3644, metadata !650), !dbg !3676
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3644, metadata !650), !dbg !3676
  br label %253, !dbg !3660

; <label>:141:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3644, metadata !650), !dbg !3684
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3686
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3686
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3644, metadata !650), !dbg !3684
  %142 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3644, metadata !650), !dbg !3684
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3686
  %143 = icmp ult i64 %142, %49, !dbg !3687
  %144 = mul i64 %49, %73, !dbg !3689
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !3690
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3644, metadata !650), !dbg !3684
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3644, metadata !650), !dbg !3684
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3644, metadata !650), !dbg !3684
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3686
  %146 = icmp ult i64 %142, %145, !dbg !3687
  %147 = mul i64 %145, %73, !dbg !3689
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !3690
  %149 = or i1 %143, %146, !dbg !3691
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3644, metadata !650), !dbg !3684
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3644, metadata !650), !dbg !3684
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3644, metadata !650), !dbg !3684
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3686
  %150 = icmp ult i64 %142, %148, !dbg !3687
  %151 = mul i64 %148, %73, !dbg !3689
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !3690
  %153 = or i1 %149, %150, !dbg !3691
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3644, metadata !650), !dbg !3684
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3644, metadata !650), !dbg !3684
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3644, metadata !650), !dbg !3684
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3686
  %154 = icmp ult i64 %142, %152, !dbg !3687
  %155 = mul i64 %152, %73, !dbg !3689
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !3690
  %157 = or i1 %153, %154, !dbg !3691
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3644, metadata !650), !dbg !3684
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3644, metadata !650), !dbg !3684
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3644, metadata !650), !dbg !3684
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3686
  %158 = icmp ult i64 %142, %156, !dbg !3687
  %159 = mul i64 %156, %73, !dbg !3689
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !3690
  %161 = or i1 %157, %158, !dbg !3691
  %162 = zext i1 %161 to i32, !dbg !3691
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3644, metadata !650), !dbg !3684
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3644, metadata !650), !dbg !3684
  br label %253, !dbg !3660

; <label>:163:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3644, metadata !650), !dbg !3692
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3694
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3694
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3644, metadata !650), !dbg !3692
  %164 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3644, metadata !650), !dbg !3692
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3694
  %165 = icmp ult i64 %164, %49, !dbg !3695
  %166 = mul i64 %49, %73, !dbg !3697
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !3698
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3644, metadata !650), !dbg !3692
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3644, metadata !650), !dbg !3692
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3644, metadata !650), !dbg !3692
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3694
  %168 = icmp ult i64 %164, %167, !dbg !3695
  %169 = mul i64 %167, %73, !dbg !3697
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !3698
  %171 = or i1 %165, %168, !dbg !3699
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3644, metadata !650), !dbg !3692
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3644, metadata !650), !dbg !3692
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3644, metadata !650), !dbg !3692
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3694
  %172 = icmp ult i64 %164, %170, !dbg !3695
  %173 = mul i64 %170, %73, !dbg !3697
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !3698
  %175 = or i1 %171, %172, !dbg !3699
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3644, metadata !650), !dbg !3692
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3644, metadata !650), !dbg !3692
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3644, metadata !650), !dbg !3692
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3694
  %176 = icmp ult i64 %164, %174, !dbg !3695
  %177 = mul i64 %174, %73, !dbg !3697
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !3698
  %179 = or i1 %175, %176, !dbg !3699
  %180 = zext i1 %179 to i32, !dbg !3699
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3644, metadata !650), !dbg !3692
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3644, metadata !650), !dbg !3692
  br label %253, !dbg !3660

; <label>:181:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3623, metadata !650), !dbg !3700
  %182 = icmp slt i64 %49, 0, !dbg !3702
  %183 = shl i64 %49, 1, !dbg !3703
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !3704
  %185 = lshr i64 %49, 63, !dbg !3704
  %186 = trunc i64 %185 to i32, !dbg !3704
  call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !3535, metadata !650), !dbg !3636
  br label %253, !dbg !3705

; <label>:187:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3644, metadata !650), !dbg !3706
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3708
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3708
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3644, metadata !650), !dbg !3706
  %188 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3644, metadata !650), !dbg !3706
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3708
  %189 = icmp ult i64 %188, %49, !dbg !3709
  %190 = mul i64 %49, %73, !dbg !3711
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !3712
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3644, metadata !650), !dbg !3706
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3644, metadata !650), !dbg !3706
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3644, metadata !650), !dbg !3706
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3708
  %192 = icmp ult i64 %188, %191, !dbg !3709
  %193 = mul i64 %191, %73, !dbg !3711
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !3712
  %195 = or i1 %189, %192, !dbg !3713
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3644, metadata !650), !dbg !3706
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3644, metadata !650), !dbg !3706
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3644, metadata !650), !dbg !3706
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3708
  %196 = icmp ult i64 %188, %194, !dbg !3709
  %197 = mul i64 %194, %73, !dbg !3711
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !3712
  %199 = or i1 %195, %196, !dbg !3713
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3644, metadata !650), !dbg !3706
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3644, metadata !650), !dbg !3706
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3644, metadata !650), !dbg !3706
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3708
  %200 = icmp ult i64 %188, %198, !dbg !3709
  %201 = mul i64 %198, %73, !dbg !3711
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !3712
  %203 = or i1 %199, %200, !dbg !3713
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3644, metadata !650), !dbg !3706
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3644, metadata !650), !dbg !3706
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3644, metadata !650), !dbg !3706
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3708
  %204 = icmp ult i64 %188, %202, !dbg !3709
  %205 = mul i64 %202, %73, !dbg !3711
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !3712
  %207 = or i1 %203, %204, !dbg !3713
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3644, metadata !650), !dbg !3706
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3644, metadata !650), !dbg !3706
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3644, metadata !650), !dbg !3706
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3708
  %208 = icmp ult i64 %188, %206, !dbg !3709
  %209 = mul i64 %206, %73, !dbg !3711
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !3712
  %211 = or i1 %207, %208, !dbg !3713
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3644, metadata !650), !dbg !3706
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3644, metadata !650), !dbg !3706
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3644, metadata !650), !dbg !3706
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3708
  %212 = icmp ult i64 %188, %210, !dbg !3709
  %213 = mul i64 %210, %73, !dbg !3711
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !3712
  %215 = or i1 %211, %212, !dbg !3713
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3644, metadata !650), !dbg !3706
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3644, metadata !650), !dbg !3706
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3644, metadata !650), !dbg !3706
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3708
  %216 = icmp ult i64 %188, %214, !dbg !3709
  %217 = mul i64 %214, %73, !dbg !3711
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !3712
  %219 = or i1 %215, %216, !dbg !3713
  %220 = zext i1 %219 to i32, !dbg !3713
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3644, metadata !650), !dbg !3706
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3644, metadata !650), !dbg !3706
  br label %253, !dbg !3660

; <label>:221:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3644, metadata !650), !dbg !3714
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3716
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3716
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3644, metadata !650), !dbg !3714
  %222 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3644, metadata !650), !dbg !3714
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3716
  %223 = icmp ult i64 %222, %49, !dbg !3717
  %224 = mul i64 %49, %73, !dbg !3719
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !3720
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3644, metadata !650), !dbg !3714
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3644, metadata !650), !dbg !3714
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3644, metadata !650), !dbg !3714
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3716
  %226 = icmp ult i64 %222, %225, !dbg !3717
  %227 = mul i64 %225, %73, !dbg !3719
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !3720
  %229 = or i1 %223, %226, !dbg !3721
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3644, metadata !650), !dbg !3714
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3644, metadata !650), !dbg !3714
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3644, metadata !650), !dbg !3714
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3716
  %230 = icmp ult i64 %222, %228, !dbg !3717
  %231 = mul i64 %228, %73, !dbg !3719
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !3720
  %233 = or i1 %229, %230, !dbg !3721
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3644, metadata !650), !dbg !3714
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3644, metadata !650), !dbg !3714
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3644, metadata !650), !dbg !3714
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3716
  %234 = icmp ult i64 %222, %232, !dbg !3717
  %235 = mul i64 %232, %73, !dbg !3719
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !3720
  %237 = or i1 %233, %234, !dbg !3721
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3644, metadata !650), !dbg !3714
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3644, metadata !650), !dbg !3714
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3644, metadata !650), !dbg !3714
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3716
  %238 = icmp ult i64 %222, %236, !dbg !3717
  %239 = mul i64 %236, %73, !dbg !3719
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !3720
  %241 = or i1 %237, %238, !dbg !3721
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3644, metadata !650), !dbg !3714
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3644, metadata !650), !dbg !3714
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3644, metadata !650), !dbg !3714
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3716
  %242 = icmp ult i64 %222, %240, !dbg !3717
  %243 = mul i64 %240, %73, !dbg !3719
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !3720
  %245 = or i1 %241, %242, !dbg !3721
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3644, metadata !650), !dbg !3714
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3644, metadata !650), !dbg !3714
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3644, metadata !650), !dbg !3714
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !650), !dbg !3716
  %246 = icmp ult i64 %222, %244, !dbg !3717
  %247 = mul i64 %244, %73, !dbg !3719
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !3720
  %249 = or i1 %245, %246, !dbg !3721
  %250 = zext i1 %249 to i32, !dbg !3721
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3644, metadata !650), !dbg !3714
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3644, metadata !650), !dbg !3714
  br label %253, !dbg !3660

; <label>:251:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3525, metadata !650), !dbg !3573
  store i64 %49, i64* %3, align 8, !dbg !3722, !tbaa !848
  %252 = or i32 %48, 2, !dbg !3723
  br label %265, !dbg !3724

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ]
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ]
  call void @llvm.dbg.value(metadata i32 %255, i64 0, metadata !3535, metadata !650), !dbg !3636
  %256 = or i32 %255, %48, !dbg !3660
  call void @llvm.dbg.value(metadata i32 %256, i64 0, metadata !3526, metadata !650), !dbg !3542
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !3725
  store i8* %257, i8** %25, align 8, !dbg !3725, !tbaa !657
  %258 = load i8, i8* %257, align 1, !dbg !3726, !tbaa !795
  %259 = icmp eq i8 %258, 0, !dbg !3726
  %260 = or i32 %256, 2, !dbg !3728
  call void @llvm.dbg.value(metadata i32 %260, i64 0, metadata !3526, metadata !650), !dbg !3542
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !3729
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !3526, metadata !650), !dbg !3542
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !3526, metadata !650), !dbg !3542
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ]
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ]
  call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !3526, metadata !650), !dbg !3542
  call void @llvm.dbg.value(metadata i64 %263, i64 0, metadata !3525, metadata !650), !dbg !3573
  store i64 %263, i64* %3, align 8, !dbg !3730, !tbaa !848
  br label %265, !dbg !3731

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #12, !dbg !3732
  ret i32 %266, !dbg !3732
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3733 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3736, metadata !650), !dbg !3742
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3737, metadata !650), !dbg !3743
  %3 = icmp eq i64 %0, 0, !dbg !3744
  %4 = icmp eq i64 %1, 0, !dbg !3745
  %5 = or i1 %3, %4, !dbg !3746
  br i1 %5, label %12, label %6, !dbg !3746

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3747
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3739, metadata !650), !dbg !3748
  %8 = udiv i64 %7, %1, !dbg !3749
  %9 = icmp eq i64 %8, %0, !dbg !3751
  br i1 %9, label %12, label %10, !dbg !3752

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3753
  store i32 12, i32* %11, align 4, !dbg !3755, !tbaa !768
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3736, metadata !650), !dbg !3742
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3737, metadata !650), !dbg !3743
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #12, !dbg !3756
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3738, metadata !650), !dbg !3757
  br label %16, !dbg !3758

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3759
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3760 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3777, metadata !650), !dbg !3786
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3778, metadata !650), !dbg !3787
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3779, metadata !650), !dbg !3788
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3780, metadata !650), !dbg !3789
  %6 = bitcast i32* %5 to i8*, !dbg !3790
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3790
  %7 = icmp eq i32* %0, null, !dbg !3791
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3777, metadata !650), !dbg !3786
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3793
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3777, metadata !650), !dbg !3786
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !3794
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3781, metadata !650), !dbg !3795
  %10 = icmp ugt i64 %9, -3, !dbg !3796
  %11 = icmp ne i64 %2, 0, !dbg !3797
  %12 = and i1 %11, %10, !dbg !3798
  br i1 %12, label %13, label %18, !dbg !3798

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !3799
  br i1 %14, label %18, label %15, !dbg !3800

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3801, !tbaa !795
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3783, metadata !650), !dbg !3802
  %17 = zext i8 %16 to i32, !dbg !3803
  store i32 %17, i32* %8, align 4, !dbg !3804, !tbaa !768
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3805
  ret i64 %19, !dbg !3805
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @areadlink(i8*) local_unnamed_addr #6 !dbg !3806 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3809, metadata !650), !dbg !3810
  %2 = tail call i8* @careadlinkat(i32 -100, i8* %0, i8* null, i64 0, %struct.allocator* null, i64 (i32, i8*, i8*, i64)* nonnull @careadlinkatcwd) #12, !dbg !3811
  ret i8* %2, !dbg !3812
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @careadlinkatcwd(i32, i8* nocapture readonly, i8* nocapture, i64) #6 !dbg !3813 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3820, metadata !650), !dbg !3824
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3821, metadata !650), !dbg !3825
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3822, metadata !650), !dbg !3826
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3823, metadata !650), !dbg !3827
  %5 = icmp eq i32 %0, -100, !dbg !3828
  br i1 %5, label %7, label %6, !dbg !3830

; <label>:6:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3831
  unreachable, !dbg !3831

; <label>:7:                                      ; preds = %4
  %8 = tail call i64 @readlink(i8* %1, i8* %2, i64 %3) #12, !dbg !3832
  ret i64 %8, !dbg !3833
}

; Function Attrs: nounwind
declare i64 @readlink(i8* nocapture readonly, i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @careadlinkat(i32, i8*, i8*, i64, %struct.allocator* readonly, i64 (i32, i8*, i8*, i64)* nocapture) local_unnamed_addr #6 !dbg !3834 {
  %7 = alloca [1024 x i8], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3848, metadata !650), !dbg !3875
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3849, metadata !650), !dbg !3876
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3850, metadata !650), !dbg !3877
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3851, metadata !650), !dbg !3878
  tail call void @llvm.dbg.value(metadata %struct.allocator* %4, i64 0, metadata !3852, metadata !650), !dbg !3879
  tail call void @llvm.dbg.value(metadata i64 (i32, i8*, i8*, i64)* %5, i64 0, metadata !3853, metadata !650), !dbg !3880
  tail call void @llvm.dbg.value(metadata i64 -9223372036854775808, i64 0, metadata !3856, metadata !650), !dbg !3881
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0, !dbg !3882
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %8) #12, !dbg !3882
  tail call void @llvm.dbg.declare(metadata [1024 x i8]* %7, metadata !3857, metadata !650), !dbg !3883
  %9 = icmp eq %struct.allocator* %4, null, !dbg !3884
  tail call void @llvm.dbg.value(metadata %struct.allocator* @stdlib_allocator, i64 0, metadata !3852, metadata !650), !dbg !3879
  %10 = select i1 %9, %struct.allocator* @stdlib_allocator, %struct.allocator* %4, !dbg !3886
  tail call void @llvm.dbg.value(metadata %struct.allocator* %10, i64 0, metadata !3852, metadata !650), !dbg !3879
  %11 = icmp eq i64 %3, 0, !dbg !3887
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3850, metadata !650), !dbg !3877
  tail call void @llvm.dbg.value(metadata i64 1024, i64 0, metadata !3851, metadata !650), !dbg !3878
  %12 = select i1 %11, i64 1024, i64 %3, !dbg !3889
  %13 = select i1 %11, i8* %8, i8* %2, !dbg !3889
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !3850, metadata !650), !dbg !3877
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !3851, metadata !650), !dbg !3878
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !3854, metadata !650), !dbg !3890
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !3855, metadata !650), !dbg !3891
  %14 = getelementptr inbounds %struct.allocator, %struct.allocator* %10, i64 0, i32 0
  %15 = getelementptr inbounds %struct.allocator, %struct.allocator* %10, i64 0, i32 2
  br label %16, !dbg !3892, !llvm.loop !3893

; <label>:16:                                     ; preds = %64, %6
  %17 = phi i64 [ %12, %6 ], [ %65, %64 ]
  %18 = phi i8* [ %13, %6 ], [ %67, %64 ]
  call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !3854, metadata !650), !dbg !3890
  call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3855, metadata !650), !dbg !3891
  %19 = call i64 %5(i32 %0, i8* %1, i8* %18, i64 %17) #12, !dbg !3895
  call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3861, metadata !650), !dbg !3896
  %20 = icmp slt i64 %19, 0, !dbg !3897
  br i1 %20, label %21, label %29, !dbg !3898

; <label>:21:                                     ; preds = %16
  %22 = tail call i32* @__errno_location() #17, !dbg !3899
  %23 = load i32, i32* %22, align 4, !dbg !3899, !tbaa !768
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !3864, metadata !650), !dbg !3900
  %24 = icmp eq i32 %23, 34, !dbg !3901
  br i1 %24, label %29, label %25, !dbg !3903

; <label>:25:                                     ; preds = %21
  %26 = icmp eq i8* %18, %13, !dbg !3904
  br i1 %26, label %77, label %27, !dbg !3907

; <label>:27:                                     ; preds = %25
  %28 = load void (i8*)*, void (i8*)** %15, align 8, !dbg !3908, !tbaa !3910
  call void %28(i8* %18) #12, !dbg !3912
  store i32 %23, i32* %22, align 4, !dbg !3913, !tbaa !768
  br label %77, !dbg !3914

; <label>:29:                                     ; preds = %21, %16
  call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3863, metadata !650), !dbg !3915
  %30 = icmp ult i64 %19, %17, !dbg !3916
  br i1 %30, label %31, label %52, !dbg !3917

; <label>:31:                                     ; preds = %29
  %32 = add i64 %19, 1, !dbg !3918
  call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !3863, metadata !650), !dbg !3915
  %33 = getelementptr inbounds i8, i8* %18, i64 %19, !dbg !3919
  store i8 0, i8* %33, align 1, !dbg !3920, !tbaa !795
  %34 = icmp eq i8* %18, %8, !dbg !3921
  br i1 %34, label %35, label %40, !dbg !3922

; <label>:35:                                     ; preds = %31
  %36 = load i8* (i64)*, i8* (i64)** %14, align 8, !dbg !3923, !tbaa !3924
  %37 = call i8* %36(i64 %32) #12, !dbg !3925
  call void @llvm.dbg.value(metadata i8* %37, i64 0, metadata !3867, metadata !650), !dbg !3926
  call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !3855, metadata !650), !dbg !3891
  %38 = icmp eq i8* %37, null, !dbg !3927
  br i1 %38, label %69, label %39, !dbg !3929

; <label>:39:                                     ; preds = %35
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %37, i8* nonnull %8, i64 %32, i32 1, i1 false), !dbg !3930
  call void @llvm.dbg.value(metadata i8* %37, i64 0, metadata !3854, metadata !650), !dbg !3890
  br label %77

; <label>:40:                                     ; preds = %31
  %41 = icmp uge i64 %32, %17, !dbg !3931
  %42 = icmp eq i8* %18, %13, !dbg !3932
  %43 = or i1 %42, %41, !dbg !3933
  br i1 %43, label %77, label %44, !dbg !3933

; <label>:44:                                     ; preds = %40
  %45 = getelementptr inbounds %struct.allocator, %struct.allocator* %10, i64 0, i32 1, !dbg !3934
  %46 = load i8* (i8*, i64)*, i8* (i8*, i64)** %45, align 8, !dbg !3934, !tbaa !3935
  %47 = icmp eq i8* (i8*, i64)* %46, null, !dbg !3936
  br i1 %47, label %77, label %48, !dbg !3937

; <label>:48:                                     ; preds = %44
  %49 = call i8* %46(i8* nonnull %18, i64 %32) #12, !dbg !3938
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !3872, metadata !650), !dbg !3939
  %50 = icmp eq i8* %49, null, !dbg !3940
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !3854, metadata !650), !dbg !3890
  %51 = select i1 %50, i8* %18, i8* %49, !dbg !3942
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !3854, metadata !650), !dbg !3890
  br label %77, !dbg !3943

; <label>:52:                                     ; preds = %29
  %53 = icmp eq i8* %18, %13, !dbg !3944
  br i1 %53, label %56, label %54, !dbg !3946

; <label>:54:                                     ; preds = %52
  %55 = load void (i8*)*, void (i8*)** %15, align 8, !dbg !3947, !tbaa !3910
  call void %55(i8* %18) #12, !dbg !3948
  br label %56, !dbg !3948

; <label>:56:                                     ; preds = %52, %54
  %57 = icmp ult i64 %17, 4611686018427387905, !dbg !3949
  br i1 %57, label %58, label %60, !dbg !3951

; <label>:58:                                     ; preds = %56
  %59 = shl i64 %17, 1, !dbg !3952
  call void @llvm.dbg.value(metadata i64 %59, i64 0, metadata !3855, metadata !650), !dbg !3891
  br label %64, !dbg !3953

; <label>:60:                                     ; preds = %56
  %61 = icmp sgt i64 %17, -1, !dbg !3954
  br i1 %61, label %64, label %62, !dbg !3956

; <label>:62:                                     ; preds = %60
  %63 = tail call i32* @__errno_location() #17, !dbg !3957
  store i32 36, i32* %63, align 4, !dbg !3960, !tbaa !768
  br label %77, !dbg !3961

; <label>:64:                                     ; preds = %58, %60
  %65 = phi i64 [ %59, %58 ], [ -9223372036854775808, %60 ]
  call void @llvm.dbg.value(metadata i64 %65, i64 0, metadata !3855, metadata !650), !dbg !3891
  %66 = load i8* (i64)*, i8* (i64)** %14, align 8, !dbg !3962, !tbaa !3924
  %67 = call i8* %66(i64 %65) #12, !dbg !3963
  call void @llvm.dbg.value(metadata i8* %67, i64 0, metadata !3854, metadata !650), !dbg !3890
  %68 = icmp eq i8* %67, null, !dbg !3964
  br i1 %68, label %69, label %16, !dbg !3964, !llvm.loop !3893

; <label>:69:                                     ; preds = %64, %35
  %70 = phi i64 [ %32, %35 ], [ %65, %64 ]
  %71 = getelementptr inbounds %struct.allocator, %struct.allocator* %10, i64 0, i32 3, !dbg !3965
  %72 = load void (i64)*, void (i64)** %71, align 8, !dbg !3965, !tbaa !3967
  %73 = icmp eq void (i64)* %72, null, !dbg !3968
  br i1 %73, label %75, label %74, !dbg !3969

; <label>:74:                                     ; preds = %69
  call void %72(i64 %70) #12, !dbg !3970
  br label %75, !dbg !3970

; <label>:75:                                     ; preds = %69, %74
  %76 = tail call i32* @__errno_location() #17, !dbg !3971
  store i32 12, i32* %76, align 4, !dbg !3972, !tbaa !768
  br label %77, !dbg !3973

; <label>:77:                                     ; preds = %27, %25, %48, %44, %40, %39, %62, %75
  %78 = phi i8* [ null, %75 ], [ %37, %39 ], [ %18, %40 ], [ %18, %44 ], [ %51, %48 ], [ null, %62 ], [ null, %25 ], [ null, %27 ]
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %8) #12, !dbg !3974
  ret i8* %78, !dbg !3974
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3975 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4020, metadata !650), !dbg !4025
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !4026
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4027, metadata !650), !dbg !4031
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4033
  %4 = load i32, i32* %3, align 8, !dbg !4033, !tbaa !4034
  %5 = and i32 %4, 32, !dbg !4033
  %6 = icmp eq i32 %5, 0, !dbg !4036
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !4037
  %8 = icmp ne i32 %7, 0, !dbg !4038
  br i1 %6, label %9, label %19, !dbg !4039

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4041
  %11 = xor i1 %8, true, !dbg !4042
  %12 = or i1 %10, %11, !dbg !4042
  %13 = sext i1 %8 to i32, !dbg !4042
  br i1 %12, label %22, label %14, !dbg !4042

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4043
  %16 = load i32, i32* %15, align 4, !dbg !4043, !tbaa !768
  %17 = icmp ne i32 %16, 9, !dbg !4044
  %18 = sext i1 %17 to i32, !dbg !4045
  br label %22, !dbg !4045

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4046

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4048
  store i32 0, i32* %21, align 4, !dbg !4050, !tbaa !768
  br label %22, !dbg !4048

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4051
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4052 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4055, metadata !650), !dbg !4058
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4056, metadata !650), !dbg !4059
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !4060
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4057, metadata !650), !dbg !4061
  %3 = icmp eq i8* %2, null, !dbg !4062
  br i1 %3, label %11, label %4, !dbg !4064

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.139, i64 0, i64 0)) #14, !dbg !4065
  %6 = icmp eq i32 %5, 0, !dbg !4070
  br i1 %6, label %10, label %7, !dbg !4071

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.140, i64 0, i64 0)) #14, !dbg !4072
  %9 = icmp eq i32 %8, 0, !dbg !4073
  br i1 %9, label %10, label %11, !dbg !4074

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4056, metadata !650), !dbg !4059
  br label %11, !dbg !4075

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4076
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4077 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4083, metadata !650), !dbg !4157
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4150, metadata !650), !dbg !4160
  %3 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !4161
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4081, metadata !650), !dbg !4162
  %4 = icmp eq i8* %3, null, !dbg !4163
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.143, i64 0, i64 0), i8* %3, !dbg !4165
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4081, metadata !650), !dbg !4162
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4166, !tbaa !657
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4097, metadata !650) #12, !dbg !4167
  %7 = icmp eq i8* %6, null, !dbg !4168
  br i1 %7, label %8, label %123, !dbg !4169

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.144, i64 0, i64 0)) #12, !dbg !4170
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4098, metadata !650) #12, !dbg !4171
  %10 = icmp eq i8* %9, null, !dbg !4172
  br i1 %10, label %14, label %11, !dbg !4174

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4175, !tbaa !795
  %13 = icmp eq i8 %12, 0, !dbg !4176
  br i1 %13, label %14, label %15, !dbg !4177

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4178

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.145, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4098, metadata !650) #12, !dbg !4171
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !4179
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4101, metadata !650) #12, !dbg !4180
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4103, metadata !650) #12, !dbg !4181
  %18 = icmp eq i64 %17, 0, !dbg !4182
  br i1 %18, label %24, label %19, !dbg !4183

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4184
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4184
  %22 = load i8, i8* %21, align 1, !dbg !4184, !tbaa !795
  %23 = icmp ne i8 %22, 47, !dbg !4184
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4185
  %27 = add i64 %17, 14, !dbg !4186
  %28 = add i64 %27, %26, !dbg !4187
  %29 = tail call noalias i8* @malloc(i64 %28) #12, !dbg !4188
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4100, metadata !650) #12, !dbg !4189
  %30 = icmp eq i8* %29, null, !dbg !4190
  br i1 %30, label %121, label %31, !dbg !4190

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #12, !dbg !4191
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4194

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4195, !tbaa !795
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4197
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.146, i64 0, i64 0), i64 14, i32 1, i1 false) #12, !dbg !4198
  br label %37, !dbg !4199

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4197
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.146, i64 0, i64 0), i64 14, i32 1, i1 false) #12, !dbg !4198
  br label %37, !dbg !4199

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #12, !dbg !4200
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4105, metadata !650) #12, !dbg !4201
  %39 = icmp slt i32 %38, 0, !dbg !4202
  br i1 %39, label %119, label %40, !dbg !4203

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.147, i64 0, i64 0)) #12, !dbg !4204
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4106, metadata !650) #12, !dbg !4205
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4206
  br i1 %42, label %43, label %45, !dbg !4207

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #12, !dbg !4208
  br label %119, !dbg !4210

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4147, metadata !650) #12, !dbg !4211
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4148, metadata !650) #12, !dbg !4212
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4213

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !4214

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4147, metadata !650) #12, !dbg !4211
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4148, metadata !650) #12, !dbg !4212
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #12, !dbg !4214
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #12, !dbg !4215
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4216, metadata !650) #12, !dbg !4221
  %54 = load i8*, i8** %48, align 8, !dbg !4223, !tbaa !4224
  %55 = load i8*, i8** %49, align 8, !dbg !4223, !tbaa !4225
  %56 = icmp ult i8* %54, %55, !dbg !4223
  br i1 %56, label %59, label %57, !dbg !4223, !prof !4226

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #12, !dbg !4223
  br label %63, !dbg !4223

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !4223
  store i8* %60, i8** %48, align 8, !dbg !4223, !tbaa !4224
  %61 = load i8, i8* %54, align 1, !dbg !4223, !tbaa !795
  %62 = zext i8 %61 to i32, !dbg !4223
  br label %63, !dbg !4223

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !4223
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !4149, metadata !650) #12, !dbg !4227
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !4228, !llvm.loop !4229

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !4234

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4216, metadata !650) #12, !dbg !4236
  %67 = load i8*, i8** %48, align 8, !dbg !4234, !tbaa !4224
  %68 = load i8*, i8** %49, align 8, !dbg !4234, !tbaa !4225
  %69 = icmp ult i8* %67, %68, !dbg !4234
  br i1 %69, label %72, label %70, !dbg !4234, !prof !4226

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #12, !dbg !4234
  br label %76, !dbg !4234

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !4234
  store i8* %73, i8** %48, align 8, !dbg !4234, !tbaa !4224
  %74 = load i8, i8* %67, align 1, !dbg !4234, !tbaa !795
  %75 = zext i8 %74 to i32, !dbg !4234
  br label %76, !dbg !4234

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !4234
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !4149, metadata !650) #12, !dbg !4227
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !4237, !llvm.loop !4238

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #12, !dbg !4241
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.148, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #12, !dbg !4242
  %81 = icmp slt i32 %80, 2, !dbg !4244
  br i1 %81, label %112, label %82, !dbg !4245

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !4246
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4154, metadata !650) #12, !dbg !4247
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !4248
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !4155, metadata !650) #12, !dbg !4249
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4156, metadata !650) #12, !dbg !4250
  %85 = icmp eq i64 %51, 0, !dbg !4251
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !4253

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !4148, metadata !650) #12, !dbg !4212
  %90 = add i64 %87, 2, !dbg !4254
  %91 = call noalias i8* @malloc(i64 %90) #12, !dbg !4256
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !4147, metadata !650) #12, !dbg !4211
  br label %96, !dbg !4257

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !4258
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !4148, metadata !650) #12, !dbg !4212
  %94 = add i64 %93, 1, !dbg !4260
  %95 = call i8* @realloc(i8* %52, i64 %94) #12, !dbg !4261
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !4147, metadata !650) #12, !dbg !4211
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4147, metadata !650) #12, !dbg !4211
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4148, metadata !650) #12, !dbg !4212
  %99 = icmp eq i8* %98, null, !dbg !4262
  br i1 %99, label %100, label %102, !dbg !4264

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4148, metadata !650) #12, !dbg !4212
  call void @free(i8* %52) #12, !dbg !4265
  br label %112, !dbg !4267

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !4268
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !4268
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !4269
  %104 = xor i64 %84, -1, !dbg !4270
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4270
  %106 = xor i64 %83, -1, !dbg !4271
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !4271
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !4272, metadata !650) #12, !dbg !4279
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !4278, metadata !650) #12, !dbg !4279
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #12, !dbg !4281
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #12, !dbg !4282
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4272, metadata !650) #12, !dbg !4283
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4278, metadata !650) #12, !dbg !4283
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #12, !dbg !4285
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #12, !dbg !4286
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4147, metadata !650) #12, !dbg !4211
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4148, metadata !650) #12, !dbg !4212
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !4268
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !4268
  br label %50, !dbg !4287, !llvm.loop !4238

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !4268
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !4268
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #12, !dbg !4288
  %116 = icmp eq i64 %113, 0, !dbg !4289
  br i1 %116, label %119, label %117, !dbg !4291

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !4292
  store i8 0, i8* %118, align 1, !dbg !4294, !tbaa !795
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.143, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.143, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.143, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !4097, metadata !650) #12, !dbg !4167
  call void @free(i8* %29) #12, !dbg !4295
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.143, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !4097, metadata !650) #12, !dbg !4167
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !4296, !tbaa !657
  br label %123, !dbg !4297

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4097, metadata !650) #12, !dbg !4167
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4082, metadata !650), !dbg !4298
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4082, metadata !650), !dbg !4298
  %125 = load i8, i8* %124, align 1, !dbg !4299, !tbaa !795
  %126 = icmp eq i8 %125, 0, !dbg !4301
  br i1 %126, label %152, label %127, !dbg !4302

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !4303

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !4082, metadata !650), !dbg !4298
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !4303
  %132 = icmp eq i32 %131, 0, !dbg !4305
  br i1 %132, label %139, label %133, !dbg !4306

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !4307
  br i1 %134, label %135, label %143, !dbg !4308

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !4309
  %137 = load i8, i8* %136, align 1, !dbg !4309, !tbaa !795
  %138 = icmp eq i8 %137, 0, !dbg !4310
  br i1 %138, label %139, label %143, !dbg !4311

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !4312
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !4314
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !4315
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !4081, metadata !650), !dbg !4162
  br label %152, !dbg !4316

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !4317
  %145 = add i64 %144, 1, !dbg !4318
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !4319
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4082, metadata !650), !dbg !4298
  %147 = call i64 @strlen(i8* %146) #14, !dbg !4320
  %148 = add i64 %147, 1, !dbg !4321
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !4322
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4082, metadata !650), !dbg !4298
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4082, metadata !650), !dbg !4298
  %150 = load i8, i8* %149, align 1, !dbg !4299, !tbaa !795
  %151 = icmp eq i8 %150, 0, !dbg !4301
  br i1 %151, label %152, label %128, !dbg !4302, !llvm.loop !4323

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4081, metadata !650), !dbg !4162
  %154 = load i8, i8* %153, align 1, !dbg !4325, !tbaa !795
  %155 = icmp eq i8 %154, 0, !dbg !4327
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.149, i64 0, i64 0), i8* %153, !dbg !4328
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !4081, metadata !650), !dbg !4162
  ret i8* %156, !dbg !4329
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4330 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4375, metadata !650), !dbg !4379
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4376, metadata !650), !dbg !4380
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4378, metadata !650), !dbg !4381
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4382
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4377, metadata !650), !dbg !4383
  %3 = icmp slt i32 %2, 0, !dbg !4384
  br i1 %3, label %4, label %6, !dbg !4386

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4387
  br label %24, !dbg !4388

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !4389
  %8 = icmp eq i32 %7, 0, !dbg !4389
  br i1 %8, label %13, label %9, !dbg !4391

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4392
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !4393
  %12 = icmp eq i64 %11, -1, !dbg !4394
  br i1 %12, label %16, label %13, !dbg !4395

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !4396
  %15 = icmp eq i32 %14, 0, !dbg !4396
  br i1 %15, label %16, label %18, !dbg !4397

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4376, metadata !650), !dbg !4380
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4398
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4378, metadata !650), !dbg !4381
  br label %24, !dbg !4399

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4400
  %20 = load i32, i32* %19, align 4, !dbg !4400, !tbaa !768
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4376, metadata !650), !dbg !4380
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4376, metadata !650), !dbg !4380
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4398
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4378, metadata !650), !dbg !4381
  %22 = icmp eq i32 %20, 0, !dbg !4401
  br i1 %22, label %24, label %23, !dbg !4399

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4403, !tbaa !768
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4378, metadata !650), !dbg !4381
  br label %24, !dbg !4405

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4406
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4407 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4452, metadata !650), !dbg !4453
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4454
  br i1 %2, label %6, label %3, !dbg !4456

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !4457
  %5 = icmp eq i32 %4, 0, !dbg !4457
  br i1 %5, label %6, label %8, !dbg !4458

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4459
  br label %17, !dbg !4460

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4461, metadata !650) #12, !dbg !4466
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4468
  %10 = load i32, i32* %9, align 8, !dbg !4468, !tbaa !4034
  %11 = and i32 %10, 256, !dbg !4470
  %12 = icmp eq i32 %11, 0, !dbg !4470
  br i1 %12, label %15, label %13, !dbg !4471

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !4472
  br label %15, !dbg !4472

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4473
  br label %17, !dbg !4474

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4475
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4476 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4522, metadata !650), !dbg !4528
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4523, metadata !650), !dbg !4529
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4524, metadata !650), !dbg !4530
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4531
  %5 = load i8*, i8** %4, align 8, !dbg !4531, !tbaa !4225
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4532
  %7 = load i8*, i8** %6, align 8, !dbg !4532, !tbaa !4224
  %8 = icmp eq i8* %5, %7, !dbg !4533
  br i1 %8, label %9, label %28, !dbg !4534

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4535
  %11 = load i8*, i8** %10, align 8, !dbg !4535, !tbaa !4536
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4537
  %13 = load i8*, i8** %12, align 8, !dbg !4537, !tbaa !4538
  %14 = icmp eq i8* %11, %13, !dbg !4539
  br i1 %14, label %15, label %28, !dbg !4540

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4541
  %17 = load i8*, i8** %16, align 8, !dbg !4541, !tbaa !4542
  %18 = icmp eq i8* %17, null, !dbg !4543
  br i1 %18, label %19, label %28, !dbg !4544

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4545
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !4546
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4525, metadata !650), !dbg !4547
  %22 = icmp eq i64 %21, -1, !dbg !4548
  br i1 %22, label %30, label %23, !dbg !4550

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4551
  %25 = load i32, i32* %24, align 8, !dbg !4552, !tbaa !4034
  %26 = and i32 %25, -17, !dbg !4552
  store i32 %26, i32* %24, align 8, !dbg !4552, !tbaa !4034
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4553
  store i64 %21, i64* %27, align 8, !dbg !4554, !tbaa !4555
  br label %30, !dbg !4556

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4557
  br label %30, !dbg !4558

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4559
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
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !80, !86, !575, !577, !579, !95, !582, !585, !102, !109, !587, !193, !594, !611, !613, !615, !619, !621, !624, !626, !629, !631, !202, !633, !635, !637, !551}
!llvm.ident = !{!639, !639, !639, !639, !639, !639, !639, !639, !639, !639, !639, !639, !639, !639, !639, !639, !639, !639, !639, !639, !639, !639, !639, !639, !639, !639, !639, !639}
!llvm.module.flags = !{!640, !641, !642, !643, !644}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 49, type: !66, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !20, globals: !29)
!3 = !DIFile(filename: "src/stdbuf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !12}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 87, size: 32, elements: !7)
!6 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!7 = !{!8, !9, !10, !11}
!8 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124)
!9 = !DIEnumerator(name: "EXIT_CANCELED", value: 125)
!10 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126)
!11 = !DIEnumerator(name: "EXIT_ENOENT", value: 127)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !13, line: 26, size: 32, elements: !14)
!13 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!14 = !{!15, !16, !17, !18, !19}
!15 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!16 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!17 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!18 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!19 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!20 = !{!21, !23, !24}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !25, line: 112, baseType: !26)
!25 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !27, line: 62, baseType: !28)
!27 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!28 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!29 = !{!30, !32, !45, !0}
!30 = !DIGlobalVariableExpression(var: !31)
!31 = distinct !DIGlobalVariable(name: "program_path", scope: !2, file: !3, line: 40, type: !21, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33)
!33 = distinct !DIGlobalVariable(name: "stdbuf", scope: !2, file: !3, line: 47, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 576, elements: !43)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 42, size: 192, elements: !36)
!36 = !{!37, !40, !42}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !35, file: !3, line: 44, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !39, line: 62, baseType: !28)
!39 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!40 = !DIDerivedType(tag: DW_TAG_member, name: "optc", scope: !35, file: !3, line: 45, baseType: !41, size: 32, offset: 64)
!41 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "optarg", scope: !35, file: !3, line: 46, baseType: !21, size: 64, offset: 128)
!43 = !{!44}
!44 = !DISubrange(count: 3)
!45 = !DIGlobalVariableExpression(var: !46)
!46 = distinct !DIGlobalVariable(name: "infomap", scope: !47, file: !6, line: 632, type: !63, isLocal: true, isDefinition: true)
!47 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !6, file: !6, line: 630, type: !48, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !52)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!52 = !{!53, !54, !55, !62}
!53 = !DILocalVariable(name: "program", arg: 1, scope: !47, file: !6, line: 630, type: !50)
!54 = !DILocalVariable(name: "node", scope: !47, file: !6, line: 642, type: !50)
!55 = !DILocalVariable(name: "map_prog", scope: !47, file: !6, line: 643, type: !56)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !47, file: !6, line: 632, size: 128, elements: !59)
!59 = !{!60, !61}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !58, file: !6, line: 632, baseType: !50, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !58, file: !6, line: 632, baseType: !50, size: 64, offset: 64)
!62 = !DILocalVariable(name: "lc_messages", scope: !47, file: !6, line: 655, type: !50)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 896, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 7)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 1536, elements: !76)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !69, line: 50, size: 256, elements: !70)
!69 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!70 = !{!71, !72, !73, !75}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !68, file: !69, line: 52, baseType: !50, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !68, file: !69, line: 55, baseType: !41, size: 32, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !68, file: !69, line: 56, baseType: !74, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !68, file: !69, line: 57, baseType: !41, size: 32, offset: 192)
!76 = !{!77}
!77 = !DISubrange(count: 6)
!78 = !DIGlobalVariableExpression(var: !79)
!79 = distinct !DIGlobalVariable(name: "Version", scope: !80, file: !81, line: 2, type: !50, isLocal: false, isDefinition: true)
!80 = distinct !DICompileUnit(language: DW_LANG_C99, file: !81, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, globals: !83)
!81 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!82 = !{}
!83 = !{!78}
!84 = !DIGlobalVariableExpression(var: !85)
!85 = distinct !DIGlobalVariable(name: "file_name", scope: !86, file: !91, line: 36, type: !50, isLocal: true, isDefinition: true)
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, globals: !88)
!87 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!88 = !{!84, !89}
!89 = !DIGlobalVariableExpression(var: !90)
!90 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !86, file: !91, line: 46, type: !92, isLocal: true, isDefinition: true)
!91 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!92 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!93 = !DIGlobalVariableExpression(var: !94)
!94 = distinct !DIGlobalVariable(name: "exit_failure", scope: !95, file: !98, line: 24, type: !99, isLocal: false, isDefinition: true)
!95 = distinct !DICompileUnit(language: DW_LANG_C99, file: !96, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, globals: !97)
!96 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!97 = !{!93}
!98 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!99 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !41)
!100 = !DIGlobalVariableExpression(var: !101)
!101 = distinct !DIGlobalVariable(name: "program_name", scope: !102, file: !106, line: 33, type: !50, isLocal: false, isDefinition: true)
!102 = distinct !DICompileUnit(language: DW_LANG_C99, file: !103, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !104, globals: !105)
!103 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!104 = !{!23, !21}
!105 = !{!100}
!106 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!107 = !DIGlobalVariableExpression(var: !108)
!108 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !109, file: !151, line: 77, type: !187, isLocal: false, isDefinition: true)
!109 = distinct !DICompileUnit(language: DW_LANG_C99, file: !110, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !111, retainedTypes: !146, globals: !148)
!110 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!111 = !{!112, !126, !131}
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !113, line: 32, size: 32, elements: !114)
!113 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125}
!115 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!116 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!117 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!118 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!119 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!120 = !DIEnumerator(name: "c_quoting_style", value: 5)
!121 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!122 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!123 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!124 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!125 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !113, line: 242, size: 32, elements: !127)
!127 = !{!128, !129, !130}
!128 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!129 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!130 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !132, line: 46, size: 32, elements: !133)
!132 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!133 = !{!134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145}
!134 = !DIEnumerator(name: "_ISupper", value: 256)
!135 = !DIEnumerator(name: "_ISlower", value: 512)
!136 = !DIEnumerator(name: "_ISalpha", value: 1024)
!137 = !DIEnumerator(name: "_ISdigit", value: 2048)
!138 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!139 = !DIEnumerator(name: "_ISspace", value: 8192)
!140 = !DIEnumerator(name: "_ISprint", value: 16384)
!141 = !DIEnumerator(name: "_ISgraph", value: 32768)
!142 = !DIEnumerator(name: "_ISblank", value: 1)
!143 = !DIEnumerator(name: "_IScntrl", value: 2)
!144 = !DIEnumerator(name: "_ISpunct", value: 4)
!145 = !DIEnumerator(name: "_ISalnum", value: 8)
!146 = !{!41, !147, !38, !21}
!147 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!148 = !{!107, !149, !156, !169, !171, !176, !183, !185}
!149 = !DIGlobalVariableExpression(var: !150)
!150 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !109, file: !151, line: 93, type: !152, isLocal: false, isDefinition: true)
!151 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 320, elements: !154)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!154 = !{!155}
!155 = !DISubrange(count: 10)
!156 = !DIGlobalVariableExpression(var: !157)
!157 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !109, file: !151, line: 1043, type: !158, isLocal: false, isDefinition: true)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !151, line: 57, size: 448, elements: !159)
!159 = !{!160, !161, !162, !167, !168}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !158, file: !151, line: 60, baseType: !112, size: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !158, file: !151, line: 63, baseType: !41, size: 32, offset: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !158, file: !151, line: 67, baseType: !163, size: 256, offset: 64)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 256, elements: !165)
!164 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!165 = !{!166}
!166 = !DISubrange(count: 8)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !158, file: !151, line: 70, baseType: !50, size: 64, offset: 320)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !158, file: !151, line: 73, baseType: !50, size: 64, offset: 384)
!169 = !DIGlobalVariableExpression(var: !170)
!170 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !109, file: !151, line: 108, type: !158, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172)
!172 = distinct !DIGlobalVariable(name: "slot0", scope: !109, file: !151, line: 834, type: !173, isLocal: true, isDefinition: true)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 256)
!176 = !DIGlobalVariableExpression(var: !177)
!177 = distinct !DIGlobalVariable(name: "slotvec", scope: !109, file: !151, line: 837, type: !178, isLocal: true, isDefinition: true)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !151, line: 826, size: 128, elements: !180)
!180 = !{!181, !182}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !179, file: !151, line: 828, baseType: !38, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !179, file: !151, line: 829, baseType: !21, size: 64, offset: 64)
!183 = !DIGlobalVariableExpression(var: !184)
!184 = distinct !DIGlobalVariable(name: "nslots", scope: !109, file: !151, line: 835, type: !41, isLocal: true, isDefinition: true)
!185 = !DIGlobalVariableExpression(var: !186)
!186 = distinct !DIGlobalVariable(name: "slotvec0", scope: !109, file: !151, line: 836, type: !179, isLocal: true, isDefinition: true)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 704, elements: !189)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!189 = !{!190}
!190 = !DISubrange(count: 11)
!191 = !DIGlobalVariableExpression(var: !192)
!192 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !193, file: !196, line: 26, type: !197, isLocal: false, isDefinition: true)
!193 = distinct !DICompileUnit(language: DW_LANG_C99, file: !194, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, globals: !195)
!194 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!195 = !{!191}
!196 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 376, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 47)
!200 = !DIGlobalVariableExpression(var: !201)
!201 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !202, file: !547, line: 120, type: !548, isLocal: true, isDefinition: true)
!202 = distinct !DICompileUnit(language: DW_LANG_C99, file: !203, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !204, retainedTypes: !543, globals: !546)
!203 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!204 = !{!205}
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !206, line: 41, size: 32, elements: !207)
!206 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!207 = !{!208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542}
!208 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!209 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!210 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!211 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!212 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!213 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!214 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!215 = !DIEnumerator(name: "DAY_1", value: 131079)
!216 = !DIEnumerator(name: "DAY_2", value: 131080)
!217 = !DIEnumerator(name: "DAY_3", value: 131081)
!218 = !DIEnumerator(name: "DAY_4", value: 131082)
!219 = !DIEnumerator(name: "DAY_5", value: 131083)
!220 = !DIEnumerator(name: "DAY_6", value: 131084)
!221 = !DIEnumerator(name: "DAY_7", value: 131085)
!222 = !DIEnumerator(name: "ABMON_1", value: 131086)
!223 = !DIEnumerator(name: "ABMON_2", value: 131087)
!224 = !DIEnumerator(name: "ABMON_3", value: 131088)
!225 = !DIEnumerator(name: "ABMON_4", value: 131089)
!226 = !DIEnumerator(name: "ABMON_5", value: 131090)
!227 = !DIEnumerator(name: "ABMON_6", value: 131091)
!228 = !DIEnumerator(name: "ABMON_7", value: 131092)
!229 = !DIEnumerator(name: "ABMON_8", value: 131093)
!230 = !DIEnumerator(name: "ABMON_9", value: 131094)
!231 = !DIEnumerator(name: "ABMON_10", value: 131095)
!232 = !DIEnumerator(name: "ABMON_11", value: 131096)
!233 = !DIEnumerator(name: "ABMON_12", value: 131097)
!234 = !DIEnumerator(name: "MON_1", value: 131098)
!235 = !DIEnumerator(name: "MON_2", value: 131099)
!236 = !DIEnumerator(name: "MON_3", value: 131100)
!237 = !DIEnumerator(name: "MON_4", value: 131101)
!238 = !DIEnumerator(name: "MON_5", value: 131102)
!239 = !DIEnumerator(name: "MON_6", value: 131103)
!240 = !DIEnumerator(name: "MON_7", value: 131104)
!241 = !DIEnumerator(name: "MON_8", value: 131105)
!242 = !DIEnumerator(name: "MON_9", value: 131106)
!243 = !DIEnumerator(name: "MON_10", value: 131107)
!244 = !DIEnumerator(name: "MON_11", value: 131108)
!245 = !DIEnumerator(name: "MON_12", value: 131109)
!246 = !DIEnumerator(name: "AM_STR", value: 131110)
!247 = !DIEnumerator(name: "PM_STR", value: 131111)
!248 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!249 = !DIEnumerator(name: "D_FMT", value: 131113)
!250 = !DIEnumerator(name: "T_FMT", value: 131114)
!251 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!252 = !DIEnumerator(name: "ERA", value: 131116)
!253 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!254 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!255 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!256 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!257 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!258 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!259 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!260 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!261 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!262 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!263 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!264 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!265 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!266 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!267 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!268 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!269 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!270 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!271 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!272 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!273 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!274 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!275 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!276 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!277 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!278 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!279 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!280 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!281 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!282 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!283 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!284 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!285 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!286 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!287 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!288 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!289 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!290 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!291 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!292 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!293 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!294 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!295 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!296 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!297 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!298 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!299 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!300 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!301 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!302 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!303 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!304 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!305 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!306 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!307 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!308 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!309 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!310 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!311 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!312 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!313 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!314 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!315 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!316 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!317 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!318 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!319 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!320 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!321 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!322 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!323 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!324 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!325 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!326 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!327 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!328 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!329 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!330 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!331 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!332 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!333 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!334 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!335 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!336 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!337 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!338 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!339 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!340 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!341 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!342 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!343 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!344 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!345 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!346 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!347 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!348 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!349 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!350 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!351 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!352 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!353 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!354 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!355 = !DIEnumerator(name: "CODESET", value: 14)
!356 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!357 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!358 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!359 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!360 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!361 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!362 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!363 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!364 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!365 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!366 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!367 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!368 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!369 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!370 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!371 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!372 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!373 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!374 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!375 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!376 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!377 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!378 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!379 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!380 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!381 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!382 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!383 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!384 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!385 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!386 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!387 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!388 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!389 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!390 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!391 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!392 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!393 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!394 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!395 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!396 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!397 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!398 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!399 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!400 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!401 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!402 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!403 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!404 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!405 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!406 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!407 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!408 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!409 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!410 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!411 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!412 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!413 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!414 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!415 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!416 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!417 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!418 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!419 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!420 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!421 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!422 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!423 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!424 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!425 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!426 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!427 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!428 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!429 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!430 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!431 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!432 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!433 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!434 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!435 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!436 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!437 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!438 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!439 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!440 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!441 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!442 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!443 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!444 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!445 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!446 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!447 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!448 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!449 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!450 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!451 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!452 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!453 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!454 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!455 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!456 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!457 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!458 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!459 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!460 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!461 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!462 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!463 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!464 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!465 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!466 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!467 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!468 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!469 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!470 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!471 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!472 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!473 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!474 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!475 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!476 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!477 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!478 = !DIEnumerator(name: "THOUSEP", value: 65537)
!479 = !DIEnumerator(name: "__GROUPING", value: 65538)
!480 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!481 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!482 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!483 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!484 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!485 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!486 = !DIEnumerator(name: "__YESSTR", value: 327682)
!487 = !DIEnumerator(name: "__NOSTR", value: 327683)
!488 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!489 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!490 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!491 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!492 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!493 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!494 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!495 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!496 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!497 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!498 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!499 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!500 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!501 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!502 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!503 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!504 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!505 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!506 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!507 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!508 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!509 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!510 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!511 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!512 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!513 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!514 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!515 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!516 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!517 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!518 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!519 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!520 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!521 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!522 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!523 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!524 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!525 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!526 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!527 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!528 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!529 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!530 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!531 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!532 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!533 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!534 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!535 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!536 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!537 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!538 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!539 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!540 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!541 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!542 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!543 = !{!23, !21, !544}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!546 = !{!200}
!547 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!548 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !50)
!549 = !DIGlobalVariableExpression(var: !550)
!550 = distinct !DIGlobalVariable(name: "stdlib_allocator", scope: !551, file: !554, line: 5, type: !555, isLocal: false, isDefinition: true)
!551 = distinct !DICompileUnit(language: DW_LANG_C99, file: !552, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, globals: !553)
!552 = !DIFile(filename: "./lib/allocator.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!553 = !{!549}
!554 = !DIFile(filename: "lib/allocator.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !556)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator", file: !557, line: 27, size: 256, elements: !558)
!557 = !DIFile(filename: "./lib/allocator.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!558 = !{!559, !563, !567, !571}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "allocate", scope: !556, file: !557, line: 37, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!23, !38}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "reallocate", scope: !556, file: !557, line: 43, baseType: !564, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!23, !23, !38}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !556, file: !557, line: 46, baseType: !568, size: 64, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !23}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !556, file: !557, line: 52, baseType: !572, size: 64, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !38}
!575 = distinct !DICompileUnit(language: DW_LANG_C99, file: !576, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82)
!576 = !DIFile(filename: "./lib/dirname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!577 = distinct !DICompileUnit(language: DW_LANG_C99, file: !578, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82)
!578 = !DIFile(filename: "./lib/dirname-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!579 = distinct !DICompileUnit(language: DW_LANG_C99, file: !580, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !581)
!580 = !DIFile(filename: "./lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!581 = !{!21}
!582 = distinct !DICompileUnit(language: DW_LANG_C99, file: !583, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !584)
!583 = !DIFile(filename: "./lib/filenamecat.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!584 = !{!23}
!585 = distinct !DICompileUnit(language: DW_LANG_C99, file: !586, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !584)
!586 = !DIFile(filename: "./lib/filenamecat-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!587 = distinct !DICompileUnit(language: DW_LANG_C99, file: !588, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !589, retainedTypes: !584)
!588 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!589 = !{!590}
!590 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !591, line: 41, size: 32, elements: !592)
!591 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!592 = !{!593}
!593 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!594 = distinct !DICompileUnit(language: DW_LANG_C99, file: !595, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !596, retainedTypes: !610)
!595 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!596 = !{!597}
!597 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !599, file: !598, line: 192, size: 32, elements: !608)
!598 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!599 = distinct !DISubprogram(name: "x2nrealloc", scope: !598, file: !598, line: 180, type: !600, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !594, variables: !603)
!600 = !DISubroutineType(types: !601)
!601 = !{!23, !23, !602, !38}
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!603 = !{!604, !605, !606, !607}
!604 = !DILocalVariable(name: "p", arg: 1, scope: !599, file: !598, line: 180, type: !23)
!605 = !DILocalVariable(name: "pn", arg: 2, scope: !599, file: !598, line: 180, type: !602)
!606 = !DILocalVariable(name: "s", arg: 3, scope: !599, file: !598, line: 180, type: !38)
!607 = !DILocalVariable(name: "n", scope: !599, file: !598, line: 182, type: !38)
!608 = !{!609}
!609 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!610 = !{!38, !21, !23}
!611 = distinct !DICompileUnit(language: DW_LANG_C99, file: !612, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82)
!612 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!613 = distinct !DICompileUnit(language: DW_LANG_C99, file: !614, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !584)
!614 = !DIFile(filename: "./lib/xreadlink.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!615 = distinct !DICompileUnit(language: DW_LANG_C99, file: !616, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !617, retainedTypes: !618)
!616 = !DIFile(filename: "./lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!617 = !{!12, !131}
!618 = !{!41, !147}
!619 = distinct !DICompileUnit(language: DW_LANG_C99, file: !620, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !584)
!620 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!621 = distinct !DICompileUnit(language: DW_LANG_C99, file: !622, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !623)
!622 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!623 = !{!38}
!624 = distinct !DICompileUnit(language: DW_LANG_C99, file: !625, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82)
!625 = !DIFile(filename: "./lib/areadlink.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!626 = distinct !DICompileUnit(language: DW_LANG_C99, file: !627, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !628)
!627 = !DIFile(filename: "./lib/careadlinkat.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!628 = !{!38, !21}
!629 = distinct !DICompileUnit(language: DW_LANG_C99, file: !630, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82)
!630 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!631 = distinct !DICompileUnit(language: DW_LANG_C99, file: !632, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82)
!632 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!633 = distinct !DICompileUnit(language: DW_LANG_C99, file: !634, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82)
!634 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!635 = distinct !DICompileUnit(language: DW_LANG_C99, file: !636, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !584)
!636 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!637 = distinct !DICompileUnit(language: DW_LANG_C99, file: !638, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !584)
!638 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!639 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!640 = !{i32 2, !"Dwarf Version", i32 4}
!641 = !{i32 2, !"Debug Info Version", i32 3}
!642 = !{i32 1, !"wchar_size", i32 4}
!643 = !{i32 7, !"PIC Level", i32 2}
!644 = !{i32 7, !"PIE Level", i32 2}
!645 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 85, type: !646, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !648)
!646 = !DISubroutineType(types: !647)
!647 = !{null, !41}
!648 = !{!649}
!649 = !DILocalVariable(name: "status", arg: 1, scope: !645, file: !3, line: 85, type: !41)
!650 = !DIExpression()
!651 = !DILocation(line: 85, column: 12, scope: !645)
!652 = !DILocation(line: 87, column: 14, scope: !653)
!653 = distinct !DILexicalBlock(scope: !645, file: !3, line: 87, column: 7)
!654 = !DILocation(line: 87, column: 7, scope: !645)
!655 = !DILocation(line: 88, column: 5, scope: !656)
!656 = distinct !DILexicalBlock(scope: !653, file: !3, line: 88, column: 5)
!657 = !{!658, !658, i64 0}
!658 = !{!"any pointer", !659, i64 0}
!659 = !{!"omnipotent char", !660, i64 0}
!660 = !{!"Simple C/C++ TBAA"}
!661 = !DILocation(line: 91, column: 7, scope: !662)
!662 = distinct !DILexicalBlock(scope: !653, file: !3, line: 90, column: 5)
!663 = !DILocation(line: 92, column: 7, scope: !662)
!664 = !DILocation(line: 587, column: 3, scope: !665, inlinedAt: !668)
!665 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !6, file: !6, line: 585, type: !666, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !82)
!666 = !DISubroutineType(types: !667)
!667 = !{null}
!668 = distinct !DILocation(line: 96, column: 7, scope: !662)
!669 = !DILocation(line: 98, column: 7, scope: !662)
!670 = !DILocation(line: 103, column: 7, scope: !662)
!671 = !DILocation(line: 104, column: 7, scope: !662)
!672 = !DILocation(line: 105, column: 7, scope: !662)
!673 = !DILocation(line: 108, column: 7, scope: !662)
!674 = !DILocation(line: 111, column: 7, scope: !662)
!675 = !DILocation(line: 117, column: 7, scope: !662)
!676 = !DILocation(line: 642, column: 15, scope: !47, inlinedAt: !677)
!677 = distinct !DILocation(line: 123, column: 7, scope: !662)
!678 = !DILocation(line: 651, column: 3, scope: !47, inlinedAt: !677)
!679 = !DILocation(line: 655, column: 29, scope: !47, inlinedAt: !677)
!680 = !DILocation(line: 655, column: 15, scope: !47, inlinedAt: !677)
!681 = !DILocation(line: 656, column: 7, scope: !682, inlinedAt: !677)
!682 = distinct !DILexicalBlock(scope: !47, file: !6, line: 656, column: 7)
!683 = !DILocation(line: 656, column: 19, scope: !682, inlinedAt: !677)
!684 = !DILocation(line: 656, column: 22, scope: !682, inlinedAt: !677)
!685 = !DILocation(line: 656, column: 7, scope: !47, inlinedAt: !677)
!686 = !DILocation(line: 662, column: 7, scope: !687, inlinedAt: !677)
!687 = distinct !DILexicalBlock(scope: !682, file: !6, line: 657, column: 5)
!688 = !DILocation(line: 664, column: 5, scope: !687, inlinedAt: !677)
!689 = !DILocation(line: 665, column: 3, scope: !47, inlinedAt: !677)
!690 = !DILocation(line: 667, column: 3, scope: !47, inlinedAt: !677)
!691 = !DILocation(line: 125, column: 3, scope: !645)
!692 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 312, type: !693, isLocal: false, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !696)
!693 = !DISubroutineType(types: !694)
!694 = !{!41, !41, !695}
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!696 = !{!697, !698, !699, !700, !702}
!697 = !DILocalVariable(name: "argc", arg: 1, scope: !692, file: !3, line: 312, type: !41)
!698 = !DILocalVariable(name: "argv", arg: 2, scope: !692, file: !3, line: 312, type: !695)
!699 = !DILocalVariable(name: "c", scope: !692, file: !3, line: 314, type: !41)
!700 = !DILocalVariable(name: "opt_fileno", scope: !701, file: !3, line: 327, type: !41)
!701 = distinct !DILexicalBlock(scope: !692, file: !3, line: 326, column: 5)
!702 = !DILocalVariable(name: "exit_status", scope: !692, file: !3, line: 391, type: !41)
!703 = !DILocalVariable(name: "search_path", scope: !704, file: !3, line: 215, type: !751)
!704 = distinct !DISubprogram(name: "set_LD_PRELOAD", scope: !3, file: !3, line: 188, type: !666, isLocal: true, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !705)
!705 = !{!706, !707, !708, !709, !703, !710, !712, !713}
!706 = !DILocalVariable(name: "ret", scope: !704, file: !3, line: 190, type: !41)
!707 = !DILocalVariable(name: "preload_env", scope: !704, file: !3, line: 194, type: !50)
!708 = !DILocalVariable(name: "old_libs", scope: !704, file: !3, line: 196, type: !21)
!709 = !DILocalVariable(name: "LD_PRELOAD", scope: !704, file: !3, line: 197, type: !21)
!710 = !DILocalVariable(name: "path", scope: !704, file: !3, line: 221, type: !711)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!712 = !DILocalVariable(name: "libstdbuf", scope: !704, file: !3, line: 222, type: !21)
!713 = !DILocalVariable(name: "sb", scope: !714, file: !3, line: 226, type: !715)
!714 = distinct !DILexicalBlock(scope: !704, file: !3, line: 225, column: 5)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !716, line: 46, size: 1152, elements: !717)
!716 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!717 = !{!718, !720, !722, !724, !726, !728, !730, !731, !732, !735, !737, !739, !747, !748, !749}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !715, file: !716, line: 48, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !27, line: 133, baseType: !28)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !715, file: !716, line: 53, baseType: !721, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !27, line: 136, baseType: !28)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !715, file: !716, line: 61, baseType: !723, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !27, line: 139, baseType: !28)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !715, file: !716, line: 62, baseType: !725, size: 32, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !27, line: 138, baseType: !164)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !715, file: !716, line: 64, baseType: !727, size: 32, offset: 224)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !27, line: 134, baseType: !164)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !715, file: !716, line: 65, baseType: !729, size: 32, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !27, line: 135, baseType: !164)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !715, file: !716, line: 67, baseType: !41, size: 32, offset: 288)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !715, file: !716, line: 69, baseType: !719, size: 64, offset: 320)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !715, file: !716, line: 74, baseType: !733, size: 64, offset: 384)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !27, line: 140, baseType: !734)
!734 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !715, file: !716, line: 78, baseType: !736, size: 64, offset: 448)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !27, line: 162, baseType: !734)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !715, file: !716, line: 80, baseType: !738, size: 64, offset: 512)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !27, line: 167, baseType: !734)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !715, file: !716, line: 91, baseType: !740, size: 128, offset: 576)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !741, line: 8, size: 128, elements: !742)
!741 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!742 = !{!743, !745}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !740, file: !741, line: 10, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !27, line: 148, baseType: !734)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !740, file: !741, line: 11, baseType: !746, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !27, line: 184, baseType: !734)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !715, file: !716, line: 92, baseType: !740, size: 128, offset: 704)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !715, file: !716, line: 93, baseType: !740, size: 128, offset: 832)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !715, file: !716, line: 106, baseType: !750, size: 192, offset: 960)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !746, size: 192, elements: !43)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 192, elements: !43)
!752 = !DILocation(line: 215, column: 21, scope: !704, inlinedAt: !753)
!753 = distinct !DILocation(line: 386, column: 3, scope: !692)
!754 = !DILocation(line: 312, column: 11, scope: !692)
!755 = !DILocation(line: 312, column: 24, scope: !692)
!756 = !DILocation(line: 317, column: 21, scope: !692)
!757 = !DILocation(line: 317, column: 3, scope: !692)
!758 = !DILocation(line: 318, column: 3, scope: !692)
!759 = !DILocation(line: 319, column: 3, scope: !692)
!760 = !DILocation(line: 320, column: 3, scope: !692)
!761 = !DILocalVariable(name: "status", arg: 1, scope: !762, file: !6, line: 99, type: !41)
!762 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !6, file: !6, line: 99, type: !646, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !763)
!763 = !{!761}
!764 = !DILocation(line: 99, column: 30, scope: !762, inlinedAt: !765)
!765 = distinct !DILocation(line: 322, column: 3, scope: !692)
!766 = !DILocation(line: 102, column: 18, scope: !767, inlinedAt: !765)
!767 = distinct !DILexicalBlock(scope: !762, file: !6, line: 101, column: 7)
!768 = !{!769, !769, i64 0}
!769 = !{!"int", !659, i64 0}
!770 = !DILocation(line: 323, column: 3, scope: !692)
!771 = !DILocation(line: 325, column: 3, scope: !692)
!772 = !DILocation(line: 325, column: 15, scope: !692)
!773 = !DILocation(line: 314, column: 7, scope: !692)
!774 = !DILocalVariable(name: "ret", scope: !775, file: !3, line: 169, type: !41)
!775 = distinct !DISubprogram(name: "optc_to_fileno", scope: !3, file: !3, line: 167, type: !776, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !778)
!776 = !DISubroutineType(types: !777)
!777 = !{!41, !41}
!778 = !{!779, !774}
!779 = !DILocalVariable(name: "c", arg: 1, scope: !775, file: !3, line: 167, type: !41)
!780 = !DILocation(line: 169, column: 7, scope: !775, inlinedAt: !781)
!781 = distinct !DILocation(line: 335, column: 24, scope: !782)
!782 = distinct !DILexicalBlock(scope: !701, file: !3, line: 330, column: 9)
!783 = !DILocation(line: 178, column: 7, scope: !784, inlinedAt: !781)
!784 = distinct !DILexicalBlock(scope: !775, file: !3, line: 172, column: 5)
!785 = !DILocation(line: 181, column: 7, scope: !784, inlinedAt: !781)
!786 = !DILocation(line: 327, column: 11, scope: !701)
!787 = !DILocation(line: 337, column: 30, scope: !782)
!788 = !DILocation(line: 337, column: 35, scope: !782)
!789 = !{!790, !769, i64 8}
!790 = !{!"", !791, i64 0, !769, i64 8, !658, i64 16}
!791 = !{!"long", !659, i64 0}
!792 = !DILocation(line: 338, column: 30, scope: !782)
!793 = !DILocation(line: 338, column: 11, scope: !782)
!794 = !DILocation(line: 338, column: 29, scope: !782)
!795 = !{!659, !659, i64 0}
!796 = !DILocalVariable(name: "c", arg: 1, scope: !797, file: !798, line: 300, type: !41)
!797 = distinct !DISubprogram(name: "c_isspace", scope: !798, file: !798, line: 300, type: !799, isLocal: false, isDefinition: true, scopeLine: 301, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !801)
!798 = !DIFile(filename: "./lib/c-ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!799 = !DISubroutineType(types: !800)
!800 = !{!92, !41}
!801 = !{!796}
!802 = !DILocation(line: 300, column: 16, scope: !797, inlinedAt: !803)
!803 = distinct !DILocation(line: 338, column: 18, scope: !782)
!804 = !DILocation(line: 302, column: 3, scope: !797, inlinedAt: !803)
!805 = !DILocation(line: 339, column: 19, scope: !782)
!806 = distinct !{!806, !793, !805}
!807 = !DILocation(line: 340, column: 30, scope: !782)
!808 = !DILocation(line: 340, column: 37, scope: !782)
!809 = !{!790, !658, i64 16}
!810 = !DILocation(line: 341, column: 17, scope: !811)
!811 = distinct !DILexicalBlock(scope: !782, file: !3, line: 341, column: 15)
!812 = !DILocation(line: 341, column: 24, scope: !811)
!813 = !DILocation(line: 341, column: 27, scope: !811)
!814 = !DILocation(line: 341, column: 35, scope: !811)
!815 = !DILocation(line: 341, column: 15, scope: !782)
!816 = !DILocation(line: 346, column: 28, scope: !817)
!817 = distinct !DILexicalBlock(scope: !811, file: !3, line: 342, column: 13)
!818 = !DILocation(line: 346, column: 15, scope: !817)
!819 = !DILocation(line: 347, column: 15, scope: !817)
!820 = !DILocation(line: 350, column: 16, scope: !821)
!821 = distinct !DILexicalBlock(scope: !782, file: !3, line: 350, column: 15)
!822 = !DILocation(line: 351, column: 15, scope: !821)
!823 = !DILocalVariable(name: "str", arg: 1, scope: !824, file: !3, line: 66, type: !50)
!824 = distinct !DISubprogram(name: "parse_size", scope: !3, file: !3, line: 66, type: !825, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !827)
!825 = !DISubroutineType(types: !826)
!826 = !{!41, !50, !602}
!827 = !{!823, !828, !829, !830}
!828 = !DILocalVariable(name: "size", arg: 2, scope: !824, file: !3, line: 66, type: !602)
!829 = !DILocalVariable(name: "tmp_size", scope: !824, file: !3, line: 68, type: !24)
!830 = !DILocalVariable(name: "e", scope: !824, file: !3, line: 69, type: !12)
!831 = !DILocation(line: 66, column: 25, scope: !824, inlinedAt: !832)
!832 = distinct !DILocation(line: 351, column: 18, scope: !821)
!833 = !DILocation(line: 66, column: 38, scope: !824, inlinedAt: !832)
!834 = !DILocation(line: 68, column: 3, scope: !824, inlinedAt: !832)
!835 = !DILocation(line: 68, column: 13, scope: !824, inlinedAt: !832)
!836 = !DILocation(line: 69, column: 25, scope: !824, inlinedAt: !832)
!837 = !DILocation(line: 69, column: 21, scope: !824, inlinedAt: !832)
!838 = !DILocation(line: 73, column: 7, scope: !824, inlinedAt: !832)
!839 = !DILocation(line: 80, column: 3, scope: !824, inlinedAt: !832)
!840 = !DILocation(line: 80, column: 48, scope: !824, inlinedAt: !832)
!841 = !DILocation(line: 80, column: 12, scope: !824, inlinedAt: !832)
!842 = !DILocation(line: 351, column: 58, scope: !821)
!843 = !DILocation(line: 75, column: 7, scope: !844, inlinedAt: !832)
!844 = distinct !DILexicalBlock(scope: !845, file: !3, line: 74, column: 5)
!845 = distinct !DILexicalBlock(scope: !824, file: !3, line: 73, column: 7)
!846 = !DILocation(line: 75, column: 13, scope: !844, inlinedAt: !832)
!847 = !DILocation(line: 76, column: 15, scope: !844, inlinedAt: !832)
!848 = !{!791, !791, i64 0}
!849 = !DILocation(line: 76, column: 13, scope: !844, inlinedAt: !832)
!850 = !DILocation(line: 82, column: 1, scope: !824, inlinedAt: !832)
!851 = !DILocation(line: 350, column: 15, scope: !782)
!852 = distinct !{!852, !771, !853}
!853 = !DILocation(line: 363, column: 5, scope: !692)
!854 = !DILocation(line: 352, column: 13, scope: !821)
!855 = !DILocation(line: 80, column: 9, scope: !824, inlinedAt: !832)
!856 = !DILocation(line: 356, column: 9, scope: !782)
!857 = !DILocation(line: 358, column: 9, scope: !782)
!858 = !DILocation(line: 361, column: 11, scope: !782)
!859 = !DILocation(line: 365, column: 11, scope: !692)
!860 = !DILocation(line: 365, column: 8, scope: !692)
!861 = !DILocation(line: 369, column: 12, scope: !862)
!862 = distinct !DILexicalBlock(scope: !692, file: !3, line: 369, column: 7)
!863 = !DILocation(line: 369, column: 7, scope: !692)
!864 = !DILocation(line: 371, column: 20, scope: !865)
!865 = distinct !DILexicalBlock(scope: !862, file: !3, line: 370, column: 5)
!866 = !DILocation(line: 371, column: 7, scope: !865)
!867 = !DILocation(line: 372, column: 7, scope: !865)
!868 = !DILocalVariable(name: "env_set", scope: !869, file: !3, line: 277, type: !92)
!869 = distinct !DISubprogram(name: "set_libstdbuf_options", scope: !3, file: !3, line: 275, type: !870, isLocal: true, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !872)
!870 = !DISubroutineType(types: !871)
!871 = !{!92}
!872 = !{!868, !873, !874, !880, !881, !884}
!873 = !DILocalVariable(name: "i", scope: !869, file: !3, line: 278, type: !38)
!874 = !DILocalVariable(name: "var", scope: !875, file: !3, line: 284, type: !21)
!875 = distinct !DILexicalBlock(scope: !876, file: !3, line: 283, column: 9)
!876 = distinct !DILexicalBlock(scope: !877, file: !3, line: 282, column: 11)
!877 = distinct !DILexicalBlock(scope: !878, file: !3, line: 281, column: 5)
!878 = distinct !DILexicalBlock(scope: !879, file: !3, line: 280, column: 3)
!879 = distinct !DILexicalBlock(scope: !869, file: !3, line: 280, column: 3)
!880 = !DILocalVariable(name: "ret", scope: !875, file: !3, line: 285, type: !41)
!881 = !DILocalVariable(name: "__res", scope: !882, file: !3, line: 288, type: !41)
!882 = distinct !DILexicalBlock(scope: !883, file: !3, line: 288, column: 19)
!883 = distinct !DILexicalBlock(scope: !875, file: !3, line: 287, column: 15)
!884 = !DILocalVariable(name: "__res", scope: !885, file: !3, line: 291, type: !41)
!885 = distinct !DILexicalBlock(scope: !883, file: !3, line: 291, column: 19)
!886 = !DILocation(line: 277, column: 8, scope: !869, inlinedAt: !887)
!887 = distinct !DILocation(line: 375, column: 9, scope: !888)
!888 = distinct !DILexicalBlock(scope: !692, file: !3, line: 375, column: 7)
!889 = !DILocation(line: 278, column: 10, scope: !869, inlinedAt: !887)
!890 = !DILocation(line: 282, column: 21, scope: !876, inlinedAt: !887)
!891 = !DILocation(line: 282, column: 11, scope: !876, inlinedAt: !887)
!892 = !DILocation(line: 282, column: 11, scope: !877, inlinedAt: !887)
!893 = !DILocation(line: 284, column: 11, scope: !875, inlinedAt: !887)
!894 = !DILocation(line: 287, column: 15, scope: !883, inlinedAt: !887)
!895 = !DILocation(line: 287, column: 33, scope: !883, inlinedAt: !887)
!896 = !DILocalVariable(name: "__c", arg: 1, scope: !897, file: !132, line: 213, type: !41)
!897 = distinct !DISubprogram(name: "toupper", scope: !132, file: !132, line: 213, type: !776, isLocal: false, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !898)
!898 = !{!896}
!899 = !DILocation(line: 213, column: 1, scope: !897, inlinedAt: !900)
!900 = distinct !DILocation(line: 288, column: 19, scope: !901, inlinedAt: !887)
!901 = distinct !DILexicalBlock(scope: !902, file: !3, line: 288, column: 19)
!902 = distinct !DILexicalBlock(scope: !903, file: !3, line: 288, column: 19)
!903 = distinct !DILexicalBlock(scope: !882, file: !3, line: 288, column: 19)
!904 = !DILocation(line: 215, column: 22, scope: !897, inlinedAt: !900)
!905 = !DILocation(line: 215, column: 39, scope: !897, inlinedAt: !900)
!906 = !DILocation(line: 215, column: 38, scope: !897, inlinedAt: !900)
!907 = !DILocation(line: 215, column: 37, scope: !897, inlinedAt: !900)
!908 = !DILocation(line: 215, column: 10, scope: !897, inlinedAt: !900)
!909 = !DILocation(line: 287, column: 15, scope: !875, inlinedAt: !887)
!910 = !DILocation(line: 288, column: 19, scope: !882, inlinedAt: !887)
!911 = !DILocation(line: 284, column: 17, scope: !875, inlinedAt: !887)
!912 = !DILocation(line: 288, column: 19, scope: !883, inlinedAt: !887)
!913 = !DILocation(line: 285, column: 15, scope: !875, inlinedAt: !887)
!914 = !DILocation(line: 288, column: 13, scope: !883, inlinedAt: !887)
!915 = !DILocation(line: 291, column: 19, scope: !883, inlinedAt: !887)
!916 = !{!790, !791, i64 0}
!917 = !DILocation(line: 294, column: 19, scope: !918, inlinedAt: !887)
!918 = distinct !DILexicalBlock(scope: !875, file: !3, line: 294, column: 15)
!919 = !DILocation(line: 294, column: 15, scope: !875, inlinedAt: !887)
!920 = !DILocation(line: 295, column: 13, scope: !918, inlinedAt: !887)
!921 = !DILocation(line: 297, column: 23, scope: !922, inlinedAt: !887)
!922 = distinct !DILexicalBlock(scope: !875, file: !3, line: 297, column: 15)
!923 = !DILocation(line: 297, column: 15, scope: !922, inlinedAt: !887)
!924 = !DILocation(line: 297, column: 28, scope: !922, inlinedAt: !887)
!925 = !DILocation(line: 297, column: 15, scope: !875, inlinedAt: !887)
!926 = !DILocation(line: 299, column: 15, scope: !927, inlinedAt: !887)
!927 = distinct !DILexicalBlock(scope: !922, file: !3, line: 298, column: 13)
!928 = !DILocation(line: 305, column: 9, scope: !876, inlinedAt: !887)
!929 = !DILocation(line: 305, column: 9, scope: !875, inlinedAt: !887)
!930 = !DILocation(line: 375, column: 7, scope: !692)
!931 = !DILocation(line: 308, column: 10, scope: !869, inlinedAt: !887)
!932 = !DILocation(line: 377, column: 20, scope: !933)
!933 = distinct !DILexicalBlock(scope: !888, file: !3, line: 376, column: 5)
!934 = !DILocation(line: 377, column: 7, scope: !933)
!935 = !DILocation(line: 378, column: 7, scope: !933)
!936 = !DILocation(line: 383, column: 21, scope: !692)
!937 = !DILocalVariable(name: "arg", arg: 1, scope: !938, file: !3, line: 135, type: !50)
!938 = distinct !DISubprogram(name: "set_program_path", scope: !3, file: !3, line: 135, type: !48, isLocal: true, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !939)
!939 = !{!937, !940, !943, !947}
!940 = !DILocalVariable(name: "path", scope: !941, file: !3, line: 143, type: !21)
!941 = distinct !DILexicalBlock(scope: !942, file: !3, line: 142, column: 5)
!942 = distinct !DILexicalBlock(scope: !938, file: !3, line: 137, column: 7)
!943 = !DILocalVariable(name: "dir", scope: !944, file: !3, line: 148, type: !21)
!944 = distinct !DILexicalBlock(scope: !945, file: !3, line: 147, column: 9)
!945 = distinct !DILexicalBlock(scope: !946, file: !3, line: 146, column: 16)
!946 = distinct !DILexicalBlock(scope: !941, file: !3, line: 144, column: 11)
!947 = !DILocalVariable(name: "candidate", scope: !948, file: !3, line: 152, type: !21)
!948 = distinct !DILexicalBlock(scope: !949, file: !3, line: 151, column: 13)
!949 = distinct !DILexicalBlock(scope: !950, file: !3, line: 150, column: 11)
!950 = distinct !DILexicalBlock(scope: !944, file: !3, line: 150, column: 11)
!951 = !DILocation(line: 135, column: 31, scope: !938, inlinedAt: !952)
!952 = distinct !DILocation(line: 383, column: 3, scope: !692)
!953 = !DILocation(line: 137, column: 7, scope: !942, inlinedAt: !952)
!954 = !DILocation(line: 137, column: 7, scope: !938, inlinedAt: !952)
!955 = !DILocation(line: 139, column: 22, scope: !956, inlinedAt: !952)
!956 = distinct !DILexicalBlock(scope: !942, file: !3, line: 138, column: 5)
!957 = !DILocation(line: 139, column: 20, scope: !956, inlinedAt: !952)
!958 = !DILocation(line: 140, column: 5, scope: !956, inlinedAt: !952)
!959 = !DILocation(line: 143, column: 20, scope: !941, inlinedAt: !952)
!960 = !DILocation(line: 143, column: 13, scope: !941, inlinedAt: !952)
!961 = !DILocation(line: 144, column: 11, scope: !946, inlinedAt: !952)
!962 = !DILocation(line: 144, column: 11, scope: !941, inlinedAt: !952)
!963 = !DILocation(line: 145, column: 24, scope: !946, inlinedAt: !952)
!964 = !DILocation(line: 145, column: 22, scope: !946, inlinedAt: !952)
!965 = !DILocation(line: 145, column: 9, scope: !946, inlinedAt: !952)
!966 = !DILocation(line: 146, column: 24, scope: !945, inlinedAt: !952)
!967 = !DILocation(line: 146, column: 22, scope: !945, inlinedAt: !952)
!968 = !DILocation(line: 146, column: 16, scope: !946, inlinedAt: !952)
!969 = !DILocation(line: 149, column: 18, scope: !944, inlinedAt: !952)
!970 = !DILocation(line: 150, column: 61, scope: !949, inlinedAt: !952)
!971 = !DILocation(line: 148, column: 17, scope: !944, inlinedAt: !952)
!972 = !DILocation(line: 150, column: 46, scope: !949, inlinedAt: !952)
!973 = !DILocation(line: 150, column: 11, scope: !950, inlinedAt: !952)
!974 = !DILocation(line: 152, column: 33, scope: !948, inlinedAt: !952)
!975 = !DILocation(line: 152, column: 21, scope: !948, inlinedAt: !952)
!976 = !DILocation(line: 153, column: 19, scope: !977, inlinedAt: !952)
!977 = distinct !DILexicalBlock(scope: !948, file: !3, line: 153, column: 19)
!978 = !DILocation(line: 153, column: 44, scope: !977, inlinedAt: !952)
!979 = !DILocation(line: 153, column: 19, scope: !948, inlinedAt: !952)
!980 = !DILocation(line: 155, column: 34, scope: !981, inlinedAt: !952)
!981 = distinct !DILexicalBlock(scope: !977, file: !3, line: 154, column: 17)
!982 = !DILocation(line: 155, column: 32, scope: !981, inlinedAt: !952)
!983 = !DILocation(line: 156, column: 19, scope: !981, inlinedAt: !952)
!984 = !DILocation(line: 159, column: 15, scope: !948, inlinedAt: !952)
!985 = distinct !{!985, !986, !987}
!986 = !DILocation(line: 150, column: 11, scope: !950)
!987 = !DILocation(line: 160, column: 13, scope: !950)
!988 = !DILocation(line: 162, column: 7, scope: !941, inlinedAt: !952)
!989 = !DILocation(line: 384, column: 8, scope: !990)
!990 = distinct !DILexicalBlock(scope: !692, file: !3, line: 384, column: 7)
!991 = !DILocation(line: 384, column: 7, scope: !692)
!992 = !DILocation(line: 385, column: 20, scope: !990)
!993 = !DILocation(line: 385, column: 18, scope: !990)
!994 = !DILocation(line: 385, column: 5, scope: !990)
!995 = !DILocation(line: 216, column: 5, scope: !704, inlinedAt: !753)
!996 = !DILocation(line: 196, column: 20, scope: !704, inlinedAt: !753)
!997 = !DILocation(line: 196, column: 9, scope: !704, inlinedAt: !753)
!998 = !DILocation(line: 197, column: 3, scope: !704, inlinedAt: !753)
!999 = !DILocation(line: 215, column: 3, scope: !704, inlinedAt: !753)
!1000 = !DILocation(line: 215, column: 37, scope: !704, inlinedAt: !753)
!1001 = !DILocation(line: 222, column: 3, scope: !704, inlinedAt: !753)
!1002 = !DILocation(line: 226, column: 7, scope: !714, inlinedAt: !753)
!1003 = !DILocation(line: 228, column: 12, scope: !1004, inlinedAt: !753)
!1004 = distinct !DILexicalBlock(scope: !714, file: !3, line: 228, column: 11)
!1005 = !DILocation(line: 228, column: 11, scope: !714, inlinedAt: !753)
!1006 = !DILocation(line: 221, column: 29, scope: !704, inlinedAt: !753)
!1007 = !DILocation(line: 230, column: 23, scope: !1008, inlinedAt: !753)
!1008 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 229, column: 9)
!1009 = !DILocation(line: 222, column: 9, scope: !704, inlinedAt: !753)
!1010 = !DILocation(line: 230, column: 21, scope: !1008, inlinedAt: !753)
!1011 = !DILocation(line: 231, column: 11, scope: !1008, inlinedAt: !753)
!1012 = !DILocation(line: 221, column: 22, scope: !704, inlinedAt: !753)
!1013 = !DILocation(line: 233, column: 13, scope: !714, inlinedAt: !753)
!1014 = !DILocation(line: 190, column: 7, scope: !704, inlinedAt: !753)
!1015 = !DILocation(line: 234, column: 15, scope: !1016, inlinedAt: !753)
!1016 = distinct !DILexicalBlock(scope: !714, file: !3, line: 234, column: 11)
!1017 = !DILocation(line: 234, column: 11, scope: !714, inlinedAt: !753)
!1018 = !DILocation(line: 235, column: 9, scope: !1016, inlinedAt: !753)
!1019 = !DILocation(line: 236, column: 17, scope: !1020, inlinedAt: !753)
!1020 = distinct !DILexicalBlock(scope: !714, file: !3, line: 236, column: 11)
!1021 = !DILocation(line: 226, column: 19, scope: !714, inlinedAt: !753)
!1022 = !DILocalVariable(name: "__path", arg: 1, scope: !1023, file: !1024, line: 449, type: !50)
!1023 = distinct !DISubprogram(name: "stat", scope: !1024, file: !1024, line: 449, type: !1025, isLocal: false, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1028)
!1024 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!41, !50, !1027}
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!1028 = !{!1022, !1029}
!1029 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1023, file: !1024, line: 449, type: !1027)
!1030 = !DILocation(line: 449, column: 1, scope: !1023, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 236, column: 11, scope: !1020, inlinedAt: !753)
!1032 = !DILocation(line: 451, column: 10, scope: !1023, inlinedAt: !1031)
!1033 = !DILocation(line: 236, column: 33, scope: !1020, inlinedAt: !753)
!1034 = !DILocation(line: 236, column: 11, scope: !714, inlinedAt: !753)
!1035 = !DILocation(line: 238, column: 7, scope: !714, inlinedAt: !753)
!1036 = !DILocation(line: 240, column: 7, scope: !714, inlinedAt: !753)
!1037 = !DILocation(line: 241, column: 14, scope: !1038, inlinedAt: !753)
!1038 = distinct !DILexicalBlock(scope: !714, file: !3, line: 241, column: 12)
!1039 = !DILocation(line: 241, column: 12, scope: !714, inlinedAt: !753)
!1040 = !DILocation(line: 242, column: 9, scope: !1038, inlinedAt: !753)
!1041 = !DILocation(line: 243, column: 5, scope: !704, inlinedAt: !753)
!1042 = distinct !{!1042, !1043, !1044}
!1043 = !DILocation(line: 224, column: 3, scope: !704)
!1044 = !DILocation(line: 243, column: 5, scope: !704)
!1045 = !DILocation(line: 247, column: 7, scope: !1046, inlinedAt: !753)
!1046 = distinct !DILexicalBlock(scope: !704, file: !3, line: 247, column: 7)
!1047 = !DILocation(line: 197, column: 9, scope: !704, inlinedAt: !753)
!1048 = !DILocation(line: 247, column: 7, scope: !704, inlinedAt: !753)
!1049 = !DILocation(line: 248, column: 11, scope: !1046, inlinedAt: !753)
!1050 = !DILocation(line: 248, column: 5, scope: !1046, inlinedAt: !753)
!1051 = !DILocation(line: 250, column: 11, scope: !1046, inlinedAt: !753)
!1052 = !DILocation(line: 252, column: 11, scope: !1053, inlinedAt: !753)
!1053 = distinct !DILexicalBlock(scope: !704, file: !3, line: 252, column: 7)
!1054 = !DILocation(line: 252, column: 7, scope: !704, inlinedAt: !753)
!1055 = !DILocation(line: 253, column: 5, scope: !1053, inlinedAt: !753)
!1056 = !DILocation(line: 255, column: 9, scope: !704, inlinedAt: !753)
!1057 = !DILocation(line: 255, column: 3, scope: !704, inlinedAt: !753)
!1058 = !DILocation(line: 257, column: 17, scope: !704, inlinedAt: !753)
!1059 = !DILocation(line: 257, column: 9, scope: !704, inlinedAt: !753)
!1060 = !DILocation(line: 263, column: 11, scope: !1061, inlinedAt: !753)
!1061 = distinct !DILexicalBlock(scope: !704, file: !3, line: 263, column: 7)
!1062 = !DILocation(line: 263, column: 7, scope: !704, inlinedAt: !753)
!1063 = !DILocation(line: 265, column: 7, scope: !1064, inlinedAt: !753)
!1064 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 264, column: 5)
!1065 = !DILocation(line: 269, column: 1, scope: !704, inlinedAt: !753)
!1066 = !DILocation(line: 387, column: 9, scope: !692)
!1067 = !DILocation(line: 387, column: 3, scope: !692)
!1068 = !DILocation(line: 389, column: 11, scope: !692)
!1069 = !DILocation(line: 389, column: 3, scope: !692)
!1070 = !DILocation(line: 391, column: 21, scope: !692)
!1071 = !DILocation(line: 391, column: 27, scope: !692)
!1072 = !DILocation(line: 391, column: 7, scope: !692)
!1073 = !DILocation(line: 392, column: 20, scope: !692)
!1074 = !DILocation(line: 392, column: 58, scope: !692)
!1075 = !DILocation(line: 392, column: 51, scope: !692)
!1076 = !DILocation(line: 392, column: 3, scope: !692)
!1077 = !DILocation(line: 393, column: 3, scope: !692)
!1078 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !91, file: !91, line: 41, type: !48, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !1079)
!1079 = !{!1080}
!1080 = !DILocalVariable(name: "file", arg: 1, scope: !1078, file: !91, line: 41, type: !50)
!1081 = !DILocation(line: 41, column: 41, scope: !1078)
!1082 = !DILocation(line: 43, column: 13, scope: !1078)
!1083 = !DILocation(line: 44, column: 1, scope: !1078)
!1084 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !91, file: !91, line: 78, type: !1085, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !1087)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{null, !92}
!1087 = !{!1088}
!1088 = !DILocalVariable(name: "ignore", arg: 1, scope: !1084, file: !91, line: 78, type: !92)
!1089 = !DILocation(line: 78, column: 37, scope: !1084)
!1090 = !DILocation(line: 80, column: 16, scope: !1084)
!1091 = !{!1092, !1092, i64 0}
!1092 = !{!"_Bool", !659, i64 0}
!1093 = !DILocation(line: 81, column: 1, scope: !1084)
!1094 = distinct !DISubprogram(name: "close_stdout", scope: !91, file: !91, line: 107, type: !666, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !1095)
!1095 = !{!1096}
!1096 = !DILocalVariable(name: "write_error", scope: !1097, file: !91, line: 112, type: !50)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !91, line: 111, column: 5)
!1098 = distinct !DILexicalBlock(scope: !1094, file: !91, line: 109, column: 7)
!1099 = !DILocation(line: 109, column: 21, scope: !1098)
!1100 = !DILocation(line: 109, column: 7, scope: !1098)
!1101 = !DILocation(line: 109, column: 29, scope: !1098)
!1102 = !DILocation(line: 110, column: 7, scope: !1098)
!1103 = !DILocation(line: 110, column: 12, scope: !1098)
!1104 = !{i8 0, i8 2}
!1105 = !DILocation(line: 114, column: 19, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1097, file: !91, line: 113, column: 11)
!1107 = !DILocation(line: 110, column: 25, scope: !1098)
!1108 = !DILocation(line: 110, column: 28, scope: !1098)
!1109 = !DILocation(line: 110, column: 34, scope: !1098)
!1110 = !DILocation(line: 109, column: 7, scope: !1094)
!1111 = !DILocation(line: 112, column: 33, scope: !1097)
!1112 = !DILocation(line: 112, column: 19, scope: !1097)
!1113 = !DILocation(line: 113, column: 11, scope: !1106)
!1114 = !DILocation(line: 113, column: 11, scope: !1097)
!1115 = !DILocation(line: 114, column: 36, scope: !1106)
!1116 = !DILocation(line: 114, column: 9, scope: !1106)
!1117 = !DILocation(line: 117, column: 9, scope: !1106)
!1118 = !DILocation(line: 119, column: 14, scope: !1097)
!1119 = !DILocation(line: 119, column: 7, scope: !1097)
!1120 = !DILocation(line: 122, column: 22, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1094, file: !91, line: 122, column: 8)
!1122 = !DILocation(line: 122, column: 8, scope: !1121)
!1123 = !DILocation(line: 122, column: 30, scope: !1121)
!1124 = !DILocation(line: 122, column: 8, scope: !1094)
!1125 = !DILocation(line: 123, column: 13, scope: !1121)
!1126 = !DILocation(line: 123, column: 6, scope: !1121)
!1127 = !DILocation(line: 124, column: 1, scope: !1094)
!1128 = distinct !DISubprogram(name: "dir_name", scope: !1129, file: !1129, line: 32, type: !1130, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !575, variables: !1132)
!1129 = !DIFile(filename: "lib/dirname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!21, !50}
!1132 = !{!1133, !1134}
!1133 = !DILocalVariable(name: "file", arg: 1, scope: !1128, file: !1129, line: 32, type: !50)
!1134 = !DILocalVariable(name: "result", scope: !1128, file: !1129, line: 34, type: !21)
!1135 = !DILocation(line: 32, column: 23, scope: !1128)
!1136 = !DILocation(line: 34, column: 18, scope: !1128)
!1137 = !DILocation(line: 34, column: 9, scope: !1128)
!1138 = !DILocation(line: 35, column: 8, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1128, file: !1129, line: 35, column: 7)
!1140 = !DILocation(line: 35, column: 7, scope: !1128)
!1141 = !DILocation(line: 36, column: 5, scope: !1139)
!1142 = !DILocation(line: 37, column: 3, scope: !1128)
!1143 = distinct !DISubprogram(name: "dir_len", scope: !1144, file: !1144, line: 32, type: !1145, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !1147)
!1144 = !DIFile(filename: "lib/dirname-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!38, !50}
!1147 = !{!1148, !1149, !1150}
!1148 = !DILocalVariable(name: "file", arg: 1, scope: !1143, file: !1144, line: 32, type: !50)
!1149 = !DILocalVariable(name: "prefix_length", scope: !1143, file: !1144, line: 34, type: !38)
!1150 = !DILocalVariable(name: "length", scope: !1143, file: !1144, line: 35, type: !38)
!1151 = !DILocation(line: 32, column: 22, scope: !1143)
!1152 = !DILocation(line: 34, column: 10, scope: !1143)
!1153 = !DILocation(line: 41, column: 24, scope: !1143)
!1154 = !DILocation(line: 38, column: 20, scope: !1143)
!1155 = !DILocation(line: 48, column: 17, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1143, file: !1144, line: 48, column: 3)
!1157 = !DILocation(line: 48, column: 39, scope: !1156)
!1158 = !DILocation(line: 35, column: 10, scope: !1143)
!1159 = !DILocation(line: 49, column: 22, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1156, file: !1144, line: 48, column: 3)
!1161 = !DILocation(line: 48, column: 3, scope: !1156)
!1162 = !DILocation(line: 50, column: 11, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1160, file: !1144, line: 50, column: 9)
!1164 = distinct !{!1164, !1161, !1165}
!1165 = !DILocation(line: 51, column: 7, scope: !1156)
!1166 = !DILocation(line: 50, column: 9, scope: !1160)
!1167 = !DILocation(line: 52, column: 3, scope: !1143)
!1168 = distinct !DISubprogram(name: "mdir_name", scope: !1144, file: !1144, line: 71, type: !1130, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !1169)
!1169 = !{!1170, !1171, !1172, !1173}
!1170 = !DILocalVariable(name: "file", arg: 1, scope: !1168, file: !1144, line: 71, type: !50)
!1171 = !DILocalVariable(name: "length", scope: !1168, file: !1144, line: 73, type: !38)
!1172 = !DILocalVariable(name: "append_dot", scope: !1168, file: !1144, line: 74, type: !92)
!1173 = !DILocalVariable(name: "dir", scope: !1168, file: !1144, line: 78, type: !21)
!1174 = !DILocation(line: 71, column: 24, scope: !1168)
!1175 = !DILocation(line: 32, column: 22, scope: !1143, inlinedAt: !1176)
!1176 = distinct !DILocation(line: 73, column: 19, scope: !1168)
!1177 = !DILocation(line: 34, column: 10, scope: !1143, inlinedAt: !1176)
!1178 = !DILocation(line: 41, column: 24, scope: !1143, inlinedAt: !1176)
!1179 = !DILocation(line: 38, column: 20, scope: !1143, inlinedAt: !1176)
!1180 = !DILocation(line: 48, column: 17, scope: !1156, inlinedAt: !1176)
!1181 = !DILocation(line: 48, column: 39, scope: !1156, inlinedAt: !1176)
!1182 = !DILocation(line: 35, column: 10, scope: !1143, inlinedAt: !1176)
!1183 = !DILocation(line: 49, column: 22, scope: !1160, inlinedAt: !1176)
!1184 = !DILocation(line: 48, column: 3, scope: !1156, inlinedAt: !1176)
!1185 = !DILocation(line: 50, column: 11, scope: !1163, inlinedAt: !1176)
!1186 = !DILocation(line: 50, column: 9, scope: !1160, inlinedAt: !1176)
!1187 = !DILocation(line: 73, column: 10, scope: !1168)
!1188 = !DILocation(line: 74, column: 29, scope: !1168)
!1189 = !DILocation(line: 78, column: 32, scope: !1168)
!1190 = !DILocation(line: 78, column: 30, scope: !1168)
!1191 = !DILocation(line: 78, column: 43, scope: !1168)
!1192 = !DILocation(line: 78, column: 15, scope: !1168)
!1193 = !DILocation(line: 78, column: 9, scope: !1168)
!1194 = !DILocation(line: 79, column: 8, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1168, file: !1144, line: 79, column: 7)
!1196 = !DILocation(line: 79, column: 7, scope: !1168)
!1197 = !DILocation(line: 81, column: 3, scope: !1168)
!1198 = !DILocation(line: 82, column: 7, scope: !1168)
!1199 = !DILocation(line: 83, column: 19, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1168, file: !1144, line: 82, column: 7)
!1201 = !DILocation(line: 83, column: 5, scope: !1200)
!1202 = !DILocation(line: 84, column: 3, scope: !1168)
!1203 = !DILocation(line: 84, column: 15, scope: !1168)
!1204 = !DILocation(line: 85, column: 3, scope: !1168)
!1205 = !DILocation(line: 86, column: 1, scope: !1168)
!1206 = distinct !DISubprogram(name: "last_component", scope: !1207, file: !1207, line: 30, type: !1130, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !1208)
!1207 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1208 = !{!1209, !1210, !1211, !1212}
!1209 = !DILocalVariable(name: "name", arg: 1, scope: !1206, file: !1207, line: 30, type: !50)
!1210 = !DILocalVariable(name: "base", scope: !1206, file: !1207, line: 32, type: !50)
!1211 = !DILocalVariable(name: "p", scope: !1206, file: !1207, line: 33, type: !50)
!1212 = !DILocalVariable(name: "saw_slash", scope: !1206, file: !1207, line: 34, type: !92)
!1213 = !DILocation(line: 30, column: 29, scope: !1206)
!1214 = !DILocation(line: 32, column: 15, scope: !1206)
!1215 = !DILocation(line: 34, column: 8, scope: !1206)
!1216 = !DILocation(line: 36, column: 3, scope: !1206)
!1217 = !DILocation(line: 36, column: 10, scope: !1206)
!1218 = !DILocation(line: 37, column: 9, scope: !1206)
!1219 = distinct !{!1219, !1216, !1218}
!1220 = !DILocation(line: 39, column: 3, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1206, file: !1207, line: 39, column: 3)
!1222 = !DILocation(line: 39, column: 18, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1221, file: !1207, line: 39, column: 3)
!1224 = !DILocation(line: 33, column: 15, scope: !1206)
!1225 = !DILocation(line: 43, column: 16, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !1207, line: 43, column: 16)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !1207, line: 41, column: 11)
!1228 = distinct !DILexicalBlock(scope: !1223, file: !1207, line: 40, column: 5)
!1229 = !DILocation(line: 43, column: 16, scope: !1227)
!1230 = !DILocation(line: 39, column: 23, scope: !1223)
!1231 = !DILocation(line: 39, column: 3, scope: !1223)
!1232 = distinct !{!1232, !1220, !1233}
!1233 = !DILocation(line: 48, column: 5, scope: !1221)
!1234 = !DILocation(line: 50, column: 3, scope: !1206)
!1235 = distinct !DISubprogram(name: "base_len", scope: !1207, file: !1207, line: 58, type: !1145, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !1236)
!1236 = !{!1237, !1238, !1239}
!1237 = !DILocalVariable(name: "name", arg: 1, scope: !1235, file: !1207, line: 58, type: !50)
!1238 = !DILocalVariable(name: "len", scope: !1235, file: !1207, line: 60, type: !38)
!1239 = !DILocalVariable(name: "prefix_len", scope: !1235, file: !1207, line: 61, type: !38)
!1240 = !DILocation(line: 58, column: 23, scope: !1235)
!1241 = !DILocation(line: 61, column: 10, scope: !1235)
!1242 = !DILocation(line: 63, column: 14, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1235, file: !1207, line: 63, column: 3)
!1244 = !DILocation(line: 60, column: 10, scope: !1235)
!1245 = !DILocation(line: 63, column: 32, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1243, file: !1207, line: 63, column: 3)
!1247 = !DILocation(line: 63, column: 38, scope: !1246)
!1248 = !DILocation(line: 63, column: 41, scope: !1246)
!1249 = distinct !{!1249, !1250, !1251}
!1250 = !DILocation(line: 63, column: 3, scope: !1243)
!1251 = !DILocation(line: 64, column: 5, scope: !1243)
!1252 = !DILocation(line: 74, column: 3, scope: !1235)
!1253 = distinct !DISubprogram(name: "file_name_concat", scope: !1254, file: !1254, line: 35, type: !1255, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !582, variables: !1257)
!1254 = !DIFile(filename: "lib/filenamecat.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!21, !50, !50, !695}
!1257 = !{!1258, !1259, !1260, !1261}
!1258 = !DILocalVariable(name: "dir", arg: 1, scope: !1253, file: !1254, line: 35, type: !50)
!1259 = !DILocalVariable(name: "abase", arg: 2, scope: !1253, file: !1254, line: 35, type: !50)
!1260 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1253, file: !1254, line: 35, type: !695)
!1261 = !DILocalVariable(name: "p", scope: !1253, file: !1254, line: 37, type: !21)
!1262 = !DILocation(line: 35, column: 31, scope: !1253)
!1263 = !DILocation(line: 35, column: 48, scope: !1253)
!1264 = !DILocation(line: 35, column: 62, scope: !1253)
!1265 = !DILocation(line: 37, column: 13, scope: !1253)
!1266 = !DILocation(line: 37, column: 9, scope: !1253)
!1267 = !DILocation(line: 38, column: 9, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1253, file: !1254, line: 38, column: 7)
!1269 = !DILocation(line: 38, column: 7, scope: !1253)
!1270 = !DILocation(line: 39, column: 5, scope: !1268)
!1271 = !DILocation(line: 40, column: 3, scope: !1253)
!1272 = distinct !DISubprogram(name: "mfile_name_concat", scope: !1273, file: !1273, line: 61, type: !1255, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, unit: !585, variables: !1274)
!1273 = !DIFile(filename: "lib/filenamecat-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1274 = !{!1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285}
!1275 = !DILocalVariable(name: "dir", arg: 1, scope: !1272, file: !1273, line: 61, type: !50)
!1276 = !DILocalVariable(name: "abase", arg: 2, scope: !1272, file: !1273, line: 61, type: !50)
!1277 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1272, file: !1273, line: 61, type: !695)
!1278 = !DILocalVariable(name: "dirbase", scope: !1272, file: !1273, line: 63, type: !50)
!1279 = !DILocalVariable(name: "dirbaselen", scope: !1272, file: !1273, line: 64, type: !38)
!1280 = !DILocalVariable(name: "dirlen", scope: !1272, file: !1273, line: 65, type: !38)
!1281 = !DILocalVariable(name: "needs_separator", scope: !1272, file: !1273, line: 66, type: !38)
!1282 = !DILocalVariable(name: "base", scope: !1272, file: !1273, line: 68, type: !50)
!1283 = !DILocalVariable(name: "baselen", scope: !1272, file: !1273, line: 69, type: !38)
!1284 = !DILocalVariable(name: "p_concat", scope: !1272, file: !1273, line: 71, type: !21)
!1285 = !DILocalVariable(name: "p", scope: !1272, file: !1273, line: 72, type: !21)
!1286 = !DILocation(line: 61, column: 32, scope: !1272)
!1287 = !DILocation(line: 61, column: 49, scope: !1272)
!1288 = !DILocation(line: 61, column: 63, scope: !1272)
!1289 = !DILocation(line: 63, column: 25, scope: !1272)
!1290 = !DILocation(line: 63, column: 15, scope: !1272)
!1291 = !DILocation(line: 64, column: 23, scope: !1272)
!1292 = !DILocation(line: 64, column: 10, scope: !1272)
!1293 = !DILocation(line: 65, column: 27, scope: !1272)
!1294 = !DILocation(line: 65, column: 33, scope: !1272)
!1295 = !DILocation(line: 65, column: 10, scope: !1272)
!1296 = !DILocation(line: 66, column: 29, scope: !1272)
!1297 = !DILocation(line: 66, column: 40, scope: !1272)
!1298 = !DILocation(line: 66, column: 45, scope: !1272)
!1299 = !DILocation(line: 66, column: 10, scope: !1272)
!1300 = !DILocalVariable(name: "f", arg: 1, scope: !1301, file: !1273, line: 38, type: !50)
!1301 = distinct !DISubprogram(name: "longest_relative_suffix", scope: !1273, file: !1273, line: 38, type: !1302, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !585, variables: !1304)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!50, !50}
!1304 = !{!1300}
!1305 = !DILocation(line: 38, column: 38, scope: !1301, inlinedAt: !1306)
!1306 = distinct !DILocation(line: 68, column: 22, scope: !1272)
!1307 = !DILocation(line: 40, column: 8, scope: !1308, inlinedAt: !1306)
!1308 = distinct !DILexicalBlock(scope: !1301, file: !1273, line: 40, column: 3)
!1309 = !DILocation(line: 40, column: 41, scope: !1310, inlinedAt: !1306)
!1310 = distinct !DILexicalBlock(scope: !1308, file: !1273, line: 40, column: 3)
!1311 = !DILocation(line: 40, column: 56, scope: !1310, inlinedAt: !1306)
!1312 = !DILocation(line: 40, column: 3, scope: !1308, inlinedAt: !1306)
!1313 = distinct !{!1313, !1314, !1315}
!1314 = !DILocation(line: 40, column: 3, scope: !1308)
!1315 = !DILocation(line: 41, column: 5, scope: !1308)
!1316 = !DILocation(line: 68, column: 15, scope: !1272)
!1317 = !DILocation(line: 69, column: 20, scope: !1272)
!1318 = !DILocation(line: 69, column: 10, scope: !1272)
!1319 = !DILocation(line: 71, column: 35, scope: !1272)
!1320 = !DILocation(line: 71, column: 53, scope: !1272)
!1321 = !DILocation(line: 71, column: 63, scope: !1272)
!1322 = !DILocation(line: 71, column: 20, scope: !1272)
!1323 = !DILocation(line: 71, column: 9, scope: !1272)
!1324 = !DILocation(line: 74, column: 16, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1272, file: !1273, line: 74, column: 7)
!1326 = !DILocation(line: 74, column: 7, scope: !1272)
!1327 = !DILocalVariable(name: "__dest", arg: 1, scope: !1328, file: !1329, line: 45, type: !1332)
!1328 = distinct !DISubprogram(name: "mempcpy", scope: !1329, file: !1329, line: 45, type: !1330, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !585, variables: !1336)
!1329 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!23, !1332, !1333, !38}
!1332 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !23)
!1333 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1334)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1336 = !{!1327, !1337, !1338}
!1337 = !DILocalVariable(name: "__src", arg: 2, scope: !1328, file: !1329, line: 45, type: !1333)
!1338 = !DILocalVariable(name: "__len", arg: 3, scope: !1328, file: !1329, line: 45, type: !38)
!1339 = !DILocation(line: 45, column: 1, scope: !1328, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 77, column: 7, scope: !1272)
!1341 = !DILocation(line: 48, column: 57, scope: !1328, inlinedAt: !1340)
!1342 = !DILocation(line: 48, column: 10, scope: !1328, inlinedAt: !1340)
!1343 = !DILocation(line: 72, column: 9, scope: !1272)
!1344 = !DILocation(line: 78, column: 6, scope: !1272)
!1345 = !DILocation(line: 79, column: 5, scope: !1272)
!1346 = !DILocation(line: 81, column: 7, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1272, file: !1273, line: 81, column: 7)
!1348 = !DILocation(line: 81, column: 7, scope: !1272)
!1349 = !DILocation(line: 82, column: 27, scope: !1347)
!1350 = !DILocation(line: 82, column: 25, scope: !1347)
!1351 = !DILocation(line: 82, column: 21, scope: !1347)
!1352 = !DILocation(line: 82, column: 5, scope: !1347)
!1353 = !DILocation(line: 45, column: 1, scope: !1328, inlinedAt: !1354)
!1354 = distinct !DILocation(line: 84, column: 7, scope: !1272)
!1355 = !DILocation(line: 48, column: 57, scope: !1328, inlinedAt: !1354)
!1356 = !DILocation(line: 48, column: 10, scope: !1328, inlinedAt: !1354)
!1357 = !DILocation(line: 85, column: 6, scope: !1272)
!1358 = !DILocation(line: 87, column: 3, scope: !1272)
!1359 = !DILocation(line: 88, column: 1, scope: !1272)
!1360 = distinct !DISubprogram(name: "set_program_name", scope: !106, file: !106, line: 39, type: !48, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !102, variables: !1361)
!1361 = !{!1362, !1363, !1364}
!1362 = !DILocalVariable(name: "argv0", arg: 1, scope: !1360, file: !106, line: 39, type: !50)
!1363 = !DILocalVariable(name: "slash", scope: !1360, file: !106, line: 46, type: !50)
!1364 = !DILocalVariable(name: "base", scope: !1360, file: !106, line: 47, type: !50)
!1365 = !DILocation(line: 39, column: 31, scope: !1360)
!1366 = !DILocation(line: 51, column: 13, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1360, file: !106, line: 51, column: 7)
!1368 = !DILocation(line: 51, column: 7, scope: !1360)
!1369 = !DILocation(line: 55, column: 14, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1367, file: !106, line: 52, column: 5)
!1371 = !DILocation(line: 54, column: 7, scope: !1370)
!1372 = !DILocation(line: 56, column: 7, scope: !1370)
!1373 = !DILocation(line: 59, column: 11, scope: !1360)
!1374 = !DILocation(line: 46, column: 15, scope: !1360)
!1375 = !DILocation(line: 60, column: 17, scope: !1360)
!1376 = !DILocation(line: 60, column: 33, scope: !1360)
!1377 = !DILocation(line: 60, column: 11, scope: !1360)
!1378 = !DILocation(line: 47, column: 15, scope: !1360)
!1379 = !DILocation(line: 61, column: 12, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1360, file: !106, line: 61, column: 7)
!1381 = !DILocation(line: 61, column: 20, scope: !1380)
!1382 = !DILocation(line: 61, column: 25, scope: !1380)
!1383 = !DILocation(line: 61, column: 42, scope: !1380)
!1384 = !DILocation(line: 61, column: 28, scope: !1380)
!1385 = !DILocation(line: 61, column: 61, scope: !1380)
!1386 = !DILocation(line: 61, column: 7, scope: !1360)
!1387 = !DILocation(line: 64, column: 11, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !106, line: 64, column: 11)
!1389 = distinct !DILexicalBlock(scope: !1380, file: !106, line: 62, column: 5)
!1390 = !DILocation(line: 64, column: 36, scope: !1388)
!1391 = !DILocation(line: 64, column: 11, scope: !1389)
!1392 = !DILocation(line: 66, column: 24, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1388, file: !106, line: 65, column: 9)
!1394 = !DILocation(line: 70, column: 41, scope: !1393)
!1395 = !DILocation(line: 72, column: 9, scope: !1393)
!1396 = !DILocation(line: 84, column: 16, scope: !1360)
!1397 = !DILocation(line: 90, column: 27, scope: !1360)
!1398 = !DILocation(line: 92, column: 1, scope: !1360)
!1399 = distinct !DISubprogram(name: "clone_quoting_options", scope: !151, file: !151, line: 114, type: !1400, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !1403)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!1402, !1402}
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!1403 = !{!1404, !1405, !1406}
!1404 = !DILocalVariable(name: "o", arg: 1, scope: !1399, file: !151, line: 114, type: !1402)
!1405 = !DILocalVariable(name: "e", scope: !1399, file: !151, line: 116, type: !41)
!1406 = !DILocalVariable(name: "p", scope: !1399, file: !151, line: 117, type: !1402)
!1407 = !DILocation(line: 114, column: 48, scope: !1399)
!1408 = !DILocation(line: 116, column: 11, scope: !1399)
!1409 = !DILocation(line: 116, column: 7, scope: !1399)
!1410 = !DILocation(line: 117, column: 40, scope: !1399)
!1411 = !DILocation(line: 117, column: 31, scope: !1399)
!1412 = !DILocation(line: 117, column: 27, scope: !1399)
!1413 = !DILocation(line: 119, column: 9, scope: !1399)
!1414 = !DILocation(line: 120, column: 3, scope: !1399)
!1415 = distinct !DISubprogram(name: "get_quoting_style", scope: !151, file: !151, line: 125, type: !1416, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !1420)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!112, !1418}
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!1420 = !{!1421}
!1421 = !DILocalVariable(name: "o", arg: 1, scope: !1415, file: !151, line: 125, type: !1418)
!1422 = !DILocation(line: 125, column: 50, scope: !1415)
!1423 = !DILocation(line: 127, column: 11, scope: !1415)
!1424 = !DILocation(line: 127, column: 46, scope: !1415)
!1425 = !{!1426, !659, i64 0}
!1426 = !{!"quoting_options", !659, i64 0, !769, i64 4, !659, i64 8, !658, i64 40, !658, i64 48}
!1427 = !DILocation(line: 127, column: 3, scope: !1415)
!1428 = distinct !DISubprogram(name: "set_quoting_style", scope: !151, file: !151, line: 133, type: !1429, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !1431)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{null, !1402, !112}
!1431 = !{!1432, !1433}
!1432 = !DILocalVariable(name: "o", arg: 1, scope: !1428, file: !151, line: 133, type: !1402)
!1433 = !DILocalVariable(name: "s", arg: 2, scope: !1428, file: !151, line: 133, type: !112)
!1434 = !DILocation(line: 133, column: 44, scope: !1428)
!1435 = !DILocation(line: 133, column: 66, scope: !1428)
!1436 = !DILocation(line: 135, column: 4, scope: !1428)
!1437 = !DILocation(line: 135, column: 39, scope: !1428)
!1438 = !DILocation(line: 135, column: 45, scope: !1428)
!1439 = !DILocation(line: 136, column: 1, scope: !1428)
!1440 = distinct !DISubprogram(name: "set_char_quoting", scope: !151, file: !151, line: 144, type: !1441, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !1443)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!41, !1402, !22, !41}
!1443 = !{!1444, !1445, !1446, !1447, !1448, !1450, !1451}
!1444 = !DILocalVariable(name: "o", arg: 1, scope: !1440, file: !151, line: 144, type: !1402)
!1445 = !DILocalVariable(name: "c", arg: 2, scope: !1440, file: !151, line: 144, type: !22)
!1446 = !DILocalVariable(name: "i", arg: 3, scope: !1440, file: !151, line: 144, type: !41)
!1447 = !DILocalVariable(name: "uc", scope: !1440, file: !151, line: 146, type: !545)
!1448 = !DILocalVariable(name: "p", scope: !1440, file: !151, line: 147, type: !1449)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!1450 = !DILocalVariable(name: "shift", scope: !1440, file: !151, line: 149, type: !41)
!1451 = !DILocalVariable(name: "r", scope: !1440, file: !151, line: 150, type: !41)
!1452 = !DILocation(line: 144, column: 43, scope: !1440)
!1453 = !DILocation(line: 144, column: 51, scope: !1440)
!1454 = !DILocation(line: 144, column: 58, scope: !1440)
!1455 = !DILocation(line: 146, column: 17, scope: !1440)
!1456 = !DILocation(line: 148, column: 6, scope: !1440)
!1457 = !DILocation(line: 148, column: 62, scope: !1440)
!1458 = !DILocation(line: 148, column: 57, scope: !1440)
!1459 = !DILocation(line: 147, column: 17, scope: !1440)
!1460 = !DILocation(line: 149, column: 18, scope: !1440)
!1461 = !DILocation(line: 149, column: 15, scope: !1440)
!1462 = !DILocation(line: 149, column: 7, scope: !1440)
!1463 = !DILocation(line: 150, column: 12, scope: !1440)
!1464 = !DILocation(line: 150, column: 15, scope: !1440)
!1465 = !DILocation(line: 150, column: 25, scope: !1440)
!1466 = !DILocation(line: 150, column: 7, scope: !1440)
!1467 = !DILocation(line: 151, column: 13, scope: !1440)
!1468 = !DILocation(line: 151, column: 18, scope: !1440)
!1469 = !DILocation(line: 151, column: 23, scope: !1440)
!1470 = !DILocation(line: 151, column: 6, scope: !1440)
!1471 = !DILocation(line: 152, column: 3, scope: !1440)
!1472 = distinct !DISubprogram(name: "set_quoting_flags", scope: !151, file: !151, line: 160, type: !1473, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !1475)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!41, !1402, !41}
!1475 = !{!1476, !1477, !1478}
!1476 = !DILocalVariable(name: "o", arg: 1, scope: !1472, file: !151, line: 160, type: !1402)
!1477 = !DILocalVariable(name: "i", arg: 2, scope: !1472, file: !151, line: 160, type: !41)
!1478 = !DILocalVariable(name: "r", scope: !1472, file: !151, line: 162, type: !41)
!1479 = !DILocation(line: 160, column: 44, scope: !1472)
!1480 = !DILocation(line: 160, column: 51, scope: !1472)
!1481 = !DILocation(line: 163, column: 8, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1472, file: !151, line: 163, column: 7)
!1483 = !DILocation(line: 163, column: 7, scope: !1472)
!1484 = !DILocation(line: 165, column: 10, scope: !1472)
!1485 = !{!1426, !769, i64 4}
!1486 = !DILocation(line: 162, column: 7, scope: !1472)
!1487 = !DILocation(line: 166, column: 12, scope: !1472)
!1488 = !DILocation(line: 167, column: 3, scope: !1472)
!1489 = distinct !DISubprogram(name: "set_custom_quoting", scope: !151, file: !151, line: 171, type: !1490, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !1492)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{null, !1402, !50, !50}
!1492 = !{!1493, !1494, !1495}
!1493 = !DILocalVariable(name: "o", arg: 1, scope: !1489, file: !151, line: 171, type: !1402)
!1494 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1489, file: !151, line: 172, type: !50)
!1495 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1489, file: !151, line: 172, type: !50)
!1496 = !DILocation(line: 171, column: 45, scope: !1489)
!1497 = !DILocation(line: 172, column: 33, scope: !1489)
!1498 = !DILocation(line: 172, column: 57, scope: !1489)
!1499 = !DILocation(line: 174, column: 8, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1489, file: !151, line: 174, column: 7)
!1501 = !DILocation(line: 174, column: 7, scope: !1489)
!1502 = !DILocation(line: 176, column: 6, scope: !1489)
!1503 = !DILocation(line: 176, column: 12, scope: !1489)
!1504 = !DILocation(line: 177, column: 8, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1489, file: !151, line: 177, column: 7)
!1506 = !DILocation(line: 177, column: 23, scope: !1505)
!1507 = !DILocation(line: 177, column: 19, scope: !1505)
!1508 = !DILocation(line: 178, column: 5, scope: !1505)
!1509 = !DILocation(line: 179, column: 6, scope: !1489)
!1510 = !DILocation(line: 179, column: 17, scope: !1489)
!1511 = !{!1426, !658, i64 40}
!1512 = !DILocation(line: 180, column: 6, scope: !1489)
!1513 = !DILocation(line: 180, column: 18, scope: !1489)
!1514 = !{!1426, !658, i64 48}
!1515 = !DILocation(line: 181, column: 1, scope: !1489)
!1516 = distinct !DISubprogram(name: "quotearg_buffer", scope: !151, file: !151, line: 776, type: !1517, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !1519)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!38, !21, !38, !50, !38, !1418}
!1519 = !{!1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527}
!1520 = !DILocalVariable(name: "buffer", arg: 1, scope: !1516, file: !151, line: 776, type: !21)
!1521 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1516, file: !151, line: 776, type: !38)
!1522 = !DILocalVariable(name: "arg", arg: 3, scope: !1516, file: !151, line: 777, type: !50)
!1523 = !DILocalVariable(name: "argsize", arg: 4, scope: !1516, file: !151, line: 777, type: !38)
!1524 = !DILocalVariable(name: "o", arg: 5, scope: !1516, file: !151, line: 778, type: !1418)
!1525 = !DILocalVariable(name: "p", scope: !1516, file: !151, line: 780, type: !1418)
!1526 = !DILocalVariable(name: "e", scope: !1516, file: !151, line: 781, type: !41)
!1527 = !DILocalVariable(name: "r", scope: !1516, file: !151, line: 782, type: !38)
!1528 = !DILocation(line: 776, column: 24, scope: !1516)
!1529 = !DILocation(line: 776, column: 39, scope: !1516)
!1530 = !DILocation(line: 777, column: 30, scope: !1516)
!1531 = !DILocation(line: 777, column: 42, scope: !1516)
!1532 = !DILocation(line: 778, column: 48, scope: !1516)
!1533 = !DILocation(line: 780, column: 37, scope: !1516)
!1534 = !DILocation(line: 780, column: 33, scope: !1516)
!1535 = !DILocation(line: 781, column: 11, scope: !1516)
!1536 = !DILocation(line: 781, column: 7, scope: !1516)
!1537 = !DILocation(line: 783, column: 43, scope: !1516)
!1538 = !DILocation(line: 783, column: 53, scope: !1516)
!1539 = !DILocation(line: 783, column: 60, scope: !1516)
!1540 = !DILocation(line: 784, column: 43, scope: !1516)
!1541 = !DILocation(line: 784, column: 58, scope: !1516)
!1542 = !DILocation(line: 782, column: 14, scope: !1516)
!1543 = !DILocation(line: 782, column: 10, scope: !1516)
!1544 = !DILocation(line: 785, column: 9, scope: !1516)
!1545 = !DILocation(line: 786, column: 3, scope: !1516)
!1546 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !151, file: !151, line: 248, type: !1547, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !1551)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!38, !21, !38, !50, !38, !112, !41, !1549, !50, !50}
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!1551 = !{!1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1576, !1577, !1578, !1579, !1580, !1583, !1584, !1602, !1605, !1606, !1613}
!1552 = !DILocalVariable(name: "buffer", arg: 1, scope: !1546, file: !151, line: 248, type: !21)
!1553 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1546, file: !151, line: 248, type: !38)
!1554 = !DILocalVariable(name: "arg", arg: 3, scope: !1546, file: !151, line: 249, type: !50)
!1555 = !DILocalVariable(name: "argsize", arg: 4, scope: !1546, file: !151, line: 249, type: !38)
!1556 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1546, file: !151, line: 250, type: !112)
!1557 = !DILocalVariable(name: "flags", arg: 6, scope: !1546, file: !151, line: 250, type: !41)
!1558 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1546, file: !151, line: 251, type: !1549)
!1559 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1546, file: !151, line: 252, type: !50)
!1560 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1546, file: !151, line: 253, type: !50)
!1561 = !DILocalVariable(name: "i", scope: !1546, file: !151, line: 255, type: !38)
!1562 = !DILocalVariable(name: "len", scope: !1546, file: !151, line: 256, type: !38)
!1563 = !DILocalVariable(name: "orig_buffersize", scope: !1546, file: !151, line: 257, type: !38)
!1564 = !DILocalVariable(name: "quote_string", scope: !1546, file: !151, line: 258, type: !50)
!1565 = !DILocalVariable(name: "quote_string_len", scope: !1546, file: !151, line: 259, type: !38)
!1566 = !DILocalVariable(name: "backslash_escapes", scope: !1546, file: !151, line: 260, type: !92)
!1567 = !DILocalVariable(name: "unibyte_locale", scope: !1546, file: !151, line: 261, type: !92)
!1568 = !DILocalVariable(name: "elide_outer_quotes", scope: !1546, file: !151, line: 262, type: !92)
!1569 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1546, file: !151, line: 263, type: !92)
!1570 = !DILocalVariable(name: "encountered_single_quote", scope: !1546, file: !151, line: 264, type: !92)
!1571 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1546, file: !151, line: 265, type: !92)
!1572 = !DILocalVariable(name: "c", scope: !1573, file: !151, line: 394, type: !545)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !151, line: 393, column: 5)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !151, line: 392, column: 3)
!1575 = distinct !DILexicalBlock(scope: !1546, file: !151, line: 392, column: 3)
!1576 = !DILocalVariable(name: "esc", scope: !1573, file: !151, line: 395, type: !545)
!1577 = !DILocalVariable(name: "is_right_quote", scope: !1573, file: !151, line: 396, type: !92)
!1578 = !DILocalVariable(name: "escaping", scope: !1573, file: !151, line: 397, type: !92)
!1579 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1573, file: !151, line: 398, type: !92)
!1580 = !DILocalVariable(name: "m", scope: !1581, file: !151, line: 602, type: !38)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !151, line: 600, column: 11)
!1582 = distinct !DILexicalBlock(scope: !1573, file: !151, line: 418, column: 9)
!1583 = !DILocalVariable(name: "printable", scope: !1581, file: !151, line: 604, type: !92)
!1584 = !DILocalVariable(name: "mbstate", scope: !1585, file: !151, line: 613, type: !1587)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !151, line: 612, column: 15)
!1586 = distinct !DILexicalBlock(scope: !1581, file: !151, line: 606, column: 17)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1588, line: 6, baseType: !1589)
!1588 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1590, line: 21, baseType: !1591)
!1590 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1590, line: 13, size: 64, elements: !1592)
!1592 = !{!1593, !1594}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1591, file: !1590, line: 15, baseType: !41, size: 32)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1591, file: !1590, line: 20, baseType: !1595, size: 32, offset: 32)
!1595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1591, file: !1590, line: 16, size: 32, elements: !1596)
!1596 = !{!1597, !1598}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1595, file: !1590, line: 18, baseType: !164, size: 32)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1595, file: !1590, line: 19, baseType: !1599, size: 32)
!1599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 32, elements: !1600)
!1600 = !{!1601}
!1601 = !DISubrange(count: 4)
!1602 = !DILocalVariable(name: "w", scope: !1603, file: !151, line: 623, type: !1604)
!1603 = distinct !DILexicalBlock(scope: !1585, file: !151, line: 622, column: 19)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !39, line: 90, baseType: !41)
!1605 = !DILocalVariable(name: "bytes", scope: !1603, file: !151, line: 624, type: !38)
!1606 = !DILocalVariable(name: "j", scope: !1607, file: !151, line: 649, type: !38)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !151, line: 648, column: 27)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !151, line: 646, column: 29)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !151, line: 641, column: 23)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !151, line: 633, column: 30)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !151, line: 628, column: 30)
!1612 = distinct !DILexicalBlock(scope: !1603, file: !151, line: 626, column: 25)
!1613 = !DILocalVariable(name: "ilim", scope: !1614, file: !151, line: 676, type: !38)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !151, line: 673, column: 15)
!1615 = distinct !DILexicalBlock(scope: !1581, file: !151, line: 672, column: 17)
!1616 = !DILocation(line: 248, column: 33, scope: !1546)
!1617 = !DILocation(line: 248, column: 48, scope: !1546)
!1618 = !DILocation(line: 249, column: 39, scope: !1546)
!1619 = !DILocation(line: 249, column: 51, scope: !1546)
!1620 = !DILocation(line: 250, column: 46, scope: !1546)
!1621 = !DILocation(line: 250, column: 65, scope: !1546)
!1622 = !DILocation(line: 251, column: 47, scope: !1546)
!1623 = !DILocation(line: 252, column: 39, scope: !1546)
!1624 = !DILocation(line: 253, column: 39, scope: !1546)
!1625 = !DILocation(line: 256, column: 10, scope: !1546)
!1626 = !DILocation(line: 257, column: 10, scope: !1546)
!1627 = !DILocation(line: 258, column: 15, scope: !1546)
!1628 = !DILocation(line: 259, column: 10, scope: !1546)
!1629 = !DILocation(line: 260, column: 8, scope: !1546)
!1630 = !DILocation(line: 261, column: 25, scope: !1546)
!1631 = !DILocation(line: 261, column: 36, scope: !1546)
!1632 = !DILocation(line: 262, column: 8, scope: !1546)
!1633 = !DILocation(line: 263, column: 8, scope: !1546)
!1634 = !DILocation(line: 264, column: 8, scope: !1546)
!1635 = !DILocation(line: 265, column: 8, scope: !1546)
!1636 = !DILocation(line: 265, column: 3, scope: !1546)
!1637 = !DILocation(line: 308, column: 3, scope: !1546)
!1638 = !DILocation(line: 315, column: 11, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1546, file: !151, line: 309, column: 5)
!1640 = !DILocation(line: 315, column: 12, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1639, file: !151, line: 315, column: 11)
!1642 = !DILocation(line: 316, column: 9, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !151, line: 316, column: 9)
!1644 = distinct !DILexicalBlock(scope: !1641, file: !151, line: 316, column: 9)
!1645 = !DILocation(line: 316, column: 9, scope: !1644)
!1646 = !DILocation(line: 354, column: 26, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !151, line: 332, column: 11)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !151, line: 331, column: 13)
!1649 = distinct !DILexicalBlock(scope: !1639, file: !151, line: 330, column: 7)
!1650 = !DILocation(line: 355, column: 27, scope: !1647)
!1651 = !DILocation(line: 356, column: 11, scope: !1647)
!1652 = !DILocation(line: 357, column: 14, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1649, file: !151, line: 357, column: 13)
!1654 = !DILocation(line: 357, column: 13, scope: !1649)
!1655 = !DILocation(line: 358, column: 43, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !151, line: 358, column: 11)
!1657 = distinct !DILexicalBlock(scope: !1653, file: !151, line: 358, column: 11)
!1658 = !DILocation(line: 358, column: 11, scope: !1657)
!1659 = !DILocation(line: 359, column: 13, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !151, line: 359, column: 13)
!1661 = distinct !DILexicalBlock(scope: !1656, file: !151, line: 359, column: 13)
!1662 = !DILocation(line: 359, column: 13, scope: !1661)
!1663 = !DILocation(line: 358, column: 70, scope: !1656)
!1664 = distinct !{!1664, !1658, !1665}
!1665 = !DILocation(line: 359, column: 13, scope: !1657)
!1666 = !DILocation(line: 362, column: 28, scope: !1649)
!1667 = !DILocation(line: 364, column: 7, scope: !1639)
!1668 = !DILocation(line: 367, column: 7, scope: !1639)
!1669 = !DILocation(line: 370, column: 7, scope: !1639)
!1670 = !DILocation(line: 373, column: 12, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1639, file: !151, line: 373, column: 11)
!1672 = !DILocation(line: 373, column: 11, scope: !1639)
!1673 = !DILocation(line: 378, column: 12, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1639, file: !151, line: 378, column: 11)
!1675 = !DILocation(line: 378, column: 11, scope: !1639)
!1676 = !DILocation(line: 379, column: 9, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !151, line: 379, column: 9)
!1678 = distinct !DILexicalBlock(scope: !1674, file: !151, line: 379, column: 9)
!1679 = !DILocation(line: 379, column: 9, scope: !1678)
!1680 = !DILocation(line: 386, column: 7, scope: !1639)
!1681 = !DILocation(line: 389, column: 7, scope: !1639)
!1682 = !DILocation(line: 255, column: 10, scope: !1546)
!1683 = !DILocation(line: 392, column: 8, scope: !1575)
!1684 = !DILocation(line: 392, column: 27, scope: !1574)
!1685 = !DILocation(line: 392, column: 19, scope: !1574)
!1686 = !DILocation(line: 392, column: 60, scope: !1574)
!1687 = !DILocation(line: 392, column: 3, scope: !1575)
!1688 = !DILocation(line: 392, column: 41, scope: !1574)
!1689 = !DILocation(line: 392, column: 48, scope: !1574)
!1690 = !DILocation(line: 396, column: 12, scope: !1573)
!1691 = !DILocation(line: 397, column: 12, scope: !1573)
!1692 = !DILocation(line: 398, column: 12, scope: !1573)
!1693 = !DILocation(line: 401, column: 11, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1573, file: !151, line: 400, column: 11)
!1695 = !DILocation(line: 403, column: 17, scope: !1694)
!1696 = !DILocation(line: 404, column: 39, scope: !1694)
!1697 = !DILocation(line: 408, column: 32, scope: !1694)
!1698 = !DILocation(line: 404, column: 19, scope: !1694)
!1699 = !DILocation(line: 404, column: 15, scope: !1694)
!1700 = !DILocation(line: 409, column: 11, scope: !1694)
!1701 = !DILocation(line: 409, column: 26, scope: !1694)
!1702 = !DILocation(line: 409, column: 14, scope: !1694)
!1703 = !DILocation(line: 409, column: 63, scope: !1694)
!1704 = !DILocation(line: 400, column: 11, scope: !1573)
!1705 = !DILocation(line: 416, column: 11, scope: !1573)
!1706 = !DILocation(line: 394, column: 21, scope: !1573)
!1707 = !DILocation(line: 417, column: 7, scope: !1573)
!1708 = !DILocation(line: 420, column: 15, scope: !1582)
!1709 = !DILocation(line: 422, column: 15, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !151, line: 422, column: 15)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !151, line: 421, column: 13)
!1712 = distinct !DILexicalBlock(scope: !1582, file: !151, line: 420, column: 15)
!1713 = !DILocation(line: 422, column: 15, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1710, file: !151, line: 422, column: 15)
!1715 = !DILocation(line: 422, column: 15, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !151, line: 422, column: 15)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !151, line: 422, column: 15)
!1718 = distinct !DILexicalBlock(scope: !1714, file: !151, line: 422, column: 15)
!1719 = !DILocation(line: 422, column: 15, scope: !1717)
!1720 = !DILocation(line: 422, column: 15, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !151, line: 422, column: 15)
!1722 = distinct !DILexicalBlock(scope: !1718, file: !151, line: 422, column: 15)
!1723 = !DILocation(line: 422, column: 15, scope: !1722)
!1724 = !DILocation(line: 422, column: 15, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !151, line: 422, column: 15)
!1726 = distinct !DILexicalBlock(scope: !1718, file: !151, line: 422, column: 15)
!1727 = !DILocation(line: 422, column: 15, scope: !1726)
!1728 = !DILocation(line: 422, column: 15, scope: !1718)
!1729 = !DILocation(line: 422, column: 15, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !151, line: 422, column: 15)
!1731 = distinct !DILexicalBlock(scope: !1710, file: !151, line: 422, column: 15)
!1732 = !DILocation(line: 422, column: 15, scope: !1731)
!1733 = !DILocation(line: 430, column: 19, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1711, file: !151, line: 429, column: 19)
!1735 = !DILocation(line: 430, column: 24, scope: !1734)
!1736 = !DILocation(line: 430, column: 28, scope: !1734)
!1737 = !DILocation(line: 430, column: 38, scope: !1734)
!1738 = !DILocation(line: 430, column: 48, scope: !1734)
!1739 = !DILocation(line: 430, column: 59, scope: !1734)
!1740 = !DILocation(line: 432, column: 19, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !151, line: 432, column: 19)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !151, line: 432, column: 19)
!1743 = distinct !DILexicalBlock(scope: !1734, file: !151, line: 431, column: 17)
!1744 = !DILocation(line: 432, column: 19, scope: !1742)
!1745 = !DILocation(line: 433, column: 19, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !151, line: 433, column: 19)
!1747 = distinct !DILexicalBlock(scope: !1743, file: !151, line: 433, column: 19)
!1748 = !DILocation(line: 433, column: 19, scope: !1747)
!1749 = !DILocation(line: 434, column: 17, scope: !1743)
!1750 = !DILocation(line: 441, column: 20, scope: !1712)
!1751 = !DILocation(line: 446, column: 11, scope: !1582)
!1752 = !DILocation(line: 449, column: 19, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1582, file: !151, line: 447, column: 13)
!1754 = !DILocation(line: 455, column: 19, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1753, file: !151, line: 454, column: 19)
!1756 = !DILocation(line: 455, column: 24, scope: !1755)
!1757 = !DILocation(line: 455, column: 28, scope: !1755)
!1758 = !DILocation(line: 455, column: 38, scope: !1755)
!1759 = !DILocation(line: 455, column: 47, scope: !1755)
!1760 = !DILocation(line: 455, column: 41, scope: !1755)
!1761 = !DILocation(line: 455, column: 52, scope: !1755)
!1762 = !DILocation(line: 454, column: 19, scope: !1753)
!1763 = !DILocation(line: 456, column: 25, scope: !1755)
!1764 = !DILocation(line: 456, column: 17, scope: !1755)
!1765 = !DILocation(line: 463, column: 25, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1755, file: !151, line: 457, column: 19)
!1767 = !DILocation(line: 467, column: 21, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !151, line: 467, column: 21)
!1769 = distinct !DILexicalBlock(scope: !1766, file: !151, line: 467, column: 21)
!1770 = !DILocation(line: 467, column: 21, scope: !1769)
!1771 = !DILocation(line: 468, column: 21, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !151, line: 468, column: 21)
!1773 = distinct !DILexicalBlock(scope: !1766, file: !151, line: 468, column: 21)
!1774 = !DILocation(line: 468, column: 21, scope: !1773)
!1775 = !DILocation(line: 469, column: 21, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !151, line: 469, column: 21)
!1777 = distinct !DILexicalBlock(scope: !1766, file: !151, line: 469, column: 21)
!1778 = !DILocation(line: 469, column: 21, scope: !1777)
!1779 = !DILocation(line: 470, column: 21, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !151, line: 470, column: 21)
!1781 = distinct !DILexicalBlock(scope: !1766, file: !151, line: 470, column: 21)
!1782 = !DILocation(line: 470, column: 21, scope: !1781)
!1783 = !DILocation(line: 471, column: 21, scope: !1766)
!1784 = !DILocation(line: 395, column: 21, scope: !1573)
!1785 = !DILocation(line: 484, column: 31, scope: !1582)
!1786 = !DILocation(line: 485, column: 31, scope: !1582)
!1787 = !DILocation(line: 487, column: 31, scope: !1582)
!1788 = !DILocation(line: 488, column: 31, scope: !1582)
!1789 = !DILocation(line: 489, column: 31, scope: !1582)
!1790 = !DILocation(line: 492, column: 15, scope: !1582)
!1791 = !DILocation(line: 494, column: 19, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !151, line: 493, column: 13)
!1793 = distinct !DILexicalBlock(scope: !1582, file: !151, line: 492, column: 15)
!1794 = !DILocation(line: 501, column: 33, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1582, file: !151, line: 501, column: 15)
!1796 = !DILocation(line: 506, column: 15, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1582, file: !151, line: 505, column: 15)
!1798 = !DILocation(line: 510, column: 15, scope: !1582)
!1799 = !DILocation(line: 518, column: 26, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1582, file: !151, line: 518, column: 15)
!1801 = !DILocation(line: 518, column: 15, scope: !1582)
!1802 = !DILocation(line: 518, column: 40, scope: !1800)
!1803 = !DILocation(line: 518, column: 47, scope: !1800)
!1804 = !DILocation(line: 522, column: 17, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1582, file: !151, line: 522, column: 15)
!1806 = !DILocation(line: 518, column: 18, scope: !1800)
!1807 = !DILocation(line: 518, column: 65, scope: !1800)
!1808 = !DILocation(line: 522, column: 15, scope: !1582)
!1809 = !DILocation(line: 526, column: 11, scope: !1582)
!1810 = !DILocation(line: 541, column: 15, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1582, file: !151, line: 540, column: 15)
!1812 = !DILocation(line: 548, column: 15, scope: !1582)
!1813 = !DILocation(line: 550, column: 19, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !151, line: 549, column: 13)
!1815 = distinct !DILexicalBlock(scope: !1582, file: !151, line: 548, column: 15)
!1816 = !DILocation(line: 553, column: 19, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1814, file: !151, line: 553, column: 19)
!1818 = !DILocation(line: 553, column: 35, scope: !1817)
!1819 = !DILocation(line: 553, column: 30, scope: !1817)
!1820 = !DILocation(line: 562, column: 15, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !151, line: 562, column: 15)
!1822 = distinct !DILexicalBlock(scope: !1814, file: !151, line: 562, column: 15)
!1823 = !DILocation(line: 562, column: 15, scope: !1822)
!1824 = !DILocation(line: 563, column: 15, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !151, line: 563, column: 15)
!1826 = distinct !DILexicalBlock(scope: !1814, file: !151, line: 563, column: 15)
!1827 = !DILocation(line: 563, column: 15, scope: !1826)
!1828 = !DILocation(line: 564, column: 15, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !151, line: 564, column: 15)
!1830 = distinct !DILexicalBlock(scope: !1814, file: !151, line: 564, column: 15)
!1831 = !DILocation(line: 564, column: 15, scope: !1830)
!1832 = !DILocation(line: 566, column: 13, scope: !1814)
!1833 = !DILocation(line: 606, column: 17, scope: !1581)
!1834 = !DILocation(line: 602, column: 20, scope: !1581)
!1835 = !DILocation(line: 609, column: 29, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1586, file: !151, line: 607, column: 15)
!1837 = !{!1838, !1838, i64 0}
!1838 = !{!"short", !659, i64 0}
!1839 = !DILocation(line: 609, column: 27, scope: !1836)
!1840 = !DILocation(line: 604, column: 18, scope: !1581)
!1841 = !DILocation(line: 610, column: 15, scope: !1836)
!1842 = !DILocation(line: 613, column: 17, scope: !1585)
!1843 = !DILocation(line: 614, column: 17, scope: !1585)
!1844 = !DILocation(line: 618, column: 29, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1585, file: !151, line: 618, column: 21)
!1846 = !DILocation(line: 618, column: 21, scope: !1585)
!1847 = !DILocation(line: 619, column: 29, scope: !1845)
!1848 = !DILocation(line: 619, column: 19, scope: !1845)
!1849 = !DILocation(line: 621, column: 17, scope: !1585)
!1850 = distinct !{!1850, !1849, !1851}
!1851 = !DILocation(line: 667, column: 44, scope: !1585)
!1852 = !DILocation(line: 623, column: 21, scope: !1603)
!1853 = !DILocation(line: 624, column: 56, scope: !1603)
!1854 = !DILocation(line: 624, column: 50, scope: !1603)
!1855 = !DILocation(line: 625, column: 53, scope: !1603)
!1856 = !DILocation(line: 613, column: 27, scope: !1585)
!1857 = !DILocation(line: 623, column: 29, scope: !1603)
!1858 = !DILocation(line: 624, column: 36, scope: !1603)
!1859 = !DILocation(line: 624, column: 28, scope: !1603)
!1860 = !DILocation(line: 626, column: 25, scope: !1603)
!1861 = !DILocation(line: 636, column: 38, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1610, file: !151, line: 634, column: 23)
!1863 = !DILocation(line: 636, column: 48, scope: !1862)
!1864 = !DILocation(line: 636, column: 51, scope: !1862)
!1865 = !DILocation(line: 636, column: 25, scope: !1862)
!1866 = !DILocation(line: 637, column: 28, scope: !1862)
!1867 = !DILocation(line: 636, column: 34, scope: !1862)
!1868 = distinct !{!1868, !1865, !1866}
!1869 = !DILocation(line: 650, column: 43, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !151, line: 650, column: 29)
!1871 = distinct !DILexicalBlock(scope: !1607, file: !151, line: 650, column: 29)
!1872 = !DILocation(line: 647, column: 29, scope: !1608)
!1873 = !DILocation(line: 649, column: 36, scope: !1607)
!1874 = !DILocation(line: 651, column: 49, scope: !1870)
!1875 = !DILocation(line: 651, column: 39, scope: !1870)
!1876 = !DILocation(line: 651, column: 31, scope: !1870)
!1877 = !DILocation(line: 650, column: 53, scope: !1870)
!1878 = !DILocation(line: 650, column: 29, scope: !1871)
!1879 = distinct !{!1879, !1878, !1880}
!1880 = !DILocation(line: 659, column: 33, scope: !1871)
!1881 = !DILocation(line: 666, column: 19, scope: !1585)
!1882 = !DILocation(line: 662, column: 41, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1609, file: !151, line: 662, column: 29)
!1884 = !DILocation(line: 662, column: 31, scope: !1883)
!1885 = !DILocation(line: 662, column: 29, scope: !1609)
!1886 = !DILocation(line: 664, column: 27, scope: !1609)
!1887 = !DILocation(line: 667, column: 26, scope: !1585)
!1888 = !DILocation(line: 667, column: 24, scope: !1585)
!1889 = !DILocation(line: 666, column: 19, scope: !1603)
!1890 = !DILocation(line: 668, column: 15, scope: !1586)
!1891 = !DILocation(line: 670, column: 40, scope: !1581)
!1892 = !DILocation(line: 672, column: 19, scope: !1615)
!1893 = !DILocation(line: 672, column: 45, scope: !1615)
!1894 = !DILocation(line: 672, column: 23, scope: !1615)
!1895 = !DILocation(line: 676, column: 33, scope: !1614)
!1896 = !DILocation(line: 676, column: 24, scope: !1614)
!1897 = !DILocation(line: 678, column: 17, scope: !1614)
!1898 = !DILocation(line: 680, column: 43, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !151, line: 680, column: 25)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !151, line: 679, column: 19)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !151, line: 678, column: 17)
!1902 = distinct !DILexicalBlock(scope: !1614, file: !151, line: 678, column: 17)
!1903 = !DILocation(line: 682, column: 25, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !151, line: 682, column: 25)
!1905 = distinct !DILexicalBlock(scope: !1899, file: !151, line: 681, column: 23)
!1906 = !DILocation(line: 682, column: 25, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1904, file: !151, line: 682, column: 25)
!1908 = !DILocation(line: 682, column: 25, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !151, line: 682, column: 25)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !151, line: 682, column: 25)
!1911 = distinct !DILexicalBlock(scope: !1907, file: !151, line: 682, column: 25)
!1912 = !DILocation(line: 682, column: 25, scope: !1910)
!1913 = !DILocation(line: 682, column: 25, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !151, line: 682, column: 25)
!1915 = distinct !DILexicalBlock(scope: !1911, file: !151, line: 682, column: 25)
!1916 = !DILocation(line: 682, column: 25, scope: !1915)
!1917 = !DILocation(line: 682, column: 25, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !151, line: 682, column: 25)
!1919 = distinct !DILexicalBlock(scope: !1911, file: !151, line: 682, column: 25)
!1920 = !DILocation(line: 682, column: 25, scope: !1919)
!1921 = !DILocation(line: 682, column: 25, scope: !1911)
!1922 = !DILocation(line: 682, column: 25, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !151, line: 682, column: 25)
!1924 = distinct !DILexicalBlock(scope: !1904, file: !151, line: 682, column: 25)
!1925 = !DILocation(line: 682, column: 25, scope: !1924)
!1926 = !DILocation(line: 683, column: 25, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !151, line: 683, column: 25)
!1928 = distinct !DILexicalBlock(scope: !1905, file: !151, line: 683, column: 25)
!1929 = !DILocation(line: 683, column: 25, scope: !1928)
!1930 = !DILocation(line: 684, column: 25, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !151, line: 684, column: 25)
!1932 = distinct !DILexicalBlock(scope: !1905, file: !151, line: 684, column: 25)
!1933 = !DILocation(line: 684, column: 25, scope: !1932)
!1934 = !DILocation(line: 685, column: 38, scope: !1905)
!1935 = !DILocation(line: 685, column: 33, scope: !1905)
!1936 = !DILocation(line: 686, column: 23, scope: !1905)
!1937 = !DILocation(line: 687, column: 30, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1899, file: !151, line: 687, column: 30)
!1939 = !DILocation(line: 687, column: 30, scope: !1899)
!1940 = !DILocation(line: 689, column: 25, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !151, line: 689, column: 25)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !151, line: 689, column: 25)
!1943 = distinct !DILexicalBlock(scope: !1938, file: !151, line: 688, column: 23)
!1944 = !DILocation(line: 689, column: 25, scope: !1942)
!1945 = !DILocation(line: 691, column: 23, scope: !1943)
!1946 = !DILocation(line: 692, column: 35, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1900, file: !151, line: 692, column: 25)
!1948 = !DILocation(line: 692, column: 30, scope: !1947)
!1949 = !DILocation(line: 692, column: 25, scope: !1900)
!1950 = !DILocation(line: 694, column: 21, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !151, line: 694, column: 21)
!1952 = distinct !DILexicalBlock(scope: !1900, file: !151, line: 694, column: 21)
!1953 = !DILocation(line: 694, column: 21, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !151, line: 694, column: 21)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !151, line: 694, column: 21)
!1956 = distinct !DILexicalBlock(scope: !1951, file: !151, line: 694, column: 21)
!1957 = !DILocation(line: 694, column: 21, scope: !1955)
!1958 = !DILocation(line: 694, column: 21, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !151, line: 694, column: 21)
!1960 = distinct !DILexicalBlock(scope: !1956, file: !151, line: 694, column: 21)
!1961 = !DILocation(line: 694, column: 21, scope: !1960)
!1962 = !DILocation(line: 694, column: 21, scope: !1956)
!1963 = !DILocation(line: 695, column: 21, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !151, line: 695, column: 21)
!1965 = distinct !DILexicalBlock(scope: !1900, file: !151, line: 695, column: 21)
!1966 = !DILocation(line: 695, column: 21, scope: !1965)
!1967 = !DILocation(line: 696, column: 25, scope: !1900)
!1968 = !DILocation(line: 678, column: 17, scope: !1901)
!1969 = distinct !{!1969, !1970, !1971}
!1970 = !DILocation(line: 678, column: 17, scope: !1902)
!1971 = !DILocation(line: 697, column: 19, scope: !1902)
!1972 = !DILocation(line: 704, column: 34, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1573, file: !151, line: 704, column: 11)
!1974 = !DILocation(line: 706, column: 14, scope: !1973)
!1975 = !DILocation(line: 707, column: 14, scope: !1973)
!1976 = !DILocation(line: 707, column: 35, scope: !1973)
!1977 = !DILocation(line: 707, column: 17, scope: !1973)
!1978 = !DILocation(line: 707, column: 53, scope: !1973)
!1979 = !DILocation(line: 707, column: 47, scope: !1973)
!1980 = !DILocation(line: 707, column: 65, scope: !1973)
!1981 = !DILocation(line: 708, column: 15, scope: !1973)
!1982 = !DILocation(line: 708, column: 11, scope: !1973)
!1983 = !DILocation(line: 704, column: 11, scope: !1573)
!1984 = !DILocation(line: 712, column: 7, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1573, file: !151, line: 712, column: 7)
!1986 = !DILocation(line: 712, column: 7, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1985, file: !151, line: 712, column: 7)
!1988 = !DILocation(line: 712, column: 7, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !151, line: 712, column: 7)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !151, line: 712, column: 7)
!1991 = distinct !DILexicalBlock(scope: !1987, file: !151, line: 712, column: 7)
!1992 = !DILocation(line: 712, column: 7, scope: !1990)
!1993 = !DILocation(line: 712, column: 7, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !151, line: 712, column: 7)
!1995 = distinct !DILexicalBlock(scope: !1991, file: !151, line: 712, column: 7)
!1996 = !DILocation(line: 712, column: 7, scope: !1995)
!1997 = !DILocation(line: 712, column: 7, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !151, line: 712, column: 7)
!1999 = distinct !DILexicalBlock(scope: !1991, file: !151, line: 712, column: 7)
!2000 = !DILocation(line: 712, column: 7, scope: !1999)
!2001 = !DILocation(line: 712, column: 7, scope: !1991)
!2002 = !DILocation(line: 712, column: 7, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !151, line: 712, column: 7)
!2004 = distinct !DILexicalBlock(scope: !1985, file: !151, line: 712, column: 7)
!2005 = !DILocation(line: 712, column: 7, scope: !2004)
!2006 = !DILocation(line: 715, column: 7, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !151, line: 715, column: 7)
!2008 = distinct !DILexicalBlock(scope: !1573, file: !151, line: 715, column: 7)
!2009 = !DILocation(line: 715, column: 7, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !151, line: 715, column: 7)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !151, line: 715, column: 7)
!2012 = distinct !DILexicalBlock(scope: !2007, file: !151, line: 715, column: 7)
!2013 = !DILocation(line: 715, column: 7, scope: !2011)
!2014 = !DILocation(line: 715, column: 7, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !151, line: 715, column: 7)
!2016 = distinct !DILexicalBlock(scope: !2012, file: !151, line: 715, column: 7)
!2017 = !DILocation(line: 715, column: 7, scope: !2016)
!2018 = !DILocation(line: 715, column: 7, scope: !2012)
!2019 = !DILocation(line: 716, column: 7, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !151, line: 716, column: 7)
!2021 = distinct !DILexicalBlock(scope: !1573, file: !151, line: 716, column: 7)
!2022 = !DILocation(line: 716, column: 7, scope: !2021)
!2023 = !DILocation(line: 718, column: 13, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1573, file: !151, line: 718, column: 11)
!2025 = !DILocation(line: 718, column: 11, scope: !1573)
!2026 = !DILocation(line: 720, column: 5, scope: !1574)
!2027 = !DILocation(line: 392, column: 75, scope: !1574)
!2028 = !DILocation(line: 392, column: 3, scope: !1574)
!2029 = distinct !{!2029, !1687, !2030}
!2030 = !DILocation(line: 720, column: 5, scope: !1575)
!2031 = !DILocation(line: 722, column: 11, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !1546, file: !151, line: 722, column: 7)
!2033 = !DILocation(line: 722, column: 16, scope: !2032)
!2034 = !DILocation(line: 730, column: 51, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !1546, file: !151, line: 730, column: 7)
!2036 = !DILocation(line: 731, column: 10, scope: !2035)
!2037 = !DILocation(line: 733, column: 11, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !151, line: 733, column: 11)
!2039 = distinct !DILexicalBlock(scope: !2035, file: !151, line: 732, column: 5)
!2040 = !DILocation(line: 733, column: 11, scope: !2039)
!2041 = !DILocation(line: 734, column: 16, scope: !2038)
!2042 = !DILocation(line: 734, column: 9, scope: !2038)
!2043 = !DILocation(line: 738, column: 18, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2038, file: !151, line: 738, column: 16)
!2045 = !DILocation(line: 738, column: 32, scope: !2044)
!2046 = !DILocation(line: 738, column: 29, scope: !2044)
!2047 = !DILocation(line: 747, column: 7, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !1546, file: !151, line: 747, column: 7)
!2049 = !DILocation(line: 747, column: 20, scope: !2048)
!2050 = !DILocation(line: 748, column: 12, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !151, line: 748, column: 5)
!2052 = distinct !DILexicalBlock(scope: !2048, file: !151, line: 748, column: 5)
!2053 = !DILocation(line: 748, column: 5, scope: !2052)
!2054 = !DILocation(line: 749, column: 7, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !151, line: 749, column: 7)
!2056 = distinct !DILexicalBlock(scope: !2051, file: !151, line: 749, column: 7)
!2057 = !DILocation(line: 749, column: 7, scope: !2056)
!2058 = !DILocation(line: 748, column: 39, scope: !2051)
!2059 = distinct !{!2059, !2053, !2060}
!2060 = !DILocation(line: 749, column: 7, scope: !2052)
!2061 = !DILocation(line: 751, column: 11, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !1546, file: !151, line: 751, column: 7)
!2063 = !DILocation(line: 751, column: 7, scope: !1546)
!2064 = !DILocation(line: 752, column: 5, scope: !2062)
!2065 = !DILocation(line: 752, column: 17, scope: !2062)
!2066 = !DILocation(line: 758, column: 21, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !1546, file: !151, line: 758, column: 7)
!2068 = !DILocation(line: 758, column: 54, scope: !2067)
!2069 = !DILocation(line: 758, column: 51, scope: !2067)
!2070 = !DILocation(line: 762, column: 42, scope: !1546)
!2071 = !DILocation(line: 760, column: 10, scope: !1546)
!2072 = !DILocation(line: 760, column: 3, scope: !1546)
!2073 = !DILocation(line: 764, column: 1, scope: !1546)
!2074 = distinct !DISubprogram(name: "gettext_quote", scope: !151, file: !151, line: 199, type: !2075, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !2077)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!50, !50, !112}
!2077 = !{!2078, !2079, !2080, !2081}
!2078 = !DILocalVariable(name: "msgid", arg: 1, scope: !2074, file: !151, line: 199, type: !50)
!2079 = !DILocalVariable(name: "s", arg: 2, scope: !2074, file: !151, line: 199, type: !112)
!2080 = !DILocalVariable(name: "translation", scope: !2074, file: !151, line: 201, type: !50)
!2081 = !DILocalVariable(name: "locale_code", scope: !2074, file: !151, line: 202, type: !50)
!2082 = !DILocation(line: 199, column: 28, scope: !2074)
!2083 = !DILocation(line: 199, column: 54, scope: !2074)
!2084 = !DILocation(line: 201, column: 29, scope: !2074)
!2085 = !DILocation(line: 201, column: 15, scope: !2074)
!2086 = !DILocation(line: 204, column: 19, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2074, file: !151, line: 204, column: 7)
!2088 = !DILocation(line: 204, column: 7, scope: !2074)
!2089 = !DILocation(line: 225, column: 17, scope: !2074)
!2090 = !DILocation(line: 202, column: 15, scope: !2074)
!2091 = !DILocalVariable(name: "s2", arg: 2, scope: !2092, file: !2093, line: 160, type: !50)
!2092 = distinct !DISubprogram(name: "strcaseeq0", scope: !2093, file: !2093, line: 160, type: !2094, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !2096)
!2093 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!41, !50, !50, !22, !22, !22, !22, !22, !22, !22, !22, !22}
!2096 = !{!2097, !2091, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106}
!2097 = !DILocalVariable(name: "s1", arg: 1, scope: !2092, file: !2093, line: 160, type: !50)
!2098 = !DILocalVariable(name: "s20", arg: 3, scope: !2092, file: !2093, line: 160, type: !22)
!2099 = !DILocalVariable(name: "s21", arg: 4, scope: !2092, file: !2093, line: 160, type: !22)
!2100 = !DILocalVariable(name: "s22", arg: 5, scope: !2092, file: !2093, line: 160, type: !22)
!2101 = !DILocalVariable(name: "s23", arg: 6, scope: !2092, file: !2093, line: 160, type: !22)
!2102 = !DILocalVariable(name: "s24", arg: 7, scope: !2092, file: !2093, line: 160, type: !22)
!2103 = !DILocalVariable(name: "s25", arg: 8, scope: !2092, file: !2093, line: 160, type: !22)
!2104 = !DILocalVariable(name: "s26", arg: 9, scope: !2092, file: !2093, line: 160, type: !22)
!2105 = !DILocalVariable(name: "s27", arg: 10, scope: !2092, file: !2093, line: 160, type: !22)
!2106 = !DILocalVariable(name: "s28", arg: 11, scope: !2092, file: !2093, line: 160, type: !22)
!2107 = !DILocation(line: 160, column: 41, scope: !2092, inlinedAt: !2108)
!2108 = distinct !DILocation(line: 226, column: 7, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2074, file: !151, line: 226, column: 7)
!2110 = !DILocation(line: 160, column: 120, scope: !2092, inlinedAt: !2108)
!2111 = !DILocation(line: 160, column: 130, scope: !2092, inlinedAt: !2108)
!2112 = !DILocation(line: 162, column: 7, scope: !2113, inlinedAt: !2108)
!2113 = distinct !DILexicalBlock(scope: !2092, file: !2093, line: 162, column: 7)
!2114 = !DILocalVariable(name: "s2", arg: 2, scope: !2115, file: !2093, line: 146, type: !50)
!2115 = distinct !DISubprogram(name: "strcaseeq1", scope: !2093, file: !2093, line: 146, type: !2116, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !2118)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!41, !50, !50, !22, !22, !22, !22, !22, !22, !22, !22}
!2118 = !{!2119, !2114, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127}
!2119 = !DILocalVariable(name: "s1", arg: 1, scope: !2115, file: !2093, line: 146, type: !50)
!2120 = !DILocalVariable(name: "s21", arg: 3, scope: !2115, file: !2093, line: 146, type: !22)
!2121 = !DILocalVariable(name: "s22", arg: 4, scope: !2115, file: !2093, line: 146, type: !22)
!2122 = !DILocalVariable(name: "s23", arg: 5, scope: !2115, file: !2093, line: 146, type: !22)
!2123 = !DILocalVariable(name: "s24", arg: 6, scope: !2115, file: !2093, line: 146, type: !22)
!2124 = !DILocalVariable(name: "s25", arg: 7, scope: !2115, file: !2093, line: 146, type: !22)
!2125 = !DILocalVariable(name: "s26", arg: 8, scope: !2115, file: !2093, line: 146, type: !22)
!2126 = !DILocalVariable(name: "s27", arg: 9, scope: !2115, file: !2093, line: 146, type: !22)
!2127 = !DILocalVariable(name: "s28", arg: 10, scope: !2115, file: !2093, line: 146, type: !22)
!2128 = !DILocation(line: 146, column: 41, scope: !2115, inlinedAt: !2129)
!2129 = distinct !DILocation(line: 167, column: 16, scope: !2130, inlinedAt: !2108)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !2093, line: 164, column: 11)
!2131 = distinct !DILexicalBlock(scope: !2113, file: !2093, line: 163, column: 5)
!2132 = !DILocation(line: 146, column: 110, scope: !2115, inlinedAt: !2129)
!2133 = !DILocation(line: 146, column: 120, scope: !2115, inlinedAt: !2129)
!2134 = !DILocation(line: 148, column: 7, scope: !2135, inlinedAt: !2129)
!2135 = distinct !DILexicalBlock(scope: !2115, file: !2093, line: 148, column: 7)
!2136 = !DILocalVariable(name: "s2", arg: 2, scope: !2137, file: !2093, line: 132, type: !50)
!2137 = distinct !DISubprogram(name: "strcaseeq2", scope: !2093, file: !2093, line: 132, type: !2138, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !2140)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!41, !50, !50, !22, !22, !22, !22, !22, !22, !22}
!2140 = !{!2141, !2136, !2142, !2143, !2144, !2145, !2146, !2147, !2148}
!2141 = !DILocalVariable(name: "s1", arg: 1, scope: !2137, file: !2093, line: 132, type: !50)
!2142 = !DILocalVariable(name: "s22", arg: 3, scope: !2137, file: !2093, line: 132, type: !22)
!2143 = !DILocalVariable(name: "s23", arg: 4, scope: !2137, file: !2093, line: 132, type: !22)
!2144 = !DILocalVariable(name: "s24", arg: 5, scope: !2137, file: !2093, line: 132, type: !22)
!2145 = !DILocalVariable(name: "s25", arg: 6, scope: !2137, file: !2093, line: 132, type: !22)
!2146 = !DILocalVariable(name: "s26", arg: 7, scope: !2137, file: !2093, line: 132, type: !22)
!2147 = !DILocalVariable(name: "s27", arg: 8, scope: !2137, file: !2093, line: 132, type: !22)
!2148 = !DILocalVariable(name: "s28", arg: 9, scope: !2137, file: !2093, line: 132, type: !22)
!2149 = !DILocation(line: 132, column: 41, scope: !2137, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 153, column: 16, scope: !2151, inlinedAt: !2129)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !2093, line: 150, column: 11)
!2152 = distinct !DILexicalBlock(scope: !2135, file: !2093, line: 149, column: 5)
!2153 = !DILocation(line: 132, column: 100, scope: !2137, inlinedAt: !2150)
!2154 = !DILocation(line: 132, column: 110, scope: !2137, inlinedAt: !2150)
!2155 = !DILocation(line: 134, column: 7, scope: !2156, inlinedAt: !2150)
!2156 = distinct !DILexicalBlock(scope: !2137, file: !2093, line: 134, column: 7)
!2157 = !DILocalVariable(name: "s2", arg: 2, scope: !2158, file: !2093, line: 118, type: !50)
!2158 = distinct !DISubprogram(name: "strcaseeq3", scope: !2093, file: !2093, line: 118, type: !2159, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !2161)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!41, !50, !50, !22, !22, !22, !22, !22, !22}
!2161 = !{!2162, !2157, !2163, !2164, !2165, !2166, !2167, !2168}
!2162 = !DILocalVariable(name: "s1", arg: 1, scope: !2158, file: !2093, line: 118, type: !50)
!2163 = !DILocalVariable(name: "s23", arg: 3, scope: !2158, file: !2093, line: 118, type: !22)
!2164 = !DILocalVariable(name: "s24", arg: 4, scope: !2158, file: !2093, line: 118, type: !22)
!2165 = !DILocalVariable(name: "s25", arg: 5, scope: !2158, file: !2093, line: 118, type: !22)
!2166 = !DILocalVariable(name: "s26", arg: 6, scope: !2158, file: !2093, line: 118, type: !22)
!2167 = !DILocalVariable(name: "s27", arg: 7, scope: !2158, file: !2093, line: 118, type: !22)
!2168 = !DILocalVariable(name: "s28", arg: 8, scope: !2158, file: !2093, line: 118, type: !22)
!2169 = !DILocation(line: 118, column: 41, scope: !2158, inlinedAt: !2170)
!2170 = distinct !DILocation(line: 139, column: 16, scope: !2171, inlinedAt: !2150)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !2093, line: 136, column: 11)
!2172 = distinct !DILexicalBlock(scope: !2156, file: !2093, line: 135, column: 5)
!2173 = !DILocation(line: 118, column: 90, scope: !2158, inlinedAt: !2170)
!2174 = !DILocation(line: 118, column: 100, scope: !2158, inlinedAt: !2170)
!2175 = !DILocation(line: 120, column: 7, scope: !2176, inlinedAt: !2170)
!2176 = distinct !DILexicalBlock(scope: !2158, file: !2093, line: 120, column: 7)
!2177 = !DILocation(line: 120, column: 7, scope: !2158, inlinedAt: !2170)
!2178 = !DILocalVariable(name: "s2", arg: 2, scope: !2179, file: !2093, line: 104, type: !50)
!2179 = distinct !DISubprogram(name: "strcaseeq4", scope: !2093, file: !2093, line: 104, type: !2180, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !2182)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!41, !50, !50, !22, !22, !22, !22, !22}
!2182 = !{!2183, !2178, !2184, !2185, !2186, !2187, !2188}
!2183 = !DILocalVariable(name: "s1", arg: 1, scope: !2179, file: !2093, line: 104, type: !50)
!2184 = !DILocalVariable(name: "s24", arg: 3, scope: !2179, file: !2093, line: 104, type: !22)
!2185 = !DILocalVariable(name: "s25", arg: 4, scope: !2179, file: !2093, line: 104, type: !22)
!2186 = !DILocalVariable(name: "s26", arg: 5, scope: !2179, file: !2093, line: 104, type: !22)
!2187 = !DILocalVariable(name: "s27", arg: 6, scope: !2179, file: !2093, line: 104, type: !22)
!2188 = !DILocalVariable(name: "s28", arg: 7, scope: !2179, file: !2093, line: 104, type: !22)
!2189 = !DILocation(line: 104, column: 41, scope: !2179, inlinedAt: !2190)
!2190 = distinct !DILocation(line: 125, column: 16, scope: !2191, inlinedAt: !2170)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !2093, line: 122, column: 11)
!2192 = distinct !DILexicalBlock(scope: !2176, file: !2093, line: 121, column: 5)
!2193 = !DILocation(line: 104, column: 80, scope: !2179, inlinedAt: !2190)
!2194 = !DILocation(line: 104, column: 90, scope: !2179, inlinedAt: !2190)
!2195 = !DILocation(line: 106, column: 7, scope: !2196, inlinedAt: !2190)
!2196 = distinct !DILexicalBlock(scope: !2179, file: !2093, line: 106, column: 7)
!2197 = !DILocation(line: 106, column: 7, scope: !2179, inlinedAt: !2190)
!2198 = !DILocalVariable(name: "s2", arg: 2, scope: !2199, file: !2093, line: 90, type: !50)
!2199 = distinct !DISubprogram(name: "strcaseeq5", scope: !2093, file: !2093, line: 90, type: !2200, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !2202)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!41, !50, !50, !22, !22, !22, !22}
!2202 = !{!2203, !2198, !2204, !2205, !2206, !2207}
!2203 = !DILocalVariable(name: "s1", arg: 1, scope: !2199, file: !2093, line: 90, type: !50)
!2204 = !DILocalVariable(name: "s25", arg: 3, scope: !2199, file: !2093, line: 90, type: !22)
!2205 = !DILocalVariable(name: "s26", arg: 4, scope: !2199, file: !2093, line: 90, type: !22)
!2206 = !DILocalVariable(name: "s27", arg: 5, scope: !2199, file: !2093, line: 90, type: !22)
!2207 = !DILocalVariable(name: "s28", arg: 6, scope: !2199, file: !2093, line: 90, type: !22)
!2208 = !DILocation(line: 90, column: 41, scope: !2199, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 111, column: 16, scope: !2210, inlinedAt: !2190)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !2093, line: 108, column: 11)
!2211 = distinct !DILexicalBlock(scope: !2196, file: !2093, line: 107, column: 5)
!2212 = !DILocation(line: 90, column: 70, scope: !2199, inlinedAt: !2209)
!2213 = !DILocation(line: 90, column: 80, scope: !2199, inlinedAt: !2209)
!2214 = !DILocation(line: 92, column: 7, scope: !2215, inlinedAt: !2209)
!2215 = distinct !DILexicalBlock(scope: !2199, file: !2093, line: 92, column: 7)
!2216 = !DILocation(line: 92, column: 7, scope: !2199, inlinedAt: !2209)
!2217 = !DILocation(line: 227, column: 12, scope: !2109)
!2218 = !DILocation(line: 227, column: 21, scope: !2109)
!2219 = !DILocation(line: 227, column: 5, scope: !2109)
!2220 = !DILocation(line: 146, column: 41, scope: !2115, inlinedAt: !2221)
!2221 = distinct !DILocation(line: 167, column: 16, scope: !2130, inlinedAt: !2222)
!2222 = distinct !DILocation(line: 228, column: 7, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2074, file: !151, line: 228, column: 7)
!2224 = !DILocation(line: 146, column: 110, scope: !2115, inlinedAt: !2221)
!2225 = !DILocation(line: 146, column: 120, scope: !2115, inlinedAt: !2221)
!2226 = !DILocation(line: 148, column: 7, scope: !2135, inlinedAt: !2221)
!2227 = !DILocation(line: 132, column: 41, scope: !2137, inlinedAt: !2228)
!2228 = distinct !DILocation(line: 153, column: 16, scope: !2151, inlinedAt: !2221)
!2229 = !DILocation(line: 132, column: 100, scope: !2137, inlinedAt: !2228)
!2230 = !DILocation(line: 132, column: 110, scope: !2137, inlinedAt: !2228)
!2231 = !DILocation(line: 134, column: 7, scope: !2156, inlinedAt: !2228)
!2232 = !DILocation(line: 134, column: 7, scope: !2137, inlinedAt: !2228)
!2233 = !DILocation(line: 118, column: 41, scope: !2158, inlinedAt: !2234)
!2234 = distinct !DILocation(line: 139, column: 16, scope: !2171, inlinedAt: !2228)
!2235 = !DILocation(line: 118, column: 90, scope: !2158, inlinedAt: !2234)
!2236 = !DILocation(line: 118, column: 100, scope: !2158, inlinedAt: !2234)
!2237 = !DILocation(line: 120, column: 7, scope: !2176, inlinedAt: !2234)
!2238 = !DILocation(line: 120, column: 7, scope: !2158, inlinedAt: !2234)
!2239 = !DILocation(line: 104, column: 41, scope: !2179, inlinedAt: !2240)
!2240 = distinct !DILocation(line: 125, column: 16, scope: !2191, inlinedAt: !2234)
!2241 = !DILocation(line: 104, column: 80, scope: !2179, inlinedAt: !2240)
!2242 = !DILocation(line: 104, column: 90, scope: !2179, inlinedAt: !2240)
!2243 = !DILocation(line: 106, column: 7, scope: !2196, inlinedAt: !2240)
!2244 = !DILocation(line: 106, column: 7, scope: !2179, inlinedAt: !2240)
!2245 = !DILocation(line: 90, column: 41, scope: !2199, inlinedAt: !2246)
!2246 = distinct !DILocation(line: 111, column: 16, scope: !2210, inlinedAt: !2240)
!2247 = !DILocation(line: 90, column: 70, scope: !2199, inlinedAt: !2246)
!2248 = !DILocation(line: 90, column: 80, scope: !2199, inlinedAt: !2246)
!2249 = !DILocation(line: 92, column: 7, scope: !2215, inlinedAt: !2246)
!2250 = !DILocation(line: 92, column: 7, scope: !2199, inlinedAt: !2246)
!2251 = !DILocalVariable(name: "s2", arg: 2, scope: !2252, file: !2093, line: 76, type: !50)
!2252 = distinct !DISubprogram(name: "strcaseeq6", scope: !2093, file: !2093, line: 76, type: !2253, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !2255)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!41, !50, !50, !22, !22, !22}
!2255 = !{!2256, !2251, !2257, !2258, !2259}
!2256 = !DILocalVariable(name: "s1", arg: 1, scope: !2252, file: !2093, line: 76, type: !50)
!2257 = !DILocalVariable(name: "s26", arg: 3, scope: !2252, file: !2093, line: 76, type: !22)
!2258 = !DILocalVariable(name: "s27", arg: 4, scope: !2252, file: !2093, line: 76, type: !22)
!2259 = !DILocalVariable(name: "s28", arg: 5, scope: !2252, file: !2093, line: 76, type: !22)
!2260 = !DILocation(line: 76, column: 41, scope: !2252, inlinedAt: !2261)
!2261 = distinct !DILocation(line: 97, column: 16, scope: !2262, inlinedAt: !2246)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !2093, line: 94, column: 11)
!2263 = distinct !DILexicalBlock(scope: !2215, file: !2093, line: 93, column: 5)
!2264 = !DILocation(line: 76, column: 60, scope: !2252, inlinedAt: !2261)
!2265 = !DILocation(line: 76, column: 70, scope: !2252, inlinedAt: !2261)
!2266 = !DILocation(line: 78, column: 7, scope: !2267, inlinedAt: !2261)
!2267 = distinct !DILexicalBlock(scope: !2252, file: !2093, line: 78, column: 7)
!2268 = !DILocation(line: 78, column: 7, scope: !2252, inlinedAt: !2261)
!2269 = !DILocalVariable(name: "s2", arg: 2, scope: !2270, file: !2093, line: 62, type: !50)
!2270 = distinct !DISubprogram(name: "strcaseeq7", scope: !2093, file: !2093, line: 62, type: !2271, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !2273)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!41, !50, !50, !22, !22}
!2273 = !{!2274, !2269, !2275, !2276}
!2274 = !DILocalVariable(name: "s1", arg: 1, scope: !2270, file: !2093, line: 62, type: !50)
!2275 = !DILocalVariable(name: "s27", arg: 3, scope: !2270, file: !2093, line: 62, type: !22)
!2276 = !DILocalVariable(name: "s28", arg: 4, scope: !2270, file: !2093, line: 62, type: !22)
!2277 = !DILocation(line: 62, column: 41, scope: !2270, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 83, column: 16, scope: !2279, inlinedAt: !2261)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !2093, line: 80, column: 11)
!2280 = distinct !DILexicalBlock(scope: !2267, file: !2093, line: 79, column: 5)
!2281 = !DILocation(line: 62, column: 50, scope: !2270, inlinedAt: !2278)
!2282 = !DILocation(line: 62, column: 60, scope: !2270, inlinedAt: !2278)
!2283 = !DILocation(line: 64, column: 7, scope: !2284, inlinedAt: !2278)
!2284 = distinct !DILexicalBlock(scope: !2270, file: !2093, line: 64, column: 7)
!2285 = !DILocation(line: 228, column: 7, scope: !2074)
!2286 = !DILocation(line: 229, column: 12, scope: !2223)
!2287 = !DILocation(line: 229, column: 21, scope: !2223)
!2288 = !DILocation(line: 229, column: 5, scope: !2223)
!2289 = !DILocation(line: 231, column: 13, scope: !2074)
!2290 = !DILocation(line: 231, column: 11, scope: !2074)
!2291 = !DILocation(line: 231, column: 3, scope: !2074)
!2292 = !DILocation(line: 232, column: 1, scope: !2074)
!2293 = distinct !DISubprogram(name: "quotearg_alloc", scope: !151, file: !151, line: 791, type: !2294, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !2296)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!21, !50, !38, !1418}
!2296 = !{!2297, !2298, !2299}
!2297 = !DILocalVariable(name: "arg", arg: 1, scope: !2293, file: !151, line: 791, type: !50)
!2298 = !DILocalVariable(name: "argsize", arg: 2, scope: !2293, file: !151, line: 791, type: !38)
!2299 = !DILocalVariable(name: "o", arg: 3, scope: !2293, file: !151, line: 792, type: !1418)
!2300 = !DILocation(line: 791, column: 29, scope: !2293)
!2301 = !DILocation(line: 791, column: 41, scope: !2293)
!2302 = !DILocation(line: 792, column: 47, scope: !2293)
!2303 = !DILocalVariable(name: "arg", arg: 1, scope: !2304, file: !151, line: 804, type: !50)
!2304 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !151, file: !151, line: 804, type: !2305, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !2307)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!21, !50, !38, !602, !1418}
!2307 = !{!2303, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315}
!2308 = !DILocalVariable(name: "argsize", arg: 2, scope: !2304, file: !151, line: 804, type: !38)
!2309 = !DILocalVariable(name: "size", arg: 3, scope: !2304, file: !151, line: 804, type: !602)
!2310 = !DILocalVariable(name: "o", arg: 4, scope: !2304, file: !151, line: 805, type: !1418)
!2311 = !DILocalVariable(name: "p", scope: !2304, file: !151, line: 807, type: !1418)
!2312 = !DILocalVariable(name: "e", scope: !2304, file: !151, line: 808, type: !41)
!2313 = !DILocalVariable(name: "flags", scope: !2304, file: !151, line: 810, type: !41)
!2314 = !DILocalVariable(name: "bufsize", scope: !2304, file: !151, line: 811, type: !38)
!2315 = !DILocalVariable(name: "buf", scope: !2304, file: !151, line: 815, type: !21)
!2316 = !DILocation(line: 804, column: 33, scope: !2304, inlinedAt: !2317)
!2317 = distinct !DILocation(line: 794, column: 10, scope: !2293)
!2318 = !DILocation(line: 804, column: 45, scope: !2304, inlinedAt: !2317)
!2319 = !DILocation(line: 804, column: 62, scope: !2304, inlinedAt: !2317)
!2320 = !DILocation(line: 805, column: 51, scope: !2304, inlinedAt: !2317)
!2321 = !DILocation(line: 807, column: 37, scope: !2304, inlinedAt: !2317)
!2322 = !DILocation(line: 807, column: 33, scope: !2304, inlinedAt: !2317)
!2323 = !DILocation(line: 808, column: 11, scope: !2304, inlinedAt: !2317)
!2324 = !DILocation(line: 808, column: 7, scope: !2304, inlinedAt: !2317)
!2325 = !DILocation(line: 810, column: 18, scope: !2304, inlinedAt: !2317)
!2326 = !DILocation(line: 810, column: 24, scope: !2304, inlinedAt: !2317)
!2327 = !DILocation(line: 810, column: 7, scope: !2304, inlinedAt: !2317)
!2328 = !DILocation(line: 811, column: 69, scope: !2304, inlinedAt: !2317)
!2329 = !DILocation(line: 812, column: 53, scope: !2304, inlinedAt: !2317)
!2330 = !DILocation(line: 813, column: 49, scope: !2304, inlinedAt: !2317)
!2331 = !DILocation(line: 814, column: 49, scope: !2304, inlinedAt: !2317)
!2332 = !DILocation(line: 811, column: 20, scope: !2304, inlinedAt: !2317)
!2333 = !DILocation(line: 814, column: 62, scope: !2304, inlinedAt: !2317)
!2334 = !DILocation(line: 811, column: 10, scope: !2304, inlinedAt: !2317)
!2335 = !DILocalVariable(name: "n", arg: 1, scope: !2336, file: !598, line: 220, type: !38)
!2336 = distinct !DISubprogram(name: "xcharalloc", scope: !598, file: !598, line: 220, type: !2337, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !2339)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!21, !38}
!2339 = !{!2335}
!2340 = !DILocation(line: 220, column: 20, scope: !2336, inlinedAt: !2341)
!2341 = distinct !DILocation(line: 815, column: 15, scope: !2304, inlinedAt: !2317)
!2342 = !DILocation(line: 222, column: 10, scope: !2336, inlinedAt: !2341)
!2343 = !DILocation(line: 815, column: 9, scope: !2304, inlinedAt: !2317)
!2344 = !DILocation(line: 816, column: 60, scope: !2304, inlinedAt: !2317)
!2345 = !DILocation(line: 818, column: 32, scope: !2304, inlinedAt: !2317)
!2346 = !DILocation(line: 818, column: 47, scope: !2304, inlinedAt: !2317)
!2347 = !DILocation(line: 816, column: 3, scope: !2304, inlinedAt: !2317)
!2348 = !DILocation(line: 819, column: 9, scope: !2304, inlinedAt: !2317)
!2349 = !DILocation(line: 794, column: 3, scope: !2293)
!2350 = !DILocation(line: 804, column: 33, scope: !2304)
!2351 = !DILocation(line: 804, column: 45, scope: !2304)
!2352 = !DILocation(line: 804, column: 62, scope: !2304)
!2353 = !DILocation(line: 805, column: 51, scope: !2304)
!2354 = !DILocation(line: 807, column: 37, scope: !2304)
!2355 = !DILocation(line: 807, column: 33, scope: !2304)
!2356 = !DILocation(line: 808, column: 11, scope: !2304)
!2357 = !DILocation(line: 808, column: 7, scope: !2304)
!2358 = !DILocation(line: 810, column: 18, scope: !2304)
!2359 = !DILocation(line: 810, column: 27, scope: !2304)
!2360 = !DILocation(line: 810, column: 24, scope: !2304)
!2361 = !DILocation(line: 810, column: 7, scope: !2304)
!2362 = !DILocation(line: 811, column: 69, scope: !2304)
!2363 = !DILocation(line: 812, column: 53, scope: !2304)
!2364 = !DILocation(line: 813, column: 49, scope: !2304)
!2365 = !DILocation(line: 814, column: 49, scope: !2304)
!2366 = !DILocation(line: 811, column: 20, scope: !2304)
!2367 = !DILocation(line: 814, column: 62, scope: !2304)
!2368 = !DILocation(line: 811, column: 10, scope: !2304)
!2369 = !DILocation(line: 220, column: 20, scope: !2336, inlinedAt: !2370)
!2370 = distinct !DILocation(line: 815, column: 15, scope: !2304)
!2371 = !DILocation(line: 222, column: 10, scope: !2336, inlinedAt: !2370)
!2372 = !DILocation(line: 815, column: 9, scope: !2304)
!2373 = !DILocation(line: 816, column: 60, scope: !2304)
!2374 = !DILocation(line: 818, column: 32, scope: !2304)
!2375 = !DILocation(line: 818, column: 47, scope: !2304)
!2376 = !DILocation(line: 816, column: 3, scope: !2304)
!2377 = !DILocation(line: 819, column: 9, scope: !2304)
!2378 = !DILocation(line: 820, column: 7, scope: !2304)
!2379 = !DILocation(line: 821, column: 11, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2304, file: !151, line: 820, column: 7)
!2381 = !DILocation(line: 821, column: 5, scope: !2380)
!2382 = !DILocation(line: 822, column: 3, scope: !2304)
!2383 = distinct !DISubprogram(name: "quotearg_free", scope: !151, file: !151, line: 840, type: !666, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !2384)
!2384 = !{!2385, !2386}
!2385 = !DILocalVariable(name: "sv", scope: !2383, file: !151, line: 842, type: !178)
!2386 = !DILocalVariable(name: "i", scope: !2383, file: !151, line: 843, type: !41)
!2387 = !DILocation(line: 842, column: 24, scope: !2383)
!2388 = !DILocation(line: 842, column: 19, scope: !2383)
!2389 = !DILocation(line: 843, column: 7, scope: !2383)
!2390 = !DILocation(line: 844, column: 19, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !151, line: 844, column: 3)
!2392 = distinct !DILexicalBlock(scope: !2383, file: !151, line: 844, column: 3)
!2393 = !DILocation(line: 844, column: 17, scope: !2391)
!2394 = !DILocation(line: 844, column: 3, scope: !2392)
!2395 = !DILocation(line: 845, column: 17, scope: !2391)
!2396 = !{!2397, !658, i64 8}
!2397 = !{!"slotvec", !791, i64 0, !658, i64 8}
!2398 = !DILocation(line: 845, column: 5, scope: !2391)
!2399 = !DILocation(line: 844, column: 28, scope: !2391)
!2400 = distinct !{!2400, !2394, !2401}
!2401 = !DILocation(line: 845, column: 20, scope: !2392)
!2402 = !DILocation(line: 846, column: 13, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2383, file: !151, line: 846, column: 7)
!2404 = !DILocation(line: 846, column: 17, scope: !2403)
!2405 = !DILocation(line: 846, column: 7, scope: !2383)
!2406 = !DILocation(line: 848, column: 7, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2403, file: !151, line: 847, column: 5)
!2408 = !DILocation(line: 849, column: 21, scope: !2407)
!2409 = !{!2397, !791, i64 0}
!2410 = !DILocation(line: 850, column: 20, scope: !2407)
!2411 = !DILocation(line: 851, column: 5, scope: !2407)
!2412 = !DILocation(line: 852, column: 10, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2383, file: !151, line: 852, column: 7)
!2414 = !DILocation(line: 852, column: 7, scope: !2383)
!2415 = !DILocation(line: 854, column: 13, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2413, file: !151, line: 853, column: 5)
!2417 = !DILocation(line: 854, column: 7, scope: !2416)
!2418 = !DILocation(line: 855, column: 15, scope: !2416)
!2419 = !DILocation(line: 856, column: 5, scope: !2416)
!2420 = !DILocation(line: 857, column: 10, scope: !2383)
!2421 = !DILocation(line: 858, column: 1, scope: !2383)
!2422 = distinct !DISubprogram(name: "quotearg_n", scope: !151, file: !151, line: 922, type: !2423, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !2425)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!21, !41, !50}
!2425 = !{!2426, !2427}
!2426 = !DILocalVariable(name: "n", arg: 1, scope: !2422, file: !151, line: 922, type: !41)
!2427 = !DILocalVariable(name: "arg", arg: 2, scope: !2422, file: !151, line: 922, type: !50)
!2428 = !DILocation(line: 922, column: 17, scope: !2422)
!2429 = !DILocation(line: 922, column: 32, scope: !2422)
!2430 = !DILocation(line: 924, column: 10, scope: !2422)
!2431 = !DILocation(line: 924, column: 3, scope: !2422)
!2432 = distinct !DISubprogram(name: "quotearg_n_options", scope: !151, file: !151, line: 869, type: !2433, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !2435)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!21, !41, !50, !38, !1418}
!2435 = !{!2436, !2437, !2438, !2439, !2440, !2441, !2442, !2445, !2447, !2448, !2449}
!2436 = !DILocalVariable(name: "n", arg: 1, scope: !2432, file: !151, line: 869, type: !41)
!2437 = !DILocalVariable(name: "arg", arg: 2, scope: !2432, file: !151, line: 869, type: !50)
!2438 = !DILocalVariable(name: "argsize", arg: 3, scope: !2432, file: !151, line: 869, type: !38)
!2439 = !DILocalVariable(name: "options", arg: 4, scope: !2432, file: !151, line: 870, type: !1418)
!2440 = !DILocalVariable(name: "e", scope: !2432, file: !151, line: 872, type: !41)
!2441 = !DILocalVariable(name: "sv", scope: !2432, file: !151, line: 874, type: !178)
!2442 = !DILocalVariable(name: "preallocated", scope: !2443, file: !151, line: 881, type: !92)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !151, line: 880, column: 5)
!2444 = distinct !DILexicalBlock(scope: !2432, file: !151, line: 879, column: 7)
!2445 = !DILocalVariable(name: "size", scope: !2446, file: !151, line: 894, type: !38)
!2446 = distinct !DILexicalBlock(scope: !2432, file: !151, line: 893, column: 3)
!2447 = !DILocalVariable(name: "val", scope: !2446, file: !151, line: 895, type: !21)
!2448 = !DILocalVariable(name: "flags", scope: !2446, file: !151, line: 897, type: !41)
!2449 = !DILocalVariable(name: "qsize", scope: !2446, file: !151, line: 898, type: !38)
!2450 = !DILocation(line: 869, column: 25, scope: !2432)
!2451 = !DILocation(line: 869, column: 40, scope: !2432)
!2452 = !DILocation(line: 869, column: 52, scope: !2432)
!2453 = !DILocation(line: 870, column: 51, scope: !2432)
!2454 = !DILocation(line: 872, column: 11, scope: !2432)
!2455 = !DILocation(line: 872, column: 7, scope: !2432)
!2456 = !DILocation(line: 874, column: 24, scope: !2432)
!2457 = !DILocation(line: 874, column: 19, scope: !2432)
!2458 = !DILocation(line: 876, column: 9, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2432, file: !151, line: 876, column: 7)
!2460 = !DILocation(line: 876, column: 7, scope: !2432)
!2461 = !DILocation(line: 877, column: 5, scope: !2459)
!2462 = !DILocation(line: 879, column: 7, scope: !2444)
!2463 = !DILocation(line: 879, column: 14, scope: !2444)
!2464 = !DILocation(line: 879, column: 7, scope: !2432)
!2465 = !DILocation(line: 881, column: 31, scope: !2443)
!2466 = !DILocation(line: 883, column: 67, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2443, file: !151, line: 883, column: 11)
!2468 = !DILocation(line: 883, column: 11, scope: !2443)
!2469 = !DILocation(line: 884, column: 9, scope: !2467)
!2470 = !DILocation(line: 886, column: 32, scope: !2443)
!2471 = !DILocation(line: 886, column: 61, scope: !2443)
!2472 = !DILocation(line: 886, column: 58, scope: !2443)
!2473 = !DILocation(line: 886, column: 66, scope: !2443)
!2474 = !DILocation(line: 886, column: 22, scope: !2443)
!2475 = !DILocation(line: 886, column: 15, scope: !2443)
!2476 = !DILocation(line: 887, column: 11, scope: !2443)
!2477 = !DILocation(line: 888, column: 15, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2443, file: !151, line: 887, column: 11)
!2479 = !{i64 0, i64 8, !848, i64 8, i64 8, !657}
!2480 = !DILocation(line: 888, column: 9, scope: !2478)
!2481 = !DILocation(line: 889, column: 20, scope: !2443)
!2482 = !DILocation(line: 889, column: 18, scope: !2443)
!2483 = !DILocation(line: 889, column: 7, scope: !2443)
!2484 = !DILocation(line: 889, column: 38, scope: !2443)
!2485 = !DILocation(line: 889, column: 31, scope: !2443)
!2486 = !DILocation(line: 889, column: 48, scope: !2443)
!2487 = !DILocation(line: 890, column: 14, scope: !2443)
!2488 = !DILocation(line: 891, column: 5, scope: !2443)
!2489 = !DILocation(line: 894, column: 19, scope: !2446)
!2490 = !DILocation(line: 894, column: 25, scope: !2446)
!2491 = !DILocation(line: 894, column: 12, scope: !2446)
!2492 = !DILocation(line: 895, column: 23, scope: !2446)
!2493 = !DILocation(line: 895, column: 11, scope: !2446)
!2494 = !DILocation(line: 897, column: 26, scope: !2446)
!2495 = !DILocation(line: 897, column: 32, scope: !2446)
!2496 = !DILocation(line: 897, column: 9, scope: !2446)
!2497 = !DILocation(line: 899, column: 55, scope: !2446)
!2498 = !DILocation(line: 900, column: 46, scope: !2446)
!2499 = !DILocation(line: 901, column: 55, scope: !2446)
!2500 = !DILocation(line: 902, column: 55, scope: !2446)
!2501 = !DILocation(line: 898, column: 20, scope: !2446)
!2502 = !DILocation(line: 898, column: 12, scope: !2446)
!2503 = !DILocation(line: 904, column: 14, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2446, file: !151, line: 904, column: 9)
!2505 = !DILocation(line: 904, column: 9, scope: !2446)
!2506 = !DILocation(line: 906, column: 35, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2504, file: !151, line: 905, column: 7)
!2508 = !DILocation(line: 906, column: 20, scope: !2507)
!2509 = !DILocation(line: 907, column: 17, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2507, file: !151, line: 907, column: 13)
!2511 = !DILocation(line: 907, column: 13, scope: !2507)
!2512 = !DILocation(line: 908, column: 11, scope: !2510)
!2513 = !DILocation(line: 220, column: 20, scope: !2336, inlinedAt: !2514)
!2514 = distinct !DILocation(line: 909, column: 27, scope: !2507)
!2515 = !DILocation(line: 222, column: 10, scope: !2336, inlinedAt: !2514)
!2516 = !DILocation(line: 909, column: 19, scope: !2507)
!2517 = !DILocation(line: 910, column: 69, scope: !2507)
!2518 = !DILocation(line: 912, column: 44, scope: !2507)
!2519 = !DILocation(line: 913, column: 44, scope: !2507)
!2520 = !DILocation(line: 910, column: 9, scope: !2507)
!2521 = !DILocation(line: 914, column: 7, scope: !2507)
!2522 = !DILocation(line: 916, column: 11, scope: !2446)
!2523 = !DILocation(line: 917, column: 5, scope: !2446)
!2524 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !151, file: !151, line: 928, type: !2525, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !2527)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!21, !41, !50, !38}
!2527 = !{!2528, !2529, !2530}
!2528 = !DILocalVariable(name: "n", arg: 1, scope: !2524, file: !151, line: 928, type: !41)
!2529 = !DILocalVariable(name: "arg", arg: 2, scope: !2524, file: !151, line: 928, type: !50)
!2530 = !DILocalVariable(name: "argsize", arg: 3, scope: !2524, file: !151, line: 928, type: !38)
!2531 = !DILocation(line: 928, column: 21, scope: !2524)
!2532 = !DILocation(line: 928, column: 36, scope: !2524)
!2533 = !DILocation(line: 928, column: 48, scope: !2524)
!2534 = !DILocation(line: 930, column: 10, scope: !2524)
!2535 = !DILocation(line: 930, column: 3, scope: !2524)
!2536 = distinct !DISubprogram(name: "quotearg", scope: !151, file: !151, line: 934, type: !1130, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !2537)
!2537 = !{!2538}
!2538 = !DILocalVariable(name: "arg", arg: 1, scope: !2536, file: !151, line: 934, type: !50)
!2539 = !DILocation(line: 934, column: 23, scope: !2536)
!2540 = !DILocation(line: 922, column: 17, scope: !2422, inlinedAt: !2541)
!2541 = distinct !DILocation(line: 936, column: 10, scope: !2536)
!2542 = !DILocation(line: 922, column: 32, scope: !2422, inlinedAt: !2541)
!2543 = !DILocation(line: 924, column: 10, scope: !2422, inlinedAt: !2541)
!2544 = !DILocation(line: 936, column: 3, scope: !2536)
!2545 = distinct !DISubprogram(name: "quotearg_mem", scope: !151, file: !151, line: 940, type: !2546, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !2548)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!21, !50, !38}
!2548 = !{!2549, !2550}
!2549 = !DILocalVariable(name: "arg", arg: 1, scope: !2545, file: !151, line: 940, type: !50)
!2550 = !DILocalVariable(name: "argsize", arg: 2, scope: !2545, file: !151, line: 940, type: !38)
!2551 = !DILocation(line: 940, column: 27, scope: !2545)
!2552 = !DILocation(line: 940, column: 39, scope: !2545)
!2553 = !DILocation(line: 928, column: 21, scope: !2524, inlinedAt: !2554)
!2554 = distinct !DILocation(line: 942, column: 10, scope: !2545)
!2555 = !DILocation(line: 928, column: 36, scope: !2524, inlinedAt: !2554)
!2556 = !DILocation(line: 928, column: 48, scope: !2524, inlinedAt: !2554)
!2557 = !DILocation(line: 930, column: 10, scope: !2524, inlinedAt: !2554)
!2558 = !DILocation(line: 942, column: 3, scope: !2545)
!2559 = distinct !DISubprogram(name: "quotearg_n_style", scope: !151, file: !151, line: 946, type: !2560, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !2562)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!21, !41, !112, !50}
!2562 = !{!2563, !2564, !2565, !2566}
!2563 = !DILocalVariable(name: "n", arg: 1, scope: !2559, file: !151, line: 946, type: !41)
!2564 = !DILocalVariable(name: "s", arg: 2, scope: !2559, file: !151, line: 946, type: !112)
!2565 = !DILocalVariable(name: "arg", arg: 3, scope: !2559, file: !151, line: 946, type: !50)
!2566 = !DILocalVariable(name: "o", scope: !2559, file: !151, line: 948, type: !1419)
!2567 = !DILocalVariable(name: "o", scope: !2568, file: !151, line: 187, type: !158)
!2568 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !151, file: !151, line: 185, type: !2569, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !2571)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!158, !112}
!2571 = !{!2572, !2567}
!2572 = !DILocalVariable(name: "style", arg: 1, scope: !2568, file: !151, line: 185, type: !112)
!2573 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2574 = !DILocation(line: 187, column: 26, scope: !2568, inlinedAt: !2575)
!2575 = distinct !DILocation(line: 948, column: 36, scope: !2559)
!2576 = !DILocation(line: 946, column: 23, scope: !2559)
!2577 = !DILocation(line: 946, column: 45, scope: !2559)
!2578 = !DILocation(line: 946, column: 60, scope: !2559)
!2579 = !DILocation(line: 948, column: 3, scope: !2559)
!2580 = !DILocation(line: 948, column: 32, scope: !2559)
!2581 = !DILocation(line: 185, column: 48, scope: !2568, inlinedAt: !2575)
!2582 = !DILocation(line: 187, column: 3, scope: !2568, inlinedAt: !2575)
!2583 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2584 = !DILocation(line: 188, column: 13, scope: !2585, inlinedAt: !2575)
!2585 = distinct !DILexicalBlock(scope: !2568, file: !151, line: 188, column: 7)
!2586 = !DILocation(line: 188, column: 7, scope: !2568, inlinedAt: !2575)
!2587 = !DILocation(line: 189, column: 5, scope: !2585, inlinedAt: !2575)
!2588 = !{!2589}
!2589 = distinct !{!2589, !2590, !"quoting_options_from_style: argument 0"}
!2590 = distinct !{!2590, !"quoting_options_from_style"}
!2591 = !DILocation(line: 191, column: 10, scope: !2568, inlinedAt: !2575)
!2592 = !DILocation(line: 192, column: 1, scope: !2568, inlinedAt: !2575)
!2593 = !DILocation(line: 949, column: 10, scope: !2559)
!2594 = !DILocation(line: 950, column: 1, scope: !2559)
!2595 = !DILocation(line: 949, column: 3, scope: !2559)
!2596 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !151, file: !151, line: 953, type: !2597, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !2599)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!21, !41, !112, !50, !38}
!2599 = !{!2600, !2601, !2602, !2603, !2604}
!2600 = !DILocalVariable(name: "n", arg: 1, scope: !2596, file: !151, line: 953, type: !41)
!2601 = !DILocalVariable(name: "s", arg: 2, scope: !2596, file: !151, line: 953, type: !112)
!2602 = !DILocalVariable(name: "arg", arg: 3, scope: !2596, file: !151, line: 954, type: !50)
!2603 = !DILocalVariable(name: "argsize", arg: 4, scope: !2596, file: !151, line: 954, type: !38)
!2604 = !DILocalVariable(name: "o", scope: !2596, file: !151, line: 956, type: !1419)
!2605 = !DILocation(line: 187, column: 26, scope: !2568, inlinedAt: !2606)
!2606 = distinct !DILocation(line: 956, column: 36, scope: !2596)
!2607 = !DILocation(line: 953, column: 27, scope: !2596)
!2608 = !DILocation(line: 953, column: 49, scope: !2596)
!2609 = !DILocation(line: 954, column: 35, scope: !2596)
!2610 = !DILocation(line: 954, column: 47, scope: !2596)
!2611 = !DILocation(line: 956, column: 3, scope: !2596)
!2612 = !DILocation(line: 956, column: 32, scope: !2596)
!2613 = !DILocation(line: 185, column: 48, scope: !2568, inlinedAt: !2606)
!2614 = !DILocation(line: 187, column: 3, scope: !2568, inlinedAt: !2606)
!2615 = !DILocation(line: 188, column: 13, scope: !2585, inlinedAt: !2606)
!2616 = !DILocation(line: 188, column: 7, scope: !2568, inlinedAt: !2606)
!2617 = !DILocation(line: 189, column: 5, scope: !2585, inlinedAt: !2606)
!2618 = !{!2619}
!2619 = distinct !{!2619, !2620, !"quoting_options_from_style: argument 0"}
!2620 = distinct !{!2620, !"quoting_options_from_style"}
!2621 = !DILocation(line: 191, column: 10, scope: !2568, inlinedAt: !2606)
!2622 = !DILocation(line: 192, column: 1, scope: !2568, inlinedAt: !2606)
!2623 = !DILocation(line: 957, column: 10, scope: !2596)
!2624 = !DILocation(line: 958, column: 1, scope: !2596)
!2625 = !DILocation(line: 957, column: 3, scope: !2596)
!2626 = distinct !DISubprogram(name: "quotearg_style", scope: !151, file: !151, line: 961, type: !2627, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !2629)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!21, !112, !50}
!2629 = !{!2630, !2631}
!2630 = !DILocalVariable(name: "s", arg: 1, scope: !2626, file: !151, line: 961, type: !112)
!2631 = !DILocalVariable(name: "arg", arg: 2, scope: !2626, file: !151, line: 961, type: !50)
!2632 = !DILocation(line: 187, column: 26, scope: !2568, inlinedAt: !2633)
!2633 = distinct !DILocation(line: 948, column: 36, scope: !2559, inlinedAt: !2634)
!2634 = distinct !DILocation(line: 963, column: 10, scope: !2626)
!2635 = !DILocation(line: 961, column: 36, scope: !2626)
!2636 = !DILocation(line: 961, column: 51, scope: !2626)
!2637 = !DILocation(line: 946, column: 23, scope: !2559, inlinedAt: !2634)
!2638 = !DILocation(line: 946, column: 45, scope: !2559, inlinedAt: !2634)
!2639 = !DILocation(line: 946, column: 60, scope: !2559, inlinedAt: !2634)
!2640 = !DILocation(line: 948, column: 3, scope: !2559, inlinedAt: !2634)
!2641 = !DILocation(line: 948, column: 32, scope: !2559, inlinedAt: !2634)
!2642 = !DILocation(line: 185, column: 48, scope: !2568, inlinedAt: !2633)
!2643 = !DILocation(line: 187, column: 3, scope: !2568, inlinedAt: !2633)
!2644 = !DILocation(line: 188, column: 13, scope: !2585, inlinedAt: !2633)
!2645 = !DILocation(line: 188, column: 7, scope: !2568, inlinedAt: !2633)
!2646 = !DILocation(line: 189, column: 5, scope: !2585, inlinedAt: !2633)
!2647 = !{!2648}
!2648 = distinct !{!2648, !2649, !"quoting_options_from_style: argument 0"}
!2649 = distinct !{!2649, !"quoting_options_from_style"}
!2650 = !DILocation(line: 191, column: 10, scope: !2568, inlinedAt: !2633)
!2651 = !DILocation(line: 192, column: 1, scope: !2568, inlinedAt: !2633)
!2652 = !DILocation(line: 949, column: 10, scope: !2559, inlinedAt: !2634)
!2653 = !DILocation(line: 950, column: 1, scope: !2559, inlinedAt: !2634)
!2654 = !DILocation(line: 963, column: 3, scope: !2626)
!2655 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !151, file: !151, line: 967, type: !2656, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !2658)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!21, !112, !50, !38}
!2658 = !{!2659, !2660, !2661}
!2659 = !DILocalVariable(name: "s", arg: 1, scope: !2655, file: !151, line: 967, type: !112)
!2660 = !DILocalVariable(name: "arg", arg: 2, scope: !2655, file: !151, line: 967, type: !50)
!2661 = !DILocalVariable(name: "argsize", arg: 3, scope: !2655, file: !151, line: 967, type: !38)
!2662 = !DILocation(line: 187, column: 26, scope: !2568, inlinedAt: !2663)
!2663 = distinct !DILocation(line: 956, column: 36, scope: !2596, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 969, column: 10, scope: !2655)
!2665 = !DILocation(line: 967, column: 40, scope: !2655)
!2666 = !DILocation(line: 967, column: 55, scope: !2655)
!2667 = !DILocation(line: 967, column: 67, scope: !2655)
!2668 = !DILocation(line: 953, column: 27, scope: !2596, inlinedAt: !2664)
!2669 = !DILocation(line: 953, column: 49, scope: !2596, inlinedAt: !2664)
!2670 = !DILocation(line: 954, column: 35, scope: !2596, inlinedAt: !2664)
!2671 = !DILocation(line: 954, column: 47, scope: !2596, inlinedAt: !2664)
!2672 = !DILocation(line: 956, column: 3, scope: !2596, inlinedAt: !2664)
!2673 = !DILocation(line: 956, column: 32, scope: !2596, inlinedAt: !2664)
!2674 = !DILocation(line: 185, column: 48, scope: !2568, inlinedAt: !2663)
!2675 = !DILocation(line: 187, column: 3, scope: !2568, inlinedAt: !2663)
!2676 = !DILocation(line: 188, column: 13, scope: !2585, inlinedAt: !2663)
!2677 = !DILocation(line: 188, column: 7, scope: !2568, inlinedAt: !2663)
!2678 = !DILocation(line: 189, column: 5, scope: !2585, inlinedAt: !2663)
!2679 = !{!2680}
!2680 = distinct !{!2680, !2681, !"quoting_options_from_style: argument 0"}
!2681 = distinct !{!2681, !"quoting_options_from_style"}
!2682 = !DILocation(line: 191, column: 10, scope: !2568, inlinedAt: !2663)
!2683 = !DILocation(line: 192, column: 1, scope: !2568, inlinedAt: !2663)
!2684 = !DILocation(line: 957, column: 10, scope: !2596, inlinedAt: !2664)
!2685 = !DILocation(line: 958, column: 1, scope: !2596, inlinedAt: !2664)
!2686 = !DILocation(line: 969, column: 3, scope: !2655)
!2687 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !151, file: !151, line: 973, type: !2688, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !2690)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!21, !50, !38, !22}
!2690 = !{!2691, !2692, !2693, !2694}
!2691 = !DILocalVariable(name: "arg", arg: 1, scope: !2687, file: !151, line: 973, type: !50)
!2692 = !DILocalVariable(name: "argsize", arg: 2, scope: !2687, file: !151, line: 973, type: !38)
!2693 = !DILocalVariable(name: "ch", arg: 3, scope: !2687, file: !151, line: 973, type: !22)
!2694 = !DILocalVariable(name: "options", scope: !2687, file: !151, line: 975, type: !158)
!2695 = !DILocation(line: 973, column: 32, scope: !2687)
!2696 = !DILocation(line: 973, column: 44, scope: !2687)
!2697 = !DILocation(line: 973, column: 58, scope: !2687)
!2698 = !DILocation(line: 975, column: 3, scope: !2687)
!2699 = !DILocation(line: 976, column: 13, scope: !2687)
!2700 = !{i64 0, i64 4, !795, i64 4, i64 4, !768, i64 8, i64 32, !795, i64 40, i64 8, !657, i64 48, i64 8, !657}
!2701 = !DILocation(line: 975, column: 26, scope: !2687)
!2702 = !DILocation(line: 144, column: 43, scope: !1440, inlinedAt: !2703)
!2703 = distinct !DILocation(line: 977, column: 3, scope: !2687)
!2704 = !DILocation(line: 144, column: 51, scope: !1440, inlinedAt: !2703)
!2705 = !DILocation(line: 144, column: 58, scope: !1440, inlinedAt: !2703)
!2706 = !DILocation(line: 146, column: 17, scope: !1440, inlinedAt: !2703)
!2707 = !DILocation(line: 148, column: 62, scope: !1440, inlinedAt: !2703)
!2708 = !DILocation(line: 148, column: 57, scope: !1440, inlinedAt: !2703)
!2709 = !DILocation(line: 147, column: 17, scope: !1440, inlinedAt: !2703)
!2710 = !DILocation(line: 149, column: 18, scope: !1440, inlinedAt: !2703)
!2711 = !DILocation(line: 149, column: 15, scope: !1440, inlinedAt: !2703)
!2712 = !DILocation(line: 149, column: 7, scope: !1440, inlinedAt: !2703)
!2713 = !DILocation(line: 150, column: 12, scope: !1440, inlinedAt: !2703)
!2714 = !DILocation(line: 150, column: 15, scope: !1440, inlinedAt: !2703)
!2715 = !DILocation(line: 150, column: 25, scope: !1440, inlinedAt: !2703)
!2716 = !DILocation(line: 150, column: 7, scope: !1440, inlinedAt: !2703)
!2717 = !DILocation(line: 151, column: 18, scope: !1440, inlinedAt: !2703)
!2718 = !DILocation(line: 151, column: 23, scope: !1440, inlinedAt: !2703)
!2719 = !DILocation(line: 151, column: 6, scope: !1440, inlinedAt: !2703)
!2720 = !DILocation(line: 978, column: 10, scope: !2687)
!2721 = !DILocation(line: 979, column: 1, scope: !2687)
!2722 = !DILocation(line: 978, column: 3, scope: !2687)
!2723 = distinct !DISubprogram(name: "quotearg_char", scope: !151, file: !151, line: 982, type: !2724, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !2726)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!21, !50, !22}
!2726 = !{!2727, !2728}
!2727 = !DILocalVariable(name: "arg", arg: 1, scope: !2723, file: !151, line: 982, type: !50)
!2728 = !DILocalVariable(name: "ch", arg: 2, scope: !2723, file: !151, line: 982, type: !22)
!2729 = !DILocation(line: 982, column: 28, scope: !2723)
!2730 = !DILocation(line: 982, column: 38, scope: !2723)
!2731 = !DILocation(line: 973, column: 32, scope: !2687, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 984, column: 10, scope: !2723)
!2733 = !DILocation(line: 973, column: 44, scope: !2687, inlinedAt: !2732)
!2734 = !DILocation(line: 973, column: 58, scope: !2687, inlinedAt: !2732)
!2735 = !DILocation(line: 975, column: 3, scope: !2687, inlinedAt: !2732)
!2736 = !DILocation(line: 976, column: 13, scope: !2687, inlinedAt: !2732)
!2737 = !DILocation(line: 975, column: 26, scope: !2687, inlinedAt: !2732)
!2738 = !DILocation(line: 144, column: 43, scope: !1440, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 977, column: 3, scope: !2687, inlinedAt: !2732)
!2740 = !DILocation(line: 144, column: 51, scope: !1440, inlinedAt: !2739)
!2741 = !DILocation(line: 144, column: 58, scope: !1440, inlinedAt: !2739)
!2742 = !DILocation(line: 146, column: 17, scope: !1440, inlinedAt: !2739)
!2743 = !DILocation(line: 148, column: 62, scope: !1440, inlinedAt: !2739)
!2744 = !DILocation(line: 148, column: 57, scope: !1440, inlinedAt: !2739)
!2745 = !DILocation(line: 147, column: 17, scope: !1440, inlinedAt: !2739)
!2746 = !DILocation(line: 149, column: 18, scope: !1440, inlinedAt: !2739)
!2747 = !DILocation(line: 149, column: 15, scope: !1440, inlinedAt: !2739)
!2748 = !DILocation(line: 149, column: 7, scope: !1440, inlinedAt: !2739)
!2749 = !DILocation(line: 150, column: 12, scope: !1440, inlinedAt: !2739)
!2750 = !DILocation(line: 150, column: 15, scope: !1440, inlinedAt: !2739)
!2751 = !DILocation(line: 150, column: 25, scope: !1440, inlinedAt: !2739)
!2752 = !DILocation(line: 150, column: 7, scope: !1440, inlinedAt: !2739)
!2753 = !DILocation(line: 151, column: 18, scope: !1440, inlinedAt: !2739)
!2754 = !DILocation(line: 151, column: 23, scope: !1440, inlinedAt: !2739)
!2755 = !DILocation(line: 151, column: 6, scope: !1440, inlinedAt: !2739)
!2756 = !DILocation(line: 978, column: 10, scope: !2687, inlinedAt: !2732)
!2757 = !DILocation(line: 979, column: 1, scope: !2687, inlinedAt: !2732)
!2758 = !DILocation(line: 984, column: 3, scope: !2723)
!2759 = distinct !DISubprogram(name: "quotearg_colon", scope: !151, file: !151, line: 988, type: !1130, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !2760)
!2760 = !{!2761}
!2761 = !DILocalVariable(name: "arg", arg: 1, scope: !2759, file: !151, line: 988, type: !50)
!2762 = !DILocation(line: 988, column: 29, scope: !2759)
!2763 = !DILocation(line: 982, column: 28, scope: !2723, inlinedAt: !2764)
!2764 = distinct !DILocation(line: 990, column: 10, scope: !2759)
!2765 = !DILocation(line: 982, column: 38, scope: !2723, inlinedAt: !2764)
!2766 = !DILocation(line: 973, column: 32, scope: !2687, inlinedAt: !2767)
!2767 = distinct !DILocation(line: 984, column: 10, scope: !2723, inlinedAt: !2764)
!2768 = !DILocation(line: 973, column: 44, scope: !2687, inlinedAt: !2767)
!2769 = !DILocation(line: 973, column: 58, scope: !2687, inlinedAt: !2767)
!2770 = !DILocation(line: 975, column: 3, scope: !2687, inlinedAt: !2767)
!2771 = !DILocation(line: 976, column: 13, scope: !2687, inlinedAt: !2767)
!2772 = !DILocation(line: 975, column: 26, scope: !2687, inlinedAt: !2767)
!2773 = !DILocation(line: 144, column: 43, scope: !1440, inlinedAt: !2774)
!2774 = distinct !DILocation(line: 977, column: 3, scope: !2687, inlinedAt: !2767)
!2775 = !DILocation(line: 144, column: 51, scope: !1440, inlinedAt: !2774)
!2776 = !DILocation(line: 144, column: 58, scope: !1440, inlinedAt: !2774)
!2777 = !DILocation(line: 146, column: 17, scope: !1440, inlinedAt: !2774)
!2778 = !DILocation(line: 148, column: 57, scope: !1440, inlinedAt: !2774)
!2779 = !DILocation(line: 147, column: 17, scope: !1440, inlinedAt: !2774)
!2780 = !DILocation(line: 149, column: 7, scope: !1440, inlinedAt: !2774)
!2781 = !DILocation(line: 150, column: 12, scope: !1440, inlinedAt: !2774)
!2782 = !DILocation(line: 151, column: 6, scope: !1440, inlinedAt: !2774)
!2783 = !DILocation(line: 978, column: 10, scope: !2687, inlinedAt: !2767)
!2784 = !DILocation(line: 979, column: 1, scope: !2687, inlinedAt: !2767)
!2785 = !DILocation(line: 990, column: 3, scope: !2759)
!2786 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !151, file: !151, line: 994, type: !2546, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !2787)
!2787 = !{!2788, !2789}
!2788 = !DILocalVariable(name: "arg", arg: 1, scope: !2786, file: !151, line: 994, type: !50)
!2789 = !DILocalVariable(name: "argsize", arg: 2, scope: !2786, file: !151, line: 994, type: !38)
!2790 = !DILocation(line: 994, column: 33, scope: !2786)
!2791 = !DILocation(line: 994, column: 45, scope: !2786)
!2792 = !DILocation(line: 973, column: 32, scope: !2687, inlinedAt: !2793)
!2793 = distinct !DILocation(line: 996, column: 10, scope: !2786)
!2794 = !DILocation(line: 973, column: 44, scope: !2687, inlinedAt: !2793)
!2795 = !DILocation(line: 973, column: 58, scope: !2687, inlinedAt: !2793)
!2796 = !DILocation(line: 975, column: 3, scope: !2687, inlinedAt: !2793)
!2797 = !DILocation(line: 976, column: 13, scope: !2687, inlinedAt: !2793)
!2798 = !DILocation(line: 975, column: 26, scope: !2687, inlinedAt: !2793)
!2799 = !DILocation(line: 144, column: 43, scope: !1440, inlinedAt: !2800)
!2800 = distinct !DILocation(line: 977, column: 3, scope: !2687, inlinedAt: !2793)
!2801 = !DILocation(line: 144, column: 51, scope: !1440, inlinedAt: !2800)
!2802 = !DILocation(line: 144, column: 58, scope: !1440, inlinedAt: !2800)
!2803 = !DILocation(line: 146, column: 17, scope: !1440, inlinedAt: !2800)
!2804 = !DILocation(line: 148, column: 57, scope: !1440, inlinedAt: !2800)
!2805 = !DILocation(line: 147, column: 17, scope: !1440, inlinedAt: !2800)
!2806 = !DILocation(line: 149, column: 7, scope: !1440, inlinedAt: !2800)
!2807 = !DILocation(line: 150, column: 12, scope: !1440, inlinedAt: !2800)
!2808 = !DILocation(line: 151, column: 6, scope: !1440, inlinedAt: !2800)
!2809 = !DILocation(line: 978, column: 10, scope: !2687, inlinedAt: !2793)
!2810 = !DILocation(line: 979, column: 1, scope: !2687, inlinedAt: !2793)
!2811 = !DILocation(line: 996, column: 3, scope: !2786)
!2812 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !151, file: !151, line: 1000, type: !2560, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !2813)
!2813 = !{!2814, !2815, !2816, !2817}
!2814 = !DILocalVariable(name: "n", arg: 1, scope: !2812, file: !151, line: 1000, type: !41)
!2815 = !DILocalVariable(name: "s", arg: 2, scope: !2812, file: !151, line: 1000, type: !112)
!2816 = !DILocalVariable(name: "arg", arg: 3, scope: !2812, file: !151, line: 1000, type: !50)
!2817 = !DILocalVariable(name: "options", scope: !2812, file: !151, line: 1002, type: !158)
!2818 = !DILocation(line: 187, column: 26, scope: !2568, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 1003, column: 13, scope: !2812)
!2820 = !DILocation(line: 1000, column: 29, scope: !2812)
!2821 = !DILocation(line: 1000, column: 51, scope: !2812)
!2822 = !DILocation(line: 1000, column: 66, scope: !2812)
!2823 = !DILocation(line: 1002, column: 3, scope: !2812)
!2824 = !DILocation(line: 185, column: 48, scope: !2568, inlinedAt: !2819)
!2825 = !DILocation(line: 187, column: 3, scope: !2568, inlinedAt: !2819)
!2826 = !DILocation(line: 188, column: 13, scope: !2585, inlinedAt: !2819)
!2827 = !DILocation(line: 188, column: 7, scope: !2568, inlinedAt: !2819)
!2828 = !DILocation(line: 189, column: 5, scope: !2585, inlinedAt: !2819)
!2829 = !{!2830}
!2830 = distinct !{!2830, !2831, !"quoting_options_from_style: argument 0"}
!2831 = distinct !{!2831, !"quoting_options_from_style"}
!2832 = !DILocation(line: 191, column: 10, scope: !2568, inlinedAt: !2819)
!2833 = !DILocation(line: 192, column: 1, scope: !2568, inlinedAt: !2819)
!2834 = !DILocation(line: 1003, column: 13, scope: !2812)
!2835 = !DILocation(line: 1002, column: 26, scope: !2812)
!2836 = !DILocation(line: 144, column: 43, scope: !1440, inlinedAt: !2837)
!2837 = distinct !DILocation(line: 1004, column: 3, scope: !2812)
!2838 = !DILocation(line: 144, column: 51, scope: !1440, inlinedAt: !2837)
!2839 = !DILocation(line: 144, column: 58, scope: !1440, inlinedAt: !2837)
!2840 = !DILocation(line: 146, column: 17, scope: !1440, inlinedAt: !2837)
!2841 = !DILocation(line: 148, column: 57, scope: !1440, inlinedAt: !2837)
!2842 = !DILocation(line: 147, column: 17, scope: !1440, inlinedAt: !2837)
!2843 = !DILocation(line: 149, column: 7, scope: !1440, inlinedAt: !2837)
!2844 = !DILocation(line: 150, column: 12, scope: !1440, inlinedAt: !2837)
!2845 = !DILocation(line: 151, column: 6, scope: !1440, inlinedAt: !2837)
!2846 = !DILocation(line: 1005, column: 10, scope: !2812)
!2847 = !DILocation(line: 1006, column: 1, scope: !2812)
!2848 = !DILocation(line: 1005, column: 3, scope: !2812)
!2849 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !151, file: !151, line: 1009, type: !2850, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !2852)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!21, !41, !50, !50, !50}
!2852 = !{!2853, !2854, !2855, !2856}
!2853 = !DILocalVariable(name: "n", arg: 1, scope: !2849, file: !151, line: 1009, type: !41)
!2854 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2849, file: !151, line: 1009, type: !50)
!2855 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2849, file: !151, line: 1010, type: !50)
!2856 = !DILocalVariable(name: "arg", arg: 4, scope: !2849, file: !151, line: 1010, type: !50)
!2857 = !DILocation(line: 1009, column: 24, scope: !2849)
!2858 = !DILocation(line: 1009, column: 39, scope: !2849)
!2859 = !DILocation(line: 1010, column: 32, scope: !2849)
!2860 = !DILocation(line: 1010, column: 57, scope: !2849)
!2861 = !DILocalVariable(name: "n", arg: 1, scope: !2862, file: !151, line: 1017, type: !41)
!2862 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !151, file: !151, line: 1017, type: !2863, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !2865)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!21, !41, !50, !50, !50, !38}
!2865 = !{!2861, !2866, !2867, !2868, !2869, !2870}
!2866 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2862, file: !151, line: 1017, type: !50)
!2867 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2862, file: !151, line: 1018, type: !50)
!2868 = !DILocalVariable(name: "arg", arg: 4, scope: !2862, file: !151, line: 1019, type: !50)
!2869 = !DILocalVariable(name: "argsize", arg: 5, scope: !2862, file: !151, line: 1019, type: !38)
!2870 = !DILocalVariable(name: "o", scope: !2862, file: !151, line: 1021, type: !158)
!2871 = !DILocation(line: 1017, column: 28, scope: !2862, inlinedAt: !2872)
!2872 = distinct !DILocation(line: 1012, column: 10, scope: !2849)
!2873 = !DILocation(line: 1017, column: 43, scope: !2862, inlinedAt: !2872)
!2874 = !DILocation(line: 1018, column: 36, scope: !2862, inlinedAt: !2872)
!2875 = !DILocation(line: 1019, column: 36, scope: !2862, inlinedAt: !2872)
!2876 = !DILocation(line: 1019, column: 48, scope: !2862, inlinedAt: !2872)
!2877 = !DILocation(line: 1021, column: 3, scope: !2862, inlinedAt: !2872)
!2878 = !DILocation(line: 1021, column: 30, scope: !2862, inlinedAt: !2872)
!2879 = !DILocation(line: 1021, column: 26, scope: !2862, inlinedAt: !2872)
!2880 = !DILocation(line: 171, column: 45, scope: !1489, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 1022, column: 3, scope: !2862, inlinedAt: !2872)
!2882 = !DILocation(line: 172, column: 33, scope: !1489, inlinedAt: !2881)
!2883 = !DILocation(line: 172, column: 57, scope: !1489, inlinedAt: !2881)
!2884 = !DILocation(line: 176, column: 6, scope: !1489, inlinedAt: !2881)
!2885 = !DILocation(line: 176, column: 12, scope: !1489, inlinedAt: !2881)
!2886 = !DILocation(line: 177, column: 8, scope: !1505, inlinedAt: !2881)
!2887 = !DILocation(line: 177, column: 23, scope: !1505, inlinedAt: !2881)
!2888 = !DILocation(line: 177, column: 19, scope: !1505, inlinedAt: !2881)
!2889 = !DILocation(line: 178, column: 5, scope: !1505, inlinedAt: !2881)
!2890 = !DILocation(line: 179, column: 6, scope: !1489, inlinedAt: !2881)
!2891 = !DILocation(line: 179, column: 17, scope: !1489, inlinedAt: !2881)
!2892 = !DILocation(line: 180, column: 6, scope: !1489, inlinedAt: !2881)
!2893 = !DILocation(line: 180, column: 18, scope: !1489, inlinedAt: !2881)
!2894 = !DILocation(line: 1023, column: 10, scope: !2862, inlinedAt: !2872)
!2895 = !DILocation(line: 1024, column: 1, scope: !2862, inlinedAt: !2872)
!2896 = !DILocation(line: 1012, column: 3, scope: !2849)
!2897 = !DILocation(line: 1017, column: 28, scope: !2862)
!2898 = !DILocation(line: 1017, column: 43, scope: !2862)
!2899 = !DILocation(line: 1018, column: 36, scope: !2862)
!2900 = !DILocation(line: 1019, column: 36, scope: !2862)
!2901 = !DILocation(line: 1019, column: 48, scope: !2862)
!2902 = !DILocation(line: 1021, column: 3, scope: !2862)
!2903 = !DILocation(line: 1021, column: 30, scope: !2862)
!2904 = !DILocation(line: 1021, column: 26, scope: !2862)
!2905 = !DILocation(line: 171, column: 45, scope: !1489, inlinedAt: !2906)
!2906 = distinct !DILocation(line: 1022, column: 3, scope: !2862)
!2907 = !DILocation(line: 172, column: 33, scope: !1489, inlinedAt: !2906)
!2908 = !DILocation(line: 172, column: 57, scope: !1489, inlinedAt: !2906)
!2909 = !DILocation(line: 176, column: 6, scope: !1489, inlinedAt: !2906)
!2910 = !DILocation(line: 176, column: 12, scope: !1489, inlinedAt: !2906)
!2911 = !DILocation(line: 177, column: 8, scope: !1505, inlinedAt: !2906)
!2912 = !DILocation(line: 177, column: 23, scope: !1505, inlinedAt: !2906)
!2913 = !DILocation(line: 177, column: 19, scope: !1505, inlinedAt: !2906)
!2914 = !DILocation(line: 178, column: 5, scope: !1505, inlinedAt: !2906)
!2915 = !DILocation(line: 179, column: 6, scope: !1489, inlinedAt: !2906)
!2916 = !DILocation(line: 179, column: 17, scope: !1489, inlinedAt: !2906)
!2917 = !DILocation(line: 180, column: 6, scope: !1489, inlinedAt: !2906)
!2918 = !DILocation(line: 180, column: 18, scope: !1489, inlinedAt: !2906)
!2919 = !DILocation(line: 1023, column: 10, scope: !2862)
!2920 = !DILocation(line: 1024, column: 1, scope: !2862)
!2921 = !DILocation(line: 1023, column: 3, scope: !2862)
!2922 = distinct !DISubprogram(name: "quotearg_custom", scope: !151, file: !151, line: 1027, type: !2923, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !2925)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!21, !50, !50, !50}
!2925 = !{!2926, !2927, !2928}
!2926 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2922, file: !151, line: 1027, type: !50)
!2927 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2922, file: !151, line: 1027, type: !50)
!2928 = !DILocalVariable(name: "arg", arg: 3, scope: !2922, file: !151, line: 1028, type: !50)
!2929 = !DILocation(line: 1027, column: 30, scope: !2922)
!2930 = !DILocation(line: 1027, column: 54, scope: !2922)
!2931 = !DILocation(line: 1028, column: 30, scope: !2922)
!2932 = !DILocation(line: 1009, column: 24, scope: !2849, inlinedAt: !2933)
!2933 = distinct !DILocation(line: 1030, column: 10, scope: !2922)
!2934 = !DILocation(line: 1009, column: 39, scope: !2849, inlinedAt: !2933)
!2935 = !DILocation(line: 1010, column: 32, scope: !2849, inlinedAt: !2933)
!2936 = !DILocation(line: 1010, column: 57, scope: !2849, inlinedAt: !2933)
!2937 = !DILocation(line: 1017, column: 28, scope: !2862, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 1012, column: 10, scope: !2849, inlinedAt: !2933)
!2939 = !DILocation(line: 1017, column: 43, scope: !2862, inlinedAt: !2938)
!2940 = !DILocation(line: 1018, column: 36, scope: !2862, inlinedAt: !2938)
!2941 = !DILocation(line: 1019, column: 36, scope: !2862, inlinedAt: !2938)
!2942 = !DILocation(line: 1019, column: 48, scope: !2862, inlinedAt: !2938)
!2943 = !DILocation(line: 1021, column: 3, scope: !2862, inlinedAt: !2938)
!2944 = !DILocation(line: 1021, column: 30, scope: !2862, inlinedAt: !2938)
!2945 = !DILocation(line: 1021, column: 26, scope: !2862, inlinedAt: !2938)
!2946 = !DILocation(line: 171, column: 45, scope: !1489, inlinedAt: !2947)
!2947 = distinct !DILocation(line: 1022, column: 3, scope: !2862, inlinedAt: !2938)
!2948 = !DILocation(line: 172, column: 33, scope: !1489, inlinedAt: !2947)
!2949 = !DILocation(line: 172, column: 57, scope: !1489, inlinedAt: !2947)
!2950 = !DILocation(line: 176, column: 6, scope: !1489, inlinedAt: !2947)
!2951 = !DILocation(line: 176, column: 12, scope: !1489, inlinedAt: !2947)
!2952 = !DILocation(line: 177, column: 8, scope: !1505, inlinedAt: !2947)
!2953 = !DILocation(line: 177, column: 23, scope: !1505, inlinedAt: !2947)
!2954 = !DILocation(line: 177, column: 19, scope: !1505, inlinedAt: !2947)
!2955 = !DILocation(line: 178, column: 5, scope: !1505, inlinedAt: !2947)
!2956 = !DILocation(line: 179, column: 6, scope: !1489, inlinedAt: !2947)
!2957 = !DILocation(line: 179, column: 17, scope: !1489, inlinedAt: !2947)
!2958 = !DILocation(line: 180, column: 6, scope: !1489, inlinedAt: !2947)
!2959 = !DILocation(line: 180, column: 18, scope: !1489, inlinedAt: !2947)
!2960 = !DILocation(line: 1023, column: 10, scope: !2862, inlinedAt: !2938)
!2961 = !DILocation(line: 1024, column: 1, scope: !2862, inlinedAt: !2938)
!2962 = !DILocation(line: 1030, column: 3, scope: !2922)
!2963 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !151, file: !151, line: 1034, type: !2964, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !2966)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!21, !50, !50, !50, !38}
!2966 = !{!2967, !2968, !2969, !2970}
!2967 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2963, file: !151, line: 1034, type: !50)
!2968 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2963, file: !151, line: 1034, type: !50)
!2969 = !DILocalVariable(name: "arg", arg: 3, scope: !2963, file: !151, line: 1035, type: !50)
!2970 = !DILocalVariable(name: "argsize", arg: 4, scope: !2963, file: !151, line: 1035, type: !38)
!2971 = !DILocation(line: 1034, column: 34, scope: !2963)
!2972 = !DILocation(line: 1034, column: 58, scope: !2963)
!2973 = !DILocation(line: 1035, column: 34, scope: !2963)
!2974 = !DILocation(line: 1035, column: 46, scope: !2963)
!2975 = !DILocation(line: 1017, column: 28, scope: !2862, inlinedAt: !2976)
!2976 = distinct !DILocation(line: 1037, column: 10, scope: !2963)
!2977 = !DILocation(line: 1017, column: 43, scope: !2862, inlinedAt: !2976)
!2978 = !DILocation(line: 1018, column: 36, scope: !2862, inlinedAt: !2976)
!2979 = !DILocation(line: 1019, column: 36, scope: !2862, inlinedAt: !2976)
!2980 = !DILocation(line: 1019, column: 48, scope: !2862, inlinedAt: !2976)
!2981 = !DILocation(line: 1021, column: 3, scope: !2862, inlinedAt: !2976)
!2982 = !DILocation(line: 1021, column: 30, scope: !2862, inlinedAt: !2976)
!2983 = !DILocation(line: 1021, column: 26, scope: !2862, inlinedAt: !2976)
!2984 = !DILocation(line: 171, column: 45, scope: !1489, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 1022, column: 3, scope: !2862, inlinedAt: !2976)
!2986 = !DILocation(line: 172, column: 33, scope: !1489, inlinedAt: !2985)
!2987 = !DILocation(line: 172, column: 57, scope: !1489, inlinedAt: !2985)
!2988 = !DILocation(line: 176, column: 6, scope: !1489, inlinedAt: !2985)
!2989 = !DILocation(line: 176, column: 12, scope: !1489, inlinedAt: !2985)
!2990 = !DILocation(line: 177, column: 8, scope: !1505, inlinedAt: !2985)
!2991 = !DILocation(line: 177, column: 23, scope: !1505, inlinedAt: !2985)
!2992 = !DILocation(line: 177, column: 19, scope: !1505, inlinedAt: !2985)
!2993 = !DILocation(line: 178, column: 5, scope: !1505, inlinedAt: !2985)
!2994 = !DILocation(line: 179, column: 6, scope: !1489, inlinedAt: !2985)
!2995 = !DILocation(line: 179, column: 17, scope: !1489, inlinedAt: !2985)
!2996 = !DILocation(line: 180, column: 6, scope: !1489, inlinedAt: !2985)
!2997 = !DILocation(line: 180, column: 18, scope: !1489, inlinedAt: !2985)
!2998 = !DILocation(line: 1023, column: 10, scope: !2862, inlinedAt: !2976)
!2999 = !DILocation(line: 1024, column: 1, scope: !2862, inlinedAt: !2976)
!3000 = !DILocation(line: 1037, column: 3, scope: !2963)
!3001 = distinct !DISubprogram(name: "quote_n_mem", scope: !151, file: !151, line: 1052, type: !3002, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !3004)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!50, !41, !50, !38}
!3004 = !{!3005, !3006, !3007}
!3005 = !DILocalVariable(name: "n", arg: 1, scope: !3001, file: !151, line: 1052, type: !41)
!3006 = !DILocalVariable(name: "arg", arg: 2, scope: !3001, file: !151, line: 1052, type: !50)
!3007 = !DILocalVariable(name: "argsize", arg: 3, scope: !3001, file: !151, line: 1052, type: !38)
!3008 = !DILocation(line: 1052, column: 18, scope: !3001)
!3009 = !DILocation(line: 1052, column: 33, scope: !3001)
!3010 = !DILocation(line: 1052, column: 45, scope: !3001)
!3011 = !DILocation(line: 1054, column: 10, scope: !3001)
!3012 = !DILocation(line: 1054, column: 3, scope: !3001)
!3013 = distinct !DISubprogram(name: "quote_mem", scope: !151, file: !151, line: 1058, type: !3014, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !3016)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!50, !50, !38}
!3016 = !{!3017, !3018}
!3017 = !DILocalVariable(name: "arg", arg: 1, scope: !3013, file: !151, line: 1058, type: !50)
!3018 = !DILocalVariable(name: "argsize", arg: 2, scope: !3013, file: !151, line: 1058, type: !38)
!3019 = !DILocation(line: 1058, column: 24, scope: !3013)
!3020 = !DILocation(line: 1058, column: 36, scope: !3013)
!3021 = !DILocation(line: 1052, column: 18, scope: !3001, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 1060, column: 10, scope: !3013)
!3023 = !DILocation(line: 1052, column: 33, scope: !3001, inlinedAt: !3022)
!3024 = !DILocation(line: 1052, column: 45, scope: !3001, inlinedAt: !3022)
!3025 = !DILocation(line: 1054, column: 10, scope: !3001, inlinedAt: !3022)
!3026 = !DILocation(line: 1060, column: 3, scope: !3013)
!3027 = distinct !DISubprogram(name: "quote_n", scope: !151, file: !151, line: 1064, type: !3028, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !3030)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!50, !41, !50}
!3030 = !{!3031, !3032}
!3031 = !DILocalVariable(name: "n", arg: 1, scope: !3027, file: !151, line: 1064, type: !41)
!3032 = !DILocalVariable(name: "arg", arg: 2, scope: !3027, file: !151, line: 1064, type: !50)
!3033 = !DILocation(line: 1064, column: 14, scope: !3027)
!3034 = !DILocation(line: 1064, column: 29, scope: !3027)
!3035 = !DILocation(line: 1052, column: 18, scope: !3001, inlinedAt: !3036)
!3036 = distinct !DILocation(line: 1066, column: 10, scope: !3027)
!3037 = !DILocation(line: 1052, column: 33, scope: !3001, inlinedAt: !3036)
!3038 = !DILocation(line: 1052, column: 45, scope: !3001, inlinedAt: !3036)
!3039 = !DILocation(line: 1054, column: 10, scope: !3001, inlinedAt: !3036)
!3040 = !DILocation(line: 1066, column: 3, scope: !3027)
!3041 = distinct !DISubprogram(name: "quote", scope: !151, file: !151, line: 1070, type: !1302, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !3042)
!3042 = !{!3043}
!3043 = !DILocalVariable(name: "arg", arg: 1, scope: !3041, file: !151, line: 1070, type: !50)
!3044 = !DILocation(line: 1070, column: 20, scope: !3041)
!3045 = !DILocation(line: 1064, column: 14, scope: !3027, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 1072, column: 10, scope: !3041)
!3047 = !DILocation(line: 1064, column: 29, scope: !3027, inlinedAt: !3046)
!3048 = !DILocation(line: 1052, column: 18, scope: !3001, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 1066, column: 10, scope: !3027, inlinedAt: !3046)
!3050 = !DILocation(line: 1052, column: 33, scope: !3001, inlinedAt: !3049)
!3051 = !DILocation(line: 1052, column: 45, scope: !3001, inlinedAt: !3049)
!3052 = !DILocation(line: 1054, column: 10, scope: !3001, inlinedAt: !3049)
!3053 = !DILocation(line: 1072, column: 3, scope: !3041)
!3054 = distinct !DISubprogram(name: "version_etc_arn", scope: !591, file: !591, line: 62, type: !3055, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !587, variables: !3109)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{null, !3057, !50, !50, !50, !711, !38}
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3059, line: 7, baseType: !3060)
!3059 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3061, line: 241, size: 1728, elements: !3062)
!3061 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3062 = !{!3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3083, !3084, !3085, !3086, !3087, !3088, !3090, !3094, !3097, !3099, !3100, !3101, !3102, !3103, !3104, !3105}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3060, file: !3061, line: 242, baseType: !41, size: 32)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3060, file: !3061, line: 247, baseType: !21, size: 64, offset: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3060, file: !3061, line: 248, baseType: !21, size: 64, offset: 128)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3060, file: !3061, line: 249, baseType: !21, size: 64, offset: 192)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3060, file: !3061, line: 250, baseType: !21, size: 64, offset: 256)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3060, file: !3061, line: 251, baseType: !21, size: 64, offset: 320)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3060, file: !3061, line: 252, baseType: !21, size: 64, offset: 384)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3060, file: !3061, line: 253, baseType: !21, size: 64, offset: 448)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3060, file: !3061, line: 254, baseType: !21, size: 64, offset: 512)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3060, file: !3061, line: 256, baseType: !21, size: 64, offset: 576)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3060, file: !3061, line: 257, baseType: !21, size: 64, offset: 640)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3060, file: !3061, line: 258, baseType: !21, size: 64, offset: 704)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3060, file: !3061, line: 260, baseType: !3076, size: 64, offset: 768)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3061, line: 156, size: 192, elements: !3078)
!3078 = !{!3079, !3080, !3082}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3077, file: !3061, line: 157, baseType: !3076, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3077, file: !3061, line: 158, baseType: !3081, size: 64, offset: 64)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3077, file: !3061, line: 162, baseType: !41, size: 32, offset: 128)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3060, file: !3061, line: 262, baseType: !3081, size: 64, offset: 832)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3060, file: !3061, line: 264, baseType: !41, size: 32, offset: 896)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3060, file: !3061, line: 268, baseType: !41, size: 32, offset: 928)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3060, file: !3061, line: 270, baseType: !733, size: 64, offset: 960)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3060, file: !3061, line: 274, baseType: !147, size: 16, offset: 1024)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3060, file: !3061, line: 275, baseType: !3089, size: 8, offset: 1040)
!3089 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3060, file: !3061, line: 276, baseType: !3091, size: 8, offset: 1048)
!3091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 8, elements: !3092)
!3092 = !{!3093}
!3093 = !DISubrange(count: 1)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3060, file: !3061, line: 280, baseType: !3095, size: 64, offset: 1088)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3061, line: 150, baseType: null)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3060, file: !3061, line: 289, baseType: !3098, size: 64, offset: 1152)
!3098 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !27, line: 141, baseType: !734)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3060, file: !3061, line: 297, baseType: !23, size: 64, offset: 1216)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3060, file: !3061, line: 298, baseType: !23, size: 64, offset: 1280)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3060, file: !3061, line: 299, baseType: !23, size: 64, offset: 1344)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3060, file: !3061, line: 300, baseType: !23, size: 64, offset: 1408)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3060, file: !3061, line: 302, baseType: !38, size: 64, offset: 1472)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3060, file: !3061, line: 303, baseType: !41, size: 32, offset: 1536)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3060, file: !3061, line: 305, baseType: !3106, size: 160, offset: 1568)
!3106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 160, elements: !3107)
!3107 = !{!3108}
!3108 = !DISubrange(count: 20)
!3109 = !{!3110, !3111, !3112, !3113, !3114, !3115}
!3110 = !DILocalVariable(name: "stream", arg: 1, scope: !3054, file: !591, line: 62, type: !3057)
!3111 = !DILocalVariable(name: "command_name", arg: 2, scope: !3054, file: !591, line: 63, type: !50)
!3112 = !DILocalVariable(name: "package", arg: 3, scope: !3054, file: !591, line: 63, type: !50)
!3113 = !DILocalVariable(name: "version", arg: 4, scope: !3054, file: !591, line: 64, type: !50)
!3114 = !DILocalVariable(name: "authors", arg: 5, scope: !3054, file: !591, line: 65, type: !711)
!3115 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3054, file: !591, line: 65, type: !38)
!3116 = !DILocation(line: 62, column: 24, scope: !3054)
!3117 = !DILocation(line: 63, column: 30, scope: !3054)
!3118 = !DILocation(line: 63, column: 56, scope: !3054)
!3119 = !DILocation(line: 64, column: 30, scope: !3054)
!3120 = !DILocation(line: 65, column: 39, scope: !3054)
!3121 = !DILocation(line: 65, column: 55, scope: !3054)
!3122 = !DILocation(line: 67, column: 7, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3054, file: !591, line: 67, column: 7)
!3124 = !DILocation(line: 67, column: 7, scope: !3054)
!3125 = !DILocation(line: 68, column: 5, scope: !3123)
!3126 = !DILocation(line: 70, column: 5, scope: !3123)
!3127 = !DILocation(line: 84, column: 3, scope: !3054)
!3128 = !DILocation(line: 86, column: 3, scope: !3054)
!3129 = !DILocation(line: 95, column: 3, scope: !3054)
!3130 = !DILocation(line: 99, column: 7, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3054, file: !591, line: 96, column: 5)
!3132 = !DILocation(line: 102, column: 7, scope: !3131)
!3133 = !DILocation(line: 103, column: 7, scope: !3131)
!3134 = !DILocation(line: 106, column: 7, scope: !3131)
!3135 = !DILocation(line: 107, column: 7, scope: !3131)
!3136 = !DILocation(line: 110, column: 7, scope: !3131)
!3137 = !DILocation(line: 112, column: 7, scope: !3131)
!3138 = !DILocation(line: 117, column: 7, scope: !3131)
!3139 = !DILocation(line: 119, column: 7, scope: !3131)
!3140 = !DILocation(line: 124, column: 7, scope: !3131)
!3141 = !DILocation(line: 126, column: 7, scope: !3131)
!3142 = !DILocation(line: 131, column: 7, scope: !3131)
!3143 = !DILocation(line: 134, column: 7, scope: !3131)
!3144 = !DILocation(line: 139, column: 7, scope: !3131)
!3145 = !DILocation(line: 142, column: 7, scope: !3131)
!3146 = !DILocation(line: 147, column: 7, scope: !3131)
!3147 = !DILocation(line: 151, column: 7, scope: !3131)
!3148 = !DILocation(line: 156, column: 7, scope: !3131)
!3149 = !DILocation(line: 160, column: 7, scope: !3131)
!3150 = !DILocation(line: 167, column: 7, scope: !3131)
!3151 = !DILocation(line: 171, column: 7, scope: !3131)
!3152 = !DILocation(line: 173, column: 1, scope: !3054)
!3153 = distinct !DISubprogram(name: "version_etc_ar", scope: !591, file: !591, line: 180, type: !3154, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !587, variables: !3156)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{null, !3057, !50, !50, !50, !711}
!3156 = !{!3157, !3158, !3159, !3160, !3161, !3162}
!3157 = !DILocalVariable(name: "stream", arg: 1, scope: !3153, file: !591, line: 180, type: !3057)
!3158 = !DILocalVariable(name: "command_name", arg: 2, scope: !3153, file: !591, line: 181, type: !50)
!3159 = !DILocalVariable(name: "package", arg: 3, scope: !3153, file: !591, line: 181, type: !50)
!3160 = !DILocalVariable(name: "version", arg: 4, scope: !3153, file: !591, line: 182, type: !50)
!3161 = !DILocalVariable(name: "authors", arg: 5, scope: !3153, file: !591, line: 182, type: !711)
!3162 = !DILocalVariable(name: "n_authors", scope: !3153, file: !591, line: 184, type: !38)
!3163 = !DILocation(line: 180, column: 23, scope: !3153)
!3164 = !DILocation(line: 181, column: 29, scope: !3153)
!3165 = !DILocation(line: 181, column: 55, scope: !3153)
!3166 = !DILocation(line: 182, column: 29, scope: !3153)
!3167 = !DILocation(line: 182, column: 59, scope: !3153)
!3168 = !DILocation(line: 184, column: 10, scope: !3153)
!3169 = !DILocation(line: 186, column: 8, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3153, file: !591, line: 186, column: 3)
!3171 = !DILocation(line: 186, column: 23, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3170, file: !591, line: 186, column: 3)
!3173 = !DILocation(line: 186, column: 3, scope: !3170)
!3174 = !DILocation(line: 186, column: 52, scope: !3172)
!3175 = distinct !{!3175, !3173, !3176}
!3176 = !DILocation(line: 187, column: 5, scope: !3170)
!3177 = !DILocation(line: 188, column: 3, scope: !3153)
!3178 = !DILocation(line: 189, column: 1, scope: !3153)
!3179 = distinct !DISubprogram(name: "version_etc_va", scope: !591, file: !591, line: 196, type: !3180, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !587, variables: !3189)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{null, !3057, !50, !50, !50, !3182}
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !588, line: 189, size: 192, elements: !3184)
!3184 = !{!3185, !3186, !3187, !3188}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3183, file: !588, line: 189, baseType: !164, size: 32)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3183, file: !588, line: 189, baseType: !164, size: 32, offset: 32)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3183, file: !588, line: 189, baseType: !23, size: 64, offset: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3183, file: !588, line: 189, baseType: !23, size: 64, offset: 128)
!3189 = !{!3190, !3191, !3192, !3193, !3194, !3195, !3196}
!3190 = !DILocalVariable(name: "stream", arg: 1, scope: !3179, file: !591, line: 196, type: !3057)
!3191 = !DILocalVariable(name: "command_name", arg: 2, scope: !3179, file: !591, line: 197, type: !50)
!3192 = !DILocalVariable(name: "package", arg: 3, scope: !3179, file: !591, line: 197, type: !50)
!3193 = !DILocalVariable(name: "version", arg: 4, scope: !3179, file: !591, line: 198, type: !50)
!3194 = !DILocalVariable(name: "authors", arg: 5, scope: !3179, file: !591, line: 198, type: !3182)
!3195 = !DILocalVariable(name: "n_authors", scope: !3179, file: !591, line: 200, type: !38)
!3196 = !DILocalVariable(name: "authtab", scope: !3179, file: !591, line: 201, type: !3197)
!3197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 640, elements: !154)
!3198 = !DILocation(line: 196, column: 23, scope: !3179)
!3199 = !DILocation(line: 197, column: 29, scope: !3179)
!3200 = !DILocation(line: 197, column: 55, scope: !3179)
!3201 = !DILocation(line: 198, column: 29, scope: !3179)
!3202 = !DILocation(line: 198, column: 46, scope: !3179)
!3203 = !DILocation(line: 201, column: 3, scope: !3179)
!3204 = !DILocation(line: 201, column: 15, scope: !3179)
!3205 = !DILocation(line: 200, column: 10, scope: !3179)
!3206 = !DILocation(line: 205, column: 35, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3208, file: !591, line: 203, column: 3)
!3208 = distinct !DILexicalBlock(scope: !3179, file: !591, line: 203, column: 3)
!3209 = !DILocation(line: 205, column: 14, scope: !3207)
!3210 = !DILocation(line: 205, column: 33, scope: !3207)
!3211 = !DILocation(line: 205, column: 67, scope: !3207)
!3212 = !DILocation(line: 203, column: 3, scope: !3208)
!3213 = !DILocation(line: 208, column: 3, scope: !3179)
!3214 = !DILocation(line: 210, column: 1, scope: !3179)
!3215 = distinct !DISubprogram(name: "version_etc", scope: !591, file: !591, line: 227, type: !3216, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !587, variables: !3218)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{null, !3057, !50, !50, !50, null}
!3218 = !{!3219, !3220, !3221, !3222, !3223}
!3219 = !DILocalVariable(name: "stream", arg: 1, scope: !3215, file: !591, line: 227, type: !3057)
!3220 = !DILocalVariable(name: "command_name", arg: 2, scope: !3215, file: !591, line: 228, type: !50)
!3221 = !DILocalVariable(name: "package", arg: 3, scope: !3215, file: !591, line: 228, type: !50)
!3222 = !DILocalVariable(name: "version", arg: 4, scope: !3215, file: !591, line: 229, type: !50)
!3223 = !DILocalVariable(name: "authors", scope: !3215, file: !591, line: 231, type: !3224)
!3224 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3225, line: 46, baseType: !3226)
!3225 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3227, line: 48, baseType: !3228)
!3227 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !588, line: 231, baseType: !3229)
!3229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3183, size: 192, elements: !3092)
!3230 = !DILocation(line: 227, column: 20, scope: !3215)
!3231 = !DILocation(line: 228, column: 26, scope: !3215)
!3232 = !DILocation(line: 228, column: 52, scope: !3215)
!3233 = !DILocation(line: 229, column: 26, scope: !3215)
!3234 = !DILocation(line: 231, column: 3, scope: !3215)
!3235 = !DILocation(line: 231, column: 11, scope: !3215)
!3236 = !DILocation(line: 233, column: 3, scope: !3215)
!3237 = !DILocation(line: 234, column: 3, scope: !3215)
!3238 = !DILocation(line: 235, column: 3, scope: !3215)
!3239 = !DILocation(line: 236, column: 1, scope: !3215)
!3240 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !591, file: !591, line: 239, type: !666, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !587, variables: !82)
!3241 = !DILocation(line: 245, column: 3, scope: !3240)
!3242 = !DILocation(line: 251, column: 3, scope: !3240)
!3243 = !DILocation(line: 256, column: 3, scope: !3240)
!3244 = !DILocation(line: 258, column: 1, scope: !3240)
!3245 = distinct !DISubprogram(name: "xnmalloc", scope: !598, file: !598, line: 105, type: !3246, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !594, variables: !3248)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!23, !38, !38}
!3248 = !{!3249, !3250}
!3249 = !DILocalVariable(name: "n", arg: 1, scope: !3245, file: !598, line: 105, type: !38)
!3250 = !DILocalVariable(name: "s", arg: 2, scope: !3245, file: !598, line: 105, type: !38)
!3251 = !DILocation(line: 105, column: 18, scope: !3245)
!3252 = !DILocation(line: 105, column: 28, scope: !3245)
!3253 = !DILocation(line: 107, column: 7, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3245, file: !598, line: 107, column: 7)
!3255 = !DILocation(line: 107, column: 7, scope: !3245)
!3256 = !DILocation(line: 108, column: 5, scope: !3254)
!3257 = !DILocation(line: 109, column: 21, scope: !3245)
!3258 = !DILocalVariable(name: "n", arg: 1, scope: !3259, file: !3260, line: 39, type: !38)
!3259 = distinct !DISubprogram(name: "xmalloc", scope: !3260, file: !3260, line: 39, type: !561, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !594, variables: !3261)
!3260 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3261 = !{!3258, !3262}
!3262 = !DILocalVariable(name: "p", scope: !3259, file: !3260, line: 41, type: !23)
!3263 = !DILocation(line: 39, column: 17, scope: !3259, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 109, column: 10, scope: !3245)
!3265 = !DILocation(line: 41, column: 13, scope: !3259, inlinedAt: !3264)
!3266 = !DILocation(line: 41, column: 9, scope: !3259, inlinedAt: !3264)
!3267 = !DILocation(line: 42, column: 8, scope: !3268, inlinedAt: !3264)
!3268 = distinct !DILexicalBlock(scope: !3259, file: !3260, line: 42, column: 7)
!3269 = !DILocation(line: 42, column: 15, scope: !3268, inlinedAt: !3264)
!3270 = !DILocation(line: 42, column: 10, scope: !3268, inlinedAt: !3264)
!3271 = !DILocation(line: 43, column: 5, scope: !3268, inlinedAt: !3264)
!3272 = !DILocation(line: 109, column: 3, scope: !3245)
!3273 = !DILocation(line: 39, column: 17, scope: !3259)
!3274 = !DILocation(line: 41, column: 13, scope: !3259)
!3275 = !DILocation(line: 41, column: 9, scope: !3259)
!3276 = !DILocation(line: 42, column: 8, scope: !3268)
!3277 = !DILocation(line: 42, column: 15, scope: !3268)
!3278 = !DILocation(line: 42, column: 10, scope: !3268)
!3279 = !DILocation(line: 43, column: 5, scope: !3268)
!3280 = !DILocation(line: 44, column: 3, scope: !3259)
!3281 = distinct !DISubprogram(name: "xnrealloc", scope: !598, file: !598, line: 118, type: !3282, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !594, variables: !3284)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!23, !23, !38, !38}
!3284 = !{!3285, !3286, !3287}
!3285 = !DILocalVariable(name: "p", arg: 1, scope: !3281, file: !598, line: 118, type: !23)
!3286 = !DILocalVariable(name: "n", arg: 2, scope: !3281, file: !598, line: 118, type: !38)
!3287 = !DILocalVariable(name: "s", arg: 3, scope: !3281, file: !598, line: 118, type: !38)
!3288 = !DILocation(line: 118, column: 18, scope: !3281)
!3289 = !DILocation(line: 118, column: 28, scope: !3281)
!3290 = !DILocation(line: 118, column: 38, scope: !3281)
!3291 = !DILocation(line: 120, column: 7, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3281, file: !598, line: 120, column: 7)
!3293 = !DILocation(line: 120, column: 7, scope: !3281)
!3294 = !DILocation(line: 121, column: 5, scope: !3292)
!3295 = !DILocation(line: 122, column: 25, scope: !3281)
!3296 = !DILocalVariable(name: "p", arg: 1, scope: !3297, file: !3260, line: 51, type: !23)
!3297 = distinct !DISubprogram(name: "xrealloc", scope: !3260, file: !3260, line: 51, type: !565, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !594, variables: !3298)
!3298 = !{!3296, !3299}
!3299 = !DILocalVariable(name: "n", arg: 2, scope: !3297, file: !3260, line: 51, type: !38)
!3300 = !DILocation(line: 51, column: 17, scope: !3297, inlinedAt: !3301)
!3301 = distinct !DILocation(line: 122, column: 10, scope: !3281)
!3302 = !DILocation(line: 51, column: 27, scope: !3297, inlinedAt: !3301)
!3303 = !DILocation(line: 53, column: 8, scope: !3304, inlinedAt: !3301)
!3304 = distinct !DILexicalBlock(scope: !3297, file: !3260, line: 53, column: 7)
!3305 = !DILocation(line: 53, column: 13, scope: !3304, inlinedAt: !3301)
!3306 = !DILocation(line: 53, column: 10, scope: !3304, inlinedAt: !3301)
!3307 = !DILocation(line: 57, column: 7, scope: !3308, inlinedAt: !3301)
!3308 = distinct !DILexicalBlock(scope: !3304, file: !3260, line: 54, column: 5)
!3309 = !DILocation(line: 58, column: 7, scope: !3308, inlinedAt: !3301)
!3310 = !DILocation(line: 61, column: 7, scope: !3297, inlinedAt: !3301)
!3311 = !DILocation(line: 62, column: 8, scope: !3312, inlinedAt: !3301)
!3312 = distinct !DILexicalBlock(scope: !3297, file: !3260, line: 62, column: 7)
!3313 = !DILocation(line: 62, column: 13, scope: !3312, inlinedAt: !3301)
!3314 = !DILocation(line: 62, column: 10, scope: !3312, inlinedAt: !3301)
!3315 = !DILocation(line: 63, column: 5, scope: !3312, inlinedAt: !3301)
!3316 = !DILocation(line: 122, column: 3, scope: !3281)
!3317 = !DILocation(line: 51, column: 17, scope: !3297)
!3318 = !DILocation(line: 51, column: 27, scope: !3297)
!3319 = !DILocation(line: 53, column: 8, scope: !3304)
!3320 = !DILocation(line: 53, column: 13, scope: !3304)
!3321 = !DILocation(line: 53, column: 10, scope: !3304)
!3322 = !DILocation(line: 57, column: 7, scope: !3308)
!3323 = !DILocation(line: 58, column: 7, scope: !3308)
!3324 = !DILocation(line: 61, column: 7, scope: !3297)
!3325 = !DILocation(line: 62, column: 8, scope: !3312)
!3326 = !DILocation(line: 62, column: 13, scope: !3312)
!3327 = !DILocation(line: 62, column: 10, scope: !3312)
!3328 = !DILocation(line: 63, column: 5, scope: !3312)
!3329 = !DILocation(line: 65, column: 1, scope: !3297)
!3330 = !DILocation(line: 180, column: 19, scope: !599)
!3331 = !DILocation(line: 180, column: 30, scope: !599)
!3332 = !DILocation(line: 180, column: 41, scope: !599)
!3333 = !DILocation(line: 182, column: 14, scope: !599)
!3334 = !DILocation(line: 182, column: 10, scope: !599)
!3335 = !DILocation(line: 184, column: 9, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !599, file: !598, line: 184, column: 7)
!3337 = !DILocation(line: 184, column: 7, scope: !599)
!3338 = !DILocation(line: 186, column: 13, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3340, file: !598, line: 186, column: 11)
!3340 = distinct !DILexicalBlock(scope: !3336, file: !598, line: 185, column: 5)
!3341 = !DILocation(line: 186, column: 11, scope: !3340)
!3342 = !DILocation(line: 194, column: 30, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3339, file: !598, line: 187, column: 9)
!3344 = !DILocation(line: 195, column: 16, scope: !3343)
!3345 = !DILocation(line: 195, column: 13, scope: !3343)
!3346 = !DILocation(line: 196, column: 9, scope: !3343)
!3347 = !DILocation(line: 204, column: 69, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3349, file: !598, line: 204, column: 11)
!3349 = distinct !DILexicalBlock(scope: !3336, file: !598, line: 199, column: 5)
!3350 = !DILocation(line: 205, column: 11, scope: !3348)
!3351 = !DILocation(line: 204, column: 11, scope: !3349)
!3352 = !DILocation(line: 206, column: 9, scope: !3348)
!3353 = !DILocation(line: 210, column: 7, scope: !599)
!3354 = !DILocation(line: 211, column: 25, scope: !599)
!3355 = !DILocation(line: 51, column: 17, scope: !3297, inlinedAt: !3356)
!3356 = distinct !DILocation(line: 211, column: 10, scope: !599)
!3357 = !DILocation(line: 51, column: 27, scope: !3297, inlinedAt: !3356)
!3358 = !DILocation(line: 53, column: 10, scope: !3304, inlinedAt: !3356)
!3359 = !DILocation(line: 207, column: 14, scope: !3349)
!3360 = !DILocation(line: 207, column: 18, scope: !3349)
!3361 = !DILocation(line: 207, column: 9, scope: !3349)
!3362 = !DILocation(line: 53, column: 8, scope: !3304, inlinedAt: !3356)
!3363 = !DILocation(line: 57, column: 7, scope: !3308, inlinedAt: !3356)
!3364 = !DILocation(line: 58, column: 7, scope: !3308, inlinedAt: !3356)
!3365 = !DILocation(line: 61, column: 7, scope: !3297, inlinedAt: !3356)
!3366 = !DILocation(line: 62, column: 8, scope: !3312, inlinedAt: !3356)
!3367 = !DILocation(line: 62, column: 13, scope: !3312, inlinedAt: !3356)
!3368 = !DILocation(line: 62, column: 10, scope: !3312, inlinedAt: !3356)
!3369 = !DILocation(line: 63, column: 5, scope: !3312, inlinedAt: !3356)
!3370 = !DILocation(line: 211, column: 3, scope: !599)
!3371 = distinct !DISubprogram(name: "xcharalloc", scope: !598, file: !598, line: 220, type: !2337, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !594, variables: !3372)
!3372 = !{!3373}
!3373 = !DILocalVariable(name: "n", arg: 1, scope: !3371, file: !598, line: 220, type: !38)
!3374 = !DILocation(line: 220, column: 20, scope: !3371)
!3375 = !DILocation(line: 39, column: 17, scope: !3259, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 222, column: 10, scope: !3371)
!3377 = !DILocation(line: 41, column: 13, scope: !3259, inlinedAt: !3376)
!3378 = !DILocation(line: 41, column: 9, scope: !3259, inlinedAt: !3376)
!3379 = !DILocation(line: 42, column: 8, scope: !3268, inlinedAt: !3376)
!3380 = !DILocation(line: 42, column: 15, scope: !3268, inlinedAt: !3376)
!3381 = !DILocation(line: 42, column: 10, scope: !3268, inlinedAt: !3376)
!3382 = !DILocation(line: 43, column: 5, scope: !3268, inlinedAt: !3376)
!3383 = !DILocation(line: 222, column: 3, scope: !3371)
!3384 = distinct !DISubprogram(name: "x2realloc", scope: !3260, file: !3260, line: 74, type: !3385, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !594, variables: !3387)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!23, !23, !602}
!3387 = !{!3388, !3389}
!3388 = !DILocalVariable(name: "p", arg: 1, scope: !3384, file: !3260, line: 74, type: !23)
!3389 = !DILocalVariable(name: "pn", arg: 2, scope: !3384, file: !3260, line: 74, type: !602)
!3390 = !DILocation(line: 74, column: 18, scope: !3384)
!3391 = !DILocation(line: 74, column: 29, scope: !3384)
!3392 = !DILocation(line: 180, column: 19, scope: !599, inlinedAt: !3393)
!3393 = distinct !DILocation(line: 76, column: 10, scope: !3384)
!3394 = !DILocation(line: 180, column: 30, scope: !599, inlinedAt: !3393)
!3395 = !DILocation(line: 180, column: 41, scope: !599, inlinedAt: !3393)
!3396 = !DILocation(line: 182, column: 14, scope: !599, inlinedAt: !3393)
!3397 = !DILocation(line: 182, column: 10, scope: !599, inlinedAt: !3393)
!3398 = !DILocation(line: 184, column: 9, scope: !3336, inlinedAt: !3393)
!3399 = !DILocation(line: 184, column: 7, scope: !599, inlinedAt: !3393)
!3400 = !DILocation(line: 186, column: 13, scope: !3339, inlinedAt: !3393)
!3401 = !DILocation(line: 186, column: 11, scope: !3340, inlinedAt: !3393)
!3402 = !DILocation(line: 210, column: 7, scope: !599, inlinedAt: !3393)
!3403 = !DILocation(line: 51, column: 17, scope: !3297, inlinedAt: !3404)
!3404 = distinct !DILocation(line: 211, column: 10, scope: !599, inlinedAt: !3393)
!3405 = !DILocation(line: 51, column: 27, scope: !3297, inlinedAt: !3404)
!3406 = !DILocation(line: 53, column: 10, scope: !3304, inlinedAt: !3404)
!3407 = !DILocation(line: 205, column: 11, scope: !3348, inlinedAt: !3393)
!3408 = !DILocation(line: 204, column: 11, scope: !3349, inlinedAt: !3393)
!3409 = !DILocation(line: 206, column: 9, scope: !3348, inlinedAt: !3393)
!3410 = !DILocation(line: 207, column: 14, scope: !3349, inlinedAt: !3393)
!3411 = !DILocation(line: 207, column: 18, scope: !3349, inlinedAt: !3393)
!3412 = !DILocation(line: 207, column: 9, scope: !3349, inlinedAt: !3393)
!3413 = !DILocation(line: 53, column: 8, scope: !3304, inlinedAt: !3404)
!3414 = !DILocation(line: 57, column: 7, scope: !3308, inlinedAt: !3404)
!3415 = !DILocation(line: 58, column: 7, scope: !3308, inlinedAt: !3404)
!3416 = !DILocation(line: 61, column: 7, scope: !3297, inlinedAt: !3404)
!3417 = !DILocation(line: 62, column: 8, scope: !3312, inlinedAt: !3404)
!3418 = !DILocation(line: 62, column: 13, scope: !3312, inlinedAt: !3404)
!3419 = !DILocation(line: 62, column: 10, scope: !3312, inlinedAt: !3404)
!3420 = !DILocation(line: 63, column: 5, scope: !3312, inlinedAt: !3404)
!3421 = !DILocation(line: 76, column: 3, scope: !3384)
!3422 = distinct !DISubprogram(name: "xzalloc", scope: !3260, file: !3260, line: 84, type: !561, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !594, variables: !3423)
!3423 = !{!3424}
!3424 = !DILocalVariable(name: "s", arg: 1, scope: !3422, file: !3260, line: 84, type: !38)
!3425 = !DILocation(line: 84, column: 17, scope: !3422)
!3426 = !DILocation(line: 39, column: 17, scope: !3259, inlinedAt: !3427)
!3427 = distinct !DILocation(line: 86, column: 18, scope: !3422)
!3428 = !DILocation(line: 41, column: 13, scope: !3259, inlinedAt: !3427)
!3429 = !DILocation(line: 41, column: 9, scope: !3259, inlinedAt: !3427)
!3430 = !DILocation(line: 42, column: 8, scope: !3268, inlinedAt: !3427)
!3431 = !DILocation(line: 42, column: 15, scope: !3268, inlinedAt: !3427)
!3432 = !DILocation(line: 42, column: 10, scope: !3268, inlinedAt: !3427)
!3433 = !DILocation(line: 43, column: 5, scope: !3268, inlinedAt: !3427)
!3434 = !DILocation(line: 86, column: 10, scope: !3422)
!3435 = !DILocation(line: 86, column: 3, scope: !3422)
!3436 = distinct !DISubprogram(name: "xcalloc", scope: !3260, file: !3260, line: 93, type: !3246, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !594, variables: !3437)
!3437 = !{!3438, !3439, !3440}
!3438 = !DILocalVariable(name: "n", arg: 1, scope: !3436, file: !3260, line: 93, type: !38)
!3439 = !DILocalVariable(name: "s", arg: 2, scope: !3436, file: !3260, line: 93, type: !38)
!3440 = !DILocalVariable(name: "p", scope: !3436, file: !3260, line: 95, type: !23)
!3441 = !DILocation(line: 93, column: 17, scope: !3436)
!3442 = !DILocation(line: 93, column: 27, scope: !3436)
!3443 = !DILocation(line: 100, column: 7, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3436, file: !3260, line: 100, column: 7)
!3445 = !DILocation(line: 101, column: 7, scope: !3444)
!3446 = !DILocation(line: 101, column: 18, scope: !3444)
!3447 = !DILocation(line: 95, column: 9, scope: !3436)
!3448 = !DILocation(line: 101, column: 16, scope: !3444)
!3449 = !DILocation(line: 100, column: 7, scope: !3436)
!3450 = !DILocation(line: 102, column: 5, scope: !3444)
!3451 = !DILocation(line: 103, column: 3, scope: !3436)
!3452 = distinct !DISubprogram(name: "xmemdup", scope: !3260, file: !3260, line: 111, type: !3453, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !594, variables: !3455)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!23, !1334, !38}
!3455 = !{!3456, !3457}
!3456 = !DILocalVariable(name: "p", arg: 1, scope: !3452, file: !3260, line: 111, type: !1334)
!3457 = !DILocalVariable(name: "s", arg: 2, scope: !3452, file: !3260, line: 111, type: !38)
!3458 = !DILocation(line: 111, column: 22, scope: !3452)
!3459 = !DILocation(line: 111, column: 32, scope: !3452)
!3460 = !DILocation(line: 39, column: 17, scope: !3259, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 113, column: 18, scope: !3452)
!3462 = !DILocation(line: 41, column: 13, scope: !3259, inlinedAt: !3461)
!3463 = !DILocation(line: 41, column: 9, scope: !3259, inlinedAt: !3461)
!3464 = !DILocation(line: 42, column: 8, scope: !3268, inlinedAt: !3461)
!3465 = !DILocation(line: 42, column: 15, scope: !3268, inlinedAt: !3461)
!3466 = !DILocation(line: 42, column: 10, scope: !3268, inlinedAt: !3461)
!3467 = !DILocation(line: 43, column: 5, scope: !3268, inlinedAt: !3461)
!3468 = !DILocation(line: 113, column: 10, scope: !3452)
!3469 = !DILocation(line: 113, column: 3, scope: !3452)
!3470 = distinct !DISubprogram(name: "xstrdup", scope: !3260, file: !3260, line: 119, type: !1130, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !594, variables: !3471)
!3471 = !{!3472}
!3472 = !DILocalVariable(name: "string", arg: 1, scope: !3470, file: !3260, line: 119, type: !50)
!3473 = !DILocation(line: 119, column: 22, scope: !3470)
!3474 = !DILocation(line: 121, column: 27, scope: !3470)
!3475 = !DILocation(line: 121, column: 43, scope: !3470)
!3476 = !DILocation(line: 111, column: 22, scope: !3452, inlinedAt: !3477)
!3477 = distinct !DILocation(line: 121, column: 10, scope: !3470)
!3478 = !DILocation(line: 111, column: 32, scope: !3452, inlinedAt: !3477)
!3479 = !DILocation(line: 39, column: 17, scope: !3259, inlinedAt: !3480)
!3480 = distinct !DILocation(line: 113, column: 18, scope: !3452, inlinedAt: !3477)
!3481 = !DILocation(line: 41, column: 13, scope: !3259, inlinedAt: !3480)
!3482 = !DILocation(line: 41, column: 9, scope: !3259, inlinedAt: !3480)
!3483 = !DILocation(line: 42, column: 8, scope: !3268, inlinedAt: !3480)
!3484 = !DILocation(line: 42, column: 15, scope: !3268, inlinedAt: !3480)
!3485 = !DILocation(line: 42, column: 10, scope: !3268, inlinedAt: !3480)
!3486 = !DILocation(line: 43, column: 5, scope: !3268, inlinedAt: !3480)
!3487 = !DILocation(line: 113, column: 10, scope: !3452, inlinedAt: !3477)
!3488 = !DILocation(line: 121, column: 3, scope: !3470)
!3489 = distinct !DISubprogram(name: "xalloc_die", scope: !3490, file: !3490, line: 32, type: !666, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !611, variables: !82)
!3490 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3491 = !DILocation(line: 34, column: 10, scope: !3489)
!3492 = !DILocation(line: 34, column: 33, scope: !3489)
!3493 = !DILocation(line: 34, column: 3, scope: !3489)
!3494 = !DILocation(line: 40, column: 3, scope: !3489)
!3495 = distinct !DISubprogram(name: "xreadlink", scope: !3496, file: !3496, line: 38, type: !1130, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !613, variables: !3497)
!3496 = !DIFile(filename: "lib/xreadlink.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3497 = !{!3498, !3499}
!3498 = !DILocalVariable(name: "filename", arg: 1, scope: !3495, file: !3496, line: 38, type: !50)
!3499 = !DILocalVariable(name: "result", scope: !3495, file: !3496, line: 40, type: !21)
!3500 = !DILocation(line: 38, column: 24, scope: !3495)
!3501 = !DILocation(line: 40, column: 18, scope: !3495)
!3502 = !DILocation(line: 40, column: 9, scope: !3495)
!3503 = !DILocation(line: 41, column: 14, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3495, file: !3496, line: 41, column: 7)
!3505 = !DILocation(line: 41, column: 22, scope: !3504)
!3506 = !DILocation(line: 41, column: 25, scope: !3504)
!3507 = !DILocation(line: 41, column: 31, scope: !3504)
!3508 = !DILocation(line: 41, column: 7, scope: !3495)
!3509 = !DILocation(line: 42, column: 5, scope: !3504)
!3510 = !DILocation(line: 43, column: 3, scope: !3495)
!3511 = distinct !DISubprogram(name: "xstrtoumax", scope: !3512, file: !3512, line: 88, type: !3513, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !615, variables: !3517)
!3512 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!3515, !50, !695, !41, !3516, !50}
!3515 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !13, line: 39, baseType: !12)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!3517 = !{!3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3530, !3531, !3534, !3535}
!3518 = !DILocalVariable(name: "s", arg: 1, scope: !3511, file: !3512, line: 88, type: !50)
!3519 = !DILocalVariable(name: "ptr", arg: 2, scope: !3511, file: !3512, line: 88, type: !695)
!3520 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3511, file: !3512, line: 88, type: !41)
!3521 = !DILocalVariable(name: "val", arg: 4, scope: !3511, file: !3512, line: 89, type: !3516)
!3522 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3511, file: !3512, line: 89, type: !50)
!3523 = !DILocalVariable(name: "t_ptr", scope: !3511, file: !3512, line: 91, type: !21)
!3524 = !DILocalVariable(name: "p", scope: !3511, file: !3512, line: 92, type: !695)
!3525 = !DILocalVariable(name: "tmp", scope: !3511, file: !3512, line: 93, type: !24)
!3526 = !DILocalVariable(name: "err", scope: !3511, file: !3512, line: 94, type: !3515)
!3527 = !DILocalVariable(name: "q", scope: !3528, file: !3512, line: 104, type: !50)
!3528 = distinct !DILexicalBlock(scope: !3529, file: !3512, line: 103, column: 5)
!3529 = distinct !DILexicalBlock(scope: !3511, file: !3512, line: 102, column: 7)
!3530 = !DILocalVariable(name: "ch", scope: !3528, file: !3512, line: 105, type: !545)
!3531 = !DILocalVariable(name: "base", scope: !3532, file: !3512, line: 141, type: !41)
!3532 = distinct !DILexicalBlock(scope: !3533, file: !3512, line: 140, column: 5)
!3533 = distinct !DILexicalBlock(scope: !3511, file: !3512, line: 139, column: 7)
!3534 = !DILocalVariable(name: "suffixes", scope: !3532, file: !3512, line: 142, type: !41)
!3535 = !DILocalVariable(name: "overflow", scope: !3532, file: !3512, line: 143, type: !3515)
!3536 = !DILocation(line: 88, column: 24, scope: !3511)
!3537 = !DILocation(line: 88, column: 34, scope: !3511)
!3538 = !DILocation(line: 88, column: 43, scope: !3511)
!3539 = !DILocation(line: 89, column: 24, scope: !3511)
!3540 = !DILocation(line: 89, column: 41, scope: !3511)
!3541 = !DILocation(line: 91, column: 3, scope: !3511)
!3542 = !DILocation(line: 94, column: 16, scope: !3511)
!3543 = !DILocation(line: 96, column: 3, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3545, file: !3512, line: 96, column: 3)
!3545 = distinct !DILexicalBlock(scope: !3511, file: !3512, line: 96, column: 3)
!3546 = !DILocation(line: 98, column: 8, scope: !3511)
!3547 = !DILocation(line: 92, column: 10, scope: !3511)
!3548 = !DILocation(line: 100, column: 3, scope: !3511)
!3549 = !DILocation(line: 100, column: 9, scope: !3511)
!3550 = !DILocation(line: 104, column: 19, scope: !3528)
!3551 = !DIExpression(DW_OP_deref)
!3552 = !DILocation(line: 105, column: 21, scope: !3528)
!3553 = !DILocation(line: 106, column: 14, scope: !3528)
!3554 = !DILocation(line: 106, column: 7, scope: !3528)
!3555 = !DILocation(line: 107, column: 15, scope: !3528)
!3556 = distinct !{!3556, !3554, !3557}
!3557 = !DILocation(line: 107, column: 17, scope: !3528)
!3558 = !DILocation(line: 108, column: 14, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3528, file: !3512, line: 108, column: 11)
!3560 = !DILocalVariable(name: "nptr", arg: 1, scope: !3561, file: !3562, line: 336, type: !3565)
!3561 = distinct !DISubprogram(name: "strtoumax", scope: !3562, file: !3562, line: 336, type: !3563, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !615, variables: !3567)
!3562 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!24, !3565, !3566, !41}
!3565 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!3566 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !695)
!3567 = !{!3560, !3568, !3569}
!3568 = !DILocalVariable(name: "endptr", arg: 2, scope: !3561, file: !3562, line: 336, type: !3566)
!3569 = !DILocalVariable(name: "base", arg: 3, scope: !3561, file: !3562, line: 336, type: !41)
!3570 = !DILocation(line: 336, column: 1, scope: !3561, inlinedAt: !3571)
!3571 = distinct !DILocation(line: 112, column: 9, scope: !3511)
!3572 = !DILocation(line: 339, column: 10, scope: !3561, inlinedAt: !3571)
!3573 = !DILocation(line: 93, column: 14, scope: !3511)
!3574 = !DILocation(line: 114, column: 7, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3511, file: !3512, line: 114, column: 7)
!3576 = !DILocation(line: 114, column: 10, scope: !3575)
!3577 = !DILocation(line: 114, column: 7, scope: !3511)
!3578 = !DILocation(line: 118, column: 11, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3580, file: !3512, line: 118, column: 11)
!3580 = distinct !DILexicalBlock(scope: !3575, file: !3512, line: 115, column: 5)
!3581 = !DILocation(line: 118, column: 26, scope: !3579)
!3582 = !DILocation(line: 118, column: 29, scope: !3579)
!3583 = !DILocation(line: 118, column: 33, scope: !3579)
!3584 = !DILocation(line: 118, column: 36, scope: !3579)
!3585 = !DILocation(line: 118, column: 11, scope: !3580)
!3586 = !DILocation(line: 123, column: 12, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3575, file: !3512, line: 123, column: 12)
!3588 = !DILocation(line: 123, column: 12, scope: !3575)
!3589 = !DILocation(line: 128, column: 5, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3587, file: !3512, line: 124, column: 5)
!3591 = !DILocation(line: 133, column: 8, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3511, file: !3512, line: 133, column: 7)
!3593 = !DILocation(line: 133, column: 7, scope: !3511)
!3594 = !DILocation(line: 135, column: 12, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3592, file: !3512, line: 134, column: 5)
!3596 = !DILocation(line: 136, column: 7, scope: !3595)
!3597 = !DILocation(line: 139, column: 7, scope: !3533)
!3598 = !DILocation(line: 139, column: 11, scope: !3533)
!3599 = !DILocation(line: 139, column: 7, scope: !3511)
!3600 = !DILocation(line: 141, column: 11, scope: !3532)
!3601 = !DILocation(line: 142, column: 11, scope: !3532)
!3602 = !DILocation(line: 145, column: 12, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3532, file: !3512, line: 145, column: 11)
!3604 = !DILocation(line: 145, column: 11, scope: !3532)
!3605 = !DILocation(line: 147, column: 16, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3603, file: !3512, line: 146, column: 9)
!3607 = !DILocation(line: 148, column: 22, scope: !3606)
!3608 = !DILocation(line: 148, column: 11, scope: !3606)
!3609 = !DILocation(line: 151, column: 7, scope: !3532)
!3610 = !DILocation(line: 163, column: 15, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3612, file: !3512, line: 163, column: 15)
!3612 = distinct !DILexicalBlock(scope: !3532, file: !3512, line: 152, column: 9)
!3613 = !DILocation(line: 163, column: 15, scope: !3612)
!3614 = !DILocation(line: 164, column: 21, scope: !3611)
!3615 = !DILocation(line: 164, column: 13, scope: !3611)
!3616 = !DILocation(line: 167, column: 21, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3618, file: !3512, line: 167, column: 21)
!3618 = distinct !DILexicalBlock(scope: !3611, file: !3512, line: 165, column: 15)
!3619 = !DILocation(line: 167, column: 29, scope: !3617)
!3620 = !DILocation(line: 167, column: 21, scope: !3618)
!3621 = !DILocation(line: 175, column: 17, scope: !3618)
!3622 = !DILocation(line: 179, column: 7, scope: !3532)
!3623 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3624, file: !3512, line: 60, type: !41)
!3624 = distinct !DISubprogram(name: "bkm_scale", scope: !3512, file: !3512, line: 60, type: !3625, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !615, variables: !3627)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!3515, !3516, !41}
!3627 = !{!3628, !3623}
!3628 = !DILocalVariable(name: "x", arg: 1, scope: !3624, file: !3512, line: 60, type: !3516)
!3629 = !DILocation(line: 60, column: 31, scope: !3624, inlinedAt: !3630)
!3630 = distinct !DILocation(line: 182, column: 22, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3532, file: !3512, line: 180, column: 9)
!3632 = !DILocation(line: 67, column: 39, scope: !3633, inlinedAt: !3630)
!3633 = distinct !DILexicalBlock(scope: !3624, file: !3512, line: 67, column: 7)
!3634 = !DILocation(line: 72, column: 6, scope: !3624, inlinedAt: !3630)
!3635 = !DILocation(line: 67, column: 7, scope: !3624, inlinedAt: !3630)
!3636 = !DILocation(line: 143, column: 20, scope: !3532)
!3637 = !DILocation(line: 183, column: 11, scope: !3631)
!3638 = !DILocation(line: 60, column: 31, scope: !3624, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 189, column: 22, scope: !3631)
!3640 = !DILocation(line: 67, column: 39, scope: !3633, inlinedAt: !3639)
!3641 = !DILocation(line: 72, column: 6, scope: !3624, inlinedAt: !3639)
!3642 = !DILocation(line: 67, column: 7, scope: !3624, inlinedAt: !3639)
!3643 = !DILocation(line: 190, column: 11, scope: !3631)
!3644 = !DILocalVariable(name: "power", arg: 3, scope: !3645, file: !3512, line: 77, type: !41)
!3645 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3512, file: !3512, line: 77, type: !3646, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !615, variables: !3648)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!3515, !3516, !41, !41}
!3648 = !{!3649, !3650, !3644, !3651}
!3649 = !DILocalVariable(name: "x", arg: 1, scope: !3645, file: !3512, line: 77, type: !3516)
!3650 = !DILocalVariable(name: "base", arg: 2, scope: !3645, file: !3512, line: 77, type: !41)
!3651 = !DILocalVariable(name: "err", scope: !3645, file: !3512, line: 79, type: !3515)
!3652 = !DILocation(line: 77, column: 50, scope: !3645, inlinedAt: !3653)
!3653 = distinct !DILocation(line: 197, column: 22, scope: !3631)
!3654 = !DILocation(line: 79, column: 16, scope: !3645, inlinedAt: !3653)
!3655 = !DILocation(line: 67, column: 39, scope: !3633, inlinedAt: !3656)
!3656 = distinct !DILocation(line: 81, column: 12, scope: !3645, inlinedAt: !3653)
!3657 = !DILocation(line: 72, column: 6, scope: !3624, inlinedAt: !3656)
!3658 = !DILocation(line: 67, column: 7, scope: !3624, inlinedAt: !3656)
!3659 = !DILocation(line: 81, column: 9, scope: !3645, inlinedAt: !3653)
!3660 = !DILocation(line: 241, column: 11, scope: !3532)
!3661 = !DILocation(line: 77, column: 50, scope: !3645, inlinedAt: !3662)
!3662 = distinct !DILocation(line: 202, column: 22, scope: !3631)
!3663 = !DILocation(line: 79, column: 16, scope: !3645, inlinedAt: !3662)
!3664 = !DILocation(line: 67, column: 39, scope: !3633, inlinedAt: !3665)
!3665 = distinct !DILocation(line: 81, column: 12, scope: !3645, inlinedAt: !3662)
!3666 = !DILocation(line: 72, column: 6, scope: !3624, inlinedAt: !3665)
!3667 = !DILocation(line: 67, column: 7, scope: !3624, inlinedAt: !3665)
!3668 = !DILocation(line: 81, column: 9, scope: !3645, inlinedAt: !3662)
!3669 = !DILocation(line: 77, column: 50, scope: !3645, inlinedAt: !3670)
!3670 = distinct !DILocation(line: 207, column: 22, scope: !3631)
!3671 = !DILocation(line: 79, column: 16, scope: !3645, inlinedAt: !3670)
!3672 = !DILocation(line: 67, column: 39, scope: !3633, inlinedAt: !3673)
!3673 = distinct !DILocation(line: 81, column: 12, scope: !3645, inlinedAt: !3670)
!3674 = !DILocation(line: 72, column: 6, scope: !3624, inlinedAt: !3673)
!3675 = !DILocation(line: 67, column: 7, scope: !3624, inlinedAt: !3673)
!3676 = !DILocation(line: 77, column: 50, scope: !3645, inlinedAt: !3677)
!3677 = distinct !DILocation(line: 212, column: 22, scope: !3631)
!3678 = !DILocation(line: 79, column: 16, scope: !3645, inlinedAt: !3677)
!3679 = !DILocation(line: 67, column: 39, scope: !3633, inlinedAt: !3680)
!3680 = distinct !DILocation(line: 81, column: 12, scope: !3645, inlinedAt: !3677)
!3681 = !DILocation(line: 72, column: 6, scope: !3624, inlinedAt: !3680)
!3682 = !DILocation(line: 67, column: 7, scope: !3624, inlinedAt: !3680)
!3683 = !DILocation(line: 81, column: 9, scope: !3645, inlinedAt: !3677)
!3684 = !DILocation(line: 77, column: 50, scope: !3645, inlinedAt: !3685)
!3685 = distinct !DILocation(line: 216, column: 22, scope: !3631)
!3686 = !DILocation(line: 79, column: 16, scope: !3645, inlinedAt: !3685)
!3687 = !DILocation(line: 67, column: 39, scope: !3633, inlinedAt: !3688)
!3688 = distinct !DILocation(line: 81, column: 12, scope: !3645, inlinedAt: !3685)
!3689 = !DILocation(line: 72, column: 6, scope: !3624, inlinedAt: !3688)
!3690 = !DILocation(line: 67, column: 7, scope: !3624, inlinedAt: !3688)
!3691 = !DILocation(line: 81, column: 9, scope: !3645, inlinedAt: !3685)
!3692 = !DILocation(line: 77, column: 50, scope: !3645, inlinedAt: !3693)
!3693 = distinct !DILocation(line: 221, column: 22, scope: !3631)
!3694 = !DILocation(line: 79, column: 16, scope: !3645, inlinedAt: !3693)
!3695 = !DILocation(line: 67, column: 39, scope: !3633, inlinedAt: !3696)
!3696 = distinct !DILocation(line: 81, column: 12, scope: !3645, inlinedAt: !3693)
!3697 = !DILocation(line: 72, column: 6, scope: !3624, inlinedAt: !3696)
!3698 = !DILocation(line: 67, column: 7, scope: !3624, inlinedAt: !3696)
!3699 = !DILocation(line: 81, column: 9, scope: !3645, inlinedAt: !3693)
!3700 = !DILocation(line: 60, column: 31, scope: !3624, inlinedAt: !3701)
!3701 = distinct !DILocation(line: 225, column: 22, scope: !3631)
!3702 = !DILocation(line: 67, column: 39, scope: !3633, inlinedAt: !3701)
!3703 = !DILocation(line: 72, column: 6, scope: !3624, inlinedAt: !3701)
!3704 = !DILocation(line: 67, column: 7, scope: !3624, inlinedAt: !3701)
!3705 = !DILocation(line: 226, column: 11, scope: !3631)
!3706 = !DILocation(line: 77, column: 50, scope: !3645, inlinedAt: !3707)
!3707 = distinct !DILocation(line: 229, column: 22, scope: !3631)
!3708 = !DILocation(line: 79, column: 16, scope: !3645, inlinedAt: !3707)
!3709 = !DILocation(line: 67, column: 39, scope: !3633, inlinedAt: !3710)
!3710 = distinct !DILocation(line: 81, column: 12, scope: !3645, inlinedAt: !3707)
!3711 = !DILocation(line: 72, column: 6, scope: !3624, inlinedAt: !3710)
!3712 = !DILocation(line: 67, column: 7, scope: !3624, inlinedAt: !3710)
!3713 = !DILocation(line: 81, column: 9, scope: !3645, inlinedAt: !3707)
!3714 = !DILocation(line: 77, column: 50, scope: !3645, inlinedAt: !3715)
!3715 = distinct !DILocation(line: 233, column: 22, scope: !3631)
!3716 = !DILocation(line: 79, column: 16, scope: !3645, inlinedAt: !3715)
!3717 = !DILocation(line: 67, column: 39, scope: !3633, inlinedAt: !3718)
!3718 = distinct !DILocation(line: 81, column: 12, scope: !3645, inlinedAt: !3715)
!3719 = !DILocation(line: 72, column: 6, scope: !3624, inlinedAt: !3718)
!3720 = !DILocation(line: 67, column: 7, scope: !3624, inlinedAt: !3718)
!3721 = !DILocation(line: 81, column: 9, scope: !3645, inlinedAt: !3715)
!3722 = !DILocation(line: 237, column: 16, scope: !3631)
!3723 = !DILocation(line: 238, column: 22, scope: !3631)
!3724 = !DILocation(line: 238, column: 11, scope: !3631)
!3725 = !DILocation(line: 242, column: 10, scope: !3532)
!3726 = !DILocation(line: 243, column: 11, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3532, file: !3512, line: 243, column: 11)
!3728 = !DILocation(line: 244, column: 13, scope: !3727)
!3729 = !DILocation(line: 243, column: 11, scope: !3532)
!3730 = !DILocation(line: 247, column: 8, scope: !3511)
!3731 = !DILocation(line: 248, column: 3, scope: !3511)
!3732 = !DILocation(line: 249, column: 1, scope: !3511)
!3733 = distinct !DISubprogram(name: "rpl_calloc", scope: !3734, file: !3734, line: 42, type: !3246, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !619, variables: !3735)
!3734 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3735 = !{!3736, !3737, !3738, !3739}
!3736 = !DILocalVariable(name: "n", arg: 1, scope: !3733, file: !3734, line: 42, type: !38)
!3737 = !DILocalVariable(name: "s", arg: 2, scope: !3733, file: !3734, line: 42, type: !38)
!3738 = !DILocalVariable(name: "result", scope: !3733, file: !3734, line: 44, type: !23)
!3739 = !DILocalVariable(name: "bytes", scope: !3740, file: !3734, line: 56, type: !38)
!3740 = distinct !DILexicalBlock(scope: !3741, file: !3734, line: 53, column: 5)
!3741 = distinct !DILexicalBlock(scope: !3733, file: !3734, line: 47, column: 7)
!3742 = !DILocation(line: 42, column: 20, scope: !3733)
!3743 = !DILocation(line: 42, column: 30, scope: !3733)
!3744 = !DILocation(line: 47, column: 9, scope: !3741)
!3745 = !DILocation(line: 47, column: 19, scope: !3741)
!3746 = !DILocation(line: 47, column: 14, scope: !3741)
!3747 = !DILocation(line: 56, column: 24, scope: !3740)
!3748 = !DILocation(line: 56, column: 14, scope: !3740)
!3749 = !DILocation(line: 57, column: 17, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3740, file: !3734, line: 57, column: 11)
!3751 = !DILocation(line: 57, column: 21, scope: !3750)
!3752 = !DILocation(line: 57, column: 11, scope: !3740)
!3753 = !DILocation(line: 59, column: 11, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3750, file: !3734, line: 58, column: 9)
!3755 = !DILocation(line: 59, column: 17, scope: !3754)
!3756 = !DILocation(line: 65, column: 12, scope: !3733)
!3757 = !DILocation(line: 44, column: 9, scope: !3733)
!3758 = !DILocation(line: 72, column: 3, scope: !3733)
!3759 = !DILocation(line: 73, column: 1, scope: !3733)
!3760 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3761, file: !3761, line: 334, type: !3762, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !621, variables: !3776)
!3761 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!38, !3764, !50, !38, !3765}
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1588, line: 6, baseType: !3767)
!3767 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1590, line: 21, baseType: !3768)
!3768 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1590, line: 13, size: 64, elements: !3769)
!3769 = !{!3770, !3771}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3768, file: !1590, line: 15, baseType: !41, size: 32)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3768, file: !1590, line: 20, baseType: !3772, size: 32, offset: 32)
!3772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3768, file: !1590, line: 16, size: 32, elements: !3773)
!3773 = !{!3774, !3775}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3772, file: !1590, line: 18, baseType: !164, size: 32)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3772, file: !1590, line: 19, baseType: !1599, size: 32)
!3776 = !{!3777, !3778, !3779, !3780, !3781, !3782, !3783}
!3777 = !DILocalVariable(name: "pwc", arg: 1, scope: !3760, file: !3761, line: 334, type: !3764)
!3778 = !DILocalVariable(name: "s", arg: 2, scope: !3760, file: !3761, line: 334, type: !50)
!3779 = !DILocalVariable(name: "n", arg: 3, scope: !3760, file: !3761, line: 334, type: !38)
!3780 = !DILocalVariable(name: "ps", arg: 4, scope: !3760, file: !3761, line: 334, type: !3765)
!3781 = !DILocalVariable(name: "ret", scope: !3760, file: !3761, line: 336, type: !38)
!3782 = !DILocalVariable(name: "wc", scope: !3760, file: !3761, line: 337, type: !1604)
!3783 = !DILocalVariable(name: "uc", scope: !3784, file: !3761, line: 398, type: !545)
!3784 = distinct !DILexicalBlock(scope: !3785, file: !3761, line: 397, column: 5)
!3785 = distinct !DILexicalBlock(scope: !3760, file: !3761, line: 396, column: 7)
!3786 = !DILocation(line: 334, column: 23, scope: !3760)
!3787 = !DILocation(line: 334, column: 40, scope: !3760)
!3788 = !DILocation(line: 334, column: 50, scope: !3760)
!3789 = !DILocation(line: 334, column: 64, scope: !3760)
!3790 = !DILocation(line: 337, column: 3, scope: !3760)
!3791 = !DILocation(line: 353, column: 9, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3760, file: !3761, line: 353, column: 7)
!3793 = !DILocation(line: 353, column: 7, scope: !3760)
!3794 = !DILocation(line: 388, column: 9, scope: !3760)
!3795 = !DILocation(line: 336, column: 10, scope: !3760)
!3796 = !DILocation(line: 396, column: 19, scope: !3785)
!3797 = !DILocation(line: 396, column: 31, scope: !3785)
!3798 = !DILocation(line: 396, column: 26, scope: !3785)
!3799 = !DILocation(line: 396, column: 41, scope: !3785)
!3800 = !DILocation(line: 396, column: 7, scope: !3760)
!3801 = !DILocation(line: 398, column: 26, scope: !3784)
!3802 = !DILocation(line: 398, column: 21, scope: !3784)
!3803 = !DILocation(line: 399, column: 14, scope: !3784)
!3804 = !DILocation(line: 399, column: 12, scope: !3784)
!3805 = !DILocation(line: 405, column: 1, scope: !3760)
!3806 = distinct !DISubprogram(name: "areadlink", scope: !3807, file: !3807, line: 53, type: !1130, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, unit: !624, variables: !3808)
!3807 = !DIFile(filename: "lib/areadlink.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3808 = !{!3809}
!3809 = !DILocalVariable(name: "filename", arg: 1, scope: !3806, file: !3807, line: 53, type: !50)
!3810 = !DILocation(line: 53, column: 24, scope: !3806)
!3811 = !DILocation(line: 55, column: 10, scope: !3806)
!3812 = !DILocation(line: 55, column: 3, scope: !3806)
!3813 = distinct !DISubprogram(name: "careadlinkatcwd", scope: !3807, file: !3807, line: 36, type: !3814, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !624, variables: !3819)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!3816, !41, !50, !21, !38}
!3816 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !3817, line: 109, baseType: !3818)
!3817 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3818 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !27, line: 181, baseType: !734)
!3819 = !{!3820, !3821, !3822, !3823}
!3820 = !DILocalVariable(name: "fd", arg: 1, scope: !3813, file: !3807, line: 36, type: !41)
!3821 = !DILocalVariable(name: "filename", arg: 2, scope: !3813, file: !3807, line: 36, type: !50)
!3822 = !DILocalVariable(name: "buffer", arg: 3, scope: !3813, file: !3807, line: 36, type: !21)
!3823 = !DILocalVariable(name: "buffer_size", arg: 4, scope: !3813, file: !3807, line: 37, type: !38)
!3824 = !DILocation(line: 36, column: 22, scope: !3813)
!3825 = !DILocation(line: 36, column: 38, scope: !3813)
!3826 = !DILocation(line: 36, column: 54, scope: !3813)
!3827 = !DILocation(line: 37, column: 25, scope: !3813)
!3828 = !DILocation(line: 41, column: 10, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3813, file: !3807, line: 41, column: 7)
!3830 = !DILocation(line: 41, column: 7, scope: !3813)
!3831 = !DILocation(line: 42, column: 5, scope: !3829)
!3832 = !DILocation(line: 43, column: 10, scope: !3813)
!3833 = !DILocation(line: 43, column: 3, scope: !3813)
!3834 = distinct !DISubprogram(name: "careadlinkat", scope: !3835, file: !3835, line: 64, type: !3836, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, unit: !626, variables: !3847)
!3835 = !DIFile(filename: "lib/careadlinkat.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!21, !41, !50, !21, !38, !3838, !3846}
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3840)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator", file: !557, line: 27, size: 256, elements: !3841)
!3841 = !{!3842, !3843, !3844, !3845}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "allocate", scope: !3840, file: !557, line: 37, baseType: !560, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "reallocate", scope: !3840, file: !557, line: 43, baseType: !564, size: 64, offset: 64)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3840, file: !557, line: 46, baseType: !568, size: 64, offset: 128)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !3840, file: !557, line: 52, baseType: !572, size: 64, offset: 192)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3847 = !{!3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3861, !3863, !3864, !3867, !3872}
!3848 = !DILocalVariable(name: "fd", arg: 1, scope: !3834, file: !3835, line: 64, type: !41)
!3849 = !DILocalVariable(name: "filename", arg: 2, scope: !3834, file: !3835, line: 64, type: !50)
!3850 = !DILocalVariable(name: "buffer", arg: 3, scope: !3834, file: !3835, line: 65, type: !21)
!3851 = !DILocalVariable(name: "buffer_size", arg: 4, scope: !3834, file: !3835, line: 65, type: !38)
!3852 = !DILocalVariable(name: "alloc", arg: 5, scope: !3834, file: !3835, line: 66, type: !3838)
!3853 = !DILocalVariable(name: "preadlinkat", arg: 6, scope: !3834, file: !3835, line: 67, type: !3846)
!3854 = !DILocalVariable(name: "buf", scope: !3834, file: !3835, line: 69, type: !21)
!3855 = !DILocalVariable(name: "buf_size", scope: !3834, file: !3835, line: 70, type: !38)
!3856 = !DILocalVariable(name: "buf_size_max", scope: !3834, file: !3835, line: 71, type: !38)
!3857 = !DILocalVariable(name: "stack_buf", scope: !3834, file: !3835, line: 73, type: !3858)
!3858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 8192, elements: !3859)
!3859 = !{!3860}
!3860 = !DISubrange(count: 1024)
!3861 = !DILocalVariable(name: "link_length", scope: !3862, file: !3835, line: 94, type: !3816)
!3862 = distinct !DILexicalBlock(scope: !3834, file: !3835, line: 92, column: 5)
!3863 = !DILocalVariable(name: "link_size", scope: !3862, file: !3835, line: 95, type: !38)
!3864 = !DILocalVariable(name: "readlinkat_errno", scope: !3865, file: !3835, line: 100, type: !41)
!3865 = distinct !DILexicalBlock(scope: !3866, file: !3835, line: 97, column: 9)
!3866 = distinct !DILexicalBlock(scope: !3862, file: !3835, line: 96, column: 11)
!3867 = !DILocalVariable(name: "b", scope: !3868, file: !3835, line: 120, type: !21)
!3868 = distinct !DILexicalBlock(scope: !3869, file: !3835, line: 119, column: 13)
!3869 = distinct !DILexicalBlock(scope: !3870, file: !3835, line: 118, column: 15)
!3870 = distinct !DILexicalBlock(scope: !3871, file: !3835, line: 115, column: 9)
!3871 = distinct !DILexicalBlock(scope: !3862, file: !3835, line: 114, column: 11)
!3872 = !DILocalVariable(name: "b", scope: !3873, file: !3835, line: 130, type: !21)
!3873 = distinct !DILexicalBlock(scope: !3874, file: !3835, line: 128, column: 13)
!3874 = distinct !DILexicalBlock(scope: !3869, file: !3835, line: 127, column: 20)
!3875 = !DILocation(line: 64, column: 19, scope: !3834)
!3876 = !DILocation(line: 64, column: 35, scope: !3834)
!3877 = !DILocation(line: 65, column: 21, scope: !3834)
!3878 = !DILocation(line: 65, column: 36, scope: !3834)
!3879 = !DILocation(line: 66, column: 39, scope: !3834)
!3880 = !DILocation(line: 67, column: 25, scope: !3834)
!3881 = !DILocation(line: 71, column: 10, scope: !3834)
!3882 = !DILocation(line: 73, column: 3, scope: !3834)
!3883 = !DILocation(line: 73, column: 8, scope: !3834)
!3884 = !DILocation(line: 75, column: 9, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3834, file: !3835, line: 75, column: 7)
!3886 = !DILocation(line: 75, column: 7, scope: !3834)
!3887 = !DILocation(line: 78, column: 9, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3834, file: !3835, line: 78, column: 7)
!3889 = !DILocation(line: 78, column: 7, scope: !3834)
!3890 = !DILocation(line: 69, column: 9, scope: !3834)
!3891 = !DILocation(line: 70, column: 10, scope: !3834)
!3892 = !DILocation(line: 91, column: 3, scope: !3834)
!3893 = distinct !{!3893, !3892, !3894}
!3894 = !DILocation(line: 154, column: 13, scope: !3834)
!3895 = !DILocation(line: 94, column: 29, scope: !3862)
!3896 = !DILocation(line: 94, column: 15, scope: !3862)
!3897 = !DILocation(line: 96, column: 23, scope: !3866)
!3898 = !DILocation(line: 96, column: 11, scope: !3862)
!3899 = !DILocation(line: 100, column: 34, scope: !3865)
!3900 = !DILocation(line: 100, column: 15, scope: !3865)
!3901 = !DILocation(line: 101, column: 32, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3865, file: !3835, line: 101, column: 15)
!3903 = !DILocation(line: 101, column: 15, scope: !3865)
!3904 = !DILocation(line: 103, column: 23, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3906, file: !3835, line: 103, column: 19)
!3906 = distinct !DILexicalBlock(scope: !3902, file: !3835, line: 102, column: 13)
!3907 = !DILocation(line: 103, column: 19, scope: !3906)
!3908 = !DILocation(line: 105, column: 26, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3905, file: !3835, line: 104, column: 17)
!3910 = !{!3911, !658, i64 16}
!3911 = !{!"allocator", !658, i64 0, !658, i64 8, !658, i64 16, !658, i64 24}
!3912 = !DILocation(line: 105, column: 19, scope: !3909)
!3913 = !DILocation(line: 106, column: 25, scope: !3909)
!3914 = !DILocation(line: 107, column: 17, scope: !3909)
!3915 = !DILocation(line: 95, column: 14, scope: !3862)
!3916 = !DILocation(line: 114, column: 21, scope: !3871)
!3917 = !DILocation(line: 114, column: 11, scope: !3862)
!3918 = !DILocation(line: 116, column: 24, scope: !3870)
!3919 = !DILocation(line: 116, column: 11, scope: !3870)
!3920 = !DILocation(line: 116, column: 28, scope: !3870)
!3921 = !DILocation(line: 118, column: 19, scope: !3869)
!3922 = !DILocation(line: 118, column: 15, scope: !3870)
!3923 = !DILocation(line: 120, column: 41, scope: !3868)
!3924 = !{!3911, !658, i64 0}
!3925 = !DILocation(line: 120, column: 34, scope: !3868)
!3926 = !DILocation(line: 120, column: 21, scope: !3868)
!3927 = !DILocation(line: 122, column: 21, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3868, file: !3835, line: 122, column: 19)
!3929 = !DILocation(line: 122, column: 19, scope: !3868)
!3930 = !DILocation(line: 124, column: 15, scope: !3868)
!3931 = !DILocation(line: 127, column: 30, scope: !3874)
!3932 = !DILocation(line: 127, column: 48, scope: !3874)
!3933 = !DILocation(line: 127, column: 41, scope: !3874)
!3934 = !DILocation(line: 127, column: 68, scope: !3874)
!3935 = !{!3911, !658, i64 8}
!3936 = !DILocation(line: 127, column: 61, scope: !3874)
!3937 = !DILocation(line: 127, column: 20, scope: !3869)
!3938 = !DILocation(line: 130, column: 34, scope: !3873)
!3939 = !DILocation(line: 130, column: 21, scope: !3873)
!3940 = !DILocation(line: 131, column: 19, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3873, file: !3835, line: 131, column: 19)
!3942 = !DILocation(line: 131, column: 19, scope: !3873)
!3943 = !DILocation(line: 133, column: 13, scope: !3873)
!3944 = !DILocation(line: 138, column: 15, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3862, file: !3835, line: 138, column: 11)
!3946 = !DILocation(line: 138, column: 11, scope: !3862)
!3947 = !DILocation(line: 139, column: 16, scope: !3945)
!3948 = !DILocation(line: 139, column: 9, scope: !3945)
!3949 = !DILocation(line: 141, column: 20, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3862, file: !3835, line: 141, column: 11)
!3951 = !DILocation(line: 141, column: 11, scope: !3862)
!3952 = !DILocation(line: 142, column: 18, scope: !3950)
!3953 = !DILocation(line: 142, column: 9, scope: !3950)
!3954 = !DILocation(line: 143, column: 25, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3950, file: !3835, line: 143, column: 16)
!3956 = !DILocation(line: 143, column: 16, scope: !3950)
!3957 = !DILocation(line: 147, column: 11, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3959, file: !3835, line: 146, column: 9)
!3959 = distinct !DILexicalBlock(scope: !3955, file: !3835, line: 145, column: 16)
!3960 = !DILocation(line: 147, column: 17, scope: !3958)
!3961 = !DILocation(line: 148, column: 11, scope: !3958)
!3962 = !DILocation(line: 152, column: 29, scope: !3862)
!3963 = !DILocation(line: 152, column: 22, scope: !3862)
!3964 = !DILocation(line: 153, column: 5, scope: !3862)
!3965 = !DILocation(line: 156, column: 14, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3834, file: !3835, line: 156, column: 7)
!3967 = !{!3911, !658, i64 24}
!3968 = !DILocation(line: 156, column: 7, scope: !3966)
!3969 = !DILocation(line: 156, column: 7, scope: !3834)
!3970 = !DILocation(line: 157, column: 5, scope: !3966)
!3971 = !DILocation(line: 158, column: 3, scope: !3834)
!3972 = !DILocation(line: 158, column: 9, scope: !3834)
!3973 = !DILocation(line: 159, column: 3, scope: !3834)
!3974 = !DILocation(line: 160, column: 1, scope: !3834)
!3975 = distinct !DISubprogram(name: "close_stream", scope: !3976, file: !3976, line: 56, type: !3977, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !629, variables: !4019)
!3976 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!41, !3979}
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3059, line: 7, baseType: !3981)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3061, line: 241, size: 1728, elements: !3982)
!3982 = !{!3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3981, file: !3061, line: 242, baseType: !41, size: 32)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3981, file: !3061, line: 247, baseType: !21, size: 64, offset: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3981, file: !3061, line: 248, baseType: !21, size: 64, offset: 128)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3981, file: !3061, line: 249, baseType: !21, size: 64, offset: 192)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3981, file: !3061, line: 250, baseType: !21, size: 64, offset: 256)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3981, file: !3061, line: 251, baseType: !21, size: 64, offset: 320)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3981, file: !3061, line: 252, baseType: !21, size: 64, offset: 384)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3981, file: !3061, line: 253, baseType: !21, size: 64, offset: 448)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3981, file: !3061, line: 254, baseType: !21, size: 64, offset: 512)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3981, file: !3061, line: 256, baseType: !21, size: 64, offset: 576)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3981, file: !3061, line: 257, baseType: !21, size: 64, offset: 640)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3981, file: !3061, line: 258, baseType: !21, size: 64, offset: 704)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3981, file: !3061, line: 260, baseType: !3996, size: 64, offset: 768)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3061, line: 156, size: 192, elements: !3998)
!3998 = !{!3999, !4000, !4002}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3997, file: !3061, line: 157, baseType: !3996, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3997, file: !3061, line: 158, baseType: !4001, size: 64, offset: 64)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3997, file: !3061, line: 162, baseType: !41, size: 32, offset: 128)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3981, file: !3061, line: 262, baseType: !4001, size: 64, offset: 832)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3981, file: !3061, line: 264, baseType: !41, size: 32, offset: 896)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3981, file: !3061, line: 268, baseType: !41, size: 32, offset: 928)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3981, file: !3061, line: 270, baseType: !733, size: 64, offset: 960)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3981, file: !3061, line: 274, baseType: !147, size: 16, offset: 1024)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3981, file: !3061, line: 275, baseType: !3089, size: 8, offset: 1040)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3981, file: !3061, line: 276, baseType: !3091, size: 8, offset: 1048)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3981, file: !3061, line: 280, baseType: !3095, size: 64, offset: 1088)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3981, file: !3061, line: 289, baseType: !3098, size: 64, offset: 1152)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3981, file: !3061, line: 297, baseType: !23, size: 64, offset: 1216)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3981, file: !3061, line: 298, baseType: !23, size: 64, offset: 1280)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3981, file: !3061, line: 299, baseType: !23, size: 64, offset: 1344)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3981, file: !3061, line: 300, baseType: !23, size: 64, offset: 1408)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3981, file: !3061, line: 302, baseType: !38, size: 64, offset: 1472)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3981, file: !3061, line: 303, baseType: !41, size: 32, offset: 1536)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3981, file: !3061, line: 305, baseType: !3106, size: 160, offset: 1568)
!4019 = !{!4020, !4021, !4023, !4024}
!4020 = !DILocalVariable(name: "stream", arg: 1, scope: !3975, file: !3976, line: 56, type: !3979)
!4021 = !DILocalVariable(name: "some_pending", scope: !3975, file: !3976, line: 58, type: !4022)
!4022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!4023 = !DILocalVariable(name: "prev_fail", scope: !3975, file: !3976, line: 59, type: !4022)
!4024 = !DILocalVariable(name: "fclose_fail", scope: !3975, file: !3976, line: 60, type: !4022)
!4025 = !DILocation(line: 56, column: 21, scope: !3975)
!4026 = !DILocation(line: 58, column: 30, scope: !3975)
!4027 = !DILocalVariable(name: "__stream", arg: 1, scope: !4028, file: !4029, line: 132, type: !3979)
!4028 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4029, file: !4029, line: 132, type: !3977, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !629, variables: !4030)
!4029 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4030 = !{!4027}
!4031 = !DILocation(line: 132, column: 1, scope: !4028, inlinedAt: !4032)
!4032 = distinct !DILocation(line: 59, column: 27, scope: !3975)
!4033 = !DILocation(line: 134, column: 10, scope: !4028, inlinedAt: !4032)
!4034 = !{!4035, !769, i64 0}
!4035 = !{!"_IO_FILE", !769, i64 0, !658, i64 8, !658, i64 16, !658, i64 24, !658, i64 32, !658, i64 40, !658, i64 48, !658, i64 56, !658, i64 64, !658, i64 72, !658, i64 80, !658, i64 88, !658, i64 96, !658, i64 104, !769, i64 112, !769, i64 116, !791, i64 120, !1838, i64 128, !659, i64 130, !659, i64 131, !658, i64 136, !791, i64 144, !658, i64 152, !658, i64 160, !658, i64 168, !658, i64 176, !791, i64 184, !769, i64 192, !659, i64 196}
!4036 = !DILocation(line: 59, column: 43, scope: !3975)
!4037 = !DILocation(line: 60, column: 29, scope: !3975)
!4038 = !DILocation(line: 60, column: 45, scope: !3975)
!4039 = !DILocation(line: 70, column: 17, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !3975, file: !3976, line: 70, column: 7)
!4041 = !DILocation(line: 58, column: 50, scope: !3975)
!4042 = !DILocation(line: 70, column: 33, scope: !4040)
!4043 = !DILocation(line: 70, column: 53, scope: !4040)
!4044 = !DILocation(line: 70, column: 59, scope: !4040)
!4045 = !DILocation(line: 70, column: 7, scope: !3975)
!4046 = !DILocation(line: 72, column: 11, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4040, file: !3976, line: 71, column: 5)
!4048 = !DILocation(line: 73, column: 9, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4047, file: !3976, line: 72, column: 11)
!4050 = !DILocation(line: 73, column: 15, scope: !4049)
!4051 = !DILocation(line: 78, column: 1, scope: !3975)
!4052 = distinct !DISubprogram(name: "hard_locale", scope: !4053, file: !4053, line: 38, type: !799, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !631, variables: !4054)
!4053 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4054 = !{!4055, !4056, !4057}
!4055 = !DILocalVariable(name: "category", arg: 1, scope: !4052, file: !4053, line: 38, type: !41)
!4056 = !DILocalVariable(name: "hard", scope: !4052, file: !4053, line: 40, type: !92)
!4057 = !DILocalVariable(name: "p", scope: !4052, file: !4053, line: 41, type: !50)
!4058 = !DILocation(line: 38, column: 18, scope: !4052)
!4059 = !DILocation(line: 40, column: 8, scope: !4052)
!4060 = !DILocation(line: 41, column: 19, scope: !4052)
!4061 = !DILocation(line: 41, column: 15, scope: !4052)
!4062 = !DILocation(line: 43, column: 7, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4052, file: !4053, line: 43, column: 7)
!4064 = !DILocation(line: 43, column: 7, scope: !4052)
!4065 = !DILocation(line: 47, column: 15, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4067, file: !4053, line: 47, column: 15)
!4067 = distinct !DILexicalBlock(scope: !4068, file: !4053, line: 46, column: 9)
!4068 = distinct !DILexicalBlock(scope: !4069, file: !4053, line: 45, column: 11)
!4069 = distinct !DILexicalBlock(scope: !4063, file: !4053, line: 44, column: 5)
!4070 = !DILocation(line: 47, column: 31, scope: !4066)
!4071 = !DILocation(line: 47, column: 36, scope: !4066)
!4072 = !DILocation(line: 47, column: 39, scope: !4066)
!4073 = !DILocation(line: 47, column: 59, scope: !4066)
!4074 = !DILocation(line: 47, column: 15, scope: !4067)
!4075 = !DILocation(line: 48, column: 13, scope: !4066)
!4076 = !DILocation(line: 71, column: 3, scope: !4052)
!4077 = distinct !DISubprogram(name: "locale_charset", scope: !547, file: !547, line: 393, type: !4078, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !202, variables: !4080)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!50}
!4080 = !{!4081, !4082}
!4081 = !DILocalVariable(name: "codeset", scope: !4077, file: !547, line: 395, type: !50)
!4082 = !DILocalVariable(name: "aliases", scope: !4077, file: !547, line: 396, type: !50)
!4083 = !DILocalVariable(name: "buf1", scope: !4084, file: !547, line: 196, type: !4151)
!4084 = distinct !DILexicalBlock(scope: !4085, file: !547, line: 194, column: 21)
!4085 = distinct !DILexicalBlock(scope: !4086, file: !547, line: 193, column: 19)
!4086 = distinct !DILexicalBlock(scope: !4087, file: !547, line: 193, column: 19)
!4087 = distinct !DILexicalBlock(scope: !4088, file: !547, line: 188, column: 17)
!4088 = distinct !DILexicalBlock(scope: !4089, file: !547, line: 181, column: 19)
!4089 = distinct !DILexicalBlock(scope: !4090, file: !547, line: 177, column: 13)
!4090 = distinct !DILexicalBlock(scope: !4091, file: !547, line: 173, column: 15)
!4091 = distinct !DILexicalBlock(scope: !4092, file: !547, line: 161, column: 9)
!4092 = distinct !DILexicalBlock(scope: !4093, file: !547, line: 157, column: 11)
!4093 = distinct !DILexicalBlock(scope: !4094, file: !547, line: 130, column: 5)
!4094 = distinct !DILexicalBlock(scope: !4095, file: !547, line: 129, column: 7)
!4095 = distinct !DISubprogram(name: "get_charset_aliases", scope: !547, file: !547, line: 124, type: !4078, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !202, variables: !4096)
!4096 = !{!4097, !4098, !4099, !4100, !4101, !4103, !4104, !4105, !4106, !4147, !4148, !4149, !4083, !4150, !4154, !4155, !4156}
!4097 = !DILocalVariable(name: "cp", scope: !4095, file: !547, line: 126, type: !50)
!4098 = !DILocalVariable(name: "dir", scope: !4093, file: !547, line: 132, type: !50)
!4099 = !DILocalVariable(name: "base", scope: !4093, file: !547, line: 133, type: !50)
!4100 = !DILocalVariable(name: "file_name", scope: !4093, file: !547, line: 134, type: !21)
!4101 = !DILocalVariable(name: "dir_len", scope: !4102, file: !547, line: 144, type: !38)
!4102 = distinct !DILexicalBlock(scope: !4093, file: !547, line: 143, column: 7)
!4103 = !DILocalVariable(name: "base_len", scope: !4102, file: !547, line: 145, type: !38)
!4104 = !DILocalVariable(name: "add_slash", scope: !4102, file: !547, line: 146, type: !41)
!4105 = !DILocalVariable(name: "fd", scope: !4091, file: !547, line: 162, type: !41)
!4106 = !DILocalVariable(name: "fp", scope: !4089, file: !547, line: 178, type: !4107)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3059, line: 7, baseType: !4109)
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3061, line: 241, size: 1728, elements: !4110)
!4110 = !{!4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4109, file: !3061, line: 242, baseType: !41, size: 32)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4109, file: !3061, line: 247, baseType: !21, size: 64, offset: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4109, file: !3061, line: 248, baseType: !21, size: 64, offset: 128)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4109, file: !3061, line: 249, baseType: !21, size: 64, offset: 192)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4109, file: !3061, line: 250, baseType: !21, size: 64, offset: 256)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4109, file: !3061, line: 251, baseType: !21, size: 64, offset: 320)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4109, file: !3061, line: 252, baseType: !21, size: 64, offset: 384)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4109, file: !3061, line: 253, baseType: !21, size: 64, offset: 448)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4109, file: !3061, line: 254, baseType: !21, size: 64, offset: 512)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4109, file: !3061, line: 256, baseType: !21, size: 64, offset: 576)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4109, file: !3061, line: 257, baseType: !21, size: 64, offset: 640)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4109, file: !3061, line: 258, baseType: !21, size: 64, offset: 704)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4109, file: !3061, line: 260, baseType: !4124, size: 64, offset: 768)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3061, line: 156, size: 192, elements: !4126)
!4126 = !{!4127, !4128, !4130}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4125, file: !3061, line: 157, baseType: !4124, size: 64)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4125, file: !3061, line: 158, baseType: !4129, size: 64, offset: 64)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4125, file: !3061, line: 162, baseType: !41, size: 32, offset: 128)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4109, file: !3061, line: 262, baseType: !4129, size: 64, offset: 832)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4109, file: !3061, line: 264, baseType: !41, size: 32, offset: 896)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4109, file: !3061, line: 268, baseType: !41, size: 32, offset: 928)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4109, file: !3061, line: 270, baseType: !733, size: 64, offset: 960)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4109, file: !3061, line: 274, baseType: !147, size: 16, offset: 1024)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4109, file: !3061, line: 275, baseType: !3089, size: 8, offset: 1040)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4109, file: !3061, line: 276, baseType: !3091, size: 8, offset: 1048)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4109, file: !3061, line: 280, baseType: !3095, size: 64, offset: 1088)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4109, file: !3061, line: 289, baseType: !3098, size: 64, offset: 1152)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4109, file: !3061, line: 297, baseType: !23, size: 64, offset: 1216)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4109, file: !3061, line: 298, baseType: !23, size: 64, offset: 1280)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4109, file: !3061, line: 299, baseType: !23, size: 64, offset: 1344)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4109, file: !3061, line: 300, baseType: !23, size: 64, offset: 1408)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4109, file: !3061, line: 302, baseType: !38, size: 64, offset: 1472)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4109, file: !3061, line: 303, baseType: !41, size: 32, offset: 1536)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4109, file: !3061, line: 305, baseType: !3106, size: 160, offset: 1568)
!4147 = !DILocalVariable(name: "res_ptr", scope: !4087, file: !547, line: 190, type: !21)
!4148 = !DILocalVariable(name: "res_size", scope: !4087, file: !547, line: 191, type: !38)
!4149 = !DILocalVariable(name: "c", scope: !4084, file: !547, line: 195, type: !41)
!4150 = !DILocalVariable(name: "buf2", scope: !4084, file: !547, line: 197, type: !4151)
!4151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 408, elements: !4152)
!4152 = !{!4153}
!4153 = !DISubrange(count: 51)
!4154 = !DILocalVariable(name: "l1", scope: !4084, file: !547, line: 198, type: !38)
!4155 = !DILocalVariable(name: "l2", scope: !4084, file: !547, line: 198, type: !38)
!4156 = !DILocalVariable(name: "old_res_ptr", scope: !4084, file: !547, line: 199, type: !21)
!4157 = !DILocation(line: 196, column: 28, scope: !4084, inlinedAt: !4158)
!4158 = distinct !DILocation(line: 589, column: 18, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4077, file: !547, line: 589, column: 3)
!4160 = !DILocation(line: 197, column: 28, scope: !4084, inlinedAt: !4158)
!4161 = !DILocation(line: 403, column: 13, scope: !4077)
!4162 = !DILocation(line: 395, column: 15, scope: !4077)
!4163 = !DILocation(line: 584, column: 15, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4077, file: !547, line: 584, column: 7)
!4165 = !DILocation(line: 584, column: 7, scope: !4077)
!4166 = !DILocation(line: 128, column: 8, scope: !4095, inlinedAt: !4158)
!4167 = !DILocation(line: 126, column: 15, scope: !4095, inlinedAt: !4158)
!4168 = !DILocation(line: 129, column: 10, scope: !4094, inlinedAt: !4158)
!4169 = !DILocation(line: 129, column: 7, scope: !4095, inlinedAt: !4158)
!4170 = !DILocation(line: 138, column: 13, scope: !4093, inlinedAt: !4158)
!4171 = !DILocation(line: 132, column: 19, scope: !4093, inlinedAt: !4158)
!4172 = !DILocation(line: 139, column: 15, scope: !4173, inlinedAt: !4158)
!4173 = distinct !DILexicalBlock(scope: !4093, file: !547, line: 139, column: 11)
!4174 = !DILocation(line: 139, column: 23, scope: !4173, inlinedAt: !4158)
!4175 = !DILocation(line: 139, column: 26, scope: !4173, inlinedAt: !4158)
!4176 = !DILocation(line: 139, column: 33, scope: !4173, inlinedAt: !4158)
!4177 = !DILocation(line: 139, column: 11, scope: !4093, inlinedAt: !4158)
!4178 = !DILocation(line: 140, column: 9, scope: !4173, inlinedAt: !4158)
!4179 = !DILocation(line: 144, column: 26, scope: !4102, inlinedAt: !4158)
!4180 = !DILocation(line: 144, column: 16, scope: !4102, inlinedAt: !4158)
!4181 = !DILocation(line: 145, column: 16, scope: !4102, inlinedAt: !4158)
!4182 = !DILocation(line: 146, column: 34, scope: !4102, inlinedAt: !4158)
!4183 = !DILocation(line: 146, column: 38, scope: !4102, inlinedAt: !4158)
!4184 = !DILocation(line: 146, column: 42, scope: !4102, inlinedAt: !4158)
!4185 = !DILocation(line: 147, column: 48, scope: !4102, inlinedAt: !4158)
!4186 = !DILocation(line: 147, column: 46, scope: !4102, inlinedAt: !4158)
!4187 = !DILocation(line: 147, column: 69, scope: !4102, inlinedAt: !4158)
!4188 = !DILocation(line: 147, column: 30, scope: !4102, inlinedAt: !4158)
!4189 = !DILocation(line: 134, column: 13, scope: !4093, inlinedAt: !4158)
!4190 = !DILocation(line: 148, column: 13, scope: !4102, inlinedAt: !4158)
!4191 = !DILocation(line: 150, column: 13, scope: !4192, inlinedAt: !4158)
!4192 = distinct !DILexicalBlock(scope: !4193, file: !547, line: 149, column: 11)
!4193 = distinct !DILexicalBlock(scope: !4102, file: !547, line: 148, column: 13)
!4194 = !DILocation(line: 151, column: 17, scope: !4192, inlinedAt: !4158)
!4195 = !DILocation(line: 152, column: 34, scope: !4196, inlinedAt: !4158)
!4196 = distinct !DILexicalBlock(scope: !4192, file: !547, line: 151, column: 17)
!4197 = !DILocation(line: 153, column: 41, scope: !4192, inlinedAt: !4158)
!4198 = !DILocation(line: 153, column: 13, scope: !4192, inlinedAt: !4158)
!4199 = !DILocation(line: 157, column: 11, scope: !4093, inlinedAt: !4158)
!4200 = !DILocation(line: 171, column: 16, scope: !4091, inlinedAt: !4158)
!4201 = !DILocation(line: 162, column: 15, scope: !4091, inlinedAt: !4158)
!4202 = !DILocation(line: 173, column: 18, scope: !4090, inlinedAt: !4158)
!4203 = !DILocation(line: 173, column: 15, scope: !4091, inlinedAt: !4158)
!4204 = !DILocation(line: 180, column: 20, scope: !4089, inlinedAt: !4158)
!4205 = !DILocation(line: 178, column: 21, scope: !4089, inlinedAt: !4158)
!4206 = !DILocation(line: 181, column: 22, scope: !4088, inlinedAt: !4158)
!4207 = !DILocation(line: 181, column: 19, scope: !4089, inlinedAt: !4158)
!4208 = !DILocation(line: 184, column: 19, scope: !4209, inlinedAt: !4158)
!4209 = distinct !DILexicalBlock(scope: !4088, file: !547, line: 182, column: 17)
!4210 = !DILocation(line: 186, column: 17, scope: !4209, inlinedAt: !4158)
!4211 = !DILocation(line: 190, column: 25, scope: !4087, inlinedAt: !4158)
!4212 = !DILocation(line: 191, column: 26, scope: !4087, inlinedAt: !4158)
!4213 = !DILocation(line: 193, column: 19, scope: !4087, inlinedAt: !4158)
!4214 = !DILocation(line: 196, column: 23, scope: !4084, inlinedAt: !4158)
!4215 = !DILocation(line: 197, column: 23, scope: !4084, inlinedAt: !4158)
!4216 = !DILocalVariable(name: "__fp", arg: 1, scope: !4217, file: !4029, line: 63, type: !4107)
!4217 = distinct !DISubprogram(name: "getc_unlocked", scope: !4029, file: !4029, line: 63, type: !4218, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !202, variables: !4220)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{!41, !4107}
!4220 = !{!4216}
!4221 = !DILocation(line: 63, column: 22, scope: !4217, inlinedAt: !4222)
!4222 = distinct !DILocation(line: 201, column: 27, scope: !4084, inlinedAt: !4158)
!4223 = !DILocation(line: 65, column: 10, scope: !4217, inlinedAt: !4222)
!4224 = !{!4035, !658, i64 8}
!4225 = !{!4035, !658, i64 16}
!4226 = !{!"branch_weights", i32 2000, i32 1}
!4227 = !DILocation(line: 195, column: 27, scope: !4084, inlinedAt: !4158)
!4228 = !DILocation(line: 202, column: 27, scope: !4084, inlinedAt: !4158)
!4229 = distinct !{!4229, !4230, !4233}
!4230 = !DILocation(line: 209, column: 27, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4232, file: !547, line: 207, column: 25)
!4232 = distinct !DILexicalBlock(scope: !4084, file: !547, line: 206, column: 27)
!4233 = !DILocation(line: 211, column: 58, scope: !4231)
!4234 = !DILocation(line: 65, column: 10, scope: !4217, inlinedAt: !4235)
!4235 = distinct !DILocation(line: 210, column: 33, scope: !4231, inlinedAt: !4158)
!4236 = !DILocation(line: 63, column: 22, scope: !4217, inlinedAt: !4235)
!4237 = !DILocation(line: 210, column: 29, scope: !4231, inlinedAt: !4158)
!4238 = distinct !{!4238, !4239, !4240}
!4239 = !DILocation(line: 193, column: 19, scope: !4086)
!4240 = !DILocation(line: 241, column: 21, scope: !4086)
!4241 = !DILocation(line: 216, column: 23, scope: !4084, inlinedAt: !4158)
!4242 = !DILocation(line: 217, column: 27, scope: !4243, inlinedAt: !4158)
!4243 = distinct !DILexicalBlock(scope: !4084, file: !547, line: 217, column: 27)
!4244 = !DILocation(line: 217, column: 64, scope: !4243, inlinedAt: !4158)
!4245 = !DILocation(line: 217, column: 27, scope: !4084, inlinedAt: !4158)
!4246 = !DILocation(line: 219, column: 28, scope: !4084, inlinedAt: !4158)
!4247 = !DILocation(line: 198, column: 30, scope: !4084, inlinedAt: !4158)
!4248 = !DILocation(line: 220, column: 28, scope: !4084, inlinedAt: !4158)
!4249 = !DILocation(line: 198, column: 34, scope: !4084, inlinedAt: !4158)
!4250 = !DILocation(line: 199, column: 29, scope: !4084, inlinedAt: !4158)
!4251 = !DILocation(line: 222, column: 36, scope: !4252, inlinedAt: !4158)
!4252 = distinct !DILexicalBlock(scope: !4084, file: !547, line: 222, column: 27)
!4253 = !DILocation(line: 222, column: 27, scope: !4084, inlinedAt: !4158)
!4254 = !DILocation(line: 225, column: 63, scope: !4255, inlinedAt: !4158)
!4255 = distinct !DILexicalBlock(scope: !4252, file: !547, line: 223, column: 25)
!4256 = !DILocation(line: 225, column: 46, scope: !4255, inlinedAt: !4158)
!4257 = !DILocation(line: 226, column: 25, scope: !4255, inlinedAt: !4158)
!4258 = !DILocation(line: 229, column: 36, scope: !4259, inlinedAt: !4158)
!4259 = distinct !DILexicalBlock(scope: !4252, file: !547, line: 228, column: 25)
!4260 = !DILocation(line: 230, column: 73, scope: !4259, inlinedAt: !4158)
!4261 = !DILocation(line: 230, column: 46, scope: !4259, inlinedAt: !4158)
!4262 = !DILocation(line: 232, column: 35, scope: !4263, inlinedAt: !4158)
!4263 = distinct !DILexicalBlock(scope: !4084, file: !547, line: 232, column: 27)
!4264 = !DILocation(line: 232, column: 27, scope: !4084, inlinedAt: !4158)
!4265 = !DILocation(line: 236, column: 27, scope: !4266, inlinedAt: !4158)
!4266 = distinct !DILexicalBlock(scope: !4263, file: !547, line: 233, column: 25)
!4267 = !DILocation(line: 237, column: 27, scope: !4266, inlinedAt: !4158)
!4268 = !DILocation(line: 241, column: 21, scope: !4085, inlinedAt: !4158)
!4269 = !DILocation(line: 239, column: 39, scope: !4084, inlinedAt: !4158)
!4270 = !DILocation(line: 239, column: 50, scope: !4084, inlinedAt: !4158)
!4271 = !DILocation(line: 239, column: 61, scope: !4084, inlinedAt: !4158)
!4272 = !DILocalVariable(name: "__dest", arg: 1, scope: !4273, file: !1329, line: 88, type: !4276)
!4273 = distinct !DISubprogram(name: "strcpy", scope: !1329, file: !1329, line: 88, type: !4274, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !202, variables: !4277)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!21, !4276, !3565}
!4276 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !21)
!4277 = !{!4272, !4278}
!4278 = !DILocalVariable(name: "__src", arg: 2, scope: !4273, file: !1329, line: 88, type: !3565)
!4279 = !DILocation(line: 88, column: 1, scope: !4273, inlinedAt: !4280)
!4280 = distinct !DILocation(line: 239, column: 23, scope: !4084, inlinedAt: !4158)
!4281 = !DILocation(line: 90, column: 49, scope: !4273, inlinedAt: !4280)
!4282 = !DILocation(line: 90, column: 10, scope: !4273, inlinedAt: !4280)
!4283 = !DILocation(line: 88, column: 1, scope: !4273, inlinedAt: !4284)
!4284 = distinct !DILocation(line: 240, column: 23, scope: !4084, inlinedAt: !4158)
!4285 = !DILocation(line: 90, column: 49, scope: !4273, inlinedAt: !4284)
!4286 = !DILocation(line: 90, column: 10, scope: !4273, inlinedAt: !4284)
!4287 = !DILocation(line: 193, column: 19, scope: !4085, inlinedAt: !4158)
!4288 = !DILocation(line: 242, column: 19, scope: !4087, inlinedAt: !4158)
!4289 = !DILocation(line: 243, column: 32, scope: !4290, inlinedAt: !4158)
!4290 = distinct !DILexicalBlock(scope: !4087, file: !547, line: 243, column: 23)
!4291 = !DILocation(line: 243, column: 23, scope: !4087, inlinedAt: !4158)
!4292 = !DILocation(line: 247, column: 33, scope: !4293, inlinedAt: !4158)
!4293 = distinct !DILexicalBlock(scope: !4290, file: !547, line: 246, column: 21)
!4294 = !DILocation(line: 247, column: 45, scope: !4293, inlinedAt: !4158)
!4295 = !DILocation(line: 253, column: 11, scope: !4091, inlinedAt: !4158)
!4296 = !DILocation(line: 377, column: 23, scope: !4093, inlinedAt: !4158)
!4297 = !DILocation(line: 378, column: 5, scope: !4093, inlinedAt: !4158)
!4298 = !DILocation(line: 396, column: 15, scope: !4077)
!4299 = !DILocation(line: 590, column: 8, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4159, file: !547, line: 589, column: 3)
!4301 = !DILocation(line: 590, column: 17, scope: !4300)
!4302 = !DILocation(line: 589, column: 3, scope: !4159)
!4303 = !DILocation(line: 592, column: 9, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4300, file: !547, line: 592, column: 9)
!4305 = !DILocation(line: 592, column: 35, scope: !4304)
!4306 = !DILocation(line: 593, column: 9, scope: !4304)
!4307 = !DILocation(line: 593, column: 24, scope: !4304)
!4308 = !DILocation(line: 593, column: 31, scope: !4304)
!4309 = !DILocation(line: 593, column: 34, scope: !4304)
!4310 = !DILocation(line: 593, column: 45, scope: !4304)
!4311 = !DILocation(line: 592, column: 9, scope: !4300)
!4312 = !DILocation(line: 595, column: 29, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !4304, file: !547, line: 594, column: 7)
!4314 = !DILocation(line: 595, column: 27, scope: !4313)
!4315 = !DILocation(line: 595, column: 46, scope: !4313)
!4316 = !DILocation(line: 596, column: 9, scope: !4313)
!4317 = !DILocation(line: 591, column: 19, scope: !4300)
!4318 = !DILocation(line: 591, column: 36, scope: !4300)
!4319 = !DILocation(line: 591, column: 16, scope: !4300)
!4320 = !DILocation(line: 591, column: 52, scope: !4300)
!4321 = !DILocation(line: 591, column: 69, scope: !4300)
!4322 = !DILocation(line: 591, column: 49, scope: !4300)
!4323 = distinct !{!4323, !4302, !4324}
!4324 = !DILocation(line: 597, column: 7, scope: !4159)
!4325 = !DILocation(line: 602, column: 7, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4077, file: !547, line: 602, column: 7)
!4327 = !DILocation(line: 602, column: 18, scope: !4326)
!4328 = !DILocation(line: 602, column: 7, scope: !4077)
!4329 = !DILocation(line: 612, column: 3, scope: !4077)
!4330 = distinct !DISubprogram(name: "rpl_fclose", scope: !4331, file: !4331, line: 56, type: !4332, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !633, variables: !4374)
!4331 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!41, !4334}
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3059, line: 7, baseType: !4336)
!4336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3061, line: 241, size: 1728, elements: !4337)
!4337 = !{!4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4336, file: !3061, line: 242, baseType: !41, size: 32)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4336, file: !3061, line: 247, baseType: !21, size: 64, offset: 64)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4336, file: !3061, line: 248, baseType: !21, size: 64, offset: 128)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4336, file: !3061, line: 249, baseType: !21, size: 64, offset: 192)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4336, file: !3061, line: 250, baseType: !21, size: 64, offset: 256)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4336, file: !3061, line: 251, baseType: !21, size: 64, offset: 320)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4336, file: !3061, line: 252, baseType: !21, size: 64, offset: 384)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4336, file: !3061, line: 253, baseType: !21, size: 64, offset: 448)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4336, file: !3061, line: 254, baseType: !21, size: 64, offset: 512)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4336, file: !3061, line: 256, baseType: !21, size: 64, offset: 576)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4336, file: !3061, line: 257, baseType: !21, size: 64, offset: 640)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4336, file: !3061, line: 258, baseType: !21, size: 64, offset: 704)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4336, file: !3061, line: 260, baseType: !4351, size: 64, offset: 768)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3061, line: 156, size: 192, elements: !4353)
!4353 = !{!4354, !4355, !4357}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4352, file: !3061, line: 157, baseType: !4351, size: 64)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4352, file: !3061, line: 158, baseType: !4356, size: 64, offset: 64)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4352, file: !3061, line: 162, baseType: !41, size: 32, offset: 128)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4336, file: !3061, line: 262, baseType: !4356, size: 64, offset: 832)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4336, file: !3061, line: 264, baseType: !41, size: 32, offset: 896)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4336, file: !3061, line: 268, baseType: !41, size: 32, offset: 928)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4336, file: !3061, line: 270, baseType: !733, size: 64, offset: 960)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4336, file: !3061, line: 274, baseType: !147, size: 16, offset: 1024)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4336, file: !3061, line: 275, baseType: !3089, size: 8, offset: 1040)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4336, file: !3061, line: 276, baseType: !3091, size: 8, offset: 1048)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4336, file: !3061, line: 280, baseType: !3095, size: 64, offset: 1088)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4336, file: !3061, line: 289, baseType: !3098, size: 64, offset: 1152)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4336, file: !3061, line: 297, baseType: !23, size: 64, offset: 1216)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4336, file: !3061, line: 298, baseType: !23, size: 64, offset: 1280)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4336, file: !3061, line: 299, baseType: !23, size: 64, offset: 1344)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4336, file: !3061, line: 300, baseType: !23, size: 64, offset: 1408)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4336, file: !3061, line: 302, baseType: !38, size: 64, offset: 1472)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4336, file: !3061, line: 303, baseType: !41, size: 32, offset: 1536)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4336, file: !3061, line: 305, baseType: !3106, size: 160, offset: 1568)
!4374 = !{!4375, !4376, !4377, !4378}
!4375 = !DILocalVariable(name: "fp", arg: 1, scope: !4330, file: !4331, line: 56, type: !4334)
!4376 = !DILocalVariable(name: "saved_errno", scope: !4330, file: !4331, line: 58, type: !41)
!4377 = !DILocalVariable(name: "fd", scope: !4330, file: !4331, line: 59, type: !41)
!4378 = !DILocalVariable(name: "result", scope: !4330, file: !4331, line: 60, type: !41)
!4379 = !DILocation(line: 56, column: 19, scope: !4330)
!4380 = !DILocation(line: 58, column: 7, scope: !4330)
!4381 = !DILocation(line: 60, column: 7, scope: !4330)
!4382 = !DILocation(line: 63, column: 8, scope: !4330)
!4383 = !DILocation(line: 59, column: 7, scope: !4330)
!4384 = !DILocation(line: 64, column: 10, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4330, file: !4331, line: 64, column: 7)
!4386 = !DILocation(line: 64, column: 7, scope: !4330)
!4387 = !DILocation(line: 65, column: 12, scope: !4385)
!4388 = !DILocation(line: 65, column: 5, scope: !4385)
!4389 = !DILocation(line: 70, column: 9, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4330, file: !4331, line: 70, column: 7)
!4391 = !DILocation(line: 70, column: 23, scope: !4390)
!4392 = !DILocation(line: 70, column: 33, scope: !4390)
!4393 = !DILocation(line: 70, column: 26, scope: !4390)
!4394 = !DILocation(line: 70, column: 59, scope: !4390)
!4395 = !DILocation(line: 71, column: 7, scope: !4390)
!4396 = !DILocation(line: 71, column: 10, scope: !4390)
!4397 = !DILocation(line: 70, column: 7, scope: !4330)
!4398 = !DILocation(line: 98, column: 12, scope: !4330)
!4399 = !DILocation(line: 103, column: 7, scope: !4330)
!4400 = !DILocation(line: 72, column: 19, scope: !4390)
!4401 = !DILocation(line: 103, column: 19, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4330, file: !4331, line: 103, column: 7)
!4403 = !DILocation(line: 105, column: 13, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4402, file: !4331, line: 104, column: 5)
!4405 = !DILocation(line: 107, column: 5, scope: !4404)
!4406 = !DILocation(line: 110, column: 1, scope: !4330)
!4407 = distinct !DISubprogram(name: "rpl_fflush", scope: !4408, file: !4408, line: 127, type: !4409, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !635, variables: !4451)
!4408 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!41, !4411}
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3059, line: 7, baseType: !4413)
!4413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3061, line: 241, size: 1728, elements: !4414)
!4414 = !{!4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4413, file: !3061, line: 242, baseType: !41, size: 32)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4413, file: !3061, line: 247, baseType: !21, size: 64, offset: 64)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4413, file: !3061, line: 248, baseType: !21, size: 64, offset: 128)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4413, file: !3061, line: 249, baseType: !21, size: 64, offset: 192)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4413, file: !3061, line: 250, baseType: !21, size: 64, offset: 256)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4413, file: !3061, line: 251, baseType: !21, size: 64, offset: 320)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4413, file: !3061, line: 252, baseType: !21, size: 64, offset: 384)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4413, file: !3061, line: 253, baseType: !21, size: 64, offset: 448)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4413, file: !3061, line: 254, baseType: !21, size: 64, offset: 512)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4413, file: !3061, line: 256, baseType: !21, size: 64, offset: 576)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4413, file: !3061, line: 257, baseType: !21, size: 64, offset: 640)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4413, file: !3061, line: 258, baseType: !21, size: 64, offset: 704)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4413, file: !3061, line: 260, baseType: !4428, size: 64, offset: 768)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3061, line: 156, size: 192, elements: !4430)
!4430 = !{!4431, !4432, !4434}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4429, file: !3061, line: 157, baseType: !4428, size: 64)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4429, file: !3061, line: 158, baseType: !4433, size: 64, offset: 64)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4429, file: !3061, line: 162, baseType: !41, size: 32, offset: 128)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4413, file: !3061, line: 262, baseType: !4433, size: 64, offset: 832)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4413, file: !3061, line: 264, baseType: !41, size: 32, offset: 896)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4413, file: !3061, line: 268, baseType: !41, size: 32, offset: 928)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4413, file: !3061, line: 270, baseType: !733, size: 64, offset: 960)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4413, file: !3061, line: 274, baseType: !147, size: 16, offset: 1024)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4413, file: !3061, line: 275, baseType: !3089, size: 8, offset: 1040)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4413, file: !3061, line: 276, baseType: !3091, size: 8, offset: 1048)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4413, file: !3061, line: 280, baseType: !3095, size: 64, offset: 1088)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4413, file: !3061, line: 289, baseType: !3098, size: 64, offset: 1152)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4413, file: !3061, line: 297, baseType: !23, size: 64, offset: 1216)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4413, file: !3061, line: 298, baseType: !23, size: 64, offset: 1280)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4413, file: !3061, line: 299, baseType: !23, size: 64, offset: 1344)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4413, file: !3061, line: 300, baseType: !23, size: 64, offset: 1408)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4413, file: !3061, line: 302, baseType: !38, size: 64, offset: 1472)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4413, file: !3061, line: 303, baseType: !41, size: 32, offset: 1536)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4413, file: !3061, line: 305, baseType: !3106, size: 160, offset: 1568)
!4451 = !{!4452}
!4452 = !DILocalVariable(name: "stream", arg: 1, scope: !4407, file: !4408, line: 127, type: !4411)
!4453 = !DILocation(line: 127, column: 19, scope: !4407)
!4454 = !DILocation(line: 148, column: 14, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4407, file: !4408, line: 148, column: 7)
!4456 = !DILocation(line: 148, column: 22, scope: !4455)
!4457 = !DILocation(line: 148, column: 27, scope: !4455)
!4458 = !DILocation(line: 148, column: 7, scope: !4407)
!4459 = !DILocation(line: 149, column: 12, scope: !4455)
!4460 = !DILocation(line: 149, column: 5, scope: !4455)
!4461 = !DILocalVariable(name: "fp", arg: 1, scope: !4462, file: !4408, line: 40, type: !4411)
!4462 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4408, file: !4408, line: 40, type: !4463, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !635, variables: !4465)
!4463 = !DISubroutineType(types: !4464)
!4464 = !{null, !4411}
!4465 = !{!4461}
!4466 = !DILocation(line: 40, column: 48, scope: !4462, inlinedAt: !4467)
!4467 = distinct !DILocation(line: 153, column: 3, scope: !4407)
!4468 = !DILocation(line: 42, column: 11, scope: !4469, inlinedAt: !4467)
!4469 = distinct !DILexicalBlock(scope: !4462, file: !4408, line: 42, column: 7)
!4470 = !DILocation(line: 42, column: 18, scope: !4469, inlinedAt: !4467)
!4471 = !DILocation(line: 42, column: 7, scope: !4462, inlinedAt: !4467)
!4472 = !DILocation(line: 44, column: 5, scope: !4469, inlinedAt: !4467)
!4473 = !DILocation(line: 155, column: 10, scope: !4407)
!4474 = !DILocation(line: 155, column: 3, scope: !4407)
!4475 = !DILocation(line: 229, column: 1, scope: !4407)
!4476 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4477, file: !4477, line: 28, type: !4478, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !637, variables: !4521)
!4477 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4478 = !DISubroutineType(types: !4479)
!4479 = !{!41, !4480, !4520, !41}
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3059, line: 7, baseType: !4482)
!4482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3061, line: 241, size: 1728, elements: !4483)
!4483 = !{!4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4482, file: !3061, line: 242, baseType: !41, size: 32)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4482, file: !3061, line: 247, baseType: !21, size: 64, offset: 64)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4482, file: !3061, line: 248, baseType: !21, size: 64, offset: 128)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4482, file: !3061, line: 249, baseType: !21, size: 64, offset: 192)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4482, file: !3061, line: 250, baseType: !21, size: 64, offset: 256)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4482, file: !3061, line: 251, baseType: !21, size: 64, offset: 320)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4482, file: !3061, line: 252, baseType: !21, size: 64, offset: 384)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4482, file: !3061, line: 253, baseType: !21, size: 64, offset: 448)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4482, file: !3061, line: 254, baseType: !21, size: 64, offset: 512)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4482, file: !3061, line: 256, baseType: !21, size: 64, offset: 576)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4482, file: !3061, line: 257, baseType: !21, size: 64, offset: 640)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4482, file: !3061, line: 258, baseType: !21, size: 64, offset: 704)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4482, file: !3061, line: 260, baseType: !4497, size: 64, offset: 768)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3061, line: 156, size: 192, elements: !4499)
!4499 = !{!4500, !4501, !4503}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4498, file: !3061, line: 157, baseType: !4497, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4498, file: !3061, line: 158, baseType: !4502, size: 64, offset: 64)
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4498, file: !3061, line: 162, baseType: !41, size: 32, offset: 128)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4482, file: !3061, line: 262, baseType: !4502, size: 64, offset: 832)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4482, file: !3061, line: 264, baseType: !41, size: 32, offset: 896)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4482, file: !3061, line: 268, baseType: !41, size: 32, offset: 928)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4482, file: !3061, line: 270, baseType: !733, size: 64, offset: 960)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4482, file: !3061, line: 274, baseType: !147, size: 16, offset: 1024)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4482, file: !3061, line: 275, baseType: !3089, size: 8, offset: 1040)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4482, file: !3061, line: 276, baseType: !3091, size: 8, offset: 1048)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4482, file: !3061, line: 280, baseType: !3095, size: 64, offset: 1088)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4482, file: !3061, line: 289, baseType: !3098, size: 64, offset: 1152)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4482, file: !3061, line: 297, baseType: !23, size: 64, offset: 1216)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4482, file: !3061, line: 298, baseType: !23, size: 64, offset: 1280)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4482, file: !3061, line: 299, baseType: !23, size: 64, offset: 1344)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4482, file: !3061, line: 300, baseType: !23, size: 64, offset: 1408)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4482, file: !3061, line: 302, baseType: !38, size: 64, offset: 1472)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4482, file: !3061, line: 303, baseType: !41, size: 32, offset: 1536)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4482, file: !3061, line: 305, baseType: !3106, size: 160, offset: 1568)
!4520 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3225, line: 57, baseType: !733)
!4521 = !{!4522, !4523, !4524, !4525}
!4522 = !DILocalVariable(name: "fp", arg: 1, scope: !4476, file: !4477, line: 28, type: !4480)
!4523 = !DILocalVariable(name: "offset", arg: 2, scope: !4476, file: !4477, line: 28, type: !4520)
!4524 = !DILocalVariable(name: "whence", arg: 3, scope: !4476, file: !4477, line: 28, type: !41)
!4525 = !DILocalVariable(name: "pos", scope: !4526, file: !4477, line: 116, type: !4520)
!4526 = distinct !DILexicalBlock(scope: !4527, file: !4477, line: 112, column: 5)
!4527 = distinct !DILexicalBlock(scope: !4476, file: !4477, line: 51, column: 7)
!4528 = !DILocation(line: 28, column: 15, scope: !4476)
!4529 = !DILocation(line: 28, column: 25, scope: !4476)
!4530 = !DILocation(line: 28, column: 37, scope: !4476)
!4531 = !DILocation(line: 51, column: 11, scope: !4527)
!4532 = !DILocation(line: 51, column: 31, scope: !4527)
!4533 = !DILocation(line: 51, column: 24, scope: !4527)
!4534 = !DILocation(line: 52, column: 7, scope: !4527)
!4535 = !DILocation(line: 52, column: 14, scope: !4527)
!4536 = !{!4035, !658, i64 40}
!4537 = !DILocation(line: 52, column: 35, scope: !4527)
!4538 = !{!4035, !658, i64 32}
!4539 = !DILocation(line: 52, column: 28, scope: !4527)
!4540 = !DILocation(line: 53, column: 7, scope: !4527)
!4541 = !DILocation(line: 53, column: 14, scope: !4527)
!4542 = !{!4035, !658, i64 72}
!4543 = !DILocation(line: 53, column: 28, scope: !4527)
!4544 = !DILocation(line: 51, column: 7, scope: !4476)
!4545 = !DILocation(line: 116, column: 26, scope: !4526)
!4546 = !DILocation(line: 116, column: 19, scope: !4526)
!4547 = !DILocation(line: 116, column: 13, scope: !4526)
!4548 = !DILocation(line: 117, column: 15, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4526, file: !4477, line: 117, column: 11)
!4550 = !DILocation(line: 117, column: 11, scope: !4526)
!4551 = !DILocation(line: 127, column: 11, scope: !4526)
!4552 = !DILocation(line: 127, column: 18, scope: !4526)
!4553 = !DILocation(line: 128, column: 11, scope: !4526)
!4554 = !DILocation(line: 128, column: 19, scope: !4526)
!4555 = !{!4035, !791, i64 144}
!4556 = !DILocation(line: 159, column: 7, scope: !4526)
!4557 = !DILocation(line: 161, column: 10, scope: !4476)
!4558 = !DILocation(line: 161, column: 3, scope: !4476)
!4559 = !DILocation(line: 162, column: 1, scope: !4476)
