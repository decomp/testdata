; ModuleID = 'coreutils-8.27/src/mknod.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.mode_change = type { i8, i8, i32, i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Usage: %s [OPTION]... NAME TYPE [MAJOR MINOR]\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Create the special file NAME of the given TYPE.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.33 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"  -m, --mode=MODE    set file permission bits to MODE, not a=rw - umask\0A\00", align 1
@.str.4 = private unnamed_addr constant [207 x i8] c"  -Z                   set the SELinux security context to default type\0A      --context[=CTX]  like -Z, or if CTX is specified then set the SELinux\0A                         or SMACK security context to CTX\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [261 x i8] c"\0ABoth MAJOR and MINOR must be specified when TYPE is b, c, or u, and they\0Amust be omitted when TYPE is p.  If MAJOR or MINOR begins with 0x or 0X,\0Ait is interpreted as hexadecimal; otherwise, if it begins with 0, as octal;\0Aotherwise, as decimal.  TYPE may be:\0A\00", align 1
@.str.8 = private unnamed_addr constant [127 x i8] c"\0A  b      create a block (buffered) special file\0A  c, u   create a character (unbuffered) special file\0A  p      create a FIFO\0A\00", align 1
@.str.9 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"mknod\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.43 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.45 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.47 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"m:Z\00", align 1
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i32 2, i32* null, i32 90 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i32 1, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.15 = private unnamed_addr constant [73 x i8] c"warning: ignoring --context; it requires an SELinux/SMACK-enabled kernel\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"invalid mode\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"mode must specify only file permission bits\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"missing operand after %s\00", align 1
@.str.23 = private unnamed_addr constant [54 x i8] c"Special files require major and minor device numbers.\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"Fifos do not have major and minor device numbers.\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"invalid major device number %s\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"invalid minor device number %s\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"invalid device %s %s\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"invalid device type %s\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"cannot set permissions of %s\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), align 8, !dbg !73
@.str.26 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !79
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !84
@.str.34 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.35 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.36 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !88
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !95
@.str.53 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.54 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.55 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.57, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.58, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.59, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.60, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.63, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.64, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.65, i32 0, i32 0), i8* null], align 16, !dbg !102
@.str.56 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.57 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.58 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.59 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.60 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.61 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.62 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.63 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.64 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.65 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !132
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !139
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !151
@.str.11.66 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.67 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.68 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.69 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.70 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.71 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.72 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !158
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !165
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !153
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !167
@.str.81 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.82 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.83 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.84 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.85 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.86 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.87 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.88 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.89 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.90 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.91 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.92 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.93 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.94 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.97 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.98 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.99 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.100 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.101 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.102 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !173
@.str.1.113 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.117 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.118 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.127 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.128 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.131 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !182
@.str.3.132 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.133 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.134 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.135 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.136 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.137 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !595 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !599, metadata !600), !dbg !601
  %2 = icmp eq i32 %0, 0, !dbg !602
  br i1 %2, label %8, label %3, !dbg !604

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !605, !tbaa !607
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !605
  %6 = load i8*, i8** @program_name, align 8, !dbg !605, !tbaa !607
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !605
  br label %53, !dbg !605

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !611
  %10 = load i8*, i8** @program_name, align 8, !dbg !611, !tbaa !607
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !611
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !613
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !613, !tbaa !607
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !613
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !614
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !614, !tbaa !607
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !614
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !619
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !619, !tbaa !607
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !619
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([207 x i8], [207 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !620
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !620, !tbaa !607
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10, !dbg !620
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !621
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !621, !tbaa !607
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #10, !dbg !621
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !622
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !622, !tbaa !607
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #10, !dbg !622
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([261 x i8], [261 x i8]* @.str.7, i64 0, i64 0), i32 5) #10, !dbg !623
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !623, !tbaa !607
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #10, !dbg !623
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.8, i64 0, i64 0), i32 5) #10, !dbg !624
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !624, !tbaa !607
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #10, !dbg !624
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.9, i64 0, i64 0), i32 5) #10, !dbg !625
  %37 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !625
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !48, metadata !600) #10, !dbg !626
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 0, metadata !48, metadata !600) #10, !dbg !626
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i64 0, i64 0), i32 5) #10, !dbg !628
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i64 0, i64 0)) #10, !dbg !628
  %40 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !629
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !56, metadata !600) #10, !dbg !630
  %41 = icmp eq i8* %40, null, !dbg !631
  br i1 %41, label %48, label %42, !dbg !633

; <label>:42:                                     ; preds = %8
  %43 = tail call i32 @strncmp(i8* nonnull %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i64 3) #14, !dbg !634
  %44 = icmp eq i32 %43, 0, !dbg !634
  br i1 %44, label %48, label %45, !dbg !635

; <label>:45:                                     ; preds = %42
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.45, i64 0, i64 0), i32 5) #10, !dbg !636
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !636
  br label %48, !dbg !638

; <label>:48:                                     ; preds = %8, %42, %45
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.46, i64 0, i64 0), i32 5) #10, !dbg !639
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !639
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.47, i64 0, i64 0), i32 5) #10, !dbg !640
  %52 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0)) #10, !dbg !640
  br label %53

; <label>:53:                                     ; preds = %48, %3
  tail call void @exit(i32 %0) #15, !dbg !641
  unreachable, !dbg !641
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !642 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !647, metadata !600), !dbg !678
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !648, metadata !600), !dbg !679
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !652, metadata !600), !dbg !680
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !656, metadata !600), !dbg !681
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !657, metadata !600), !dbg !682
  %6 = load i8*, i8** %1, align 8, !dbg !683, !tbaa !607
  tail call void @set_program_name(i8* %6) #10, !dbg !684
  %7 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !685
  %8 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !686
  %9 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !687
  %10 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !688
  br label %11, !dbg !689

; <label>:11:                                     ; preds = %15, %2
  %12 = phi i8* [ %16, %15 ], [ null, %2 ]
  br label %13, !dbg !690

; <label>:13:                                     ; preds = %20, %11
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !652, metadata !600), !dbg !680
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !656, metadata !600), !dbg !681
  %14 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !690
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !653, metadata !600), !dbg !691
  switch i32 %14, label %27 [
    i32 -1, label %28
    i32 109, label %15
    i32 90, label %17
    i32 -130, label %23
    i32 -131, label %24
  ], !dbg !689

; <label>:15:                                     ; preds = %13
  %16 = load i8*, i8** @optarg, align 8, !dbg !692, !tbaa !607
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !652, metadata !600), !dbg !680
  br label %11, !dbg !695, !llvm.loop !696

; <label>:17:                                     ; preds = %13
  %18 = load i8*, i8** @optarg, align 8, !tbaa !607
  %19 = icmp eq i8* %18, null, !dbg !698
  br i1 %19, label %20, label %21, !dbg !702

; <label>:20:                                     ; preds = %17, %21
  br label %13, !dbg !680, !llvm.loop !696

; <label>:21:                                     ; preds = %17
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.15, i64 0, i64 0), i32 5) #10, !dbg !703
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %22) #10, !dbg !705
  br label %20, !dbg !706

; <label>:23:                                     ; preds = %13
  tail call void @usage(i32 0) #16, !dbg !707
  unreachable, !dbg !707

; <label>:24:                                     ; preds = %13
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !708, !tbaa !607
  %26 = load i8*, i8** @Version, align 8, !dbg !708, !tbaa !607
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* null) #10, !dbg !708
  tail call void @exit(i32 0) #15, !dbg !708
  unreachable, !dbg !708

; <label>:27:                                     ; preds = %13
  tail call void @usage(i32 1) #16, !dbg !709
  unreachable, !dbg !709

; <label>:28:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i32 438, i64 0, metadata !649, metadata !600), !dbg !710
  %29 = icmp ne i8* %12, null, !dbg !711
  br i1 %29, label %30, label %43, !dbg !712

; <label>:30:                                     ; preds = %28
  %31 = tail call %struct.mode_change* @mode_compile(i8* nonnull %12) #10, !dbg !713
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %31, i64 0, metadata !661, metadata !600), !dbg !714
  %32 = icmp eq %struct.mode_change* %31, null, !dbg !715
  br i1 %32, label %33, label %35, !dbg !717

; <label>:33:                                     ; preds = %30
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32 5) #10, !dbg !718
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %34) #10, !dbg !718
  unreachable, !dbg !718

; <label>:35:                                     ; preds = %30
  %36 = tail call i32 @umask(i32 0) #10, !dbg !719
  tail call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !658, metadata !600), !dbg !720
  %37 = tail call i32 @umask(i32 %36) #10, !dbg !721
  %38 = tail call i32 @mode_adjust(i32 438, i1 zeroext false, i32 %36, %struct.mode_change* nonnull %31, i32* null) #10, !dbg !722
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !649, metadata !600), !dbg !710
  %39 = bitcast %struct.mode_change* %31 to i8*, !dbg !723
  tail call void @free(i8* %39) #10, !dbg !724
  %40 = icmp ugt i32 %38, 511, !dbg !725
  br i1 %40, label %41, label %43, !dbg !727

; <label>:41:                                     ; preds = %35
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !728
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %42) #10, !dbg !728
  unreachable, !dbg !728

; <label>:43:                                     ; preds = %35, %28
  %44 = phi i32 [ 438, %28 ], [ %38, %35 ]
  tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !649, metadata !600), !dbg !710
  %45 = load i32, i32* @optind, align 4, !dbg !729, !tbaa !730
  %46 = icmp slt i32 %45, %0, !dbg !732
  br i1 %46, label %47, label %56, !dbg !733

; <label>:47:                                     ; preds = %43
  %48 = add nsw i32 %45, 1, !dbg !734
  %49 = icmp slt i32 %48, %0, !dbg !735
  br i1 %49, label %50, label %57, !dbg !736

; <label>:50:                                     ; preds = %47
  %51 = sext i32 %48 to i64, !dbg !737
  %52 = getelementptr inbounds i8*, i8** %1, i64 %51, !dbg !737
  %53 = load i8*, i8** %52, align 8, !dbg !737, !tbaa !607
  %54 = load i8, i8* %53, align 1, !dbg !737, !tbaa !738
  %55 = icmp eq i8 %54, 112, !dbg !739
  br i1 %55, label %56, label %57, !dbg !740

; <label>:56:                                     ; preds = %43, %50
  br label %57, !dbg !740

; <label>:57:                                     ; preds = %47, %50, %56
  %58 = phi i1 [ true, %56 ], [ false, %50 ], [ false, %47 ]
  %59 = phi i64 [ 2, %56 ], [ 4, %50 ], [ 4, %47 ]
  tail call void @llvm.dbg.value(metadata i64 %59, i64 0, metadata !654, metadata !600), !dbg !741
  %60 = sub nsw i32 %0, %45, !dbg !742
  %61 = sext i32 %60 to i64, !dbg !744
  %62 = icmp ugt i64 %59, %61, !dbg !745
  br i1 %62, label %63, label %83, !dbg !746

; <label>:63:                                     ; preds = %57
  br i1 %46, label %66, label %64, !dbg !747

; <label>:64:                                     ; preds = %63
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !749
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %65) #10, !dbg !751
  br label %73, !dbg !751

; <label>:66:                                     ; preds = %63
  %67 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i32 5) #10, !dbg !752
  %68 = add nsw i32 %0, -1, !dbg !753
  %69 = sext i32 %68 to i64, !dbg !754
  %70 = getelementptr inbounds i8*, i8** %1, i64 %69, !dbg !754
  %71 = load i8*, i8** %70, align 8, !dbg !754, !tbaa !607
  %72 = tail call i8* @quote(i8* %71) #10, !dbg !755
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %67, i8* %72) #10, !dbg !756
  br label %73

; <label>:73:                                     ; preds = %66, %64
  br i1 %58, label %82, label %74, !dbg !757

; <label>:74:                                     ; preds = %73
  %75 = load i32, i32* @optind, align 4, !dbg !759, !tbaa !730
  %76 = sub nsw i32 %0, %75, !dbg !760
  %77 = icmp eq i32 %76, 2, !dbg !761
  br i1 %77, label %78, label %82, !dbg !762

; <label>:78:                                     ; preds = %74
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !763, !tbaa !607
  %80 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !763
  %81 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %79, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8* %80) #10, !dbg !763
  br label %82, !dbg !763

; <label>:82:                                     ; preds = %73, %78, %74
  tail call void @usage(i32 1) #16, !dbg !764
  unreachable, !dbg !764

; <label>:83:                                     ; preds = %57
  %84 = icmp ult i64 %59, %61, !dbg !765
  br i1 %84, label %85, label %102, !dbg !767

; <label>:85:                                     ; preds = %83
  %86 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !768
  %87 = load i32, i32* @optind, align 4, !dbg !770, !tbaa !730
  %88 = sext i32 %87 to i64, !dbg !770
  %89 = add nsw i64 %59, %88, !dbg !771
  %90 = getelementptr inbounds i8*, i8** %1, i64 %89, !dbg !772
  %91 = load i8*, i8** %90, align 8, !dbg !772, !tbaa !607
  %92 = tail call i8* @quote(i8* %91) #10, !dbg !773
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %86, i8* %92) #10, !dbg !774
  br i1 %58, label %93, label %101, !dbg !775

; <label>:93:                                     ; preds = %85
  %94 = load i32, i32* @optind, align 4, !dbg !777, !tbaa !730
  %95 = sub nsw i32 %0, %94, !dbg !778
  %96 = icmp eq i32 %95, 4, !dbg !779
  br i1 %96, label %97, label %101, !dbg !780

; <label>:97:                                     ; preds = %93
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !781, !tbaa !607
  %99 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !781
  %100 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %98, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8* %99) #10, !dbg !781
  br label %101, !dbg !781

; <label>:101:                                    ; preds = %97, %93, %85
  tail call void @usage(i32 1) #16, !dbg !782
  unreachable, !dbg !782

; <label>:102:                                    ; preds = %83
  %103 = add nsw i32 %45, 1, !dbg !783
  %104 = sext i32 %103 to i64, !dbg !784
  %105 = getelementptr inbounds i8*, i8** %1, i64 %104, !dbg !784
  %106 = load i8*, i8** %105, align 8, !dbg !784, !tbaa !607
  %107 = load i8, i8* %106, align 1, !dbg !784, !tbaa !738
  %108 = sext i8 %107 to i32, !dbg !784
  switch i32 %108, label %188 [
    i32 98, label %110
    i32 99, label %109
    i32 117, label %109
    i32 112, label %174
  ], !dbg !785

; <label>:109:                                    ; preds = %102, %102
  tail call void @llvm.dbg.value(metadata i32 8192, i64 0, metadata !655, metadata !600), !dbg !786
  br label %110, !dbg !787

; <label>:110:                                    ; preds = %102, %109
  %111 = phi i32 [ 8192, %109 ], [ 24576, %102 ]
  tail call void @llvm.dbg.value(metadata i32 %111, i64 0, metadata !655, metadata !600), !dbg !786
  %112 = add nsw i32 %45, 2, !dbg !788
  %113 = sext i32 %112 to i64, !dbg !789
  %114 = getelementptr inbounds i8*, i8** %1, i64 %113, !dbg !789
  %115 = load i8*, i8** %114, align 8, !dbg !789, !tbaa !607
  tail call void @llvm.dbg.value(metadata i8* %115, i64 0, metadata !668, metadata !600), !dbg !790
  %116 = add nsw i32 %45, 3, !dbg !791
  %117 = sext i32 %116 to i64, !dbg !792
  %118 = getelementptr inbounds i8*, i8** %1, i64 %117, !dbg !792
  %119 = load i8*, i8** %118, align 8, !dbg !792, !tbaa !607
  tail call void @llvm.dbg.value(metadata i8* %119, i64 0, metadata !671, metadata !600), !dbg !793
  %120 = bitcast i64* %4 to i8*, !dbg !794
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %120) #10, !dbg !794
  %121 = bitcast i64* %5 to i8*, !dbg !794
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %121) #10, !dbg !794
  tail call void @llvm.dbg.value(metadata i64* %4, i64 0, metadata !672, metadata !600), !dbg !795
  %122 = call i32 @xstrtoumax(i8* %115, i8** null, i32 0, i64* nonnull %4, i8* null) #10, !dbg !796
  %123 = icmp eq i32 %122, 0, !dbg !798
  br i1 %123, label %124, label %128, !dbg !799

; <label>:124:                                    ; preds = %110
  %125 = load i64, i64* %4, align 8, !dbg !800, !tbaa !801
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !672, metadata !600), !dbg !795
  %126 = and i64 %125, 4294967295, !dbg !803
  %127 = icmp eq i64 %125, %126, !dbg !804
  br i1 %127, label %131, label %128, !dbg !805

; <label>:128:                                    ; preds = %124, %110
  %129 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !806
  %130 = call i8* @quote(i8* %115) #10, !dbg !806
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %129, i8* %130) #10, !dbg !806
  unreachable, !dbg !806

; <label>:131:                                    ; preds = %124
  call void @llvm.dbg.value(metadata i64* %5, i64 0, metadata !676, metadata !600), !dbg !807
  %132 = call i32 @xstrtoumax(i8* %119, i8** null, i32 0, i64* nonnull %5, i8* null) #10, !dbg !808
  %133 = icmp eq i32 %132, 0, !dbg !810
  br i1 %133, label %134, label %138, !dbg !811

; <label>:134:                                    ; preds = %131
  %135 = load i64, i64* %5, align 8, !dbg !812, !tbaa !801
  call void @llvm.dbg.value(metadata i64 %135, i64 0, metadata !676, metadata !600), !dbg !807
  %136 = and i64 %135, 4294967295, !dbg !813
  %137 = icmp eq i64 %135, %136, !dbg !814
  br i1 %137, label %141, label %138, !dbg !815

; <label>:138:                                    ; preds = %134, %131
  %139 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !816
  %140 = call i8* @quote(i8* %119) #10, !dbg !816
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %139, i8* %140) #10, !dbg !816
  unreachable, !dbg !816

; <label>:141:                                    ; preds = %134
  %142 = load i64, i64* %4, align 8, !dbg !817, !tbaa !801
  call void @llvm.dbg.value(metadata i64 %142, i64 0, metadata !672, metadata !600), !dbg !795
  %143 = shl i64 %142, 8, !dbg !818
  %144 = and i64 %143, 1048320, !dbg !818
  tail call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !826, metadata !600), !dbg !818
  %145 = shl i64 %142, 32, !dbg !818
  %146 = and i64 %145, -17592186044416, !dbg !818
  tail call void @llvm.dbg.value(metadata i64 %150, i64 0, metadata !826, metadata !600), !dbg !818
  %147 = and i64 %135, 255, !dbg !818
  tail call void @llvm.dbg.value(metadata i64 %151, i64 0, metadata !826, metadata !600), !dbg !818
  %148 = shl i64 %135, 12, !dbg !818
  %149 = and i64 %148, 17592184995840, !dbg !818
  %150 = or i64 %149, %147, !dbg !818
  %151 = or i64 %150, %144, !dbg !818
  %152 = or i64 %151, %146, !dbg !818
  tail call void @llvm.dbg.value(metadata i64 %152, i64 0, metadata !826, metadata !600), !dbg !818
  call void @llvm.dbg.value(metadata i64 %152, i64 0, metadata !677, metadata !600), !dbg !828
  %153 = icmp eq i64 %152, -1, !dbg !829
  br i1 %153, label %154, label %156, !dbg !831

; <label>:154:                                    ; preds = %141
  %155 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !832
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %155, i8* %115, i8* %119) #10, !dbg !832
  unreachable, !dbg !832

; <label>:156:                                    ; preds = %141
  %157 = load i32, i32* @optind, align 4, !dbg !833, !tbaa !730
  %158 = sext i32 %157 to i64, !dbg !835
  %159 = getelementptr inbounds i8*, i8** %1, i64 %158, !dbg !835
  %160 = load i8*, i8** %159, align 8, !dbg !835, !tbaa !607
  %161 = or i32 %111, %44, !dbg !836
  %162 = bitcast i64* %3 to i8*, !dbg !837
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %162), !dbg !837
  call void @llvm.dbg.value(metadata i8* %160, i64 0, metadata !843, metadata !600) #10, !dbg !837
  call void @llvm.dbg.value(metadata i32 %161, i64 0, metadata !844, metadata !600) #10, !dbg !837
  call void @llvm.dbg.value(metadata i64 %152, i64 0, metadata !845, metadata !600) #10, !dbg !837
  store i64 %152, i64* %3, align 8, !tbaa !801
  call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !845, metadata !600) #10, !dbg !837
  %163 = call i32 @__xmknod(i32 0, i8* nonnull %160, i32 %161, i64* nonnull %3) #10, !dbg !847
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %162), !dbg !848
  %164 = icmp eq i32 %163, 0, !dbg !849
  br i1 %164, label %173, label %165, !dbg !850

; <label>:165:                                    ; preds = %156
  %166 = tail call i32* @__errno_location() #17, !dbg !851
  %167 = load i32, i32* %166, align 4, !dbg !851, !tbaa !730
  %168 = load i32, i32* @optind, align 4, !dbg !851, !tbaa !730
  %169 = sext i32 %168 to i64, !dbg !851
  %170 = getelementptr inbounds i8*, i8** %1, i64 %169, !dbg !851
  %171 = load i8*, i8** %170, align 8, !dbg !851, !tbaa !607
  %172 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %171) #10, !dbg !851
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %167, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %172) #10, !dbg !851
  unreachable, !dbg !851

; <label>:173:                                    ; preds = %156
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %121) #10, !dbg !852
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %120) #10, !dbg !852
  br label %196, !dbg !853

; <label>:174:                                    ; preds = %102
  %175 = sext i32 %45 to i64, !dbg !854
  %176 = getelementptr inbounds i8*, i8** %1, i64 %175, !dbg !854
  %177 = load i8*, i8** %176, align 8, !dbg !854, !tbaa !607
  %178 = tail call i32 @mkfifo(i8* %177, i32 %44) #10, !dbg !856
  %179 = icmp eq i32 %178, 0, !dbg !857
  br i1 %179, label %196, label %180, !dbg !858

; <label>:180:                                    ; preds = %174
  %181 = tail call i32* @__errno_location() #17, !dbg !859
  %182 = load i32, i32* %181, align 4, !dbg !859, !tbaa !730
  %183 = load i32, i32* @optind, align 4, !dbg !859, !tbaa !730
  %184 = sext i32 %183 to i64, !dbg !859
  %185 = getelementptr inbounds i8*, i8** %1, i64 %184, !dbg !859
  %186 = load i8*, i8** %185, align 8, !dbg !859, !tbaa !607
  %187 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %186) #10, !dbg !859
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %182, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %187) #10, !dbg !859
  unreachable, !dbg !859

; <label>:188:                                    ; preds = %102
  %189 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0), i32 5) #10, !dbg !860
  %190 = load i32, i32* @optind, align 4, !dbg !861, !tbaa !730
  %191 = add nsw i32 %190, 1, !dbg !862
  %192 = sext i32 %191 to i64, !dbg !863
  %193 = getelementptr inbounds i8*, i8** %1, i64 %192, !dbg !863
  %194 = load i8*, i8** %193, align 8, !dbg !863, !tbaa !607
  %195 = tail call i8* @quote(i8* %194) #10, !dbg !864
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %189, i8* %195) #10, !dbg !865
  tail call void @usage(i32 1) #16, !dbg !866
  unreachable, !dbg !866

; <label>:196:                                    ; preds = %174, %173
  br i1 %29, label %197, label %213, !dbg !867

; <label>:197:                                    ; preds = %196
  %198 = load i32, i32* @optind, align 4, !dbg !869, !tbaa !730
  %199 = sext i32 %198 to i64, !dbg !870
  %200 = getelementptr inbounds i8*, i8** %1, i64 %199, !dbg !870
  %201 = load i8*, i8** %200, align 8, !dbg !870, !tbaa !607
  %202 = call i32 @chmod(i8* %201, i32 %44) #10, !dbg !871
  %203 = icmp eq i32 %202, 0, !dbg !872
  br i1 %203, label %213, label %204, !dbg !873

; <label>:204:                                    ; preds = %197
  %205 = tail call i32* @__errno_location() #17, !dbg !874
  %206 = load i32, i32* %205, align 4, !dbg !874, !tbaa !730
  %207 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.32, i64 0, i64 0), i32 5) #10, !dbg !874
  %208 = load i32, i32* @optind, align 4, !dbg !874, !tbaa !730
  %209 = sext i32 %208 to i64, !dbg !874
  %210 = getelementptr inbounds i8*, i8** %1, i64 %209, !dbg !874
  %211 = load i8*, i8** %210, align 8, !dbg !874, !tbaa !607
  %212 = call i8* @quotearg_style(i32 4, i8* %211) #10, !dbg !874
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %206, i8* %207, i8* %212) #10, !dbg !874
  unreachable, !dbg !874

; <label>:213:                                    ; preds = %197, %196
  ret i32 0, !dbg !875
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

; Function Attrs: nounwind
declare i32 @umask(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @mkfifo(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @chmod(i8* nocapture readonly, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !876 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !878, metadata !600), !dbg !879
  store i8* %0, i8** @file_name, align 8, !dbg !880, !tbaa !607
  ret void, !dbg !881
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !882 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !886, metadata !600), !dbg !887
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !888, !tbaa !889
  ret void, !dbg !891
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !892 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !897, !tbaa !607
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !898
  %3 = icmp eq i32 %2, 0, !dbg !899
  br i1 %3, label %21, label %4, !dbg !900

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !901, !tbaa !889, !range !902
  %6 = icmp eq i8 %5, 0, !dbg !901
  %7 = tail call i32* @__errno_location() #17, !dbg !903
  br i1 %6, label %11, label %8, !dbg !905

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !906, !tbaa !730
  %10 = icmp eq i32 %9, 32, !dbg !907
  br i1 %10, label %21, label %11, !dbg !908

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !909
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !894, metadata !600), !dbg !910
  %13 = load i8*, i8** @file_name, align 8, !dbg !911, !tbaa !607
  %14 = icmp eq i8* %13, null, !dbg !911
  %15 = load i32, i32* %7, align 4, !tbaa !730
  br i1 %14, label %18, label %16, !dbg !912

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !913
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.35, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !914
  br label %19, !dbg !914

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.36, i64 0, i64 0), i8* %12) #10, !dbg !915
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !916, !tbaa !730
  tail call void @_exit(i32 %20) #15, !dbg !917
  unreachable, !dbg !917

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !918, !tbaa !607
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !920
  %24 = icmp eq i32 %23, 0, !dbg !921
  br i1 %24, label %27, label %25, !dbg !922

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !923, !tbaa !730
  tail call void @_exit(i32 %26) #15, !dbg !924
  unreachable, !dbg !924

; <label>:27:                                     ; preds = %21
  ret void, !dbg !925
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.mode_change* @mode_compile(i8*) local_unnamed_addr #6 !dbg !926 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !938, metadata !600), !dbg !962
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !940, metadata !600), !dbg !963
  %2 = load i8, i8* %0, align 1, !dbg !964, !tbaa !738
  %3 = and i8 %2, -8, !dbg !965
  %4 = icmp eq i8 %3, 48, !dbg !965
  br i1 %4, label %6, label %5, !dbg !965, !llvm.loop !966

; <label>:5:                                      ; preds = %1
  br label %41, !dbg !969

; <label>:6:                                      ; preds = %1
  br label %7, !dbg !971

; <label>:7:                                      ; preds = %6, %17
  %8 = phi i8 [ %18, %17 ], [ %2, %6 ], !dbg !973
  %9 = phi i32 [ %15, %17 ], [ 0, %6 ]
  %10 = phi i8* [ %12, %17 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !941, metadata !600), !dbg !974
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !942, metadata !600), !dbg !975
  %11 = shl i32 %9, 3, !dbg !971
  %12 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !976
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !941, metadata !600), !dbg !974
  %13 = sext i8 %8 to i32, !dbg !973
  %14 = add i32 %11, -48, !dbg !977
  %15 = add i32 %14, %13, !dbg !978
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !942, metadata !600), !dbg !975
  %16 = icmp ugt i32 %15, 4095, !dbg !979
  br i1 %16, label %154, label %17, !dbg !981

; <label>:17:                                     ; preds = %7
  %18 = load i8, i8* %12, align 1, !dbg !982, !tbaa !738
  %19 = and i8 %18, -8, !dbg !983
  %20 = icmp eq i8 %19, 48, !dbg !983
  br i1 %20, label %7, label %21, !dbg !983, !llvm.loop !966

; <label>:21:                                     ; preds = %17
  %22 = icmp eq i8 %18, 0, !dbg !984
  br i1 %22, label %23, label %154, !dbg !986

; <label>:23:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !945, metadata !600), !dbg !987
  %24 = ptrtoint i8* %12 to i64, !dbg !988
  %25 = ptrtoint i8* %0 to i64, !dbg !988
  %26 = sub i64 %24, %25, !dbg !988
  %27 = icmp slt i64 %26, 5, !dbg !989
  %28 = and i32 %15, 3072, !dbg !990
  %29 = or i32 %28, 1023, !dbg !991
  %30 = select i1 %27, i32 %29, i32 4095, !dbg !992
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !946, metadata !600), !dbg !993
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !994, metadata !600) #10, !dbg !1001
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !999, metadata !600) #10, !dbg !1003
  %31 = tail call noalias i8* @xmalloc(i64 32) #10, !dbg !1004
  %32 = bitcast i8* %31 to %struct.mode_change*, !dbg !1004
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %32, i64 0, metadata !1000, metadata !600) #10, !dbg !1005
  store i8 61, i8* %31, align 4, !dbg !1006, !tbaa !1007
  %33 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !1009
  store i8 1, i8* %33, align 1, !dbg !1010, !tbaa !1011
  %34 = getelementptr inbounds i8, i8* %31, i64 4, !dbg !1012
  %35 = bitcast i8* %34 to i32*, !dbg !1012
  store i32 4095, i32* %35, align 4, !dbg !1013, !tbaa !1014
  %36 = getelementptr inbounds i8, i8* %31, i64 8, !dbg !1015
  %37 = bitcast i8* %36 to i32*, !dbg !1015
  store i32 %15, i32* %37, align 4, !dbg !1016, !tbaa !1017
  %38 = getelementptr inbounds i8, i8* %31, i64 12, !dbg !1018
  %39 = bitcast i8* %38 to i32*, !dbg !1018
  store i32 %30, i32* %39, align 4, !dbg !1019, !tbaa !1020
  %40 = getelementptr inbounds i8, i8* %31, i64 17, !dbg !1021
  store i8 0, i8* %40, align 1, !dbg !1022, !tbaa !1011
  br label %154, !dbg !1023

; <label>:41:                                     ; preds = %5, %46
  %42 = phi i8 [ %50, %46 ], [ %2, %5 ], !dbg !1024
  %43 = phi i8* [ %49, %46 ], [ %0, %5 ]
  %44 = phi i64 [ %48, %46 ], [ 1, %5 ]
  tail call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !947, metadata !600), !dbg !1026
  tail call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !941, metadata !600), !dbg !974
  switch i8 %42, label %45 [
    i8 0, label %51
    i8 61, label %46
    i8 43, label %46
    i8 45, label %46
  ], !dbg !969

; <label>:45:                                     ; preds = %41
  br label %46, !dbg !1027

; <label>:46:                                     ; preds = %41, %41, %41, %45
  %47 = phi i64 [ 0, %45 ], [ 1, %41 ], [ 1, %41 ], [ 1, %41 ]
  %48 = add i64 %47, %44, !dbg !1028
  tail call void @llvm.dbg.value(metadata i64 %48, i64 0, metadata !947, metadata !600), !dbg !1026
  %49 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !1029
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !941, metadata !600), !dbg !974
  %50 = load i8, i8* %49, align 1, !dbg !1024, !tbaa !738
  br label %41, !dbg !1030, !llvm.loop !1031

; <label>:51:                                     ; preds = %41
  tail call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !1033, metadata !600) #10, !dbg !1039
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !1038, metadata !600) #10, !dbg !1041
  %52 = icmp ugt i64 %44, 576460752303423487, !dbg !1042
  br i1 %52, label %53, label %54, !dbg !1044

; <label>:53:                                     ; preds = %51
  tail call void @xalloc_die() #15, !dbg !1045
  unreachable, !dbg !1045

; <label>:54:                                     ; preds = %51
  %55 = shl i64 %44, 4, !dbg !1046
  %56 = tail call noalias i8* @xmalloc(i64 %55) #10, !dbg !1047
  %57 = bitcast i8* %56 to %struct.mode_change*, !dbg !1048
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %57, i64 0, metadata !939, metadata !600), !dbg !1049
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !941, metadata !600), !dbg !974
  br label %58, !dbg !1050

; <label>:58:                                     ; preds = %149, %54
  %59 = phi i8* [ %0, %54 ], [ %150, %149 ]
  %60 = phi i64 [ 0, %54 ], [ %134, %149 ]
  tail call void @llvm.dbg.value(metadata i64 %60, i64 0, metadata !940, metadata !600), !dbg !963
  tail call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !941, metadata !600), !dbg !974
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !949, metadata !600), !dbg !1051
  br label %61, !dbg !1052

; <label>:61:                                     ; preds = %70, %58
  %62 = phi i8* [ %59, %58 ], [ %73, %70 ]
  %63 = phi i32 [ 0, %58 ], [ %72, %70 ]
  tail call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !949, metadata !600), !dbg !1051
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !941, metadata !600), !dbg !974
  %64 = load i8, i8* %62, align 1, !dbg !1053, !tbaa !738
  %65 = sext i8 %64 to i32, !dbg !1053
  switch i32 %65, label %153 [
    i32 117, label %67
    i32 103, label %70
    i32 111, label %68
    i32 97, label %69
    i32 61, label %66
    i32 43, label %66
    i32 45, label %66
  ], !dbg !1056, !llvm.loop !1057

; <label>:66:                                     ; preds = %61, %61, %61
  br label %74, !dbg !1060

; <label>:67:                                     ; preds = %61
  tail call void @llvm.dbg.value(metadata i32 %72, i64 0, metadata !949, metadata !600), !dbg !1051
  br label %70, !dbg !1061

; <label>:68:                                     ; preds = %61
  br label %70, !dbg !1063

; <label>:69:                                     ; preds = %61
  br label %70, !dbg !1064

; <label>:70:                                     ; preds = %61, %67, %68, %69
  %71 = phi i32 [ 2496, %67 ], [ 519, %68 ], [ 4095, %69 ], [ 1080, %61 ]
  %72 = or i32 %71, %63
  tail call void @llvm.dbg.value(metadata i32 %72, i64 0, metadata !949, metadata !600), !dbg !1051
  %73 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1065
  tail call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !941, metadata !600), !dbg !974
  br label %61, !dbg !1066, !llvm.loop !1067

; <label>:74:                                     ; preds = %148, %66
  %75 = phi i8 [ %64, %66 ], [ %147, %148 ], !dbg !1070
  %76 = phi i8* [ %62, %66 ], [ %129, %148 ]
  %77 = phi i32 [ %63, %66 ], [ %130, %148 ]
  %78 = phi i64 [ %60, %66 ], [ %134, %148 ]
  tail call void @llvm.dbg.value(metadata i64 %78, i64 0, metadata !940, metadata !600), !dbg !963
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !949, metadata !600), !dbg !1051
  tail call void @llvm.dbg.value(metadata i8* %76, i64 0, metadata !941, metadata !600), !dbg !974
  %79 = getelementptr inbounds i8, i8* %76, i64 1, !dbg !1060
  tail call void @llvm.dbg.value(metadata i8* %79, i64 0, metadata !941, metadata !600), !dbg !974
  tail call void @llvm.dbg.value(metadata i8 %75, i64 0, metadata !953, metadata !600), !dbg !1071
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !956, metadata !600), !dbg !1072
  tail call void @llvm.dbg.value(metadata i8 3, i64 0, metadata !957, metadata !600), !dbg !1073
  %80 = load i8, i8* %79, align 1, !dbg !1074, !tbaa !738
  %81 = sext i8 %80 to i32, !dbg !1074
  switch i32 %81, label %83 [
    i32 48, label %82
    i32 49, label %82
    i32 50, label %82
    i32 51, label %82
    i32 52, label %82
    i32 53, label %82
    i32 54, label %82
    i32 55, label %82
    i32 117, label %101
    i32 103, label %103
    i32 111, label %105
  ], !dbg !1075, !llvm.loop !1076

; <label>:82:                                     ; preds = %74, %74, %74, %74, %74, %74, %74, %74
  br label %84, !dbg !1079

; <label>:83:                                     ; preds = %74
  br label %107, !dbg !1081

; <label>:84:                                     ; preds = %82, %94
  %85 = phi i8 [ %95, %94 ], [ %80, %82 ], !dbg !1084
  %86 = phi i8* [ %89, %94 ], [ %79, %82 ]
  %87 = phi i32 [ %92, %94 ], [ 0, %82 ]
  tail call void @llvm.dbg.value(metadata i32 %87, i64 0, metadata !959, metadata !600), !dbg !1085
  tail call void @llvm.dbg.value(metadata i8* %86, i64 0, metadata !941, metadata !600), !dbg !974
  %88 = shl i32 %87, 3, !dbg !1079
  %89 = getelementptr inbounds i8, i8* %86, i64 1, !dbg !1086
  tail call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !941, metadata !600), !dbg !974
  %90 = sext i8 %85 to i32, !dbg !1084
  %91 = add i32 %88, -48, !dbg !1087
  %92 = add i32 %91, %90, !dbg !1088
  tail call void @llvm.dbg.value(metadata i32 %92, i64 0, metadata !959, metadata !600), !dbg !1085
  %93 = icmp ugt i32 %92, 4095, !dbg !1089
  br i1 %93, label %153, label %94, !dbg !1091

; <label>:94:                                     ; preds = %84
  %95 = load i8, i8* %89, align 1, !dbg !1092, !tbaa !738
  %96 = and i8 %95, -8, !dbg !1093
  %97 = icmp eq i8 %96, 48, !dbg !1093
  br i1 %97, label %84, label %98, !dbg !1093, !llvm.loop !1076

; <label>:98:                                     ; preds = %94
  %99 = icmp eq i32 %77, 0, !dbg !1094
  br i1 %99, label %100, label %153, !dbg !1096

; <label>:100:                                    ; preds = %98
  switch i8 %95, label %153 [
    i8 0, label %128
    i8 44, label %128
  ], !dbg !1097

; <label>:101:                                    ; preds = %74
  tail call void @llvm.dbg.value(metadata i32 448, i64 0, metadata !955, metadata !600), !dbg !1098
  %102 = getelementptr inbounds i8, i8* %76, i64 2, !dbg !1099
  tail call void @llvm.dbg.value(metadata i8* %102, i64 0, metadata !941, metadata !600), !dbg !974
  br label %128, !dbg !1100

; <label>:103:                                    ; preds = %74
  tail call void @llvm.dbg.value(metadata i32 56, i64 0, metadata !955, metadata !600), !dbg !1098
  %104 = getelementptr inbounds i8, i8* %76, i64 2, !dbg !1101
  tail call void @llvm.dbg.value(metadata i8* %104, i64 0, metadata !941, metadata !600), !dbg !974
  br label %128, !dbg !1102

; <label>:105:                                    ; preds = %74
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !955, metadata !600), !dbg !1098
  %106 = getelementptr inbounds i8, i8* %76, i64 2, !dbg !1103
  tail call void @llvm.dbg.value(metadata i8* %106, i64 0, metadata !941, metadata !600), !dbg !974
  br label %128, !dbg !1104

; <label>:107:                                    ; preds = %83, %123
  %108 = phi i8 [ %127, %123 ], [ %80, %83 ], !dbg !1081
  %109 = phi i8* [ %126, %123 ], [ %79, %83 ]
  %110 = phi i32 [ %124, %123 ], [ 0, %83 ]
  %111 = phi i8 [ %125, %123 ], [ 1, %83 ]
  tail call void @llvm.dbg.value(metadata i8 %111, i64 0, metadata !957, metadata !600), !dbg !1073
  tail call void @llvm.dbg.value(metadata i32 %110, i64 0, metadata !955, metadata !600), !dbg !1098
  tail call void @llvm.dbg.value(metadata i8* %109, i64 0, metadata !941, metadata !600), !dbg !974
  %112 = sext i8 %108 to i32, !dbg !1081
  switch i32 %112, label %128 [
    i32 114, label %113
    i32 119, label %115
    i32 120, label %117
    i32 88, label %123
    i32 115, label %119
    i32 116, label %121
  ], !dbg !1105

; <label>:113:                                    ; preds = %107
  %114 = or i32 %110, 292, !dbg !1106
  tail call void @llvm.dbg.value(metadata i32 %114, i64 0, metadata !955, metadata !600), !dbg !1098
  br label %123, !dbg !1108

; <label>:115:                                    ; preds = %107
  %116 = or i32 %110, 146, !dbg !1109
  tail call void @llvm.dbg.value(metadata i32 %116, i64 0, metadata !955, metadata !600), !dbg !1098
  br label %123, !dbg !1110

; <label>:117:                                    ; preds = %107
  %118 = or i32 %110, 73, !dbg !1111
  tail call void @llvm.dbg.value(metadata i32 %118, i64 0, metadata !955, metadata !600), !dbg !1098
  br label %123, !dbg !1112

; <label>:119:                                    ; preds = %107
  %120 = or i32 %110, 3072, !dbg !1113
  tail call void @llvm.dbg.value(metadata i32 %120, i64 0, metadata !955, metadata !600), !dbg !1098
  br label %123, !dbg !1114

; <label>:121:                                    ; preds = %107
  %122 = or i32 %110, 512, !dbg !1115
  tail call void @llvm.dbg.value(metadata i32 %122, i64 0, metadata !955, metadata !600), !dbg !1098
  br label %123, !dbg !1116

; <label>:123:                                    ; preds = %107, %113, %115, %117, %119, %121
  %124 = phi i32 [ %122, %121 ], [ %120, %119 ], [ %118, %117 ], [ %116, %115 ], [ %114, %113 ], [ %110, %107 ]
  %125 = phi i8 [ %111, %121 ], [ %111, %119 ], [ %111, %117 ], [ %111, %115 ], [ %111, %113 ], [ 2, %107 ]
  tail call void @llvm.dbg.value(metadata i8 %125, i64 0, metadata !957, metadata !600), !dbg !1073
  tail call void @llvm.dbg.value(metadata i32 %124, i64 0, metadata !955, metadata !600), !dbg !1098
  %126 = getelementptr inbounds i8, i8* %109, i64 1, !dbg !1117
  tail call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !941, metadata !600), !dbg !974
  %127 = load i8, i8* %126, align 1, !dbg !1081, !tbaa !738
  br label %107, !dbg !1118, !llvm.loop !1119

; <label>:128:                                    ; preds = %107, %100, %100, %105, %103, %101
  %129 = phi i8* [ %106, %105 ], [ %104, %103 ], [ %102, %101 ], [ %89, %100 ], [ %89, %100 ], [ %109, %107 ]
  %130 = phi i32 [ %77, %105 ], [ %77, %103 ], [ %77, %101 ], [ 4095, %100 ], [ 4095, %100 ], [ %77, %107 ]
  %131 = phi i32 [ 7, %105 ], [ 56, %103 ], [ 448, %101 ], [ %92, %100 ], [ %92, %100 ], [ %110, %107 ]
  %132 = phi i32 [ 0, %105 ], [ 0, %103 ], [ 0, %101 ], [ 4095, %100 ], [ 4095, %100 ], [ 0, %107 ]
  %133 = phi i8 [ 3, %105 ], [ 3, %103 ], [ 3, %101 ], [ 1, %100 ], [ 1, %100 ], [ %111, %107 ]
  tail call void @llvm.dbg.value(metadata i8 %133, i64 0, metadata !957, metadata !600), !dbg !1073
  tail call void @llvm.dbg.value(metadata i32 %132, i64 0, metadata !956, metadata !600), !dbg !1072
  tail call void @llvm.dbg.value(metadata i32 %131, i64 0, metadata !955, metadata !600), !dbg !1098
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !949, metadata !600), !dbg !1051
  tail call void @llvm.dbg.value(metadata i8* %129, i64 0, metadata !941, metadata !600), !dbg !974
  %134 = add i64 %78, 1, !dbg !1122
  tail call void @llvm.dbg.value(metadata i64 %134, i64 0, metadata !940, metadata !600), !dbg !963
  %135 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 0, !dbg !1123
  store i8 %75, i8* %135, align 4, !dbg !1124, !tbaa !1007
  %136 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 1, !dbg !1125
  store i8 %133, i8* %136, align 1, !dbg !1126, !tbaa !1011
  %137 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 2, !dbg !1127
  store i32 %130, i32* %137, align 4, !dbg !1128, !tbaa !1014
  %138 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 3, !dbg !1129
  store i32 %131, i32* %138, align 4, !dbg !1130, !tbaa !1017
  %139 = icmp eq i32 %132, 0, !dbg !1131
  br i1 %139, label %140, label %144, !dbg !1131

; <label>:140:                                    ; preds = %128
  %141 = icmp eq i32 %130, 0, !dbg !1132
  %142 = select i1 %141, i32 -1, i32 %130, !dbg !1132
  %143 = and i32 %142, %131, !dbg !1132
  br label %144, !dbg !1132

; <label>:144:                                    ; preds = %128, %140
  %145 = phi i32 [ %132, %128 ], [ %143, %140 ], !dbg !1131
  %146 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 4, !dbg !1133
  store i32 %145, i32* %146, align 4, !dbg !1134, !tbaa !1020
  tail call void @llvm.dbg.value(metadata i64 %78, i64 0, metadata !940, metadata !600), !dbg !963
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !949, metadata !600), !dbg !1051
  tail call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !941, metadata !600), !dbg !974
  %147 = load i8, i8* %129, align 1, !dbg !1135, !tbaa !738
  switch i8 %147, label %153 [
    i8 61, label %148
    i8 43, label %148
    i8 45, label %148
    i8 44, label %149
    i8 0, label %151
  ], !dbg !1136

; <label>:148:                                    ; preds = %144, %144, %144
  br label %74, !dbg !963

; <label>:149:                                    ; preds = %144
  tail call void @llvm.dbg.value(metadata i32 %131, i64 0, metadata !955, metadata !600), !dbg !1098
  tail call void @llvm.dbg.value(metadata i64 %134, i64 0, metadata !940, metadata !600), !dbg !963
  tail call void @llvm.dbg.value(metadata i8* %129, i64 0, metadata !941, metadata !600), !dbg !974
  %150 = getelementptr inbounds i8, i8* %129, i64 1, !dbg !1137
  tail call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !941, metadata !600), !dbg !974
  br label %58, !dbg !1138, !llvm.loop !1139

; <label>:151:                                    ; preds = %144
  %152 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %134, i32 1, !dbg !1142
  store i8 0, i8* %152, align 1, !dbg !1145, !tbaa !1011
  br label %154, !dbg !1146

; <label>:153:                                    ; preds = %61, %98, %100, %144, %84
  tail call void @free(i8* %56) #10, !dbg !1147
  br label %154, !dbg !1148

; <label>:154:                                    ; preds = %7, %23, %21, %153, %151
  %155 = phi %struct.mode_change* [ null, %153 ], [ %57, %151 ], [ %32, %23 ], [ null, %21 ], [ null, %7 ]
  ret %struct.mode_change* %155, !dbg !1149
}

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.mode_change* @mode_create_from_ref(i8*) local_unnamed_addr #6 !dbg !1150 {
  %2 = alloca %struct.stat, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1152, metadata !600), !dbg !1190
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !1191
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %3) #10, !dbg !1191
  tail call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !1153, metadata !600), !dbg !1192
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1193, metadata !600) #10, !dbg !1200
  tail call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !1199, metadata !600) #10, !dbg !1200
  %4 = call i32 @__xstat(i32 1, i8* nonnull %0, %struct.stat* nonnull %2) #10, !dbg !1203
  %5 = icmp eq i32 %4, 0, !dbg !1204
  br i1 %5, label %6, label %19, !dbg !1205

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 3, !dbg !1206
  %8 = load i32, i32* %7, align 8, !dbg !1206, !tbaa !1207
  call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !994, metadata !600) #10, !dbg !1210
  call void @llvm.dbg.value(metadata i32 4095, i64 0, metadata !999, metadata !600) #10, !dbg !1212
  %9 = call noalias i8* @xmalloc(i64 32) #10, !dbg !1213
  %10 = bitcast i8* %9 to %struct.mode_change*, !dbg !1213
  call void @llvm.dbg.value(metadata %struct.mode_change* %10, i64 0, metadata !1000, metadata !600) #10, !dbg !1214
  store i8 61, i8* %9, align 4, !dbg !1215, !tbaa !1007
  %11 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !1216
  store i8 1, i8* %11, align 1, !dbg !1217, !tbaa !1011
  %12 = getelementptr inbounds i8, i8* %9, i64 4, !dbg !1218
  %13 = bitcast i8* %12 to i32*, !dbg !1218
  store i32 4095, i32* %13, align 4, !dbg !1219, !tbaa !1014
  %14 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !1220
  %15 = bitcast i8* %14 to i32*, !dbg !1220
  store i32 %8, i32* %15, align 4, !dbg !1221, !tbaa !1017
  %16 = getelementptr inbounds i8, i8* %9, i64 12, !dbg !1222
  %17 = bitcast i8* %16 to i32*, !dbg !1222
  store i32 4095, i32* %17, align 4, !dbg !1223, !tbaa !1020
  %18 = getelementptr inbounds i8, i8* %9, i64 17, !dbg !1224
  store i8 0, i8* %18, align 1, !dbg !1225, !tbaa !1011
  br label %19, !dbg !1226

; <label>:19:                                     ; preds = %1, %6
  %20 = phi %struct.mode_change* [ %10, %6 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %3) #10, !dbg !1227
  ret %struct.mode_change* %20, !dbg !1227
}

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @mode_adjust(i32, i1 zeroext, i32, %struct.mode_change* nocapture readonly, i32*) local_unnamed_addr #6 !dbg !1228 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1235, metadata !600), !dbg !1251
  tail call void @llvm.dbg.value(metadata i1 %1, i64 0, metadata !1236, metadata !600), !dbg !1252
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1237, metadata !600), !dbg !1253
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %3, i64 0, metadata !1238, metadata !600), !dbg !1254
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1239, metadata !600), !dbg !1255
  %6 = and i32 %0, 4095, !dbg !1256
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1240, metadata !600), !dbg !1257
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1241, metadata !600), !dbg !1258
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %3, i64 0, metadata !1238, metadata !600), !dbg !1254
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1240, metadata !600), !dbg !1257
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1241, metadata !600), !dbg !1258
  %7 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %3, i64 0, i32 1, !dbg !1259
  %8 = load i8, i8* %7, align 1, !dbg !1259, !tbaa !1011
  %9 = icmp eq i8 %8, 0, !dbg !1260
  br i1 %9, label %81, label %10, !dbg !1261

; <label>:10:                                     ; preds = %5
  %11 = select i1 %1, i32 3072, i32 0
  %12 = xor i32 %2, -1
  %13 = zext i1 %1 to i32
  br label %14, !dbg !1261

; <label>:14:                                     ; preds = %10, %74
  %15 = phi i8 [ %8, %10 ], [ %79, %74 ]
  %16 = phi %struct.mode_change* [ %3, %10 ], [ %77, %74 ]
  %17 = phi i32 [ %6, %10 ], [ %76, %74 ]
  %18 = phi i32 [ 0, %10 ], [ %75, %74 ]
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !1241, metadata !600), !dbg !1258
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !1240, metadata !600), !dbg !1257
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %16, i64 0, metadata !1238, metadata !600), !dbg !1254
  %19 = sext i8 %15 to i32, !dbg !1262
  %20 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 2, !dbg !1263
  %21 = load i32, i32* %20, align 4, !dbg !1263, !tbaa !1014
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !1242, metadata !600), !dbg !1264
  %22 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 4, !dbg !1265
  %23 = load i32, i32* %22, align 4, !dbg !1265, !tbaa !1020
  %24 = xor i32 %23, -1, !dbg !1266
  %25 = and i32 %11, %24, !dbg !1267
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !1246, metadata !600), !dbg !1268
  %26 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 3, !dbg !1269
  %27 = load i32, i32* %26, align 4, !dbg !1269, !tbaa !1017
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !1247, metadata !600), !dbg !1270
  switch i32 %19, label %48 [
    i32 2, label %42
    i32 3, label %28
  ], !dbg !1271

; <label>:28:                                     ; preds = %14
  %29 = and i32 %27, %17, !dbg !1272
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !1247, metadata !600), !dbg !1270
  %30 = and i32 %29, 292, !dbg !1274
  %31 = icmp eq i32 %30, 0, !dbg !1275
  %32 = select i1 %31, i32 0, i32 292, !dbg !1275
  %33 = and i32 %29, 146, !dbg !1276
  %34 = icmp eq i32 %33, 0, !dbg !1277
  %35 = select i1 %34, i32 0, i32 146, !dbg !1277
  %36 = and i32 %29, 73, !dbg !1278
  %37 = icmp eq i32 %36, 0, !dbg !1279
  %38 = select i1 %37, i32 0, i32 73, !dbg !1279
  %39 = or i32 %35, %29, !dbg !1280
  %40 = or i32 %39, %32, !dbg !1281
  %41 = or i32 %40, %38, !dbg !1282
  tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !1247, metadata !600), !dbg !1270
  br label %48, !dbg !1283

; <label>:42:                                     ; preds = %14
  %43 = and i32 %17, 73, !dbg !1284
  %44 = or i32 %43, %13, !dbg !1286
  %45 = icmp eq i32 %44, 0, !dbg !1286
  %46 = or i32 %27, 73, !dbg !1287
  tail call void @llvm.dbg.value(metadata i32 %46, i64 0, metadata !1247, metadata !600), !dbg !1270
  %47 = select i1 %45, i32 %27, i32 %46, !dbg !1288
  br label %48, !dbg !1288

; <label>:48:                                     ; preds = %42, %14, %28
  %49 = phi i32 [ %27, %14 ], [ %41, %28 ], [ %47, %42 ]
  tail call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !1247, metadata !600), !dbg !1270
  %50 = icmp ne i32 %21, 0, !dbg !1289
  %51 = select i1 %50, i32 %21, i32 %12, !dbg !1289
  %52 = xor i32 %25, -1, !dbg !1290
  %53 = and i32 %51, %52, !dbg !1291
  %54 = and i32 %53, %49, !dbg !1292
  tail call void @llvm.dbg.value(metadata i32 %54, i64 0, metadata !1247, metadata !600), !dbg !1270
  %55 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 0, !dbg !1293
  %56 = load i8, i8* %55, align 4, !dbg !1293, !tbaa !1007
  %57 = sext i8 %56 to i32, !dbg !1294
  switch i32 %57, label %74 [
    i32 61, label %58
    i32 43, label %67
    i32 45, label %70
  ], !dbg !1295

; <label>:58:                                     ; preds = %48
  %59 = xor i32 %21, -1, !dbg !1296
  %60 = select i1 %50, i32 %59, i32 0, !dbg !1297
  %61 = or i32 %60, %25, !dbg !1298
  tail call void @llvm.dbg.value(metadata i32 %61, i64 0, metadata !1248, metadata !600), !dbg !1299
  %62 = and i32 %61, 4095, !dbg !1300
  %63 = xor i32 %62, 4095, !dbg !1300
  %64 = or i32 %63, %18, !dbg !1301
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !1241, metadata !600), !dbg !1258
  %65 = and i32 %61, %17, !dbg !1302
  %66 = or i32 %54, %65, !dbg !1303
  tail call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !1240, metadata !600), !dbg !1257
  br label %74

; <label>:67:                                     ; preds = %48
  %68 = or i32 %54, %18, !dbg !1304
  tail call void @llvm.dbg.value(metadata i32 %68, i64 0, metadata !1241, metadata !600), !dbg !1258
  %69 = or i32 %54, %17, !dbg !1305
  tail call void @llvm.dbg.value(metadata i32 %69, i64 0, metadata !1240, metadata !600), !dbg !1257
  br label %74, !dbg !1306

; <label>:70:                                     ; preds = %48
  %71 = or i32 %54, %18, !dbg !1307
  tail call void @llvm.dbg.value(metadata i32 %71, i64 0, metadata !1241, metadata !600), !dbg !1258
  %72 = xor i32 %54, -1, !dbg !1308
  %73 = and i32 %17, %72, !dbg !1309
  tail call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !1240, metadata !600), !dbg !1257
  br label %74, !dbg !1310

; <label>:74:                                     ; preds = %48, %70, %67, %58
  %75 = phi i32 [ %18, %48 ], [ %71, %70 ], [ %68, %67 ], [ %64, %58 ]
  %76 = phi i32 [ %17, %48 ], [ %73, %70 ], [ %69, %67 ], [ %66, %58 ]
  tail call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !1240, metadata !600), !dbg !1257
  tail call void @llvm.dbg.value(metadata i32 %75, i64 0, metadata !1241, metadata !600), !dbg !1258
  %77 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 1, !dbg !1311
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %77, i64 0, metadata !1238, metadata !600), !dbg !1254
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %77, i64 0, metadata !1238, metadata !600), !dbg !1254
  tail call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !1240, metadata !600), !dbg !1257
  tail call void @llvm.dbg.value(metadata i32 %75, i64 0, metadata !1241, metadata !600), !dbg !1258
  %78 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 1, i32 1, !dbg !1259
  %79 = load i8, i8* %78, align 1, !dbg !1259, !tbaa !1011
  %80 = icmp eq i8 %79, 0, !dbg !1260
  br i1 %80, label %81, label %14, !dbg !1261, !llvm.loop !1312

; <label>:81:                                     ; preds = %74, %5
  %82 = phi i32 [ 0, %5 ], [ %75, %74 ]
  %83 = phi i32 [ %6, %5 ], [ %76, %74 ]
  %84 = icmp eq i32* %4, null, !dbg !1314
  br i1 %84, label %86, label %85, !dbg !1316

; <label>:85:                                     ; preds = %81
  store i32 %82, i32* %4, align 4, !dbg !1317, !tbaa !730
  br label %86, !dbg !1318

; <label>:86:                                     ; preds = %81, %85
  ret i32 %83, !dbg !1319
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1320 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1322, metadata !600), !dbg !1325
  %2 = icmp eq i8* %0, null, !dbg !1326
  br i1 %2, label %3, label %6, !dbg !1328

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1329, !tbaa !607
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.53, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1331
  tail call void @abort() #15, !dbg !1332
  unreachable, !dbg !1332

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1333
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1323, metadata !600), !dbg !1334
  %8 = icmp eq i8* %7, null, !dbg !1335
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1336
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1337
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1324, metadata !600), !dbg !1338
  %11 = ptrtoint i8* %10 to i64, !dbg !1339
  %12 = ptrtoint i8* %0 to i64, !dbg !1339
  %13 = sub i64 %11, %12, !dbg !1339
  %14 = icmp sgt i64 %13, 6, !dbg !1341
  br i1 %14, label %15, label %24, !dbg !1342

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1343
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.54, i64 0, i64 0), i64 7) #14, !dbg !1344
  %18 = icmp eq i32 %17, 0, !dbg !1345
  br i1 %18, label %19, label %24, !dbg !1346

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1322, metadata !600), !dbg !1325
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.55, i64 0, i64 0), i64 3) #14, !dbg !1347
  %21 = icmp eq i32 %20, 0, !dbg !1350
  br i1 %21, label %22, label %24, !dbg !1351

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1352
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1322, metadata !600), !dbg !1325
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1354, !tbaa !607
  br label %24, !dbg !1355

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1322, metadata !600), !dbg !1325
  store i8* %25, i8** @program_name, align 8, !dbg !1356, !tbaa !607
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1357, !tbaa !607
  ret void, !dbg !1358
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1359 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1364, metadata !600), !dbg !1367
  %2 = tail call i32* @__errno_location() #17, !dbg !1368
  %3 = load i32, i32* %2, align 4, !dbg !1368, !tbaa !730
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1365, metadata !600), !dbg !1369
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1370
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1370
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1370
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1371
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1371
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1366, metadata !600), !dbg !1372
  store i32 %3, i32* %2, align 4, !dbg !1373, !tbaa !730
  ret %struct.quoting_options* %8, !dbg !1374
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1375 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1381, metadata !600), !dbg !1382
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1383
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1383
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1384
  %5 = load i32, i32* %4, align 8, !dbg !1384, !tbaa !1385
  ret i32 %5, !dbg !1387
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1388 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1392, metadata !600), !dbg !1394
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1393, metadata !600), !dbg !1395
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1396
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1396
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1397
  store i32 %1, i32* %5, align 8, !dbg !1398, !tbaa !1385
  ret void, !dbg !1399
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1400 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1404, metadata !600), !dbg !1412
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1405, metadata !600), !dbg !1413
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1406, metadata !600), !dbg !1414
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1407, metadata !600), !dbg !1415
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1416
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1416
  %6 = lshr i8 %1, 5, !dbg !1417
  %7 = zext i8 %6 to i64, !dbg !1417
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1418
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1408, metadata !600), !dbg !1419
  %9 = and i8 %1, 31, !dbg !1420
  %10 = zext i8 %9 to i32, !dbg !1421
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1410, metadata !600), !dbg !1422
  %11 = load i32, i32* %8, align 4, !dbg !1423, !tbaa !730
  %12 = lshr i32 %11, %10, !dbg !1424
  %13 = and i32 %12, 1, !dbg !1425
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1411, metadata !600), !dbg !1426
  %14 = and i32 %2, 1, !dbg !1427
  %15 = xor i32 %13, %14, !dbg !1428
  %16 = shl i32 %15, %10, !dbg !1429
  %17 = xor i32 %16, %11, !dbg !1430
  store i32 %17, i32* %8, align 4, !dbg !1430, !tbaa !730
  ret i32 %13, !dbg !1431
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1432 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1436, metadata !600), !dbg !1439
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1437, metadata !600), !dbg !1440
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1441
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1436, metadata !600), !dbg !1439
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1443
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1436, metadata !600), !dbg !1439
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1444
  %6 = load i32, i32* %5, align 4, !dbg !1444, !tbaa !1445
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1438, metadata !600), !dbg !1446
  store i32 %1, i32* %5, align 4, !dbg !1447, !tbaa !1445
  ret i32 %6, !dbg !1448
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1449 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1453, metadata !600), !dbg !1456
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1454, metadata !600), !dbg !1457
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1455, metadata !600), !dbg !1458
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1459
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1453, metadata !600), !dbg !1456
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1461
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1453, metadata !600), !dbg !1456
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1462
  store i32 10, i32* %6, align 8, !dbg !1463, !tbaa !1385
  %7 = icmp ne i8* %1, null, !dbg !1464
  %8 = icmp ne i8* %2, null, !dbg !1466
  %9 = and i1 %7, %8, !dbg !1467
  br i1 %9, label %11, label %10, !dbg !1467

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1468
  unreachable, !dbg !1468

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1469
  store i8* %1, i8** %12, align 8, !dbg !1470, !tbaa !1471
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1472
  store i8* %2, i8** %13, align 8, !dbg !1473, !tbaa !1474
  ret void, !dbg !1475
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1476 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1480, metadata !600), !dbg !1488
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1481, metadata !600), !dbg !1489
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1482, metadata !600), !dbg !1490
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1483, metadata !600), !dbg !1491
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1484, metadata !600), !dbg !1492
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1493
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1493
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1485, metadata !600), !dbg !1494
  %8 = tail call i32* @__errno_location() #17, !dbg !1495
  %9 = load i32, i32* %8, align 4, !dbg !1495, !tbaa !730
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1486, metadata !600), !dbg !1496
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1497
  %11 = load i32, i32* %10, align 8, !dbg !1497, !tbaa !1385
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1498
  %13 = load i32, i32* %12, align 4, !dbg !1498, !tbaa !1445
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1499
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1500
  %16 = load i8*, i8** %15, align 8, !dbg !1500, !tbaa !1471
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1501
  %18 = load i8*, i8** %17, align 8, !dbg !1501, !tbaa !1474
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1502
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1487, metadata !600), !dbg !1503
  store i32 %9, i32* %8, align 4, !dbg !1504, !tbaa !730
  ret i64 %19, !dbg !1505
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1506 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1512, metadata !600), !dbg !1576
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1513, metadata !600), !dbg !1577
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1514, metadata !600), !dbg !1578
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1515, metadata !600), !dbg !1579
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1516, metadata !600), !dbg !1580
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1517, metadata !600), !dbg !1581
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1518, metadata !600), !dbg !1582
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1519, metadata !600), !dbg !1583
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1520, metadata !600), !dbg !1584
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1522, metadata !600), !dbg !1585
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1523, metadata !600), !dbg !1586
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1524, metadata !600), !dbg !1587
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1525, metadata !600), !dbg !1588
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1526, metadata !600), !dbg !1589
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1590
  %14 = icmp eq i64 %13, 1, !dbg !1591
  %15 = lshr i32 %5, 1, !dbg !1592
  %16 = trunc i32 %15 to i8, !dbg !1592
  %17 = and i8 %16, 1, !dbg !1592
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1528, metadata !600), !dbg !1592
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1529, metadata !600), !dbg !1593
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1530, metadata !600), !dbg !1594
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1531, metadata !600), !dbg !1595
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1596

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1513, metadata !600), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1531, metadata !600), !dbg !1595
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1530, metadata !600), !dbg !1594
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1529, metadata !600), !dbg !1593
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1528, metadata !600), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1515, metadata !600), !dbg !1579
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1526, metadata !600), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1525, metadata !600), !dbg !1588
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1524, metadata !600), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1523, metadata !600), !dbg !1586
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1522, metadata !600), !dbg !1585
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1520, metadata !600), !dbg !1584
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1519, metadata !600), !dbg !1583
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1516, metadata !600), !dbg !1580
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
  ], !dbg !1597

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1516, metadata !600), !dbg !1580
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1528, metadata !600), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1528, metadata !600), !dbg !1592
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1516, metadata !600), !dbg !1580
  br label %94, !dbg !1598

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1528, metadata !600), !dbg !1592
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1516, metadata !600), !dbg !1580
  %43 = and i8 %36, 1, !dbg !1600
  %44 = icmp eq i8 %43, 0, !dbg !1600
  br i1 %44, label %45, label %94, !dbg !1598

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1602
  br i1 %46, label %94, label %47, !dbg !1605

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1602, !tbaa !738
  br label %94, !dbg !1602

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.66, i64 0, i64 0), i32 %28), !dbg !1606
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1519, metadata !600), !dbg !1583
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), i32 %28), !dbg !1610
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1520, metadata !600), !dbg !1584
  br label %51, !dbg !1611

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1520, metadata !600), !dbg !1584
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1519, metadata !600), !dbg !1583
  %54 = and i8 %36, 1, !dbg !1612
  %55 = icmp eq i8 %54, 0, !dbg !1612
  br i1 %55, label %56, label %72, !dbg !1614

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1524, metadata !600), !dbg !1587
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1524, metadata !600), !dbg !1587
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1522, metadata !600), !dbg !1585
  %57 = load i8, i8* %52, align 1, !dbg !1615, !tbaa !738
  %58 = icmp eq i8 %57, 0, !dbg !1618
  br i1 %58, label %72, label %59, !dbg !1618

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1619

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1522, metadata !600), !dbg !1585
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1524, metadata !600), !dbg !1587
  %64 = icmp ult i64 %63, %40, !dbg !1619
  br i1 %64, label %65, label %67, !dbg !1622

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1619
  store i8 %61, i8* %66, align 1, !dbg !1619, !tbaa !738
  br label %67, !dbg !1619

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1622
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1522, metadata !600), !dbg !1585
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1623
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1524, metadata !600), !dbg !1587
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1524, metadata !600), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1522, metadata !600), !dbg !1585
  %70 = load i8, i8* %69, align 1, !dbg !1615, !tbaa !738
  %71 = icmp eq i8 %70, 0, !dbg !1618
  br i1 %71, label %72, label %60, !dbg !1618, !llvm.loop !1624

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1522, metadata !600), !dbg !1585
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1526, metadata !600), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1524, metadata !600), !dbg !1587
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1626
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1525, metadata !600), !dbg !1588
  br label %94, !dbg !1627

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1526, metadata !600), !dbg !1589
  br label %76, !dbg !1628

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1526, metadata !600), !dbg !1589
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1528, metadata !600), !dbg !1592
  br label %78, !dbg !1629

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1528, metadata !600), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1526, metadata !600), !dbg !1589
  %81 = and i8 %80, 1, !dbg !1630
  %82 = icmp eq i8 %81, 0, !dbg !1630
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1526, metadata !600), !dbg !1589
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1632
  br label %84, !dbg !1632

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1528, metadata !600), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1526, metadata !600), !dbg !1589
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1516, metadata !600), !dbg !1580
  %87 = and i8 %86, 1, !dbg !1633
  %88 = icmp eq i8 %87, 0, !dbg !1633
  br i1 %88, label %89, label %94, !dbg !1635

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1636
  br i1 %90, label %94, label %91, !dbg !1639

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1636, !tbaa !738
  br label %94, !dbg !1636

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1528, metadata !600), !dbg !1592
  br label %94, !dbg !1640

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1641
  unreachable, !dbg !1641

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1528, metadata !600), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1526, metadata !600), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1525, metadata !600), !dbg !1588
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1524, metadata !600), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1522, metadata !600), !dbg !1585
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1520, metadata !600), !dbg !1584
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1519, metadata !600), !dbg !1583
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1516, metadata !600), !dbg !1580
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1521, metadata !600), !dbg !1642
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
  br label %122, !dbg !1643

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1513, metadata !600), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1531, metadata !600), !dbg !1595
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1530, metadata !600), !dbg !1594
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1529, metadata !600), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1515, metadata !600), !dbg !1579
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1523, metadata !600), !dbg !1586
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1522, metadata !600), !dbg !1585
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1521, metadata !600), !dbg !1642
  %131 = icmp eq i64 %126, -1, !dbg !1644
  br i1 %131, label %134, label %132, !dbg !1645

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1646
  br i1 %133, label %590, label %138, !dbg !1647

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1648
  %136 = load i8, i8* %135, align 1, !dbg !1648, !tbaa !738
  %137 = icmp eq i8 %136, 0, !dbg !1649
  br i1 %137, label %590, label %138, !dbg !1647

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1537, metadata !600), !dbg !1650
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1538, metadata !600), !dbg !1651
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1539, metadata !600), !dbg !1652
  br i1 %108, label %139, label %154, !dbg !1653

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1655
  %141 = and i1 %109, %131, !dbg !1656
  br i1 %141, label %142, label %144, !dbg !1656

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1657
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1515, metadata !600), !dbg !1579
  br label %144, !dbg !1658

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1515, metadata !600), !dbg !1579
  %146 = icmp ugt i64 %140, %145, !dbg !1659
  br i1 %146, label %154, label %147, !dbg !1660

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1661
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1662
  %150 = icmp ne i32 %149, 0, !dbg !1663
  %151 = or i1 %150, %111, !dbg !1664
  %152 = xor i1 %150, true, !dbg !1664
  %153 = zext i1 %152 to i8, !dbg !1664
  br i1 %151, label %154, label %635, !dbg !1664

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1537, metadata !600), !dbg !1650
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1515, metadata !600), !dbg !1579
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1665
  %158 = load i8, i8* %157, align 1, !dbg !1665, !tbaa !738
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1532, metadata !600), !dbg !1666
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
  ], !dbg !1667

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1668

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1669

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1538, metadata !600), !dbg !1651
  %162 = and i8 %127, 1, !dbg !1673
  %163 = icmp eq i8 %162, 0, !dbg !1673
  %164 = and i1 %113, %163, !dbg !1673
  br i1 %164, label %165, label %181, !dbg !1673

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1675
  br i1 %166, label %167, label %169, !dbg !1679

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1675
  store i8 39, i8* %168, align 1, !dbg !1675, !tbaa !738
  br label %169, !dbg !1675

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1679
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1522, metadata !600), !dbg !1585
  %171 = icmp ult i64 %170, %130, !dbg !1680
  br i1 %171, label %172, label %174, !dbg !1683

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1680
  store i8 36, i8* %173, align 1, !dbg !1680, !tbaa !738
  br label %174, !dbg !1680

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1683
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1522, metadata !600), !dbg !1585
  %176 = icmp ult i64 %175, %130, !dbg !1684
  br i1 %176, label %177, label %179, !dbg !1687

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1684
  store i8 39, i8* %178, align 1, !dbg !1684, !tbaa !738
  br label %179, !dbg !1684

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1687
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1522, metadata !600), !dbg !1585
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1529, metadata !600), !dbg !1593
  br label %181, !dbg !1688

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1529, metadata !600), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1522, metadata !600), !dbg !1585
  %184 = icmp ult i64 %182, %130, !dbg !1689
  br i1 %184, label %185, label %187, !dbg !1692

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1689
  store i8 92, i8* %186, align 1, !dbg !1689, !tbaa !738
  br label %187, !dbg !1689

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1692
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1522, metadata !600), !dbg !1585
  br i1 %105, label %189, label %470, !dbg !1693

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1695
  %191 = icmp ult i64 %190, %155, !dbg !1696
  br i1 %191, label %192, label %470, !dbg !1697

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1698
  %194 = load i8, i8* %193, align 1, !dbg !1698, !tbaa !738
  %195 = add i8 %194, -48, !dbg !1699
  %196 = icmp ult i8 %195, 10, !dbg !1699
  br i1 %196, label %197, label %470, !dbg !1699

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1700
  br i1 %198, label %199, label %201, !dbg !1704

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1700
  store i8 48, i8* %200, align 1, !dbg !1700, !tbaa !738
  br label %201, !dbg !1700

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1704
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1522, metadata !600), !dbg !1585
  %203 = icmp ult i64 %202, %130, !dbg !1705
  br i1 %203, label %204, label %206, !dbg !1708

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1705
  store i8 48, i8* %205, align 1, !dbg !1705, !tbaa !738
  br label %206, !dbg !1705

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1708
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1522, metadata !600), !dbg !1585
  br label %470, !dbg !1709

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1710

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1711

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1712

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1714

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1716
  %214 = icmp ult i64 %213, %155, !dbg !1717
  br i1 %214, label %215, label %470, !dbg !1718

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1719
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1720
  %218 = load i8, i8* %217, align 1, !dbg !1720, !tbaa !738
  %219 = icmp eq i8 %218, 63, !dbg !1721
  br i1 %219, label %220, label %470, !dbg !1722

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1723
  %222 = load i8, i8* %221, align 1, !dbg !1723, !tbaa !738
  %223 = sext i8 %222 to i32, !dbg !1723
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
  ], !dbg !1724

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1725

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1532, metadata !600), !dbg !1666
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1521, metadata !600), !dbg !1642
  %226 = icmp ult i64 %124, %130, !dbg !1727
  br i1 %226, label %227, label %229, !dbg !1730

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1727
  store i8 63, i8* %228, align 1, !dbg !1727, !tbaa !738
  br label %229, !dbg !1727

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1730
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1522, metadata !600), !dbg !1585
  %231 = icmp ult i64 %230, %130, !dbg !1731
  br i1 %231, label %232, label %234, !dbg !1734

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1731
  store i8 34, i8* %233, align 1, !dbg !1731, !tbaa !738
  br label %234, !dbg !1731

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1734
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1522, metadata !600), !dbg !1585
  %236 = icmp ult i64 %235, %130, !dbg !1735
  br i1 %236, label %237, label %239, !dbg !1738

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1735
  store i8 34, i8* %238, align 1, !dbg !1735, !tbaa !738
  br label %239, !dbg !1735

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1738
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1522, metadata !600), !dbg !1585
  %241 = icmp ult i64 %240, %130, !dbg !1739
  br i1 %241, label %242, label %244, !dbg !1742

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1739
  store i8 63, i8* %243, align 1, !dbg !1739, !tbaa !738
  br label %244, !dbg !1739

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1742
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1522, metadata !600), !dbg !1585
  br label %470, !dbg !1743

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1536, metadata !600), !dbg !1744
  br label %256, !dbg !1745

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1536, metadata !600), !dbg !1744
  br label %256, !dbg !1746

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1536, metadata !600), !dbg !1744
  br label %254, !dbg !1747

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1536, metadata !600), !dbg !1744
  br label %254, !dbg !1748

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1536, metadata !600), !dbg !1744
  br label %256, !dbg !1749

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1536, metadata !600), !dbg !1744
  br i1 %113, label %252, label %253, !dbg !1750

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1751

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1754

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1536, metadata !600), !dbg !1744
  br i1 %117, label %256, label %635, !dbg !1756

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1536, metadata !600), !dbg !1744
  br i1 %104, label %497, label %470, !dbg !1758

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1759
  br i1 %259, label %260, label %265, !dbg !1761

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1762, !tbaa !738
  %262 = icmp ne i8 %261, 0, !dbg !1763
  %263 = icmp ne i64 %123, 0, !dbg !1764
  %264 = or i1 %263, %262, !dbg !1766
  br i1 %264, label %470, label %271, !dbg !1766

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1767
  %267 = icmp ne i64 %123, 0, !dbg !1764
  %268 = or i1 %267, %266, !dbg !1761
  br i1 %268, label %470, label %271, !dbg !1761

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1764
  br i1 %270, label %271, label %470, !dbg !1768

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1539, metadata !600), !dbg !1652
  br label %272, !dbg !1769

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1539, metadata !600), !dbg !1652
  br i1 %117, label %470, label %635, !dbg !1770

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1530, metadata !600), !dbg !1594
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1539, metadata !600), !dbg !1652
  br i1 %113, label %275, label %470, !dbg !1772

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1773

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1776
  %278 = icmp ne i64 %125, 0, !dbg !1778
  %279 = or i1 %278, %277, !dbg !1779
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1523, metadata !600), !dbg !1586
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1513, metadata !600), !dbg !1577
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1779
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1779
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1513, metadata !600), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1523, metadata !600), !dbg !1586
  %282 = icmp ult i64 %124, %281, !dbg !1780
  br i1 %282, label %283, label %285, !dbg !1783

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1780
  store i8 39, i8* %284, align 1, !dbg !1780, !tbaa !738
  br label %285, !dbg !1780

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1783
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1522, metadata !600), !dbg !1585
  %287 = icmp ult i64 %286, %281, !dbg !1784
  br i1 %287, label %288, label %290, !dbg !1787

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1784
  store i8 92, i8* %289, align 1, !dbg !1784, !tbaa !738
  br label %290, !dbg !1784

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1787
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1522, metadata !600), !dbg !1585
  %292 = icmp ult i64 %291, %281, !dbg !1788
  br i1 %292, label %293, label %295, !dbg !1791

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1788
  store i8 39, i8* %294, align 1, !dbg !1788, !tbaa !738
  br label %295, !dbg !1788

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1791
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1522, metadata !600), !dbg !1585
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1529, metadata !600), !dbg !1593
  br label %470, !dbg !1792

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1793

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1540, metadata !600), !dbg !1794
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1795
  %300 = load i16*, i16** %299, align 8, !dbg !1795, !tbaa !607
  %301 = zext i8 %158 to i64, !dbg !1795
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1795
  %303 = load i16, i16* %302, align 2, !dbg !1795, !tbaa !1797
  %304 = lshr i16 %303, 14, !dbg !1799
  %305 = trunc i16 %304 to i8, !dbg !1799
  %306 = and i8 %305, 1, !dbg !1799
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1543, metadata !600), !dbg !1800
  br label %362, !dbg !1801

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1802
  store i64 0, i64* %10, align 8, !dbg !1803
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1540, metadata !600), !dbg !1794
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1543, metadata !600), !dbg !1800
  %308 = icmp eq i64 %155, -1, !dbg !1804
  br i1 %308, label %309, label %311, !dbg !1806

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1807
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1515, metadata !600), !dbg !1579
  br label %311, !dbg !1808

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1515, metadata !600), !dbg !1579
  br label %313, !dbg !1809, !llvm.loop !1810

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1543, metadata !600), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1540, metadata !600), !dbg !1794
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1812
  %316 = add i64 %314, %123, !dbg !1813
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1814
  %318 = sub i64 %312, %316, !dbg !1815
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1544, metadata !600), !dbg !1816
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1562, metadata !600), !dbg !1817
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #10, !dbg !1818
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1565, metadata !600), !dbg !1819
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1820

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1543, metadata !600), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1540, metadata !600), !dbg !1794
  %321 = icmp ugt i64 %312, %316, !dbg !1821
  br i1 %321, label %322, label %347, !dbg !1823

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1824

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1540, metadata !600), !dbg !1794
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1824
  %327 = load i8, i8* %326, align 1, !dbg !1824, !tbaa !738
  %328 = icmp eq i8 %327, 0, !dbg !1823
  br i1 %328, label %347, label %329, !dbg !1825

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1826
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1540, metadata !600), !dbg !1794
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1540, metadata !600), !dbg !1794
  %331 = add i64 %330, %123, !dbg !1827
  %332 = icmp ult i64 %331, %312, !dbg !1821
  br i1 %332, label %323, label %347, !dbg !1823, !llvm.loop !1828

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1829
  %335 = and i1 %115, %334, !dbg !1832
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1566, metadata !600), !dbg !1833
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1566, metadata !600), !dbg !1833
  br i1 %335, label %336, label %350, !dbg !1832

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1834

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1566, metadata !600), !dbg !1833
  %339 = add i64 %338, %316, !dbg !1834
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1835
  %341 = load i8, i8* %340, align 1, !dbg !1835, !tbaa !738
  %342 = sext i8 %341 to i32, !dbg !1835
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1836

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1837
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1566, metadata !600), !dbg !1833
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1566, metadata !600), !dbg !1833
  %345 = icmp ult i64 %344, %319, !dbg !1829
  br i1 %345, label %337, label %350, !dbg !1838, !llvm.loop !1839

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1841

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1543, metadata !600), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1540, metadata !600), !dbg !1794
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1841
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1842, !tbaa !730
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1562, metadata !600), !dbg !1817
  %352 = call i32 @iswprint(i32 %351) #10, !dbg !1844
  %353 = icmp eq i32 %352, 0, !dbg !1844
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1543, metadata !600), !dbg !1800
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1845
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1543, metadata !600), !dbg !1800
  %355 = add i64 %319, %314, !dbg !1846
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1540, metadata !600), !dbg !1794
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1543, metadata !600), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1540, metadata !600), !dbg !1794
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1841
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1544, metadata !600), !dbg !1816
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1847
  %357 = icmp eq i32 %356, 0, !dbg !1848
  br i1 %357, label %313, label %358, !dbg !1849, !llvm.loop !1810

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1850
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1543, metadata !600), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1540, metadata !600), !dbg !1794
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1841
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1850
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1543, metadata !600), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1540, metadata !600), !dbg !1794
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1515, metadata !600), !dbg !1579
  %366 = and i8 %365, 1, !dbg !1851
  %367 = icmp ne i8 %366, 0, !dbg !1851
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1539, metadata !600), !dbg !1652
  %368 = icmp ult i64 %364, 2, !dbg !1852
  %369 = or i1 %367, %112, !dbg !1853
  %370 = and i1 %368, %369, !dbg !1854
  br i1 %370, label %470, label %371, !dbg !1854

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1855
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1573, metadata !600), !dbg !1856
  br label %373, !dbg !1857

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1538, metadata !600), !dbg !1651
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1537, metadata !600), !dbg !1650
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1532, metadata !600), !dbg !1666
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1529, metadata !600), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1522, metadata !600), !dbg !1585
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1521, metadata !600), !dbg !1642
  br i1 %369, label %426, label %380, !dbg !1858

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1863

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1538, metadata !600), !dbg !1651
  %382 = and i8 %376, 1, !dbg !1866
  %383 = icmp eq i8 %382, 0, !dbg !1866
  %384 = and i1 %113, %383, !dbg !1866
  br i1 %384, label %385, label %401, !dbg !1866

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1868
  br i1 %386, label %387, label %389, !dbg !1872

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1868
  store i8 39, i8* %388, align 1, !dbg !1868, !tbaa !738
  br label %389, !dbg !1868

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1872
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1522, metadata !600), !dbg !1585
  %391 = icmp ult i64 %390, %130, !dbg !1873
  br i1 %391, label %392, label %394, !dbg !1876

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1873
  store i8 36, i8* %393, align 1, !dbg !1873, !tbaa !738
  br label %394, !dbg !1873

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1876
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1522, metadata !600), !dbg !1585
  %396 = icmp ult i64 %395, %130, !dbg !1877
  br i1 %396, label %397, label %399, !dbg !1880

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1877
  store i8 39, i8* %398, align 1, !dbg !1877, !tbaa !738
  br label %399, !dbg !1877

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1880
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1522, metadata !600), !dbg !1585
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1529, metadata !600), !dbg !1593
  br label %401, !dbg !1881

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1529, metadata !600), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1522, metadata !600), !dbg !1585
  %404 = icmp ult i64 %402, %130, !dbg !1882
  br i1 %404, label %405, label %407, !dbg !1885

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1882
  store i8 92, i8* %406, align 1, !dbg !1882, !tbaa !738
  br label %407, !dbg !1882

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1885
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1522, metadata !600), !dbg !1585
  %409 = icmp ult i64 %408, %130, !dbg !1886
  br i1 %409, label %410, label %414, !dbg !1889

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1886
  %412 = or i8 %411, 48, !dbg !1886
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1886
  store i8 %412, i8* %413, align 1, !dbg !1886, !tbaa !738
  br label %414, !dbg !1886

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1889
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1522, metadata !600), !dbg !1585
  %416 = icmp ult i64 %415, %130, !dbg !1890
  br i1 %416, label %417, label %422, !dbg !1893

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1890
  %419 = and i8 %418, 7, !dbg !1890
  %420 = or i8 %419, 48, !dbg !1890
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1890
  store i8 %420, i8* %421, align 1, !dbg !1890, !tbaa !738
  br label %422, !dbg !1890

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1893
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1522, metadata !600), !dbg !1585
  %424 = and i8 %377, 7, !dbg !1894
  %425 = or i8 %424, 48, !dbg !1895
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1532, metadata !600), !dbg !1666
  br label %435, !dbg !1896

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1897
  %428 = icmp eq i8 %427, 0, !dbg !1897
  br i1 %428, label %435, label %429, !dbg !1899

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1900
  br i1 %430, label %431, label %433, !dbg !1904

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1900
  store i8 92, i8* %432, align 1, !dbg !1900, !tbaa !738
  br label %433, !dbg !1900

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1904
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1522, metadata !600), !dbg !1585
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1537, metadata !600), !dbg !1650
  br label %435, !dbg !1905

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1538, metadata !600), !dbg !1651
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1537, metadata !600), !dbg !1650
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1532, metadata !600), !dbg !1666
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1529, metadata !600), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1522, metadata !600), !dbg !1585
  %441 = add i64 %374, 1, !dbg !1906
  %442 = icmp ugt i64 %372, %441, !dbg !1908
  br i1 %442, label %443, label %535, !dbg !1909

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1910
  %445 = icmp ne i8 %444, 0, !dbg !1910
  %446 = and i8 %440, 1, !dbg !1910
  %447 = icmp eq i8 %446, 0, !dbg !1910
  %448 = and i1 %445, %447, !dbg !1910
  br i1 %448, label %449, label %460, !dbg !1910

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1913
  br i1 %450, label %451, label %453, !dbg !1917

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1913
  store i8 39, i8* %452, align 1, !dbg !1913, !tbaa !738
  br label %453, !dbg !1913

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1917
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1522, metadata !600), !dbg !1585
  %455 = icmp ult i64 %454, %130, !dbg !1918
  br i1 %455, label %456, label %458, !dbg !1921

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1918
  store i8 39, i8* %457, align 1, !dbg !1918, !tbaa !738
  br label %458, !dbg !1918

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1921
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1522, metadata !600), !dbg !1585
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1529, metadata !600), !dbg !1593
  br label %460, !dbg !1922

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1529, metadata !600), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1522, metadata !600), !dbg !1585
  %463 = icmp ult i64 %461, %130, !dbg !1923
  br i1 %463, label %464, label %466, !dbg !1926

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1923
  store i8 %438, i8* %465, align 1, !dbg !1923, !tbaa !738
  br label %466, !dbg !1923

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1926
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1522, metadata !600), !dbg !1585
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1521, metadata !600), !dbg !1642
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1927
  %469 = load i8, i8* %468, align 1, !dbg !1927, !tbaa !738
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1532, metadata !600), !dbg !1666
  br label %373, !dbg !1928, !llvm.loop !1929

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1513, metadata !600), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1539, metadata !600), !dbg !1652
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1538, metadata !600), !dbg !1651
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1537, metadata !600), !dbg !1650
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1532, metadata !600), !dbg !1666
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1530, metadata !600), !dbg !1594
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1529, metadata !600), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1515, metadata !600), !dbg !1579
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1523, metadata !600), !dbg !1586
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1522, metadata !600), !dbg !1585
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1521, metadata !600), !dbg !1642
  br i1 %106, label %482, label %481, !dbg !1932

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1934

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1935

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1936
  %485 = zext i8 %484 to i64, !dbg !1936
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1937
  %487 = load i32, i32* %486, align 4, !dbg !1937, !tbaa !730
  %488 = and i8 %477, 31, !dbg !1938
  %489 = zext i8 %488 to i32, !dbg !1939
  %490 = shl i32 1, %489, !dbg !1940
  %491 = and i32 %487, %490, !dbg !1940
  %492 = icmp eq i32 %491, 0, !dbg !1940
  %493 = icmp eq i8 %156, 0, !dbg !1941
  %494 = and i1 %493, %492, !dbg !1942
  br i1 %494, label %535, label %497, !dbg !1942

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1941
  br i1 %496, label %535, label %497, !dbg !1943

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1513, metadata !600), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1539, metadata !600), !dbg !1652
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1532, metadata !600), !dbg !1666
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1530, metadata !600), !dbg !1594
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1529, metadata !600), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1515, metadata !600), !dbg !1579
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1523, metadata !600), !dbg !1586
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1522, metadata !600), !dbg !1585
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1521, metadata !600), !dbg !1642
  br i1 %111, label %507, label %635, !dbg !1944

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1538, metadata !600), !dbg !1651
  %508 = and i8 %502, 1, !dbg !1946
  %509 = icmp eq i8 %508, 0, !dbg !1946
  %510 = and i1 %113, %509, !dbg !1946
  br i1 %510, label %511, label %527, !dbg !1946

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1948
  br i1 %512, label %513, label %515, !dbg !1952

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1948
  store i8 39, i8* %514, align 1, !dbg !1948, !tbaa !738
  br label %515, !dbg !1948

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1952
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1522, metadata !600), !dbg !1585
  %517 = icmp ult i64 %516, %506, !dbg !1953
  br i1 %517, label %518, label %520, !dbg !1956

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1953
  store i8 36, i8* %519, align 1, !dbg !1953, !tbaa !738
  br label %520, !dbg !1953

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1956
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1522, metadata !600), !dbg !1585
  %522 = icmp ult i64 %521, %506, !dbg !1957
  br i1 %522, label %523, label %525, !dbg !1960

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1957
  store i8 39, i8* %524, align 1, !dbg !1957, !tbaa !738
  br label %525, !dbg !1957

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1522, metadata !600), !dbg !1585
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1529, metadata !600), !dbg !1593
  br label %527, !dbg !1961

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1529, metadata !600), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1522, metadata !600), !dbg !1585
  %530 = icmp ult i64 %528, %506, !dbg !1962
  br i1 %530, label %531, label %533, !dbg !1965

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1962
  store i8 92, i8* %532, align 1, !dbg !1962, !tbaa !738
  br label %533, !dbg !1962

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1965
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1522, metadata !600), !dbg !1585
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1513, metadata !600), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1539, metadata !600), !dbg !1652
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1538, metadata !600), !dbg !1651
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1532, metadata !600), !dbg !1666
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1530, metadata !600), !dbg !1594
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1529, metadata !600), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1515, metadata !600), !dbg !1579
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1523, metadata !600), !dbg !1586
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1522, metadata !600), !dbg !1585
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1521, metadata !600), !dbg !1642
  br label %562, !dbg !1966

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1513, metadata !600), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1539, metadata !600), !dbg !1652
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1538, metadata !600), !dbg !1651
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1532, metadata !600), !dbg !1666
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1530, metadata !600), !dbg !1594
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1529, metadata !600), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1515, metadata !600), !dbg !1579
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1523, metadata !600), !dbg !1586
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1522, metadata !600), !dbg !1585
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1521, metadata !600), !dbg !1642
  %546 = and i8 %540, 1, !dbg !1966
  %547 = icmp ne i8 %546, 0, !dbg !1966
  %548 = and i8 %543, 1, !dbg !1966
  %549 = icmp eq i8 %548, 0, !dbg !1966
  %550 = and i1 %547, %549, !dbg !1966
  br i1 %550, label %551, label %562, !dbg !1966

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !1969
  br i1 %552, label %553, label %555, !dbg !1973

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !1969
  store i8 39, i8* %554, align 1, !dbg !1969, !tbaa !738
  br label %555, !dbg !1969

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1973
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1522, metadata !600), !dbg !1585
  %557 = icmp ult i64 %556, %545, !dbg !1974
  br i1 %557, label %558, label %560, !dbg !1977

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1974
  store i8 39, i8* %559, align 1, !dbg !1974, !tbaa !738
  br label %560, !dbg !1974

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1977
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1522, metadata !600), !dbg !1585
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1529, metadata !600), !dbg !1593
  br label %562, !dbg !1978

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1529, metadata !600), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1522, metadata !600), !dbg !1585
  %572 = icmp ult i64 %570, %563, !dbg !1979
  br i1 %572, label %573, label %575, !dbg !1982

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1979
  store i8 %565, i8* %574, align 1, !dbg !1979, !tbaa !738
  br label %575, !dbg !1979

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1982
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1522, metadata !600), !dbg !1585
  %577 = and i8 %564, 1, !dbg !1983
  %578 = icmp eq i8 %577, 0, !dbg !1983
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1531, metadata !600), !dbg !1595
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1985
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1531, metadata !600), !dbg !1595
  br label %580, !dbg !1986

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1513, metadata !600), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1531, metadata !600), !dbg !1595
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1530, metadata !600), !dbg !1594
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1529, metadata !600), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1515, metadata !600), !dbg !1579
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1523, metadata !600), !dbg !1586
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1522, metadata !600), !dbg !1585
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1521, metadata !600), !dbg !1642
  %589 = add i64 %581, 1, !dbg !1987
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1521, metadata !600), !dbg !1642
  br label %122, !dbg !1988, !llvm.loop !1989

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !1991
  %593 = and i1 %113, %592, !dbg !1993
  %594 = xor i1 %593, true, !dbg !1993
  %595 = or i1 %111, %594, !dbg !1993
  br i1 %595, label %596, label %635, !dbg !1993

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !1994
  %598 = xor i1 %597, true, !dbg !1994
  %599 = and i8 %128, 1, !dbg !1996
  %600 = icmp eq i8 %599, 0, !dbg !1996
  %601 = or i1 %600, %598, !dbg !1994
  br i1 %601, label %611, label %602, !dbg !1994

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !1997
  %604 = icmp eq i8 %603, 0, !dbg !1997
  br i1 %604, label %607, label %605, !dbg !2000

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !2001
  br label %645, !dbg !2002

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !2003
  %609 = icmp ne i64 %125, 0, !dbg !2005
  %610 = and i1 %609, %608, !dbg !2006
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1513, metadata !600), !dbg !1577
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1522, metadata !600), !dbg !1585
  br i1 %610, label %27, label %611, !dbg !2006

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !2007
  %613 = and i1 %612, %111, !dbg !2009
  br i1 %613, label %614, label %630, !dbg !2009

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1524, metadata !600), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1522, metadata !600), !dbg !1585
  %615 = load i8, i8* %99, align 1, !dbg !2010, !tbaa !738
  %616 = icmp eq i8 %615, 0, !dbg !2013
  br i1 %616, label %630, label %617, !dbg !2013

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !2014

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1522, metadata !600), !dbg !1585
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1524, metadata !600), !dbg !1587
  %622 = icmp ult i64 %621, %130, !dbg !2014
  br i1 %622, label %623, label %625, !dbg !2017

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2014
  store i8 %619, i8* %624, align 1, !dbg !2014, !tbaa !738
  br label %625, !dbg !2014

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !2017
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1522, metadata !600), !dbg !1585
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !2018
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1524, metadata !600), !dbg !1587
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1524, metadata !600), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1522, metadata !600), !dbg !1585
  %628 = load i8, i8* %627, align 1, !dbg !2010, !tbaa !738
  %629 = icmp eq i8 %628, 0, !dbg !2013
  br i1 %629, label %630, label %618, !dbg !2013, !llvm.loop !2019

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1522, metadata !600), !dbg !1585
  %632 = icmp ult i64 %631, %130, !dbg !2021
  br i1 %632, label %633, label %645, !dbg !2023

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !2024
  store i8 0, i8* %634, align 1, !dbg !2025, !tbaa !738
  br label %645, !dbg !2024

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1513, metadata !600), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1515, metadata !600), !dbg !1579
  %639 = icmp ne i32 %636, 2, !dbg !2026
  %640 = icmp eq i8 %103, 0, !dbg !2028
  %641 = or i1 %639, %640, !dbg !2029
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1516, metadata !600), !dbg !1580
  %642 = select i1 %641, i32 %636, i32 4, !dbg !2029
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1516, metadata !600), !dbg !1580
  %643 = and i32 %5, -3, !dbg !2030
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !2031
  br label %645, !dbg !2032

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !2033
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2034 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2038, metadata !600), !dbg !2042
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2039, metadata !600), !dbg !2043
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2044
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2040, metadata !600), !dbg !2045
  %4 = icmp eq i8* %3, %0, !dbg !2046
  br i1 %4, label %5, label %75, !dbg !2048

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2049
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2041, metadata !600), !dbg !2050
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2051, metadata !600), !dbg !2067
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2065, metadata !600), !dbg !2070
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2066, metadata !600), !dbg !2071
  %7 = load i8, i8* %6, align 1, !dbg !2072, !tbaa !738
  %8 = sext i8 %7 to i32, !dbg !2072
  %9 = and i32 %8, -33, !dbg !2072
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2072

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2074, metadata !600), !dbg !2088
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2086, metadata !600), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2087, metadata !600), !dbg !2093
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2094
  %12 = load i8, i8* %11, align 1, !dbg !2094, !tbaa !738
  %13 = sext i8 %12 to i32, !dbg !2094
  %14 = and i32 %13, -33, !dbg !2094
  %15 = icmp eq i32 %14, 84, !dbg !2094
  br i1 %15, label %16, label %72, !dbg !2094

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2096, metadata !600), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2107, metadata !600), !dbg !2113
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2108, metadata !600), !dbg !2114
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2115
  %18 = load i8, i8* %17, align 1, !dbg !2115, !tbaa !738
  %19 = sext i8 %18 to i32, !dbg !2115
  %20 = and i32 %19, -33, !dbg !2115
  %21 = icmp eq i32 %20, 70, !dbg !2115
  br i1 %21, label %22, label %72, !dbg !2115

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2117, metadata !600), !dbg !2129
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2127, metadata !600), !dbg !2133
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2128, metadata !600), !dbg !2134
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2135
  %24 = load i8, i8* %23, align 1, !dbg !2135, !tbaa !738
  %25 = icmp eq i8 %24, 45, !dbg !2135
  br i1 %25, label %26, label %72, !dbg !2137

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2138, metadata !600), !dbg !2149
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2147, metadata !600), !dbg !2153
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2148, metadata !600), !dbg !2154
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2155
  %28 = load i8, i8* %27, align 1, !dbg !2155, !tbaa !738
  %29 = icmp eq i8 %28, 56, !dbg !2155
  br i1 %29, label %30, label %72, !dbg !2157

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2158, metadata !600), !dbg !2168
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2166, metadata !600), !dbg !2172
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2167, metadata !600), !dbg !2173
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2174
  %32 = load i8, i8* %31, align 1, !dbg !2174, !tbaa !738
  %33 = icmp eq i8 %32, 0, !dbg !2174
  br i1 %33, label %34, label %72, !dbg !2176

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2177, !tbaa !738
  %36 = icmp eq i8 %35, 96, !dbg !2178
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.69, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.70, i64 0, i64 0), !dbg !2177
  br label %75, !dbg !2179

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2074, metadata !600), !dbg !2180
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2086, metadata !600), !dbg !2184
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2087, metadata !600), !dbg !2185
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2186
  %40 = load i8, i8* %39, align 1, !dbg !2186, !tbaa !738
  %41 = sext i8 %40 to i32, !dbg !2186
  %42 = and i32 %41, -33, !dbg !2186
  %43 = icmp eq i32 %42, 66, !dbg !2186
  br i1 %43, label %44, label %72, !dbg !2186

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2096, metadata !600), !dbg !2187
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2107, metadata !600), !dbg !2189
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2108, metadata !600), !dbg !2190
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2191
  %46 = load i8, i8* %45, align 1, !dbg !2191, !tbaa !738
  %47 = icmp eq i8 %46, 49, !dbg !2191
  br i1 %47, label %48, label %72, !dbg !2192

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2117, metadata !600), !dbg !2193
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2127, metadata !600), !dbg !2195
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2128, metadata !600), !dbg !2196
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2197
  %50 = load i8, i8* %49, align 1, !dbg !2197, !tbaa !738
  %51 = icmp eq i8 %50, 56, !dbg !2197
  br i1 %51, label %52, label %72, !dbg !2198

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2138, metadata !600), !dbg !2199
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2147, metadata !600), !dbg !2201
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2148, metadata !600), !dbg !2202
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2203
  %54 = load i8, i8* %53, align 1, !dbg !2203, !tbaa !738
  %55 = icmp eq i8 %54, 48, !dbg !2203
  br i1 %55, label %56, label %72, !dbg !2204

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2158, metadata !600), !dbg !2205
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2166, metadata !600), !dbg !2207
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2167, metadata !600), !dbg !2208
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2209
  %58 = load i8, i8* %57, align 1, !dbg !2209, !tbaa !738
  %59 = icmp eq i8 %58, 51, !dbg !2209
  br i1 %59, label %60, label %72, !dbg !2210

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2211, metadata !600), !dbg !2220
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2218, metadata !600), !dbg !2224
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2219, metadata !600), !dbg !2225
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2226
  %62 = load i8, i8* %61, align 1, !dbg !2226, !tbaa !738
  %63 = icmp eq i8 %62, 48, !dbg !2226
  br i1 %63, label %64, label %72, !dbg !2228

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2229, metadata !600), !dbg !2237
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2235, metadata !600), !dbg !2241
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2236, metadata !600), !dbg !2242
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2243
  %66 = load i8, i8* %65, align 1, !dbg !2243, !tbaa !738
  %67 = icmp eq i8 %66, 0, !dbg !2243
  br i1 %67, label %68, label %72, !dbg !2245

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2246, !tbaa !738
  %70 = icmp eq i8 %69, 96, !dbg !2247
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.71, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.72, i64 0, i64 0), !dbg !2246
  br label %75, !dbg !2248

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2249
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), !dbg !2250
  br label %75, !dbg !2251

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2252
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #12

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2253 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2257, metadata !600), !dbg !2260
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2258, metadata !600), !dbg !2261
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2259, metadata !600), !dbg !2262
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2263, metadata !600) #10, !dbg !2276
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2268, metadata !600) #10, !dbg !2278
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2269, metadata !600) #10, !dbg !2279
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2270, metadata !600) #10, !dbg !2280
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2281
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2281
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2271, metadata !600) #10, !dbg !2282
  %6 = tail call i32* @__errno_location() #17, !dbg !2283
  %7 = load i32, i32* %6, align 4, !dbg !2283, !tbaa !730
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2272, metadata !600) #10, !dbg !2284
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2285
  %9 = load i32, i32* %8, align 4, !dbg !2285, !tbaa !1445
  %10 = or i32 %9, 1, !dbg !2286
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2273, metadata !600) #10, !dbg !2287
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2288
  %12 = load i32, i32* %11, align 8, !dbg !2288, !tbaa !1385
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2289
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2290
  %15 = load i8*, i8** %14, align 8, !dbg !2290, !tbaa !1471
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2291
  %17 = load i8*, i8** %16, align 8, !dbg !2291, !tbaa !1474
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2292
  %19 = add i64 %18, 1, !dbg !2293
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2274, metadata !600) #10, !dbg !2294
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2295, metadata !600) #10, !dbg !2300
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2302
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2275, metadata !600) #10, !dbg !2303
  %21 = load i32, i32* %11, align 8, !dbg !2304, !tbaa !1385
  %22 = load i8*, i8** %14, align 8, !dbg !2305, !tbaa !1471
  %23 = load i8*, i8** %16, align 8, !dbg !2306, !tbaa !1474
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2307
  store i32 %7, i32* %6, align 4, !dbg !2308, !tbaa !730
  ret i8* %20, !dbg !2309
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2264 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2263, metadata !600), !dbg !2310
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2268, metadata !600), !dbg !2311
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2269, metadata !600), !dbg !2312
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2270, metadata !600), !dbg !2313
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2314
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2314
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2271, metadata !600), !dbg !2315
  %7 = tail call i32* @__errno_location() #17, !dbg !2316
  %8 = load i32, i32* %7, align 4, !dbg !2316, !tbaa !730
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2272, metadata !600), !dbg !2317
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2318
  %10 = load i32, i32* %9, align 4, !dbg !2318, !tbaa !1445
  %11 = icmp ne i64* %2, null, !dbg !2319
  %12 = xor i1 %11, true, !dbg !2319
  %13 = zext i1 %12 to i32, !dbg !2319
  %14 = or i32 %10, %13, !dbg !2320
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2273, metadata !600), !dbg !2321
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2322
  %16 = load i32, i32* %15, align 8, !dbg !2322, !tbaa !1385
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2323
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2324
  %19 = load i8*, i8** %18, align 8, !dbg !2324, !tbaa !1471
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2325
  %21 = load i8*, i8** %20, align 8, !dbg !2325, !tbaa !1474
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2326
  %23 = add i64 %22, 1, !dbg !2327
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2274, metadata !600), !dbg !2328
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2295, metadata !600) #10, !dbg !2329
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2331
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2275, metadata !600), !dbg !2332
  %25 = load i32, i32* %15, align 8, !dbg !2333, !tbaa !1385
  %26 = load i8*, i8** %18, align 8, !dbg !2334, !tbaa !1471
  %27 = load i8*, i8** %20, align 8, !dbg !2335, !tbaa !1474
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2336
  store i32 %8, i32* %7, align 4, !dbg !2337, !tbaa !730
  br i1 %11, label %29, label %30, !dbg !2338

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2339, !tbaa !801
  br label %30, !dbg !2341

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2342
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2343 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2347, !tbaa !607
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2345, metadata !600), !dbg !2348
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2346, metadata !600), !dbg !2349
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2346, metadata !600), !dbg !2349
  %2 = load i32, i32* @nslots, align 4, !dbg !2350, !tbaa !730
  %3 = icmp sgt i32 %2, 1, !dbg !2353
  br i1 %3, label %4, label %13, !dbg !2354

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2355

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2346, metadata !600), !dbg !2349
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2355
  %8 = load i8*, i8** %7, align 8, !dbg !2355, !tbaa !2356
  tail call void @free(i8* %8) #10, !dbg !2358
  %9 = add nuw i64 %6, 1, !dbg !2359
  %10 = load i32, i32* @nslots, align 4, !dbg !2350, !tbaa !730
  %11 = sext i32 %10 to i64, !dbg !2353
  %12 = icmp slt i64 %9, %11, !dbg !2353
  br i1 %12, label %5, label %13, !dbg !2354, !llvm.loop !2360

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2362
  %15 = load i8*, i8** %14, align 8, !dbg !2362, !tbaa !2356
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2364
  br i1 %16, label %18, label %17, !dbg !2365

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #10, !dbg !2366
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2368, !tbaa !2369
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2370, !tbaa !2356
  br label %18, !dbg !2371

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2372
  br i1 %19, label %22, label %20, !dbg !2374

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2375
  tail call void @free(i8* %21) #10, !dbg !2377
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2378, !tbaa !607
  br label %22, !dbg !2379

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2380, !tbaa !730
  ret void, !dbg !2381
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2382 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2386, metadata !600), !dbg !2388
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2387, metadata !600), !dbg !2389
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2390
  ret i8* %3, !dbg !2391
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2392 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2396, metadata !600), !dbg !2410
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2397, metadata !600), !dbg !2411
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2398, metadata !600), !dbg !2412
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2399, metadata !600), !dbg !2413
  %5 = tail call i32* @__errno_location() #17, !dbg !2414
  %6 = load i32, i32* %5, align 4, !dbg !2414, !tbaa !730
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2400, metadata !600), !dbg !2415
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2416, !tbaa !607
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2401, metadata !600), !dbg !2417
  %8 = icmp slt i32 %0, 0, !dbg !2418
  br i1 %8, label %9, label %10, !dbg !2420

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2421
  unreachable, !dbg !2421

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2422, !tbaa !730
  %12 = icmp sgt i32 %11, %0, !dbg !2423
  br i1 %12, label %34, label %13, !dbg !2424

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2425
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2426
  br i1 %15, label %16, label %17, !dbg !2428

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2429
  unreachable, !dbg !2429

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2430
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2430
  %20 = add nsw i32 %0, 1, !dbg !2431
  %21 = sext i32 %20 to i64, !dbg !2432
  %22 = shl nsw i64 %21, 4, !dbg !2433
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2434
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2434
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2401, metadata !600), !dbg !2417
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2435, !tbaa !607
  br i1 %14, label %25, label %26, !dbg !2436

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2437, !tbaa.struct !2439
  br label %26, !dbg !2440

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2441, !tbaa !730
  %28 = sext i32 %27 to i64, !dbg !2442
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2442
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2443
  %31 = sub nsw i32 %20, %27, !dbg !2444
  %32 = sext i32 %31 to i64, !dbg !2445
  %33 = shl nsw i64 %32, 4, !dbg !2446
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2443
  store i32 %20, i32* @nslots, align 4, !dbg !2447, !tbaa !730
  br label %34, !dbg !2448

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2401, metadata !600), !dbg !2417
  %36 = sext i32 %0 to i64, !dbg !2449
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2450
  %38 = load i64, i64* %37, align 8, !dbg !2450, !tbaa !2369
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2405, metadata !600), !dbg !2451
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2452
  %40 = load i8*, i8** %39, align 8, !dbg !2452, !tbaa !2356
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2407, metadata !600), !dbg !2453
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2454
  %42 = load i32, i32* %41, align 4, !dbg !2454, !tbaa !1445
  %43 = or i32 %42, 1, !dbg !2455
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2408, metadata !600), !dbg !2456
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2457
  %45 = load i32, i32* %44, align 8, !dbg !2457, !tbaa !1385
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2458
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2459
  %48 = load i8*, i8** %47, align 8, !dbg !2459, !tbaa !1471
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2460
  %50 = load i8*, i8** %49, align 8, !dbg !2460, !tbaa !1474
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2461
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2409, metadata !600), !dbg !2462
  %52 = icmp ugt i64 %38, %51, !dbg !2463
  br i1 %52, label %63, label %53, !dbg !2465

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2466
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2405, metadata !600), !dbg !2451
  store i64 %54, i64* %37, align 8, !dbg !2468, !tbaa !2369
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2469
  br i1 %55, label %57, label %56, !dbg !2471

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2472
  br label %57, !dbg !2472

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2295, metadata !600) #10, !dbg !2473
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2475
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2407, metadata !600), !dbg !2453
  store i8* %58, i8** %39, align 8, !dbg !2476, !tbaa !2356
  %59 = load i32, i32* %44, align 8, !dbg !2477, !tbaa !1385
  %60 = load i8*, i8** %47, align 8, !dbg !2478, !tbaa !1471
  %61 = load i8*, i8** %49, align 8, !dbg !2479, !tbaa !1474
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2480
  br label %63, !dbg !2481

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2407, metadata !600), !dbg !2453
  store i32 %6, i32* %5, align 4, !dbg !2482, !tbaa !730
  ret i8* %64, !dbg !2483
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2484 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2488, metadata !600), !dbg !2491
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2489, metadata !600), !dbg !2492
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2490, metadata !600), !dbg !2493
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2494
  ret i8* %4, !dbg !2495
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2496 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2500, metadata !600), !dbg !2501
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2386, metadata !600) #10, !dbg !2502
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2387, metadata !600) #10, !dbg !2504
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2505
  ret i8* %2, !dbg !2506
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2507 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2511, metadata !600), !dbg !2513
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2512, metadata !600), !dbg !2514
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2488, metadata !600) #10, !dbg !2515
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2489, metadata !600) #10, !dbg !2517
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2490, metadata !600) #10, !dbg !2518
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2519
  ret i8* %3, !dbg !2520
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2521 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2529, metadata !2535), !dbg !2536
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2525, metadata !600), !dbg !2538
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2526, metadata !600), !dbg !2539
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2527, metadata !600), !dbg !2540
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2541
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2541
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2528, metadata !600), !dbg !2542
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2534, metadata !600) #10, !dbg !2543
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2544
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2544
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2529, metadata !600) #10, !dbg !2536
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2529, metadata !2545) #10, !dbg !2536
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2536
  %8 = icmp eq i32 %1, 10, !dbg !2546
  br i1 %8, label %9, label %10, !dbg !2548

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2549, !noalias !2550
  unreachable, !dbg !2549

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2529, metadata !2545) #10, !dbg !2536
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2553
  store i32 %1, i32* %11, align 8, !dbg !2553, !alias.scope !2550
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2553
  %13 = bitcast i32* %12 to i8*, !dbg !2553
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2553
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2554
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2528, metadata !600), !dbg !2542
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2555
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2556
  ret i8* %14, !dbg !2557
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2558 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2529, metadata !2535), !dbg !2567
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2562, metadata !600), !dbg !2569
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2563, metadata !600), !dbg !2570
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2564, metadata !600), !dbg !2571
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2565, metadata !600), !dbg !2572
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2573
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2573
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2566, metadata !600), !dbg !2574
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2534, metadata !600) #10, !dbg !2575
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2576
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2576
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2529, metadata !600) #10, !dbg !2567
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2529, metadata !2545) #10, !dbg !2567
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2567
  %9 = icmp eq i32 %1, 10, !dbg !2577
  br i1 %9, label %10, label %11, !dbg !2578

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2579, !noalias !2580
  unreachable, !dbg !2579

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2529, metadata !2545) #10, !dbg !2567
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2583
  store i32 %1, i32* %12, align 8, !dbg !2583, !alias.scope !2580
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2583
  %14 = bitcast i32* %13 to i8*, !dbg !2583
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2583
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2584
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2566, metadata !600), !dbg !2574
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2585
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2586
  ret i8* %15, !dbg !2587
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2588 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2529, metadata !2535), !dbg !2594
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2592, metadata !600), !dbg !2597
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2593, metadata !600), !dbg !2598
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2525, metadata !600) #10, !dbg !2599
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2526, metadata !600) #10, !dbg !2600
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2527, metadata !600) #10, !dbg !2601
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2602
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2602
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2528, metadata !600) #10, !dbg !2603
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2534, metadata !600) #10, !dbg !2604
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2605
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2605
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2529, metadata !600) #10, !dbg !2594
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2529, metadata !2545) #10, !dbg !2594
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2594
  %7 = icmp eq i32 %0, 10, !dbg !2606
  br i1 %7, label %8, label %9, !dbg !2607

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2608, !noalias !2609
  unreachable, !dbg !2608

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2529, metadata !2545) #10, !dbg !2594
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2612
  store i32 %0, i32* %10, align 8, !dbg !2612, !alias.scope !2609
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2612
  %12 = bitcast i32* %11 to i8*, !dbg !2612
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2612
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2613
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2528, metadata !600) #10, !dbg !2603
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2614
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2615
  ret i8* %13, !dbg !2616
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2617 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2529, metadata !2535), !dbg !2624
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2621, metadata !600), !dbg !2627
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2622, metadata !600), !dbg !2628
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2623, metadata !600), !dbg !2629
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2562, metadata !600) #10, !dbg !2630
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2563, metadata !600) #10, !dbg !2631
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2564, metadata !600) #10, !dbg !2632
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2565, metadata !600) #10, !dbg !2633
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2634
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2634
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2566, metadata !600) #10, !dbg !2635
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2534, metadata !600) #10, !dbg !2636
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2637
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2637
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2529, metadata !600) #10, !dbg !2624
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2529, metadata !2545) #10, !dbg !2624
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2624
  %8 = icmp eq i32 %0, 10, !dbg !2638
  br i1 %8, label %9, label %10, !dbg !2639

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2640, !noalias !2641
  unreachable, !dbg !2640

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2529, metadata !2545) #10, !dbg !2624
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2644
  store i32 %0, i32* %11, align 8, !dbg !2644, !alias.scope !2641
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2644
  %13 = bitcast i32* %12 to i8*, !dbg !2644
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2644
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2645
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2566, metadata !600) #10, !dbg !2635
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2646
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2647
  ret i8* %14, !dbg !2648
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2649 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2653, metadata !600), !dbg !2657
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2654, metadata !600), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2655, metadata !600), !dbg !2659
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2660
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2660
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2661, !tbaa.struct !2662
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2656, metadata !600), !dbg !2663
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1404, metadata !600), !dbg !2664
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1405, metadata !600), !dbg !2666
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1406, metadata !600), !dbg !2667
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1407, metadata !600), !dbg !2668
  %6 = lshr i8 %2, 5, !dbg !2669
  %7 = zext i8 %6 to i64, !dbg !2669
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2670
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1408, metadata !600), !dbg !2671
  %9 = and i8 %2, 31, !dbg !2672
  %10 = zext i8 %9 to i32, !dbg !2673
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1410, metadata !600), !dbg !2674
  %11 = load i32, i32* %8, align 4, !dbg !2675, !tbaa !730
  %12 = lshr i32 %11, %10, !dbg !2676
  %13 = and i32 %12, 1, !dbg !2677
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1411, metadata !600), !dbg !2678
  %14 = xor i32 %13, 1, !dbg !2679
  %15 = shl i32 %14, %10, !dbg !2680
  %16 = xor i32 %15, %11, !dbg !2681
  store i32 %16, i32* %8, align 4, !dbg !2681, !tbaa !730
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2656, metadata !600), !dbg !2663
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2682
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2683
  ret i8* %17, !dbg !2684
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2685 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2689, metadata !600), !dbg !2691
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2690, metadata !600), !dbg !2692
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2653, metadata !600) #10, !dbg !2693
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2654, metadata !600) #10, !dbg !2695
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2655, metadata !600) #10, !dbg !2696
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2697
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2697
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2698, !tbaa.struct !2662
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2656, metadata !600) #10, !dbg !2699
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1404, metadata !600) #10, !dbg !2700
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1405, metadata !600) #10, !dbg !2702
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1406, metadata !600) #10, !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1407, metadata !600) #10, !dbg !2704
  %5 = lshr i8 %1, 5, !dbg !2705
  %6 = zext i8 %5 to i64, !dbg !2705
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2706
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1408, metadata !600) #10, !dbg !2707
  %8 = and i8 %1, 31, !dbg !2708
  %9 = zext i8 %8 to i32, !dbg !2709
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1410, metadata !600) #10, !dbg !2710
  %10 = load i32, i32* %7, align 4, !dbg !2711, !tbaa !730
  %11 = lshr i32 %10, %9, !dbg !2712
  %12 = and i32 %11, 1, !dbg !2713
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1411, metadata !600) #10, !dbg !2714
  %13 = xor i32 %12, 1, !dbg !2715
  %14 = shl i32 %13, %9, !dbg !2716
  %15 = xor i32 %14, %10, !dbg !2717
  store i32 %15, i32* %7, align 4, !dbg !2717, !tbaa !730
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2656, metadata !600) #10, !dbg !2699
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2718
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2719
  ret i8* %16, !dbg !2720
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2721 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2723, metadata !600), !dbg !2724
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2689, metadata !600) #10, !dbg !2725
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2690, metadata !600) #10, !dbg !2727
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2653, metadata !600) #10, !dbg !2728
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2654, metadata !600) #10, !dbg !2730
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2655, metadata !600) #10, !dbg !2731
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2732
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2732
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2733, !tbaa.struct !2662
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2656, metadata !600) #10, !dbg !2734
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1404, metadata !600) #10, !dbg !2735
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1405, metadata !600) #10, !dbg !2737
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1406, metadata !600) #10, !dbg !2738
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1407, metadata !600) #10, !dbg !2739
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2740
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1408, metadata !600) #10, !dbg !2741
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1410, metadata !600) #10, !dbg !2742
  %5 = load i32, i32* %4, align 4, !dbg !2743, !tbaa !730
  %6 = or i32 %5, 67108864, !dbg !2744
  store i32 %6, i32* %4, align 4, !dbg !2744, !tbaa !730
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2656, metadata !600) #10, !dbg !2734
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2745
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2746
  ret i8* %7, !dbg !2747
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2748 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2750, metadata !600), !dbg !2752
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2751, metadata !600), !dbg !2753
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2653, metadata !600) #10, !dbg !2754
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2654, metadata !600) #10, !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2655, metadata !600) #10, !dbg !2757
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2758
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2758
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2759, !tbaa.struct !2662
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2656, metadata !600) #10, !dbg !2760
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1404, metadata !600) #10, !dbg !2761
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1405, metadata !600) #10, !dbg !2763
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1406, metadata !600) #10, !dbg !2764
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1407, metadata !600) #10, !dbg !2765
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2766
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1408, metadata !600) #10, !dbg !2767
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1410, metadata !600) #10, !dbg !2768
  %6 = load i32, i32* %5, align 4, !dbg !2769, !tbaa !730
  %7 = or i32 %6, 67108864, !dbg !2770
  store i32 %7, i32* %5, align 4, !dbg !2770, !tbaa !730
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2656, metadata !600) #10, !dbg !2760
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2771
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2772
  ret i8* %8, !dbg !2773
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2774 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2529, metadata !2535), !dbg !2780
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2776, metadata !600), !dbg !2782
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2777, metadata !600), !dbg !2783
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2778, metadata !600), !dbg !2784
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2785
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2785
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2534, metadata !600) #10, !dbg !2786
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2787
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2787
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2529, metadata !600) #10, !dbg !2780
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2529, metadata !2545) #10, !dbg !2780
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2780
  %9 = icmp eq i32 %1, 10, !dbg !2788
  br i1 %9, label %10, label %11, !dbg !2789

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2790, !noalias !2791
  unreachable, !dbg !2790

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2529, metadata !2545) #10, !dbg !2780
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2794
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2794
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2795
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2796
  store i32 %1, i32* %13, align 8, !dbg !2796
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2796
  %15 = bitcast i32* %14 to i8*, !dbg !2796
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2796
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2779, metadata !600), !dbg !2797
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1404, metadata !600), !dbg !2798
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1405, metadata !600), !dbg !2800
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1406, metadata !600), !dbg !2801
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1407, metadata !600), !dbg !2802
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2803
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1408, metadata !600), !dbg !2804
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1410, metadata !600), !dbg !2805
  %17 = load i32, i32* %16, align 4, !dbg !2806, !tbaa !730
  %18 = or i32 %17, 67108864, !dbg !2807
  store i32 %18, i32* %16, align 4, !dbg !2807, !tbaa !730
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2779, metadata !600), !dbg !2797
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2808
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2809
  ret i8* %19, !dbg !2810
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2811 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2815, metadata !600), !dbg !2819
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2816, metadata !600), !dbg !2820
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2817, metadata !600), !dbg !2821
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2818, metadata !600), !dbg !2822
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2823, metadata !600) #10, !dbg !2833
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2828, metadata !600) #10, !dbg !2835
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2829, metadata !600) #10, !dbg !2836
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2830, metadata !600) #10, !dbg !2837
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2831, metadata !600) #10, !dbg !2838
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2839
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2839
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2840, !tbaa.struct !2662
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2832, metadata !600) #10, !dbg !2841
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1453, metadata !600) #10, !dbg !2842
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1454, metadata !600) #10, !dbg !2844
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1455, metadata !600) #10, !dbg !2845
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1453, metadata !600) #10, !dbg !2842
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1453, metadata !600) #10, !dbg !2842
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2846
  store i32 10, i32* %7, align 8, !dbg !2847, !tbaa !1385
  %8 = icmp ne i8* %1, null, !dbg !2848
  %9 = icmp ne i8* %2, null, !dbg !2849
  %10 = and i1 %8, %9, !dbg !2850
  br i1 %10, label %12, label %11, !dbg !2850

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2851
  unreachable, !dbg !2851

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2852
  store i8* %1, i8** %13, align 8, !dbg !2853, !tbaa !1471
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2854
  store i8* %2, i8** %14, align 8, !dbg !2855, !tbaa !1474
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2832, metadata !600) #10, !dbg !2841
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2856
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2857
  ret i8* %15, !dbg !2858
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2824 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2823, metadata !600), !dbg !2859
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2828, metadata !600), !dbg !2860
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2829, metadata !600), !dbg !2861
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2830, metadata !600), !dbg !2862
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2831, metadata !600), !dbg !2863
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2864
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2864
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2865, !tbaa.struct !2662
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2832, metadata !600), !dbg !2866
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1453, metadata !600) #10, !dbg !2867
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1454, metadata !600) #10, !dbg !2869
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1455, metadata !600) #10, !dbg !2870
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1453, metadata !600) #10, !dbg !2867
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1453, metadata !600) #10, !dbg !2867
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2871
  store i32 10, i32* %8, align 8, !dbg !2872, !tbaa !1385
  %9 = icmp ne i8* %1, null, !dbg !2873
  %10 = icmp ne i8* %2, null, !dbg !2874
  %11 = and i1 %9, %10, !dbg !2875
  br i1 %11, label %13, label %12, !dbg !2875

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2876
  unreachable, !dbg !2876

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2877
  store i8* %1, i8** %14, align 8, !dbg !2878, !tbaa !1471
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2879
  store i8* %2, i8** %15, align 8, !dbg !2880, !tbaa !1474
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2832, metadata !600), !dbg !2866
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2881
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2882
  ret i8* %16, !dbg !2883
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2884 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2888, metadata !600), !dbg !2891
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2889, metadata !600), !dbg !2892
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2890, metadata !600), !dbg !2893
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2815, metadata !600) #10, !dbg !2894
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2816, metadata !600) #10, !dbg !2896
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2817, metadata !600) #10, !dbg !2897
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2818, metadata !600) #10, !dbg !2898
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2823, metadata !600) #10, !dbg !2899
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2828, metadata !600) #10, !dbg !2901
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2829, metadata !600) #10, !dbg !2902
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2830, metadata !600) #10, !dbg !2903
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2831, metadata !600) #10, !dbg !2904
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2905
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2905
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2906, !tbaa.struct !2662
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2832, metadata !600) #10, !dbg !2907
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1453, metadata !600) #10, !dbg !2908
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1454, metadata !600) #10, !dbg !2910
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1455, metadata !600) #10, !dbg !2911
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1453, metadata !600) #10, !dbg !2908
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1453, metadata !600) #10, !dbg !2908
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2912
  store i32 10, i32* %6, align 8, !dbg !2913, !tbaa !1385
  %7 = icmp ne i8* %0, null, !dbg !2914
  %8 = icmp ne i8* %1, null, !dbg !2915
  %9 = and i1 %7, %8, !dbg !2916
  br i1 %9, label %11, label %10, !dbg !2916

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2917
  unreachable, !dbg !2917

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2918
  store i8* %0, i8** %12, align 8, !dbg !2919, !tbaa !1471
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2920
  store i8* %1, i8** %13, align 8, !dbg !2921, !tbaa !1474
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2832, metadata !600) #10, !dbg !2907
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2922
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2923
  ret i8* %14, !dbg !2924
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2925 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2929, metadata !600), !dbg !2933
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2930, metadata !600), !dbg !2934
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2931, metadata !600), !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2932, metadata !600), !dbg !2936
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2823, metadata !600) #10, !dbg !2937
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2828, metadata !600) #10, !dbg !2939
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2829, metadata !600) #10, !dbg !2940
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2830, metadata !600) #10, !dbg !2941
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2831, metadata !600) #10, !dbg !2942
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2943
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2943
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2944, !tbaa.struct !2662
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2832, metadata !600) #10, !dbg !2945
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1453, metadata !600) #10, !dbg !2946
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1454, metadata !600) #10, !dbg !2948
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1455, metadata !600) #10, !dbg !2949
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1453, metadata !600) #10, !dbg !2946
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1453, metadata !600) #10, !dbg !2946
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2950
  store i32 10, i32* %7, align 8, !dbg !2951, !tbaa !1385
  %8 = icmp ne i8* %0, null, !dbg !2952
  %9 = icmp ne i8* %1, null, !dbg !2953
  %10 = and i1 %8, %9, !dbg !2954
  br i1 %10, label %12, label %11, !dbg !2954

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2955
  unreachable, !dbg !2955

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2956
  store i8* %0, i8** %13, align 8, !dbg !2957, !tbaa !1471
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2958
  store i8* %1, i8** %14, align 8, !dbg !2959, !tbaa !1474
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2832, metadata !600) #10, !dbg !2945
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2960
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2961
  ret i8* %15, !dbg !2962
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2963 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2967, metadata !600), !dbg !2970
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2968, metadata !600), !dbg !2971
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2969, metadata !600), !dbg !2972
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2973
  ret i8* %4, !dbg !2974
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2975 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2979, metadata !600), !dbg !2981
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2980, metadata !600), !dbg !2982
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2967, metadata !600) #10, !dbg !2983
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2968, metadata !600) #10, !dbg !2985
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2969, metadata !600) #10, !dbg !2986
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2987
  ret i8* %3, !dbg !2988
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2989 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2993, metadata !600), !dbg !2995
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2994, metadata !600), !dbg !2996
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2967, metadata !600) #10, !dbg !2997
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2968, metadata !600) #10, !dbg !2999
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2969, metadata !600) #10, !dbg !3000
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3001
  ret i8* %3, !dbg !3002
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3003 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3007, metadata !600), !dbg !3008
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2993, metadata !600) #10, !dbg !3009
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2994, metadata !600) #10, !dbg !3011
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2967, metadata !600) #10, !dbg !3012
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2968, metadata !600) #10, !dbg !3014
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2969, metadata !600) #10, !dbg !3015
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3016
  ret i8* %2, !dbg !3017
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3018 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3075, metadata !600), !dbg !3081
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3076, metadata !600), !dbg !3082
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3077, metadata !600), !dbg !3083
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3078, metadata !600), !dbg !3084
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3079, metadata !600), !dbg !3085
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3080, metadata !600), !dbg !3086
  %7 = icmp eq i8* %1, null, !dbg !3087
  br i1 %7, label %10, label %8, !dbg !3089

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3090
  br label %12, !dbg !3090

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.82, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3091
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.83, i64 0, i64 0), i32 5) #10, !dbg !3092
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !3092
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.84, i64 0, i64 0), i32 5) #10, !dbg !3093
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !3093
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
  ], !dbg !3094

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3095
  unreachable, !dbg !3095

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.85, i64 0, i64 0), i32 5) #10, !dbg !3097
  %20 = load i8*, i8** %4, align 8, !dbg !3097, !tbaa !607
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3097
  br label %146, !dbg !3098

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.86, i64 0, i64 0), i32 5) #10, !dbg !3099
  %24 = load i8*, i8** %4, align 8, !dbg !3099, !tbaa !607
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3099
  %26 = load i8*, i8** %25, align 8, !dbg !3099, !tbaa !607
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3099
  br label %146, !dbg !3100

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.87, i64 0, i64 0), i32 5) #10, !dbg !3101
  %30 = load i8*, i8** %4, align 8, !dbg !3101, !tbaa !607
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3101
  %32 = load i8*, i8** %31, align 8, !dbg !3101, !tbaa !607
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3101
  %34 = load i8*, i8** %33, align 8, !dbg !3101, !tbaa !607
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3101
  br label %146, !dbg !3102

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.88, i64 0, i64 0), i32 5) #10, !dbg !3103
  %38 = load i8*, i8** %4, align 8, !dbg !3103, !tbaa !607
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3103
  %40 = load i8*, i8** %39, align 8, !dbg !3103, !tbaa !607
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3103
  %42 = load i8*, i8** %41, align 8, !dbg !3103, !tbaa !607
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3103
  %44 = load i8*, i8** %43, align 8, !dbg !3103, !tbaa !607
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3103
  br label %146, !dbg !3104

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.89, i64 0, i64 0), i32 5) #10, !dbg !3105
  %48 = load i8*, i8** %4, align 8, !dbg !3105, !tbaa !607
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3105
  %50 = load i8*, i8** %49, align 8, !dbg !3105, !tbaa !607
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3105
  %52 = load i8*, i8** %51, align 8, !dbg !3105, !tbaa !607
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3105
  %54 = load i8*, i8** %53, align 8, !dbg !3105, !tbaa !607
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3105
  %56 = load i8*, i8** %55, align 8, !dbg !3105, !tbaa !607
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3105
  br label %146, !dbg !3106

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.90, i64 0, i64 0), i32 5) #10, !dbg !3107
  %60 = load i8*, i8** %4, align 8, !dbg !3107, !tbaa !607
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3107
  %62 = load i8*, i8** %61, align 8, !dbg !3107, !tbaa !607
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3107
  %64 = load i8*, i8** %63, align 8, !dbg !3107, !tbaa !607
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3107
  %66 = load i8*, i8** %65, align 8, !dbg !3107, !tbaa !607
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3107
  %68 = load i8*, i8** %67, align 8, !dbg !3107, !tbaa !607
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3107
  %70 = load i8*, i8** %69, align 8, !dbg !3107, !tbaa !607
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3107
  br label %146, !dbg !3108

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.91, i64 0, i64 0), i32 5) #10, !dbg !3109
  %74 = load i8*, i8** %4, align 8, !dbg !3109, !tbaa !607
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3109
  %76 = load i8*, i8** %75, align 8, !dbg !3109, !tbaa !607
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3109
  %78 = load i8*, i8** %77, align 8, !dbg !3109, !tbaa !607
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3109
  %80 = load i8*, i8** %79, align 8, !dbg !3109, !tbaa !607
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3109
  %82 = load i8*, i8** %81, align 8, !dbg !3109, !tbaa !607
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3109
  %84 = load i8*, i8** %83, align 8, !dbg !3109, !tbaa !607
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3109
  %86 = load i8*, i8** %85, align 8, !dbg !3109, !tbaa !607
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3109
  br label %146, !dbg !3110

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.92, i64 0, i64 0), i32 5) #10, !dbg !3111
  %90 = load i8*, i8** %4, align 8, !dbg !3111, !tbaa !607
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3111
  %92 = load i8*, i8** %91, align 8, !dbg !3111, !tbaa !607
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3111
  %94 = load i8*, i8** %93, align 8, !dbg !3111, !tbaa !607
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3111
  %96 = load i8*, i8** %95, align 8, !dbg !3111, !tbaa !607
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3111
  %98 = load i8*, i8** %97, align 8, !dbg !3111, !tbaa !607
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3111
  %100 = load i8*, i8** %99, align 8, !dbg !3111, !tbaa !607
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3111
  %102 = load i8*, i8** %101, align 8, !dbg !3111, !tbaa !607
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3111
  %104 = load i8*, i8** %103, align 8, !dbg !3111, !tbaa !607
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3111
  br label %146, !dbg !3112

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.93, i64 0, i64 0), i32 5) #10, !dbg !3113
  %108 = load i8*, i8** %4, align 8, !dbg !3113, !tbaa !607
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3113
  %110 = load i8*, i8** %109, align 8, !dbg !3113, !tbaa !607
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3113
  %112 = load i8*, i8** %111, align 8, !dbg !3113, !tbaa !607
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3113
  %114 = load i8*, i8** %113, align 8, !dbg !3113, !tbaa !607
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3113
  %116 = load i8*, i8** %115, align 8, !dbg !3113, !tbaa !607
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3113
  %118 = load i8*, i8** %117, align 8, !dbg !3113, !tbaa !607
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3113
  %120 = load i8*, i8** %119, align 8, !dbg !3113, !tbaa !607
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3113
  %122 = load i8*, i8** %121, align 8, !dbg !3113, !tbaa !607
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3113
  %124 = load i8*, i8** %123, align 8, !dbg !3113, !tbaa !607
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3113
  br label %146, !dbg !3114

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.94, i64 0, i64 0), i32 5) #10, !dbg !3115
  %128 = load i8*, i8** %4, align 8, !dbg !3115, !tbaa !607
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3115
  %130 = load i8*, i8** %129, align 8, !dbg !3115, !tbaa !607
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3115
  %132 = load i8*, i8** %131, align 8, !dbg !3115, !tbaa !607
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3115
  %134 = load i8*, i8** %133, align 8, !dbg !3115, !tbaa !607
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3115
  %136 = load i8*, i8** %135, align 8, !dbg !3115, !tbaa !607
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3115
  %138 = load i8*, i8** %137, align 8, !dbg !3115, !tbaa !607
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3115
  %140 = load i8*, i8** %139, align 8, !dbg !3115, !tbaa !607
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3115
  %142 = load i8*, i8** %141, align 8, !dbg !3115, !tbaa !607
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3115
  %144 = load i8*, i8** %143, align 8, !dbg !3115, !tbaa !607
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3115
  br label %146, !dbg !3116

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3117
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3118 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3122, metadata !600), !dbg !3128
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3123, metadata !600), !dbg !3129
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3124, metadata !600), !dbg !3130
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3125, metadata !600), !dbg !3131
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3126, metadata !600), !dbg !3132
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3127, metadata !600), !dbg !3133
  br label %6, !dbg !3134

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3127, metadata !600), !dbg !3133
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3136
  %9 = load i8*, i8** %8, align 8, !dbg !3136, !tbaa !607
  %10 = icmp eq i8* %9, null, !dbg !3138
  %11 = add i64 %7, 1, !dbg !3139
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3127, metadata !600), !dbg !3133
  br i1 %10, label %12, label %6, !dbg !3138, !llvm.loop !3140

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3142
  ret void, !dbg !3143
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3144 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3155, metadata !600), !dbg !3163
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3156, metadata !600), !dbg !3164
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3157, metadata !600), !dbg !3165
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3158, metadata !600), !dbg !3166
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3159, metadata !600), !dbg !3167
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3168
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3168
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3161, metadata !600), !dbg !3169
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3160, metadata !600), !dbg !3170
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3160, metadata !600), !dbg !3170
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3160, metadata !600), !dbg !3170
  %11 = load i32, i32* %8, align 8, !dbg !3171
  %12 = icmp ult i32 %11, 41, !dbg !3171
  br i1 %12, label %13, label %18, !dbg !3171

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3171
  %15 = sext i32 %11 to i64, !dbg !3171
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3171
  %17 = add i32 %11, 8, !dbg !3171
  store i32 %17, i32* %8, align 8, !dbg !3171
  br label %21, !dbg !3171

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3171
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3171
  store i8* %20, i8** %10, align 8, !dbg !3171
  br label %21, !dbg !3171

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3171
  %25 = load i8*, i8** %24, align 8, !dbg !3171
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3174
  store i8* %25, i8** %26, align 16, !dbg !3175, !tbaa !607
  %27 = icmp eq i8* %25, null, !dbg !3176
  br i1 %27, label %30, label %28, !dbg !3177

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3160, metadata !600), !dbg !3170
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3160, metadata !600), !dbg !3170
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3160, metadata !600), !dbg !3170
  %29 = icmp ult i32 %22, 41, !dbg !3171
  br i1 %29, label %35, label %32, !dbg !3171

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3178
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3179
  ret void, !dbg !3179

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3171
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3171
  store i8* %34, i8** %10, align 8, !dbg !3171
  br label %40, !dbg !3171

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3171
  %37 = sext i32 %22 to i64, !dbg !3171
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3171
  %39 = add i32 %22, 8, !dbg !3171
  store i32 %39, i32* %8, align 8, !dbg !3171
  br label %40, !dbg !3171

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3171
  %44 = load i8*, i8** %43, align 8, !dbg !3171
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3174
  store i8* %44, i8** %45, align 8, !dbg !3175, !tbaa !607
  %46 = icmp eq i8* %44, null, !dbg !3176
  br i1 %46, label %30, label %47, !dbg !3177

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3160, metadata !600), !dbg !3170
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3160, metadata !600), !dbg !3170
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3160, metadata !600), !dbg !3170
  %48 = icmp ult i32 %41, 41, !dbg !3171
  br i1 %48, label %52, label %49, !dbg !3171

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3171
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3171
  store i8* %51, i8** %10, align 8, !dbg !3171
  br label %57, !dbg !3171

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3171
  %54 = sext i32 %41 to i64, !dbg !3171
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3171
  %56 = add i32 %41, 8, !dbg !3171
  store i32 %56, i32* %8, align 8, !dbg !3171
  br label %57, !dbg !3171

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3171
  %61 = load i8*, i8** %60, align 8, !dbg !3171
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3174
  store i8* %61, i8** %62, align 16, !dbg !3175, !tbaa !607
  %63 = icmp eq i8* %61, null, !dbg !3176
  br i1 %63, label %30, label %64, !dbg !3177

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3160, metadata !600), !dbg !3170
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3160, metadata !600), !dbg !3170
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3160, metadata !600), !dbg !3170
  %65 = icmp ult i32 %58, 41, !dbg !3171
  br i1 %65, label %69, label %66, !dbg !3171

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3171
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3171
  store i8* %68, i8** %10, align 8, !dbg !3171
  br label %74, !dbg !3171

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3171
  %71 = sext i32 %58 to i64, !dbg !3171
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3171
  %73 = add i32 %58, 8, !dbg !3171
  store i32 %73, i32* %8, align 8, !dbg !3171
  br label %74, !dbg !3171

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3171
  %78 = load i8*, i8** %77, align 8, !dbg !3171
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3174
  store i8* %78, i8** %79, align 8, !dbg !3175, !tbaa !607
  %80 = icmp eq i8* %78, null, !dbg !3176
  br i1 %80, label %30, label %81, !dbg !3177

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3160, metadata !600), !dbg !3170
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3160, metadata !600), !dbg !3170
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3160, metadata !600), !dbg !3170
  %82 = icmp ult i32 %75, 41, !dbg !3171
  br i1 %82, label %86, label %83, !dbg !3171

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3171
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3171
  store i8* %85, i8** %10, align 8, !dbg !3171
  br label %91, !dbg !3171

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3171
  %88 = sext i32 %75 to i64, !dbg !3171
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3171
  %90 = add i32 %75, 8, !dbg !3171
  store i32 %90, i32* %8, align 8, !dbg !3171
  br label %91, !dbg !3171

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3171
  %95 = load i8*, i8** %94, align 8, !dbg !3171
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3174
  store i8* %95, i8** %96, align 16, !dbg !3175, !tbaa !607
  %97 = icmp eq i8* %95, null, !dbg !3176
  br i1 %97, label %30, label %98, !dbg !3177

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3160, metadata !600), !dbg !3170
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3160, metadata !600), !dbg !3170
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3160, metadata !600), !dbg !3170
  %99 = icmp ult i32 %92, 41, !dbg !3171
  br i1 %99, label %103, label %100, !dbg !3171

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3171
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3171
  store i8* %102, i8** %10, align 8, !dbg !3171
  br label %108, !dbg !3171

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3171
  %105 = sext i32 %92 to i64, !dbg !3171
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3171
  %107 = add i32 %92, 8, !dbg !3171
  store i32 %107, i32* %8, align 8, !dbg !3171
  br label %108, !dbg !3171

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3171
  %111 = load i8*, i8** %110, align 8, !dbg !3171
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3174
  store i8* %111, i8** %112, align 8, !dbg !3175, !tbaa !607
  %113 = icmp eq i8* %111, null, !dbg !3176
  br i1 %113, label %30, label %114, !dbg !3177

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3160, metadata !600), !dbg !3170
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3160, metadata !600), !dbg !3170
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3160, metadata !600), !dbg !3170
  %115 = load i8*, i8** %10, align 8, !dbg !3171
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3171
  store i8* %116, i8** %10, align 8, !dbg !3171
  %117 = bitcast i8* %115 to i8**, !dbg !3171
  %118 = load i8*, i8** %117, align 8, !dbg !3171
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3174
  store i8* %118, i8** %119, align 16, !dbg !3175, !tbaa !607
  %120 = icmp eq i8* %118, null, !dbg !3176
  br i1 %120, label %30, label %121, !dbg !3177

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3160, metadata !600), !dbg !3170
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3160, metadata !600), !dbg !3170
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3160, metadata !600), !dbg !3170
  %122 = load i8*, i8** %10, align 8, !dbg !3171
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3171
  store i8* %123, i8** %10, align 8, !dbg !3171
  %124 = bitcast i8* %122 to i8**, !dbg !3171
  %125 = load i8*, i8** %124, align 8, !dbg !3171
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3174
  store i8* %125, i8** %126, align 8, !dbg !3175, !tbaa !607
  %127 = icmp eq i8* %125, null, !dbg !3176
  br i1 %127, label %30, label %128, !dbg !3177

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3160, metadata !600), !dbg !3170
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3160, metadata !600), !dbg !3170
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3160, metadata !600), !dbg !3170
  %129 = load i8*, i8** %10, align 8, !dbg !3171
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3171
  store i8* %130, i8** %10, align 8, !dbg !3171
  %131 = bitcast i8* %129 to i8**, !dbg !3171
  %132 = load i8*, i8** %131, align 8, !dbg !3171
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3174
  store i8* %132, i8** %133, align 16, !dbg !3175, !tbaa !607
  %134 = icmp eq i8* %132, null, !dbg !3176
  br i1 %134, label %30, label %135, !dbg !3177

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3160, metadata !600), !dbg !3170
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3160, metadata !600), !dbg !3170
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3160, metadata !600), !dbg !3170
  %136 = load i8*, i8** %10, align 8, !dbg !3171
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3171
  store i8* %137, i8** %10, align 8, !dbg !3171
  %138 = bitcast i8* %136 to i8**, !dbg !3171
  %139 = load i8*, i8** %138, align 8, !dbg !3171
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3174
  store i8* %139, i8** %140, align 8, !dbg !3175, !tbaa !607
  %141 = icmp eq i8* %139, null, !dbg !3176
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3160, metadata !600), !dbg !3170
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3160, metadata !600), !dbg !3170
  %142 = select i1 %141, i64 9, i64 10, !dbg !3177
  br label %30, !dbg !3177
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3180 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3184, metadata !600), !dbg !3195
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3185, metadata !600), !dbg !3196
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3186, metadata !600), !dbg !3197
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3187, metadata !600), !dbg !3198
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3199
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3199
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3188, metadata !600), !dbg !3200
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3201
  call void @llvm.va_start(i8* nonnull %6), !dbg !3201
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3202
  call void @llvm.va_end(i8* nonnull %6), !dbg !3203
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3204
  ret void, !dbg !3204
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3205 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.97, i64 0, i64 0), i32 5) #10, !dbg !3206
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.98, i64 0, i64 0)) #10, !dbg !3206
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.99, i64 0, i64 0), i32 5) #10, !dbg !3207
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.100, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.101, i64 0, i64 0)) #10, !dbg !3207
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.102, i64 0, i64 0), i32 5) #10, !dbg !3208
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3208, !tbaa !607
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3208
  ret void, !dbg !3209
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3210 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3212, metadata !600), !dbg !3214
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3213, metadata !600), !dbg !3215
  %3 = udiv i64 9223372036854775807, %1, !dbg !3216
  %4 = icmp ult i64 %3, %0, !dbg !3216
  br i1 %4, label %5, label %6, !dbg !3218

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3219
  unreachable, !dbg !3219

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3220
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3221, metadata !600) #10, !dbg !3228
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3230
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3227, metadata !600) #10, !dbg !3231
  %9 = icmp eq i8* %8, null, !dbg !3232
  %10 = icmp ne i64 %7, 0, !dbg !3234
  %11 = and i1 %10, %9, !dbg !3235
  br i1 %11, label %12, label %13, !dbg !3235

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3236
  unreachable, !dbg !3236

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3237
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3222 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3221, metadata !600), !dbg !3238
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3239
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3227, metadata !600), !dbg !3240
  %3 = icmp eq i8* %2, null, !dbg !3241
  %4 = icmp ne i64 %0, 0, !dbg !3242
  %5 = and i1 %4, %3, !dbg !3243
  br i1 %5, label %6, label %7, !dbg !3243

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3244
  unreachable, !dbg !3244

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3245
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3246 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3250, metadata !600), !dbg !3253
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3251, metadata !600), !dbg !3254
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3252, metadata !600), !dbg !3255
  %4 = udiv i64 9223372036854775807, %2, !dbg !3256
  %5 = icmp ult i64 %4, %1, !dbg !3256
  br i1 %5, label %6, label %7, !dbg !3258

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3259
  unreachable, !dbg !3259

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3260
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3261, metadata !600) #10, !dbg !3267
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3266, metadata !600) #10, !dbg !3269
  %9 = icmp eq i64 %8, 0, !dbg !3270
  %10 = icmp ne i8* %0, null, !dbg !3272
  %11 = and i1 %10, %9, !dbg !3273
  br i1 %11, label %12, label %13, !dbg !3273

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3274
  br label %19, !dbg !3276

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3277
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3261, metadata !600) #10, !dbg !3267
  %15 = icmp eq i8* %14, null, !dbg !3278
  %16 = icmp ne i64 %8, 0, !dbg !3280
  %17 = and i1 %16, %15, !dbg !3281
  br i1 %17, label %18, label %19, !dbg !3281

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3282
  unreachable, !dbg !3282

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3283
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3262 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3261, metadata !600), !dbg !3284
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3266, metadata !600), !dbg !3285
  %3 = icmp eq i64 %1, 0, !dbg !3286
  %4 = icmp ne i8* %0, null, !dbg !3287
  %5 = and i1 %4, %3, !dbg !3288
  br i1 %5, label %6, label %7, !dbg !3288

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3289
  br label %13, !dbg !3290

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3291
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3261, metadata !600), !dbg !3284
  %9 = icmp eq i8* %8, null, !dbg !3292
  %10 = icmp ne i64 %1, 0, !dbg !3293
  %11 = and i1 %10, %9, !dbg !3294
  br i1 %11, label %12, label %13, !dbg !3294

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3295
  unreachable, !dbg !3295

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3296
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !557 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !562, metadata !600), !dbg !3297
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !563, metadata !600), !dbg !3298
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !564, metadata !600), !dbg !3299
  %4 = load i64, i64* %1, align 8, !dbg !3300, !tbaa !801
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !565, metadata !600), !dbg !3301
  %5 = icmp eq i8* %0, null, !dbg !3302
  br i1 %5, label %6, label %13, !dbg !3304

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3305
  br i1 %7, label %8, label %17, !dbg !3308

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3309
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !565, metadata !600), !dbg !3301
  %10 = icmp ugt i64 %2, 128, !dbg !3311
  %11 = zext i1 %10 to i64, !dbg !3311
  %12 = add nuw nsw i64 %9, %11, !dbg !3312
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !565, metadata !600), !dbg !3301
  br label %17, !dbg !3313

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3314
  %15 = icmp ugt i64 %14, %4, !dbg !3317
  br i1 %15, label %20, label %16, !dbg !3318

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3319
  unreachable, !dbg !3319

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !565, metadata !600), !dbg !3301
  store i64 %18, i64* %1, align 8, !dbg !3320, !tbaa !801
  %19 = mul i64 %18, %2, !dbg !3321
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3261, metadata !600) #10, !dbg !3322
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3266, metadata !600) #10, !dbg !3324
  br label %27, !dbg !3325

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3326
  %22 = add i64 %4, 1, !dbg !3327
  %23 = add i64 %22, %21, !dbg !3328
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !565, metadata !600), !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !565, metadata !600), !dbg !3301
  store i64 %23, i64* %1, align 8, !dbg !3320, !tbaa !801
  %24 = mul i64 %23, %2, !dbg !3321
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3261, metadata !600) #10, !dbg !3322
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3266, metadata !600) #10, !dbg !3324
  %25 = icmp eq i64 %24, 0, !dbg !3329
  br i1 %25, label %26, label %27, !dbg !3325

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3330
  br label %34, !dbg !3331

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3332
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3261, metadata !600) #10, !dbg !3322
  %30 = icmp eq i8* %29, null, !dbg !3333
  %31 = icmp ne i64 %28, 0, !dbg !3334
  %32 = and i1 %31, %30, !dbg !3335
  br i1 %32, label %33, label %34, !dbg !3335

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3336
  unreachable, !dbg !3336

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3337
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3338 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3340, metadata !600), !dbg !3341
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3221, metadata !600) #10, !dbg !3342
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3344
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3227, metadata !600) #10, !dbg !3345
  %3 = icmp eq i8* %2, null, !dbg !3346
  %4 = icmp ne i64 %0, 0, !dbg !3347
  %5 = and i1 %4, %3, !dbg !3348
  br i1 %5, label %6, label %7, !dbg !3348

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3349
  unreachable, !dbg !3349

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3350
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3351 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3355, metadata !600), !dbg !3357
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3356, metadata !600), !dbg !3358
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !562, metadata !600) #10, !dbg !3359
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !563, metadata !600) #10, !dbg !3361
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !564, metadata !600) #10, !dbg !3362
  %3 = load i64, i64* %1, align 8, !dbg !3363, !tbaa !801
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !565, metadata !600) #10, !dbg !3364
  %4 = icmp eq i8* %0, null, !dbg !3365
  br i1 %4, label %5, label %8, !dbg !3366

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3367
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !565, metadata !600) #10, !dbg !3364
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !565, metadata !600) #10, !dbg !3364
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3368
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !565, metadata !600) #10, !dbg !3364
  store i64 %7, i64* %1, align 8, !dbg !3369, !tbaa !801
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3261, metadata !600) #10, !dbg !3370
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3266, metadata !600) #10, !dbg !3372
  br label %17, !dbg !3373

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3374
  br i1 %9, label %11, label %10, !dbg !3375

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3376
  unreachable, !dbg !3376

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3377
  %13 = add i64 %3, 1, !dbg !3378
  %14 = add i64 %13, %12, !dbg !3379
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !565, metadata !600) #10, !dbg !3364
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !565, metadata !600) #10, !dbg !3364
  store i64 %14, i64* %1, align 8, !dbg !3369, !tbaa !801
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3261, metadata !600) #10, !dbg !3370
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3266, metadata !600) #10, !dbg !3372
  %15 = icmp eq i64 %14, 0, !dbg !3380
  br i1 %15, label %16, label %17, !dbg !3373

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !3381
  br label %24, !dbg !3382

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !3383
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3261, metadata !600) #10, !dbg !3370
  %20 = icmp eq i8* %19, null, !dbg !3384
  %21 = icmp ne i64 %18, 0, !dbg !3385
  %22 = and i1 %21, %20, !dbg !3386
  br i1 %22, label %23, label %24, !dbg !3386

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3387
  unreachable, !dbg !3387

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3388
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3389 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3391, metadata !600), !dbg !3392
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3221, metadata !600) #10, !dbg !3393
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3395
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3227, metadata !600) #10, !dbg !3396
  %3 = icmp eq i8* %2, null, !dbg !3397
  %4 = icmp ne i64 %0, 0, !dbg !3398
  %5 = and i1 %4, %3, !dbg !3399
  br i1 %5, label %6, label %7, !dbg !3399

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3400
  unreachable, !dbg !3400

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3401
  ret i8* %2, !dbg !3402
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3403 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3405, metadata !600), !dbg !3408
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3406, metadata !600), !dbg !3409
  %3 = udiv i64 9223372036854775807, %1, !dbg !3410
  %4 = icmp ult i64 %3, %0, !dbg !3410
  br i1 %4, label %8, label %5, !dbg !3412

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3413
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3407, metadata !600), !dbg !3414
  %7 = icmp eq i8* %6, null, !dbg !3415
  br i1 %7, label %8, label %9, !dbg !3416

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3417
  unreachable, !dbg !3417

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3418
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3419 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3425, metadata !600), !dbg !3427
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3426, metadata !600), !dbg !3428
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3221, metadata !600) #10, !dbg !3429
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3431
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3227, metadata !600) #10, !dbg !3432
  %4 = icmp eq i8* %3, null, !dbg !3433
  %5 = icmp ne i64 %1, 0, !dbg !3434
  %6 = and i1 %5, %4, !dbg !3435
  br i1 %6, label %7, label %8, !dbg !3435

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3436
  unreachable, !dbg !3436

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3437
  ret i8* %3, !dbg !3438
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3439 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3441, metadata !600), !dbg !3442
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3443
  %3 = add i64 %2, 1, !dbg !3444
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3425, metadata !600) #10, !dbg !3445
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3426, metadata !600) #10, !dbg !3447
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3221, metadata !600) #10, !dbg !3448
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3450
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3227, metadata !600) #10, !dbg !3451
  %5 = icmp eq i8* %4, null, !dbg !3452
  %6 = icmp ne i64 %3, 0, !dbg !3453
  %7 = and i1 %6, %5, !dbg !3454
  br i1 %7, label %8, label %9, !dbg !3454

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3455
  unreachable, !dbg !3455

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3456
  ret i8* %4, !dbg !3457
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3458 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3460, !tbaa !730
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.113, i64 0, i64 0), i32 5) #10, !dbg !3461
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i64 0, i64 0), i8* %2) #10, !dbg !3462
  tail call void @abort() #15, !dbg !3463
  unreachable, !dbg !3463
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 !dbg !3464 {
  %6 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3471, metadata !600), !dbg !3489
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !3472, metadata !600), !dbg !3490
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3473, metadata !600), !dbg !3491
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !3474, metadata !600), !dbg !3492
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3475, metadata !600), !dbg !3493
  %7 = bitcast i8** %6 to i8*, !dbg !3494
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #10, !dbg !3494
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3479, metadata !600), !dbg !3495
  %8 = icmp ult i32 %2, 37, !dbg !3496
  br i1 %8, label %10, label %9, !dbg !3496

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.117, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.118, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #15, !dbg !3496
  unreachable, !dbg !3496

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3499
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !3477, metadata !600), !dbg !3500
  %12 = tail call i32* @__errno_location() #17, !dbg !3501
  store i32 0, i32* %12, align 4, !dbg !3502, !tbaa !730
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3480, metadata !600), !dbg !3503
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3483, metadata !3504), !dbg !3505
  %13 = tail call i16** @__ctype_b_loc() #17, !dbg !3506
  %14 = load i16*, i16** %13, align 8, !tbaa !607
  br label %15, !dbg !3507

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ]
  %17 = load i8, i8* %16, align 1, !tbaa !738
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !3483, metadata !600), !dbg !3505
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3480, metadata !600), !dbg !3503
  %18 = zext i8 %17 to i64, !dbg !3506
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !3506
  %20 = load i16, i16* %19, align 2, !dbg !3506, !tbaa !1797
  %21 = and i16 %20, 8192, !dbg !3506
  %22 = icmp eq i16 %21, 0, !dbg !3507
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !3508
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !3480, metadata !600), !dbg !3503
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !3483, metadata !3504), !dbg !3505
  br i1 %22, label %24, label %15, !dbg !3507, !llvm.loop !3509

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !3499
  %26 = icmp eq i8 %17, 45, !dbg !3511
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3513, metadata !600) #10, !dbg !3523
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !3521, metadata !600) #10, !dbg !3523
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3522, metadata !600) #10, !dbg !3523
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #10, !dbg !3525
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3478, metadata !600), !dbg !3526
  %29 = load i8*, i8** %25, align 8, !dbg !3527, !tbaa !607
  %30 = icmp eq i8* %29, %0, !dbg !3529
  br i1 %30, label %31, label %40, !dbg !3530

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !3531
  br i1 %32, label %265, label %33, !dbg !3534

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !3535, !tbaa !738
  %35 = icmp eq i8 %34, 0, !dbg !3535
  br i1 %35, label %265, label %36, !dbg !3536

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !3535
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #14, !dbg !3537
  %39 = icmp eq i8* %38, null, !dbg !3537
  br i1 %39, label %265, label %47, !dbg !3538

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !3539, !tbaa !730
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !3541

; <label>:42:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3479, metadata !600), !dbg !3495
  br label %43, !dbg !3542

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ 0, %40 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !3479, metadata !600), !dbg !3495
  %45 = icmp eq i8* %4, null, !dbg !3544
  br i1 %45, label %46, label %47, !dbg !3546

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3478, metadata !600), !dbg !3526
  store i64 %28, i64* %3, align 8, !dbg !3547, !tbaa !801
  br label %265, !dbg !3549

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !3550, !tbaa !738
  %51 = sext i8 %50 to i32, !dbg !3550
  %52 = icmp eq i8 %50, 0, !dbg !3551
  br i1 %52, label %262, label %53, !dbg !3552

; <label>:53:                                     ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !3484, metadata !600), !dbg !3553
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3487, metadata !600), !dbg !3554
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #14, !dbg !3555
  %55 = icmp eq i8* %54, null, !dbg !3555
  br i1 %55, label %56, label %58, !dbg !3557

; <label>:56:                                     ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3478, metadata !600), !dbg !3526
  store i64 %49, i64* %3, align 8, !dbg !3558, !tbaa !801
  %57 = or i32 %48, 2, !dbg !3560
  br label %265, !dbg !3561

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
  ], !dbg !3562

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #14, !dbg !3563
  %61 = icmp eq i8* %60, null, !dbg !3563
  br i1 %61, label %72, label %62, !dbg !3566

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !3567
  %64 = load i8, i8* %63, align 1, !dbg !3567, !tbaa !738
  %65 = sext i8 %64 to i32, !dbg !3567
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !3568

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !3569
  %68 = load i8, i8* %67, align 1, !dbg !3569, !tbaa !738
  %69 = icmp eq i8 %68, 66, !dbg !3572
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3487, metadata !600), !dbg !3554
  %70 = select i1 %69, i64 3, i64 1, !dbg !3573
  br label %72, !dbg !3573

; <label>:71:                                     ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !3484, metadata !600), !dbg !3553
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3487, metadata !600), !dbg !3554
  br label %72, !dbg !3574

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
  ], !dbg !3575

; <label>:75:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !3576, metadata !600), !dbg !3582
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !3585
  %77 = shl i64 %49, 9, !dbg !3587
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !3588
  %79 = zext i1 %76 to i32, !dbg !3588
  call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !3488, metadata !600), !dbg !3589
  br label %253, !dbg !3590

; <label>:80:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !3576, metadata !600), !dbg !3591
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !3593
  %82 = shl i64 %49, 10, !dbg !3594
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !3595
  %84 = zext i1 %81 to i32, !dbg !3595
  call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !3488, metadata !600), !dbg !3589
  br label %253, !dbg !3596

; <label>:85:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3597, metadata !600), !dbg !3605
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3607
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3607
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3597, metadata !600), !dbg !3605
  %86 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3597, metadata !600), !dbg !3605
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3607
  %87 = icmp ult i64 %86, %49, !dbg !3608
  %88 = mul i64 %49, %73, !dbg !3610
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !3611
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3597, metadata !600), !dbg !3605
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3597, metadata !600), !dbg !3605
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3597, metadata !600), !dbg !3605
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3607
  %90 = icmp ult i64 %86, %89, !dbg !3608
  %91 = mul i64 %89, %73, !dbg !3610
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !3611
  %93 = or i1 %87, %90, !dbg !3612
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3597, metadata !600), !dbg !3605
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3597, metadata !600), !dbg !3605
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3597, metadata !600), !dbg !3605
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3607
  %94 = icmp ult i64 %86, %92, !dbg !3608
  %95 = mul i64 %92, %73, !dbg !3610
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !3611
  %97 = or i1 %93, %94, !dbg !3612
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3597, metadata !600), !dbg !3605
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3597, metadata !600), !dbg !3605
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3597, metadata !600), !dbg !3605
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3607
  %98 = icmp ult i64 %86, %96, !dbg !3608
  %99 = mul i64 %96, %73, !dbg !3610
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !3611
  %101 = or i1 %97, %98, !dbg !3612
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3597, metadata !600), !dbg !3605
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3597, metadata !600), !dbg !3605
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3597, metadata !600), !dbg !3605
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3607
  %102 = icmp ult i64 %86, %100, !dbg !3608
  %103 = mul i64 %100, %73, !dbg !3610
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !3611
  %105 = or i1 %101, %102, !dbg !3612
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3597, metadata !600), !dbg !3605
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3597, metadata !600), !dbg !3605
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3597, metadata !600), !dbg !3605
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3607
  %106 = icmp ult i64 %86, %104, !dbg !3608
  %107 = mul i64 %104, %73, !dbg !3610
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !3611
  %109 = or i1 %105, %106, !dbg !3612
  %110 = zext i1 %109 to i32, !dbg !3612
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3597, metadata !600), !dbg !3605
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3597, metadata !600), !dbg !3605
  br label %253, !dbg !3613

; <label>:111:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3597, metadata !600), !dbg !3614
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3616
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3616
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3597, metadata !600), !dbg !3614
  %112 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3597, metadata !600), !dbg !3614
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3616
  %113 = icmp ult i64 %112, %49, !dbg !3617
  %114 = mul i64 %49, %73, !dbg !3619
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !3620
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3597, metadata !600), !dbg !3614
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3597, metadata !600), !dbg !3614
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3597, metadata !600), !dbg !3614
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3616
  %116 = icmp ult i64 %112, %115, !dbg !3617
  %117 = mul i64 %115, %73, !dbg !3619
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !3620
  %119 = or i1 %113, %116, !dbg !3621
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3597, metadata !600), !dbg !3614
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3597, metadata !600), !dbg !3614
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3597, metadata !600), !dbg !3614
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3616
  %120 = icmp ult i64 %112, %118, !dbg !3617
  %121 = mul i64 %118, %73, !dbg !3619
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !3620
  %123 = or i1 %119, %120, !dbg !3621
  %124 = zext i1 %123 to i32, !dbg !3621
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3597, metadata !600), !dbg !3614
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3597, metadata !600), !dbg !3614
  br label %253, !dbg !3613

; <label>:125:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3597, metadata !600), !dbg !3622
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3624
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3624
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3597, metadata !600), !dbg !3622
  %126 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !3597, metadata !600), !dbg !3622
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3624
  %127 = icmp ult i64 %126, %49, !dbg !3625
  %128 = mul i64 %49, %73, !dbg !3627
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !3628
  %130 = zext i1 %127 to i32, !dbg !3628
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !3604, metadata !600), !dbg !3624
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !3604, metadata !600), !dbg !3624
  br label %253, !dbg !3613

; <label>:131:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3597, metadata !600), !dbg !3629
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3631
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3631
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3597, metadata !600), !dbg !3629
  %132 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3597, metadata !600), !dbg !3629
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3631
  %133 = icmp ult i64 %132, %49, !dbg !3632
  %134 = mul i64 %49, %73, !dbg !3634
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !3635
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3597, metadata !600), !dbg !3629
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3597, metadata !600), !dbg !3629
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3597, metadata !600), !dbg !3629
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3631
  %136 = icmp ult i64 %132, %135, !dbg !3632
  %137 = mul i64 %135, %73, !dbg !3634
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !3635
  %139 = or i1 %133, %136, !dbg !3636
  %140 = zext i1 %139 to i32, !dbg !3636
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3597, metadata !600), !dbg !3629
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3597, metadata !600), !dbg !3629
  br label %253, !dbg !3613

; <label>:141:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3597, metadata !600), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3639
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3639
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3597, metadata !600), !dbg !3637
  %142 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3597, metadata !600), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3639
  %143 = icmp ult i64 %142, %49, !dbg !3640
  %144 = mul i64 %49, %73, !dbg !3642
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !3643
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3597, metadata !600), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3597, metadata !600), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3597, metadata !600), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3639
  %146 = icmp ult i64 %142, %145, !dbg !3640
  %147 = mul i64 %145, %73, !dbg !3642
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !3643
  %149 = or i1 %143, %146, !dbg !3644
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3597, metadata !600), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3597, metadata !600), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3597, metadata !600), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3639
  %150 = icmp ult i64 %142, %148, !dbg !3640
  %151 = mul i64 %148, %73, !dbg !3642
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !3643
  %153 = or i1 %149, %150, !dbg !3644
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3597, metadata !600), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3597, metadata !600), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3597, metadata !600), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3639
  %154 = icmp ult i64 %142, %152, !dbg !3640
  %155 = mul i64 %152, %73, !dbg !3642
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !3643
  %157 = or i1 %153, %154, !dbg !3644
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3597, metadata !600), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3597, metadata !600), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3597, metadata !600), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3639
  %158 = icmp ult i64 %142, %156, !dbg !3640
  %159 = mul i64 %156, %73, !dbg !3642
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !3643
  %161 = or i1 %157, %158, !dbg !3644
  %162 = zext i1 %161 to i32, !dbg !3644
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3597, metadata !600), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3597, metadata !600), !dbg !3637
  br label %253, !dbg !3613

; <label>:163:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3597, metadata !600), !dbg !3645
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3647
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3647
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3597, metadata !600), !dbg !3645
  %164 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3597, metadata !600), !dbg !3645
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3647
  %165 = icmp ult i64 %164, %49, !dbg !3648
  %166 = mul i64 %49, %73, !dbg !3650
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !3651
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3597, metadata !600), !dbg !3645
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3597, metadata !600), !dbg !3645
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3597, metadata !600), !dbg !3645
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3647
  %168 = icmp ult i64 %164, %167, !dbg !3648
  %169 = mul i64 %167, %73, !dbg !3650
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !3651
  %171 = or i1 %165, %168, !dbg !3652
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3597, metadata !600), !dbg !3645
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3597, metadata !600), !dbg !3645
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3597, metadata !600), !dbg !3645
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3647
  %172 = icmp ult i64 %164, %170, !dbg !3648
  %173 = mul i64 %170, %73, !dbg !3650
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !3651
  %175 = or i1 %171, %172, !dbg !3652
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3597, metadata !600), !dbg !3645
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3597, metadata !600), !dbg !3645
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3597, metadata !600), !dbg !3645
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3647
  %176 = icmp ult i64 %164, %174, !dbg !3648
  %177 = mul i64 %174, %73, !dbg !3650
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !3651
  %179 = or i1 %175, %176, !dbg !3652
  %180 = zext i1 %179 to i32, !dbg !3652
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3597, metadata !600), !dbg !3645
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3597, metadata !600), !dbg !3645
  br label %253, !dbg !3613

; <label>:181:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3576, metadata !600), !dbg !3653
  %182 = icmp slt i64 %49, 0, !dbg !3655
  %183 = shl i64 %49, 1, !dbg !3656
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !3657
  %185 = lshr i64 %49, 63, !dbg !3657
  %186 = trunc i64 %185 to i32, !dbg !3657
  call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !3488, metadata !600), !dbg !3589
  br label %253, !dbg !3658

; <label>:187:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3597, metadata !600), !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3661
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3661
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3597, metadata !600), !dbg !3659
  %188 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3597, metadata !600), !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3661
  %189 = icmp ult i64 %188, %49, !dbg !3662
  %190 = mul i64 %49, %73, !dbg !3664
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !3665
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3597, metadata !600), !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3597, metadata !600), !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3597, metadata !600), !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3661
  %192 = icmp ult i64 %188, %191, !dbg !3662
  %193 = mul i64 %191, %73, !dbg !3664
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !3665
  %195 = or i1 %189, %192, !dbg !3666
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3597, metadata !600), !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3597, metadata !600), !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3597, metadata !600), !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3661
  %196 = icmp ult i64 %188, %194, !dbg !3662
  %197 = mul i64 %194, %73, !dbg !3664
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !3665
  %199 = or i1 %195, %196, !dbg !3666
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3597, metadata !600), !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3597, metadata !600), !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3597, metadata !600), !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3661
  %200 = icmp ult i64 %188, %198, !dbg !3662
  %201 = mul i64 %198, %73, !dbg !3664
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !3665
  %203 = or i1 %199, %200, !dbg !3666
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3597, metadata !600), !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3597, metadata !600), !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3597, metadata !600), !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3661
  %204 = icmp ult i64 %188, %202, !dbg !3662
  %205 = mul i64 %202, %73, !dbg !3664
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !3665
  %207 = or i1 %203, %204, !dbg !3666
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3597, metadata !600), !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3597, metadata !600), !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3597, metadata !600), !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3661
  %208 = icmp ult i64 %188, %206, !dbg !3662
  %209 = mul i64 %206, %73, !dbg !3664
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !3665
  %211 = or i1 %207, %208, !dbg !3666
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3597, metadata !600), !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3597, metadata !600), !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3597, metadata !600), !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3661
  %212 = icmp ult i64 %188, %210, !dbg !3662
  %213 = mul i64 %210, %73, !dbg !3664
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !3665
  %215 = or i1 %211, %212, !dbg !3666
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3597, metadata !600), !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3597, metadata !600), !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3597, metadata !600), !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3661
  %216 = icmp ult i64 %188, %214, !dbg !3662
  %217 = mul i64 %214, %73, !dbg !3664
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !3665
  %219 = or i1 %215, %216, !dbg !3666
  %220 = zext i1 %219 to i32, !dbg !3666
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3597, metadata !600), !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3597, metadata !600), !dbg !3659
  br label %253, !dbg !3613

; <label>:221:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3597, metadata !600), !dbg !3667
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3669
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3669
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3597, metadata !600), !dbg !3667
  %222 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3597, metadata !600), !dbg !3667
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3669
  %223 = icmp ult i64 %222, %49, !dbg !3670
  %224 = mul i64 %49, %73, !dbg !3672
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !3673
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3597, metadata !600), !dbg !3667
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3597, metadata !600), !dbg !3667
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3597, metadata !600), !dbg !3667
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3669
  %226 = icmp ult i64 %222, %225, !dbg !3670
  %227 = mul i64 %225, %73, !dbg !3672
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !3673
  %229 = or i1 %223, %226, !dbg !3674
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3597, metadata !600), !dbg !3667
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3597, metadata !600), !dbg !3667
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3597, metadata !600), !dbg !3667
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3669
  %230 = icmp ult i64 %222, %228, !dbg !3670
  %231 = mul i64 %228, %73, !dbg !3672
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !3673
  %233 = or i1 %229, %230, !dbg !3674
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3597, metadata !600), !dbg !3667
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3597, metadata !600), !dbg !3667
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3597, metadata !600), !dbg !3667
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3669
  %234 = icmp ult i64 %222, %232, !dbg !3670
  %235 = mul i64 %232, %73, !dbg !3672
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !3673
  %237 = or i1 %233, %234, !dbg !3674
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3597, metadata !600), !dbg !3667
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3597, metadata !600), !dbg !3667
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3597, metadata !600), !dbg !3667
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3669
  %238 = icmp ult i64 %222, %236, !dbg !3670
  %239 = mul i64 %236, %73, !dbg !3672
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !3673
  %241 = or i1 %237, %238, !dbg !3674
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3597, metadata !600), !dbg !3667
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3597, metadata !600), !dbg !3667
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3597, metadata !600), !dbg !3667
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3669
  %242 = icmp ult i64 %222, %240, !dbg !3670
  %243 = mul i64 %240, %73, !dbg !3672
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !3673
  %245 = or i1 %241, %242, !dbg !3674
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3597, metadata !600), !dbg !3667
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3597, metadata !600), !dbg !3667
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3597, metadata !600), !dbg !3667
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !600), !dbg !3669
  %246 = icmp ult i64 %222, %244, !dbg !3670
  %247 = mul i64 %244, %73, !dbg !3672
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !3673
  %249 = or i1 %245, %246, !dbg !3674
  %250 = zext i1 %249 to i32, !dbg !3674
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3597, metadata !600), !dbg !3667
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3597, metadata !600), !dbg !3667
  br label %253, !dbg !3613

; <label>:251:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3478, metadata !600), !dbg !3526
  store i64 %49, i64* %3, align 8, !dbg !3675, !tbaa !801
  %252 = or i32 %48, 2, !dbg !3676
  br label %265, !dbg !3677

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ]
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ]
  call void @llvm.dbg.value(metadata i32 %255, i64 0, metadata !3488, metadata !600), !dbg !3589
  %256 = or i32 %255, %48, !dbg !3613
  call void @llvm.dbg.value(metadata i32 %256, i64 0, metadata !3479, metadata !600), !dbg !3495
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !3678
  store i8* %257, i8** %25, align 8, !dbg !3678, !tbaa !607
  %258 = load i8, i8* %257, align 1, !dbg !3679, !tbaa !738
  %259 = icmp eq i8 %258, 0, !dbg !3679
  %260 = or i32 %256, 2, !dbg !3681
  call void @llvm.dbg.value(metadata i32 %260, i64 0, metadata !3479, metadata !600), !dbg !3495
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !3682
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !3479, metadata !600), !dbg !3495
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !3479, metadata !600), !dbg !3495
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ]
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ]
  call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !3479, metadata !600), !dbg !3495
  call void @llvm.dbg.value(metadata i64 %263, i64 0, metadata !3478, metadata !600), !dbg !3526
  store i64 %263, i64* %3, align 8, !dbg !3683, !tbaa !801
  br label %265, !dbg !3684

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #10, !dbg !3685
  ret i32 %266, !dbg !3685
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3686 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3689, metadata !600), !dbg !3695
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3690, metadata !600), !dbg !3696
  %3 = icmp eq i64 %0, 0, !dbg !3697
  %4 = icmp eq i64 %1, 0, !dbg !3698
  %5 = or i1 %3, %4, !dbg !3699
  br i1 %5, label %12, label %6, !dbg !3699

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3700
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3692, metadata !600), !dbg !3701
  %8 = udiv i64 %7, %1, !dbg !3702
  %9 = icmp eq i64 %8, %0, !dbg !3704
  br i1 %9, label %12, label %10, !dbg !3705

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3706
  store i32 12, i32* %11, align 4, !dbg !3708, !tbaa !730
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3689, metadata !600), !dbg !3695
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3690, metadata !600), !dbg !3696
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3709
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3691, metadata !600), !dbg !3710
  br label %16, !dbg !3711

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3712
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3713 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3730, metadata !600), !dbg !3739
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3731, metadata !600), !dbg !3740
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3732, metadata !600), !dbg !3741
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3733, metadata !600), !dbg !3742
  %6 = bitcast i32* %5 to i8*, !dbg !3743
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3743
  %7 = icmp eq i32* %0, null, !dbg !3744
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3730, metadata !600), !dbg !3739
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3746
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3730, metadata !600), !dbg !3739
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3747
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3734, metadata !600), !dbg !3748
  %10 = icmp ugt i64 %9, -3, !dbg !3749
  %11 = icmp ne i64 %2, 0, !dbg !3750
  %12 = and i1 %11, %10, !dbg !3751
  br i1 %12, label %13, label %18, !dbg !3751

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3752
  br i1 %14, label %18, label %15, !dbg !3753

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3754, !tbaa !738
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3736, metadata !600), !dbg !3755
  %17 = zext i8 %16 to i32, !dbg !3756
  store i32 %17, i32* %8, align 4, !dbg !3757, !tbaa !730
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3758
  ret i64 %19, !dbg !3758
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3759 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3804, metadata !600), !dbg !3809
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3810
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3811, metadata !600), !dbg !3815
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3817
  %4 = load i32, i32* %3, align 8, !dbg !3817, !tbaa !3818
  %5 = and i32 %4, 32, !dbg !3817
  %6 = icmp eq i32 %5, 0, !dbg !3820
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3821
  %8 = icmp ne i32 %7, 0, !dbg !3822
  br i1 %6, label %9, label %19, !dbg !3823

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3825
  %11 = xor i1 %8, true, !dbg !3826
  %12 = or i1 %10, %11, !dbg !3826
  %13 = sext i1 %8 to i32, !dbg !3826
  br i1 %12, label %22, label %14, !dbg !3826

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3827
  %16 = load i32, i32* %15, align 4, !dbg !3827, !tbaa !730
  %17 = icmp ne i32 %16, 9, !dbg !3828
  %18 = sext i1 %17 to i32, !dbg !3829
  br label %22, !dbg !3829

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3830

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3832
  store i32 0, i32* %21, align 4, !dbg !3834, !tbaa !730
  br label %22, !dbg !3832

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3835
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3836 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3841, metadata !600), !dbg !3844
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3842, metadata !600), !dbg !3845
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3846
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3843, metadata !600), !dbg !3847
  %3 = icmp eq i8* %2, null, !dbg !3848
  br i1 %3, label %11, label %4, !dbg !3850

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.127, i64 0, i64 0)) #14, !dbg !3851
  %6 = icmp eq i32 %5, 0, !dbg !3856
  br i1 %6, label %10, label %7, !dbg !3857

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.128, i64 0, i64 0)) #14, !dbg !3858
  %9 = icmp eq i32 %8, 0, !dbg !3859
  br i1 %9, label %10, label %11, !dbg !3860

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3842, metadata !600), !dbg !3845
  br label %11, !dbg !3861

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3862
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3863 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3869, metadata !600), !dbg !3943
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3936, metadata !600), !dbg !3946
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3947
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3867, metadata !600), !dbg !3948
  %4 = icmp eq i8* %3, null, !dbg !3949
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.131, i64 0, i64 0), i8* %3, !dbg !3951
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3867, metadata !600), !dbg !3948
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3952, !tbaa !607
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3883, metadata !600) #10, !dbg !3953
  %7 = icmp eq i8* %6, null, !dbg !3954
  br i1 %7, label %8, label %123, !dbg !3955

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.132, i64 0, i64 0)) #10, !dbg !3956
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3884, metadata !600) #10, !dbg !3957
  %10 = icmp eq i8* %9, null, !dbg !3958
  br i1 %10, label %14, label %11, !dbg !3960

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3961, !tbaa !738
  %13 = icmp eq i8 %12, 0, !dbg !3962
  br i1 %13, label %14, label %15, !dbg !3963

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3964

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.133, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3884, metadata !600) #10, !dbg !3957
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !3965
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3887, metadata !600) #10, !dbg !3966
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3889, metadata !600) #10, !dbg !3967
  %18 = icmp eq i64 %17, 0, !dbg !3968
  br i1 %18, label %24, label %19, !dbg !3969

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3970
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3970
  %22 = load i8, i8* %21, align 1, !dbg !3970, !tbaa !738
  %23 = icmp ne i8 %22, 47, !dbg !3970
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3971
  %27 = add i64 %17, 14, !dbg !3972
  %28 = add i64 %27, %26, !dbg !3973
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !3974
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3886, metadata !600) #10, !dbg !3975
  %30 = icmp eq i8* %29, null, !dbg !3976
  br i1 %30, label %121, label %31, !dbg !3976

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !3977
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3980

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3981, !tbaa !738
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3983
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.134, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3984
  br label %37, !dbg !3985

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3983
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.134, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3984
  br label %37, !dbg !3985

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !3986
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3891, metadata !600) #10, !dbg !3987
  %39 = icmp slt i32 %38, 0, !dbg !3988
  br i1 %39, label %119, label %40, !dbg !3989

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.135, i64 0, i64 0)) #10, !dbg !3990
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3892, metadata !600) #10, !dbg !3991
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3992
  br i1 %42, label %43, label %45, !dbg !3993

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #10, !dbg !3994
  br label %119, !dbg !3996

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3933, metadata !600) #10, !dbg !3997
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3934, metadata !600) #10, !dbg !3998
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3999

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !4000

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3933, metadata !600) #10, !dbg !3997
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3934, metadata !600) #10, !dbg !3998
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #10, !dbg !4000
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #10, !dbg !4001
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4002, metadata !600) #10, !dbg !4007
  %54 = load i8*, i8** %48, align 8, !dbg !4009, !tbaa !4010
  %55 = load i8*, i8** %49, align 8, !dbg !4009, !tbaa !4011
  %56 = icmp ult i8* %54, %55, !dbg !4009
  br i1 %56, label %59, label %57, !dbg !4009, !prof !4012

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4009
  br label %63, !dbg !4009

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !4009
  store i8* %60, i8** %48, align 8, !dbg !4009, !tbaa !4010
  %61 = load i8, i8* %54, align 1, !dbg !4009, !tbaa !738
  %62 = zext i8 %61 to i32, !dbg !4009
  br label %63, !dbg !4009

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !4009
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3935, metadata !600) #10, !dbg !4013
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !4014, !llvm.loop !4015

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !4020

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4002, metadata !600) #10, !dbg !4022
  %67 = load i8*, i8** %48, align 8, !dbg !4020, !tbaa !4010
  %68 = load i8*, i8** %49, align 8, !dbg !4020, !tbaa !4011
  %69 = icmp ult i8* %67, %68, !dbg !4020
  br i1 %69, label %72, label %70, !dbg !4020, !prof !4012

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4020
  br label %76, !dbg !4020

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !4020
  store i8* %73, i8** %48, align 8, !dbg !4020, !tbaa !4010
  %74 = load i8, i8* %67, align 1, !dbg !4020, !tbaa !738
  %75 = zext i8 %74 to i32, !dbg !4020
  br label %76, !dbg !4020

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !4020
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !3935, metadata !600) #10, !dbg !4013
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !4023, !llvm.loop !4024

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #10, !dbg !4027
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.136, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #10, !dbg !4028
  %81 = icmp slt i32 %80, 2, !dbg !4030
  br i1 %81, label %112, label %82, !dbg !4031

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !4032
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3940, metadata !600) #10, !dbg !4033
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !4034
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3941, metadata !600) #10, !dbg !4035
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3942, metadata !600) #10, !dbg !4036
  %85 = icmp eq i64 %51, 0, !dbg !4037
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !4039

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3934, metadata !600) #10, !dbg !3998
  %90 = add i64 %87, 2, !dbg !4040
  %91 = call noalias i8* @malloc(i64 %90) #10, !dbg !4042
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !3933, metadata !600) #10, !dbg !3997
  br label %96, !dbg !4043

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !4044
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !3934, metadata !600) #10, !dbg !3998
  %94 = add i64 %93, 1, !dbg !4046
  %95 = call i8* @realloc(i8* %52, i64 %94) #10, !dbg !4047
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !3933, metadata !600) #10, !dbg !3997
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3933, metadata !600) #10, !dbg !3997
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3934, metadata !600) #10, !dbg !3998
  %99 = icmp eq i8* %98, null, !dbg !4048
  br i1 %99, label %100, label %102, !dbg !4050

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3934, metadata !600) #10, !dbg !3998
  call void @free(i8* %52) #10, !dbg !4051
  br label %112, !dbg !4053

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !4054
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !4054
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !4055
  %104 = xor i64 %84, -1, !dbg !4056
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4056
  %106 = xor i64 %83, -1, !dbg !4057
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !4057
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !4058, metadata !600) #10, !dbg !4066
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !4065, metadata !600) #10, !dbg !4066
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #10, !dbg !4068
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #10, !dbg !4069
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4058, metadata !600) #10, !dbg !4070
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4065, metadata !600) #10, !dbg !4070
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #10, !dbg !4072
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #10, !dbg !4073
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3933, metadata !600) #10, !dbg !3997
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3934, metadata !600) #10, !dbg !3998
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !4054
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !4054
  br label %50, !dbg !4074, !llvm.loop !4024

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !4054
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !4054
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !4075
  %116 = icmp eq i64 %113, 0, !dbg !4076
  br i1 %116, label %119, label %117, !dbg !4078

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !4079
  store i8 0, i8* %118, align 1, !dbg !4081, !tbaa !738
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.131, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.131, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.131, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3883, metadata !600) #10, !dbg !3953
  call void @free(i8* %29) #10, !dbg !4082
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.131, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3883, metadata !600) #10, !dbg !3953
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !4083, !tbaa !607
  br label %123, !dbg !4084

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3883, metadata !600) #10, !dbg !3953
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3868, metadata !600), !dbg !4085
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3868, metadata !600), !dbg !4085
  %125 = load i8, i8* %124, align 1, !dbg !4086, !tbaa !738
  %126 = icmp eq i8 %125, 0, !dbg !4088
  br i1 %126, label %152, label %127, !dbg !4089

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !4090

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3868, metadata !600), !dbg !4085
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !4090
  %132 = icmp eq i32 %131, 0, !dbg !4092
  br i1 %132, label %139, label %133, !dbg !4093

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !4094
  br i1 %134, label %135, label %143, !dbg !4095

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !4096
  %137 = load i8, i8* %136, align 1, !dbg !4096, !tbaa !738
  %138 = icmp eq i8 %137, 0, !dbg !4097
  br i1 %138, label %139, label %143, !dbg !4098

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !4099
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !4101
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !4102
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3867, metadata !600), !dbg !3948
  br label %152, !dbg !4103

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !4104
  %145 = add i64 %144, 1, !dbg !4105
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !4106
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3868, metadata !600), !dbg !4085
  %147 = call i64 @strlen(i8* %146) #14, !dbg !4107
  %148 = add i64 %147, 1, !dbg !4108
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !4109
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3868, metadata !600), !dbg !4085
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3868, metadata !600), !dbg !4085
  %150 = load i8, i8* %149, align 1, !dbg !4086, !tbaa !738
  %151 = icmp eq i8 %150, 0, !dbg !4088
  br i1 %151, label %152, label %128, !dbg !4089, !llvm.loop !4110

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3867, metadata !600), !dbg !3948
  %154 = load i8, i8* %153, align 1, !dbg !4112, !tbaa !738
  %155 = icmp eq i8 %154, 0, !dbg !4114
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.137, i64 0, i64 0), i8* %153, !dbg !4115
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3867, metadata !600), !dbg !3948
  ret i8* %156, !dbg !4116
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4117 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4162, metadata !600), !dbg !4166
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4163, metadata !600), !dbg !4167
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !600), !dbg !4168
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4169
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4164, metadata !600), !dbg !4170
  %3 = icmp slt i32 %2, 0, !dbg !4171
  br i1 %3, label %4, label %6, !dbg !4173

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4174
  br label %24, !dbg !4175

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4176
  %8 = icmp eq i32 %7, 0, !dbg !4176
  br i1 %8, label %13, label %9, !dbg !4178

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4179
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4180
  %12 = icmp eq i64 %11, -1, !dbg !4181
  br i1 %12, label %16, label %13, !dbg !4182

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4183
  %15 = icmp eq i32 %14, 0, !dbg !4183
  br i1 %15, label %16, label %18, !dbg !4184

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4163, metadata !600), !dbg !4167
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4185
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4165, metadata !600), !dbg !4168
  br label %24, !dbg !4186

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4187
  %20 = load i32, i32* %19, align 4, !dbg !4187, !tbaa !730
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4163, metadata !600), !dbg !4167
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4163, metadata !600), !dbg !4167
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4185
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4165, metadata !600), !dbg !4168
  %22 = icmp eq i32 %20, 0, !dbg !4188
  br i1 %22, label %24, label %23, !dbg !4186

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4190, !tbaa !730
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4165, metadata !600), !dbg !4168
  br label %24, !dbg !4192

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4193
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4194 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4239, metadata !600), !dbg !4240
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4241
  br i1 %2, label %6, label %3, !dbg !4243

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4244
  %5 = icmp eq i32 %4, 0, !dbg !4244
  br i1 %5, label %6, label %8, !dbg !4245

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4246
  br label %17, !dbg !4247

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4248, metadata !600) #10, !dbg !4253
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4255
  %10 = load i32, i32* %9, align 8, !dbg !4255, !tbaa !3818
  %11 = and i32 %10, 256, !dbg !4257
  %12 = icmp eq i32 %11, 0, !dbg !4257
  br i1 %12, label %15, label %13, !dbg !4258

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4259
  br label %15, !dbg !4259

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4260
  br label %17, !dbg !4261

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4262
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4263 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4309, metadata !600), !dbg !4315
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4310, metadata !600), !dbg !4316
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4311, metadata !600), !dbg !4317
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4318
  %5 = load i8*, i8** %4, align 8, !dbg !4318, !tbaa !4011
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4319
  %7 = load i8*, i8** %6, align 8, !dbg !4319, !tbaa !4010
  %8 = icmp eq i8* %5, %7, !dbg !4320
  br i1 %8, label %9, label %28, !dbg !4321

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4322
  %11 = load i8*, i8** %10, align 8, !dbg !4322, !tbaa !4323
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4324
  %13 = load i8*, i8** %12, align 8, !dbg !4324, !tbaa !4325
  %14 = icmp eq i8* %11, %13, !dbg !4326
  br i1 %14, label %15, label %28, !dbg !4327

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4328
  %17 = load i8*, i8** %16, align 8, !dbg !4328, !tbaa !4329
  %18 = icmp eq i8* %17, null, !dbg !4330
  br i1 %18, label %19, label %28, !dbg !4331

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4332
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4333
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4312, metadata !600), !dbg !4334
  %22 = icmp eq i64 %21, -1, !dbg !4335
  br i1 %22, label %30, label %23, !dbg !4337

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4338
  %25 = load i32, i32* %24, align 8, !dbg !4339, !tbaa !3818
  %26 = and i32 %25, -17, !dbg !4339
  store i32 %26, i32* %24, align 8, !dbg !4339, !tbaa !3818
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4340
  store i64 %21, i64* %27, align 8, !dbg !4341, !tbaa !4342
  br label %30, !dbg !4343

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4344
  br label %30, !dbg !4345

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4346
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
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !531, !75, !81, !90, !533, !97, !104, !544, !175, !552, !569, !571, !575, !577, !579, !581, !184, !583, !585, !587}
!llvm.ident = !{!589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589}
!llvm.module.flags = !{!590, !591, !592, !593, !594}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 39, type: !60, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !27, globals: !37)
!3 = !DIFile(filename: "src/mknod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !13}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !6, line: 26, size: 32, elements: !7)
!6 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!7 = !{!8, !9, !10, !11, !12}
!8 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!9 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!10 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!11 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!12 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !14, line: 32, size: 32, elements: !15)
!14 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!16 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!17 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!18 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!19 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!20 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!21 = !DIEnumerator(name: "c_quoting_style", value: 5)
!22 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!23 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!24 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!25 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!26 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!27 = !{!28, !30, !31, !32, !34}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !33, line: 60, baseType: !34)
!33 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !35, line: 133, baseType: !36)
!35 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !{!38, !0}
!38 = !DIGlobalVariableExpression(var: !39)
!39 = distinct !DIGlobalVariable(name: "infomap", scope: !40, file: !41, line: 632, type: !57, isLocal: true, isDefinition: true)
!40 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !41, file: !41, line: 630, type: !42, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !46)
!41 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!42 = !DISubroutineType(types: !43)
!43 = !{null, !44}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
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
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 1280, elements: !71)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !63, line: 50, size: 256, elements: !64)
!63 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!64 = !{!65, !66, !68, !70}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !62, file: !63, line: 52, baseType: !44, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !62, file: !63, line: 55, baseType: !67, size: 32, offset: 64)
!67 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !62, file: !63, line: 56, baseType: !69, size: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !62, file: !63, line: 57, baseType: !67, size: 32, offset: 192)
!71 = !{!72}
!72 = !DISubrange(count: 5)
!73 = !DIGlobalVariableExpression(var: !74)
!74 = distinct !DIGlobalVariable(name: "Version", scope: !75, file: !76, line: 2, type: !44, isLocal: false, isDefinition: true)
!75 = distinct !DICompileUnit(language: DW_LANG_C99, file: !76, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, globals: !78)
!76 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!77 = !{}
!78 = !{!73}
!79 = !DIGlobalVariableExpression(var: !80)
!80 = distinct !DIGlobalVariable(name: "file_name", scope: !81, file: !86, line: 36, type: !44, isLocal: true, isDefinition: true)
!81 = distinct !DICompileUnit(language: DW_LANG_C99, file: !82, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, globals: !83)
!82 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!83 = !{!79, !84}
!84 = !DIGlobalVariableExpression(var: !85)
!85 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !81, file: !86, line: 46, type: !87, isLocal: true, isDefinition: true)
!86 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!87 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!88 = !DIGlobalVariableExpression(var: !89)
!89 = distinct !DIGlobalVariable(name: "exit_failure", scope: !90, file: !93, line: 24, type: !94, isLocal: false, isDefinition: true)
!90 = distinct !DICompileUnit(language: DW_LANG_C99, file: !91, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, globals: !92)
!91 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!92 = !{!88}
!93 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!94 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !67)
!95 = !DIGlobalVariableExpression(var: !96)
!96 = distinct !DIGlobalVariable(name: "program_name", scope: !97, file: !101, line: 33, type: !44, isLocal: false, isDefinition: true)
!97 = distinct !DICompileUnit(language: DW_LANG_C99, file: !98, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !99, globals: !100)
!98 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!99 = !{!30, !28}
!100 = !{!95}
!101 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!102 = !DIGlobalVariableExpression(var: !103)
!103 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !104, file: !134, line: 77, type: !169, isLocal: false, isDefinition: true)
!104 = distinct !DICompileUnit(language: DW_LANG_C99, file: !105, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106, retainedTypes: !127, globals: !131)
!105 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!106 = !{!13, !107, !112}
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !14, line: 242, size: 32, elements: !108)
!108 = !{!109, !110, !111}
!109 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!110 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!111 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !113, line: 46, size: 32, elements: !114)
!113 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126}
!115 = !DIEnumerator(name: "_ISupper", value: 256)
!116 = !DIEnumerator(name: "_ISlower", value: 512)
!117 = !DIEnumerator(name: "_ISalpha", value: 1024)
!118 = !DIEnumerator(name: "_ISdigit", value: 2048)
!119 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!120 = !DIEnumerator(name: "_ISspace", value: 8192)
!121 = !DIEnumerator(name: "_ISprint", value: 16384)
!122 = !DIEnumerator(name: "_ISgraph", value: 32768)
!123 = !DIEnumerator(name: "_ISblank", value: 1)
!124 = !DIEnumerator(name: "_IScntrl", value: 2)
!125 = !DIEnumerator(name: "_ISpunct", value: 4)
!126 = !DIEnumerator(name: "_ISalnum", value: 8)
!127 = !{!67, !128, !129, !28}
!128 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !130, line: 62, baseType: !36)
!130 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!131 = !{!102, !132, !139, !151, !153, !158, !165, !167}
!132 = !DIGlobalVariableExpression(var: !133)
!133 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !104, file: !134, line: 93, type: !135, isLocal: false, isDefinition: true)
!134 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 320, elements: !137)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!137 = !{!138}
!138 = !DISubrange(count: 10)
!139 = !DIGlobalVariableExpression(var: !140)
!140 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !104, file: !134, line: 1043, type: !141, isLocal: false, isDefinition: true)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !134, line: 57, size: 448, elements: !142)
!142 = !{!143, !144, !145, !149, !150}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !141, file: !134, line: 60, baseType: !13, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !141, file: !134, line: 63, baseType: !67, size: 32, offset: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !141, file: !134, line: 67, baseType: !146, size: 256, offset: 64)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 256, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 8)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !141, file: !134, line: 70, baseType: !44, size: 64, offset: 320)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !141, file: !134, line: 73, baseType: !44, size: 64, offset: 384)
!151 = !DIGlobalVariableExpression(var: !152)
!152 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !104, file: !134, line: 108, type: !141, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154)
!154 = distinct !DIGlobalVariable(name: "slot0", scope: !104, file: !134, line: 834, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 2048, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 256)
!158 = !DIGlobalVariableExpression(var: !159)
!159 = distinct !DIGlobalVariable(name: "slotvec", scope: !104, file: !134, line: 837, type: !160, isLocal: true, isDefinition: true)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !134, line: 826, size: 128, elements: !162)
!162 = !{!163, !164}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !161, file: !134, line: 828, baseType: !129, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !161, file: !134, line: 829, baseType: !28, size: 64, offset: 64)
!165 = !DIGlobalVariableExpression(var: !166)
!166 = distinct !DIGlobalVariable(name: "nslots", scope: !104, file: !134, line: 835, type: !67, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168)
!168 = distinct !DIGlobalVariable(name: "slotvec0", scope: !104, file: !134, line: 836, type: !161, isLocal: true, isDefinition: true)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 704, elements: !171)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!171 = !{!172}
!172 = !DISubrange(count: 11)
!173 = !DIGlobalVariableExpression(var: !174)
!174 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !175, file: !178, line: 26, type: !179, isLocal: false, isDefinition: true)
!175 = distinct !DICompileUnit(language: DW_LANG_C99, file: !176, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, globals: !177)
!176 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!177 = !{!173}
!178 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 376, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 47)
!182 = !DIGlobalVariableExpression(var: !183)
!183 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !184, file: !529, line: 120, type: !530, isLocal: true, isDefinition: true)
!184 = distinct !DICompileUnit(language: DW_LANG_C99, file: !185, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !186, retainedTypes: !525, globals: !528)
!185 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!186 = !{!187}
!187 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !188, line: 41, size: 32, elements: !189)
!188 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!189 = !{!190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524}
!190 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!191 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!192 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!193 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!194 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!195 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!196 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!197 = !DIEnumerator(name: "DAY_1", value: 131079)
!198 = !DIEnumerator(name: "DAY_2", value: 131080)
!199 = !DIEnumerator(name: "DAY_3", value: 131081)
!200 = !DIEnumerator(name: "DAY_4", value: 131082)
!201 = !DIEnumerator(name: "DAY_5", value: 131083)
!202 = !DIEnumerator(name: "DAY_6", value: 131084)
!203 = !DIEnumerator(name: "DAY_7", value: 131085)
!204 = !DIEnumerator(name: "ABMON_1", value: 131086)
!205 = !DIEnumerator(name: "ABMON_2", value: 131087)
!206 = !DIEnumerator(name: "ABMON_3", value: 131088)
!207 = !DIEnumerator(name: "ABMON_4", value: 131089)
!208 = !DIEnumerator(name: "ABMON_5", value: 131090)
!209 = !DIEnumerator(name: "ABMON_6", value: 131091)
!210 = !DIEnumerator(name: "ABMON_7", value: 131092)
!211 = !DIEnumerator(name: "ABMON_8", value: 131093)
!212 = !DIEnumerator(name: "ABMON_9", value: 131094)
!213 = !DIEnumerator(name: "ABMON_10", value: 131095)
!214 = !DIEnumerator(name: "ABMON_11", value: 131096)
!215 = !DIEnumerator(name: "ABMON_12", value: 131097)
!216 = !DIEnumerator(name: "MON_1", value: 131098)
!217 = !DIEnumerator(name: "MON_2", value: 131099)
!218 = !DIEnumerator(name: "MON_3", value: 131100)
!219 = !DIEnumerator(name: "MON_4", value: 131101)
!220 = !DIEnumerator(name: "MON_5", value: 131102)
!221 = !DIEnumerator(name: "MON_6", value: 131103)
!222 = !DIEnumerator(name: "MON_7", value: 131104)
!223 = !DIEnumerator(name: "MON_8", value: 131105)
!224 = !DIEnumerator(name: "MON_9", value: 131106)
!225 = !DIEnumerator(name: "MON_10", value: 131107)
!226 = !DIEnumerator(name: "MON_11", value: 131108)
!227 = !DIEnumerator(name: "MON_12", value: 131109)
!228 = !DIEnumerator(name: "AM_STR", value: 131110)
!229 = !DIEnumerator(name: "PM_STR", value: 131111)
!230 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!231 = !DIEnumerator(name: "D_FMT", value: 131113)
!232 = !DIEnumerator(name: "T_FMT", value: 131114)
!233 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!234 = !DIEnumerator(name: "ERA", value: 131116)
!235 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!236 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!237 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!238 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!239 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!240 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!241 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!242 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!243 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!244 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!245 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!246 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!247 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!248 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!249 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!250 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!251 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!252 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!253 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!254 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!255 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!256 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!257 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!258 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!259 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!260 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!261 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!262 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!263 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!264 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!265 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!266 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!267 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!268 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!269 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!270 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!271 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!272 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!273 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!274 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!275 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!276 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!277 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!278 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!279 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!280 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!281 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!282 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!283 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!284 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!285 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!286 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!287 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!288 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!289 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!290 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!291 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!292 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!293 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!294 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!295 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!296 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!297 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!298 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!299 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!300 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!301 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!302 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!303 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!304 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!305 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!306 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!307 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!308 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!309 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!310 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!311 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!312 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!313 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!314 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!315 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!316 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!317 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!318 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!319 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!320 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!321 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!322 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!323 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!324 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!325 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!326 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!327 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!328 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!329 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!330 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!331 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!332 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!333 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!334 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!335 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!336 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!337 = !DIEnumerator(name: "CODESET", value: 14)
!338 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!339 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!340 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!341 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!342 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!343 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!344 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!345 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!346 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!347 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!348 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!349 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!350 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!351 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!352 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!353 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!354 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!355 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!356 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!357 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!358 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!359 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!360 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!361 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!362 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!363 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!364 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!365 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!366 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!367 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!368 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!369 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!370 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!371 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!372 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!373 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!374 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!375 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!376 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!377 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!378 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!379 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!380 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!381 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!382 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!383 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!384 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!385 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!386 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!387 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!388 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!389 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!390 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!391 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!392 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!393 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!394 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!395 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!396 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!397 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!398 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!399 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!400 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!401 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!402 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!403 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!404 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!405 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!406 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!407 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!408 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!409 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!410 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!411 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!412 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!413 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!414 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!415 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!416 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!417 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!418 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!419 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!420 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!421 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!422 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!423 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!424 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!425 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!426 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!427 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!428 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!429 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!430 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!431 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!432 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!433 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!434 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!435 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!436 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!437 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!438 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!439 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!440 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!441 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!442 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!443 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!444 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!445 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!446 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!447 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!448 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!449 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!450 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!451 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!452 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!453 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!454 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!455 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!456 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!457 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!458 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!459 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!460 = !DIEnumerator(name: "THOUSEP", value: 65537)
!461 = !DIEnumerator(name: "__GROUPING", value: 65538)
!462 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!463 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!464 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!465 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!466 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!467 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!468 = !DIEnumerator(name: "__YESSTR", value: 327682)
!469 = !DIEnumerator(name: "__NOSTR", value: 327683)
!470 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!471 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!472 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!473 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!474 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!475 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!476 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!477 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!478 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!479 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!480 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!481 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!482 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!483 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!484 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!485 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!486 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!487 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!488 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!489 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!490 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!491 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!492 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!493 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!494 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!495 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!496 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!497 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!498 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!499 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!500 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!501 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!502 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!503 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!504 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!505 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!506 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!507 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!508 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!509 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!510 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!511 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!512 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!513 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!514 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!515 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!516 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!517 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!518 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!519 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!520 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!521 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!522 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!523 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!524 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!525 = !{!30, !28, !526}
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!528 = !{!182}
!529 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!530 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !44)
!531 = distinct !DICompileUnit(language: DW_LANG_C99, file: !532, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77)
!532 = !DIFile(filename: "src/selinux.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!533 = distinct !DICompileUnit(language: DW_LANG_C99, file: !534, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !535, retainedTypes: !543)
!534 = !DIFile(filename: "./lib/modechange.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!535 = !{!536}
!536 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !537, line: 78, size: 32, elements: !538)
!537 = !DIFile(filename: "lib/modechange.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!538 = !{!539, !540, !541, !542}
!539 = !DIEnumerator(name: "MODE_DONE", value: 0)
!540 = !DIEnumerator(name: "MODE_ORDINARY_CHANGE", value: 1)
!541 = !DIEnumerator(name: "MODE_X_IF_ANY_X", value: 2)
!542 = !DIEnumerator(name: "MODE_COPY_EXISTING", value: 3)
!543 = !{!129}
!544 = distinct !DICompileUnit(language: DW_LANG_C99, file: !545, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !546, retainedTypes: !551)
!545 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!546 = !{!547}
!547 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !548, line: 41, size: 32, elements: !549)
!548 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!549 = !{!550}
!550 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!551 = !{!30}
!552 = distinct !DICompileUnit(language: DW_LANG_C99, file: !553, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !554, retainedTypes: !568)
!553 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!554 = !{!555}
!555 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !557, file: !556, line: 192, size: 32, elements: !566)
!556 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!557 = distinct !DISubprogram(name: "x2nrealloc", scope: !556, file: !556, line: 180, type: !558, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !561)
!558 = !DISubroutineType(types: !559)
!559 = !{!30, !30, !560, !129}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!561 = !{!562, !563, !564, !565}
!562 = !DILocalVariable(name: "p", arg: 1, scope: !557, file: !556, line: 180, type: !30)
!563 = !DILocalVariable(name: "pn", arg: 2, scope: !557, file: !556, line: 180, type: !560)
!564 = !DILocalVariable(name: "s", arg: 3, scope: !557, file: !556, line: 180, type: !129)
!565 = !DILocalVariable(name: "n", scope: !557, file: !556, line: 182, type: !129)
!566 = !{!567}
!567 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!568 = !{!129, !28, !30}
!569 = distinct !DICompileUnit(language: DW_LANG_C99, file: !570, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77)
!570 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!571 = distinct !DICompileUnit(language: DW_LANG_C99, file: !572, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !573, retainedTypes: !574)
!572 = !DIFile(filename: "./lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!573 = !{!5, !112}
!574 = !{!67, !128}
!575 = distinct !DICompileUnit(language: DW_LANG_C99, file: !576, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !551)
!576 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!577 = distinct !DICompileUnit(language: DW_LANG_C99, file: !578, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !543)
!578 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!579 = distinct !DICompileUnit(language: DW_LANG_C99, file: !580, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77)
!580 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!581 = distinct !DICompileUnit(language: DW_LANG_C99, file: !582, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77)
!582 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!583 = distinct !DICompileUnit(language: DW_LANG_C99, file: !584, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77)
!584 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!585 = distinct !DICompileUnit(language: DW_LANG_C99, file: !586, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !551)
!586 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!587 = distinct !DICompileUnit(language: DW_LANG_C99, file: !588, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !551)
!588 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!589 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!590 = !{i32 2, !"Dwarf Version", i32 4}
!591 = !{i32 2, !"Debug Info Version", i32 3}
!592 = !{i32 1, !"wchar_size", i32 4}
!593 = !{i32 7, !"PIC Level", i32 2}
!594 = !{i32 7, !"PIE Level", i32 2}
!595 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 49, type: !596, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !598)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !67}
!598 = !{!599}
!599 = !DILocalVariable(name: "status", arg: 1, scope: !595, file: !3, line: 49, type: !67)
!600 = !DIExpression()
!601 = !DILocation(line: 49, column: 12, scope: !595)
!602 = !DILocation(line: 51, column: 14, scope: !603)
!603 = distinct !DILexicalBlock(scope: !595, file: !3, line: 51, column: 7)
!604 = !DILocation(line: 51, column: 7, scope: !595)
!605 = !DILocation(line: 52, column: 5, scope: !606)
!606 = distinct !DILexicalBlock(scope: !603, file: !3, line: 52, column: 5)
!607 = !{!608, !608, i64 0}
!608 = !{!"any pointer", !609, i64 0}
!609 = !{!"omnipotent char", !610, i64 0}
!610 = !{!"Simple C/C++ TBAA"}
!611 = !DILocation(line: 55, column: 7, scope: !612)
!612 = distinct !DILexicalBlock(scope: !603, file: !3, line: 54, column: 5)
!613 = !DILocation(line: 57, column: 7, scope: !612)
!614 = !DILocation(line: 587, column: 3, scope: !615, inlinedAt: !618)
!615 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !41, file: !41, line: 585, type: !616, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !77)
!616 = !DISubroutineType(types: !617)
!617 = !{null}
!618 = distinct !DILocation(line: 61, column: 7, scope: !612)
!619 = !DILocation(line: 63, column: 7, scope: !612)
!620 = !DILocation(line: 66, column: 7, scope: !612)
!621 = !DILocation(line: 71, column: 7, scope: !612)
!622 = !DILocation(line: 72, column: 7, scope: !612)
!623 = !DILocation(line: 73, column: 7, scope: !612)
!624 = !DILocation(line: 80, column: 7, scope: !612)
!625 = !DILocation(line: 86, column: 7, scope: !612)
!626 = !DILocation(line: 642, column: 15, scope: !40, inlinedAt: !627)
!627 = distinct !DILocation(line: 87, column: 7, scope: !612)
!628 = !DILocation(line: 651, column: 3, scope: !40, inlinedAt: !627)
!629 = !DILocation(line: 655, column: 29, scope: !40, inlinedAt: !627)
!630 = !DILocation(line: 655, column: 15, scope: !40, inlinedAt: !627)
!631 = !DILocation(line: 656, column: 7, scope: !632, inlinedAt: !627)
!632 = distinct !DILexicalBlock(scope: !40, file: !41, line: 656, column: 7)
!633 = !DILocation(line: 656, column: 19, scope: !632, inlinedAt: !627)
!634 = !DILocation(line: 656, column: 22, scope: !632, inlinedAt: !627)
!635 = !DILocation(line: 656, column: 7, scope: !40, inlinedAt: !627)
!636 = !DILocation(line: 662, column: 7, scope: !637, inlinedAt: !627)
!637 = distinct !DILexicalBlock(scope: !632, file: !41, line: 657, column: 5)
!638 = !DILocation(line: 664, column: 5, scope: !637, inlinedAt: !627)
!639 = !DILocation(line: 665, column: 3, scope: !40, inlinedAt: !627)
!640 = !DILocation(line: 667, column: 3, scope: !40, inlinedAt: !627)
!641 = !DILocation(line: 89, column: 3, scope: !595)
!642 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 93, type: !643, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !646)
!643 = !DISubroutineType(types: !644)
!644 = !{!67, !67, !645}
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!646 = !{!647, !648, !649, !652, !653, !654, !655, !656, !657, !658, !661, !665, !668, !671, !672, !676, !677}
!647 = !DILocalVariable(name: "argc", arg: 1, scope: !642, file: !3, line: 93, type: !67)
!648 = !DILocalVariable(name: "argv", arg: 2, scope: !642, file: !3, line: 93, type: !645)
!649 = !DILocalVariable(name: "newmode", scope: !642, file: !3, line: 95, type: !650)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !33, line: 70, baseType: !651)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !35, line: 138, baseType: !31)
!652 = !DILocalVariable(name: "specified_mode", scope: !642, file: !3, line: 96, type: !44)
!653 = !DILocalVariable(name: "optc", scope: !642, file: !3, line: 97, type: !67)
!654 = !DILocalVariable(name: "expected_operands", scope: !642, file: !3, line: 98, type: !129)
!655 = !DILocalVariable(name: "node_type", scope: !642, file: !3, line: 99, type: !650)
!656 = !DILocalVariable(name: "scontext", scope: !642, file: !3, line: 100, type: !44)
!657 = !DILocalVariable(name: "set_security_context", scope: !642, file: !3, line: 101, type: !87)
!658 = !DILocalVariable(name: "umask_value", scope: !659, file: !3, line: 148, type: !650)
!659 = distinct !DILexicalBlock(scope: !660, file: !3, line: 147, column: 5)
!660 = distinct !DILexicalBlock(scope: !642, file: !3, line: 146, column: 7)
!661 = !DILocalVariable(name: "change", scope: !659, file: !3, line: 149, type: !662)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !664, line: 25, flags: DIFlagFwdDecl)
!664 = !DIFile(filename: "./lib/modechange.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!665 = !DILocalVariable(name: "ret", scope: !666, file: !3, line: 192, type: !67)
!666 = distinct !DILexicalBlock(scope: !667, file: !3, line: 191, column: 5)
!667 = distinct !DILexicalBlock(scope: !642, file: !3, line: 190, column: 7)
!668 = !DILocalVariable(name: "s_major", scope: !669, file: !3, line: 228, type: !44)
!669 = distinct !DILexicalBlock(scope: !670, file: !3, line: 227, column: 7)
!670 = distinct !DILexicalBlock(scope: !642, file: !3, line: 208, column: 5)
!671 = !DILocalVariable(name: "s_minor", scope: !669, file: !3, line: 229, type: !44)
!672 = !DILocalVariable(name: "i_major", scope: !669, file: !3, line: 230, type: !673)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !674, line: 112, baseType: !675)
!674 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !35, line: 62, baseType: !36)
!676 = !DILocalVariable(name: "i_minor", scope: !669, file: !3, line: 230, type: !673)
!677 = !DILocalVariable(name: "device", scope: !669, file: !3, line: 231, type: !32)
!678 = !DILocation(line: 93, column: 11, scope: !642)
!679 = !DILocation(line: 93, column: 24, scope: !642)
!680 = !DILocation(line: 96, column: 15, scope: !642)
!681 = !DILocation(line: 100, column: 15, scope: !642)
!682 = !DILocation(line: 101, column: 8, scope: !642)
!683 = !DILocation(line: 104, column: 21, scope: !642)
!684 = !DILocation(line: 104, column: 3, scope: !642)
!685 = !DILocation(line: 105, column: 3, scope: !642)
!686 = !DILocation(line: 106, column: 3, scope: !642)
!687 = !DILocation(line: 107, column: 3, scope: !642)
!688 = !DILocation(line: 109, column: 3, scope: !642)
!689 = !DILocation(line: 111, column: 3, scope: !642)
!690 = !DILocation(line: 111, column: 18, scope: !642)
!691 = !DILocation(line: 97, column: 7, scope: !642)
!692 = !DILocation(line: 116, column: 28, scope: !693)
!693 = distinct !DILexicalBlock(scope: !694, file: !3, line: 114, column: 9)
!694 = distinct !DILexicalBlock(scope: !642, file: !3, line: 112, column: 5)
!695 = !DILocation(line: 117, column: 11, scope: !693)
!696 = distinct !{!696, !689, !697}
!697 = !DILocation(line: 143, column: 5, scope: !642)
!698 = !DILocation(line: 131, column: 20, scope: !699)
!699 = distinct !DILexicalBlock(scope: !700, file: !3, line: 131, column: 20)
!700 = distinct !DILexicalBlock(scope: !701, file: !3, line: 124, column: 20)
!701 = distinct !DILexicalBlock(scope: !693, file: !3, line: 119, column: 15)
!702 = !DILocation(line: 131, column: 20, scope: !700)
!703 = !DILocation(line: 134, column: 22, scope: !704)
!704 = distinct !DILexicalBlock(scope: !699, file: !3, line: 132, column: 13)
!705 = !DILocation(line: 133, column: 15, scope: !704)
!706 = !DILocation(line: 136, column: 13, scope: !704)
!707 = !DILocation(line: 138, column: 9, scope: !693)
!708 = !DILocation(line: 139, column: 9, scope: !693)
!709 = !DILocation(line: 141, column: 11, scope: !693)
!710 = !DILocation(line: 95, column: 10, scope: !642)
!711 = !DILocation(line: 146, column: 7, scope: !660)
!712 = !DILocation(line: 146, column: 7, scope: !642)
!713 = !DILocation(line: 149, column: 36, scope: !659)
!714 = !DILocation(line: 149, column: 27, scope: !659)
!715 = !DILocation(line: 150, column: 12, scope: !716)
!716 = distinct !DILexicalBlock(scope: !659, file: !3, line: 150, column: 11)
!717 = !DILocation(line: 150, column: 11, scope: !659)
!718 = !DILocation(line: 151, column: 9, scope: !716)
!719 = !DILocation(line: 152, column: 21, scope: !659)
!720 = !DILocation(line: 148, column: 14, scope: !659)
!721 = !DILocation(line: 153, column: 7, scope: !659)
!722 = !DILocation(line: 154, column: 17, scope: !659)
!723 = !DILocation(line: 155, column: 13, scope: !659)
!724 = !DILocation(line: 155, column: 7, scope: !659)
!725 = !DILocation(line: 156, column: 19, scope: !726)
!726 = distinct !DILexicalBlock(scope: !659, file: !3, line: 156, column: 11)
!727 = !DILocation(line: 156, column: 11, scope: !659)
!728 = !DILocation(line: 157, column: 9, scope: !726)
!729 = !DILocation(line: 164, column: 32, scope: !642)
!730 = !{!731, !731, i64 0}
!731 = !{!"int", !609, i64 0}
!732 = !DILocation(line: 164, column: 29, scope: !642)
!733 = !DILocation(line: 165, column: 24, scope: !642)
!734 = !DILocation(line: 165, column: 35, scope: !642)
!735 = !DILocation(line: 165, column: 39, scope: !642)
!736 = !DILocation(line: 165, column: 46, scope: !642)
!737 = !DILocation(line: 165, column: 49, scope: !642)
!738 = !{!609, !609, i64 0}
!739 = !DILocation(line: 165, column: 69, scope: !642)
!740 = !DILocation(line: 164, column: 23, scope: !642)
!741 = !DILocation(line: 98, column: 10, scope: !642)
!742 = !DILocation(line: 168, column: 12, scope: !743)
!743 = distinct !DILexicalBlock(scope: !642, file: !3, line: 168, column: 7)
!744 = !DILocation(line: 168, column: 7, scope: !743)
!745 = !DILocation(line: 168, column: 21, scope: !743)
!746 = !DILocation(line: 168, column: 7, scope: !642)
!747 = !DILocation(line: 170, column: 11, scope: !748)
!748 = distinct !DILexicalBlock(scope: !743, file: !3, line: 169, column: 5)
!749 = !DILocation(line: 171, column: 22, scope: !750)
!750 = distinct !DILexicalBlock(scope: !748, file: !3, line: 170, column: 11)
!751 = !DILocation(line: 171, column: 9, scope: !750)
!752 = !DILocation(line: 173, column: 22, scope: !750)
!753 = !DILocation(line: 173, column: 70, scope: !750)
!754 = !DILocation(line: 173, column: 60, scope: !750)
!755 = !DILocation(line: 173, column: 53, scope: !750)
!756 = !DILocation(line: 173, column: 9, scope: !750)
!757 = !DILocation(line: 174, column: 34, scope: !758)
!758 = distinct !DILexicalBlock(scope: !748, file: !3, line: 174, column: 11)
!759 = !DILocation(line: 174, column: 44, scope: !758)
!760 = !DILocation(line: 174, column: 42, scope: !758)
!761 = !DILocation(line: 174, column: 51, scope: !758)
!762 = !DILocation(line: 174, column: 11, scope: !748)
!763 = !DILocation(line: 175, column: 9, scope: !758)
!764 = !DILocation(line: 177, column: 7, scope: !748)
!765 = !DILocation(line: 180, column: 25, scope: !766)
!766 = distinct !DILexicalBlock(scope: !642, file: !3, line: 180, column: 7)
!767 = !DILocation(line: 180, column: 7, scope: !642)
!768 = !DILocation(line: 182, column: 20, scope: !769)
!769 = distinct !DILexicalBlock(scope: !766, file: !3, line: 181, column: 5)
!770 = !DILocation(line: 183, column: 26, scope: !769)
!771 = !DILocation(line: 183, column: 33, scope: !769)
!772 = !DILocation(line: 183, column: 21, scope: !769)
!773 = !DILocation(line: 183, column: 14, scope: !769)
!774 = !DILocation(line: 182, column: 7, scope: !769)
!775 = !DILocation(line: 184, column: 34, scope: !776)
!776 = distinct !DILexicalBlock(scope: !769, file: !3, line: 184, column: 11)
!777 = !DILocation(line: 184, column: 44, scope: !776)
!778 = !DILocation(line: 184, column: 42, scope: !776)
!779 = !DILocation(line: 184, column: 51, scope: !776)
!780 = !DILocation(line: 184, column: 11, scope: !769)
!781 = !DILocation(line: 185, column: 9, scope: !776)
!782 = !DILocation(line: 187, column: 7, scope: !769)
!783 = !DILocation(line: 207, column: 23, scope: !642)
!784 = !DILocation(line: 207, column: 11, scope: !642)
!785 = !DILocation(line: 207, column: 3, scope: !642)
!786 = !DILocation(line: 99, column: 10, scope: !642)
!787 = !DILocation(line: 224, column: 7, scope: !670)
!788 = !DILocation(line: 228, column: 43, scope: !669)
!789 = !DILocation(line: 228, column: 31, scope: !669)
!790 = !DILocation(line: 228, column: 21, scope: !669)
!791 = !DILocation(line: 229, column: 43, scope: !669)
!792 = !DILocation(line: 229, column: 31, scope: !669)
!793 = !DILocation(line: 229, column: 21, scope: !669)
!794 = !DILocation(line: 230, column: 9, scope: !669)
!795 = !DILocation(line: 230, column: 19, scope: !669)
!796 = !DILocation(line: 233, column: 13, scope: !797)
!797 = distinct !DILexicalBlock(scope: !669, file: !3, line: 233, column: 13)
!798 = !DILocation(line: 233, column: 59, scope: !797)
!799 = !DILocation(line: 234, column: 13, scope: !797)
!800 = !DILocation(line: 234, column: 16, scope: !797)
!801 = !{!802, !802, i64 0}
!802 = !{!"long", !609, i64 0}
!803 = !DILocation(line: 234, column: 27, scope: !797)
!804 = !DILocation(line: 234, column: 24, scope: !797)
!805 = !DILocation(line: 233, column: 13, scope: !669)
!806 = !DILocation(line: 235, column: 11, scope: !797)
!807 = !DILocation(line: 230, column: 28, scope: !669)
!808 = !DILocation(line: 238, column: 13, scope: !809)
!809 = distinct !DILexicalBlock(scope: !669, file: !3, line: 238, column: 13)
!810 = !DILocation(line: 238, column: 59, scope: !809)
!811 = !DILocation(line: 239, column: 13, scope: !809)
!812 = !DILocation(line: 239, column: 16, scope: !809)
!813 = !DILocation(line: 239, column: 27, scope: !809)
!814 = !DILocation(line: 239, column: 24, scope: !809)
!815 = !DILocation(line: 238, column: 13, scope: !669)
!816 = !DILocation(line: 240, column: 11, scope: !809)
!817 = !DILocation(line: 243, column: 18, scope: !669)
!818 = !DILocation(line: 81, column: 1, scope: !819, inlinedAt: !827)
!819 = distinct !DISubprogram(name: "gnu_dev_makedev", scope: !820, file: !820, line: 81, type: !821, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !823)
!820 = !DIFile(filename: "/usr/include/sys/sysmacros.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!821 = !DISubroutineType(types: !822)
!822 = !{!34, !31, !31}
!823 = !{!824, !825, !826}
!824 = !DILocalVariable(name: "__major", arg: 1, scope: !819, file: !820, line: 81, type: !31)
!825 = !DILocalVariable(name: "__minor", arg: 2, scope: !819, file: !820, line: 81, type: !31)
!826 = !DILocalVariable(name: "__dev", scope: !819, file: !820, line: 81, type: !34)
!827 = distinct !DILocation(line: 243, column: 18, scope: !669)
!828 = !DILocation(line: 231, column: 15, scope: !669)
!829 = !DILocation(line: 245, column: 20, scope: !830)
!830 = distinct !DILexicalBlock(scope: !669, file: !3, line: 245, column: 13)
!831 = !DILocation(line: 245, column: 13, scope: !669)
!832 = !DILocation(line: 246, column: 11, scope: !830)
!833 = !DILocation(line: 253, column: 25, scope: !834)
!834 = distinct !DILexicalBlock(scope: !669, file: !3, line: 253, column: 13)
!835 = !DILocation(line: 253, column: 20, scope: !834)
!836 = !DILocation(line: 253, column: 42, scope: !834)
!837 = !DILocation(line: 479, column: 1, scope: !838, inlinedAt: !846)
!838 = distinct !DISubprogram(name: "mknod", scope: !839, file: !839, line: 479, type: !840, isLocal: false, isDefinition: true, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !842)
!839 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!840 = !DISubroutineType(types: !841)
!841 = !{!67, !44, !651, !34}
!842 = !{!843, !844, !845}
!843 = !DILocalVariable(name: "__path", arg: 1, scope: !838, file: !839, line: 479, type: !44)
!844 = !DILocalVariable(name: "__mode", arg: 2, scope: !838, file: !839, line: 479, type: !651)
!845 = !DILocalVariable(name: "__dev", arg: 3, scope: !838, file: !839, line: 479, type: !34)
!846 = distinct !DILocation(line: 253, column: 13, scope: !834)
!847 = !DILocation(line: 481, column: 10, scope: !838, inlinedAt: !846)
!848 = !DILocation(line: 481, column: 3, scope: !838, inlinedAt: !846)
!849 = !DILocation(line: 253, column: 63, scope: !834)
!850 = !DILocation(line: 253, column: 13, scope: !669)
!851 = !DILocation(line: 254, column: 11, scope: !834)
!852 = !DILocation(line: 255, column: 7, scope: !670)
!853 = !DILocation(line: 256, column: 7, scope: !670)
!854 = !DILocation(line: 261, column: 19, scope: !855)
!855 = distinct !DILexicalBlock(scope: !670, file: !3, line: 261, column: 11)
!856 = !DILocation(line: 261, column: 11, scope: !855)
!857 = !DILocation(line: 261, column: 42, scope: !855)
!858 = !DILocation(line: 261, column: 11, scope: !670)
!859 = !DILocation(line: 262, column: 9, scope: !855)
!860 = !DILocation(line: 266, column: 20, scope: !670)
!861 = !DILocation(line: 266, column: 61, scope: !670)
!862 = !DILocation(line: 266, column: 68, scope: !670)
!863 = !DILocation(line: 266, column: 56, scope: !670)
!864 = !DILocation(line: 266, column: 49, scope: !670)
!865 = !DILocation(line: 266, column: 7, scope: !670)
!866 = !DILocation(line: 267, column: 7, scope: !670)
!867 = !DILocation(line: 270, column: 22, scope: !868)
!868 = distinct !DILexicalBlock(scope: !642, file: !3, line: 270, column: 7)
!869 = !DILocation(line: 270, column: 38, scope: !868)
!870 = !DILocation(line: 270, column: 33, scope: !868)
!871 = !DILocation(line: 270, column: 25, scope: !868)
!872 = !DILocation(line: 270, column: 56, scope: !868)
!873 = !DILocation(line: 270, column: 7, scope: !642)
!874 = !DILocation(line: 271, column: 5, scope: !868)
!875 = !DILocation(line: 274, column: 3, scope: !642)
!876 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !86, file: !86, line: 41, type: !42, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !877)
!877 = !{!878}
!878 = !DILocalVariable(name: "file", arg: 1, scope: !876, file: !86, line: 41, type: !44)
!879 = !DILocation(line: 41, column: 41, scope: !876)
!880 = !DILocation(line: 43, column: 13, scope: !876)
!881 = !DILocation(line: 44, column: 1, scope: !876)
!882 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !86, file: !86, line: 78, type: !883, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !885)
!883 = !DISubroutineType(types: !884)
!884 = !{null, !87}
!885 = !{!886}
!886 = !DILocalVariable(name: "ignore", arg: 1, scope: !882, file: !86, line: 78, type: !87)
!887 = !DILocation(line: 78, column: 37, scope: !882)
!888 = !DILocation(line: 80, column: 16, scope: !882)
!889 = !{!890, !890, i64 0}
!890 = !{!"_Bool", !609, i64 0}
!891 = !DILocation(line: 81, column: 1, scope: !882)
!892 = distinct !DISubprogram(name: "close_stdout", scope: !86, file: !86, line: 107, type: !616, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !81, variables: !893)
!893 = !{!894}
!894 = !DILocalVariable(name: "write_error", scope: !895, file: !86, line: 112, type: !44)
!895 = distinct !DILexicalBlock(scope: !896, file: !86, line: 111, column: 5)
!896 = distinct !DILexicalBlock(scope: !892, file: !86, line: 109, column: 7)
!897 = !DILocation(line: 109, column: 21, scope: !896)
!898 = !DILocation(line: 109, column: 7, scope: !896)
!899 = !DILocation(line: 109, column: 29, scope: !896)
!900 = !DILocation(line: 110, column: 7, scope: !896)
!901 = !DILocation(line: 110, column: 12, scope: !896)
!902 = !{i8 0, i8 2}
!903 = !DILocation(line: 114, column: 19, scope: !904)
!904 = distinct !DILexicalBlock(scope: !895, file: !86, line: 113, column: 11)
!905 = !DILocation(line: 110, column: 25, scope: !896)
!906 = !DILocation(line: 110, column: 28, scope: !896)
!907 = !DILocation(line: 110, column: 34, scope: !896)
!908 = !DILocation(line: 109, column: 7, scope: !892)
!909 = !DILocation(line: 112, column: 33, scope: !895)
!910 = !DILocation(line: 112, column: 19, scope: !895)
!911 = !DILocation(line: 113, column: 11, scope: !904)
!912 = !DILocation(line: 113, column: 11, scope: !895)
!913 = !DILocation(line: 114, column: 36, scope: !904)
!914 = !DILocation(line: 114, column: 9, scope: !904)
!915 = !DILocation(line: 117, column: 9, scope: !904)
!916 = !DILocation(line: 119, column: 14, scope: !895)
!917 = !DILocation(line: 119, column: 7, scope: !895)
!918 = !DILocation(line: 122, column: 22, scope: !919)
!919 = distinct !DILexicalBlock(scope: !892, file: !86, line: 122, column: 8)
!920 = !DILocation(line: 122, column: 8, scope: !919)
!921 = !DILocation(line: 122, column: 30, scope: !919)
!922 = !DILocation(line: 122, column: 8, scope: !892)
!923 = !DILocation(line: 123, column: 13, scope: !919)
!924 = !DILocation(line: 123, column: 6, scope: !919)
!925 = !DILocation(line: 124, column: 1, scope: !892)
!926 = distinct !DISubprogram(name: "mode_compile", scope: !537, file: !537, line: 134, type: !927, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !533, variables: !937)
!927 = !DISubroutineType(types: !928)
!928 = !{!929, !44}
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !537, line: 98, size: 128, elements: !931)
!931 = !{!932, !933, !934, !935, !936}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !930, file: !537, line: 100, baseType: !29, size: 8)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !930, file: !537, line: 101, baseType: !29, size: 8, offset: 8)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "affected", scope: !930, file: !537, line: 102, baseType: !650, size: 32, offset: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !930, file: !537, line: 103, baseType: !650, size: 32, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "mentioned", scope: !930, file: !537, line: 104, baseType: !650, size: 32, offset: 96)
!937 = !{!938, !939, !940, !941, !942, !945, !946, !947, !949, !953, !955, !956, !957, !958, !959}
!938 = !DILocalVariable(name: "mode_string", arg: 1, scope: !926, file: !537, line: 134, type: !44)
!939 = !DILocalVariable(name: "mc", scope: !926, file: !537, line: 137, type: !929)
!940 = !DILocalVariable(name: "used", scope: !926, file: !537, line: 138, type: !129)
!941 = !DILocalVariable(name: "p", scope: !926, file: !537, line: 139, type: !44)
!942 = !DILocalVariable(name: "octal_mode", scope: !943, file: !537, line: 143, type: !31)
!943 = distinct !DILexicalBlock(scope: !944, file: !537, line: 142, column: 5)
!944 = distinct !DILexicalBlock(scope: !926, file: !537, line: 141, column: 7)
!945 = !DILocalVariable(name: "mode", scope: !943, file: !537, line: 144, type: !650)
!946 = !DILocalVariable(name: "mentioned", scope: !943, file: !537, line: 145, type: !650)
!947 = !DILocalVariable(name: "needed", scope: !948, file: !537, line: 168, type: !129)
!948 = distinct !DILexicalBlock(scope: !926, file: !537, line: 167, column: 3)
!949 = !DILocalVariable(name: "affected", scope: !950, file: !537, line: 179, type: !650)
!950 = distinct !DILexicalBlock(scope: !951, file: !537, line: 177, column: 5)
!951 = distinct !DILexicalBlock(scope: !952, file: !537, line: 176, column: 3)
!952 = distinct !DILexicalBlock(scope: !926, file: !537, line: 176, column: 3)
!953 = !DILocalVariable(name: "op", scope: !954, file: !537, line: 206, type: !29)
!954 = distinct !DILexicalBlock(scope: !950, file: !537, line: 205, column: 9)
!955 = !DILocalVariable(name: "value", scope: !954, file: !537, line: 207, type: !650)
!956 = !DILocalVariable(name: "mentioned", scope: !954, file: !537, line: 208, type: !650)
!957 = !DILocalVariable(name: "flag", scope: !954, file: !537, line: 209, type: !29)
!958 = !DILocalVariable(name: "change", scope: !954, file: !537, line: 210, type: !929)
!959 = !DILocalVariable(name: "octal_mode", scope: !960, file: !537, line: 217, type: !31)
!960 = distinct !DILexicalBlock(scope: !961, file: !537, line: 216, column: 15)
!961 = distinct !DILexicalBlock(scope: !954, file: !537, line: 213, column: 13)
!962 = !DILocation(line: 134, column: 27, scope: !926)
!963 = !DILocation(line: 138, column: 10, scope: !926)
!964 = !DILocation(line: 141, column: 14, scope: !944)
!965 = !DILocation(line: 141, column: 27, scope: !944)
!966 = distinct !{!966, !967, !968}
!967 = !DILocation(line: 148, column: 7, scope: !943)
!968 = !DILocation(line: 154, column: 35, scope: !943)
!969 = !DILocation(line: 169, column: 5, scope: !970)
!970 = distinct !DILexicalBlock(scope: !948, file: !537, line: 169, column: 5)
!971 = !DILocation(line: 150, column: 26, scope: !972)
!972 = distinct !DILexicalBlock(scope: !943, file: !537, line: 149, column: 9)
!973 = !DILocation(line: 150, column: 41, scope: !972)
!974 = !DILocation(line: 139, column: 15, scope: !926)
!975 = !DILocation(line: 143, column: 20, scope: !943)
!976 = !DILocation(line: 150, column: 43, scope: !972)
!977 = !DILocation(line: 150, column: 39, scope: !972)
!978 = !DILocation(line: 150, column: 46, scope: !972)
!979 = !DILocation(line: 151, column: 20, scope: !980)
!980 = distinct !DILexicalBlock(scope: !972, file: !537, line: 151, column: 15)
!981 = !DILocation(line: 151, column: 15, scope: !972)
!982 = !DILocation(line: 154, column: 21, scope: !943)
!983 = !DILocation(line: 154, column: 24, scope: !943)
!984 = !DILocation(line: 156, column: 11, scope: !985)
!985 = distinct !DILexicalBlock(scope: !943, file: !537, line: 156, column: 11)
!986 = !DILocation(line: 156, column: 11, scope: !943)
!987 = !DILocation(line: 144, column: 14, scope: !943)
!988 = !DILocation(line: 160, column: 22, scope: !943)
!989 = !DILocation(line: 160, column: 36, scope: !943)
!990 = !DILocation(line: 161, column: 28, scope: !943)
!991 = !DILocation(line: 161, column: 61, scope: !943)
!992 = !DILocation(line: 160, column: 20, scope: !943)
!993 = !DILocation(line: 145, column: 14, scope: !943)
!994 = !DILocalVariable(name: "new_mode", arg: 1, scope: !995, file: !537, line: 112, type: !650)
!995 = distinct !DISubprogram(name: "make_node_op_equals", scope: !537, file: !537, line: 112, type: !996, isLocal: true, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !533, variables: !998)
!996 = !DISubroutineType(types: !997)
!997 = !{!929, !650, !650}
!998 = !{!994, !999, !1000}
!999 = !DILocalVariable(name: "mentioned", arg: 2, scope: !995, file: !537, line: 112, type: !650)
!1000 = !DILocalVariable(name: "p", scope: !995, file: !537, line: 114, type: !929)
!1001 = !DILocation(line: 112, column: 29, scope: !995, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 163, column: 14, scope: !943)
!1003 = !DILocation(line: 112, column: 46, scope: !995, inlinedAt: !1002)
!1004 = !DILocation(line: 114, column: 27, scope: !995, inlinedAt: !1002)
!1005 = !DILocation(line: 114, column: 23, scope: !995, inlinedAt: !1002)
!1006 = !DILocation(line: 115, column: 9, scope: !995, inlinedAt: !1002)
!1007 = !{!1008, !609, i64 0}
!1008 = !{!"mode_change", !609, i64 0, !609, i64 1, !731, i64 4, !731, i64 8, !731, i64 12}
!1009 = !DILocation(line: 116, column: 6, scope: !995, inlinedAt: !1002)
!1010 = !DILocation(line: 116, column: 11, scope: !995, inlinedAt: !1002)
!1011 = !{!1008, !609, i64 1}
!1012 = !DILocation(line: 117, column: 6, scope: !995, inlinedAt: !1002)
!1013 = !DILocation(line: 117, column: 15, scope: !995, inlinedAt: !1002)
!1014 = !{!1008, !731, i64 4}
!1015 = !DILocation(line: 118, column: 6, scope: !995, inlinedAt: !1002)
!1016 = !DILocation(line: 118, column: 12, scope: !995, inlinedAt: !1002)
!1017 = !{!1008, !731, i64 8}
!1018 = !DILocation(line: 119, column: 6, scope: !995, inlinedAt: !1002)
!1019 = !DILocation(line: 119, column: 16, scope: !995, inlinedAt: !1002)
!1020 = !{!1008, !731, i64 12}
!1021 = !DILocation(line: 120, column: 8, scope: !995, inlinedAt: !1002)
!1022 = !DILocation(line: 120, column: 13, scope: !995, inlinedAt: !1002)
!1023 = !DILocation(line: 163, column: 7, scope: !943)
!1024 = !DILocation(line: 169, column: 27, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !970, file: !537, line: 169, column: 5)
!1026 = !DILocation(line: 168, column: 12, scope: !948)
!1027 = !DILocation(line: 170, column: 41, scope: !1025)
!1028 = !DILocation(line: 170, column: 14, scope: !1025)
!1029 = !DILocation(line: 169, column: 32, scope: !1025)
!1030 = !DILocation(line: 169, column: 5, scope: !1025)
!1031 = distinct !{!1031, !969, !1032}
!1032 = !DILocation(line: 170, column: 53, scope: !970)
!1033 = !DILocalVariable(name: "n", arg: 1, scope: !1034, file: !556, line: 105, type: !129)
!1034 = distinct !DISubprogram(name: "xnmalloc", scope: !556, file: !556, line: 105, type: !1035, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !533, variables: !1037)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!30, !129, !129}
!1037 = !{!1033, !1038}
!1038 = !DILocalVariable(name: "s", arg: 2, scope: !1034, file: !556, line: 105, type: !129)
!1039 = !DILocation(line: 105, column: 18, scope: !1034, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 171, column: 10, scope: !948)
!1041 = !DILocation(line: 105, column: 28, scope: !1034, inlinedAt: !1040)
!1042 = !DILocation(line: 107, column: 7, scope: !1043, inlinedAt: !1040)
!1043 = distinct !DILexicalBlock(scope: !1034, file: !556, line: 107, column: 7)
!1044 = !DILocation(line: 107, column: 7, scope: !1034, inlinedAt: !1040)
!1045 = !DILocation(line: 108, column: 5, scope: !1043, inlinedAt: !1040)
!1046 = !DILocation(line: 109, column: 21, scope: !1034, inlinedAt: !1040)
!1047 = !DILocation(line: 109, column: 10, scope: !1034, inlinedAt: !1040)
!1048 = !DILocation(line: 171, column: 10, scope: !948)
!1049 = !DILocation(line: 137, column: 23, scope: !926)
!1050 = !DILocation(line: 176, column: 8, scope: !952)
!1051 = !DILocation(line: 179, column: 14, scope: !950)
!1052 = !DILocation(line: 182, column: 7, scope: !950)
!1053 = !DILocation(line: 183, column: 17, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !537, line: 182, column: 7)
!1055 = distinct !DILexicalBlock(scope: !950, file: !537, line: 182, column: 7)
!1056 = !DILocation(line: 183, column: 9, scope: !1054)
!1057 = distinct !{!1057, !1058, !1059}
!1058 = !DILocation(line: 204, column: 7, scope: !950)
!1059 = !DILocation(line: 295, column: 49, scope: !950)
!1060 = !DILocation(line: 206, column: 23, scope: !954)
!1061 = !DILocation(line: 189, column: 13, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1054, file: !537, line: 184, column: 11)
!1063 = !DILocation(line: 195, column: 13, scope: !1062)
!1064 = !DILocation(line: 198, column: 13, scope: !1062)
!1065 = !DILocation(line: 182, column: 16, scope: !1054)
!1066 = !DILocation(line: 182, column: 7, scope: !1054)
!1067 = distinct !{!1067, !1068, !1069}
!1068 = !DILocation(line: 182, column: 7, scope: !1055)
!1069 = !DILocation(line: 201, column: 11, scope: !1055)
!1070 = !DILocation(line: 206, column: 21, scope: !954)
!1071 = !DILocation(line: 206, column: 16, scope: !954)
!1072 = !DILocation(line: 208, column: 18, scope: !954)
!1073 = !DILocation(line: 209, column: 16, scope: !954)
!1074 = !DILocation(line: 212, column: 19, scope: !954)
!1075 = !DILocation(line: 212, column: 11, scope: !954)
!1076 = distinct !{!1076, !1077, !1078}
!1077 = !DILocation(line: 219, column: 17, scope: !960)
!1078 = !DILocation(line: 225, column: 45, scope: !960)
!1079 = !DILocation(line: 221, column: 36, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !960, file: !537, line: 220, column: 19)
!1081 = !DILocation(line: 259, column: 25, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !537, line: 258, column: 15)
!1083 = distinct !DILexicalBlock(scope: !961, file: !537, line: 258, column: 15)
!1084 = !DILocation(line: 221, column: 51, scope: !1080)
!1085 = !DILocation(line: 217, column: 30, scope: !960)
!1086 = !DILocation(line: 221, column: 53, scope: !1080)
!1087 = !DILocation(line: 221, column: 49, scope: !1080)
!1088 = !DILocation(line: 221, column: 56, scope: !1080)
!1089 = !DILocation(line: 222, column: 30, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1080, file: !537, line: 222, column: 25)
!1091 = !DILocation(line: 222, column: 25, scope: !1080)
!1092 = !DILocation(line: 225, column: 31, scope: !960)
!1093 = !DILocation(line: 225, column: 34, scope: !960)
!1094 = !DILocation(line: 227, column: 21, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !960, file: !537, line: 227, column: 21)
!1096 = !DILocation(line: 227, column: 30, scope: !1095)
!1097 = !DILocation(line: 227, column: 37, scope: !1095)
!1098 = !DILocation(line: 207, column: 18, scope: !954)
!1099 = !DILocation(line: 239, column: 16, scope: !961)
!1100 = !DILocation(line: 240, column: 15, scope: !961)
!1101 = !DILocation(line: 245, column: 16, scope: !961)
!1102 = !DILocation(line: 246, column: 15, scope: !961)
!1103 = !DILocation(line: 251, column: 16, scope: !961)
!1104 = !DILocation(line: 252, column: 15, scope: !961)
!1105 = !DILocation(line: 259, column: 17, scope: !1082)
!1106 = !DILocation(line: 262, column: 27, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1082, file: !537, line: 260, column: 19)
!1108 = !DILocation(line: 263, column: 21, scope: !1107)
!1109 = !DILocation(line: 265, column: 27, scope: !1107)
!1110 = !DILocation(line: 266, column: 21, scope: !1107)
!1111 = !DILocation(line: 268, column: 27, scope: !1107)
!1112 = !DILocation(line: 269, column: 21, scope: !1107)
!1113 = !DILocation(line: 275, column: 27, scope: !1107)
!1114 = !DILocation(line: 276, column: 21, scope: !1107)
!1115 = !DILocation(line: 279, column: 27, scope: !1107)
!1116 = !DILocation(line: 280, column: 21, scope: !1107)
!1117 = !DILocation(line: 258, column: 24, scope: !1082)
!1118 = !DILocation(line: 258, column: 15, scope: !1082)
!1119 = distinct !{!1119, !1120, !1121}
!1120 = !DILocation(line: 258, column: 15, scope: !1083)
!1121 = !DILocation(line: 283, column: 19, scope: !1083)
!1122 = !DILocation(line: 287, column: 28, scope: !954)
!1123 = !DILocation(line: 288, column: 19, scope: !954)
!1124 = !DILocation(line: 288, column: 22, scope: !954)
!1125 = !DILocation(line: 289, column: 19, scope: !954)
!1126 = !DILocation(line: 289, column: 24, scope: !954)
!1127 = !DILocation(line: 290, column: 19, scope: !954)
!1128 = !DILocation(line: 290, column: 28, scope: !954)
!1129 = !DILocation(line: 291, column: 19, scope: !954)
!1130 = !DILocation(line: 291, column: 25, scope: !954)
!1131 = !DILocation(line: 293, column: 14, scope: !954)
!1132 = !DILocation(line: 293, column: 38, scope: !954)
!1133 = !DILocation(line: 292, column: 19, scope: !954)
!1134 = !DILocation(line: 292, column: 29, scope: !954)
!1135 = !DILocation(line: 295, column: 14, scope: !950)
!1136 = !DILocation(line: 295, column: 24, scope: !950)
!1137 = !DILocation(line: 176, column: 28, scope: !951)
!1138 = !DILocation(line: 176, column: 3, scope: !951)
!1139 = distinct !{!1139, !1140, !1141}
!1140 = !DILocation(line: 176, column: 3, scope: !952)
!1141 = !DILocation(line: 299, column: 5, scope: !952)
!1142 = !DILocation(line: 303, column: 16, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !537, line: 302, column: 5)
!1144 = distinct !DILexicalBlock(scope: !926, file: !537, line: 301, column: 7)
!1145 = !DILocation(line: 303, column: 21, scope: !1143)
!1146 = !DILocation(line: 304, column: 7, scope: !1143)
!1147 = !DILocation(line: 308, column: 3, scope: !926)
!1148 = !DILocation(line: 309, column: 3, scope: !926)
!1149 = !DILocation(line: 310, column: 1, scope: !926)
!1150 = distinct !DISubprogram(name: "mode_create_from_ref", scope: !537, file: !537, line: 316, type: !927, isLocal: false, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, unit: !533, variables: !1151)
!1151 = !{!1152, !1153}
!1152 = !DILocalVariable(name: "ref_file", arg: 1, scope: !1150, file: !537, line: 316, type: !44)
!1153 = !DILocalVariable(name: "ref_stats", scope: !1150, file: !537, line: 318, type: !1154)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1155, line: 46, size: 1152, elements: !1156)
!1155 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1156 = !{!1157, !1158, !1160, !1162, !1163, !1165, !1167, !1168, !1169, !1172, !1174, !1176, !1184, !1185, !1186}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1154, file: !1155, line: 48, baseType: !34, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1154, file: !1155, line: 53, baseType: !1159, size: 64, offset: 64)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !35, line: 136, baseType: !36)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1154, file: !1155, line: 61, baseType: !1161, size: 64, offset: 128)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !35, line: 139, baseType: !36)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1154, file: !1155, line: 62, baseType: !651, size: 32, offset: 192)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1154, file: !1155, line: 64, baseType: !1164, size: 32, offset: 224)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !35, line: 134, baseType: !31)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1154, file: !1155, line: 65, baseType: !1166, size: 32, offset: 256)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !35, line: 135, baseType: !31)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1154, file: !1155, line: 67, baseType: !67, size: 32, offset: 288)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1154, file: !1155, line: 69, baseType: !34, size: 64, offset: 320)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1154, file: !1155, line: 74, baseType: !1170, size: 64, offset: 384)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !35, line: 140, baseType: !1171)
!1171 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1154, file: !1155, line: 78, baseType: !1173, size: 64, offset: 448)
!1173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !35, line: 162, baseType: !1171)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1154, file: !1155, line: 80, baseType: !1175, size: 64, offset: 512)
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !35, line: 167, baseType: !1171)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1154, file: !1155, line: 91, baseType: !1177, size: 128, offset: 576)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1178, line: 8, size: 128, elements: !1179)
!1178 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1179 = !{!1180, !1182}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1177, file: !1178, line: 10, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !35, line: 148, baseType: !1171)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1177, file: !1178, line: 11, baseType: !1183, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !35, line: 184, baseType: !1171)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1154, file: !1155, line: 92, baseType: !1177, size: 128, offset: 704)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1154, file: !1155, line: 93, baseType: !1177, size: 128, offset: 832)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1154, file: !1155, line: 106, baseType: !1187, size: 192, offset: 960)
!1187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1183, size: 192, elements: !1188)
!1188 = !{!1189}
!1189 = !DISubrange(count: 3)
!1190 = !DILocation(line: 316, column: 35, scope: !1150)
!1191 = !DILocation(line: 318, column: 3, scope: !1150)
!1192 = !DILocation(line: 318, column: 15, scope: !1150)
!1193 = !DILocalVariable(name: "__path", arg: 1, scope: !1194, file: !839, line: 449, type: !44)
!1194 = distinct !DISubprogram(name: "stat", scope: !839, file: !839, line: 449, type: !1195, isLocal: false, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !533, variables: !1198)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!67, !44, !1197}
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1198 = !{!1193, !1199}
!1199 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1194, file: !839, line: 449, type: !1197)
!1200 = !DILocation(line: 449, column: 1, scope: !1194, inlinedAt: !1201)
!1201 = distinct !DILocation(line: 320, column: 7, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1150, file: !537, line: 320, column: 7)
!1203 = !DILocation(line: 451, column: 10, scope: !1194, inlinedAt: !1201)
!1204 = !DILocation(line: 320, column: 35, scope: !1202)
!1205 = !DILocation(line: 320, column: 7, scope: !1150)
!1206 = !DILocation(line: 322, column: 41, scope: !1150)
!1207 = !{!1208, !731, i64 24}
!1208 = !{!"stat", !802, i64 0, !802, i64 8, !802, i64 16, !731, i64 24, !731, i64 28, !731, i64 32, !731, i64 36, !802, i64 40, !802, i64 48, !802, i64 56, !802, i64 64, !1209, i64 72, !1209, i64 88, !1209, i64 104, !609, i64 120}
!1209 = !{!"timespec", !802, i64 0, !802, i64 8}
!1210 = !DILocation(line: 112, column: 29, scope: !995, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 322, column: 10, scope: !1150)
!1212 = !DILocation(line: 112, column: 46, scope: !995, inlinedAt: !1211)
!1213 = !DILocation(line: 114, column: 27, scope: !995, inlinedAt: !1211)
!1214 = !DILocation(line: 114, column: 23, scope: !995, inlinedAt: !1211)
!1215 = !DILocation(line: 115, column: 9, scope: !995, inlinedAt: !1211)
!1216 = !DILocation(line: 116, column: 6, scope: !995, inlinedAt: !1211)
!1217 = !DILocation(line: 116, column: 11, scope: !995, inlinedAt: !1211)
!1218 = !DILocation(line: 117, column: 6, scope: !995, inlinedAt: !1211)
!1219 = !DILocation(line: 117, column: 15, scope: !995, inlinedAt: !1211)
!1220 = !DILocation(line: 118, column: 6, scope: !995, inlinedAt: !1211)
!1221 = !DILocation(line: 118, column: 12, scope: !995, inlinedAt: !1211)
!1222 = !DILocation(line: 119, column: 6, scope: !995, inlinedAt: !1211)
!1223 = !DILocation(line: 119, column: 16, scope: !995, inlinedAt: !1211)
!1224 = !DILocation(line: 120, column: 8, scope: !995, inlinedAt: !1211)
!1225 = !DILocation(line: 120, column: 13, scope: !995, inlinedAt: !1211)
!1226 = !DILocation(line: 322, column: 3, scope: !1150)
!1227 = !DILocation(line: 323, column: 1, scope: !1150)
!1228 = distinct !DISubprogram(name: "mode_adjust", scope: !537, file: !537, line: 339, type: !1229, isLocal: false, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true, unit: !533, variables: !1234)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!650, !650, !87, !650, !1231, !1233}
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !930)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!1234 = !{!1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1246, !1247, !1248}
!1235 = !DILocalVariable(name: "oldmode", arg: 1, scope: !1228, file: !537, line: 339, type: !650)
!1236 = !DILocalVariable(name: "dir", arg: 2, scope: !1228, file: !537, line: 339, type: !87)
!1237 = !DILocalVariable(name: "umask_value", arg: 3, scope: !1228, file: !537, line: 339, type: !650)
!1238 = !DILocalVariable(name: "changes", arg: 4, scope: !1228, file: !537, line: 340, type: !1231)
!1239 = !DILocalVariable(name: "pmode_bits", arg: 5, scope: !1228, file: !537, line: 340, type: !1233)
!1240 = !DILocalVariable(name: "newmode", scope: !1228, file: !537, line: 343, type: !650)
!1241 = !DILocalVariable(name: "mode_bits", scope: !1228, file: !537, line: 346, type: !650)
!1242 = !DILocalVariable(name: "affected", scope: !1243, file: !537, line: 350, type: !650)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !537, line: 349, column: 5)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !537, line: 348, column: 3)
!1245 = distinct !DILexicalBlock(scope: !1228, file: !537, line: 348, column: 3)
!1246 = !DILocalVariable(name: "omit_change", scope: !1243, file: !537, line: 351, type: !650)
!1247 = !DILocalVariable(name: "value", scope: !1243, file: !537, line: 353, type: !650)
!1248 = !DILocalVariable(name: "preserved", scope: !1249, file: !537, line: 393, type: !650)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !537, line: 392, column: 11)
!1250 = distinct !DILexicalBlock(scope: !1243, file: !537, line: 387, column: 9)
!1251 = !DILocation(line: 339, column: 21, scope: !1228)
!1252 = !DILocation(line: 339, column: 35, scope: !1228)
!1253 = !DILocation(line: 339, column: 47, scope: !1228)
!1254 = !DILocation(line: 340, column: 40, scope: !1228)
!1255 = !DILocation(line: 340, column: 57, scope: !1228)
!1256 = !DILocation(line: 343, column: 28, scope: !1228)
!1257 = !DILocation(line: 343, column: 10, scope: !1228)
!1258 = !DILocation(line: 346, column: 10, scope: !1228)
!1259 = !DILocation(line: 348, column: 19, scope: !1244)
!1260 = !DILocation(line: 348, column: 24, scope: !1244)
!1261 = !DILocation(line: 348, column: 3, scope: !1245)
!1262 = !DILocation(line: 348, column: 10, scope: !1244)
!1263 = !DILocation(line: 350, column: 34, scope: !1243)
!1264 = !DILocation(line: 350, column: 14, scope: !1243)
!1265 = !DILocation(line: 352, column: 52, scope: !1243)
!1266 = !DILocation(line: 352, column: 41, scope: !1243)
!1267 = !DILocation(line: 352, column: 39, scope: !1243)
!1268 = !DILocation(line: 351, column: 14, scope: !1243)
!1269 = !DILocation(line: 353, column: 31, scope: !1243)
!1270 = !DILocation(line: 353, column: 14, scope: !1243)
!1271 = !DILocation(line: 355, column: 7, scope: !1243)
!1272 = !DILocation(line: 362, column: 17, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1243, file: !537, line: 356, column: 9)
!1274 = !DILocation(line: 365, column: 28, scope: !1273)
!1275 = !DILocation(line: 365, column: 22, scope: !1273)
!1276 = !DILocation(line: 367, column: 30, scope: !1273)
!1277 = !DILocation(line: 367, column: 24, scope: !1273)
!1278 = !DILocation(line: 369, column: 30, scope: !1273)
!1279 = !DILocation(line: 369, column: 24, scope: !1273)
!1280 = !DILocation(line: 367, column: 21, scope: !1273)
!1281 = !DILocation(line: 369, column: 21, scope: !1273)
!1282 = !DILocation(line: 365, column: 17, scope: !1273)
!1283 = !DILocation(line: 371, column: 11, scope: !1273)
!1284 = !DILocation(line: 376, column: 24, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1273, file: !537, line: 376, column: 15)
!1286 = !DILocation(line: 376, column: 57, scope: !1285)
!1287 = !DILocation(line: 377, column: 19, scope: !1285)
!1288 = !DILocation(line: 376, column: 15, scope: !1273)
!1289 = !DILocation(line: 384, column: 17, scope: !1243)
!1290 = !DILocation(line: 384, column: 55, scope: !1243)
!1291 = !DILocation(line: 384, column: 53, scope: !1243)
!1292 = !DILocation(line: 384, column: 13, scope: !1243)
!1293 = !DILocation(line: 386, column: 24, scope: !1243)
!1294 = !DILocation(line: 386, column: 15, scope: !1243)
!1295 = !DILocation(line: 386, column: 7, scope: !1243)
!1296 = !DILocation(line: 393, column: 44, scope: !1249)
!1297 = !DILocation(line: 393, column: 33, scope: !1249)
!1298 = !DILocation(line: 393, column: 59, scope: !1249)
!1299 = !DILocation(line: 393, column: 20, scope: !1249)
!1300 = !DILocation(line: 394, column: 42, scope: !1249)
!1301 = !DILocation(line: 394, column: 23, scope: !1249)
!1302 = !DILocation(line: 395, column: 32, scope: !1249)
!1303 = !DILocation(line: 395, column: 45, scope: !1249)
!1304 = !DILocation(line: 400, column: 21, scope: !1250)
!1305 = !DILocation(line: 401, column: 19, scope: !1250)
!1306 = !DILocation(line: 402, column: 11, scope: !1250)
!1307 = !DILocation(line: 405, column: 21, scope: !1250)
!1308 = !DILocation(line: 406, column: 22, scope: !1250)
!1309 = !DILocation(line: 406, column: 19, scope: !1250)
!1310 = !DILocation(line: 407, column: 11, scope: !1250)
!1311 = !DILocation(line: 348, column: 45, scope: !1244)
!1312 = distinct !{!1312, !1261, !1313}
!1313 = !DILocation(line: 409, column: 5, scope: !1245)
!1314 = !DILocation(line: 411, column: 7, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1228, file: !537, line: 411, column: 7)
!1316 = !DILocation(line: 411, column: 7, scope: !1228)
!1317 = !DILocation(line: 412, column: 17, scope: !1315)
!1318 = !DILocation(line: 412, column: 5, scope: !1315)
!1319 = !DILocation(line: 413, column: 3, scope: !1228)
!1320 = distinct !DISubprogram(name: "set_program_name", scope: !101, file: !101, line: 39, type: !42, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !1321)
!1321 = !{!1322, !1323, !1324}
!1322 = !DILocalVariable(name: "argv0", arg: 1, scope: !1320, file: !101, line: 39, type: !44)
!1323 = !DILocalVariable(name: "slash", scope: !1320, file: !101, line: 46, type: !44)
!1324 = !DILocalVariable(name: "base", scope: !1320, file: !101, line: 47, type: !44)
!1325 = !DILocation(line: 39, column: 31, scope: !1320)
!1326 = !DILocation(line: 51, column: 13, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1320, file: !101, line: 51, column: 7)
!1328 = !DILocation(line: 51, column: 7, scope: !1320)
!1329 = !DILocation(line: 55, column: 14, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1327, file: !101, line: 52, column: 5)
!1331 = !DILocation(line: 54, column: 7, scope: !1330)
!1332 = !DILocation(line: 56, column: 7, scope: !1330)
!1333 = !DILocation(line: 59, column: 11, scope: !1320)
!1334 = !DILocation(line: 46, column: 15, scope: !1320)
!1335 = !DILocation(line: 60, column: 17, scope: !1320)
!1336 = !DILocation(line: 60, column: 33, scope: !1320)
!1337 = !DILocation(line: 60, column: 11, scope: !1320)
!1338 = !DILocation(line: 47, column: 15, scope: !1320)
!1339 = !DILocation(line: 61, column: 12, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1320, file: !101, line: 61, column: 7)
!1341 = !DILocation(line: 61, column: 20, scope: !1340)
!1342 = !DILocation(line: 61, column: 25, scope: !1340)
!1343 = !DILocation(line: 61, column: 42, scope: !1340)
!1344 = !DILocation(line: 61, column: 28, scope: !1340)
!1345 = !DILocation(line: 61, column: 61, scope: !1340)
!1346 = !DILocation(line: 61, column: 7, scope: !1320)
!1347 = !DILocation(line: 64, column: 11, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !101, line: 64, column: 11)
!1349 = distinct !DILexicalBlock(scope: !1340, file: !101, line: 62, column: 5)
!1350 = !DILocation(line: 64, column: 36, scope: !1348)
!1351 = !DILocation(line: 64, column: 11, scope: !1349)
!1352 = !DILocation(line: 66, column: 24, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1348, file: !101, line: 65, column: 9)
!1354 = !DILocation(line: 70, column: 41, scope: !1353)
!1355 = !DILocation(line: 72, column: 9, scope: !1353)
!1356 = !DILocation(line: 84, column: 16, scope: !1320)
!1357 = !DILocation(line: 90, column: 27, scope: !1320)
!1358 = !DILocation(line: 92, column: 1, scope: !1320)
!1359 = distinct !DISubprogram(name: "clone_quoting_options", scope: !134, file: !134, line: 114, type: !1360, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !1363)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!1362, !1362}
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!1363 = !{!1364, !1365, !1366}
!1364 = !DILocalVariable(name: "o", arg: 1, scope: !1359, file: !134, line: 114, type: !1362)
!1365 = !DILocalVariable(name: "e", scope: !1359, file: !134, line: 116, type: !67)
!1366 = !DILocalVariable(name: "p", scope: !1359, file: !134, line: 117, type: !1362)
!1367 = !DILocation(line: 114, column: 48, scope: !1359)
!1368 = !DILocation(line: 116, column: 11, scope: !1359)
!1369 = !DILocation(line: 116, column: 7, scope: !1359)
!1370 = !DILocation(line: 117, column: 40, scope: !1359)
!1371 = !DILocation(line: 117, column: 31, scope: !1359)
!1372 = !DILocation(line: 117, column: 27, scope: !1359)
!1373 = !DILocation(line: 119, column: 9, scope: !1359)
!1374 = !DILocation(line: 120, column: 3, scope: !1359)
!1375 = distinct !DISubprogram(name: "get_quoting_style", scope: !134, file: !134, line: 125, type: !1376, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !1380)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!13, !1378}
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!1380 = !{!1381}
!1381 = !DILocalVariable(name: "o", arg: 1, scope: !1375, file: !134, line: 125, type: !1378)
!1382 = !DILocation(line: 125, column: 50, scope: !1375)
!1383 = !DILocation(line: 127, column: 11, scope: !1375)
!1384 = !DILocation(line: 127, column: 46, scope: !1375)
!1385 = !{!1386, !609, i64 0}
!1386 = !{!"quoting_options", !609, i64 0, !731, i64 4, !609, i64 8, !608, i64 40, !608, i64 48}
!1387 = !DILocation(line: 127, column: 3, scope: !1375)
!1388 = distinct !DISubprogram(name: "set_quoting_style", scope: !134, file: !134, line: 133, type: !1389, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !1391)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{null, !1362, !13}
!1391 = !{!1392, !1393}
!1392 = !DILocalVariable(name: "o", arg: 1, scope: !1388, file: !134, line: 133, type: !1362)
!1393 = !DILocalVariable(name: "s", arg: 2, scope: !1388, file: !134, line: 133, type: !13)
!1394 = !DILocation(line: 133, column: 44, scope: !1388)
!1395 = !DILocation(line: 133, column: 66, scope: !1388)
!1396 = !DILocation(line: 135, column: 4, scope: !1388)
!1397 = !DILocation(line: 135, column: 39, scope: !1388)
!1398 = !DILocation(line: 135, column: 45, scope: !1388)
!1399 = !DILocation(line: 136, column: 1, scope: !1388)
!1400 = distinct !DISubprogram(name: "set_char_quoting", scope: !134, file: !134, line: 144, type: !1401, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !1403)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!67, !1362, !29, !67}
!1403 = !{!1404, !1405, !1406, !1407, !1408, !1410, !1411}
!1404 = !DILocalVariable(name: "o", arg: 1, scope: !1400, file: !134, line: 144, type: !1362)
!1405 = !DILocalVariable(name: "c", arg: 2, scope: !1400, file: !134, line: 144, type: !29)
!1406 = !DILocalVariable(name: "i", arg: 3, scope: !1400, file: !134, line: 144, type: !67)
!1407 = !DILocalVariable(name: "uc", scope: !1400, file: !134, line: 146, type: !527)
!1408 = !DILocalVariable(name: "p", scope: !1400, file: !134, line: 147, type: !1409)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!1410 = !DILocalVariable(name: "shift", scope: !1400, file: !134, line: 149, type: !67)
!1411 = !DILocalVariable(name: "r", scope: !1400, file: !134, line: 150, type: !67)
!1412 = !DILocation(line: 144, column: 43, scope: !1400)
!1413 = !DILocation(line: 144, column: 51, scope: !1400)
!1414 = !DILocation(line: 144, column: 58, scope: !1400)
!1415 = !DILocation(line: 146, column: 17, scope: !1400)
!1416 = !DILocation(line: 148, column: 6, scope: !1400)
!1417 = !DILocation(line: 148, column: 62, scope: !1400)
!1418 = !DILocation(line: 148, column: 57, scope: !1400)
!1419 = !DILocation(line: 147, column: 17, scope: !1400)
!1420 = !DILocation(line: 149, column: 18, scope: !1400)
!1421 = !DILocation(line: 149, column: 15, scope: !1400)
!1422 = !DILocation(line: 149, column: 7, scope: !1400)
!1423 = !DILocation(line: 150, column: 12, scope: !1400)
!1424 = !DILocation(line: 150, column: 15, scope: !1400)
!1425 = !DILocation(line: 150, column: 25, scope: !1400)
!1426 = !DILocation(line: 150, column: 7, scope: !1400)
!1427 = !DILocation(line: 151, column: 13, scope: !1400)
!1428 = !DILocation(line: 151, column: 18, scope: !1400)
!1429 = !DILocation(line: 151, column: 23, scope: !1400)
!1430 = !DILocation(line: 151, column: 6, scope: !1400)
!1431 = !DILocation(line: 152, column: 3, scope: !1400)
!1432 = distinct !DISubprogram(name: "set_quoting_flags", scope: !134, file: !134, line: 160, type: !1433, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !1435)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!67, !1362, !67}
!1435 = !{!1436, !1437, !1438}
!1436 = !DILocalVariable(name: "o", arg: 1, scope: !1432, file: !134, line: 160, type: !1362)
!1437 = !DILocalVariable(name: "i", arg: 2, scope: !1432, file: !134, line: 160, type: !67)
!1438 = !DILocalVariable(name: "r", scope: !1432, file: !134, line: 162, type: !67)
!1439 = !DILocation(line: 160, column: 44, scope: !1432)
!1440 = !DILocation(line: 160, column: 51, scope: !1432)
!1441 = !DILocation(line: 163, column: 8, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1432, file: !134, line: 163, column: 7)
!1443 = !DILocation(line: 163, column: 7, scope: !1432)
!1444 = !DILocation(line: 165, column: 10, scope: !1432)
!1445 = !{!1386, !731, i64 4}
!1446 = !DILocation(line: 162, column: 7, scope: !1432)
!1447 = !DILocation(line: 166, column: 12, scope: !1432)
!1448 = !DILocation(line: 167, column: 3, scope: !1432)
!1449 = distinct !DISubprogram(name: "set_custom_quoting", scope: !134, file: !134, line: 171, type: !1450, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !1452)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{null, !1362, !44, !44}
!1452 = !{!1453, !1454, !1455}
!1453 = !DILocalVariable(name: "o", arg: 1, scope: !1449, file: !134, line: 171, type: !1362)
!1454 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1449, file: !134, line: 172, type: !44)
!1455 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1449, file: !134, line: 172, type: !44)
!1456 = !DILocation(line: 171, column: 45, scope: !1449)
!1457 = !DILocation(line: 172, column: 33, scope: !1449)
!1458 = !DILocation(line: 172, column: 57, scope: !1449)
!1459 = !DILocation(line: 174, column: 8, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1449, file: !134, line: 174, column: 7)
!1461 = !DILocation(line: 174, column: 7, scope: !1449)
!1462 = !DILocation(line: 176, column: 6, scope: !1449)
!1463 = !DILocation(line: 176, column: 12, scope: !1449)
!1464 = !DILocation(line: 177, column: 8, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1449, file: !134, line: 177, column: 7)
!1466 = !DILocation(line: 177, column: 23, scope: !1465)
!1467 = !DILocation(line: 177, column: 19, scope: !1465)
!1468 = !DILocation(line: 178, column: 5, scope: !1465)
!1469 = !DILocation(line: 179, column: 6, scope: !1449)
!1470 = !DILocation(line: 179, column: 17, scope: !1449)
!1471 = !{!1386, !608, i64 40}
!1472 = !DILocation(line: 180, column: 6, scope: !1449)
!1473 = !DILocation(line: 180, column: 18, scope: !1449)
!1474 = !{!1386, !608, i64 48}
!1475 = !DILocation(line: 181, column: 1, scope: !1449)
!1476 = distinct !DISubprogram(name: "quotearg_buffer", scope: !134, file: !134, line: 776, type: !1477, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !1479)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!129, !28, !129, !44, !129, !1378}
!1479 = !{!1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487}
!1480 = !DILocalVariable(name: "buffer", arg: 1, scope: !1476, file: !134, line: 776, type: !28)
!1481 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1476, file: !134, line: 776, type: !129)
!1482 = !DILocalVariable(name: "arg", arg: 3, scope: !1476, file: !134, line: 777, type: !44)
!1483 = !DILocalVariable(name: "argsize", arg: 4, scope: !1476, file: !134, line: 777, type: !129)
!1484 = !DILocalVariable(name: "o", arg: 5, scope: !1476, file: !134, line: 778, type: !1378)
!1485 = !DILocalVariable(name: "p", scope: !1476, file: !134, line: 780, type: !1378)
!1486 = !DILocalVariable(name: "e", scope: !1476, file: !134, line: 781, type: !67)
!1487 = !DILocalVariable(name: "r", scope: !1476, file: !134, line: 782, type: !129)
!1488 = !DILocation(line: 776, column: 24, scope: !1476)
!1489 = !DILocation(line: 776, column: 39, scope: !1476)
!1490 = !DILocation(line: 777, column: 30, scope: !1476)
!1491 = !DILocation(line: 777, column: 42, scope: !1476)
!1492 = !DILocation(line: 778, column: 48, scope: !1476)
!1493 = !DILocation(line: 780, column: 37, scope: !1476)
!1494 = !DILocation(line: 780, column: 33, scope: !1476)
!1495 = !DILocation(line: 781, column: 11, scope: !1476)
!1496 = !DILocation(line: 781, column: 7, scope: !1476)
!1497 = !DILocation(line: 783, column: 43, scope: !1476)
!1498 = !DILocation(line: 783, column: 53, scope: !1476)
!1499 = !DILocation(line: 783, column: 60, scope: !1476)
!1500 = !DILocation(line: 784, column: 43, scope: !1476)
!1501 = !DILocation(line: 784, column: 58, scope: !1476)
!1502 = !DILocation(line: 782, column: 14, scope: !1476)
!1503 = !DILocation(line: 782, column: 10, scope: !1476)
!1504 = !DILocation(line: 785, column: 9, scope: !1476)
!1505 = !DILocation(line: 786, column: 3, scope: !1476)
!1506 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !134, file: !134, line: 248, type: !1507, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !1511)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!129, !28, !129, !44, !129, !13, !67, !1509, !44, !44}
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!1511 = !{!1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1536, !1537, !1538, !1539, !1540, !1543, !1544, !1562, !1565, !1566, !1573}
!1512 = !DILocalVariable(name: "buffer", arg: 1, scope: !1506, file: !134, line: 248, type: !28)
!1513 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1506, file: !134, line: 248, type: !129)
!1514 = !DILocalVariable(name: "arg", arg: 3, scope: !1506, file: !134, line: 249, type: !44)
!1515 = !DILocalVariable(name: "argsize", arg: 4, scope: !1506, file: !134, line: 249, type: !129)
!1516 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1506, file: !134, line: 250, type: !13)
!1517 = !DILocalVariable(name: "flags", arg: 6, scope: !1506, file: !134, line: 250, type: !67)
!1518 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1506, file: !134, line: 251, type: !1509)
!1519 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1506, file: !134, line: 252, type: !44)
!1520 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1506, file: !134, line: 253, type: !44)
!1521 = !DILocalVariable(name: "i", scope: !1506, file: !134, line: 255, type: !129)
!1522 = !DILocalVariable(name: "len", scope: !1506, file: !134, line: 256, type: !129)
!1523 = !DILocalVariable(name: "orig_buffersize", scope: !1506, file: !134, line: 257, type: !129)
!1524 = !DILocalVariable(name: "quote_string", scope: !1506, file: !134, line: 258, type: !44)
!1525 = !DILocalVariable(name: "quote_string_len", scope: !1506, file: !134, line: 259, type: !129)
!1526 = !DILocalVariable(name: "backslash_escapes", scope: !1506, file: !134, line: 260, type: !87)
!1527 = !DILocalVariable(name: "unibyte_locale", scope: !1506, file: !134, line: 261, type: !87)
!1528 = !DILocalVariable(name: "elide_outer_quotes", scope: !1506, file: !134, line: 262, type: !87)
!1529 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1506, file: !134, line: 263, type: !87)
!1530 = !DILocalVariable(name: "encountered_single_quote", scope: !1506, file: !134, line: 264, type: !87)
!1531 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1506, file: !134, line: 265, type: !87)
!1532 = !DILocalVariable(name: "c", scope: !1533, file: !134, line: 394, type: !527)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !134, line: 393, column: 5)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !134, line: 392, column: 3)
!1535 = distinct !DILexicalBlock(scope: !1506, file: !134, line: 392, column: 3)
!1536 = !DILocalVariable(name: "esc", scope: !1533, file: !134, line: 395, type: !527)
!1537 = !DILocalVariable(name: "is_right_quote", scope: !1533, file: !134, line: 396, type: !87)
!1538 = !DILocalVariable(name: "escaping", scope: !1533, file: !134, line: 397, type: !87)
!1539 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1533, file: !134, line: 398, type: !87)
!1540 = !DILocalVariable(name: "m", scope: !1541, file: !134, line: 602, type: !129)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !134, line: 600, column: 11)
!1542 = distinct !DILexicalBlock(scope: !1533, file: !134, line: 418, column: 9)
!1543 = !DILocalVariable(name: "printable", scope: !1541, file: !134, line: 604, type: !87)
!1544 = !DILocalVariable(name: "mbstate", scope: !1545, file: !134, line: 613, type: !1547)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !134, line: 612, column: 15)
!1546 = distinct !DILexicalBlock(scope: !1541, file: !134, line: 606, column: 17)
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1548, line: 6, baseType: !1549)
!1548 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1550, line: 21, baseType: !1551)
!1550 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1550, line: 13, size: 64, elements: !1552)
!1552 = !{!1553, !1554}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1551, file: !1550, line: 15, baseType: !67, size: 32)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1551, file: !1550, line: 20, baseType: !1555, size: 32, offset: 32)
!1555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1551, file: !1550, line: 16, size: 32, elements: !1556)
!1556 = !{!1557, !1558}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1555, file: !1550, line: 18, baseType: !31, size: 32)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1555, file: !1550, line: 19, baseType: !1559, size: 32)
!1559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 32, elements: !1560)
!1560 = !{!1561}
!1561 = !DISubrange(count: 4)
!1562 = !DILocalVariable(name: "w", scope: !1563, file: !134, line: 623, type: !1564)
!1563 = distinct !DILexicalBlock(scope: !1545, file: !134, line: 622, column: 19)
!1564 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !130, line: 90, baseType: !67)
!1565 = !DILocalVariable(name: "bytes", scope: !1563, file: !134, line: 624, type: !129)
!1566 = !DILocalVariable(name: "j", scope: !1567, file: !134, line: 649, type: !129)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !134, line: 648, column: 27)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !134, line: 646, column: 29)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !134, line: 641, column: 23)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !134, line: 633, column: 30)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !134, line: 628, column: 30)
!1572 = distinct !DILexicalBlock(scope: !1563, file: !134, line: 626, column: 25)
!1573 = !DILocalVariable(name: "ilim", scope: !1574, file: !134, line: 676, type: !129)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !134, line: 673, column: 15)
!1575 = distinct !DILexicalBlock(scope: !1541, file: !134, line: 672, column: 17)
!1576 = !DILocation(line: 248, column: 33, scope: !1506)
!1577 = !DILocation(line: 248, column: 48, scope: !1506)
!1578 = !DILocation(line: 249, column: 39, scope: !1506)
!1579 = !DILocation(line: 249, column: 51, scope: !1506)
!1580 = !DILocation(line: 250, column: 46, scope: !1506)
!1581 = !DILocation(line: 250, column: 65, scope: !1506)
!1582 = !DILocation(line: 251, column: 47, scope: !1506)
!1583 = !DILocation(line: 252, column: 39, scope: !1506)
!1584 = !DILocation(line: 253, column: 39, scope: !1506)
!1585 = !DILocation(line: 256, column: 10, scope: !1506)
!1586 = !DILocation(line: 257, column: 10, scope: !1506)
!1587 = !DILocation(line: 258, column: 15, scope: !1506)
!1588 = !DILocation(line: 259, column: 10, scope: !1506)
!1589 = !DILocation(line: 260, column: 8, scope: !1506)
!1590 = !DILocation(line: 261, column: 25, scope: !1506)
!1591 = !DILocation(line: 261, column: 36, scope: !1506)
!1592 = !DILocation(line: 262, column: 8, scope: !1506)
!1593 = !DILocation(line: 263, column: 8, scope: !1506)
!1594 = !DILocation(line: 264, column: 8, scope: !1506)
!1595 = !DILocation(line: 265, column: 8, scope: !1506)
!1596 = !DILocation(line: 265, column: 3, scope: !1506)
!1597 = !DILocation(line: 308, column: 3, scope: !1506)
!1598 = !DILocation(line: 315, column: 11, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1506, file: !134, line: 309, column: 5)
!1600 = !DILocation(line: 315, column: 12, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1599, file: !134, line: 315, column: 11)
!1602 = !DILocation(line: 316, column: 9, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !134, line: 316, column: 9)
!1604 = distinct !DILexicalBlock(scope: !1601, file: !134, line: 316, column: 9)
!1605 = !DILocation(line: 316, column: 9, scope: !1604)
!1606 = !DILocation(line: 354, column: 26, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !134, line: 332, column: 11)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !134, line: 331, column: 13)
!1609 = distinct !DILexicalBlock(scope: !1599, file: !134, line: 330, column: 7)
!1610 = !DILocation(line: 355, column: 27, scope: !1607)
!1611 = !DILocation(line: 356, column: 11, scope: !1607)
!1612 = !DILocation(line: 357, column: 14, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1609, file: !134, line: 357, column: 13)
!1614 = !DILocation(line: 357, column: 13, scope: !1609)
!1615 = !DILocation(line: 358, column: 43, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !134, line: 358, column: 11)
!1617 = distinct !DILexicalBlock(scope: !1613, file: !134, line: 358, column: 11)
!1618 = !DILocation(line: 358, column: 11, scope: !1617)
!1619 = !DILocation(line: 359, column: 13, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !134, line: 359, column: 13)
!1621 = distinct !DILexicalBlock(scope: !1616, file: !134, line: 359, column: 13)
!1622 = !DILocation(line: 359, column: 13, scope: !1621)
!1623 = !DILocation(line: 358, column: 70, scope: !1616)
!1624 = distinct !{!1624, !1618, !1625}
!1625 = !DILocation(line: 359, column: 13, scope: !1617)
!1626 = !DILocation(line: 362, column: 28, scope: !1609)
!1627 = !DILocation(line: 364, column: 7, scope: !1599)
!1628 = !DILocation(line: 367, column: 7, scope: !1599)
!1629 = !DILocation(line: 370, column: 7, scope: !1599)
!1630 = !DILocation(line: 373, column: 12, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1599, file: !134, line: 373, column: 11)
!1632 = !DILocation(line: 373, column: 11, scope: !1599)
!1633 = !DILocation(line: 378, column: 12, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1599, file: !134, line: 378, column: 11)
!1635 = !DILocation(line: 378, column: 11, scope: !1599)
!1636 = !DILocation(line: 379, column: 9, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !134, line: 379, column: 9)
!1638 = distinct !DILexicalBlock(scope: !1634, file: !134, line: 379, column: 9)
!1639 = !DILocation(line: 379, column: 9, scope: !1638)
!1640 = !DILocation(line: 386, column: 7, scope: !1599)
!1641 = !DILocation(line: 389, column: 7, scope: !1599)
!1642 = !DILocation(line: 255, column: 10, scope: !1506)
!1643 = !DILocation(line: 392, column: 8, scope: !1535)
!1644 = !DILocation(line: 392, column: 27, scope: !1534)
!1645 = !DILocation(line: 392, column: 19, scope: !1534)
!1646 = !DILocation(line: 392, column: 60, scope: !1534)
!1647 = !DILocation(line: 392, column: 3, scope: !1535)
!1648 = !DILocation(line: 392, column: 41, scope: !1534)
!1649 = !DILocation(line: 392, column: 48, scope: !1534)
!1650 = !DILocation(line: 396, column: 12, scope: !1533)
!1651 = !DILocation(line: 397, column: 12, scope: !1533)
!1652 = !DILocation(line: 398, column: 12, scope: !1533)
!1653 = !DILocation(line: 401, column: 11, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1533, file: !134, line: 400, column: 11)
!1655 = !DILocation(line: 403, column: 17, scope: !1654)
!1656 = !DILocation(line: 404, column: 39, scope: !1654)
!1657 = !DILocation(line: 408, column: 32, scope: !1654)
!1658 = !DILocation(line: 404, column: 19, scope: !1654)
!1659 = !DILocation(line: 404, column: 15, scope: !1654)
!1660 = !DILocation(line: 409, column: 11, scope: !1654)
!1661 = !DILocation(line: 409, column: 26, scope: !1654)
!1662 = !DILocation(line: 409, column: 14, scope: !1654)
!1663 = !DILocation(line: 409, column: 63, scope: !1654)
!1664 = !DILocation(line: 400, column: 11, scope: !1533)
!1665 = !DILocation(line: 416, column: 11, scope: !1533)
!1666 = !DILocation(line: 394, column: 21, scope: !1533)
!1667 = !DILocation(line: 417, column: 7, scope: !1533)
!1668 = !DILocation(line: 420, column: 15, scope: !1542)
!1669 = !DILocation(line: 422, column: 15, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !134, line: 422, column: 15)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !134, line: 421, column: 13)
!1672 = distinct !DILexicalBlock(scope: !1542, file: !134, line: 420, column: 15)
!1673 = !DILocation(line: 422, column: 15, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1670, file: !134, line: 422, column: 15)
!1675 = !DILocation(line: 422, column: 15, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !134, line: 422, column: 15)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !134, line: 422, column: 15)
!1678 = distinct !DILexicalBlock(scope: !1674, file: !134, line: 422, column: 15)
!1679 = !DILocation(line: 422, column: 15, scope: !1677)
!1680 = !DILocation(line: 422, column: 15, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !134, line: 422, column: 15)
!1682 = distinct !DILexicalBlock(scope: !1678, file: !134, line: 422, column: 15)
!1683 = !DILocation(line: 422, column: 15, scope: !1682)
!1684 = !DILocation(line: 422, column: 15, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !134, line: 422, column: 15)
!1686 = distinct !DILexicalBlock(scope: !1678, file: !134, line: 422, column: 15)
!1687 = !DILocation(line: 422, column: 15, scope: !1686)
!1688 = !DILocation(line: 422, column: 15, scope: !1678)
!1689 = !DILocation(line: 422, column: 15, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !134, line: 422, column: 15)
!1691 = distinct !DILexicalBlock(scope: !1670, file: !134, line: 422, column: 15)
!1692 = !DILocation(line: 422, column: 15, scope: !1691)
!1693 = !DILocation(line: 430, column: 19, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1671, file: !134, line: 429, column: 19)
!1695 = !DILocation(line: 430, column: 24, scope: !1694)
!1696 = !DILocation(line: 430, column: 28, scope: !1694)
!1697 = !DILocation(line: 430, column: 38, scope: !1694)
!1698 = !DILocation(line: 430, column: 48, scope: !1694)
!1699 = !DILocation(line: 430, column: 59, scope: !1694)
!1700 = !DILocation(line: 432, column: 19, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !134, line: 432, column: 19)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !134, line: 432, column: 19)
!1703 = distinct !DILexicalBlock(scope: !1694, file: !134, line: 431, column: 17)
!1704 = !DILocation(line: 432, column: 19, scope: !1702)
!1705 = !DILocation(line: 433, column: 19, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !134, line: 433, column: 19)
!1707 = distinct !DILexicalBlock(scope: !1703, file: !134, line: 433, column: 19)
!1708 = !DILocation(line: 433, column: 19, scope: !1707)
!1709 = !DILocation(line: 434, column: 17, scope: !1703)
!1710 = !DILocation(line: 441, column: 20, scope: !1672)
!1711 = !DILocation(line: 446, column: 11, scope: !1542)
!1712 = !DILocation(line: 449, column: 19, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1542, file: !134, line: 447, column: 13)
!1714 = !DILocation(line: 455, column: 19, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1713, file: !134, line: 454, column: 19)
!1716 = !DILocation(line: 455, column: 24, scope: !1715)
!1717 = !DILocation(line: 455, column: 28, scope: !1715)
!1718 = !DILocation(line: 455, column: 38, scope: !1715)
!1719 = !DILocation(line: 455, column: 47, scope: !1715)
!1720 = !DILocation(line: 455, column: 41, scope: !1715)
!1721 = !DILocation(line: 455, column: 52, scope: !1715)
!1722 = !DILocation(line: 454, column: 19, scope: !1713)
!1723 = !DILocation(line: 456, column: 25, scope: !1715)
!1724 = !DILocation(line: 456, column: 17, scope: !1715)
!1725 = !DILocation(line: 463, column: 25, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1715, file: !134, line: 457, column: 19)
!1727 = !DILocation(line: 467, column: 21, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !134, line: 467, column: 21)
!1729 = distinct !DILexicalBlock(scope: !1726, file: !134, line: 467, column: 21)
!1730 = !DILocation(line: 467, column: 21, scope: !1729)
!1731 = !DILocation(line: 468, column: 21, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !134, line: 468, column: 21)
!1733 = distinct !DILexicalBlock(scope: !1726, file: !134, line: 468, column: 21)
!1734 = !DILocation(line: 468, column: 21, scope: !1733)
!1735 = !DILocation(line: 469, column: 21, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !134, line: 469, column: 21)
!1737 = distinct !DILexicalBlock(scope: !1726, file: !134, line: 469, column: 21)
!1738 = !DILocation(line: 469, column: 21, scope: !1737)
!1739 = !DILocation(line: 470, column: 21, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !134, line: 470, column: 21)
!1741 = distinct !DILexicalBlock(scope: !1726, file: !134, line: 470, column: 21)
!1742 = !DILocation(line: 470, column: 21, scope: !1741)
!1743 = !DILocation(line: 471, column: 21, scope: !1726)
!1744 = !DILocation(line: 395, column: 21, scope: !1533)
!1745 = !DILocation(line: 484, column: 31, scope: !1542)
!1746 = !DILocation(line: 485, column: 31, scope: !1542)
!1747 = !DILocation(line: 487, column: 31, scope: !1542)
!1748 = !DILocation(line: 488, column: 31, scope: !1542)
!1749 = !DILocation(line: 489, column: 31, scope: !1542)
!1750 = !DILocation(line: 492, column: 15, scope: !1542)
!1751 = !DILocation(line: 494, column: 19, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !134, line: 493, column: 13)
!1753 = distinct !DILexicalBlock(scope: !1542, file: !134, line: 492, column: 15)
!1754 = !DILocation(line: 501, column: 33, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1542, file: !134, line: 501, column: 15)
!1756 = !DILocation(line: 506, column: 15, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1542, file: !134, line: 505, column: 15)
!1758 = !DILocation(line: 510, column: 15, scope: !1542)
!1759 = !DILocation(line: 518, column: 26, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1542, file: !134, line: 518, column: 15)
!1761 = !DILocation(line: 518, column: 15, scope: !1542)
!1762 = !DILocation(line: 518, column: 40, scope: !1760)
!1763 = !DILocation(line: 518, column: 47, scope: !1760)
!1764 = !DILocation(line: 522, column: 17, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1542, file: !134, line: 522, column: 15)
!1766 = !DILocation(line: 518, column: 18, scope: !1760)
!1767 = !DILocation(line: 518, column: 65, scope: !1760)
!1768 = !DILocation(line: 522, column: 15, scope: !1542)
!1769 = !DILocation(line: 526, column: 11, scope: !1542)
!1770 = !DILocation(line: 541, column: 15, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1542, file: !134, line: 540, column: 15)
!1772 = !DILocation(line: 548, column: 15, scope: !1542)
!1773 = !DILocation(line: 550, column: 19, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !134, line: 549, column: 13)
!1775 = distinct !DILexicalBlock(scope: !1542, file: !134, line: 548, column: 15)
!1776 = !DILocation(line: 553, column: 19, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1774, file: !134, line: 553, column: 19)
!1778 = !DILocation(line: 553, column: 35, scope: !1777)
!1779 = !DILocation(line: 553, column: 30, scope: !1777)
!1780 = !DILocation(line: 562, column: 15, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !134, line: 562, column: 15)
!1782 = distinct !DILexicalBlock(scope: !1774, file: !134, line: 562, column: 15)
!1783 = !DILocation(line: 562, column: 15, scope: !1782)
!1784 = !DILocation(line: 563, column: 15, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !134, line: 563, column: 15)
!1786 = distinct !DILexicalBlock(scope: !1774, file: !134, line: 563, column: 15)
!1787 = !DILocation(line: 563, column: 15, scope: !1786)
!1788 = !DILocation(line: 564, column: 15, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !134, line: 564, column: 15)
!1790 = distinct !DILexicalBlock(scope: !1774, file: !134, line: 564, column: 15)
!1791 = !DILocation(line: 564, column: 15, scope: !1790)
!1792 = !DILocation(line: 566, column: 13, scope: !1774)
!1793 = !DILocation(line: 606, column: 17, scope: !1541)
!1794 = !DILocation(line: 602, column: 20, scope: !1541)
!1795 = !DILocation(line: 609, column: 29, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1546, file: !134, line: 607, column: 15)
!1797 = !{!1798, !1798, i64 0}
!1798 = !{!"short", !609, i64 0}
!1799 = !DILocation(line: 609, column: 27, scope: !1796)
!1800 = !DILocation(line: 604, column: 18, scope: !1541)
!1801 = !DILocation(line: 610, column: 15, scope: !1796)
!1802 = !DILocation(line: 613, column: 17, scope: !1545)
!1803 = !DILocation(line: 614, column: 17, scope: !1545)
!1804 = !DILocation(line: 618, column: 29, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1545, file: !134, line: 618, column: 21)
!1806 = !DILocation(line: 618, column: 21, scope: !1545)
!1807 = !DILocation(line: 619, column: 29, scope: !1805)
!1808 = !DILocation(line: 619, column: 19, scope: !1805)
!1809 = !DILocation(line: 621, column: 17, scope: !1545)
!1810 = distinct !{!1810, !1809, !1811}
!1811 = !DILocation(line: 667, column: 44, scope: !1545)
!1812 = !DILocation(line: 623, column: 21, scope: !1563)
!1813 = !DILocation(line: 624, column: 56, scope: !1563)
!1814 = !DILocation(line: 624, column: 50, scope: !1563)
!1815 = !DILocation(line: 625, column: 53, scope: !1563)
!1816 = !DILocation(line: 613, column: 27, scope: !1545)
!1817 = !DILocation(line: 623, column: 29, scope: !1563)
!1818 = !DILocation(line: 624, column: 36, scope: !1563)
!1819 = !DILocation(line: 624, column: 28, scope: !1563)
!1820 = !DILocation(line: 626, column: 25, scope: !1563)
!1821 = !DILocation(line: 636, column: 38, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1570, file: !134, line: 634, column: 23)
!1823 = !DILocation(line: 636, column: 48, scope: !1822)
!1824 = !DILocation(line: 636, column: 51, scope: !1822)
!1825 = !DILocation(line: 636, column: 25, scope: !1822)
!1826 = !DILocation(line: 637, column: 28, scope: !1822)
!1827 = !DILocation(line: 636, column: 34, scope: !1822)
!1828 = distinct !{!1828, !1825, !1826}
!1829 = !DILocation(line: 650, column: 43, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !134, line: 650, column: 29)
!1831 = distinct !DILexicalBlock(scope: !1567, file: !134, line: 650, column: 29)
!1832 = !DILocation(line: 647, column: 29, scope: !1568)
!1833 = !DILocation(line: 649, column: 36, scope: !1567)
!1834 = !DILocation(line: 651, column: 49, scope: !1830)
!1835 = !DILocation(line: 651, column: 39, scope: !1830)
!1836 = !DILocation(line: 651, column: 31, scope: !1830)
!1837 = !DILocation(line: 650, column: 53, scope: !1830)
!1838 = !DILocation(line: 650, column: 29, scope: !1831)
!1839 = distinct !{!1839, !1838, !1840}
!1840 = !DILocation(line: 659, column: 33, scope: !1831)
!1841 = !DILocation(line: 666, column: 19, scope: !1545)
!1842 = !DILocation(line: 662, column: 41, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1569, file: !134, line: 662, column: 29)
!1844 = !DILocation(line: 662, column: 31, scope: !1843)
!1845 = !DILocation(line: 662, column: 29, scope: !1569)
!1846 = !DILocation(line: 664, column: 27, scope: !1569)
!1847 = !DILocation(line: 667, column: 26, scope: !1545)
!1848 = !DILocation(line: 667, column: 24, scope: !1545)
!1849 = !DILocation(line: 666, column: 19, scope: !1563)
!1850 = !DILocation(line: 668, column: 15, scope: !1546)
!1851 = !DILocation(line: 670, column: 40, scope: !1541)
!1852 = !DILocation(line: 672, column: 19, scope: !1575)
!1853 = !DILocation(line: 672, column: 45, scope: !1575)
!1854 = !DILocation(line: 672, column: 23, scope: !1575)
!1855 = !DILocation(line: 676, column: 33, scope: !1574)
!1856 = !DILocation(line: 676, column: 24, scope: !1574)
!1857 = !DILocation(line: 678, column: 17, scope: !1574)
!1858 = !DILocation(line: 680, column: 43, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !134, line: 680, column: 25)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !134, line: 679, column: 19)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !134, line: 678, column: 17)
!1862 = distinct !DILexicalBlock(scope: !1574, file: !134, line: 678, column: 17)
!1863 = !DILocation(line: 682, column: 25, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !134, line: 682, column: 25)
!1865 = distinct !DILexicalBlock(scope: !1859, file: !134, line: 681, column: 23)
!1866 = !DILocation(line: 682, column: 25, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1864, file: !134, line: 682, column: 25)
!1868 = !DILocation(line: 682, column: 25, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !134, line: 682, column: 25)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !134, line: 682, column: 25)
!1871 = distinct !DILexicalBlock(scope: !1867, file: !134, line: 682, column: 25)
!1872 = !DILocation(line: 682, column: 25, scope: !1870)
!1873 = !DILocation(line: 682, column: 25, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !134, line: 682, column: 25)
!1875 = distinct !DILexicalBlock(scope: !1871, file: !134, line: 682, column: 25)
!1876 = !DILocation(line: 682, column: 25, scope: !1875)
!1877 = !DILocation(line: 682, column: 25, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !134, line: 682, column: 25)
!1879 = distinct !DILexicalBlock(scope: !1871, file: !134, line: 682, column: 25)
!1880 = !DILocation(line: 682, column: 25, scope: !1879)
!1881 = !DILocation(line: 682, column: 25, scope: !1871)
!1882 = !DILocation(line: 682, column: 25, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !134, line: 682, column: 25)
!1884 = distinct !DILexicalBlock(scope: !1864, file: !134, line: 682, column: 25)
!1885 = !DILocation(line: 682, column: 25, scope: !1884)
!1886 = !DILocation(line: 683, column: 25, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !134, line: 683, column: 25)
!1888 = distinct !DILexicalBlock(scope: !1865, file: !134, line: 683, column: 25)
!1889 = !DILocation(line: 683, column: 25, scope: !1888)
!1890 = !DILocation(line: 684, column: 25, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !134, line: 684, column: 25)
!1892 = distinct !DILexicalBlock(scope: !1865, file: !134, line: 684, column: 25)
!1893 = !DILocation(line: 684, column: 25, scope: !1892)
!1894 = !DILocation(line: 685, column: 38, scope: !1865)
!1895 = !DILocation(line: 685, column: 33, scope: !1865)
!1896 = !DILocation(line: 686, column: 23, scope: !1865)
!1897 = !DILocation(line: 687, column: 30, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1859, file: !134, line: 687, column: 30)
!1899 = !DILocation(line: 687, column: 30, scope: !1859)
!1900 = !DILocation(line: 689, column: 25, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !134, line: 689, column: 25)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !134, line: 689, column: 25)
!1903 = distinct !DILexicalBlock(scope: !1898, file: !134, line: 688, column: 23)
!1904 = !DILocation(line: 689, column: 25, scope: !1902)
!1905 = !DILocation(line: 691, column: 23, scope: !1903)
!1906 = !DILocation(line: 692, column: 35, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1860, file: !134, line: 692, column: 25)
!1908 = !DILocation(line: 692, column: 30, scope: !1907)
!1909 = !DILocation(line: 692, column: 25, scope: !1860)
!1910 = !DILocation(line: 694, column: 21, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !134, line: 694, column: 21)
!1912 = distinct !DILexicalBlock(scope: !1860, file: !134, line: 694, column: 21)
!1913 = !DILocation(line: 694, column: 21, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !134, line: 694, column: 21)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !134, line: 694, column: 21)
!1916 = distinct !DILexicalBlock(scope: !1911, file: !134, line: 694, column: 21)
!1917 = !DILocation(line: 694, column: 21, scope: !1915)
!1918 = !DILocation(line: 694, column: 21, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !134, line: 694, column: 21)
!1920 = distinct !DILexicalBlock(scope: !1916, file: !134, line: 694, column: 21)
!1921 = !DILocation(line: 694, column: 21, scope: !1920)
!1922 = !DILocation(line: 694, column: 21, scope: !1916)
!1923 = !DILocation(line: 695, column: 21, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !134, line: 695, column: 21)
!1925 = distinct !DILexicalBlock(scope: !1860, file: !134, line: 695, column: 21)
!1926 = !DILocation(line: 695, column: 21, scope: !1925)
!1927 = !DILocation(line: 696, column: 25, scope: !1860)
!1928 = !DILocation(line: 678, column: 17, scope: !1861)
!1929 = distinct !{!1929, !1930, !1931}
!1930 = !DILocation(line: 678, column: 17, scope: !1862)
!1931 = !DILocation(line: 697, column: 19, scope: !1862)
!1932 = !DILocation(line: 704, column: 34, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1533, file: !134, line: 704, column: 11)
!1934 = !DILocation(line: 706, column: 14, scope: !1933)
!1935 = !DILocation(line: 707, column: 14, scope: !1933)
!1936 = !DILocation(line: 707, column: 35, scope: !1933)
!1937 = !DILocation(line: 707, column: 17, scope: !1933)
!1938 = !DILocation(line: 707, column: 53, scope: !1933)
!1939 = !DILocation(line: 707, column: 47, scope: !1933)
!1940 = !DILocation(line: 707, column: 65, scope: !1933)
!1941 = !DILocation(line: 708, column: 15, scope: !1933)
!1942 = !DILocation(line: 708, column: 11, scope: !1933)
!1943 = !DILocation(line: 704, column: 11, scope: !1533)
!1944 = !DILocation(line: 712, column: 7, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1533, file: !134, line: 712, column: 7)
!1946 = !DILocation(line: 712, column: 7, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1945, file: !134, line: 712, column: 7)
!1948 = !DILocation(line: 712, column: 7, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !134, line: 712, column: 7)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !134, line: 712, column: 7)
!1951 = distinct !DILexicalBlock(scope: !1947, file: !134, line: 712, column: 7)
!1952 = !DILocation(line: 712, column: 7, scope: !1950)
!1953 = !DILocation(line: 712, column: 7, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !134, line: 712, column: 7)
!1955 = distinct !DILexicalBlock(scope: !1951, file: !134, line: 712, column: 7)
!1956 = !DILocation(line: 712, column: 7, scope: !1955)
!1957 = !DILocation(line: 712, column: 7, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !134, line: 712, column: 7)
!1959 = distinct !DILexicalBlock(scope: !1951, file: !134, line: 712, column: 7)
!1960 = !DILocation(line: 712, column: 7, scope: !1959)
!1961 = !DILocation(line: 712, column: 7, scope: !1951)
!1962 = !DILocation(line: 712, column: 7, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !134, line: 712, column: 7)
!1964 = distinct !DILexicalBlock(scope: !1945, file: !134, line: 712, column: 7)
!1965 = !DILocation(line: 712, column: 7, scope: !1964)
!1966 = !DILocation(line: 715, column: 7, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !134, line: 715, column: 7)
!1968 = distinct !DILexicalBlock(scope: !1533, file: !134, line: 715, column: 7)
!1969 = !DILocation(line: 715, column: 7, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !134, line: 715, column: 7)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !134, line: 715, column: 7)
!1972 = distinct !DILexicalBlock(scope: !1967, file: !134, line: 715, column: 7)
!1973 = !DILocation(line: 715, column: 7, scope: !1971)
!1974 = !DILocation(line: 715, column: 7, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !134, line: 715, column: 7)
!1976 = distinct !DILexicalBlock(scope: !1972, file: !134, line: 715, column: 7)
!1977 = !DILocation(line: 715, column: 7, scope: !1976)
!1978 = !DILocation(line: 715, column: 7, scope: !1972)
!1979 = !DILocation(line: 716, column: 7, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !134, line: 716, column: 7)
!1981 = distinct !DILexicalBlock(scope: !1533, file: !134, line: 716, column: 7)
!1982 = !DILocation(line: 716, column: 7, scope: !1981)
!1983 = !DILocation(line: 718, column: 13, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1533, file: !134, line: 718, column: 11)
!1985 = !DILocation(line: 718, column: 11, scope: !1533)
!1986 = !DILocation(line: 720, column: 5, scope: !1534)
!1987 = !DILocation(line: 392, column: 75, scope: !1534)
!1988 = !DILocation(line: 392, column: 3, scope: !1534)
!1989 = distinct !{!1989, !1647, !1990}
!1990 = !DILocation(line: 720, column: 5, scope: !1535)
!1991 = !DILocation(line: 722, column: 11, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1506, file: !134, line: 722, column: 7)
!1993 = !DILocation(line: 722, column: 16, scope: !1992)
!1994 = !DILocation(line: 730, column: 51, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1506, file: !134, line: 730, column: 7)
!1996 = !DILocation(line: 731, column: 10, scope: !1995)
!1997 = !DILocation(line: 733, column: 11, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !134, line: 733, column: 11)
!1999 = distinct !DILexicalBlock(scope: !1995, file: !134, line: 732, column: 5)
!2000 = !DILocation(line: 733, column: 11, scope: !1999)
!2001 = !DILocation(line: 734, column: 16, scope: !1998)
!2002 = !DILocation(line: 734, column: 9, scope: !1998)
!2003 = !DILocation(line: 738, column: 18, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1998, file: !134, line: 738, column: 16)
!2005 = !DILocation(line: 738, column: 32, scope: !2004)
!2006 = !DILocation(line: 738, column: 29, scope: !2004)
!2007 = !DILocation(line: 747, column: 7, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1506, file: !134, line: 747, column: 7)
!2009 = !DILocation(line: 747, column: 20, scope: !2008)
!2010 = !DILocation(line: 748, column: 12, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !134, line: 748, column: 5)
!2012 = distinct !DILexicalBlock(scope: !2008, file: !134, line: 748, column: 5)
!2013 = !DILocation(line: 748, column: 5, scope: !2012)
!2014 = !DILocation(line: 749, column: 7, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !134, line: 749, column: 7)
!2016 = distinct !DILexicalBlock(scope: !2011, file: !134, line: 749, column: 7)
!2017 = !DILocation(line: 749, column: 7, scope: !2016)
!2018 = !DILocation(line: 748, column: 39, scope: !2011)
!2019 = distinct !{!2019, !2013, !2020}
!2020 = !DILocation(line: 749, column: 7, scope: !2012)
!2021 = !DILocation(line: 751, column: 11, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1506, file: !134, line: 751, column: 7)
!2023 = !DILocation(line: 751, column: 7, scope: !1506)
!2024 = !DILocation(line: 752, column: 5, scope: !2022)
!2025 = !DILocation(line: 752, column: 17, scope: !2022)
!2026 = !DILocation(line: 758, column: 21, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1506, file: !134, line: 758, column: 7)
!2028 = !DILocation(line: 758, column: 54, scope: !2027)
!2029 = !DILocation(line: 758, column: 51, scope: !2027)
!2030 = !DILocation(line: 762, column: 42, scope: !1506)
!2031 = !DILocation(line: 760, column: 10, scope: !1506)
!2032 = !DILocation(line: 760, column: 3, scope: !1506)
!2033 = !DILocation(line: 764, column: 1, scope: !1506)
!2034 = distinct !DISubprogram(name: "gettext_quote", scope: !134, file: !134, line: 199, type: !2035, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2037)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!44, !44, !13}
!2037 = !{!2038, !2039, !2040, !2041}
!2038 = !DILocalVariable(name: "msgid", arg: 1, scope: !2034, file: !134, line: 199, type: !44)
!2039 = !DILocalVariable(name: "s", arg: 2, scope: !2034, file: !134, line: 199, type: !13)
!2040 = !DILocalVariable(name: "translation", scope: !2034, file: !134, line: 201, type: !44)
!2041 = !DILocalVariable(name: "locale_code", scope: !2034, file: !134, line: 202, type: !44)
!2042 = !DILocation(line: 199, column: 28, scope: !2034)
!2043 = !DILocation(line: 199, column: 54, scope: !2034)
!2044 = !DILocation(line: 201, column: 29, scope: !2034)
!2045 = !DILocation(line: 201, column: 15, scope: !2034)
!2046 = !DILocation(line: 204, column: 19, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2034, file: !134, line: 204, column: 7)
!2048 = !DILocation(line: 204, column: 7, scope: !2034)
!2049 = !DILocation(line: 225, column: 17, scope: !2034)
!2050 = !DILocation(line: 202, column: 15, scope: !2034)
!2051 = !DILocalVariable(name: "s2", arg: 2, scope: !2052, file: !2053, line: 160, type: !44)
!2052 = distinct !DISubprogram(name: "strcaseeq0", scope: !2053, file: !2053, line: 160, type: !2054, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2056)
!2053 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!67, !44, !44, !29, !29, !29, !29, !29, !29, !29, !29, !29}
!2056 = !{!2057, !2051, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066}
!2057 = !DILocalVariable(name: "s1", arg: 1, scope: !2052, file: !2053, line: 160, type: !44)
!2058 = !DILocalVariable(name: "s20", arg: 3, scope: !2052, file: !2053, line: 160, type: !29)
!2059 = !DILocalVariable(name: "s21", arg: 4, scope: !2052, file: !2053, line: 160, type: !29)
!2060 = !DILocalVariable(name: "s22", arg: 5, scope: !2052, file: !2053, line: 160, type: !29)
!2061 = !DILocalVariable(name: "s23", arg: 6, scope: !2052, file: !2053, line: 160, type: !29)
!2062 = !DILocalVariable(name: "s24", arg: 7, scope: !2052, file: !2053, line: 160, type: !29)
!2063 = !DILocalVariable(name: "s25", arg: 8, scope: !2052, file: !2053, line: 160, type: !29)
!2064 = !DILocalVariable(name: "s26", arg: 9, scope: !2052, file: !2053, line: 160, type: !29)
!2065 = !DILocalVariable(name: "s27", arg: 10, scope: !2052, file: !2053, line: 160, type: !29)
!2066 = !DILocalVariable(name: "s28", arg: 11, scope: !2052, file: !2053, line: 160, type: !29)
!2067 = !DILocation(line: 160, column: 41, scope: !2052, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 226, column: 7, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2034, file: !134, line: 226, column: 7)
!2070 = !DILocation(line: 160, column: 120, scope: !2052, inlinedAt: !2068)
!2071 = !DILocation(line: 160, column: 130, scope: !2052, inlinedAt: !2068)
!2072 = !DILocation(line: 162, column: 7, scope: !2073, inlinedAt: !2068)
!2073 = distinct !DILexicalBlock(scope: !2052, file: !2053, line: 162, column: 7)
!2074 = !DILocalVariable(name: "s2", arg: 2, scope: !2075, file: !2053, line: 146, type: !44)
!2075 = distinct !DISubprogram(name: "strcaseeq1", scope: !2053, file: !2053, line: 146, type: !2076, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2078)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!67, !44, !44, !29, !29, !29, !29, !29, !29, !29, !29}
!2078 = !{!2079, !2074, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087}
!2079 = !DILocalVariable(name: "s1", arg: 1, scope: !2075, file: !2053, line: 146, type: !44)
!2080 = !DILocalVariable(name: "s21", arg: 3, scope: !2075, file: !2053, line: 146, type: !29)
!2081 = !DILocalVariable(name: "s22", arg: 4, scope: !2075, file: !2053, line: 146, type: !29)
!2082 = !DILocalVariable(name: "s23", arg: 5, scope: !2075, file: !2053, line: 146, type: !29)
!2083 = !DILocalVariable(name: "s24", arg: 6, scope: !2075, file: !2053, line: 146, type: !29)
!2084 = !DILocalVariable(name: "s25", arg: 7, scope: !2075, file: !2053, line: 146, type: !29)
!2085 = !DILocalVariable(name: "s26", arg: 8, scope: !2075, file: !2053, line: 146, type: !29)
!2086 = !DILocalVariable(name: "s27", arg: 9, scope: !2075, file: !2053, line: 146, type: !29)
!2087 = !DILocalVariable(name: "s28", arg: 10, scope: !2075, file: !2053, line: 146, type: !29)
!2088 = !DILocation(line: 146, column: 41, scope: !2075, inlinedAt: !2089)
!2089 = distinct !DILocation(line: 167, column: 16, scope: !2090, inlinedAt: !2068)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !2053, line: 164, column: 11)
!2091 = distinct !DILexicalBlock(scope: !2073, file: !2053, line: 163, column: 5)
!2092 = !DILocation(line: 146, column: 110, scope: !2075, inlinedAt: !2089)
!2093 = !DILocation(line: 146, column: 120, scope: !2075, inlinedAt: !2089)
!2094 = !DILocation(line: 148, column: 7, scope: !2095, inlinedAt: !2089)
!2095 = distinct !DILexicalBlock(scope: !2075, file: !2053, line: 148, column: 7)
!2096 = !DILocalVariable(name: "s2", arg: 2, scope: !2097, file: !2053, line: 132, type: !44)
!2097 = distinct !DISubprogram(name: "strcaseeq2", scope: !2053, file: !2053, line: 132, type: !2098, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2100)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!67, !44, !44, !29, !29, !29, !29, !29, !29, !29}
!2100 = !{!2101, !2096, !2102, !2103, !2104, !2105, !2106, !2107, !2108}
!2101 = !DILocalVariable(name: "s1", arg: 1, scope: !2097, file: !2053, line: 132, type: !44)
!2102 = !DILocalVariable(name: "s22", arg: 3, scope: !2097, file: !2053, line: 132, type: !29)
!2103 = !DILocalVariable(name: "s23", arg: 4, scope: !2097, file: !2053, line: 132, type: !29)
!2104 = !DILocalVariable(name: "s24", arg: 5, scope: !2097, file: !2053, line: 132, type: !29)
!2105 = !DILocalVariable(name: "s25", arg: 6, scope: !2097, file: !2053, line: 132, type: !29)
!2106 = !DILocalVariable(name: "s26", arg: 7, scope: !2097, file: !2053, line: 132, type: !29)
!2107 = !DILocalVariable(name: "s27", arg: 8, scope: !2097, file: !2053, line: 132, type: !29)
!2108 = !DILocalVariable(name: "s28", arg: 9, scope: !2097, file: !2053, line: 132, type: !29)
!2109 = !DILocation(line: 132, column: 41, scope: !2097, inlinedAt: !2110)
!2110 = distinct !DILocation(line: 153, column: 16, scope: !2111, inlinedAt: !2089)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !2053, line: 150, column: 11)
!2112 = distinct !DILexicalBlock(scope: !2095, file: !2053, line: 149, column: 5)
!2113 = !DILocation(line: 132, column: 100, scope: !2097, inlinedAt: !2110)
!2114 = !DILocation(line: 132, column: 110, scope: !2097, inlinedAt: !2110)
!2115 = !DILocation(line: 134, column: 7, scope: !2116, inlinedAt: !2110)
!2116 = distinct !DILexicalBlock(scope: !2097, file: !2053, line: 134, column: 7)
!2117 = !DILocalVariable(name: "s2", arg: 2, scope: !2118, file: !2053, line: 118, type: !44)
!2118 = distinct !DISubprogram(name: "strcaseeq3", scope: !2053, file: !2053, line: 118, type: !2119, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2121)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!67, !44, !44, !29, !29, !29, !29, !29, !29}
!2121 = !{!2122, !2117, !2123, !2124, !2125, !2126, !2127, !2128}
!2122 = !DILocalVariable(name: "s1", arg: 1, scope: !2118, file: !2053, line: 118, type: !44)
!2123 = !DILocalVariable(name: "s23", arg: 3, scope: !2118, file: !2053, line: 118, type: !29)
!2124 = !DILocalVariable(name: "s24", arg: 4, scope: !2118, file: !2053, line: 118, type: !29)
!2125 = !DILocalVariable(name: "s25", arg: 5, scope: !2118, file: !2053, line: 118, type: !29)
!2126 = !DILocalVariable(name: "s26", arg: 6, scope: !2118, file: !2053, line: 118, type: !29)
!2127 = !DILocalVariable(name: "s27", arg: 7, scope: !2118, file: !2053, line: 118, type: !29)
!2128 = !DILocalVariable(name: "s28", arg: 8, scope: !2118, file: !2053, line: 118, type: !29)
!2129 = !DILocation(line: 118, column: 41, scope: !2118, inlinedAt: !2130)
!2130 = distinct !DILocation(line: 139, column: 16, scope: !2131, inlinedAt: !2110)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !2053, line: 136, column: 11)
!2132 = distinct !DILexicalBlock(scope: !2116, file: !2053, line: 135, column: 5)
!2133 = !DILocation(line: 118, column: 90, scope: !2118, inlinedAt: !2130)
!2134 = !DILocation(line: 118, column: 100, scope: !2118, inlinedAt: !2130)
!2135 = !DILocation(line: 120, column: 7, scope: !2136, inlinedAt: !2130)
!2136 = distinct !DILexicalBlock(scope: !2118, file: !2053, line: 120, column: 7)
!2137 = !DILocation(line: 120, column: 7, scope: !2118, inlinedAt: !2130)
!2138 = !DILocalVariable(name: "s2", arg: 2, scope: !2139, file: !2053, line: 104, type: !44)
!2139 = distinct !DISubprogram(name: "strcaseeq4", scope: !2053, file: !2053, line: 104, type: !2140, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2142)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!67, !44, !44, !29, !29, !29, !29, !29}
!2142 = !{!2143, !2138, !2144, !2145, !2146, !2147, !2148}
!2143 = !DILocalVariable(name: "s1", arg: 1, scope: !2139, file: !2053, line: 104, type: !44)
!2144 = !DILocalVariable(name: "s24", arg: 3, scope: !2139, file: !2053, line: 104, type: !29)
!2145 = !DILocalVariable(name: "s25", arg: 4, scope: !2139, file: !2053, line: 104, type: !29)
!2146 = !DILocalVariable(name: "s26", arg: 5, scope: !2139, file: !2053, line: 104, type: !29)
!2147 = !DILocalVariable(name: "s27", arg: 6, scope: !2139, file: !2053, line: 104, type: !29)
!2148 = !DILocalVariable(name: "s28", arg: 7, scope: !2139, file: !2053, line: 104, type: !29)
!2149 = !DILocation(line: 104, column: 41, scope: !2139, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 125, column: 16, scope: !2151, inlinedAt: !2130)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !2053, line: 122, column: 11)
!2152 = distinct !DILexicalBlock(scope: !2136, file: !2053, line: 121, column: 5)
!2153 = !DILocation(line: 104, column: 80, scope: !2139, inlinedAt: !2150)
!2154 = !DILocation(line: 104, column: 90, scope: !2139, inlinedAt: !2150)
!2155 = !DILocation(line: 106, column: 7, scope: !2156, inlinedAt: !2150)
!2156 = distinct !DILexicalBlock(scope: !2139, file: !2053, line: 106, column: 7)
!2157 = !DILocation(line: 106, column: 7, scope: !2139, inlinedAt: !2150)
!2158 = !DILocalVariable(name: "s2", arg: 2, scope: !2159, file: !2053, line: 90, type: !44)
!2159 = distinct !DISubprogram(name: "strcaseeq5", scope: !2053, file: !2053, line: 90, type: !2160, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2162)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!67, !44, !44, !29, !29, !29, !29}
!2162 = !{!2163, !2158, !2164, !2165, !2166, !2167}
!2163 = !DILocalVariable(name: "s1", arg: 1, scope: !2159, file: !2053, line: 90, type: !44)
!2164 = !DILocalVariable(name: "s25", arg: 3, scope: !2159, file: !2053, line: 90, type: !29)
!2165 = !DILocalVariable(name: "s26", arg: 4, scope: !2159, file: !2053, line: 90, type: !29)
!2166 = !DILocalVariable(name: "s27", arg: 5, scope: !2159, file: !2053, line: 90, type: !29)
!2167 = !DILocalVariable(name: "s28", arg: 6, scope: !2159, file: !2053, line: 90, type: !29)
!2168 = !DILocation(line: 90, column: 41, scope: !2159, inlinedAt: !2169)
!2169 = distinct !DILocation(line: 111, column: 16, scope: !2170, inlinedAt: !2150)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !2053, line: 108, column: 11)
!2171 = distinct !DILexicalBlock(scope: !2156, file: !2053, line: 107, column: 5)
!2172 = !DILocation(line: 90, column: 70, scope: !2159, inlinedAt: !2169)
!2173 = !DILocation(line: 90, column: 80, scope: !2159, inlinedAt: !2169)
!2174 = !DILocation(line: 92, column: 7, scope: !2175, inlinedAt: !2169)
!2175 = distinct !DILexicalBlock(scope: !2159, file: !2053, line: 92, column: 7)
!2176 = !DILocation(line: 92, column: 7, scope: !2159, inlinedAt: !2169)
!2177 = !DILocation(line: 227, column: 12, scope: !2069)
!2178 = !DILocation(line: 227, column: 21, scope: !2069)
!2179 = !DILocation(line: 227, column: 5, scope: !2069)
!2180 = !DILocation(line: 146, column: 41, scope: !2075, inlinedAt: !2181)
!2181 = distinct !DILocation(line: 167, column: 16, scope: !2090, inlinedAt: !2182)
!2182 = distinct !DILocation(line: 228, column: 7, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2034, file: !134, line: 228, column: 7)
!2184 = !DILocation(line: 146, column: 110, scope: !2075, inlinedAt: !2181)
!2185 = !DILocation(line: 146, column: 120, scope: !2075, inlinedAt: !2181)
!2186 = !DILocation(line: 148, column: 7, scope: !2095, inlinedAt: !2181)
!2187 = !DILocation(line: 132, column: 41, scope: !2097, inlinedAt: !2188)
!2188 = distinct !DILocation(line: 153, column: 16, scope: !2111, inlinedAt: !2181)
!2189 = !DILocation(line: 132, column: 100, scope: !2097, inlinedAt: !2188)
!2190 = !DILocation(line: 132, column: 110, scope: !2097, inlinedAt: !2188)
!2191 = !DILocation(line: 134, column: 7, scope: !2116, inlinedAt: !2188)
!2192 = !DILocation(line: 134, column: 7, scope: !2097, inlinedAt: !2188)
!2193 = !DILocation(line: 118, column: 41, scope: !2118, inlinedAt: !2194)
!2194 = distinct !DILocation(line: 139, column: 16, scope: !2131, inlinedAt: !2188)
!2195 = !DILocation(line: 118, column: 90, scope: !2118, inlinedAt: !2194)
!2196 = !DILocation(line: 118, column: 100, scope: !2118, inlinedAt: !2194)
!2197 = !DILocation(line: 120, column: 7, scope: !2136, inlinedAt: !2194)
!2198 = !DILocation(line: 120, column: 7, scope: !2118, inlinedAt: !2194)
!2199 = !DILocation(line: 104, column: 41, scope: !2139, inlinedAt: !2200)
!2200 = distinct !DILocation(line: 125, column: 16, scope: !2151, inlinedAt: !2194)
!2201 = !DILocation(line: 104, column: 80, scope: !2139, inlinedAt: !2200)
!2202 = !DILocation(line: 104, column: 90, scope: !2139, inlinedAt: !2200)
!2203 = !DILocation(line: 106, column: 7, scope: !2156, inlinedAt: !2200)
!2204 = !DILocation(line: 106, column: 7, scope: !2139, inlinedAt: !2200)
!2205 = !DILocation(line: 90, column: 41, scope: !2159, inlinedAt: !2206)
!2206 = distinct !DILocation(line: 111, column: 16, scope: !2170, inlinedAt: !2200)
!2207 = !DILocation(line: 90, column: 70, scope: !2159, inlinedAt: !2206)
!2208 = !DILocation(line: 90, column: 80, scope: !2159, inlinedAt: !2206)
!2209 = !DILocation(line: 92, column: 7, scope: !2175, inlinedAt: !2206)
!2210 = !DILocation(line: 92, column: 7, scope: !2159, inlinedAt: !2206)
!2211 = !DILocalVariable(name: "s2", arg: 2, scope: !2212, file: !2053, line: 76, type: !44)
!2212 = distinct !DISubprogram(name: "strcaseeq6", scope: !2053, file: !2053, line: 76, type: !2213, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2215)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!67, !44, !44, !29, !29, !29}
!2215 = !{!2216, !2211, !2217, !2218, !2219}
!2216 = !DILocalVariable(name: "s1", arg: 1, scope: !2212, file: !2053, line: 76, type: !44)
!2217 = !DILocalVariable(name: "s26", arg: 3, scope: !2212, file: !2053, line: 76, type: !29)
!2218 = !DILocalVariable(name: "s27", arg: 4, scope: !2212, file: !2053, line: 76, type: !29)
!2219 = !DILocalVariable(name: "s28", arg: 5, scope: !2212, file: !2053, line: 76, type: !29)
!2220 = !DILocation(line: 76, column: 41, scope: !2212, inlinedAt: !2221)
!2221 = distinct !DILocation(line: 97, column: 16, scope: !2222, inlinedAt: !2206)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !2053, line: 94, column: 11)
!2223 = distinct !DILexicalBlock(scope: !2175, file: !2053, line: 93, column: 5)
!2224 = !DILocation(line: 76, column: 60, scope: !2212, inlinedAt: !2221)
!2225 = !DILocation(line: 76, column: 70, scope: !2212, inlinedAt: !2221)
!2226 = !DILocation(line: 78, column: 7, scope: !2227, inlinedAt: !2221)
!2227 = distinct !DILexicalBlock(scope: !2212, file: !2053, line: 78, column: 7)
!2228 = !DILocation(line: 78, column: 7, scope: !2212, inlinedAt: !2221)
!2229 = !DILocalVariable(name: "s2", arg: 2, scope: !2230, file: !2053, line: 62, type: !44)
!2230 = distinct !DISubprogram(name: "strcaseeq7", scope: !2053, file: !2053, line: 62, type: !2231, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2233)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!67, !44, !44, !29, !29}
!2233 = !{!2234, !2229, !2235, !2236}
!2234 = !DILocalVariable(name: "s1", arg: 1, scope: !2230, file: !2053, line: 62, type: !44)
!2235 = !DILocalVariable(name: "s27", arg: 3, scope: !2230, file: !2053, line: 62, type: !29)
!2236 = !DILocalVariable(name: "s28", arg: 4, scope: !2230, file: !2053, line: 62, type: !29)
!2237 = !DILocation(line: 62, column: 41, scope: !2230, inlinedAt: !2238)
!2238 = distinct !DILocation(line: 83, column: 16, scope: !2239, inlinedAt: !2221)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !2053, line: 80, column: 11)
!2240 = distinct !DILexicalBlock(scope: !2227, file: !2053, line: 79, column: 5)
!2241 = !DILocation(line: 62, column: 50, scope: !2230, inlinedAt: !2238)
!2242 = !DILocation(line: 62, column: 60, scope: !2230, inlinedAt: !2238)
!2243 = !DILocation(line: 64, column: 7, scope: !2244, inlinedAt: !2238)
!2244 = distinct !DILexicalBlock(scope: !2230, file: !2053, line: 64, column: 7)
!2245 = !DILocation(line: 228, column: 7, scope: !2034)
!2246 = !DILocation(line: 229, column: 12, scope: !2183)
!2247 = !DILocation(line: 229, column: 21, scope: !2183)
!2248 = !DILocation(line: 229, column: 5, scope: !2183)
!2249 = !DILocation(line: 231, column: 13, scope: !2034)
!2250 = !DILocation(line: 231, column: 11, scope: !2034)
!2251 = !DILocation(line: 231, column: 3, scope: !2034)
!2252 = !DILocation(line: 232, column: 1, scope: !2034)
!2253 = distinct !DISubprogram(name: "quotearg_alloc", scope: !134, file: !134, line: 791, type: !2254, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2256)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!28, !44, !129, !1378}
!2256 = !{!2257, !2258, !2259}
!2257 = !DILocalVariable(name: "arg", arg: 1, scope: !2253, file: !134, line: 791, type: !44)
!2258 = !DILocalVariable(name: "argsize", arg: 2, scope: !2253, file: !134, line: 791, type: !129)
!2259 = !DILocalVariable(name: "o", arg: 3, scope: !2253, file: !134, line: 792, type: !1378)
!2260 = !DILocation(line: 791, column: 29, scope: !2253)
!2261 = !DILocation(line: 791, column: 41, scope: !2253)
!2262 = !DILocation(line: 792, column: 47, scope: !2253)
!2263 = !DILocalVariable(name: "arg", arg: 1, scope: !2264, file: !134, line: 804, type: !44)
!2264 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !134, file: !134, line: 804, type: !2265, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2267)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!28, !44, !129, !560, !1378}
!2267 = !{!2263, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275}
!2268 = !DILocalVariable(name: "argsize", arg: 2, scope: !2264, file: !134, line: 804, type: !129)
!2269 = !DILocalVariable(name: "size", arg: 3, scope: !2264, file: !134, line: 804, type: !560)
!2270 = !DILocalVariable(name: "o", arg: 4, scope: !2264, file: !134, line: 805, type: !1378)
!2271 = !DILocalVariable(name: "p", scope: !2264, file: !134, line: 807, type: !1378)
!2272 = !DILocalVariable(name: "e", scope: !2264, file: !134, line: 808, type: !67)
!2273 = !DILocalVariable(name: "flags", scope: !2264, file: !134, line: 810, type: !67)
!2274 = !DILocalVariable(name: "bufsize", scope: !2264, file: !134, line: 811, type: !129)
!2275 = !DILocalVariable(name: "buf", scope: !2264, file: !134, line: 815, type: !28)
!2276 = !DILocation(line: 804, column: 33, scope: !2264, inlinedAt: !2277)
!2277 = distinct !DILocation(line: 794, column: 10, scope: !2253)
!2278 = !DILocation(line: 804, column: 45, scope: !2264, inlinedAt: !2277)
!2279 = !DILocation(line: 804, column: 62, scope: !2264, inlinedAt: !2277)
!2280 = !DILocation(line: 805, column: 51, scope: !2264, inlinedAt: !2277)
!2281 = !DILocation(line: 807, column: 37, scope: !2264, inlinedAt: !2277)
!2282 = !DILocation(line: 807, column: 33, scope: !2264, inlinedAt: !2277)
!2283 = !DILocation(line: 808, column: 11, scope: !2264, inlinedAt: !2277)
!2284 = !DILocation(line: 808, column: 7, scope: !2264, inlinedAt: !2277)
!2285 = !DILocation(line: 810, column: 18, scope: !2264, inlinedAt: !2277)
!2286 = !DILocation(line: 810, column: 24, scope: !2264, inlinedAt: !2277)
!2287 = !DILocation(line: 810, column: 7, scope: !2264, inlinedAt: !2277)
!2288 = !DILocation(line: 811, column: 69, scope: !2264, inlinedAt: !2277)
!2289 = !DILocation(line: 812, column: 53, scope: !2264, inlinedAt: !2277)
!2290 = !DILocation(line: 813, column: 49, scope: !2264, inlinedAt: !2277)
!2291 = !DILocation(line: 814, column: 49, scope: !2264, inlinedAt: !2277)
!2292 = !DILocation(line: 811, column: 20, scope: !2264, inlinedAt: !2277)
!2293 = !DILocation(line: 814, column: 62, scope: !2264, inlinedAt: !2277)
!2294 = !DILocation(line: 811, column: 10, scope: !2264, inlinedAt: !2277)
!2295 = !DILocalVariable(name: "n", arg: 1, scope: !2296, file: !556, line: 220, type: !129)
!2296 = distinct !DISubprogram(name: "xcharalloc", scope: !556, file: !556, line: 220, type: !2297, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2299)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!28, !129}
!2299 = !{!2295}
!2300 = !DILocation(line: 220, column: 20, scope: !2296, inlinedAt: !2301)
!2301 = distinct !DILocation(line: 815, column: 15, scope: !2264, inlinedAt: !2277)
!2302 = !DILocation(line: 222, column: 10, scope: !2296, inlinedAt: !2301)
!2303 = !DILocation(line: 815, column: 9, scope: !2264, inlinedAt: !2277)
!2304 = !DILocation(line: 816, column: 60, scope: !2264, inlinedAt: !2277)
!2305 = !DILocation(line: 818, column: 32, scope: !2264, inlinedAt: !2277)
!2306 = !DILocation(line: 818, column: 47, scope: !2264, inlinedAt: !2277)
!2307 = !DILocation(line: 816, column: 3, scope: !2264, inlinedAt: !2277)
!2308 = !DILocation(line: 819, column: 9, scope: !2264, inlinedAt: !2277)
!2309 = !DILocation(line: 794, column: 3, scope: !2253)
!2310 = !DILocation(line: 804, column: 33, scope: !2264)
!2311 = !DILocation(line: 804, column: 45, scope: !2264)
!2312 = !DILocation(line: 804, column: 62, scope: !2264)
!2313 = !DILocation(line: 805, column: 51, scope: !2264)
!2314 = !DILocation(line: 807, column: 37, scope: !2264)
!2315 = !DILocation(line: 807, column: 33, scope: !2264)
!2316 = !DILocation(line: 808, column: 11, scope: !2264)
!2317 = !DILocation(line: 808, column: 7, scope: !2264)
!2318 = !DILocation(line: 810, column: 18, scope: !2264)
!2319 = !DILocation(line: 810, column: 27, scope: !2264)
!2320 = !DILocation(line: 810, column: 24, scope: !2264)
!2321 = !DILocation(line: 810, column: 7, scope: !2264)
!2322 = !DILocation(line: 811, column: 69, scope: !2264)
!2323 = !DILocation(line: 812, column: 53, scope: !2264)
!2324 = !DILocation(line: 813, column: 49, scope: !2264)
!2325 = !DILocation(line: 814, column: 49, scope: !2264)
!2326 = !DILocation(line: 811, column: 20, scope: !2264)
!2327 = !DILocation(line: 814, column: 62, scope: !2264)
!2328 = !DILocation(line: 811, column: 10, scope: !2264)
!2329 = !DILocation(line: 220, column: 20, scope: !2296, inlinedAt: !2330)
!2330 = distinct !DILocation(line: 815, column: 15, scope: !2264)
!2331 = !DILocation(line: 222, column: 10, scope: !2296, inlinedAt: !2330)
!2332 = !DILocation(line: 815, column: 9, scope: !2264)
!2333 = !DILocation(line: 816, column: 60, scope: !2264)
!2334 = !DILocation(line: 818, column: 32, scope: !2264)
!2335 = !DILocation(line: 818, column: 47, scope: !2264)
!2336 = !DILocation(line: 816, column: 3, scope: !2264)
!2337 = !DILocation(line: 819, column: 9, scope: !2264)
!2338 = !DILocation(line: 820, column: 7, scope: !2264)
!2339 = !DILocation(line: 821, column: 11, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2264, file: !134, line: 820, column: 7)
!2341 = !DILocation(line: 821, column: 5, scope: !2340)
!2342 = !DILocation(line: 822, column: 3, scope: !2264)
!2343 = distinct !DISubprogram(name: "quotearg_free", scope: !134, file: !134, line: 840, type: !616, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2344)
!2344 = !{!2345, !2346}
!2345 = !DILocalVariable(name: "sv", scope: !2343, file: !134, line: 842, type: !160)
!2346 = !DILocalVariable(name: "i", scope: !2343, file: !134, line: 843, type: !67)
!2347 = !DILocation(line: 842, column: 24, scope: !2343)
!2348 = !DILocation(line: 842, column: 19, scope: !2343)
!2349 = !DILocation(line: 843, column: 7, scope: !2343)
!2350 = !DILocation(line: 844, column: 19, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !134, line: 844, column: 3)
!2352 = distinct !DILexicalBlock(scope: !2343, file: !134, line: 844, column: 3)
!2353 = !DILocation(line: 844, column: 17, scope: !2351)
!2354 = !DILocation(line: 844, column: 3, scope: !2352)
!2355 = !DILocation(line: 845, column: 17, scope: !2351)
!2356 = !{!2357, !608, i64 8}
!2357 = !{!"slotvec", !802, i64 0, !608, i64 8}
!2358 = !DILocation(line: 845, column: 5, scope: !2351)
!2359 = !DILocation(line: 844, column: 28, scope: !2351)
!2360 = distinct !{!2360, !2354, !2361}
!2361 = !DILocation(line: 845, column: 20, scope: !2352)
!2362 = !DILocation(line: 846, column: 13, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2343, file: !134, line: 846, column: 7)
!2364 = !DILocation(line: 846, column: 17, scope: !2363)
!2365 = !DILocation(line: 846, column: 7, scope: !2343)
!2366 = !DILocation(line: 848, column: 7, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2363, file: !134, line: 847, column: 5)
!2368 = !DILocation(line: 849, column: 21, scope: !2367)
!2369 = !{!2357, !802, i64 0}
!2370 = !DILocation(line: 850, column: 20, scope: !2367)
!2371 = !DILocation(line: 851, column: 5, scope: !2367)
!2372 = !DILocation(line: 852, column: 10, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2343, file: !134, line: 852, column: 7)
!2374 = !DILocation(line: 852, column: 7, scope: !2343)
!2375 = !DILocation(line: 854, column: 13, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2373, file: !134, line: 853, column: 5)
!2377 = !DILocation(line: 854, column: 7, scope: !2376)
!2378 = !DILocation(line: 855, column: 15, scope: !2376)
!2379 = !DILocation(line: 856, column: 5, scope: !2376)
!2380 = !DILocation(line: 857, column: 10, scope: !2343)
!2381 = !DILocation(line: 858, column: 1, scope: !2343)
!2382 = distinct !DISubprogram(name: "quotearg_n", scope: !134, file: !134, line: 922, type: !2383, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2385)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!28, !67, !44}
!2385 = !{!2386, !2387}
!2386 = !DILocalVariable(name: "n", arg: 1, scope: !2382, file: !134, line: 922, type: !67)
!2387 = !DILocalVariable(name: "arg", arg: 2, scope: !2382, file: !134, line: 922, type: !44)
!2388 = !DILocation(line: 922, column: 17, scope: !2382)
!2389 = !DILocation(line: 922, column: 32, scope: !2382)
!2390 = !DILocation(line: 924, column: 10, scope: !2382)
!2391 = !DILocation(line: 924, column: 3, scope: !2382)
!2392 = distinct !DISubprogram(name: "quotearg_n_options", scope: !134, file: !134, line: 869, type: !2393, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2395)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!28, !67, !44, !129, !1378}
!2395 = !{!2396, !2397, !2398, !2399, !2400, !2401, !2402, !2405, !2407, !2408, !2409}
!2396 = !DILocalVariable(name: "n", arg: 1, scope: !2392, file: !134, line: 869, type: !67)
!2397 = !DILocalVariable(name: "arg", arg: 2, scope: !2392, file: !134, line: 869, type: !44)
!2398 = !DILocalVariable(name: "argsize", arg: 3, scope: !2392, file: !134, line: 869, type: !129)
!2399 = !DILocalVariable(name: "options", arg: 4, scope: !2392, file: !134, line: 870, type: !1378)
!2400 = !DILocalVariable(name: "e", scope: !2392, file: !134, line: 872, type: !67)
!2401 = !DILocalVariable(name: "sv", scope: !2392, file: !134, line: 874, type: !160)
!2402 = !DILocalVariable(name: "preallocated", scope: !2403, file: !134, line: 881, type: !87)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !134, line: 880, column: 5)
!2404 = distinct !DILexicalBlock(scope: !2392, file: !134, line: 879, column: 7)
!2405 = !DILocalVariable(name: "size", scope: !2406, file: !134, line: 894, type: !129)
!2406 = distinct !DILexicalBlock(scope: !2392, file: !134, line: 893, column: 3)
!2407 = !DILocalVariable(name: "val", scope: !2406, file: !134, line: 895, type: !28)
!2408 = !DILocalVariable(name: "flags", scope: !2406, file: !134, line: 897, type: !67)
!2409 = !DILocalVariable(name: "qsize", scope: !2406, file: !134, line: 898, type: !129)
!2410 = !DILocation(line: 869, column: 25, scope: !2392)
!2411 = !DILocation(line: 869, column: 40, scope: !2392)
!2412 = !DILocation(line: 869, column: 52, scope: !2392)
!2413 = !DILocation(line: 870, column: 51, scope: !2392)
!2414 = !DILocation(line: 872, column: 11, scope: !2392)
!2415 = !DILocation(line: 872, column: 7, scope: !2392)
!2416 = !DILocation(line: 874, column: 24, scope: !2392)
!2417 = !DILocation(line: 874, column: 19, scope: !2392)
!2418 = !DILocation(line: 876, column: 9, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2392, file: !134, line: 876, column: 7)
!2420 = !DILocation(line: 876, column: 7, scope: !2392)
!2421 = !DILocation(line: 877, column: 5, scope: !2419)
!2422 = !DILocation(line: 879, column: 7, scope: !2404)
!2423 = !DILocation(line: 879, column: 14, scope: !2404)
!2424 = !DILocation(line: 879, column: 7, scope: !2392)
!2425 = !DILocation(line: 881, column: 31, scope: !2403)
!2426 = !DILocation(line: 883, column: 67, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2403, file: !134, line: 883, column: 11)
!2428 = !DILocation(line: 883, column: 11, scope: !2403)
!2429 = !DILocation(line: 884, column: 9, scope: !2427)
!2430 = !DILocation(line: 886, column: 32, scope: !2403)
!2431 = !DILocation(line: 886, column: 61, scope: !2403)
!2432 = !DILocation(line: 886, column: 58, scope: !2403)
!2433 = !DILocation(line: 886, column: 66, scope: !2403)
!2434 = !DILocation(line: 886, column: 22, scope: !2403)
!2435 = !DILocation(line: 886, column: 15, scope: !2403)
!2436 = !DILocation(line: 887, column: 11, scope: !2403)
!2437 = !DILocation(line: 888, column: 15, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2403, file: !134, line: 887, column: 11)
!2439 = !{i64 0, i64 8, !801, i64 8, i64 8, !607}
!2440 = !DILocation(line: 888, column: 9, scope: !2438)
!2441 = !DILocation(line: 889, column: 20, scope: !2403)
!2442 = !DILocation(line: 889, column: 18, scope: !2403)
!2443 = !DILocation(line: 889, column: 7, scope: !2403)
!2444 = !DILocation(line: 889, column: 38, scope: !2403)
!2445 = !DILocation(line: 889, column: 31, scope: !2403)
!2446 = !DILocation(line: 889, column: 48, scope: !2403)
!2447 = !DILocation(line: 890, column: 14, scope: !2403)
!2448 = !DILocation(line: 891, column: 5, scope: !2403)
!2449 = !DILocation(line: 894, column: 19, scope: !2406)
!2450 = !DILocation(line: 894, column: 25, scope: !2406)
!2451 = !DILocation(line: 894, column: 12, scope: !2406)
!2452 = !DILocation(line: 895, column: 23, scope: !2406)
!2453 = !DILocation(line: 895, column: 11, scope: !2406)
!2454 = !DILocation(line: 897, column: 26, scope: !2406)
!2455 = !DILocation(line: 897, column: 32, scope: !2406)
!2456 = !DILocation(line: 897, column: 9, scope: !2406)
!2457 = !DILocation(line: 899, column: 55, scope: !2406)
!2458 = !DILocation(line: 900, column: 46, scope: !2406)
!2459 = !DILocation(line: 901, column: 55, scope: !2406)
!2460 = !DILocation(line: 902, column: 55, scope: !2406)
!2461 = !DILocation(line: 898, column: 20, scope: !2406)
!2462 = !DILocation(line: 898, column: 12, scope: !2406)
!2463 = !DILocation(line: 904, column: 14, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2406, file: !134, line: 904, column: 9)
!2465 = !DILocation(line: 904, column: 9, scope: !2406)
!2466 = !DILocation(line: 906, column: 35, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2464, file: !134, line: 905, column: 7)
!2468 = !DILocation(line: 906, column: 20, scope: !2467)
!2469 = !DILocation(line: 907, column: 17, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2467, file: !134, line: 907, column: 13)
!2471 = !DILocation(line: 907, column: 13, scope: !2467)
!2472 = !DILocation(line: 908, column: 11, scope: !2470)
!2473 = !DILocation(line: 220, column: 20, scope: !2296, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 909, column: 27, scope: !2467)
!2475 = !DILocation(line: 222, column: 10, scope: !2296, inlinedAt: !2474)
!2476 = !DILocation(line: 909, column: 19, scope: !2467)
!2477 = !DILocation(line: 910, column: 69, scope: !2467)
!2478 = !DILocation(line: 912, column: 44, scope: !2467)
!2479 = !DILocation(line: 913, column: 44, scope: !2467)
!2480 = !DILocation(line: 910, column: 9, scope: !2467)
!2481 = !DILocation(line: 914, column: 7, scope: !2467)
!2482 = !DILocation(line: 916, column: 11, scope: !2406)
!2483 = !DILocation(line: 917, column: 5, scope: !2406)
!2484 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !134, file: !134, line: 928, type: !2485, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2487)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!28, !67, !44, !129}
!2487 = !{!2488, !2489, !2490}
!2488 = !DILocalVariable(name: "n", arg: 1, scope: !2484, file: !134, line: 928, type: !67)
!2489 = !DILocalVariable(name: "arg", arg: 2, scope: !2484, file: !134, line: 928, type: !44)
!2490 = !DILocalVariable(name: "argsize", arg: 3, scope: !2484, file: !134, line: 928, type: !129)
!2491 = !DILocation(line: 928, column: 21, scope: !2484)
!2492 = !DILocation(line: 928, column: 36, scope: !2484)
!2493 = !DILocation(line: 928, column: 48, scope: !2484)
!2494 = !DILocation(line: 930, column: 10, scope: !2484)
!2495 = !DILocation(line: 930, column: 3, scope: !2484)
!2496 = distinct !DISubprogram(name: "quotearg", scope: !134, file: !134, line: 934, type: !2497, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2499)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!28, !44}
!2499 = !{!2500}
!2500 = !DILocalVariable(name: "arg", arg: 1, scope: !2496, file: !134, line: 934, type: !44)
!2501 = !DILocation(line: 934, column: 23, scope: !2496)
!2502 = !DILocation(line: 922, column: 17, scope: !2382, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 936, column: 10, scope: !2496)
!2504 = !DILocation(line: 922, column: 32, scope: !2382, inlinedAt: !2503)
!2505 = !DILocation(line: 924, column: 10, scope: !2382, inlinedAt: !2503)
!2506 = !DILocation(line: 936, column: 3, scope: !2496)
!2507 = distinct !DISubprogram(name: "quotearg_mem", scope: !134, file: !134, line: 940, type: !2508, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2510)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!28, !44, !129}
!2510 = !{!2511, !2512}
!2511 = !DILocalVariable(name: "arg", arg: 1, scope: !2507, file: !134, line: 940, type: !44)
!2512 = !DILocalVariable(name: "argsize", arg: 2, scope: !2507, file: !134, line: 940, type: !129)
!2513 = !DILocation(line: 940, column: 27, scope: !2507)
!2514 = !DILocation(line: 940, column: 39, scope: !2507)
!2515 = !DILocation(line: 928, column: 21, scope: !2484, inlinedAt: !2516)
!2516 = distinct !DILocation(line: 942, column: 10, scope: !2507)
!2517 = !DILocation(line: 928, column: 36, scope: !2484, inlinedAt: !2516)
!2518 = !DILocation(line: 928, column: 48, scope: !2484, inlinedAt: !2516)
!2519 = !DILocation(line: 930, column: 10, scope: !2484, inlinedAt: !2516)
!2520 = !DILocation(line: 942, column: 3, scope: !2507)
!2521 = distinct !DISubprogram(name: "quotearg_n_style", scope: !134, file: !134, line: 946, type: !2522, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2524)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!28, !67, !13, !44}
!2524 = !{!2525, !2526, !2527, !2528}
!2525 = !DILocalVariable(name: "n", arg: 1, scope: !2521, file: !134, line: 946, type: !67)
!2526 = !DILocalVariable(name: "s", arg: 2, scope: !2521, file: !134, line: 946, type: !13)
!2527 = !DILocalVariable(name: "arg", arg: 3, scope: !2521, file: !134, line: 946, type: !44)
!2528 = !DILocalVariable(name: "o", scope: !2521, file: !134, line: 948, type: !1379)
!2529 = !DILocalVariable(name: "o", scope: !2530, file: !134, line: 187, type: !141)
!2530 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !134, file: !134, line: 185, type: !2531, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2533)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!141, !13}
!2533 = !{!2534, !2529}
!2534 = !DILocalVariable(name: "style", arg: 1, scope: !2530, file: !134, line: 185, type: !13)
!2535 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2536 = !DILocation(line: 187, column: 26, scope: !2530, inlinedAt: !2537)
!2537 = distinct !DILocation(line: 948, column: 36, scope: !2521)
!2538 = !DILocation(line: 946, column: 23, scope: !2521)
!2539 = !DILocation(line: 946, column: 45, scope: !2521)
!2540 = !DILocation(line: 946, column: 60, scope: !2521)
!2541 = !DILocation(line: 948, column: 3, scope: !2521)
!2542 = !DILocation(line: 948, column: 32, scope: !2521)
!2543 = !DILocation(line: 185, column: 48, scope: !2530, inlinedAt: !2537)
!2544 = !DILocation(line: 187, column: 3, scope: !2530, inlinedAt: !2537)
!2545 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2546 = !DILocation(line: 188, column: 13, scope: !2547, inlinedAt: !2537)
!2547 = distinct !DILexicalBlock(scope: !2530, file: !134, line: 188, column: 7)
!2548 = !DILocation(line: 188, column: 7, scope: !2530, inlinedAt: !2537)
!2549 = !DILocation(line: 189, column: 5, scope: !2547, inlinedAt: !2537)
!2550 = !{!2551}
!2551 = distinct !{!2551, !2552, !"quoting_options_from_style: argument 0"}
!2552 = distinct !{!2552, !"quoting_options_from_style"}
!2553 = !DILocation(line: 191, column: 10, scope: !2530, inlinedAt: !2537)
!2554 = !DILocation(line: 192, column: 1, scope: !2530, inlinedAt: !2537)
!2555 = !DILocation(line: 949, column: 10, scope: !2521)
!2556 = !DILocation(line: 950, column: 1, scope: !2521)
!2557 = !DILocation(line: 949, column: 3, scope: !2521)
!2558 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !134, file: !134, line: 953, type: !2559, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2561)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!28, !67, !13, !44, !129}
!2561 = !{!2562, !2563, !2564, !2565, !2566}
!2562 = !DILocalVariable(name: "n", arg: 1, scope: !2558, file: !134, line: 953, type: !67)
!2563 = !DILocalVariable(name: "s", arg: 2, scope: !2558, file: !134, line: 953, type: !13)
!2564 = !DILocalVariable(name: "arg", arg: 3, scope: !2558, file: !134, line: 954, type: !44)
!2565 = !DILocalVariable(name: "argsize", arg: 4, scope: !2558, file: !134, line: 954, type: !129)
!2566 = !DILocalVariable(name: "o", scope: !2558, file: !134, line: 956, type: !1379)
!2567 = !DILocation(line: 187, column: 26, scope: !2530, inlinedAt: !2568)
!2568 = distinct !DILocation(line: 956, column: 36, scope: !2558)
!2569 = !DILocation(line: 953, column: 27, scope: !2558)
!2570 = !DILocation(line: 953, column: 49, scope: !2558)
!2571 = !DILocation(line: 954, column: 35, scope: !2558)
!2572 = !DILocation(line: 954, column: 47, scope: !2558)
!2573 = !DILocation(line: 956, column: 3, scope: !2558)
!2574 = !DILocation(line: 956, column: 32, scope: !2558)
!2575 = !DILocation(line: 185, column: 48, scope: !2530, inlinedAt: !2568)
!2576 = !DILocation(line: 187, column: 3, scope: !2530, inlinedAt: !2568)
!2577 = !DILocation(line: 188, column: 13, scope: !2547, inlinedAt: !2568)
!2578 = !DILocation(line: 188, column: 7, scope: !2530, inlinedAt: !2568)
!2579 = !DILocation(line: 189, column: 5, scope: !2547, inlinedAt: !2568)
!2580 = !{!2581}
!2581 = distinct !{!2581, !2582, !"quoting_options_from_style: argument 0"}
!2582 = distinct !{!2582, !"quoting_options_from_style"}
!2583 = !DILocation(line: 191, column: 10, scope: !2530, inlinedAt: !2568)
!2584 = !DILocation(line: 192, column: 1, scope: !2530, inlinedAt: !2568)
!2585 = !DILocation(line: 957, column: 10, scope: !2558)
!2586 = !DILocation(line: 958, column: 1, scope: !2558)
!2587 = !DILocation(line: 957, column: 3, scope: !2558)
!2588 = distinct !DISubprogram(name: "quotearg_style", scope: !134, file: !134, line: 961, type: !2589, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2591)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!28, !13, !44}
!2591 = !{!2592, !2593}
!2592 = !DILocalVariable(name: "s", arg: 1, scope: !2588, file: !134, line: 961, type: !13)
!2593 = !DILocalVariable(name: "arg", arg: 2, scope: !2588, file: !134, line: 961, type: !44)
!2594 = !DILocation(line: 187, column: 26, scope: !2530, inlinedAt: !2595)
!2595 = distinct !DILocation(line: 948, column: 36, scope: !2521, inlinedAt: !2596)
!2596 = distinct !DILocation(line: 963, column: 10, scope: !2588)
!2597 = !DILocation(line: 961, column: 36, scope: !2588)
!2598 = !DILocation(line: 961, column: 51, scope: !2588)
!2599 = !DILocation(line: 946, column: 23, scope: !2521, inlinedAt: !2596)
!2600 = !DILocation(line: 946, column: 45, scope: !2521, inlinedAt: !2596)
!2601 = !DILocation(line: 946, column: 60, scope: !2521, inlinedAt: !2596)
!2602 = !DILocation(line: 948, column: 3, scope: !2521, inlinedAt: !2596)
!2603 = !DILocation(line: 948, column: 32, scope: !2521, inlinedAt: !2596)
!2604 = !DILocation(line: 185, column: 48, scope: !2530, inlinedAt: !2595)
!2605 = !DILocation(line: 187, column: 3, scope: !2530, inlinedAt: !2595)
!2606 = !DILocation(line: 188, column: 13, scope: !2547, inlinedAt: !2595)
!2607 = !DILocation(line: 188, column: 7, scope: !2530, inlinedAt: !2595)
!2608 = !DILocation(line: 189, column: 5, scope: !2547, inlinedAt: !2595)
!2609 = !{!2610}
!2610 = distinct !{!2610, !2611, !"quoting_options_from_style: argument 0"}
!2611 = distinct !{!2611, !"quoting_options_from_style"}
!2612 = !DILocation(line: 191, column: 10, scope: !2530, inlinedAt: !2595)
!2613 = !DILocation(line: 192, column: 1, scope: !2530, inlinedAt: !2595)
!2614 = !DILocation(line: 949, column: 10, scope: !2521, inlinedAt: !2596)
!2615 = !DILocation(line: 950, column: 1, scope: !2521, inlinedAt: !2596)
!2616 = !DILocation(line: 963, column: 3, scope: !2588)
!2617 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !134, file: !134, line: 967, type: !2618, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2620)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!28, !13, !44, !129}
!2620 = !{!2621, !2622, !2623}
!2621 = !DILocalVariable(name: "s", arg: 1, scope: !2617, file: !134, line: 967, type: !13)
!2622 = !DILocalVariable(name: "arg", arg: 2, scope: !2617, file: !134, line: 967, type: !44)
!2623 = !DILocalVariable(name: "argsize", arg: 3, scope: !2617, file: !134, line: 967, type: !129)
!2624 = !DILocation(line: 187, column: 26, scope: !2530, inlinedAt: !2625)
!2625 = distinct !DILocation(line: 956, column: 36, scope: !2558, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 969, column: 10, scope: !2617)
!2627 = !DILocation(line: 967, column: 40, scope: !2617)
!2628 = !DILocation(line: 967, column: 55, scope: !2617)
!2629 = !DILocation(line: 967, column: 67, scope: !2617)
!2630 = !DILocation(line: 953, column: 27, scope: !2558, inlinedAt: !2626)
!2631 = !DILocation(line: 953, column: 49, scope: !2558, inlinedAt: !2626)
!2632 = !DILocation(line: 954, column: 35, scope: !2558, inlinedAt: !2626)
!2633 = !DILocation(line: 954, column: 47, scope: !2558, inlinedAt: !2626)
!2634 = !DILocation(line: 956, column: 3, scope: !2558, inlinedAt: !2626)
!2635 = !DILocation(line: 956, column: 32, scope: !2558, inlinedAt: !2626)
!2636 = !DILocation(line: 185, column: 48, scope: !2530, inlinedAt: !2625)
!2637 = !DILocation(line: 187, column: 3, scope: !2530, inlinedAt: !2625)
!2638 = !DILocation(line: 188, column: 13, scope: !2547, inlinedAt: !2625)
!2639 = !DILocation(line: 188, column: 7, scope: !2530, inlinedAt: !2625)
!2640 = !DILocation(line: 189, column: 5, scope: !2547, inlinedAt: !2625)
!2641 = !{!2642}
!2642 = distinct !{!2642, !2643, !"quoting_options_from_style: argument 0"}
!2643 = distinct !{!2643, !"quoting_options_from_style"}
!2644 = !DILocation(line: 191, column: 10, scope: !2530, inlinedAt: !2625)
!2645 = !DILocation(line: 192, column: 1, scope: !2530, inlinedAt: !2625)
!2646 = !DILocation(line: 957, column: 10, scope: !2558, inlinedAt: !2626)
!2647 = !DILocation(line: 958, column: 1, scope: !2558, inlinedAt: !2626)
!2648 = !DILocation(line: 969, column: 3, scope: !2617)
!2649 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !134, file: !134, line: 973, type: !2650, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2652)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!28, !44, !129, !29}
!2652 = !{!2653, !2654, !2655, !2656}
!2653 = !DILocalVariable(name: "arg", arg: 1, scope: !2649, file: !134, line: 973, type: !44)
!2654 = !DILocalVariable(name: "argsize", arg: 2, scope: !2649, file: !134, line: 973, type: !129)
!2655 = !DILocalVariable(name: "ch", arg: 3, scope: !2649, file: !134, line: 973, type: !29)
!2656 = !DILocalVariable(name: "options", scope: !2649, file: !134, line: 975, type: !141)
!2657 = !DILocation(line: 973, column: 32, scope: !2649)
!2658 = !DILocation(line: 973, column: 44, scope: !2649)
!2659 = !DILocation(line: 973, column: 58, scope: !2649)
!2660 = !DILocation(line: 975, column: 3, scope: !2649)
!2661 = !DILocation(line: 976, column: 13, scope: !2649)
!2662 = !{i64 0, i64 4, !738, i64 4, i64 4, !730, i64 8, i64 32, !738, i64 40, i64 8, !607, i64 48, i64 8, !607}
!2663 = !DILocation(line: 975, column: 26, scope: !2649)
!2664 = !DILocation(line: 144, column: 43, scope: !1400, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 977, column: 3, scope: !2649)
!2666 = !DILocation(line: 144, column: 51, scope: !1400, inlinedAt: !2665)
!2667 = !DILocation(line: 144, column: 58, scope: !1400, inlinedAt: !2665)
!2668 = !DILocation(line: 146, column: 17, scope: !1400, inlinedAt: !2665)
!2669 = !DILocation(line: 148, column: 62, scope: !1400, inlinedAt: !2665)
!2670 = !DILocation(line: 148, column: 57, scope: !1400, inlinedAt: !2665)
!2671 = !DILocation(line: 147, column: 17, scope: !1400, inlinedAt: !2665)
!2672 = !DILocation(line: 149, column: 18, scope: !1400, inlinedAt: !2665)
!2673 = !DILocation(line: 149, column: 15, scope: !1400, inlinedAt: !2665)
!2674 = !DILocation(line: 149, column: 7, scope: !1400, inlinedAt: !2665)
!2675 = !DILocation(line: 150, column: 12, scope: !1400, inlinedAt: !2665)
!2676 = !DILocation(line: 150, column: 15, scope: !1400, inlinedAt: !2665)
!2677 = !DILocation(line: 150, column: 25, scope: !1400, inlinedAt: !2665)
!2678 = !DILocation(line: 150, column: 7, scope: !1400, inlinedAt: !2665)
!2679 = !DILocation(line: 151, column: 18, scope: !1400, inlinedAt: !2665)
!2680 = !DILocation(line: 151, column: 23, scope: !1400, inlinedAt: !2665)
!2681 = !DILocation(line: 151, column: 6, scope: !1400, inlinedAt: !2665)
!2682 = !DILocation(line: 978, column: 10, scope: !2649)
!2683 = !DILocation(line: 979, column: 1, scope: !2649)
!2684 = !DILocation(line: 978, column: 3, scope: !2649)
!2685 = distinct !DISubprogram(name: "quotearg_char", scope: !134, file: !134, line: 982, type: !2686, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2688)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!28, !44, !29}
!2688 = !{!2689, !2690}
!2689 = !DILocalVariable(name: "arg", arg: 1, scope: !2685, file: !134, line: 982, type: !44)
!2690 = !DILocalVariable(name: "ch", arg: 2, scope: !2685, file: !134, line: 982, type: !29)
!2691 = !DILocation(line: 982, column: 28, scope: !2685)
!2692 = !DILocation(line: 982, column: 38, scope: !2685)
!2693 = !DILocation(line: 973, column: 32, scope: !2649, inlinedAt: !2694)
!2694 = distinct !DILocation(line: 984, column: 10, scope: !2685)
!2695 = !DILocation(line: 973, column: 44, scope: !2649, inlinedAt: !2694)
!2696 = !DILocation(line: 973, column: 58, scope: !2649, inlinedAt: !2694)
!2697 = !DILocation(line: 975, column: 3, scope: !2649, inlinedAt: !2694)
!2698 = !DILocation(line: 976, column: 13, scope: !2649, inlinedAt: !2694)
!2699 = !DILocation(line: 975, column: 26, scope: !2649, inlinedAt: !2694)
!2700 = !DILocation(line: 144, column: 43, scope: !1400, inlinedAt: !2701)
!2701 = distinct !DILocation(line: 977, column: 3, scope: !2649, inlinedAt: !2694)
!2702 = !DILocation(line: 144, column: 51, scope: !1400, inlinedAt: !2701)
!2703 = !DILocation(line: 144, column: 58, scope: !1400, inlinedAt: !2701)
!2704 = !DILocation(line: 146, column: 17, scope: !1400, inlinedAt: !2701)
!2705 = !DILocation(line: 148, column: 62, scope: !1400, inlinedAt: !2701)
!2706 = !DILocation(line: 148, column: 57, scope: !1400, inlinedAt: !2701)
!2707 = !DILocation(line: 147, column: 17, scope: !1400, inlinedAt: !2701)
!2708 = !DILocation(line: 149, column: 18, scope: !1400, inlinedAt: !2701)
!2709 = !DILocation(line: 149, column: 15, scope: !1400, inlinedAt: !2701)
!2710 = !DILocation(line: 149, column: 7, scope: !1400, inlinedAt: !2701)
!2711 = !DILocation(line: 150, column: 12, scope: !1400, inlinedAt: !2701)
!2712 = !DILocation(line: 150, column: 15, scope: !1400, inlinedAt: !2701)
!2713 = !DILocation(line: 150, column: 25, scope: !1400, inlinedAt: !2701)
!2714 = !DILocation(line: 150, column: 7, scope: !1400, inlinedAt: !2701)
!2715 = !DILocation(line: 151, column: 18, scope: !1400, inlinedAt: !2701)
!2716 = !DILocation(line: 151, column: 23, scope: !1400, inlinedAt: !2701)
!2717 = !DILocation(line: 151, column: 6, scope: !1400, inlinedAt: !2701)
!2718 = !DILocation(line: 978, column: 10, scope: !2649, inlinedAt: !2694)
!2719 = !DILocation(line: 979, column: 1, scope: !2649, inlinedAt: !2694)
!2720 = !DILocation(line: 984, column: 3, scope: !2685)
!2721 = distinct !DISubprogram(name: "quotearg_colon", scope: !134, file: !134, line: 988, type: !2497, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2722)
!2722 = !{!2723}
!2723 = !DILocalVariable(name: "arg", arg: 1, scope: !2721, file: !134, line: 988, type: !44)
!2724 = !DILocation(line: 988, column: 29, scope: !2721)
!2725 = !DILocation(line: 982, column: 28, scope: !2685, inlinedAt: !2726)
!2726 = distinct !DILocation(line: 990, column: 10, scope: !2721)
!2727 = !DILocation(line: 982, column: 38, scope: !2685, inlinedAt: !2726)
!2728 = !DILocation(line: 973, column: 32, scope: !2649, inlinedAt: !2729)
!2729 = distinct !DILocation(line: 984, column: 10, scope: !2685, inlinedAt: !2726)
!2730 = !DILocation(line: 973, column: 44, scope: !2649, inlinedAt: !2729)
!2731 = !DILocation(line: 973, column: 58, scope: !2649, inlinedAt: !2729)
!2732 = !DILocation(line: 975, column: 3, scope: !2649, inlinedAt: !2729)
!2733 = !DILocation(line: 976, column: 13, scope: !2649, inlinedAt: !2729)
!2734 = !DILocation(line: 975, column: 26, scope: !2649, inlinedAt: !2729)
!2735 = !DILocation(line: 144, column: 43, scope: !1400, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 977, column: 3, scope: !2649, inlinedAt: !2729)
!2737 = !DILocation(line: 144, column: 51, scope: !1400, inlinedAt: !2736)
!2738 = !DILocation(line: 144, column: 58, scope: !1400, inlinedAt: !2736)
!2739 = !DILocation(line: 146, column: 17, scope: !1400, inlinedAt: !2736)
!2740 = !DILocation(line: 148, column: 57, scope: !1400, inlinedAt: !2736)
!2741 = !DILocation(line: 147, column: 17, scope: !1400, inlinedAt: !2736)
!2742 = !DILocation(line: 149, column: 7, scope: !1400, inlinedAt: !2736)
!2743 = !DILocation(line: 150, column: 12, scope: !1400, inlinedAt: !2736)
!2744 = !DILocation(line: 151, column: 6, scope: !1400, inlinedAt: !2736)
!2745 = !DILocation(line: 978, column: 10, scope: !2649, inlinedAt: !2729)
!2746 = !DILocation(line: 979, column: 1, scope: !2649, inlinedAt: !2729)
!2747 = !DILocation(line: 990, column: 3, scope: !2721)
!2748 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !134, file: !134, line: 994, type: !2508, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2749)
!2749 = !{!2750, !2751}
!2750 = !DILocalVariable(name: "arg", arg: 1, scope: !2748, file: !134, line: 994, type: !44)
!2751 = !DILocalVariable(name: "argsize", arg: 2, scope: !2748, file: !134, line: 994, type: !129)
!2752 = !DILocation(line: 994, column: 33, scope: !2748)
!2753 = !DILocation(line: 994, column: 45, scope: !2748)
!2754 = !DILocation(line: 973, column: 32, scope: !2649, inlinedAt: !2755)
!2755 = distinct !DILocation(line: 996, column: 10, scope: !2748)
!2756 = !DILocation(line: 973, column: 44, scope: !2649, inlinedAt: !2755)
!2757 = !DILocation(line: 973, column: 58, scope: !2649, inlinedAt: !2755)
!2758 = !DILocation(line: 975, column: 3, scope: !2649, inlinedAt: !2755)
!2759 = !DILocation(line: 976, column: 13, scope: !2649, inlinedAt: !2755)
!2760 = !DILocation(line: 975, column: 26, scope: !2649, inlinedAt: !2755)
!2761 = !DILocation(line: 144, column: 43, scope: !1400, inlinedAt: !2762)
!2762 = distinct !DILocation(line: 977, column: 3, scope: !2649, inlinedAt: !2755)
!2763 = !DILocation(line: 144, column: 51, scope: !1400, inlinedAt: !2762)
!2764 = !DILocation(line: 144, column: 58, scope: !1400, inlinedAt: !2762)
!2765 = !DILocation(line: 146, column: 17, scope: !1400, inlinedAt: !2762)
!2766 = !DILocation(line: 148, column: 57, scope: !1400, inlinedAt: !2762)
!2767 = !DILocation(line: 147, column: 17, scope: !1400, inlinedAt: !2762)
!2768 = !DILocation(line: 149, column: 7, scope: !1400, inlinedAt: !2762)
!2769 = !DILocation(line: 150, column: 12, scope: !1400, inlinedAt: !2762)
!2770 = !DILocation(line: 151, column: 6, scope: !1400, inlinedAt: !2762)
!2771 = !DILocation(line: 978, column: 10, scope: !2649, inlinedAt: !2755)
!2772 = !DILocation(line: 979, column: 1, scope: !2649, inlinedAt: !2755)
!2773 = !DILocation(line: 996, column: 3, scope: !2748)
!2774 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !134, file: !134, line: 1000, type: !2522, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2775)
!2775 = !{!2776, !2777, !2778, !2779}
!2776 = !DILocalVariable(name: "n", arg: 1, scope: !2774, file: !134, line: 1000, type: !67)
!2777 = !DILocalVariable(name: "s", arg: 2, scope: !2774, file: !134, line: 1000, type: !13)
!2778 = !DILocalVariable(name: "arg", arg: 3, scope: !2774, file: !134, line: 1000, type: !44)
!2779 = !DILocalVariable(name: "options", scope: !2774, file: !134, line: 1002, type: !141)
!2780 = !DILocation(line: 187, column: 26, scope: !2530, inlinedAt: !2781)
!2781 = distinct !DILocation(line: 1003, column: 13, scope: !2774)
!2782 = !DILocation(line: 1000, column: 29, scope: !2774)
!2783 = !DILocation(line: 1000, column: 51, scope: !2774)
!2784 = !DILocation(line: 1000, column: 66, scope: !2774)
!2785 = !DILocation(line: 1002, column: 3, scope: !2774)
!2786 = !DILocation(line: 185, column: 48, scope: !2530, inlinedAt: !2781)
!2787 = !DILocation(line: 187, column: 3, scope: !2530, inlinedAt: !2781)
!2788 = !DILocation(line: 188, column: 13, scope: !2547, inlinedAt: !2781)
!2789 = !DILocation(line: 188, column: 7, scope: !2530, inlinedAt: !2781)
!2790 = !DILocation(line: 189, column: 5, scope: !2547, inlinedAt: !2781)
!2791 = !{!2792}
!2792 = distinct !{!2792, !2793, !"quoting_options_from_style: argument 0"}
!2793 = distinct !{!2793, !"quoting_options_from_style"}
!2794 = !DILocation(line: 191, column: 10, scope: !2530, inlinedAt: !2781)
!2795 = !DILocation(line: 192, column: 1, scope: !2530, inlinedAt: !2781)
!2796 = !DILocation(line: 1003, column: 13, scope: !2774)
!2797 = !DILocation(line: 1002, column: 26, scope: !2774)
!2798 = !DILocation(line: 144, column: 43, scope: !1400, inlinedAt: !2799)
!2799 = distinct !DILocation(line: 1004, column: 3, scope: !2774)
!2800 = !DILocation(line: 144, column: 51, scope: !1400, inlinedAt: !2799)
!2801 = !DILocation(line: 144, column: 58, scope: !1400, inlinedAt: !2799)
!2802 = !DILocation(line: 146, column: 17, scope: !1400, inlinedAt: !2799)
!2803 = !DILocation(line: 148, column: 57, scope: !1400, inlinedAt: !2799)
!2804 = !DILocation(line: 147, column: 17, scope: !1400, inlinedAt: !2799)
!2805 = !DILocation(line: 149, column: 7, scope: !1400, inlinedAt: !2799)
!2806 = !DILocation(line: 150, column: 12, scope: !1400, inlinedAt: !2799)
!2807 = !DILocation(line: 151, column: 6, scope: !1400, inlinedAt: !2799)
!2808 = !DILocation(line: 1005, column: 10, scope: !2774)
!2809 = !DILocation(line: 1006, column: 1, scope: !2774)
!2810 = !DILocation(line: 1005, column: 3, scope: !2774)
!2811 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !134, file: !134, line: 1009, type: !2812, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2814)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!28, !67, !44, !44, !44}
!2814 = !{!2815, !2816, !2817, !2818}
!2815 = !DILocalVariable(name: "n", arg: 1, scope: !2811, file: !134, line: 1009, type: !67)
!2816 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2811, file: !134, line: 1009, type: !44)
!2817 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2811, file: !134, line: 1010, type: !44)
!2818 = !DILocalVariable(name: "arg", arg: 4, scope: !2811, file: !134, line: 1010, type: !44)
!2819 = !DILocation(line: 1009, column: 24, scope: !2811)
!2820 = !DILocation(line: 1009, column: 39, scope: !2811)
!2821 = !DILocation(line: 1010, column: 32, scope: !2811)
!2822 = !DILocation(line: 1010, column: 57, scope: !2811)
!2823 = !DILocalVariable(name: "n", arg: 1, scope: !2824, file: !134, line: 1017, type: !67)
!2824 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !134, file: !134, line: 1017, type: !2825, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2827)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!28, !67, !44, !44, !44, !129}
!2827 = !{!2823, !2828, !2829, !2830, !2831, !2832}
!2828 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2824, file: !134, line: 1017, type: !44)
!2829 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2824, file: !134, line: 1018, type: !44)
!2830 = !DILocalVariable(name: "arg", arg: 4, scope: !2824, file: !134, line: 1019, type: !44)
!2831 = !DILocalVariable(name: "argsize", arg: 5, scope: !2824, file: !134, line: 1019, type: !129)
!2832 = !DILocalVariable(name: "o", scope: !2824, file: !134, line: 1021, type: !141)
!2833 = !DILocation(line: 1017, column: 28, scope: !2824, inlinedAt: !2834)
!2834 = distinct !DILocation(line: 1012, column: 10, scope: !2811)
!2835 = !DILocation(line: 1017, column: 43, scope: !2824, inlinedAt: !2834)
!2836 = !DILocation(line: 1018, column: 36, scope: !2824, inlinedAt: !2834)
!2837 = !DILocation(line: 1019, column: 36, scope: !2824, inlinedAt: !2834)
!2838 = !DILocation(line: 1019, column: 48, scope: !2824, inlinedAt: !2834)
!2839 = !DILocation(line: 1021, column: 3, scope: !2824, inlinedAt: !2834)
!2840 = !DILocation(line: 1021, column: 30, scope: !2824, inlinedAt: !2834)
!2841 = !DILocation(line: 1021, column: 26, scope: !2824, inlinedAt: !2834)
!2842 = !DILocation(line: 171, column: 45, scope: !1449, inlinedAt: !2843)
!2843 = distinct !DILocation(line: 1022, column: 3, scope: !2824, inlinedAt: !2834)
!2844 = !DILocation(line: 172, column: 33, scope: !1449, inlinedAt: !2843)
!2845 = !DILocation(line: 172, column: 57, scope: !1449, inlinedAt: !2843)
!2846 = !DILocation(line: 176, column: 6, scope: !1449, inlinedAt: !2843)
!2847 = !DILocation(line: 176, column: 12, scope: !1449, inlinedAt: !2843)
!2848 = !DILocation(line: 177, column: 8, scope: !1465, inlinedAt: !2843)
!2849 = !DILocation(line: 177, column: 23, scope: !1465, inlinedAt: !2843)
!2850 = !DILocation(line: 177, column: 19, scope: !1465, inlinedAt: !2843)
!2851 = !DILocation(line: 178, column: 5, scope: !1465, inlinedAt: !2843)
!2852 = !DILocation(line: 179, column: 6, scope: !1449, inlinedAt: !2843)
!2853 = !DILocation(line: 179, column: 17, scope: !1449, inlinedAt: !2843)
!2854 = !DILocation(line: 180, column: 6, scope: !1449, inlinedAt: !2843)
!2855 = !DILocation(line: 180, column: 18, scope: !1449, inlinedAt: !2843)
!2856 = !DILocation(line: 1023, column: 10, scope: !2824, inlinedAt: !2834)
!2857 = !DILocation(line: 1024, column: 1, scope: !2824, inlinedAt: !2834)
!2858 = !DILocation(line: 1012, column: 3, scope: !2811)
!2859 = !DILocation(line: 1017, column: 28, scope: !2824)
!2860 = !DILocation(line: 1017, column: 43, scope: !2824)
!2861 = !DILocation(line: 1018, column: 36, scope: !2824)
!2862 = !DILocation(line: 1019, column: 36, scope: !2824)
!2863 = !DILocation(line: 1019, column: 48, scope: !2824)
!2864 = !DILocation(line: 1021, column: 3, scope: !2824)
!2865 = !DILocation(line: 1021, column: 30, scope: !2824)
!2866 = !DILocation(line: 1021, column: 26, scope: !2824)
!2867 = !DILocation(line: 171, column: 45, scope: !1449, inlinedAt: !2868)
!2868 = distinct !DILocation(line: 1022, column: 3, scope: !2824)
!2869 = !DILocation(line: 172, column: 33, scope: !1449, inlinedAt: !2868)
!2870 = !DILocation(line: 172, column: 57, scope: !1449, inlinedAt: !2868)
!2871 = !DILocation(line: 176, column: 6, scope: !1449, inlinedAt: !2868)
!2872 = !DILocation(line: 176, column: 12, scope: !1449, inlinedAt: !2868)
!2873 = !DILocation(line: 177, column: 8, scope: !1465, inlinedAt: !2868)
!2874 = !DILocation(line: 177, column: 23, scope: !1465, inlinedAt: !2868)
!2875 = !DILocation(line: 177, column: 19, scope: !1465, inlinedAt: !2868)
!2876 = !DILocation(line: 178, column: 5, scope: !1465, inlinedAt: !2868)
!2877 = !DILocation(line: 179, column: 6, scope: !1449, inlinedAt: !2868)
!2878 = !DILocation(line: 179, column: 17, scope: !1449, inlinedAt: !2868)
!2879 = !DILocation(line: 180, column: 6, scope: !1449, inlinedAt: !2868)
!2880 = !DILocation(line: 180, column: 18, scope: !1449, inlinedAt: !2868)
!2881 = !DILocation(line: 1023, column: 10, scope: !2824)
!2882 = !DILocation(line: 1024, column: 1, scope: !2824)
!2883 = !DILocation(line: 1023, column: 3, scope: !2824)
!2884 = distinct !DISubprogram(name: "quotearg_custom", scope: !134, file: !134, line: 1027, type: !2885, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2887)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!28, !44, !44, !44}
!2887 = !{!2888, !2889, !2890}
!2888 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2884, file: !134, line: 1027, type: !44)
!2889 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2884, file: !134, line: 1027, type: !44)
!2890 = !DILocalVariable(name: "arg", arg: 3, scope: !2884, file: !134, line: 1028, type: !44)
!2891 = !DILocation(line: 1027, column: 30, scope: !2884)
!2892 = !DILocation(line: 1027, column: 54, scope: !2884)
!2893 = !DILocation(line: 1028, column: 30, scope: !2884)
!2894 = !DILocation(line: 1009, column: 24, scope: !2811, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 1030, column: 10, scope: !2884)
!2896 = !DILocation(line: 1009, column: 39, scope: !2811, inlinedAt: !2895)
!2897 = !DILocation(line: 1010, column: 32, scope: !2811, inlinedAt: !2895)
!2898 = !DILocation(line: 1010, column: 57, scope: !2811, inlinedAt: !2895)
!2899 = !DILocation(line: 1017, column: 28, scope: !2824, inlinedAt: !2900)
!2900 = distinct !DILocation(line: 1012, column: 10, scope: !2811, inlinedAt: !2895)
!2901 = !DILocation(line: 1017, column: 43, scope: !2824, inlinedAt: !2900)
!2902 = !DILocation(line: 1018, column: 36, scope: !2824, inlinedAt: !2900)
!2903 = !DILocation(line: 1019, column: 36, scope: !2824, inlinedAt: !2900)
!2904 = !DILocation(line: 1019, column: 48, scope: !2824, inlinedAt: !2900)
!2905 = !DILocation(line: 1021, column: 3, scope: !2824, inlinedAt: !2900)
!2906 = !DILocation(line: 1021, column: 30, scope: !2824, inlinedAt: !2900)
!2907 = !DILocation(line: 1021, column: 26, scope: !2824, inlinedAt: !2900)
!2908 = !DILocation(line: 171, column: 45, scope: !1449, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 1022, column: 3, scope: !2824, inlinedAt: !2900)
!2910 = !DILocation(line: 172, column: 33, scope: !1449, inlinedAt: !2909)
!2911 = !DILocation(line: 172, column: 57, scope: !1449, inlinedAt: !2909)
!2912 = !DILocation(line: 176, column: 6, scope: !1449, inlinedAt: !2909)
!2913 = !DILocation(line: 176, column: 12, scope: !1449, inlinedAt: !2909)
!2914 = !DILocation(line: 177, column: 8, scope: !1465, inlinedAt: !2909)
!2915 = !DILocation(line: 177, column: 23, scope: !1465, inlinedAt: !2909)
!2916 = !DILocation(line: 177, column: 19, scope: !1465, inlinedAt: !2909)
!2917 = !DILocation(line: 178, column: 5, scope: !1465, inlinedAt: !2909)
!2918 = !DILocation(line: 179, column: 6, scope: !1449, inlinedAt: !2909)
!2919 = !DILocation(line: 179, column: 17, scope: !1449, inlinedAt: !2909)
!2920 = !DILocation(line: 180, column: 6, scope: !1449, inlinedAt: !2909)
!2921 = !DILocation(line: 180, column: 18, scope: !1449, inlinedAt: !2909)
!2922 = !DILocation(line: 1023, column: 10, scope: !2824, inlinedAt: !2900)
!2923 = !DILocation(line: 1024, column: 1, scope: !2824, inlinedAt: !2900)
!2924 = !DILocation(line: 1030, column: 3, scope: !2884)
!2925 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !134, file: !134, line: 1034, type: !2926, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2928)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!28, !44, !44, !44, !129}
!2928 = !{!2929, !2930, !2931, !2932}
!2929 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2925, file: !134, line: 1034, type: !44)
!2930 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2925, file: !134, line: 1034, type: !44)
!2931 = !DILocalVariable(name: "arg", arg: 3, scope: !2925, file: !134, line: 1035, type: !44)
!2932 = !DILocalVariable(name: "argsize", arg: 4, scope: !2925, file: !134, line: 1035, type: !129)
!2933 = !DILocation(line: 1034, column: 34, scope: !2925)
!2934 = !DILocation(line: 1034, column: 58, scope: !2925)
!2935 = !DILocation(line: 1035, column: 34, scope: !2925)
!2936 = !DILocation(line: 1035, column: 46, scope: !2925)
!2937 = !DILocation(line: 1017, column: 28, scope: !2824, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 1037, column: 10, scope: !2925)
!2939 = !DILocation(line: 1017, column: 43, scope: !2824, inlinedAt: !2938)
!2940 = !DILocation(line: 1018, column: 36, scope: !2824, inlinedAt: !2938)
!2941 = !DILocation(line: 1019, column: 36, scope: !2824, inlinedAt: !2938)
!2942 = !DILocation(line: 1019, column: 48, scope: !2824, inlinedAt: !2938)
!2943 = !DILocation(line: 1021, column: 3, scope: !2824, inlinedAt: !2938)
!2944 = !DILocation(line: 1021, column: 30, scope: !2824, inlinedAt: !2938)
!2945 = !DILocation(line: 1021, column: 26, scope: !2824, inlinedAt: !2938)
!2946 = !DILocation(line: 171, column: 45, scope: !1449, inlinedAt: !2947)
!2947 = distinct !DILocation(line: 1022, column: 3, scope: !2824, inlinedAt: !2938)
!2948 = !DILocation(line: 172, column: 33, scope: !1449, inlinedAt: !2947)
!2949 = !DILocation(line: 172, column: 57, scope: !1449, inlinedAt: !2947)
!2950 = !DILocation(line: 176, column: 6, scope: !1449, inlinedAt: !2947)
!2951 = !DILocation(line: 176, column: 12, scope: !1449, inlinedAt: !2947)
!2952 = !DILocation(line: 177, column: 8, scope: !1465, inlinedAt: !2947)
!2953 = !DILocation(line: 177, column: 23, scope: !1465, inlinedAt: !2947)
!2954 = !DILocation(line: 177, column: 19, scope: !1465, inlinedAt: !2947)
!2955 = !DILocation(line: 178, column: 5, scope: !1465, inlinedAt: !2947)
!2956 = !DILocation(line: 179, column: 6, scope: !1449, inlinedAt: !2947)
!2957 = !DILocation(line: 179, column: 17, scope: !1449, inlinedAt: !2947)
!2958 = !DILocation(line: 180, column: 6, scope: !1449, inlinedAt: !2947)
!2959 = !DILocation(line: 180, column: 18, scope: !1449, inlinedAt: !2947)
!2960 = !DILocation(line: 1023, column: 10, scope: !2824, inlinedAt: !2938)
!2961 = !DILocation(line: 1024, column: 1, scope: !2824, inlinedAt: !2938)
!2962 = !DILocation(line: 1037, column: 3, scope: !2925)
!2963 = distinct !DISubprogram(name: "quote_n_mem", scope: !134, file: !134, line: 1052, type: !2964, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2966)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!44, !67, !44, !129}
!2966 = !{!2967, !2968, !2969}
!2967 = !DILocalVariable(name: "n", arg: 1, scope: !2963, file: !134, line: 1052, type: !67)
!2968 = !DILocalVariable(name: "arg", arg: 2, scope: !2963, file: !134, line: 1052, type: !44)
!2969 = !DILocalVariable(name: "argsize", arg: 3, scope: !2963, file: !134, line: 1052, type: !129)
!2970 = !DILocation(line: 1052, column: 18, scope: !2963)
!2971 = !DILocation(line: 1052, column: 33, scope: !2963)
!2972 = !DILocation(line: 1052, column: 45, scope: !2963)
!2973 = !DILocation(line: 1054, column: 10, scope: !2963)
!2974 = !DILocation(line: 1054, column: 3, scope: !2963)
!2975 = distinct !DISubprogram(name: "quote_mem", scope: !134, file: !134, line: 1058, type: !2976, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2978)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!44, !44, !129}
!2978 = !{!2979, !2980}
!2979 = !DILocalVariable(name: "arg", arg: 1, scope: !2975, file: !134, line: 1058, type: !44)
!2980 = !DILocalVariable(name: "argsize", arg: 2, scope: !2975, file: !134, line: 1058, type: !129)
!2981 = !DILocation(line: 1058, column: 24, scope: !2975)
!2982 = !DILocation(line: 1058, column: 36, scope: !2975)
!2983 = !DILocation(line: 1052, column: 18, scope: !2963, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 1060, column: 10, scope: !2975)
!2985 = !DILocation(line: 1052, column: 33, scope: !2963, inlinedAt: !2984)
!2986 = !DILocation(line: 1052, column: 45, scope: !2963, inlinedAt: !2984)
!2987 = !DILocation(line: 1054, column: 10, scope: !2963, inlinedAt: !2984)
!2988 = !DILocation(line: 1060, column: 3, scope: !2975)
!2989 = distinct !DISubprogram(name: "quote_n", scope: !134, file: !134, line: 1064, type: !2990, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2992)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!44, !67, !44}
!2992 = !{!2993, !2994}
!2993 = !DILocalVariable(name: "n", arg: 1, scope: !2989, file: !134, line: 1064, type: !67)
!2994 = !DILocalVariable(name: "arg", arg: 2, scope: !2989, file: !134, line: 1064, type: !44)
!2995 = !DILocation(line: 1064, column: 14, scope: !2989)
!2996 = !DILocation(line: 1064, column: 29, scope: !2989)
!2997 = !DILocation(line: 1052, column: 18, scope: !2963, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 1066, column: 10, scope: !2989)
!2999 = !DILocation(line: 1052, column: 33, scope: !2963, inlinedAt: !2998)
!3000 = !DILocation(line: 1052, column: 45, scope: !2963, inlinedAt: !2998)
!3001 = !DILocation(line: 1054, column: 10, scope: !2963, inlinedAt: !2998)
!3002 = !DILocation(line: 1066, column: 3, scope: !2989)
!3003 = distinct !DISubprogram(name: "quote", scope: !134, file: !134, line: 1070, type: !3004, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !3006)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!44, !44}
!3006 = !{!3007}
!3007 = !DILocalVariable(name: "arg", arg: 1, scope: !3003, file: !134, line: 1070, type: !44)
!3008 = !DILocation(line: 1070, column: 20, scope: !3003)
!3009 = !DILocation(line: 1064, column: 14, scope: !2989, inlinedAt: !3010)
!3010 = distinct !DILocation(line: 1072, column: 10, scope: !3003)
!3011 = !DILocation(line: 1064, column: 29, scope: !2989, inlinedAt: !3010)
!3012 = !DILocation(line: 1052, column: 18, scope: !2963, inlinedAt: !3013)
!3013 = distinct !DILocation(line: 1066, column: 10, scope: !2989, inlinedAt: !3010)
!3014 = !DILocation(line: 1052, column: 33, scope: !2963, inlinedAt: !3013)
!3015 = !DILocation(line: 1052, column: 45, scope: !2963, inlinedAt: !3013)
!3016 = !DILocation(line: 1054, column: 10, scope: !2963, inlinedAt: !3013)
!3017 = !DILocation(line: 1072, column: 3, scope: !3003)
!3018 = distinct !DISubprogram(name: "version_etc_arn", scope: !548, file: !548, line: 62, type: !3019, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3074)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{null, !3021, !44, !44, !44, !3073, !129}
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3023, line: 7, baseType: !3024)
!3023 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3025, line: 241, size: 1728, elements: !3026)
!3025 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3026 = !{!3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3047, !3048, !3049, !3050, !3051, !3052, !3054, !3058, !3061, !3063, !3064, !3065, !3066, !3067, !3068, !3069}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3024, file: !3025, line: 242, baseType: !67, size: 32)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3024, file: !3025, line: 247, baseType: !28, size: 64, offset: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3024, file: !3025, line: 248, baseType: !28, size: 64, offset: 128)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3024, file: !3025, line: 249, baseType: !28, size: 64, offset: 192)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3024, file: !3025, line: 250, baseType: !28, size: 64, offset: 256)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3024, file: !3025, line: 251, baseType: !28, size: 64, offset: 320)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3024, file: !3025, line: 252, baseType: !28, size: 64, offset: 384)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3024, file: !3025, line: 253, baseType: !28, size: 64, offset: 448)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3024, file: !3025, line: 254, baseType: !28, size: 64, offset: 512)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3024, file: !3025, line: 256, baseType: !28, size: 64, offset: 576)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3024, file: !3025, line: 257, baseType: !28, size: 64, offset: 640)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3024, file: !3025, line: 258, baseType: !28, size: 64, offset: 704)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3024, file: !3025, line: 260, baseType: !3040, size: 64, offset: 768)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3025, line: 156, size: 192, elements: !3042)
!3042 = !{!3043, !3044, !3046}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3041, file: !3025, line: 157, baseType: !3040, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3041, file: !3025, line: 158, baseType: !3045, size: 64, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3041, file: !3025, line: 162, baseType: !67, size: 32, offset: 128)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3024, file: !3025, line: 262, baseType: !3045, size: 64, offset: 832)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3024, file: !3025, line: 264, baseType: !67, size: 32, offset: 896)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3024, file: !3025, line: 268, baseType: !67, size: 32, offset: 928)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3024, file: !3025, line: 270, baseType: !1170, size: 64, offset: 960)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3024, file: !3025, line: 274, baseType: !128, size: 16, offset: 1024)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3024, file: !3025, line: 275, baseType: !3053, size: 8, offset: 1040)
!3053 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3024, file: !3025, line: 276, baseType: !3055, size: 8, offset: 1048)
!3055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 8, elements: !3056)
!3056 = !{!3057}
!3057 = !DISubrange(count: 1)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3024, file: !3025, line: 280, baseType: !3059, size: 64, offset: 1088)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3025, line: 150, baseType: null)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3024, file: !3025, line: 289, baseType: !3062, size: 64, offset: 1152)
!3062 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !35, line: 141, baseType: !1171)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3024, file: !3025, line: 297, baseType: !30, size: 64, offset: 1216)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3024, file: !3025, line: 298, baseType: !30, size: 64, offset: 1280)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3024, file: !3025, line: 299, baseType: !30, size: 64, offset: 1344)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3024, file: !3025, line: 300, baseType: !30, size: 64, offset: 1408)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3024, file: !3025, line: 302, baseType: !129, size: 64, offset: 1472)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3024, file: !3025, line: 303, baseType: !67, size: 32, offset: 1536)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3024, file: !3025, line: 305, baseType: !3070, size: 160, offset: 1568)
!3070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 160, elements: !3071)
!3071 = !{!3072}
!3072 = !DISubrange(count: 20)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!3074 = !{!3075, !3076, !3077, !3078, !3079, !3080}
!3075 = !DILocalVariable(name: "stream", arg: 1, scope: !3018, file: !548, line: 62, type: !3021)
!3076 = !DILocalVariable(name: "command_name", arg: 2, scope: !3018, file: !548, line: 63, type: !44)
!3077 = !DILocalVariable(name: "package", arg: 3, scope: !3018, file: !548, line: 63, type: !44)
!3078 = !DILocalVariable(name: "version", arg: 4, scope: !3018, file: !548, line: 64, type: !44)
!3079 = !DILocalVariable(name: "authors", arg: 5, scope: !3018, file: !548, line: 65, type: !3073)
!3080 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3018, file: !548, line: 65, type: !129)
!3081 = !DILocation(line: 62, column: 24, scope: !3018)
!3082 = !DILocation(line: 63, column: 30, scope: !3018)
!3083 = !DILocation(line: 63, column: 56, scope: !3018)
!3084 = !DILocation(line: 64, column: 30, scope: !3018)
!3085 = !DILocation(line: 65, column: 39, scope: !3018)
!3086 = !DILocation(line: 65, column: 55, scope: !3018)
!3087 = !DILocation(line: 67, column: 7, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3018, file: !548, line: 67, column: 7)
!3089 = !DILocation(line: 67, column: 7, scope: !3018)
!3090 = !DILocation(line: 68, column: 5, scope: !3088)
!3091 = !DILocation(line: 70, column: 5, scope: !3088)
!3092 = !DILocation(line: 84, column: 3, scope: !3018)
!3093 = !DILocation(line: 86, column: 3, scope: !3018)
!3094 = !DILocation(line: 95, column: 3, scope: !3018)
!3095 = !DILocation(line: 99, column: 7, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3018, file: !548, line: 96, column: 5)
!3097 = !DILocation(line: 102, column: 7, scope: !3096)
!3098 = !DILocation(line: 103, column: 7, scope: !3096)
!3099 = !DILocation(line: 106, column: 7, scope: !3096)
!3100 = !DILocation(line: 107, column: 7, scope: !3096)
!3101 = !DILocation(line: 110, column: 7, scope: !3096)
!3102 = !DILocation(line: 112, column: 7, scope: !3096)
!3103 = !DILocation(line: 117, column: 7, scope: !3096)
!3104 = !DILocation(line: 119, column: 7, scope: !3096)
!3105 = !DILocation(line: 124, column: 7, scope: !3096)
!3106 = !DILocation(line: 126, column: 7, scope: !3096)
!3107 = !DILocation(line: 131, column: 7, scope: !3096)
!3108 = !DILocation(line: 134, column: 7, scope: !3096)
!3109 = !DILocation(line: 139, column: 7, scope: !3096)
!3110 = !DILocation(line: 142, column: 7, scope: !3096)
!3111 = !DILocation(line: 147, column: 7, scope: !3096)
!3112 = !DILocation(line: 151, column: 7, scope: !3096)
!3113 = !DILocation(line: 156, column: 7, scope: !3096)
!3114 = !DILocation(line: 160, column: 7, scope: !3096)
!3115 = !DILocation(line: 167, column: 7, scope: !3096)
!3116 = !DILocation(line: 171, column: 7, scope: !3096)
!3117 = !DILocation(line: 173, column: 1, scope: !3018)
!3118 = distinct !DISubprogram(name: "version_etc_ar", scope: !548, file: !548, line: 180, type: !3119, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3121)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{null, !3021, !44, !44, !44, !3073}
!3121 = !{!3122, !3123, !3124, !3125, !3126, !3127}
!3122 = !DILocalVariable(name: "stream", arg: 1, scope: !3118, file: !548, line: 180, type: !3021)
!3123 = !DILocalVariable(name: "command_name", arg: 2, scope: !3118, file: !548, line: 181, type: !44)
!3124 = !DILocalVariable(name: "package", arg: 3, scope: !3118, file: !548, line: 181, type: !44)
!3125 = !DILocalVariable(name: "version", arg: 4, scope: !3118, file: !548, line: 182, type: !44)
!3126 = !DILocalVariable(name: "authors", arg: 5, scope: !3118, file: !548, line: 182, type: !3073)
!3127 = !DILocalVariable(name: "n_authors", scope: !3118, file: !548, line: 184, type: !129)
!3128 = !DILocation(line: 180, column: 23, scope: !3118)
!3129 = !DILocation(line: 181, column: 29, scope: !3118)
!3130 = !DILocation(line: 181, column: 55, scope: !3118)
!3131 = !DILocation(line: 182, column: 29, scope: !3118)
!3132 = !DILocation(line: 182, column: 59, scope: !3118)
!3133 = !DILocation(line: 184, column: 10, scope: !3118)
!3134 = !DILocation(line: 186, column: 8, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3118, file: !548, line: 186, column: 3)
!3136 = !DILocation(line: 186, column: 23, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3135, file: !548, line: 186, column: 3)
!3138 = !DILocation(line: 186, column: 3, scope: !3135)
!3139 = !DILocation(line: 186, column: 52, scope: !3137)
!3140 = distinct !{!3140, !3138, !3141}
!3141 = !DILocation(line: 187, column: 5, scope: !3135)
!3142 = !DILocation(line: 188, column: 3, scope: !3118)
!3143 = !DILocation(line: 189, column: 1, scope: !3118)
!3144 = distinct !DISubprogram(name: "version_etc_va", scope: !548, file: !548, line: 196, type: !3145, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3154)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{null, !3021, !44, !44, !44, !3147}
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !545, line: 189, size: 192, elements: !3149)
!3149 = !{!3150, !3151, !3152, !3153}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3148, file: !545, line: 189, baseType: !31, size: 32)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3148, file: !545, line: 189, baseType: !31, size: 32, offset: 32)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3148, file: !545, line: 189, baseType: !30, size: 64, offset: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3148, file: !545, line: 189, baseType: !30, size: 64, offset: 128)
!3154 = !{!3155, !3156, !3157, !3158, !3159, !3160, !3161}
!3155 = !DILocalVariable(name: "stream", arg: 1, scope: !3144, file: !548, line: 196, type: !3021)
!3156 = !DILocalVariable(name: "command_name", arg: 2, scope: !3144, file: !548, line: 197, type: !44)
!3157 = !DILocalVariable(name: "package", arg: 3, scope: !3144, file: !548, line: 197, type: !44)
!3158 = !DILocalVariable(name: "version", arg: 4, scope: !3144, file: !548, line: 198, type: !44)
!3159 = !DILocalVariable(name: "authors", arg: 5, scope: !3144, file: !548, line: 198, type: !3147)
!3160 = !DILocalVariable(name: "n_authors", scope: !3144, file: !548, line: 200, type: !129)
!3161 = !DILocalVariable(name: "authtab", scope: !3144, file: !548, line: 201, type: !3162)
!3162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 640, elements: !137)
!3163 = !DILocation(line: 196, column: 23, scope: !3144)
!3164 = !DILocation(line: 197, column: 29, scope: !3144)
!3165 = !DILocation(line: 197, column: 55, scope: !3144)
!3166 = !DILocation(line: 198, column: 29, scope: !3144)
!3167 = !DILocation(line: 198, column: 46, scope: !3144)
!3168 = !DILocation(line: 201, column: 3, scope: !3144)
!3169 = !DILocation(line: 201, column: 15, scope: !3144)
!3170 = !DILocation(line: 200, column: 10, scope: !3144)
!3171 = !DILocation(line: 205, column: 35, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3173, file: !548, line: 203, column: 3)
!3173 = distinct !DILexicalBlock(scope: !3144, file: !548, line: 203, column: 3)
!3174 = !DILocation(line: 205, column: 14, scope: !3172)
!3175 = !DILocation(line: 205, column: 33, scope: !3172)
!3176 = !DILocation(line: 205, column: 67, scope: !3172)
!3177 = !DILocation(line: 203, column: 3, scope: !3173)
!3178 = !DILocation(line: 208, column: 3, scope: !3144)
!3179 = !DILocation(line: 210, column: 1, scope: !3144)
!3180 = distinct !DISubprogram(name: "version_etc", scope: !548, file: !548, line: 227, type: !3181, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3183)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{null, !3021, !44, !44, !44, null}
!3183 = !{!3184, !3185, !3186, !3187, !3188}
!3184 = !DILocalVariable(name: "stream", arg: 1, scope: !3180, file: !548, line: 227, type: !3021)
!3185 = !DILocalVariable(name: "command_name", arg: 2, scope: !3180, file: !548, line: 228, type: !44)
!3186 = !DILocalVariable(name: "package", arg: 3, scope: !3180, file: !548, line: 228, type: !44)
!3187 = !DILocalVariable(name: "version", arg: 4, scope: !3180, file: !548, line: 229, type: !44)
!3188 = !DILocalVariable(name: "authors", scope: !3180, file: !548, line: 231, type: !3189)
!3189 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3190, line: 46, baseType: !3191)
!3190 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3192, line: 48, baseType: !3193)
!3192 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !545, line: 231, baseType: !3194)
!3194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3148, size: 192, elements: !3056)
!3195 = !DILocation(line: 227, column: 20, scope: !3180)
!3196 = !DILocation(line: 228, column: 26, scope: !3180)
!3197 = !DILocation(line: 228, column: 52, scope: !3180)
!3198 = !DILocation(line: 229, column: 26, scope: !3180)
!3199 = !DILocation(line: 231, column: 3, scope: !3180)
!3200 = !DILocation(line: 231, column: 11, scope: !3180)
!3201 = !DILocation(line: 233, column: 3, scope: !3180)
!3202 = !DILocation(line: 234, column: 3, scope: !3180)
!3203 = !DILocation(line: 235, column: 3, scope: !3180)
!3204 = !DILocation(line: 236, column: 1, scope: !3180)
!3205 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !548, file: !548, line: 239, type: !616, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !77)
!3206 = !DILocation(line: 245, column: 3, scope: !3205)
!3207 = !DILocation(line: 251, column: 3, scope: !3205)
!3208 = !DILocation(line: 256, column: 3, scope: !3205)
!3209 = !DILocation(line: 258, column: 1, scope: !3205)
!3210 = distinct !DISubprogram(name: "xnmalloc", scope: !556, file: !556, line: 105, type: !1035, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !3211)
!3211 = !{!3212, !3213}
!3212 = !DILocalVariable(name: "n", arg: 1, scope: !3210, file: !556, line: 105, type: !129)
!3213 = !DILocalVariable(name: "s", arg: 2, scope: !3210, file: !556, line: 105, type: !129)
!3214 = !DILocation(line: 105, column: 18, scope: !3210)
!3215 = !DILocation(line: 105, column: 28, scope: !3210)
!3216 = !DILocation(line: 107, column: 7, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3210, file: !556, line: 107, column: 7)
!3218 = !DILocation(line: 107, column: 7, scope: !3210)
!3219 = !DILocation(line: 108, column: 5, scope: !3217)
!3220 = !DILocation(line: 109, column: 21, scope: !3210)
!3221 = !DILocalVariable(name: "n", arg: 1, scope: !3222, file: !3223, line: 39, type: !129)
!3222 = distinct !DISubprogram(name: "xmalloc", scope: !3223, file: !3223, line: 39, type: !3224, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !3226)
!3223 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!30, !129}
!3226 = !{!3221, !3227}
!3227 = !DILocalVariable(name: "p", scope: !3222, file: !3223, line: 41, type: !30)
!3228 = !DILocation(line: 39, column: 17, scope: !3222, inlinedAt: !3229)
!3229 = distinct !DILocation(line: 109, column: 10, scope: !3210)
!3230 = !DILocation(line: 41, column: 13, scope: !3222, inlinedAt: !3229)
!3231 = !DILocation(line: 41, column: 9, scope: !3222, inlinedAt: !3229)
!3232 = !DILocation(line: 42, column: 8, scope: !3233, inlinedAt: !3229)
!3233 = distinct !DILexicalBlock(scope: !3222, file: !3223, line: 42, column: 7)
!3234 = !DILocation(line: 42, column: 15, scope: !3233, inlinedAt: !3229)
!3235 = !DILocation(line: 42, column: 10, scope: !3233, inlinedAt: !3229)
!3236 = !DILocation(line: 43, column: 5, scope: !3233, inlinedAt: !3229)
!3237 = !DILocation(line: 109, column: 3, scope: !3210)
!3238 = !DILocation(line: 39, column: 17, scope: !3222)
!3239 = !DILocation(line: 41, column: 13, scope: !3222)
!3240 = !DILocation(line: 41, column: 9, scope: !3222)
!3241 = !DILocation(line: 42, column: 8, scope: !3233)
!3242 = !DILocation(line: 42, column: 15, scope: !3233)
!3243 = !DILocation(line: 42, column: 10, scope: !3233)
!3244 = !DILocation(line: 43, column: 5, scope: !3233)
!3245 = !DILocation(line: 44, column: 3, scope: !3222)
!3246 = distinct !DISubprogram(name: "xnrealloc", scope: !556, file: !556, line: 118, type: !3247, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !3249)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!30, !30, !129, !129}
!3249 = !{!3250, !3251, !3252}
!3250 = !DILocalVariable(name: "p", arg: 1, scope: !3246, file: !556, line: 118, type: !30)
!3251 = !DILocalVariable(name: "n", arg: 2, scope: !3246, file: !556, line: 118, type: !129)
!3252 = !DILocalVariable(name: "s", arg: 3, scope: !3246, file: !556, line: 118, type: !129)
!3253 = !DILocation(line: 118, column: 18, scope: !3246)
!3254 = !DILocation(line: 118, column: 28, scope: !3246)
!3255 = !DILocation(line: 118, column: 38, scope: !3246)
!3256 = !DILocation(line: 120, column: 7, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3246, file: !556, line: 120, column: 7)
!3258 = !DILocation(line: 120, column: 7, scope: !3246)
!3259 = !DILocation(line: 121, column: 5, scope: !3257)
!3260 = !DILocation(line: 122, column: 25, scope: !3246)
!3261 = !DILocalVariable(name: "p", arg: 1, scope: !3262, file: !3223, line: 51, type: !30)
!3262 = distinct !DISubprogram(name: "xrealloc", scope: !3223, file: !3223, line: 51, type: !3263, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !3265)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!30, !30, !129}
!3265 = !{!3261, !3266}
!3266 = !DILocalVariable(name: "n", arg: 2, scope: !3262, file: !3223, line: 51, type: !129)
!3267 = !DILocation(line: 51, column: 17, scope: !3262, inlinedAt: !3268)
!3268 = distinct !DILocation(line: 122, column: 10, scope: !3246)
!3269 = !DILocation(line: 51, column: 27, scope: !3262, inlinedAt: !3268)
!3270 = !DILocation(line: 53, column: 8, scope: !3271, inlinedAt: !3268)
!3271 = distinct !DILexicalBlock(scope: !3262, file: !3223, line: 53, column: 7)
!3272 = !DILocation(line: 53, column: 13, scope: !3271, inlinedAt: !3268)
!3273 = !DILocation(line: 53, column: 10, scope: !3271, inlinedAt: !3268)
!3274 = !DILocation(line: 57, column: 7, scope: !3275, inlinedAt: !3268)
!3275 = distinct !DILexicalBlock(scope: !3271, file: !3223, line: 54, column: 5)
!3276 = !DILocation(line: 58, column: 7, scope: !3275, inlinedAt: !3268)
!3277 = !DILocation(line: 61, column: 7, scope: !3262, inlinedAt: !3268)
!3278 = !DILocation(line: 62, column: 8, scope: !3279, inlinedAt: !3268)
!3279 = distinct !DILexicalBlock(scope: !3262, file: !3223, line: 62, column: 7)
!3280 = !DILocation(line: 62, column: 13, scope: !3279, inlinedAt: !3268)
!3281 = !DILocation(line: 62, column: 10, scope: !3279, inlinedAt: !3268)
!3282 = !DILocation(line: 63, column: 5, scope: !3279, inlinedAt: !3268)
!3283 = !DILocation(line: 122, column: 3, scope: !3246)
!3284 = !DILocation(line: 51, column: 17, scope: !3262)
!3285 = !DILocation(line: 51, column: 27, scope: !3262)
!3286 = !DILocation(line: 53, column: 8, scope: !3271)
!3287 = !DILocation(line: 53, column: 13, scope: !3271)
!3288 = !DILocation(line: 53, column: 10, scope: !3271)
!3289 = !DILocation(line: 57, column: 7, scope: !3275)
!3290 = !DILocation(line: 58, column: 7, scope: !3275)
!3291 = !DILocation(line: 61, column: 7, scope: !3262)
!3292 = !DILocation(line: 62, column: 8, scope: !3279)
!3293 = !DILocation(line: 62, column: 13, scope: !3279)
!3294 = !DILocation(line: 62, column: 10, scope: !3279)
!3295 = !DILocation(line: 63, column: 5, scope: !3279)
!3296 = !DILocation(line: 65, column: 1, scope: !3262)
!3297 = !DILocation(line: 180, column: 19, scope: !557)
!3298 = !DILocation(line: 180, column: 30, scope: !557)
!3299 = !DILocation(line: 180, column: 41, scope: !557)
!3300 = !DILocation(line: 182, column: 14, scope: !557)
!3301 = !DILocation(line: 182, column: 10, scope: !557)
!3302 = !DILocation(line: 184, column: 9, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !557, file: !556, line: 184, column: 7)
!3304 = !DILocation(line: 184, column: 7, scope: !557)
!3305 = !DILocation(line: 186, column: 13, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3307, file: !556, line: 186, column: 11)
!3307 = distinct !DILexicalBlock(scope: !3303, file: !556, line: 185, column: 5)
!3308 = !DILocation(line: 186, column: 11, scope: !3307)
!3309 = !DILocation(line: 194, column: 30, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3306, file: !556, line: 187, column: 9)
!3311 = !DILocation(line: 195, column: 16, scope: !3310)
!3312 = !DILocation(line: 195, column: 13, scope: !3310)
!3313 = !DILocation(line: 196, column: 9, scope: !3310)
!3314 = !DILocation(line: 204, column: 69, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3316, file: !556, line: 204, column: 11)
!3316 = distinct !DILexicalBlock(scope: !3303, file: !556, line: 199, column: 5)
!3317 = !DILocation(line: 205, column: 11, scope: !3315)
!3318 = !DILocation(line: 204, column: 11, scope: !3316)
!3319 = !DILocation(line: 206, column: 9, scope: !3315)
!3320 = !DILocation(line: 210, column: 7, scope: !557)
!3321 = !DILocation(line: 211, column: 25, scope: !557)
!3322 = !DILocation(line: 51, column: 17, scope: !3262, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 211, column: 10, scope: !557)
!3324 = !DILocation(line: 51, column: 27, scope: !3262, inlinedAt: !3323)
!3325 = !DILocation(line: 53, column: 10, scope: !3271, inlinedAt: !3323)
!3326 = !DILocation(line: 207, column: 14, scope: !3316)
!3327 = !DILocation(line: 207, column: 18, scope: !3316)
!3328 = !DILocation(line: 207, column: 9, scope: !3316)
!3329 = !DILocation(line: 53, column: 8, scope: !3271, inlinedAt: !3323)
!3330 = !DILocation(line: 57, column: 7, scope: !3275, inlinedAt: !3323)
!3331 = !DILocation(line: 58, column: 7, scope: !3275, inlinedAt: !3323)
!3332 = !DILocation(line: 61, column: 7, scope: !3262, inlinedAt: !3323)
!3333 = !DILocation(line: 62, column: 8, scope: !3279, inlinedAt: !3323)
!3334 = !DILocation(line: 62, column: 13, scope: !3279, inlinedAt: !3323)
!3335 = !DILocation(line: 62, column: 10, scope: !3279, inlinedAt: !3323)
!3336 = !DILocation(line: 63, column: 5, scope: !3279, inlinedAt: !3323)
!3337 = !DILocation(line: 211, column: 3, scope: !557)
!3338 = distinct !DISubprogram(name: "xcharalloc", scope: !556, file: !556, line: 220, type: !2297, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !3339)
!3339 = !{!3340}
!3340 = !DILocalVariable(name: "n", arg: 1, scope: !3338, file: !556, line: 220, type: !129)
!3341 = !DILocation(line: 220, column: 20, scope: !3338)
!3342 = !DILocation(line: 39, column: 17, scope: !3222, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 222, column: 10, scope: !3338)
!3344 = !DILocation(line: 41, column: 13, scope: !3222, inlinedAt: !3343)
!3345 = !DILocation(line: 41, column: 9, scope: !3222, inlinedAt: !3343)
!3346 = !DILocation(line: 42, column: 8, scope: !3233, inlinedAt: !3343)
!3347 = !DILocation(line: 42, column: 15, scope: !3233, inlinedAt: !3343)
!3348 = !DILocation(line: 42, column: 10, scope: !3233, inlinedAt: !3343)
!3349 = !DILocation(line: 43, column: 5, scope: !3233, inlinedAt: !3343)
!3350 = !DILocation(line: 222, column: 3, scope: !3338)
!3351 = distinct !DISubprogram(name: "x2realloc", scope: !3223, file: !3223, line: 74, type: !3352, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !3354)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!30, !30, !560}
!3354 = !{!3355, !3356}
!3355 = !DILocalVariable(name: "p", arg: 1, scope: !3351, file: !3223, line: 74, type: !30)
!3356 = !DILocalVariable(name: "pn", arg: 2, scope: !3351, file: !3223, line: 74, type: !560)
!3357 = !DILocation(line: 74, column: 18, scope: !3351)
!3358 = !DILocation(line: 74, column: 29, scope: !3351)
!3359 = !DILocation(line: 180, column: 19, scope: !557, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 76, column: 10, scope: !3351)
!3361 = !DILocation(line: 180, column: 30, scope: !557, inlinedAt: !3360)
!3362 = !DILocation(line: 180, column: 41, scope: !557, inlinedAt: !3360)
!3363 = !DILocation(line: 182, column: 14, scope: !557, inlinedAt: !3360)
!3364 = !DILocation(line: 182, column: 10, scope: !557, inlinedAt: !3360)
!3365 = !DILocation(line: 184, column: 9, scope: !3303, inlinedAt: !3360)
!3366 = !DILocation(line: 184, column: 7, scope: !557, inlinedAt: !3360)
!3367 = !DILocation(line: 186, column: 13, scope: !3306, inlinedAt: !3360)
!3368 = !DILocation(line: 186, column: 11, scope: !3307, inlinedAt: !3360)
!3369 = !DILocation(line: 210, column: 7, scope: !557, inlinedAt: !3360)
!3370 = !DILocation(line: 51, column: 17, scope: !3262, inlinedAt: !3371)
!3371 = distinct !DILocation(line: 211, column: 10, scope: !557, inlinedAt: !3360)
!3372 = !DILocation(line: 51, column: 27, scope: !3262, inlinedAt: !3371)
!3373 = !DILocation(line: 53, column: 10, scope: !3271, inlinedAt: !3371)
!3374 = !DILocation(line: 205, column: 11, scope: !3315, inlinedAt: !3360)
!3375 = !DILocation(line: 204, column: 11, scope: !3316, inlinedAt: !3360)
!3376 = !DILocation(line: 206, column: 9, scope: !3315, inlinedAt: !3360)
!3377 = !DILocation(line: 207, column: 14, scope: !3316, inlinedAt: !3360)
!3378 = !DILocation(line: 207, column: 18, scope: !3316, inlinedAt: !3360)
!3379 = !DILocation(line: 207, column: 9, scope: !3316, inlinedAt: !3360)
!3380 = !DILocation(line: 53, column: 8, scope: !3271, inlinedAt: !3371)
!3381 = !DILocation(line: 57, column: 7, scope: !3275, inlinedAt: !3371)
!3382 = !DILocation(line: 58, column: 7, scope: !3275, inlinedAt: !3371)
!3383 = !DILocation(line: 61, column: 7, scope: !3262, inlinedAt: !3371)
!3384 = !DILocation(line: 62, column: 8, scope: !3279, inlinedAt: !3371)
!3385 = !DILocation(line: 62, column: 13, scope: !3279, inlinedAt: !3371)
!3386 = !DILocation(line: 62, column: 10, scope: !3279, inlinedAt: !3371)
!3387 = !DILocation(line: 63, column: 5, scope: !3279, inlinedAt: !3371)
!3388 = !DILocation(line: 76, column: 3, scope: !3351)
!3389 = distinct !DISubprogram(name: "xzalloc", scope: !3223, file: !3223, line: 84, type: !3224, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !3390)
!3390 = !{!3391}
!3391 = !DILocalVariable(name: "s", arg: 1, scope: !3389, file: !3223, line: 84, type: !129)
!3392 = !DILocation(line: 84, column: 17, scope: !3389)
!3393 = !DILocation(line: 39, column: 17, scope: !3222, inlinedAt: !3394)
!3394 = distinct !DILocation(line: 86, column: 18, scope: !3389)
!3395 = !DILocation(line: 41, column: 13, scope: !3222, inlinedAt: !3394)
!3396 = !DILocation(line: 41, column: 9, scope: !3222, inlinedAt: !3394)
!3397 = !DILocation(line: 42, column: 8, scope: !3233, inlinedAt: !3394)
!3398 = !DILocation(line: 42, column: 15, scope: !3233, inlinedAt: !3394)
!3399 = !DILocation(line: 42, column: 10, scope: !3233, inlinedAt: !3394)
!3400 = !DILocation(line: 43, column: 5, scope: !3233, inlinedAt: !3394)
!3401 = !DILocation(line: 86, column: 10, scope: !3389)
!3402 = !DILocation(line: 86, column: 3, scope: !3389)
!3403 = distinct !DISubprogram(name: "xcalloc", scope: !3223, file: !3223, line: 93, type: !1035, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !3404)
!3404 = !{!3405, !3406, !3407}
!3405 = !DILocalVariable(name: "n", arg: 1, scope: !3403, file: !3223, line: 93, type: !129)
!3406 = !DILocalVariable(name: "s", arg: 2, scope: !3403, file: !3223, line: 93, type: !129)
!3407 = !DILocalVariable(name: "p", scope: !3403, file: !3223, line: 95, type: !30)
!3408 = !DILocation(line: 93, column: 17, scope: !3403)
!3409 = !DILocation(line: 93, column: 27, scope: !3403)
!3410 = !DILocation(line: 100, column: 7, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3403, file: !3223, line: 100, column: 7)
!3412 = !DILocation(line: 101, column: 7, scope: !3411)
!3413 = !DILocation(line: 101, column: 18, scope: !3411)
!3414 = !DILocation(line: 95, column: 9, scope: !3403)
!3415 = !DILocation(line: 101, column: 16, scope: !3411)
!3416 = !DILocation(line: 100, column: 7, scope: !3403)
!3417 = !DILocation(line: 102, column: 5, scope: !3411)
!3418 = !DILocation(line: 103, column: 3, scope: !3403)
!3419 = distinct !DISubprogram(name: "xmemdup", scope: !3223, file: !3223, line: 111, type: !3420, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !3424)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!30, !3422, !129}
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3424 = !{!3425, !3426}
!3425 = !DILocalVariable(name: "p", arg: 1, scope: !3419, file: !3223, line: 111, type: !3422)
!3426 = !DILocalVariable(name: "s", arg: 2, scope: !3419, file: !3223, line: 111, type: !129)
!3427 = !DILocation(line: 111, column: 22, scope: !3419)
!3428 = !DILocation(line: 111, column: 32, scope: !3419)
!3429 = !DILocation(line: 39, column: 17, scope: !3222, inlinedAt: !3430)
!3430 = distinct !DILocation(line: 113, column: 18, scope: !3419)
!3431 = !DILocation(line: 41, column: 13, scope: !3222, inlinedAt: !3430)
!3432 = !DILocation(line: 41, column: 9, scope: !3222, inlinedAt: !3430)
!3433 = !DILocation(line: 42, column: 8, scope: !3233, inlinedAt: !3430)
!3434 = !DILocation(line: 42, column: 15, scope: !3233, inlinedAt: !3430)
!3435 = !DILocation(line: 42, column: 10, scope: !3233, inlinedAt: !3430)
!3436 = !DILocation(line: 43, column: 5, scope: !3233, inlinedAt: !3430)
!3437 = !DILocation(line: 113, column: 10, scope: !3419)
!3438 = !DILocation(line: 113, column: 3, scope: !3419)
!3439 = distinct !DISubprogram(name: "xstrdup", scope: !3223, file: !3223, line: 119, type: !2497, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !3440)
!3440 = !{!3441}
!3441 = !DILocalVariable(name: "string", arg: 1, scope: !3439, file: !3223, line: 119, type: !44)
!3442 = !DILocation(line: 119, column: 22, scope: !3439)
!3443 = !DILocation(line: 121, column: 27, scope: !3439)
!3444 = !DILocation(line: 121, column: 43, scope: !3439)
!3445 = !DILocation(line: 111, column: 22, scope: !3419, inlinedAt: !3446)
!3446 = distinct !DILocation(line: 121, column: 10, scope: !3439)
!3447 = !DILocation(line: 111, column: 32, scope: !3419, inlinedAt: !3446)
!3448 = !DILocation(line: 39, column: 17, scope: !3222, inlinedAt: !3449)
!3449 = distinct !DILocation(line: 113, column: 18, scope: !3419, inlinedAt: !3446)
!3450 = !DILocation(line: 41, column: 13, scope: !3222, inlinedAt: !3449)
!3451 = !DILocation(line: 41, column: 9, scope: !3222, inlinedAt: !3449)
!3452 = !DILocation(line: 42, column: 8, scope: !3233, inlinedAt: !3449)
!3453 = !DILocation(line: 42, column: 15, scope: !3233, inlinedAt: !3449)
!3454 = !DILocation(line: 42, column: 10, scope: !3233, inlinedAt: !3449)
!3455 = !DILocation(line: 43, column: 5, scope: !3233, inlinedAt: !3449)
!3456 = !DILocation(line: 113, column: 10, scope: !3419, inlinedAt: !3446)
!3457 = !DILocation(line: 121, column: 3, scope: !3439)
!3458 = distinct !DISubprogram(name: "xalloc_die", scope: !3459, file: !3459, line: 32, type: !616, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !569, variables: !77)
!3459 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3460 = !DILocation(line: 34, column: 10, scope: !3458)
!3461 = !DILocation(line: 34, column: 33, scope: !3458)
!3462 = !DILocation(line: 34, column: 3, scope: !3458)
!3463 = !DILocation(line: 40, column: 3, scope: !3458)
!3464 = distinct !DISubprogram(name: "xstrtoumax", scope: !3465, file: !3465, line: 88, type: !3466, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !571, variables: !3470)
!3465 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!3468, !44, !645, !67, !3469, !44}
!3468 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !6, line: 39, baseType: !5)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!3470 = !{!3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3483, !3484, !3487, !3488}
!3471 = !DILocalVariable(name: "s", arg: 1, scope: !3464, file: !3465, line: 88, type: !44)
!3472 = !DILocalVariable(name: "ptr", arg: 2, scope: !3464, file: !3465, line: 88, type: !645)
!3473 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3464, file: !3465, line: 88, type: !67)
!3474 = !DILocalVariable(name: "val", arg: 4, scope: !3464, file: !3465, line: 89, type: !3469)
!3475 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3464, file: !3465, line: 89, type: !44)
!3476 = !DILocalVariable(name: "t_ptr", scope: !3464, file: !3465, line: 91, type: !28)
!3477 = !DILocalVariable(name: "p", scope: !3464, file: !3465, line: 92, type: !645)
!3478 = !DILocalVariable(name: "tmp", scope: !3464, file: !3465, line: 93, type: !673)
!3479 = !DILocalVariable(name: "err", scope: !3464, file: !3465, line: 94, type: !3468)
!3480 = !DILocalVariable(name: "q", scope: !3481, file: !3465, line: 104, type: !44)
!3481 = distinct !DILexicalBlock(scope: !3482, file: !3465, line: 103, column: 5)
!3482 = distinct !DILexicalBlock(scope: !3464, file: !3465, line: 102, column: 7)
!3483 = !DILocalVariable(name: "ch", scope: !3481, file: !3465, line: 105, type: !527)
!3484 = !DILocalVariable(name: "base", scope: !3485, file: !3465, line: 141, type: !67)
!3485 = distinct !DILexicalBlock(scope: !3486, file: !3465, line: 140, column: 5)
!3486 = distinct !DILexicalBlock(scope: !3464, file: !3465, line: 139, column: 7)
!3487 = !DILocalVariable(name: "suffixes", scope: !3485, file: !3465, line: 142, type: !67)
!3488 = !DILocalVariable(name: "overflow", scope: !3485, file: !3465, line: 143, type: !3468)
!3489 = !DILocation(line: 88, column: 24, scope: !3464)
!3490 = !DILocation(line: 88, column: 34, scope: !3464)
!3491 = !DILocation(line: 88, column: 43, scope: !3464)
!3492 = !DILocation(line: 89, column: 24, scope: !3464)
!3493 = !DILocation(line: 89, column: 41, scope: !3464)
!3494 = !DILocation(line: 91, column: 3, scope: !3464)
!3495 = !DILocation(line: 94, column: 16, scope: !3464)
!3496 = !DILocation(line: 96, column: 3, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3498, file: !3465, line: 96, column: 3)
!3498 = distinct !DILexicalBlock(scope: !3464, file: !3465, line: 96, column: 3)
!3499 = !DILocation(line: 98, column: 8, scope: !3464)
!3500 = !DILocation(line: 92, column: 10, scope: !3464)
!3501 = !DILocation(line: 100, column: 3, scope: !3464)
!3502 = !DILocation(line: 100, column: 9, scope: !3464)
!3503 = !DILocation(line: 104, column: 19, scope: !3481)
!3504 = !DIExpression(DW_OP_deref)
!3505 = !DILocation(line: 105, column: 21, scope: !3481)
!3506 = !DILocation(line: 106, column: 14, scope: !3481)
!3507 = !DILocation(line: 106, column: 7, scope: !3481)
!3508 = !DILocation(line: 107, column: 15, scope: !3481)
!3509 = distinct !{!3509, !3507, !3510}
!3510 = !DILocation(line: 107, column: 17, scope: !3481)
!3511 = !DILocation(line: 108, column: 14, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3481, file: !3465, line: 108, column: 11)
!3513 = !DILocalVariable(name: "nptr", arg: 1, scope: !3514, file: !3515, line: 336, type: !3518)
!3514 = distinct !DISubprogram(name: "strtoumax", scope: !3515, file: !3515, line: 336, type: !3516, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !571, variables: !3520)
!3515 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!673, !3518, !3519, !67}
!3518 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !44)
!3519 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !645)
!3520 = !{!3513, !3521, !3522}
!3521 = !DILocalVariable(name: "endptr", arg: 2, scope: !3514, file: !3515, line: 336, type: !3519)
!3522 = !DILocalVariable(name: "base", arg: 3, scope: !3514, file: !3515, line: 336, type: !67)
!3523 = !DILocation(line: 336, column: 1, scope: !3514, inlinedAt: !3524)
!3524 = distinct !DILocation(line: 112, column: 9, scope: !3464)
!3525 = !DILocation(line: 339, column: 10, scope: !3514, inlinedAt: !3524)
!3526 = !DILocation(line: 93, column: 14, scope: !3464)
!3527 = !DILocation(line: 114, column: 7, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3464, file: !3465, line: 114, column: 7)
!3529 = !DILocation(line: 114, column: 10, scope: !3528)
!3530 = !DILocation(line: 114, column: 7, scope: !3464)
!3531 = !DILocation(line: 118, column: 11, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3533, file: !3465, line: 118, column: 11)
!3533 = distinct !DILexicalBlock(scope: !3528, file: !3465, line: 115, column: 5)
!3534 = !DILocation(line: 118, column: 26, scope: !3532)
!3535 = !DILocation(line: 118, column: 29, scope: !3532)
!3536 = !DILocation(line: 118, column: 33, scope: !3532)
!3537 = !DILocation(line: 118, column: 36, scope: !3532)
!3538 = !DILocation(line: 118, column: 11, scope: !3533)
!3539 = !DILocation(line: 123, column: 12, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3528, file: !3465, line: 123, column: 12)
!3541 = !DILocation(line: 123, column: 12, scope: !3528)
!3542 = !DILocation(line: 128, column: 5, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3540, file: !3465, line: 124, column: 5)
!3544 = !DILocation(line: 133, column: 8, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3464, file: !3465, line: 133, column: 7)
!3546 = !DILocation(line: 133, column: 7, scope: !3464)
!3547 = !DILocation(line: 135, column: 12, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3545, file: !3465, line: 134, column: 5)
!3549 = !DILocation(line: 136, column: 7, scope: !3548)
!3550 = !DILocation(line: 139, column: 7, scope: !3486)
!3551 = !DILocation(line: 139, column: 11, scope: !3486)
!3552 = !DILocation(line: 139, column: 7, scope: !3464)
!3553 = !DILocation(line: 141, column: 11, scope: !3485)
!3554 = !DILocation(line: 142, column: 11, scope: !3485)
!3555 = !DILocation(line: 145, column: 12, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3485, file: !3465, line: 145, column: 11)
!3557 = !DILocation(line: 145, column: 11, scope: !3485)
!3558 = !DILocation(line: 147, column: 16, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3556, file: !3465, line: 146, column: 9)
!3560 = !DILocation(line: 148, column: 22, scope: !3559)
!3561 = !DILocation(line: 148, column: 11, scope: !3559)
!3562 = !DILocation(line: 151, column: 7, scope: !3485)
!3563 = !DILocation(line: 163, column: 15, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3565, file: !3465, line: 163, column: 15)
!3565 = distinct !DILexicalBlock(scope: !3485, file: !3465, line: 152, column: 9)
!3566 = !DILocation(line: 163, column: 15, scope: !3565)
!3567 = !DILocation(line: 164, column: 21, scope: !3564)
!3568 = !DILocation(line: 164, column: 13, scope: !3564)
!3569 = !DILocation(line: 167, column: 21, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3571, file: !3465, line: 167, column: 21)
!3571 = distinct !DILexicalBlock(scope: !3564, file: !3465, line: 165, column: 15)
!3572 = !DILocation(line: 167, column: 29, scope: !3570)
!3573 = !DILocation(line: 167, column: 21, scope: !3571)
!3574 = !DILocation(line: 175, column: 17, scope: !3571)
!3575 = !DILocation(line: 179, column: 7, scope: !3485)
!3576 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3577, file: !3465, line: 60, type: !67)
!3577 = distinct !DISubprogram(name: "bkm_scale", scope: !3465, file: !3465, line: 60, type: !3578, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !571, variables: !3580)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{!3468, !3469, !67}
!3580 = !{!3581, !3576}
!3581 = !DILocalVariable(name: "x", arg: 1, scope: !3577, file: !3465, line: 60, type: !3469)
!3582 = !DILocation(line: 60, column: 31, scope: !3577, inlinedAt: !3583)
!3583 = distinct !DILocation(line: 182, column: 22, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3485, file: !3465, line: 180, column: 9)
!3585 = !DILocation(line: 67, column: 39, scope: !3586, inlinedAt: !3583)
!3586 = distinct !DILexicalBlock(scope: !3577, file: !3465, line: 67, column: 7)
!3587 = !DILocation(line: 72, column: 6, scope: !3577, inlinedAt: !3583)
!3588 = !DILocation(line: 67, column: 7, scope: !3577, inlinedAt: !3583)
!3589 = !DILocation(line: 143, column: 20, scope: !3485)
!3590 = !DILocation(line: 183, column: 11, scope: !3584)
!3591 = !DILocation(line: 60, column: 31, scope: !3577, inlinedAt: !3592)
!3592 = distinct !DILocation(line: 189, column: 22, scope: !3584)
!3593 = !DILocation(line: 67, column: 39, scope: !3586, inlinedAt: !3592)
!3594 = !DILocation(line: 72, column: 6, scope: !3577, inlinedAt: !3592)
!3595 = !DILocation(line: 67, column: 7, scope: !3577, inlinedAt: !3592)
!3596 = !DILocation(line: 190, column: 11, scope: !3584)
!3597 = !DILocalVariable(name: "power", arg: 3, scope: !3598, file: !3465, line: 77, type: !67)
!3598 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3465, file: !3465, line: 77, type: !3599, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !571, variables: !3601)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!3468, !3469, !67, !67}
!3601 = !{!3602, !3603, !3597, !3604}
!3602 = !DILocalVariable(name: "x", arg: 1, scope: !3598, file: !3465, line: 77, type: !3469)
!3603 = !DILocalVariable(name: "base", arg: 2, scope: !3598, file: !3465, line: 77, type: !67)
!3604 = !DILocalVariable(name: "err", scope: !3598, file: !3465, line: 79, type: !3468)
!3605 = !DILocation(line: 77, column: 50, scope: !3598, inlinedAt: !3606)
!3606 = distinct !DILocation(line: 197, column: 22, scope: !3584)
!3607 = !DILocation(line: 79, column: 16, scope: !3598, inlinedAt: !3606)
!3608 = !DILocation(line: 67, column: 39, scope: !3586, inlinedAt: !3609)
!3609 = distinct !DILocation(line: 81, column: 12, scope: !3598, inlinedAt: !3606)
!3610 = !DILocation(line: 72, column: 6, scope: !3577, inlinedAt: !3609)
!3611 = !DILocation(line: 67, column: 7, scope: !3577, inlinedAt: !3609)
!3612 = !DILocation(line: 81, column: 9, scope: !3598, inlinedAt: !3606)
!3613 = !DILocation(line: 241, column: 11, scope: !3485)
!3614 = !DILocation(line: 77, column: 50, scope: !3598, inlinedAt: !3615)
!3615 = distinct !DILocation(line: 202, column: 22, scope: !3584)
!3616 = !DILocation(line: 79, column: 16, scope: !3598, inlinedAt: !3615)
!3617 = !DILocation(line: 67, column: 39, scope: !3586, inlinedAt: !3618)
!3618 = distinct !DILocation(line: 81, column: 12, scope: !3598, inlinedAt: !3615)
!3619 = !DILocation(line: 72, column: 6, scope: !3577, inlinedAt: !3618)
!3620 = !DILocation(line: 67, column: 7, scope: !3577, inlinedAt: !3618)
!3621 = !DILocation(line: 81, column: 9, scope: !3598, inlinedAt: !3615)
!3622 = !DILocation(line: 77, column: 50, scope: !3598, inlinedAt: !3623)
!3623 = distinct !DILocation(line: 207, column: 22, scope: !3584)
!3624 = !DILocation(line: 79, column: 16, scope: !3598, inlinedAt: !3623)
!3625 = !DILocation(line: 67, column: 39, scope: !3586, inlinedAt: !3626)
!3626 = distinct !DILocation(line: 81, column: 12, scope: !3598, inlinedAt: !3623)
!3627 = !DILocation(line: 72, column: 6, scope: !3577, inlinedAt: !3626)
!3628 = !DILocation(line: 67, column: 7, scope: !3577, inlinedAt: !3626)
!3629 = !DILocation(line: 77, column: 50, scope: !3598, inlinedAt: !3630)
!3630 = distinct !DILocation(line: 212, column: 22, scope: !3584)
!3631 = !DILocation(line: 79, column: 16, scope: !3598, inlinedAt: !3630)
!3632 = !DILocation(line: 67, column: 39, scope: !3586, inlinedAt: !3633)
!3633 = distinct !DILocation(line: 81, column: 12, scope: !3598, inlinedAt: !3630)
!3634 = !DILocation(line: 72, column: 6, scope: !3577, inlinedAt: !3633)
!3635 = !DILocation(line: 67, column: 7, scope: !3577, inlinedAt: !3633)
!3636 = !DILocation(line: 81, column: 9, scope: !3598, inlinedAt: !3630)
!3637 = !DILocation(line: 77, column: 50, scope: !3598, inlinedAt: !3638)
!3638 = distinct !DILocation(line: 216, column: 22, scope: !3584)
!3639 = !DILocation(line: 79, column: 16, scope: !3598, inlinedAt: !3638)
!3640 = !DILocation(line: 67, column: 39, scope: !3586, inlinedAt: !3641)
!3641 = distinct !DILocation(line: 81, column: 12, scope: !3598, inlinedAt: !3638)
!3642 = !DILocation(line: 72, column: 6, scope: !3577, inlinedAt: !3641)
!3643 = !DILocation(line: 67, column: 7, scope: !3577, inlinedAt: !3641)
!3644 = !DILocation(line: 81, column: 9, scope: !3598, inlinedAt: !3638)
!3645 = !DILocation(line: 77, column: 50, scope: !3598, inlinedAt: !3646)
!3646 = distinct !DILocation(line: 221, column: 22, scope: !3584)
!3647 = !DILocation(line: 79, column: 16, scope: !3598, inlinedAt: !3646)
!3648 = !DILocation(line: 67, column: 39, scope: !3586, inlinedAt: !3649)
!3649 = distinct !DILocation(line: 81, column: 12, scope: !3598, inlinedAt: !3646)
!3650 = !DILocation(line: 72, column: 6, scope: !3577, inlinedAt: !3649)
!3651 = !DILocation(line: 67, column: 7, scope: !3577, inlinedAt: !3649)
!3652 = !DILocation(line: 81, column: 9, scope: !3598, inlinedAt: !3646)
!3653 = !DILocation(line: 60, column: 31, scope: !3577, inlinedAt: !3654)
!3654 = distinct !DILocation(line: 225, column: 22, scope: !3584)
!3655 = !DILocation(line: 67, column: 39, scope: !3586, inlinedAt: !3654)
!3656 = !DILocation(line: 72, column: 6, scope: !3577, inlinedAt: !3654)
!3657 = !DILocation(line: 67, column: 7, scope: !3577, inlinedAt: !3654)
!3658 = !DILocation(line: 226, column: 11, scope: !3584)
!3659 = !DILocation(line: 77, column: 50, scope: !3598, inlinedAt: !3660)
!3660 = distinct !DILocation(line: 229, column: 22, scope: !3584)
!3661 = !DILocation(line: 79, column: 16, scope: !3598, inlinedAt: !3660)
!3662 = !DILocation(line: 67, column: 39, scope: !3586, inlinedAt: !3663)
!3663 = distinct !DILocation(line: 81, column: 12, scope: !3598, inlinedAt: !3660)
!3664 = !DILocation(line: 72, column: 6, scope: !3577, inlinedAt: !3663)
!3665 = !DILocation(line: 67, column: 7, scope: !3577, inlinedAt: !3663)
!3666 = !DILocation(line: 81, column: 9, scope: !3598, inlinedAt: !3660)
!3667 = !DILocation(line: 77, column: 50, scope: !3598, inlinedAt: !3668)
!3668 = distinct !DILocation(line: 233, column: 22, scope: !3584)
!3669 = !DILocation(line: 79, column: 16, scope: !3598, inlinedAt: !3668)
!3670 = !DILocation(line: 67, column: 39, scope: !3586, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 81, column: 12, scope: !3598, inlinedAt: !3668)
!3672 = !DILocation(line: 72, column: 6, scope: !3577, inlinedAt: !3671)
!3673 = !DILocation(line: 67, column: 7, scope: !3577, inlinedAt: !3671)
!3674 = !DILocation(line: 81, column: 9, scope: !3598, inlinedAt: !3668)
!3675 = !DILocation(line: 237, column: 16, scope: !3584)
!3676 = !DILocation(line: 238, column: 22, scope: !3584)
!3677 = !DILocation(line: 238, column: 11, scope: !3584)
!3678 = !DILocation(line: 242, column: 10, scope: !3485)
!3679 = !DILocation(line: 243, column: 11, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3485, file: !3465, line: 243, column: 11)
!3681 = !DILocation(line: 244, column: 13, scope: !3680)
!3682 = !DILocation(line: 243, column: 11, scope: !3485)
!3683 = !DILocation(line: 247, column: 8, scope: !3464)
!3684 = !DILocation(line: 248, column: 3, scope: !3464)
!3685 = !DILocation(line: 249, column: 1, scope: !3464)
!3686 = distinct !DISubprogram(name: "rpl_calloc", scope: !3687, file: !3687, line: 42, type: !1035, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !575, variables: !3688)
!3687 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3688 = !{!3689, !3690, !3691, !3692}
!3689 = !DILocalVariable(name: "n", arg: 1, scope: !3686, file: !3687, line: 42, type: !129)
!3690 = !DILocalVariable(name: "s", arg: 2, scope: !3686, file: !3687, line: 42, type: !129)
!3691 = !DILocalVariable(name: "result", scope: !3686, file: !3687, line: 44, type: !30)
!3692 = !DILocalVariable(name: "bytes", scope: !3693, file: !3687, line: 56, type: !129)
!3693 = distinct !DILexicalBlock(scope: !3694, file: !3687, line: 53, column: 5)
!3694 = distinct !DILexicalBlock(scope: !3686, file: !3687, line: 47, column: 7)
!3695 = !DILocation(line: 42, column: 20, scope: !3686)
!3696 = !DILocation(line: 42, column: 30, scope: !3686)
!3697 = !DILocation(line: 47, column: 9, scope: !3694)
!3698 = !DILocation(line: 47, column: 19, scope: !3694)
!3699 = !DILocation(line: 47, column: 14, scope: !3694)
!3700 = !DILocation(line: 56, column: 24, scope: !3693)
!3701 = !DILocation(line: 56, column: 14, scope: !3693)
!3702 = !DILocation(line: 57, column: 17, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3693, file: !3687, line: 57, column: 11)
!3704 = !DILocation(line: 57, column: 21, scope: !3703)
!3705 = !DILocation(line: 57, column: 11, scope: !3693)
!3706 = !DILocation(line: 59, column: 11, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3703, file: !3687, line: 58, column: 9)
!3708 = !DILocation(line: 59, column: 17, scope: !3707)
!3709 = !DILocation(line: 65, column: 12, scope: !3686)
!3710 = !DILocation(line: 44, column: 9, scope: !3686)
!3711 = !DILocation(line: 72, column: 3, scope: !3686)
!3712 = !DILocation(line: 73, column: 1, scope: !3686)
!3713 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3714, file: !3714, line: 334, type: !3715, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !3729)
!3714 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!129, !3717, !44, !129, !3718}
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1548, line: 6, baseType: !3720)
!3720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1550, line: 21, baseType: !3721)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1550, line: 13, size: 64, elements: !3722)
!3722 = !{!3723, !3724}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3721, file: !1550, line: 15, baseType: !67, size: 32)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3721, file: !1550, line: 20, baseType: !3725, size: 32, offset: 32)
!3725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3721, file: !1550, line: 16, size: 32, elements: !3726)
!3726 = !{!3727, !3728}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3725, file: !1550, line: 18, baseType: !31, size: 32)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3725, file: !1550, line: 19, baseType: !1559, size: 32)
!3729 = !{!3730, !3731, !3732, !3733, !3734, !3735, !3736}
!3730 = !DILocalVariable(name: "pwc", arg: 1, scope: !3713, file: !3714, line: 334, type: !3717)
!3731 = !DILocalVariable(name: "s", arg: 2, scope: !3713, file: !3714, line: 334, type: !44)
!3732 = !DILocalVariable(name: "n", arg: 3, scope: !3713, file: !3714, line: 334, type: !129)
!3733 = !DILocalVariable(name: "ps", arg: 4, scope: !3713, file: !3714, line: 334, type: !3718)
!3734 = !DILocalVariable(name: "ret", scope: !3713, file: !3714, line: 336, type: !129)
!3735 = !DILocalVariable(name: "wc", scope: !3713, file: !3714, line: 337, type: !1564)
!3736 = !DILocalVariable(name: "uc", scope: !3737, file: !3714, line: 398, type: !527)
!3737 = distinct !DILexicalBlock(scope: !3738, file: !3714, line: 397, column: 5)
!3738 = distinct !DILexicalBlock(scope: !3713, file: !3714, line: 396, column: 7)
!3739 = !DILocation(line: 334, column: 23, scope: !3713)
!3740 = !DILocation(line: 334, column: 40, scope: !3713)
!3741 = !DILocation(line: 334, column: 50, scope: !3713)
!3742 = !DILocation(line: 334, column: 64, scope: !3713)
!3743 = !DILocation(line: 337, column: 3, scope: !3713)
!3744 = !DILocation(line: 353, column: 9, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3713, file: !3714, line: 353, column: 7)
!3746 = !DILocation(line: 353, column: 7, scope: !3713)
!3747 = !DILocation(line: 388, column: 9, scope: !3713)
!3748 = !DILocation(line: 336, column: 10, scope: !3713)
!3749 = !DILocation(line: 396, column: 19, scope: !3738)
!3750 = !DILocation(line: 396, column: 31, scope: !3738)
!3751 = !DILocation(line: 396, column: 26, scope: !3738)
!3752 = !DILocation(line: 396, column: 41, scope: !3738)
!3753 = !DILocation(line: 396, column: 7, scope: !3713)
!3754 = !DILocation(line: 398, column: 26, scope: !3737)
!3755 = !DILocation(line: 398, column: 21, scope: !3737)
!3756 = !DILocation(line: 399, column: 14, scope: !3737)
!3757 = !DILocation(line: 399, column: 12, scope: !3737)
!3758 = !DILocation(line: 405, column: 1, scope: !3713)
!3759 = distinct !DISubprogram(name: "close_stream", scope: !3760, file: !3760, line: 56, type: !3761, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !3803)
!3760 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!67, !3763}
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3023, line: 7, baseType: !3765)
!3765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3025, line: 241, size: 1728, elements: !3766)
!3766 = !{!3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3765, file: !3025, line: 242, baseType: !67, size: 32)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3765, file: !3025, line: 247, baseType: !28, size: 64, offset: 64)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3765, file: !3025, line: 248, baseType: !28, size: 64, offset: 128)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3765, file: !3025, line: 249, baseType: !28, size: 64, offset: 192)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3765, file: !3025, line: 250, baseType: !28, size: 64, offset: 256)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3765, file: !3025, line: 251, baseType: !28, size: 64, offset: 320)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3765, file: !3025, line: 252, baseType: !28, size: 64, offset: 384)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3765, file: !3025, line: 253, baseType: !28, size: 64, offset: 448)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3765, file: !3025, line: 254, baseType: !28, size: 64, offset: 512)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3765, file: !3025, line: 256, baseType: !28, size: 64, offset: 576)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3765, file: !3025, line: 257, baseType: !28, size: 64, offset: 640)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3765, file: !3025, line: 258, baseType: !28, size: 64, offset: 704)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3765, file: !3025, line: 260, baseType: !3780, size: 64, offset: 768)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3025, line: 156, size: 192, elements: !3782)
!3782 = !{!3783, !3784, !3786}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3781, file: !3025, line: 157, baseType: !3780, size: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3781, file: !3025, line: 158, baseType: !3785, size: 64, offset: 64)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3781, file: !3025, line: 162, baseType: !67, size: 32, offset: 128)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3765, file: !3025, line: 262, baseType: !3785, size: 64, offset: 832)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3765, file: !3025, line: 264, baseType: !67, size: 32, offset: 896)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3765, file: !3025, line: 268, baseType: !67, size: 32, offset: 928)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3765, file: !3025, line: 270, baseType: !1170, size: 64, offset: 960)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3765, file: !3025, line: 274, baseType: !128, size: 16, offset: 1024)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3765, file: !3025, line: 275, baseType: !3053, size: 8, offset: 1040)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3765, file: !3025, line: 276, baseType: !3055, size: 8, offset: 1048)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3765, file: !3025, line: 280, baseType: !3059, size: 64, offset: 1088)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3765, file: !3025, line: 289, baseType: !3062, size: 64, offset: 1152)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3765, file: !3025, line: 297, baseType: !30, size: 64, offset: 1216)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3765, file: !3025, line: 298, baseType: !30, size: 64, offset: 1280)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3765, file: !3025, line: 299, baseType: !30, size: 64, offset: 1344)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3765, file: !3025, line: 300, baseType: !30, size: 64, offset: 1408)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3765, file: !3025, line: 302, baseType: !129, size: 64, offset: 1472)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3765, file: !3025, line: 303, baseType: !67, size: 32, offset: 1536)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3765, file: !3025, line: 305, baseType: !3070, size: 160, offset: 1568)
!3803 = !{!3804, !3805, !3807, !3808}
!3804 = !DILocalVariable(name: "stream", arg: 1, scope: !3759, file: !3760, line: 56, type: !3763)
!3805 = !DILocalVariable(name: "some_pending", scope: !3759, file: !3760, line: 58, type: !3806)
!3806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!3807 = !DILocalVariable(name: "prev_fail", scope: !3759, file: !3760, line: 59, type: !3806)
!3808 = !DILocalVariable(name: "fclose_fail", scope: !3759, file: !3760, line: 60, type: !3806)
!3809 = !DILocation(line: 56, column: 21, scope: !3759)
!3810 = !DILocation(line: 58, column: 30, scope: !3759)
!3811 = !DILocalVariable(name: "__stream", arg: 1, scope: !3812, file: !3813, line: 132, type: !3763)
!3812 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3813, file: !3813, line: 132, type: !3761, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !3814)
!3813 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3814 = !{!3811}
!3815 = !DILocation(line: 132, column: 1, scope: !3812, inlinedAt: !3816)
!3816 = distinct !DILocation(line: 59, column: 27, scope: !3759)
!3817 = !DILocation(line: 134, column: 10, scope: !3812, inlinedAt: !3816)
!3818 = !{!3819, !731, i64 0}
!3819 = !{!"_IO_FILE", !731, i64 0, !608, i64 8, !608, i64 16, !608, i64 24, !608, i64 32, !608, i64 40, !608, i64 48, !608, i64 56, !608, i64 64, !608, i64 72, !608, i64 80, !608, i64 88, !608, i64 96, !608, i64 104, !731, i64 112, !731, i64 116, !802, i64 120, !1798, i64 128, !609, i64 130, !609, i64 131, !608, i64 136, !802, i64 144, !608, i64 152, !608, i64 160, !608, i64 168, !608, i64 176, !802, i64 184, !731, i64 192, !609, i64 196}
!3820 = !DILocation(line: 59, column: 43, scope: !3759)
!3821 = !DILocation(line: 60, column: 29, scope: !3759)
!3822 = !DILocation(line: 60, column: 45, scope: !3759)
!3823 = !DILocation(line: 70, column: 17, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3759, file: !3760, line: 70, column: 7)
!3825 = !DILocation(line: 58, column: 50, scope: !3759)
!3826 = !DILocation(line: 70, column: 33, scope: !3824)
!3827 = !DILocation(line: 70, column: 53, scope: !3824)
!3828 = !DILocation(line: 70, column: 59, scope: !3824)
!3829 = !DILocation(line: 70, column: 7, scope: !3759)
!3830 = !DILocation(line: 72, column: 11, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3824, file: !3760, line: 71, column: 5)
!3832 = !DILocation(line: 73, column: 9, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3831, file: !3760, line: 72, column: 11)
!3834 = !DILocation(line: 73, column: 15, scope: !3833)
!3835 = !DILocation(line: 78, column: 1, scope: !3759)
!3836 = distinct !DISubprogram(name: "hard_locale", scope: !3837, file: !3837, line: 38, type: !3838, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !581, variables: !3840)
!3837 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!87, !67}
!3840 = !{!3841, !3842, !3843}
!3841 = !DILocalVariable(name: "category", arg: 1, scope: !3836, file: !3837, line: 38, type: !67)
!3842 = !DILocalVariable(name: "hard", scope: !3836, file: !3837, line: 40, type: !87)
!3843 = !DILocalVariable(name: "p", scope: !3836, file: !3837, line: 41, type: !44)
!3844 = !DILocation(line: 38, column: 18, scope: !3836)
!3845 = !DILocation(line: 40, column: 8, scope: !3836)
!3846 = !DILocation(line: 41, column: 19, scope: !3836)
!3847 = !DILocation(line: 41, column: 15, scope: !3836)
!3848 = !DILocation(line: 43, column: 7, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3836, file: !3837, line: 43, column: 7)
!3850 = !DILocation(line: 43, column: 7, scope: !3836)
!3851 = !DILocation(line: 47, column: 15, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3853, file: !3837, line: 47, column: 15)
!3853 = distinct !DILexicalBlock(scope: !3854, file: !3837, line: 46, column: 9)
!3854 = distinct !DILexicalBlock(scope: !3855, file: !3837, line: 45, column: 11)
!3855 = distinct !DILexicalBlock(scope: !3849, file: !3837, line: 44, column: 5)
!3856 = !DILocation(line: 47, column: 31, scope: !3852)
!3857 = !DILocation(line: 47, column: 36, scope: !3852)
!3858 = !DILocation(line: 47, column: 39, scope: !3852)
!3859 = !DILocation(line: 47, column: 59, scope: !3852)
!3860 = !DILocation(line: 47, column: 15, scope: !3853)
!3861 = !DILocation(line: 48, column: 13, scope: !3852)
!3862 = !DILocation(line: 71, column: 3, scope: !3836)
!3863 = distinct !DISubprogram(name: "locale_charset", scope: !529, file: !529, line: 393, type: !3864, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !184, variables: !3866)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!44}
!3866 = !{!3867, !3868}
!3867 = !DILocalVariable(name: "codeset", scope: !3863, file: !529, line: 395, type: !44)
!3868 = !DILocalVariable(name: "aliases", scope: !3863, file: !529, line: 396, type: !44)
!3869 = !DILocalVariable(name: "buf1", scope: !3870, file: !529, line: 196, type: !3937)
!3870 = distinct !DILexicalBlock(scope: !3871, file: !529, line: 194, column: 21)
!3871 = distinct !DILexicalBlock(scope: !3872, file: !529, line: 193, column: 19)
!3872 = distinct !DILexicalBlock(scope: !3873, file: !529, line: 193, column: 19)
!3873 = distinct !DILexicalBlock(scope: !3874, file: !529, line: 188, column: 17)
!3874 = distinct !DILexicalBlock(scope: !3875, file: !529, line: 181, column: 19)
!3875 = distinct !DILexicalBlock(scope: !3876, file: !529, line: 177, column: 13)
!3876 = distinct !DILexicalBlock(scope: !3877, file: !529, line: 173, column: 15)
!3877 = distinct !DILexicalBlock(scope: !3878, file: !529, line: 161, column: 9)
!3878 = distinct !DILexicalBlock(scope: !3879, file: !529, line: 157, column: 11)
!3879 = distinct !DILexicalBlock(scope: !3880, file: !529, line: 130, column: 5)
!3880 = distinct !DILexicalBlock(scope: !3881, file: !529, line: 129, column: 7)
!3881 = distinct !DISubprogram(name: "get_charset_aliases", scope: !529, file: !529, line: 124, type: !3864, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !184, variables: !3882)
!3882 = !{!3883, !3884, !3885, !3886, !3887, !3889, !3890, !3891, !3892, !3933, !3934, !3935, !3869, !3936, !3940, !3941, !3942}
!3883 = !DILocalVariable(name: "cp", scope: !3881, file: !529, line: 126, type: !44)
!3884 = !DILocalVariable(name: "dir", scope: !3879, file: !529, line: 132, type: !44)
!3885 = !DILocalVariable(name: "base", scope: !3879, file: !529, line: 133, type: !44)
!3886 = !DILocalVariable(name: "file_name", scope: !3879, file: !529, line: 134, type: !28)
!3887 = !DILocalVariable(name: "dir_len", scope: !3888, file: !529, line: 144, type: !129)
!3888 = distinct !DILexicalBlock(scope: !3879, file: !529, line: 143, column: 7)
!3889 = !DILocalVariable(name: "base_len", scope: !3888, file: !529, line: 145, type: !129)
!3890 = !DILocalVariable(name: "add_slash", scope: !3888, file: !529, line: 146, type: !67)
!3891 = !DILocalVariable(name: "fd", scope: !3877, file: !529, line: 162, type: !67)
!3892 = !DILocalVariable(name: "fp", scope: !3875, file: !529, line: 178, type: !3893)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3023, line: 7, baseType: !3895)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3025, line: 241, size: 1728, elements: !3896)
!3896 = !{!3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3895, file: !3025, line: 242, baseType: !67, size: 32)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3895, file: !3025, line: 247, baseType: !28, size: 64, offset: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3895, file: !3025, line: 248, baseType: !28, size: 64, offset: 128)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3895, file: !3025, line: 249, baseType: !28, size: 64, offset: 192)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3895, file: !3025, line: 250, baseType: !28, size: 64, offset: 256)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3895, file: !3025, line: 251, baseType: !28, size: 64, offset: 320)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3895, file: !3025, line: 252, baseType: !28, size: 64, offset: 384)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3895, file: !3025, line: 253, baseType: !28, size: 64, offset: 448)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3895, file: !3025, line: 254, baseType: !28, size: 64, offset: 512)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3895, file: !3025, line: 256, baseType: !28, size: 64, offset: 576)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3895, file: !3025, line: 257, baseType: !28, size: 64, offset: 640)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3895, file: !3025, line: 258, baseType: !28, size: 64, offset: 704)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3895, file: !3025, line: 260, baseType: !3910, size: 64, offset: 768)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3025, line: 156, size: 192, elements: !3912)
!3912 = !{!3913, !3914, !3916}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3911, file: !3025, line: 157, baseType: !3910, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3911, file: !3025, line: 158, baseType: !3915, size: 64, offset: 64)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3911, file: !3025, line: 162, baseType: !67, size: 32, offset: 128)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3895, file: !3025, line: 262, baseType: !3915, size: 64, offset: 832)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3895, file: !3025, line: 264, baseType: !67, size: 32, offset: 896)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3895, file: !3025, line: 268, baseType: !67, size: 32, offset: 928)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3895, file: !3025, line: 270, baseType: !1170, size: 64, offset: 960)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3895, file: !3025, line: 274, baseType: !128, size: 16, offset: 1024)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3895, file: !3025, line: 275, baseType: !3053, size: 8, offset: 1040)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3895, file: !3025, line: 276, baseType: !3055, size: 8, offset: 1048)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3895, file: !3025, line: 280, baseType: !3059, size: 64, offset: 1088)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3895, file: !3025, line: 289, baseType: !3062, size: 64, offset: 1152)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3895, file: !3025, line: 297, baseType: !30, size: 64, offset: 1216)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3895, file: !3025, line: 298, baseType: !30, size: 64, offset: 1280)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3895, file: !3025, line: 299, baseType: !30, size: 64, offset: 1344)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3895, file: !3025, line: 300, baseType: !30, size: 64, offset: 1408)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3895, file: !3025, line: 302, baseType: !129, size: 64, offset: 1472)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3895, file: !3025, line: 303, baseType: !67, size: 32, offset: 1536)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3895, file: !3025, line: 305, baseType: !3070, size: 160, offset: 1568)
!3933 = !DILocalVariable(name: "res_ptr", scope: !3873, file: !529, line: 190, type: !28)
!3934 = !DILocalVariable(name: "res_size", scope: !3873, file: !529, line: 191, type: !129)
!3935 = !DILocalVariable(name: "c", scope: !3870, file: !529, line: 195, type: !67)
!3936 = !DILocalVariable(name: "buf2", scope: !3870, file: !529, line: 197, type: !3937)
!3937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 408, elements: !3938)
!3938 = !{!3939}
!3939 = !DISubrange(count: 51)
!3940 = !DILocalVariable(name: "l1", scope: !3870, file: !529, line: 198, type: !129)
!3941 = !DILocalVariable(name: "l2", scope: !3870, file: !529, line: 198, type: !129)
!3942 = !DILocalVariable(name: "old_res_ptr", scope: !3870, file: !529, line: 199, type: !28)
!3943 = !DILocation(line: 196, column: 28, scope: !3870, inlinedAt: !3944)
!3944 = distinct !DILocation(line: 589, column: 18, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3863, file: !529, line: 589, column: 3)
!3946 = !DILocation(line: 197, column: 28, scope: !3870, inlinedAt: !3944)
!3947 = !DILocation(line: 403, column: 13, scope: !3863)
!3948 = !DILocation(line: 395, column: 15, scope: !3863)
!3949 = !DILocation(line: 584, column: 15, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3863, file: !529, line: 584, column: 7)
!3951 = !DILocation(line: 584, column: 7, scope: !3863)
!3952 = !DILocation(line: 128, column: 8, scope: !3881, inlinedAt: !3944)
!3953 = !DILocation(line: 126, column: 15, scope: !3881, inlinedAt: !3944)
!3954 = !DILocation(line: 129, column: 10, scope: !3880, inlinedAt: !3944)
!3955 = !DILocation(line: 129, column: 7, scope: !3881, inlinedAt: !3944)
!3956 = !DILocation(line: 138, column: 13, scope: !3879, inlinedAt: !3944)
!3957 = !DILocation(line: 132, column: 19, scope: !3879, inlinedAt: !3944)
!3958 = !DILocation(line: 139, column: 15, scope: !3959, inlinedAt: !3944)
!3959 = distinct !DILexicalBlock(scope: !3879, file: !529, line: 139, column: 11)
!3960 = !DILocation(line: 139, column: 23, scope: !3959, inlinedAt: !3944)
!3961 = !DILocation(line: 139, column: 26, scope: !3959, inlinedAt: !3944)
!3962 = !DILocation(line: 139, column: 33, scope: !3959, inlinedAt: !3944)
!3963 = !DILocation(line: 139, column: 11, scope: !3879, inlinedAt: !3944)
!3964 = !DILocation(line: 140, column: 9, scope: !3959, inlinedAt: !3944)
!3965 = !DILocation(line: 144, column: 26, scope: !3888, inlinedAt: !3944)
!3966 = !DILocation(line: 144, column: 16, scope: !3888, inlinedAt: !3944)
!3967 = !DILocation(line: 145, column: 16, scope: !3888, inlinedAt: !3944)
!3968 = !DILocation(line: 146, column: 34, scope: !3888, inlinedAt: !3944)
!3969 = !DILocation(line: 146, column: 38, scope: !3888, inlinedAt: !3944)
!3970 = !DILocation(line: 146, column: 42, scope: !3888, inlinedAt: !3944)
!3971 = !DILocation(line: 147, column: 48, scope: !3888, inlinedAt: !3944)
!3972 = !DILocation(line: 147, column: 46, scope: !3888, inlinedAt: !3944)
!3973 = !DILocation(line: 147, column: 69, scope: !3888, inlinedAt: !3944)
!3974 = !DILocation(line: 147, column: 30, scope: !3888, inlinedAt: !3944)
!3975 = !DILocation(line: 134, column: 13, scope: !3879, inlinedAt: !3944)
!3976 = !DILocation(line: 148, column: 13, scope: !3888, inlinedAt: !3944)
!3977 = !DILocation(line: 150, column: 13, scope: !3978, inlinedAt: !3944)
!3978 = distinct !DILexicalBlock(scope: !3979, file: !529, line: 149, column: 11)
!3979 = distinct !DILexicalBlock(scope: !3888, file: !529, line: 148, column: 13)
!3980 = !DILocation(line: 151, column: 17, scope: !3978, inlinedAt: !3944)
!3981 = !DILocation(line: 152, column: 34, scope: !3982, inlinedAt: !3944)
!3982 = distinct !DILexicalBlock(scope: !3978, file: !529, line: 151, column: 17)
!3983 = !DILocation(line: 153, column: 41, scope: !3978, inlinedAt: !3944)
!3984 = !DILocation(line: 153, column: 13, scope: !3978, inlinedAt: !3944)
!3985 = !DILocation(line: 157, column: 11, scope: !3879, inlinedAt: !3944)
!3986 = !DILocation(line: 171, column: 16, scope: !3877, inlinedAt: !3944)
!3987 = !DILocation(line: 162, column: 15, scope: !3877, inlinedAt: !3944)
!3988 = !DILocation(line: 173, column: 18, scope: !3876, inlinedAt: !3944)
!3989 = !DILocation(line: 173, column: 15, scope: !3877, inlinedAt: !3944)
!3990 = !DILocation(line: 180, column: 20, scope: !3875, inlinedAt: !3944)
!3991 = !DILocation(line: 178, column: 21, scope: !3875, inlinedAt: !3944)
!3992 = !DILocation(line: 181, column: 22, scope: !3874, inlinedAt: !3944)
!3993 = !DILocation(line: 181, column: 19, scope: !3875, inlinedAt: !3944)
!3994 = !DILocation(line: 184, column: 19, scope: !3995, inlinedAt: !3944)
!3995 = distinct !DILexicalBlock(scope: !3874, file: !529, line: 182, column: 17)
!3996 = !DILocation(line: 186, column: 17, scope: !3995, inlinedAt: !3944)
!3997 = !DILocation(line: 190, column: 25, scope: !3873, inlinedAt: !3944)
!3998 = !DILocation(line: 191, column: 26, scope: !3873, inlinedAt: !3944)
!3999 = !DILocation(line: 193, column: 19, scope: !3873, inlinedAt: !3944)
!4000 = !DILocation(line: 196, column: 23, scope: !3870, inlinedAt: !3944)
!4001 = !DILocation(line: 197, column: 23, scope: !3870, inlinedAt: !3944)
!4002 = !DILocalVariable(name: "__fp", arg: 1, scope: !4003, file: !3813, line: 63, type: !3893)
!4003 = distinct !DISubprogram(name: "getc_unlocked", scope: !3813, file: !3813, line: 63, type: !4004, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !184, variables: !4006)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!67, !3893}
!4006 = !{!4002}
!4007 = !DILocation(line: 63, column: 22, scope: !4003, inlinedAt: !4008)
!4008 = distinct !DILocation(line: 201, column: 27, scope: !3870, inlinedAt: !3944)
!4009 = !DILocation(line: 65, column: 10, scope: !4003, inlinedAt: !4008)
!4010 = !{!3819, !608, i64 8}
!4011 = !{!3819, !608, i64 16}
!4012 = !{!"branch_weights", i32 2000, i32 1}
!4013 = !DILocation(line: 195, column: 27, scope: !3870, inlinedAt: !3944)
!4014 = !DILocation(line: 202, column: 27, scope: !3870, inlinedAt: !3944)
!4015 = distinct !{!4015, !4016, !4019}
!4016 = !DILocation(line: 209, column: 27, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !4018, file: !529, line: 207, column: 25)
!4018 = distinct !DILexicalBlock(scope: !3870, file: !529, line: 206, column: 27)
!4019 = !DILocation(line: 211, column: 58, scope: !4017)
!4020 = !DILocation(line: 65, column: 10, scope: !4003, inlinedAt: !4021)
!4021 = distinct !DILocation(line: 210, column: 33, scope: !4017, inlinedAt: !3944)
!4022 = !DILocation(line: 63, column: 22, scope: !4003, inlinedAt: !4021)
!4023 = !DILocation(line: 210, column: 29, scope: !4017, inlinedAt: !3944)
!4024 = distinct !{!4024, !4025, !4026}
!4025 = !DILocation(line: 193, column: 19, scope: !3872)
!4026 = !DILocation(line: 241, column: 21, scope: !3872)
!4027 = !DILocation(line: 216, column: 23, scope: !3870, inlinedAt: !3944)
!4028 = !DILocation(line: 217, column: 27, scope: !4029, inlinedAt: !3944)
!4029 = distinct !DILexicalBlock(scope: !3870, file: !529, line: 217, column: 27)
!4030 = !DILocation(line: 217, column: 64, scope: !4029, inlinedAt: !3944)
!4031 = !DILocation(line: 217, column: 27, scope: !3870, inlinedAt: !3944)
!4032 = !DILocation(line: 219, column: 28, scope: !3870, inlinedAt: !3944)
!4033 = !DILocation(line: 198, column: 30, scope: !3870, inlinedAt: !3944)
!4034 = !DILocation(line: 220, column: 28, scope: !3870, inlinedAt: !3944)
!4035 = !DILocation(line: 198, column: 34, scope: !3870, inlinedAt: !3944)
!4036 = !DILocation(line: 199, column: 29, scope: !3870, inlinedAt: !3944)
!4037 = !DILocation(line: 222, column: 36, scope: !4038, inlinedAt: !3944)
!4038 = distinct !DILexicalBlock(scope: !3870, file: !529, line: 222, column: 27)
!4039 = !DILocation(line: 222, column: 27, scope: !3870, inlinedAt: !3944)
!4040 = !DILocation(line: 225, column: 63, scope: !4041, inlinedAt: !3944)
!4041 = distinct !DILexicalBlock(scope: !4038, file: !529, line: 223, column: 25)
!4042 = !DILocation(line: 225, column: 46, scope: !4041, inlinedAt: !3944)
!4043 = !DILocation(line: 226, column: 25, scope: !4041, inlinedAt: !3944)
!4044 = !DILocation(line: 229, column: 36, scope: !4045, inlinedAt: !3944)
!4045 = distinct !DILexicalBlock(scope: !4038, file: !529, line: 228, column: 25)
!4046 = !DILocation(line: 230, column: 73, scope: !4045, inlinedAt: !3944)
!4047 = !DILocation(line: 230, column: 46, scope: !4045, inlinedAt: !3944)
!4048 = !DILocation(line: 232, column: 35, scope: !4049, inlinedAt: !3944)
!4049 = distinct !DILexicalBlock(scope: !3870, file: !529, line: 232, column: 27)
!4050 = !DILocation(line: 232, column: 27, scope: !3870, inlinedAt: !3944)
!4051 = !DILocation(line: 236, column: 27, scope: !4052, inlinedAt: !3944)
!4052 = distinct !DILexicalBlock(scope: !4049, file: !529, line: 233, column: 25)
!4053 = !DILocation(line: 237, column: 27, scope: !4052, inlinedAt: !3944)
!4054 = !DILocation(line: 241, column: 21, scope: !3871, inlinedAt: !3944)
!4055 = !DILocation(line: 239, column: 39, scope: !3870, inlinedAt: !3944)
!4056 = !DILocation(line: 239, column: 50, scope: !3870, inlinedAt: !3944)
!4057 = !DILocation(line: 239, column: 61, scope: !3870, inlinedAt: !3944)
!4058 = !DILocalVariable(name: "__dest", arg: 1, scope: !4059, file: !4060, line: 88, type: !4063)
!4059 = distinct !DISubprogram(name: "strcpy", scope: !4060, file: !4060, line: 88, type: !4061, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !184, variables: !4064)
!4060 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!28, !4063, !3518}
!4063 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !28)
!4064 = !{!4058, !4065}
!4065 = !DILocalVariable(name: "__src", arg: 2, scope: !4059, file: !4060, line: 88, type: !3518)
!4066 = !DILocation(line: 88, column: 1, scope: !4059, inlinedAt: !4067)
!4067 = distinct !DILocation(line: 239, column: 23, scope: !3870, inlinedAt: !3944)
!4068 = !DILocation(line: 90, column: 49, scope: !4059, inlinedAt: !4067)
!4069 = !DILocation(line: 90, column: 10, scope: !4059, inlinedAt: !4067)
!4070 = !DILocation(line: 88, column: 1, scope: !4059, inlinedAt: !4071)
!4071 = distinct !DILocation(line: 240, column: 23, scope: !3870, inlinedAt: !3944)
!4072 = !DILocation(line: 90, column: 49, scope: !4059, inlinedAt: !4071)
!4073 = !DILocation(line: 90, column: 10, scope: !4059, inlinedAt: !4071)
!4074 = !DILocation(line: 193, column: 19, scope: !3871, inlinedAt: !3944)
!4075 = !DILocation(line: 242, column: 19, scope: !3873, inlinedAt: !3944)
!4076 = !DILocation(line: 243, column: 32, scope: !4077, inlinedAt: !3944)
!4077 = distinct !DILexicalBlock(scope: !3873, file: !529, line: 243, column: 23)
!4078 = !DILocation(line: 243, column: 23, scope: !3873, inlinedAt: !3944)
!4079 = !DILocation(line: 247, column: 33, scope: !4080, inlinedAt: !3944)
!4080 = distinct !DILexicalBlock(scope: !4077, file: !529, line: 246, column: 21)
!4081 = !DILocation(line: 247, column: 45, scope: !4080, inlinedAt: !3944)
!4082 = !DILocation(line: 253, column: 11, scope: !3877, inlinedAt: !3944)
!4083 = !DILocation(line: 377, column: 23, scope: !3879, inlinedAt: !3944)
!4084 = !DILocation(line: 378, column: 5, scope: !3879, inlinedAt: !3944)
!4085 = !DILocation(line: 396, column: 15, scope: !3863)
!4086 = !DILocation(line: 590, column: 8, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !3945, file: !529, line: 589, column: 3)
!4088 = !DILocation(line: 590, column: 17, scope: !4087)
!4089 = !DILocation(line: 589, column: 3, scope: !3945)
!4090 = !DILocation(line: 592, column: 9, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4087, file: !529, line: 592, column: 9)
!4092 = !DILocation(line: 592, column: 35, scope: !4091)
!4093 = !DILocation(line: 593, column: 9, scope: !4091)
!4094 = !DILocation(line: 593, column: 24, scope: !4091)
!4095 = !DILocation(line: 593, column: 31, scope: !4091)
!4096 = !DILocation(line: 593, column: 34, scope: !4091)
!4097 = !DILocation(line: 593, column: 45, scope: !4091)
!4098 = !DILocation(line: 592, column: 9, scope: !4087)
!4099 = !DILocation(line: 595, column: 29, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4091, file: !529, line: 594, column: 7)
!4101 = !DILocation(line: 595, column: 27, scope: !4100)
!4102 = !DILocation(line: 595, column: 46, scope: !4100)
!4103 = !DILocation(line: 596, column: 9, scope: !4100)
!4104 = !DILocation(line: 591, column: 19, scope: !4087)
!4105 = !DILocation(line: 591, column: 36, scope: !4087)
!4106 = !DILocation(line: 591, column: 16, scope: !4087)
!4107 = !DILocation(line: 591, column: 52, scope: !4087)
!4108 = !DILocation(line: 591, column: 69, scope: !4087)
!4109 = !DILocation(line: 591, column: 49, scope: !4087)
!4110 = distinct !{!4110, !4089, !4111}
!4111 = !DILocation(line: 597, column: 7, scope: !3945)
!4112 = !DILocation(line: 602, column: 7, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !3863, file: !529, line: 602, column: 7)
!4114 = !DILocation(line: 602, column: 18, scope: !4113)
!4115 = !DILocation(line: 602, column: 7, scope: !3863)
!4116 = !DILocation(line: 612, column: 3, scope: !3863)
!4117 = distinct !DISubprogram(name: "rpl_fclose", scope: !4118, file: !4118, line: 56, type: !4119, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !4161)
!4118 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4119 = !DISubroutineType(types: !4120)
!4120 = !{!67, !4121}
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3023, line: 7, baseType: !4123)
!4123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3025, line: 241, size: 1728, elements: !4124)
!4124 = !{!4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4123, file: !3025, line: 242, baseType: !67, size: 32)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4123, file: !3025, line: 247, baseType: !28, size: 64, offset: 64)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4123, file: !3025, line: 248, baseType: !28, size: 64, offset: 128)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4123, file: !3025, line: 249, baseType: !28, size: 64, offset: 192)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4123, file: !3025, line: 250, baseType: !28, size: 64, offset: 256)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4123, file: !3025, line: 251, baseType: !28, size: 64, offset: 320)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4123, file: !3025, line: 252, baseType: !28, size: 64, offset: 384)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4123, file: !3025, line: 253, baseType: !28, size: 64, offset: 448)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4123, file: !3025, line: 254, baseType: !28, size: 64, offset: 512)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4123, file: !3025, line: 256, baseType: !28, size: 64, offset: 576)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4123, file: !3025, line: 257, baseType: !28, size: 64, offset: 640)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4123, file: !3025, line: 258, baseType: !28, size: 64, offset: 704)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4123, file: !3025, line: 260, baseType: !4138, size: 64, offset: 768)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3025, line: 156, size: 192, elements: !4140)
!4140 = !{!4141, !4142, !4144}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4139, file: !3025, line: 157, baseType: !4138, size: 64)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4139, file: !3025, line: 158, baseType: !4143, size: 64, offset: 64)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4139, file: !3025, line: 162, baseType: !67, size: 32, offset: 128)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4123, file: !3025, line: 262, baseType: !4143, size: 64, offset: 832)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4123, file: !3025, line: 264, baseType: !67, size: 32, offset: 896)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4123, file: !3025, line: 268, baseType: !67, size: 32, offset: 928)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4123, file: !3025, line: 270, baseType: !1170, size: 64, offset: 960)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4123, file: !3025, line: 274, baseType: !128, size: 16, offset: 1024)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4123, file: !3025, line: 275, baseType: !3053, size: 8, offset: 1040)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4123, file: !3025, line: 276, baseType: !3055, size: 8, offset: 1048)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4123, file: !3025, line: 280, baseType: !3059, size: 64, offset: 1088)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4123, file: !3025, line: 289, baseType: !3062, size: 64, offset: 1152)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4123, file: !3025, line: 297, baseType: !30, size: 64, offset: 1216)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4123, file: !3025, line: 298, baseType: !30, size: 64, offset: 1280)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4123, file: !3025, line: 299, baseType: !30, size: 64, offset: 1344)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4123, file: !3025, line: 300, baseType: !30, size: 64, offset: 1408)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4123, file: !3025, line: 302, baseType: !129, size: 64, offset: 1472)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4123, file: !3025, line: 303, baseType: !67, size: 32, offset: 1536)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4123, file: !3025, line: 305, baseType: !3070, size: 160, offset: 1568)
!4161 = !{!4162, !4163, !4164, !4165}
!4162 = !DILocalVariable(name: "fp", arg: 1, scope: !4117, file: !4118, line: 56, type: !4121)
!4163 = !DILocalVariable(name: "saved_errno", scope: !4117, file: !4118, line: 58, type: !67)
!4164 = !DILocalVariable(name: "fd", scope: !4117, file: !4118, line: 59, type: !67)
!4165 = !DILocalVariable(name: "result", scope: !4117, file: !4118, line: 60, type: !67)
!4166 = !DILocation(line: 56, column: 19, scope: !4117)
!4167 = !DILocation(line: 58, column: 7, scope: !4117)
!4168 = !DILocation(line: 60, column: 7, scope: !4117)
!4169 = !DILocation(line: 63, column: 8, scope: !4117)
!4170 = !DILocation(line: 59, column: 7, scope: !4117)
!4171 = !DILocation(line: 64, column: 10, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4117, file: !4118, line: 64, column: 7)
!4173 = !DILocation(line: 64, column: 7, scope: !4117)
!4174 = !DILocation(line: 65, column: 12, scope: !4172)
!4175 = !DILocation(line: 65, column: 5, scope: !4172)
!4176 = !DILocation(line: 70, column: 9, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4117, file: !4118, line: 70, column: 7)
!4178 = !DILocation(line: 70, column: 23, scope: !4177)
!4179 = !DILocation(line: 70, column: 33, scope: !4177)
!4180 = !DILocation(line: 70, column: 26, scope: !4177)
!4181 = !DILocation(line: 70, column: 59, scope: !4177)
!4182 = !DILocation(line: 71, column: 7, scope: !4177)
!4183 = !DILocation(line: 71, column: 10, scope: !4177)
!4184 = !DILocation(line: 70, column: 7, scope: !4117)
!4185 = !DILocation(line: 98, column: 12, scope: !4117)
!4186 = !DILocation(line: 103, column: 7, scope: !4117)
!4187 = !DILocation(line: 72, column: 19, scope: !4177)
!4188 = !DILocation(line: 103, column: 19, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4117, file: !4118, line: 103, column: 7)
!4190 = !DILocation(line: 105, column: 13, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4189, file: !4118, line: 104, column: 5)
!4192 = !DILocation(line: 107, column: 5, scope: !4191)
!4193 = !DILocation(line: 110, column: 1, scope: !4117)
!4194 = distinct !DISubprogram(name: "rpl_fflush", scope: !4195, file: !4195, line: 127, type: !4196, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !585, variables: !4238)
!4195 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!67, !4198}
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3023, line: 7, baseType: !4200)
!4200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3025, line: 241, size: 1728, elements: !4201)
!4201 = !{!4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4200, file: !3025, line: 242, baseType: !67, size: 32)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4200, file: !3025, line: 247, baseType: !28, size: 64, offset: 64)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4200, file: !3025, line: 248, baseType: !28, size: 64, offset: 128)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4200, file: !3025, line: 249, baseType: !28, size: 64, offset: 192)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4200, file: !3025, line: 250, baseType: !28, size: 64, offset: 256)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4200, file: !3025, line: 251, baseType: !28, size: 64, offset: 320)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4200, file: !3025, line: 252, baseType: !28, size: 64, offset: 384)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4200, file: !3025, line: 253, baseType: !28, size: 64, offset: 448)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4200, file: !3025, line: 254, baseType: !28, size: 64, offset: 512)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4200, file: !3025, line: 256, baseType: !28, size: 64, offset: 576)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4200, file: !3025, line: 257, baseType: !28, size: 64, offset: 640)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4200, file: !3025, line: 258, baseType: !28, size: 64, offset: 704)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4200, file: !3025, line: 260, baseType: !4215, size: 64, offset: 768)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3025, line: 156, size: 192, elements: !4217)
!4217 = !{!4218, !4219, !4221}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4216, file: !3025, line: 157, baseType: !4215, size: 64)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4216, file: !3025, line: 158, baseType: !4220, size: 64, offset: 64)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4216, file: !3025, line: 162, baseType: !67, size: 32, offset: 128)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4200, file: !3025, line: 262, baseType: !4220, size: 64, offset: 832)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4200, file: !3025, line: 264, baseType: !67, size: 32, offset: 896)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4200, file: !3025, line: 268, baseType: !67, size: 32, offset: 928)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4200, file: !3025, line: 270, baseType: !1170, size: 64, offset: 960)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4200, file: !3025, line: 274, baseType: !128, size: 16, offset: 1024)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4200, file: !3025, line: 275, baseType: !3053, size: 8, offset: 1040)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4200, file: !3025, line: 276, baseType: !3055, size: 8, offset: 1048)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4200, file: !3025, line: 280, baseType: !3059, size: 64, offset: 1088)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4200, file: !3025, line: 289, baseType: !3062, size: 64, offset: 1152)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4200, file: !3025, line: 297, baseType: !30, size: 64, offset: 1216)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4200, file: !3025, line: 298, baseType: !30, size: 64, offset: 1280)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4200, file: !3025, line: 299, baseType: !30, size: 64, offset: 1344)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4200, file: !3025, line: 300, baseType: !30, size: 64, offset: 1408)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4200, file: !3025, line: 302, baseType: !129, size: 64, offset: 1472)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4200, file: !3025, line: 303, baseType: !67, size: 32, offset: 1536)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4200, file: !3025, line: 305, baseType: !3070, size: 160, offset: 1568)
!4238 = !{!4239}
!4239 = !DILocalVariable(name: "stream", arg: 1, scope: !4194, file: !4195, line: 127, type: !4198)
!4240 = !DILocation(line: 127, column: 19, scope: !4194)
!4241 = !DILocation(line: 148, column: 14, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4194, file: !4195, line: 148, column: 7)
!4243 = !DILocation(line: 148, column: 22, scope: !4242)
!4244 = !DILocation(line: 148, column: 27, scope: !4242)
!4245 = !DILocation(line: 148, column: 7, scope: !4194)
!4246 = !DILocation(line: 149, column: 12, scope: !4242)
!4247 = !DILocation(line: 149, column: 5, scope: !4242)
!4248 = !DILocalVariable(name: "fp", arg: 1, scope: !4249, file: !4195, line: 40, type: !4198)
!4249 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4195, file: !4195, line: 40, type: !4250, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !585, variables: !4252)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{null, !4198}
!4252 = !{!4248}
!4253 = !DILocation(line: 40, column: 48, scope: !4249, inlinedAt: !4254)
!4254 = distinct !DILocation(line: 153, column: 3, scope: !4194)
!4255 = !DILocation(line: 42, column: 11, scope: !4256, inlinedAt: !4254)
!4256 = distinct !DILexicalBlock(scope: !4249, file: !4195, line: 42, column: 7)
!4257 = !DILocation(line: 42, column: 18, scope: !4256, inlinedAt: !4254)
!4258 = !DILocation(line: 42, column: 7, scope: !4249, inlinedAt: !4254)
!4259 = !DILocation(line: 44, column: 5, scope: !4256, inlinedAt: !4254)
!4260 = !DILocation(line: 155, column: 10, scope: !4194)
!4261 = !DILocation(line: 155, column: 3, scope: !4194)
!4262 = !DILocation(line: 229, column: 1, scope: !4194)
!4263 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4264, file: !4264, line: 28, type: !4265, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !587, variables: !4308)
!4264 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4265 = !DISubroutineType(types: !4266)
!4266 = !{!67, !4267, !4307, !67}
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3023, line: 7, baseType: !4269)
!4269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3025, line: 241, size: 1728, elements: !4270)
!4270 = !{!4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4269, file: !3025, line: 242, baseType: !67, size: 32)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4269, file: !3025, line: 247, baseType: !28, size: 64, offset: 64)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4269, file: !3025, line: 248, baseType: !28, size: 64, offset: 128)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4269, file: !3025, line: 249, baseType: !28, size: 64, offset: 192)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4269, file: !3025, line: 250, baseType: !28, size: 64, offset: 256)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4269, file: !3025, line: 251, baseType: !28, size: 64, offset: 320)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4269, file: !3025, line: 252, baseType: !28, size: 64, offset: 384)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4269, file: !3025, line: 253, baseType: !28, size: 64, offset: 448)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4269, file: !3025, line: 254, baseType: !28, size: 64, offset: 512)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4269, file: !3025, line: 256, baseType: !28, size: 64, offset: 576)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4269, file: !3025, line: 257, baseType: !28, size: 64, offset: 640)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4269, file: !3025, line: 258, baseType: !28, size: 64, offset: 704)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4269, file: !3025, line: 260, baseType: !4284, size: 64, offset: 768)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3025, line: 156, size: 192, elements: !4286)
!4286 = !{!4287, !4288, !4290}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4285, file: !3025, line: 157, baseType: !4284, size: 64)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4285, file: !3025, line: 158, baseType: !4289, size: 64, offset: 64)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4285, file: !3025, line: 162, baseType: !67, size: 32, offset: 128)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4269, file: !3025, line: 262, baseType: !4289, size: 64, offset: 832)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4269, file: !3025, line: 264, baseType: !67, size: 32, offset: 896)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4269, file: !3025, line: 268, baseType: !67, size: 32, offset: 928)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4269, file: !3025, line: 270, baseType: !1170, size: 64, offset: 960)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4269, file: !3025, line: 274, baseType: !128, size: 16, offset: 1024)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4269, file: !3025, line: 275, baseType: !3053, size: 8, offset: 1040)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4269, file: !3025, line: 276, baseType: !3055, size: 8, offset: 1048)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4269, file: !3025, line: 280, baseType: !3059, size: 64, offset: 1088)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4269, file: !3025, line: 289, baseType: !3062, size: 64, offset: 1152)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4269, file: !3025, line: 297, baseType: !30, size: 64, offset: 1216)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4269, file: !3025, line: 298, baseType: !30, size: 64, offset: 1280)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4269, file: !3025, line: 299, baseType: !30, size: 64, offset: 1344)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4269, file: !3025, line: 300, baseType: !30, size: 64, offset: 1408)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4269, file: !3025, line: 302, baseType: !129, size: 64, offset: 1472)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4269, file: !3025, line: 303, baseType: !67, size: 32, offset: 1536)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4269, file: !3025, line: 305, baseType: !3070, size: 160, offset: 1568)
!4307 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3190, line: 57, baseType: !1170)
!4308 = !{!4309, !4310, !4311, !4312}
!4309 = !DILocalVariable(name: "fp", arg: 1, scope: !4263, file: !4264, line: 28, type: !4267)
!4310 = !DILocalVariable(name: "offset", arg: 2, scope: !4263, file: !4264, line: 28, type: !4307)
!4311 = !DILocalVariable(name: "whence", arg: 3, scope: !4263, file: !4264, line: 28, type: !67)
!4312 = !DILocalVariable(name: "pos", scope: !4313, file: !4264, line: 116, type: !4307)
!4313 = distinct !DILexicalBlock(scope: !4314, file: !4264, line: 112, column: 5)
!4314 = distinct !DILexicalBlock(scope: !4263, file: !4264, line: 51, column: 7)
!4315 = !DILocation(line: 28, column: 15, scope: !4263)
!4316 = !DILocation(line: 28, column: 25, scope: !4263)
!4317 = !DILocation(line: 28, column: 37, scope: !4263)
!4318 = !DILocation(line: 51, column: 11, scope: !4314)
!4319 = !DILocation(line: 51, column: 31, scope: !4314)
!4320 = !DILocation(line: 51, column: 24, scope: !4314)
!4321 = !DILocation(line: 52, column: 7, scope: !4314)
!4322 = !DILocation(line: 52, column: 14, scope: !4314)
!4323 = !{!3819, !608, i64 40}
!4324 = !DILocation(line: 52, column: 35, scope: !4314)
!4325 = !{!3819, !608, i64 32}
!4326 = !DILocation(line: 52, column: 28, scope: !4314)
!4327 = !DILocation(line: 53, column: 7, scope: !4314)
!4328 = !DILocation(line: 53, column: 14, scope: !4314)
!4329 = !{!3819, !608, i64 72}
!4330 = !DILocation(line: 53, column: 28, scope: !4314)
!4331 = !DILocation(line: 51, column: 7, scope: !4263)
!4332 = !DILocation(line: 116, column: 26, scope: !4313)
!4333 = !DILocation(line: 116, column: 19, scope: !4313)
!4334 = !DILocation(line: 116, column: 13, scope: !4313)
!4335 = !DILocation(line: 117, column: 15, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !4313, file: !4264, line: 117, column: 11)
!4337 = !DILocation(line: 117, column: 11, scope: !4313)
!4338 = !DILocation(line: 127, column: 11, scope: !4313)
!4339 = !DILocation(line: 127, column: 18, scope: !4313)
!4340 = !DILocation(line: 128, column: 11, scope: !4313)
!4341 = !DILocation(line: 128, column: 19, scope: !4313)
!4342 = !{!3819, !802, i64 144}
!4343 = !DILocation(line: 159, column: 7, scope: !4313)
!4344 = !DILocation(line: 161, column: 10, scope: !4263)
!4345 = !DILocation(line: 161, column: 3, scope: !4263)
!4346 = !DILocation(line: 162, column: 1, scope: !4263)
