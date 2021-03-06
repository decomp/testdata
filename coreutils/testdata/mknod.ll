; ModuleID = 'coreutils-8.30/src/mknod.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
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
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.34 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.43 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.45 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.47 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), align 8, !dbg !53
@.str.26 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !59
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !64
@.str.53 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.54 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.55 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !68
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !75
@.str.66 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.67 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.68 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.70, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.71, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.72, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.73, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.74, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.75, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.76, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.77, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.78, i32 0, i32 0), i8* null], align 16, !dbg !82
@.str.69 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.70 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.71 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.72 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.73 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.74 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.75 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.76 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.77 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.78 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !112
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !119
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !131
@.str.11.79 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.80 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.81 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.82 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.83 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.84 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.85 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !138
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !145
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !133
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !147
@.str.94 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.95 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.96 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.97 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.98 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.99 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.100 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.101 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.102 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.103 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.104 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.105 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.106 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.107 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.110 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.111 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.112 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.113 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.114 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.115 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !153
@.str.1.126 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.127 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.130 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.131 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.140 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.141 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.144 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.145 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !615 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !620, metadata !DIExpression()), !dbg !639
  call void @llvm.dbg.value(metadata i32 %0, metadata !619, metadata !DIExpression()), !dbg !643
  %3 = icmp eq i32 %0, 0, !dbg !644
  br i1 %3, label %9, label %4, !dbg !645

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !646, !tbaa !648
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !646
  %7 = load i8*, i8** @program_name, align 8, !dbg !646, !tbaa !648
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #10, !dbg !646
  br label %74, !dbg !646

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !652
  %11 = load i8*, i8** @program_name, align 8, !dbg !652, !tbaa !648
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #10, !dbg !652
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !653
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !653, !tbaa !648
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !653
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !654
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !654, !tbaa !648
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #10, !dbg !654
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !659
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !659, !tbaa !648
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !659
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([207 x i8], [207 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !660
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !660, !tbaa !648
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !660
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !661
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !661, !tbaa !648
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !661
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !662
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !662, !tbaa !648
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !662
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([261 x i8], [261 x i8]* @.str.7, i64 0, i64 0), i32 5) #10, !dbg !663
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !663, !tbaa !648
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !663
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.8, i64 0, i64 0), i32 5) #10, !dbg !664
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !664, !tbaa !648
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35), !dbg !664
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.9, i64 0, i64 0), i32 5) #10, !dbg !665
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !665
  %39 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !666
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %39) #10, !dbg !666
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %39, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #10, !dbg !639
  %40 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !667
  call void @llvm.dbg.value(metadata %struct.infomap* %40, metadata !628, metadata !DIExpression()) #10, !dbg !668
  br label %41, !dbg !669

; <label>:41:                                     ; preds = %46, %9
  %42 = phi i8* [ %49, %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), %9 ]
  %43 = phi %struct.infomap* [ %47, %46 ], [ %40, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %43, metadata !628, metadata !DIExpression()) #10, !dbg !668
  %44 = tail call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* nonnull %42) #14, !dbg !669
  %45 = icmp eq i32 %44, 0, !dbg !669
  br i1 %45, label %51, label %46, !dbg !670

; <label>:46:                                     ; preds = %41
  %47 = getelementptr inbounds %struct.infomap, %struct.infomap* %43, i64 1, !dbg !671
  call void @llvm.dbg.value(metadata %struct.infomap* %47, metadata !628, metadata !DIExpression()) #10, !dbg !668
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %47, i64 0, i32 0, !dbg !672
  %49 = load i8*, i8** %48, align 8, !dbg !672, !tbaa !673
  %50 = icmp eq i8* %49, null, !dbg !675
  br i1 %50, label %51, label %41, !dbg !676, !llvm.loop !677

; <label>:51:                                     ; preds = %46, %41
  %52 = phi %struct.infomap* [ %47, %46 ], [ %43, %41 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %52, metadata !628, metadata !DIExpression()) #10, !dbg !668
  call void @llvm.dbg.value(metadata %struct.infomap* %52, metadata !628, metadata !DIExpression()) #10, !dbg !668
  %53 = getelementptr inbounds %struct.infomap, %struct.infomap* %52, i64 0, i32 1, !dbg !680
  %54 = load i8*, i8** %53, align 8, !dbg !680, !tbaa !682
  %55 = icmp eq i8* %54, null, !dbg !683
  %56 = select i1 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* %54, !dbg !684
  call void @llvm.dbg.value(metadata i8* %56, metadata !627, metadata !DIExpression()) #10, !dbg !685
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i64 0, i64 0), i32 5) #10, !dbg !686
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i64 0, i64 0)) #10, !dbg !686
  %59 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !687
  call void @llvm.dbg.value(metadata i8* %59, metadata !635, metadata !DIExpression()) #10, !dbg !688
  %60 = icmp eq i8* %59, null, !dbg !689
  br i1 %60, label %67, label %61, !dbg !691

; <label>:61:                                     ; preds = %51
  %62 = tail call i32 @strncmp(i8* nonnull %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i64 3) #14, !dbg !692
  %63 = icmp eq i32 %62, 0, !dbg !692
  br i1 %63, label %67, label %64, !dbg !693

; <label>:64:                                     ; preds = %61
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.45, i64 0, i64 0), i32 5) #10, !dbg !694
  %66 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !694
  br label %67, !dbg !696

; <label>:67:                                     ; preds = %51, %61, %64
  %68 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.46, i64 0, i64 0), i32 5) #10, !dbg !697
  %69 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !697
  %70 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.47, i64 0, i64 0), i32 5) #10, !dbg !698
  %71 = icmp eq i8* %56, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), !dbg !698
  %72 = select i1 %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), !dbg !698
  %73 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %70, i8* %56, i8* %72) #10, !dbg !698
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %39) #10, !dbg !699
  br label %74

; <label>:74:                                     ; preds = %67, %4
  tail call void @exit(i32 %0) #15, !dbg !700
  unreachable, !dbg !700
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !701 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !706, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.value(metadata i8** %1, metadata !707, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata i8* null, metadata !711, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i8* null, metadata !715, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i8 0, metadata !716, metadata !DIExpression()), !dbg !741
  %6 = load i8*, i8** %1, align 8, !dbg !742, !tbaa !648
  tail call void @set_program_name(i8* %6) #10, !dbg !743
  %7 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !744
  %8 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !745
  %9 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !746
  %10 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !747
  br label %11, !dbg !748

; <label>:11:                                     ; preds = %15, %2
  %12 = phi i8* [ %16, %15 ], [ null, %2 ]
  br label %13, !dbg !749

; <label>:13:                                     ; preds = %20, %11
  call void @llvm.dbg.value(metadata i8* %12, metadata !711, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i8* null, metadata !715, metadata !DIExpression()), !dbg !740
  %14 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !749
  call void @llvm.dbg.value(metadata i32 %14, metadata !712, metadata !DIExpression()), !dbg !750
  switch i32 %14, label %27 [
    i32 -1, label %28
    i32 109, label %15
    i32 90, label %17
    i32 -130, label %23
    i32 -131, label %24
  ], !dbg !748

; <label>:15:                                     ; preds = %13
  %16 = load i8*, i8** @optarg, align 8, !dbg !751, !tbaa !648
  call void @llvm.dbg.value(metadata i8* %16, metadata !711, metadata !DIExpression()), !dbg !739
  br label %11, !dbg !754, !llvm.loop !755

; <label>:17:                                     ; preds = %13
  %18 = load i8*, i8** @optarg, align 8, !dbg !757, !tbaa !648
  %19 = icmp eq i8* %18, null, !dbg !761
  br i1 %19, label %20, label %21, !dbg !762

; <label>:20:                                     ; preds = %17, %21
  br label %13, !dbg !739, !llvm.loop !755

; <label>:21:                                     ; preds = %17
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.15, i64 0, i64 0), i32 5) #10, !dbg !763
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %22) #10, !dbg !765
  br label %20, !dbg !766

; <label>:23:                                     ; preds = %13
  tail call void @usage(i32 0) #16, !dbg !767
  unreachable, !dbg !767

; <label>:24:                                     ; preds = %13
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !768, !tbaa !648
  %26 = load i8*, i8** @Version, align 8, !dbg !768, !tbaa !648
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* null) #10, !dbg !768
  tail call void @exit(i32 0) #15, !dbg !768
  unreachable, !dbg !768

; <label>:27:                                     ; preds = %13
  tail call void @usage(i32 1) #16, !dbg !769
  unreachable, !dbg !769

; <label>:28:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i8* %12, metadata !711, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i8* %12, metadata !711, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i8* %12, metadata !711, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i8* %12, metadata !711, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i32 438, metadata !708, metadata !DIExpression()), !dbg !770
  %29 = icmp ne i8* %12, null, !dbg !771
  br i1 %29, label %30, label %43, !dbg !772

; <label>:30:                                     ; preds = %28
  %31 = tail call %struct.mode_change* @mode_compile(i8* nonnull %12) #10, !dbg !773
  call void @llvm.dbg.value(metadata %struct.mode_change* %31, metadata !720, metadata !DIExpression()), !dbg !774
  %32 = icmp eq %struct.mode_change* %31, null, !dbg !775
  br i1 %32, label %33, label %35, !dbg !777

; <label>:33:                                     ; preds = %30
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32 5) #10, !dbg !778
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %34) #10, !dbg !778
  unreachable, !dbg !778

; <label>:35:                                     ; preds = %30
  %36 = tail call i32 @umask(i32 0) #10, !dbg !779
  call void @llvm.dbg.value(metadata i32 %36, metadata !717, metadata !DIExpression()), !dbg !780
  %37 = tail call i32 @umask(i32 %36) #10, !dbg !781
  %38 = tail call i32 @mode_adjust(i32 438, i1 zeroext false, i32 %36, %struct.mode_change* nonnull %31, i32* null) #10, !dbg !782
  call void @llvm.dbg.value(metadata i32 %38, metadata !708, metadata !DIExpression()), !dbg !770
  %39 = bitcast %struct.mode_change* %31 to i8*, !dbg !783
  tail call void @free(i8* %39) #10, !dbg !784
  %40 = icmp ugt i32 %38, 511, !dbg !785
  br i1 %40, label %41, label %43, !dbg !787

; <label>:41:                                     ; preds = %35
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !788
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %42) #10, !dbg !788
  unreachable, !dbg !788

; <label>:43:                                     ; preds = %35, %28
  %44 = phi i32 [ 438, %28 ], [ %38, %35 ], !dbg !789
  call void @llvm.dbg.value(metadata i32 %44, metadata !708, metadata !DIExpression()), !dbg !770
  %45 = load i32, i32* @optind, align 4, !dbg !790, !tbaa !791
  %46 = icmp slt i32 %45, %0, !dbg !793
  br i1 %46, label %47, label %56, !dbg !794

; <label>:47:                                     ; preds = %43
  %48 = add nsw i32 %45, 1, !dbg !795
  %49 = icmp slt i32 %48, %0, !dbg !796
  br i1 %49, label %50, label %57, !dbg !797

; <label>:50:                                     ; preds = %47
  %51 = sext i32 %48 to i64, !dbg !798
  %52 = getelementptr inbounds i8*, i8** %1, i64 %51, !dbg !798
  %53 = load i8*, i8** %52, align 8, !dbg !798, !tbaa !648
  %54 = load i8, i8* %53, align 1, !dbg !798, !tbaa !799
  %55 = icmp eq i8 %54, 112, !dbg !800
  br i1 %55, label %56, label %57, !dbg !801

; <label>:56:                                     ; preds = %43, %50
  br label %57, !dbg !801

; <label>:57:                                     ; preds = %47, %50, %56
  %58 = phi i1 [ true, %56 ], [ false, %50 ], [ false, %47 ]
  %59 = phi i64 [ 2, %56 ], [ 4, %50 ], [ 4, %47 ]
  call void @llvm.dbg.value(metadata i64 %59, metadata !713, metadata !DIExpression()), !dbg !802
  %60 = sub nsw i32 %0, %45, !dbg !803
  %61 = sext i32 %60 to i64, !dbg !805
  %62 = icmp ugt i64 %59, %61, !dbg !806
  br i1 %62, label %63, label %83, !dbg !807

; <label>:63:                                     ; preds = %57
  br i1 %46, label %66, label %64, !dbg !808

; <label>:64:                                     ; preds = %63
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !810
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %65) #10, !dbg !812
  br label %73, !dbg !812

; <label>:66:                                     ; preds = %63
  %67 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i32 5) #10, !dbg !813
  %68 = add nsw i32 %0, -1, !dbg !814
  %69 = sext i32 %68 to i64, !dbg !815
  %70 = getelementptr inbounds i8*, i8** %1, i64 %69, !dbg !815
  %71 = load i8*, i8** %70, align 8, !dbg !815, !tbaa !648
  %72 = tail call i8* @quote(i8* %71) #10, !dbg !816
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %67, i8* %72) #10, !dbg !817
  br label %73

; <label>:73:                                     ; preds = %66, %64
  br i1 %58, label %82, label %74, !dbg !818

; <label>:74:                                     ; preds = %73
  %75 = load i32, i32* @optind, align 4, !dbg !820, !tbaa !791
  %76 = sub nsw i32 %0, %75, !dbg !821
  %77 = icmp eq i32 %76, 2, !dbg !822
  br i1 %77, label %78, label %82, !dbg !823

; <label>:78:                                     ; preds = %74
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !824, !tbaa !648
  %80 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !824
  %81 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %79, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8* %80) #10, !dbg !824
  br label %82, !dbg !824

; <label>:82:                                     ; preds = %73, %78, %74
  tail call void @usage(i32 1) #16, !dbg !825
  unreachable, !dbg !825

; <label>:83:                                     ; preds = %57
  %84 = icmp ult i64 %59, %61, !dbg !826
  br i1 %84, label %85, label %102, !dbg !828

; <label>:85:                                     ; preds = %83
  %86 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !829
  %87 = load i32, i32* @optind, align 4, !dbg !831, !tbaa !791
  %88 = sext i32 %87 to i64, !dbg !831
  %89 = add nsw i64 %59, %88, !dbg !832
  %90 = getelementptr inbounds i8*, i8** %1, i64 %89, !dbg !833
  %91 = load i8*, i8** %90, align 8, !dbg !833, !tbaa !648
  %92 = tail call i8* @quote(i8* %91) #10, !dbg !834
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %86, i8* %92) #10, !dbg !835
  br i1 %58, label %93, label %101, !dbg !836

; <label>:93:                                     ; preds = %85
  %94 = load i32, i32* @optind, align 4, !dbg !838, !tbaa !791
  %95 = sub nsw i32 %0, %94, !dbg !839
  %96 = icmp eq i32 %95, 4, !dbg !840
  br i1 %96, label %97, label %101, !dbg !841

; <label>:97:                                     ; preds = %93
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !842, !tbaa !648
  %99 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !842
  %100 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %98, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8* %99) #10, !dbg !842
  br label %101, !dbg !842

; <label>:101:                                    ; preds = %97, %93, %85
  tail call void @usage(i32 1) #16, !dbg !843
  unreachable, !dbg !843

; <label>:102:                                    ; preds = %83
  %103 = add nsw i32 %45, 1, !dbg !844
  %104 = sext i32 %103 to i64, !dbg !845
  %105 = getelementptr inbounds i8*, i8** %1, i64 %104, !dbg !845
  %106 = load i8*, i8** %105, align 8, !dbg !845, !tbaa !648
  %107 = load i8, i8* %106, align 1, !dbg !845, !tbaa !799
  %108 = sext i8 %107 to i32, !dbg !845
  switch i32 %108, label %186 [
    i32 98, label %110
    i32 99, label %109
    i32 117, label %109
    i32 112, label %172
  ], !dbg !846

; <label>:109:                                    ; preds = %102, %102
  call void @llvm.dbg.value(metadata i32 8192, metadata !714, metadata !DIExpression()), !dbg !847
  br label %110, !dbg !848

; <label>:110:                                    ; preds = %102, %109
  %111 = phi i32 [ 8192, %109 ], [ 24576, %102 ], !dbg !849
  call void @llvm.dbg.value(metadata i32 %111, metadata !714, metadata !DIExpression()), !dbg !847
  %112 = add nsw i32 %45, 2, !dbg !850
  %113 = sext i32 %112 to i64, !dbg !851
  %114 = getelementptr inbounds i8*, i8** %1, i64 %113, !dbg !851
  %115 = load i8*, i8** %114, align 8, !dbg !851, !tbaa !648
  call void @llvm.dbg.value(metadata i8* %115, metadata !727, metadata !DIExpression()), !dbg !852
  %116 = add nsw i32 %45, 3, !dbg !853
  %117 = sext i32 %116 to i64, !dbg !854
  %118 = getelementptr inbounds i8*, i8** %1, i64 %117, !dbg !854
  %119 = load i8*, i8** %118, align 8, !dbg !854, !tbaa !648
  call void @llvm.dbg.value(metadata i8* %119, metadata !730, metadata !DIExpression()), !dbg !855
  %120 = bitcast i64* %4 to i8*, !dbg !856
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %120) #10, !dbg !856
  %121 = bitcast i64* %5 to i8*, !dbg !856
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %121) #10, !dbg !856
  call void @llvm.dbg.value(metadata i64* %4, metadata !731, metadata !DIExpression(DW_OP_deref)), !dbg !857
  %122 = call i32 @xstrtoumax(i8* %115, i8** null, i32 0, i64* nonnull %4, i8* null) #10, !dbg !858
  %123 = icmp ne i32 %122, 0, !dbg !860
  %124 = load i64, i64* %4, align 8, !dbg !861
  %125 = icmp ugt i64 %124, 4294967295, !dbg !862
  %126 = or i1 %123, %125, !dbg !863
  br i1 %126, label %127, label %130, !dbg !863

; <label>:127:                                    ; preds = %110
  %128 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !864
  %129 = call i8* @quote(i8* %115) #10, !dbg !864
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %128, i8* %129) #10, !dbg !864
  unreachable, !dbg !864

; <label>:130:                                    ; preds = %110
  call void @llvm.dbg.value(metadata i64* %5, metadata !735, metadata !DIExpression(DW_OP_deref)), !dbg !865
  %131 = call i32 @xstrtoumax(i8* %119, i8** null, i32 0, i64* nonnull %5, i8* null) #10, !dbg !866
  %132 = icmp eq i32 %131, 0, !dbg !868
  br i1 %132, label %133, label %136, !dbg !869

; <label>:133:                                    ; preds = %130
  %134 = load i64, i64* %5, align 8, !dbg !870, !tbaa !871
  call void @llvm.dbg.value(metadata i64 %134, metadata !735, metadata !DIExpression()), !dbg !865
  %135 = icmp ugt i64 %134, 4294967295, !dbg !873
  br i1 %135, label %136, label %139, !dbg !874

; <label>:136:                                    ; preds = %130, %133
  %137 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !875
  %138 = call i8* @quote(i8* %119) #10, !dbg !875
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %137, i8* %138) #10, !dbg !875
  unreachable, !dbg !875

; <label>:139:                                    ; preds = %133
  %140 = load i64, i64* %4, align 8, !dbg !876, !tbaa !871
  call void @llvm.dbg.value(metadata i64 %140, metadata !731, metadata !DIExpression()), !dbg !857
  %141 = shl i64 %140, 8, !dbg !877
  %142 = and i64 %141, 1048320, !dbg !877
  call void @llvm.dbg.value(metadata i64 %142, metadata !885, metadata !DIExpression()), !dbg !877
  %143 = shl i64 %140, 32, !dbg !877
  %144 = and i64 %143, -17592186044416, !dbg !877
  call void @llvm.dbg.value(metadata i64 undef, metadata !885, metadata !DIExpression()), !dbg !877
  %145 = and i64 %134, 255, !dbg !877
  call void @llvm.dbg.value(metadata i64 undef, metadata !885, metadata !DIExpression()), !dbg !877
  %146 = shl i64 %134, 12, !dbg !877
  %147 = and i64 %146, 17592184995840, !dbg !877
  %148 = or i64 %147, %145, !dbg !877
  %149 = or i64 %148, %142, !dbg !877
  %150 = or i64 %149, %144, !dbg !877
  call void @llvm.dbg.value(metadata i64 %150, metadata !885, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata i64 %150, metadata !736, metadata !DIExpression()), !dbg !887
  %151 = icmp eq i64 %150, -1, !dbg !888
  br i1 %151, label %152, label %154, !dbg !890

; <label>:152:                                    ; preds = %139
  %153 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !891
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %153, i8* %115, i8* %119) #10, !dbg !891
  unreachable, !dbg !891

; <label>:154:                                    ; preds = %139
  %155 = load i32, i32* @optind, align 4, !dbg !892, !tbaa !791
  %156 = sext i32 %155 to i64, !dbg !894
  %157 = getelementptr inbounds i8*, i8** %1, i64 %156, !dbg !894
  %158 = load i8*, i8** %157, align 8, !dbg !894, !tbaa !648
  %159 = or i32 %111, %44, !dbg !895
  %160 = bitcast i64* %3 to i8*, !dbg !896
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %160), !dbg !896
  call void @llvm.dbg.value(metadata i8* %158, metadata !902, metadata !DIExpression()) #10, !dbg !896
  call void @llvm.dbg.value(metadata i32 %159, metadata !903, metadata !DIExpression()) #10, !dbg !896
  call void @llvm.dbg.value(metadata i64 %150, metadata !904, metadata !DIExpression()) #10, !dbg !896
  store i64 %150, i64* %3, align 8, !tbaa !871
  call void @llvm.dbg.value(metadata i64* %3, metadata !904, metadata !DIExpression(DW_OP_deref)) #10, !dbg !896
  %161 = call i32 @__xmknod(i32 0, i8* nonnull %158, i32 %159, i64* nonnull %3) #10, !dbg !906
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %160), !dbg !907
  %162 = icmp eq i32 %161, 0, !dbg !908
  br i1 %162, label %171, label %163, !dbg !909

; <label>:163:                                    ; preds = %154
  %164 = tail call i32* @__errno_location() #17, !dbg !910
  %165 = load i32, i32* %164, align 4, !dbg !910, !tbaa !791
  %166 = load i32, i32* @optind, align 4, !dbg !910, !tbaa !791
  %167 = sext i32 %166 to i64, !dbg !910
  %168 = getelementptr inbounds i8*, i8** %1, i64 %167, !dbg !910
  %169 = load i8*, i8** %168, align 8, !dbg !910, !tbaa !648
  %170 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %169) #10, !dbg !910
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %165, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %170) #10, !dbg !910
  unreachable, !dbg !910

; <label>:171:                                    ; preds = %154
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %121) #10, !dbg !911
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %120) #10, !dbg !911
  br label %194, !dbg !912

; <label>:172:                                    ; preds = %102
  %173 = sext i32 %45 to i64, !dbg !913
  %174 = getelementptr inbounds i8*, i8** %1, i64 %173, !dbg !913
  %175 = load i8*, i8** %174, align 8, !dbg !913, !tbaa !648
  %176 = tail call i32 @mkfifo(i8* %175, i32 %44) #10, !dbg !915
  %177 = icmp eq i32 %176, 0, !dbg !916
  br i1 %177, label %194, label %178, !dbg !917

; <label>:178:                                    ; preds = %172
  %179 = tail call i32* @__errno_location() #17, !dbg !918
  %180 = load i32, i32* %179, align 4, !dbg !918, !tbaa !791
  %181 = load i32, i32* @optind, align 4, !dbg !918, !tbaa !791
  %182 = sext i32 %181 to i64, !dbg !918
  %183 = getelementptr inbounds i8*, i8** %1, i64 %182, !dbg !918
  %184 = load i8*, i8** %183, align 8, !dbg !918, !tbaa !648
  %185 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %184) #10, !dbg !918
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %180, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %185) #10, !dbg !918
  unreachable, !dbg !918

; <label>:186:                                    ; preds = %102
  %187 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0), i32 5) #10, !dbg !919
  %188 = load i32, i32* @optind, align 4, !dbg !920, !tbaa !791
  %189 = add nsw i32 %188, 1, !dbg !921
  %190 = sext i32 %189 to i64, !dbg !922
  %191 = getelementptr inbounds i8*, i8** %1, i64 %190, !dbg !922
  %192 = load i8*, i8** %191, align 8, !dbg !922, !tbaa !648
  %193 = tail call i8* @quote(i8* %192) #10, !dbg !923
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %187, i8* %193) #10, !dbg !924
  tail call void @usage(i32 1) #16, !dbg !925
  unreachable, !dbg !925

; <label>:194:                                    ; preds = %172, %171
  br i1 %29, label %195, label %211, !dbg !926

; <label>:195:                                    ; preds = %194
  %196 = load i32, i32* @optind, align 4, !dbg !928, !tbaa !791
  %197 = sext i32 %196 to i64, !dbg !929
  %198 = getelementptr inbounds i8*, i8** %1, i64 %197, !dbg !929
  %199 = load i8*, i8** %198, align 8, !dbg !929, !tbaa !648
  %200 = call i32 @chmod(i8* %199, i32 %44) #10, !dbg !930
  %201 = icmp eq i32 %200, 0, !dbg !931
  br i1 %201, label %211, label %202, !dbg !932

; <label>:202:                                    ; preds = %195
  %203 = tail call i32* @__errno_location() #17, !dbg !933
  %204 = load i32, i32* %203, align 4, !dbg !933, !tbaa !791
  %205 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.32, i64 0, i64 0), i32 5) #10, !dbg !933
  %206 = load i32, i32* @optind, align 4, !dbg !933, !tbaa !791
  %207 = sext i32 %206 to i64, !dbg !933
  %208 = getelementptr inbounds i8*, i8** %1, i64 %207, !dbg !933
  %209 = load i8*, i8** %208, align 8, !dbg !933, !tbaa !648
  %210 = call i8* @quotearg_style(i32 4, i8* %209) #10, !dbg !933
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %204, i8* %205, i8* %210) #10, !dbg !933
  unreachable, !dbg !933

; <label>:211:                                    ; preds = %195, %194
  ret i32 0, !dbg !934
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

; Function Attrs: nounwind
declare i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @mkfifo(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @chmod(i8* nocapture readonly, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !935 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !937, metadata !DIExpression()), !dbg !938
  store i8* %0, i8** @file_name, align 8, !dbg !939, !tbaa !648
  ret void, !dbg !940
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !941 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !945, metadata !DIExpression()), !dbg !946
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !947, !tbaa !948
  ret void, !dbg !950
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !951 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !956, !tbaa !648
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !957
  %3 = icmp eq i32 %2, 0, !dbg !958
  br i1 %3, label %22, label %4, !dbg !959

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !960, !tbaa !948, !range !961
  %6 = icmp eq i8 %5, 0, !dbg !960
  br i1 %6, label %11, label %7, !dbg !962

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !963
  %9 = load i32, i32* %8, align 4, !dbg !963, !tbaa !791
  %10 = icmp eq i32 %9, 32, !dbg !964
  br i1 %10, label %22, label %11, !dbg !965

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0), i32 5) #10, !dbg !966
  call void @llvm.dbg.value(metadata i8* %12, metadata !953, metadata !DIExpression()), !dbg !967
  %13 = load i8*, i8** @file_name, align 8, !dbg !968, !tbaa !648
  %14 = icmp eq i8* %13, null, !dbg !968
  %15 = tail call i32* @__errno_location() #17, !dbg !970
  %16 = load i32, i32* %15, align 4, !dbg !970, !tbaa !791
  br i1 %14, label %19, label %17, !dbg !971

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !972
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.54, i64 0, i64 0), i8* %18, i8* %12) #10, !dbg !973
  br label %20, !dbg !973

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.55, i64 0, i64 0), i8* %12) #10, !dbg !974
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !975, !tbaa !791
  tail call void @_exit(i32 %21) #15, !dbg !976
  unreachable, !dbg !976

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !977, !tbaa !648
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #10, !dbg !979
  %25 = icmp eq i32 %24, 0, !dbg !980
  br i1 %25, label %28, label %26, !dbg !981

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !982, !tbaa !791
  tail call void @_exit(i32 %27) #15, !dbg !983
  unreachable, !dbg !983

; <label>:28:                                     ; preds = %22
  ret void, !dbg !984
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias %struct.mode_change* @mode_compile(i8*) local_unnamed_addr #7 !dbg !985 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !997, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata i64 0, metadata !999, metadata !DIExpression()), !dbg !1022
  %2 = load i8, i8* %0, align 1, !dbg !1023, !tbaa !799
  %3 = and i8 %2, -8, !dbg !1024
  %4 = icmp eq i8 %3, 48, !dbg !1024
  br i1 %4, label %5, label %39, !dbg !1024

; <label>:5:                                      ; preds = %1, %15
  %6 = phi i8 [ %16, %15 ], [ %2, %1 ], !dbg !1025
  %7 = phi i32 [ %13, %15 ], [ 0, %1 ], !dbg !1027
  %8 = phi i8* [ %10, %15 ], [ %0, %1 ], !dbg !1027
  call void @llvm.dbg.value(metadata i8* %8, metadata !1000, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i32 %7, metadata !1001, metadata !DIExpression()), !dbg !1029
  %9 = shl i32 %7, 3, !dbg !1030
  %10 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !1031
  call void @llvm.dbg.value(metadata i8* %10, metadata !1000, metadata !DIExpression()), !dbg !1028
  %11 = sext i8 %6 to i32, !dbg !1025
  %12 = add i32 %9, -48, !dbg !1032
  %13 = add i32 %12, %11, !dbg !1033
  call void @llvm.dbg.value(metadata i32 %13, metadata !1001, metadata !DIExpression()), !dbg !1029
  %14 = icmp ugt i32 %13, 4095, !dbg !1034
  br i1 %14, label %151, label %15, !dbg !1036

; <label>:15:                                     ; preds = %5
  %16 = load i8, i8* %10, align 1, !dbg !1037, !tbaa !799
  %17 = and i8 %16, -8, !dbg !1038
  %18 = icmp eq i8 %17, 48, !dbg !1038
  br i1 %18, label %5, label %19, !dbg !1038, !llvm.loop !1039

; <label>:19:                                     ; preds = %15
  %20 = icmp eq i8 %16, 0, !dbg !1042
  br i1 %20, label %21, label %151, !dbg !1044

; <label>:21:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i32 %13, metadata !1004, metadata !DIExpression()), !dbg !1045
  %22 = ptrtoint i8* %10 to i64, !dbg !1046
  %23 = ptrtoint i8* %0 to i64, !dbg !1046
  %24 = sub i64 %22, %23, !dbg !1046
  %25 = icmp slt i64 %24, 5, !dbg !1047
  %26 = and i32 %13, 3072, !dbg !1048
  %27 = or i32 %26, 1023, !dbg !1049
  %28 = select i1 %25, i32 %27, i32 4095, !dbg !1050
  call void @llvm.dbg.value(metadata i32 %28, metadata !1005, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.value(metadata i32 %13, metadata !1052, metadata !DIExpression()) #10, !dbg !1059
  call void @llvm.dbg.value(metadata i32 %28, metadata !1057, metadata !DIExpression()) #10, !dbg !1061
  %29 = tail call noalias i8* @xmalloc(i64 32) #10, !dbg !1062
  %30 = bitcast i8* %29 to %struct.mode_change*, !dbg !1062
  call void @llvm.dbg.value(metadata %struct.mode_change* %30, metadata !1058, metadata !DIExpression()) #10, !dbg !1063
  store i8 61, i8* %29, align 4, !dbg !1064, !tbaa !1065
  %31 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !1067
  store i8 1, i8* %31, align 1, !dbg !1068, !tbaa !1069
  %32 = getelementptr inbounds i8, i8* %29, i64 4, !dbg !1070
  %33 = bitcast i8* %32 to i32*, !dbg !1070
  store i32 4095, i32* %33, align 4, !dbg !1071, !tbaa !1072
  %34 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !1073
  %35 = bitcast i8* %34 to i32*, !dbg !1073
  store i32 %13, i32* %35, align 4, !dbg !1074, !tbaa !1075
  %36 = getelementptr inbounds i8, i8* %29, i64 12, !dbg !1076
  %37 = bitcast i8* %36 to i32*, !dbg !1076
  store i32 %28, i32* %37, align 4, !dbg !1077, !tbaa !1078
  %38 = getelementptr inbounds i8, i8* %29, i64 17, !dbg !1079
  store i8 0, i8* %38, align 1, !dbg !1080, !tbaa !1069
  br label %151, !dbg !1081

; <label>:39:                                     ; preds = %1, %44
  %40 = phi i8 [ %48, %44 ], [ %2, %1 ], !dbg !1082
  %41 = phi i8* [ %47, %44 ], [ %0, %1 ], !dbg !1085
  %42 = phi i64 [ %46, %44 ], [ 1, %1 ], !dbg !1085
  call void @llvm.dbg.value(metadata i64 %42, metadata !1006, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i8* %41, metadata !1000, metadata !DIExpression()), !dbg !1028
  switch i8 %40, label %43 [
    i8 0, label %49
    i8 61, label %44
    i8 43, label %44
    i8 45, label %44
  ], !dbg !1087

; <label>:43:                                     ; preds = %39
  br label %44, !dbg !1088

; <label>:44:                                     ; preds = %39, %39, %39, %43
  %45 = phi i64 [ 0, %43 ], [ 1, %39 ], [ 1, %39 ], [ 1, %39 ]
  %46 = add i64 %45, %42, !dbg !1089
  call void @llvm.dbg.value(metadata i64 %46, metadata !1006, metadata !DIExpression()), !dbg !1086
  %47 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !1090
  call void @llvm.dbg.value(metadata i8* %47, metadata !1000, metadata !DIExpression()), !dbg !1028
  %48 = load i8, i8* %47, align 1, !dbg !1082, !tbaa !799
  br label %39, !dbg !1091, !llvm.loop !1092

; <label>:49:                                     ; preds = %39
  call void @llvm.dbg.value(metadata i64 %42, metadata !1006, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %42, metadata !1006, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %42, metadata !1006, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %42, metadata !1006, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %42, metadata !1006, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %42, metadata !1006, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %42, metadata !1094, metadata !DIExpression()) #10, !dbg !1100
  call void @llvm.dbg.value(metadata i64 16, metadata !1099, metadata !DIExpression()) #10, !dbg !1102
  %50 = icmp ugt i64 %42, 576460752303423487, !dbg !1103
  br i1 %50, label %51, label %52, !dbg !1105

; <label>:51:                                     ; preds = %49
  tail call void @xalloc_die() #15, !dbg !1106
  unreachable, !dbg !1106

; <label>:52:                                     ; preds = %49
  %53 = shl i64 %42, 4, !dbg !1107
  %54 = tail call noalias i8* @xmalloc(i64 %53) #10, !dbg !1108
  %55 = bitcast i8* %54 to %struct.mode_change*, !dbg !1109
  call void @llvm.dbg.value(metadata %struct.mode_change* %55, metadata !998, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %0, metadata !1000, metadata !DIExpression()), !dbg !1028
  br label %56, !dbg !1111

; <label>:56:                                     ; preds = %146, %52
  %57 = phi i8* [ %0, %52 ], [ %147, %146 ], !dbg !1112
  %58 = phi i64 [ 0, %52 ], [ %131, %146 ], !dbg !1022
  call void @llvm.dbg.value(metadata i64 %58, metadata !999, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.value(metadata i8* %57, metadata !1000, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i32 0, metadata !1008, metadata !DIExpression()), !dbg !1113
  br label %59, !dbg !1114

; <label>:59:                                     ; preds = %68, %56
  %60 = phi i8* [ %57, %56 ], [ %71, %68 ], !dbg !1115
  %61 = phi i32 [ 0, %56 ], [ %70, %68 ], !dbg !1118
  call void @llvm.dbg.value(metadata i32 %61, metadata !1008, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8* %60, metadata !1000, metadata !DIExpression()), !dbg !1028
  %62 = load i8, i8* %60, align 1, !dbg !1120, !tbaa !799
  %63 = sext i8 %62 to i32, !dbg !1120
  switch i32 %63, label %150 [
    i32 117, label %68
    i32 103, label %65
    i32 111, label %66
    i32 97, label %67
    i32 61, label %64
    i32 43, label %64
    i32 45, label %64
  ], !dbg !1121

; <label>:64:                                     ; preds = %59, %59, %59
  call void @llvm.dbg.value(metadata i8* %60, metadata !1000, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i8* %60, metadata !1000, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i8* %60, metadata !1000, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i32 %61, metadata !1008, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i32 %61, metadata !1008, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i32 %61, metadata !1008, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8* %60, metadata !1000, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i8* %60, metadata !1000, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i8* %60, metadata !1000, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i32 %61, metadata !1008, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i32 %61, metadata !1008, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i32 %61, metadata !1008, metadata !DIExpression()), !dbg !1113
  br label %72, !dbg !1122

; <label>:65:                                     ; preds = %59
  br label %68, !dbg !1123

; <label>:66:                                     ; preds = %59
  br label %68, !dbg !1124

; <label>:67:                                     ; preds = %59
  br label %68, !dbg !1125

; <label>:68:                                     ; preds = %59, %65, %66, %67
  %69 = phi i32 [ 1080, %65 ], [ 519, %66 ], [ 4095, %67 ], [ 2496, %59 ]
  %70 = or i32 %61, %69, !dbg !1118
  call void @llvm.dbg.value(metadata i32 %70, metadata !1008, metadata !DIExpression()), !dbg !1113
  %71 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1126
  call void @llvm.dbg.value(metadata i8* %71, metadata !1000, metadata !DIExpression()), !dbg !1028
  br label %59, !dbg !1127, !llvm.loop !1128

; <label>:72:                                     ; preds = %145, %64
  %73 = phi i8 [ %62, %64 ], [ %144, %145 ], !dbg !1131
  %74 = phi i8* [ %60, %64 ], [ %126, %145 ], !dbg !1132
  %75 = phi i32 [ %61, %64 ], [ %127, %145 ], !dbg !1113
  %76 = phi i64 [ %58, %64 ], [ %131, %145 ], !dbg !1132
  call void @llvm.dbg.value(metadata i64 %76, metadata !999, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.value(metadata i32 %75, metadata !1008, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8* %74, metadata !1000, metadata !DIExpression()), !dbg !1028
  %77 = getelementptr inbounds i8, i8* %74, i64 1, !dbg !1122
  call void @llvm.dbg.value(metadata i8* %77, metadata !1000, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i8 %73, metadata !1012, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i32 0, metadata !1015, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i8 3, metadata !1016, metadata !DIExpression()), !dbg !1135
  %78 = load i8, i8* %77, align 1, !dbg !1136, !tbaa !799
  %79 = sext i8 %78 to i32, !dbg !1136
  switch i32 %79, label %104 [
    i32 48, label %80
    i32 49, label %80
    i32 50, label %80
    i32 51, label %80
    i32 52, label %80
    i32 53, label %80
    i32 54, label %80
    i32 55, label %80
    i32 117, label %98
    i32 103, label %100
    i32 111, label %102
  ], !dbg !1137

; <label>:80:                                     ; preds = %72, %72, %72, %72, %72, %72, %72, %72
  br label %81, !dbg !1138

; <label>:81:                                     ; preds = %80, %91
  %82 = phi i8 [ %92, %91 ], [ %78, %80 ], !dbg !1140
  %83 = phi i8* [ %86, %91 ], [ %77, %80 ], !dbg !1141
  %84 = phi i32 [ %89, %91 ], [ 0, %80 ], !dbg !1141
  call void @llvm.dbg.value(metadata i32 %84, metadata !1018, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata i8* %83, metadata !1000, metadata !DIExpression()), !dbg !1028
  %85 = shl i32 %84, 3, !dbg !1138
  %86 = getelementptr inbounds i8, i8* %83, i64 1, !dbg !1143
  call void @llvm.dbg.value(metadata i8* %86, metadata !1000, metadata !DIExpression()), !dbg !1028
  %87 = sext i8 %82 to i32, !dbg !1140
  %88 = add i32 %85, -48, !dbg !1144
  %89 = add i32 %88, %87, !dbg !1145
  call void @llvm.dbg.value(metadata i32 %89, metadata !1018, metadata !DIExpression()), !dbg !1142
  %90 = icmp ugt i32 %89, 4095, !dbg !1146
  br i1 %90, label %150, label %91, !dbg !1148

; <label>:91:                                     ; preds = %81
  %92 = load i8, i8* %86, align 1, !dbg !1149, !tbaa !799
  %93 = and i8 %92, -8, !dbg !1150
  %94 = icmp eq i8 %93, 48, !dbg !1150
  br i1 %94, label %81, label %95, !dbg !1150, !llvm.loop !1151

; <label>:95:                                     ; preds = %91
  %96 = icmp eq i32 %75, 0, !dbg !1154
  br i1 %96, label %97, label %150, !dbg !1156

; <label>:97:                                     ; preds = %95
  switch i8 %92, label %150 [
    i8 0, label %125
    i8 44, label %125
  ], !dbg !1157

; <label>:98:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 448, metadata !1014, metadata !DIExpression()), !dbg !1158
  %99 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !1159
  call void @llvm.dbg.value(metadata i8* %99, metadata !1000, metadata !DIExpression()), !dbg !1028
  br label %125, !dbg !1160

; <label>:100:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 56, metadata !1014, metadata !DIExpression()), !dbg !1158
  %101 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !1161
  call void @llvm.dbg.value(metadata i8* %101, metadata !1000, metadata !DIExpression()), !dbg !1028
  br label %125, !dbg !1162

; <label>:102:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 7, metadata !1014, metadata !DIExpression()), !dbg !1158
  %103 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %103, metadata !1000, metadata !DIExpression()), !dbg !1028
  br label %125, !dbg !1164

; <label>:104:                                    ; preds = %72, %120
  %105 = phi i8 [ %124, %120 ], [ %78, %72 ], !dbg !1165
  %106 = phi i8* [ %123, %120 ], [ %77, %72 ], !dbg !1168
  %107 = phi i32 [ %121, %120 ], [ 0, %72 ], !dbg !1169
  %108 = phi i8 [ %122, %120 ], [ 1, %72 ], !dbg !1171
  call void @llvm.dbg.value(metadata i8 %108, metadata !1016, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.value(metadata i32 %107, metadata !1014, metadata !DIExpression()), !dbg !1158
  call void @llvm.dbg.value(metadata i8* %106, metadata !1000, metadata !DIExpression()), !dbg !1028
  %109 = sext i8 %105 to i32, !dbg !1165
  switch i32 %109, label %125 [
    i32 114, label %110
    i32 119, label %112
    i32 120, label %114
    i32 88, label %120
    i32 115, label %116
    i32 116, label %118
  ], !dbg !1172

; <label>:110:                                    ; preds = %104
  %111 = or i32 %107, 292, !dbg !1173
  call void @llvm.dbg.value(metadata i32 %111, metadata !1014, metadata !DIExpression()), !dbg !1158
  br label %120, !dbg !1174

; <label>:112:                                    ; preds = %104
  %113 = or i32 %107, 146, !dbg !1175
  call void @llvm.dbg.value(metadata i32 %113, metadata !1014, metadata !DIExpression()), !dbg !1158
  br label %120, !dbg !1176

; <label>:114:                                    ; preds = %104
  %115 = or i32 %107, 73, !dbg !1177
  call void @llvm.dbg.value(metadata i32 %115, metadata !1014, metadata !DIExpression()), !dbg !1158
  br label %120, !dbg !1178

; <label>:116:                                    ; preds = %104
  %117 = or i32 %107, 3072, !dbg !1179
  call void @llvm.dbg.value(metadata i32 %117, metadata !1014, metadata !DIExpression()), !dbg !1158
  br label %120, !dbg !1180

; <label>:118:                                    ; preds = %104
  %119 = or i32 %107, 512, !dbg !1181
  call void @llvm.dbg.value(metadata i32 %119, metadata !1014, metadata !DIExpression()), !dbg !1158
  br label %120, !dbg !1182

; <label>:120:                                    ; preds = %104, %110, %112, %114, %116, %118
  %121 = phi i32 [ %119, %118 ], [ %117, %116 ], [ %115, %114 ], [ %113, %112 ], [ %111, %110 ], [ %107, %104 ], !dbg !1169
  %122 = phi i8 [ %108, %118 ], [ %108, %116 ], [ %108, %114 ], [ %108, %112 ], [ %108, %110 ], [ 2, %104 ], !dbg !1183
  call void @llvm.dbg.value(metadata i8 %122, metadata !1016, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.value(metadata i32 %121, metadata !1014, metadata !DIExpression()), !dbg !1158
  %123 = getelementptr inbounds i8, i8* %106, i64 1, !dbg !1184
  call void @llvm.dbg.value(metadata i8* %123, metadata !1000, metadata !DIExpression()), !dbg !1028
  %124 = load i8, i8* %123, align 1, !dbg !1165, !tbaa !799
  br label %104, !dbg !1185, !llvm.loop !1186

; <label>:125:                                    ; preds = %104, %97, %97, %102, %100, %98
  %126 = phi i8* [ %103, %102 ], [ %101, %100 ], [ %99, %98 ], [ %86, %97 ], [ %86, %97 ], [ %106, %104 ], !dbg !1141
  %127 = phi i32 [ %75, %102 ], [ %75, %100 ], [ %75, %98 ], [ 4095, %97 ], [ 4095, %97 ], [ %75, %104 ], !dbg !1113
  %128 = phi i32 [ 7, %102 ], [ 56, %100 ], [ 448, %98 ], [ %89, %97 ], [ %89, %97 ], [ %107, %104 ]
  %129 = phi i32 [ 0, %102 ], [ 0, %100 ], [ 0, %98 ], [ 4095, %97 ], [ 4095, %97 ], [ 0, %104 ], !dbg !1134
  %130 = phi i8 [ 3, %102 ], [ 3, %100 ], [ 3, %98 ], [ 1, %97 ], [ 1, %97 ], [ %108, %104 ], !dbg !1132
  call void @llvm.dbg.value(metadata i8 %130, metadata !1016, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.value(metadata i32 %129, metadata !1015, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i32 %128, metadata !1014, metadata !DIExpression()), !dbg !1158
  call void @llvm.dbg.value(metadata i32 %127, metadata !1008, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8* %126, metadata !1000, metadata !DIExpression()), !dbg !1028
  %131 = add i64 %76, 1, !dbg !1189
  call void @llvm.dbg.value(metadata i64 %131, metadata !999, metadata !DIExpression()), !dbg !1022
  %132 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 0, !dbg !1190
  store i8 %73, i8* %132, align 4, !dbg !1191, !tbaa !1065
  %133 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 1, !dbg !1192
  store i8 %130, i8* %133, align 1, !dbg !1193, !tbaa !1069
  %134 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 2, !dbg !1194
  store i32 %127, i32* %134, align 4, !dbg !1195, !tbaa !1072
  %135 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 3, !dbg !1196
  store i32 %128, i32* %135, align 4, !dbg !1197, !tbaa !1075
  %136 = icmp eq i32 %129, 0, !dbg !1198
  br i1 %136, label %137, label %141, !dbg !1198

; <label>:137:                                    ; preds = %125
  %138 = icmp eq i32 %127, 0, !dbg !1199
  %139 = select i1 %138, i32 -1, i32 %127, !dbg !1199
  %140 = and i32 %139, %128, !dbg !1199
  br label %141, !dbg !1199

; <label>:141:                                    ; preds = %125, %137
  %142 = phi i32 [ %129, %125 ], [ %140, %137 ], !dbg !1198
  %143 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 4, !dbg !1200
  store i32 %142, i32* %143, align 4, !dbg !1201, !tbaa !1078
  call void @llvm.dbg.value(metadata i64 %76, metadata !999, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.value(metadata i32 %75, metadata !1008, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8* %86, metadata !1000, metadata !DIExpression()), !dbg !1028
  %144 = load i8, i8* %126, align 1, !dbg !1202, !tbaa !799
  switch i8 %144, label %150 [
    i8 61, label %145
    i8 43, label %145
    i8 45, label %145
    i8 44, label %146
    i8 0, label %148
  ], !dbg !1203

; <label>:145:                                    ; preds = %141, %141, %141
  br label %72, !dbg !1022

; <label>:146:                                    ; preds = %141
  call void @llvm.dbg.value(metadata i8* %126, metadata !1000, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i8* %126, metadata !1000, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i8* %126, metadata !1000, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i8* %126, metadata !1000, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i8* %126, metadata !1000, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i8* %126, metadata !1000, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i32 %128, metadata !1014, metadata !DIExpression()), !dbg !1158
  call void @llvm.dbg.value(metadata i64 %131, metadata !999, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.value(metadata i8* %126, metadata !1000, metadata !DIExpression()), !dbg !1028
  %147 = getelementptr inbounds i8, i8* %126, i64 1, !dbg !1204
  call void @llvm.dbg.value(metadata i8* %147, metadata !1000, metadata !DIExpression()), !dbg !1028
  br label %56, !dbg !1205, !llvm.loop !1206

; <label>:148:                                    ; preds = %141
  %149 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %131, i32 1, !dbg !1209
  store i8 0, i8* %149, align 1, !dbg !1212, !tbaa !1069
  br label %151, !dbg !1213

; <label>:150:                                    ; preds = %59, %95, %97, %141, %81
  tail call void @free(i8* %54) #10, !dbg !1214
  br label %151, !dbg !1215

; <label>:151:                                    ; preds = %5, %21, %19, %150, %148
  %152 = phi %struct.mode_change* [ null, %150 ], [ %55, %148 ], [ %30, %21 ], [ null, %19 ], [ null, %5 ]
  ret %struct.mode_change* %152, !dbg !1216
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias %struct.mode_change* @mode_create_from_ref(i8*) local_unnamed_addr #7 !dbg !1217 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1219, metadata !DIExpression()), !dbg !1257
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !1258
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %3) #10, !dbg !1258
  call void @llvm.dbg.value(metadata %struct.stat* %2, metadata !1220, metadata !DIExpression(DW_OP_deref)), !dbg !1259
  call void @llvm.dbg.value(metadata i8* %0, metadata !1260, metadata !DIExpression()) #10, !dbg !1267
  call void @llvm.dbg.value(metadata %struct.stat* %2, metadata !1266, metadata !DIExpression()) #10, !dbg !1267
  %4 = call i32 @__xstat(i32 1, i8* nonnull %0, %struct.stat* nonnull %2) #10, !dbg !1270
  %5 = icmp eq i32 %4, 0, !dbg !1271
  br i1 %5, label %6, label %19, !dbg !1272

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 3, !dbg !1273
  %8 = load i32, i32* %7, align 8, !dbg !1273, !tbaa !1274
  call void @llvm.dbg.value(metadata i32 %8, metadata !1052, metadata !DIExpression()) #10, !dbg !1277
  call void @llvm.dbg.value(metadata i32 4095, metadata !1057, metadata !DIExpression()) #10, !dbg !1279
  %9 = call noalias i8* @xmalloc(i64 32) #10, !dbg !1280
  %10 = bitcast i8* %9 to %struct.mode_change*, !dbg !1280
  call void @llvm.dbg.value(metadata %struct.mode_change* %10, metadata !1058, metadata !DIExpression()) #10, !dbg !1281
  store i8 61, i8* %9, align 4, !dbg !1282, !tbaa !1065
  %11 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !1283
  store i8 1, i8* %11, align 1, !dbg !1284, !tbaa !1069
  %12 = getelementptr inbounds i8, i8* %9, i64 4, !dbg !1285
  %13 = bitcast i8* %12 to i32*, !dbg !1285
  store i32 4095, i32* %13, align 4, !dbg !1286, !tbaa !1072
  %14 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !1287
  %15 = bitcast i8* %14 to i32*, !dbg !1287
  store i32 %8, i32* %15, align 4, !dbg !1288, !tbaa !1075
  %16 = getelementptr inbounds i8, i8* %9, i64 12, !dbg !1289
  %17 = bitcast i8* %16 to i32*, !dbg !1289
  store i32 4095, i32* %17, align 4, !dbg !1290, !tbaa !1078
  %18 = getelementptr inbounds i8, i8* %9, i64 17, !dbg !1291
  store i8 0, i8* %18, align 1, !dbg !1292, !tbaa !1069
  br label %19, !dbg !1293

; <label>:19:                                     ; preds = %1, %6
  %20 = phi %struct.mode_change* [ %10, %6 ], [ null, %1 ], !dbg !1294
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %3) #10, !dbg !1295
  ret %struct.mode_change* %20, !dbg !1295
}

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @mode_adjust(i32, i1 zeroext, i32, %struct.mode_change* nocapture readonly, i32*) local_unnamed_addr #7 !dbg !1296 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1303, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i1 %1, metadata !1304, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i32 %2, metadata !1305, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata %struct.mode_change* %3, metadata !1306, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32* %4, metadata !1307, metadata !DIExpression()), !dbg !1323
  %6 = and i32 %0, 4095, !dbg !1324
  call void @llvm.dbg.value(metadata i32 %6, metadata !1308, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 0, metadata !1309, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata %struct.mode_change* %3, metadata !1306, metadata !DIExpression()), !dbg !1322
  %7 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %3, i64 0, i32 1, !dbg !1327
  %8 = load i8, i8* %7, align 1, !dbg !1327, !tbaa !1069
  %9 = icmp eq i8 %8, 0, !dbg !1328
  br i1 %9, label %81, label %10, !dbg !1329

; <label>:10:                                     ; preds = %5
  %11 = select i1 %1, i32 3072, i32 0
  %12 = xor i32 %2, -1
  %13 = zext i1 %1 to i32
  br label %14, !dbg !1329

; <label>:14:                                     ; preds = %10, %74
  %15 = phi i8 [ %8, %10 ], [ %79, %74 ]
  %16 = phi %struct.mode_change* [ %3, %10 ], [ %77, %74 ]
  %17 = phi i32 [ %6, %10 ], [ %76, %74 ]
  %18 = phi i32 [ 0, %10 ], [ %75, %74 ]
  call void @llvm.dbg.value(metadata %struct.mode_change* %16, metadata !1306, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 %17, metadata !1308, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 %18, metadata !1309, metadata !DIExpression()), !dbg !1326
  %19 = sext i8 %15 to i32, !dbg !1330
  %20 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 2, !dbg !1331
  %21 = load i32, i32* %20, align 4, !dbg !1331, !tbaa !1072
  call void @llvm.dbg.value(metadata i32 %21, metadata !1310, metadata !DIExpression()), !dbg !1332
  %22 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 4, !dbg !1333
  %23 = load i32, i32* %22, align 4, !dbg !1333, !tbaa !1078
  %24 = xor i32 %23, -1, !dbg !1334
  %25 = and i32 %11, %24, !dbg !1335
  call void @llvm.dbg.value(metadata i32 %25, metadata !1314, metadata !DIExpression()), !dbg !1336
  %26 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 3, !dbg !1337
  %27 = load i32, i32* %26, align 4, !dbg !1337, !tbaa !1075
  call void @llvm.dbg.value(metadata i32 %27, metadata !1315, metadata !DIExpression()), !dbg !1338
  switch i32 %19, label %48 [
    i32 2, label %42
    i32 3, label %28
  ], !dbg !1339

; <label>:28:                                     ; preds = %14
  %29 = and i32 %27, %17, !dbg !1340
  call void @llvm.dbg.value(metadata i32 %29, metadata !1315, metadata !DIExpression()), !dbg !1338
  %30 = and i32 %29, 292, !dbg !1342
  %31 = icmp eq i32 %30, 0, !dbg !1343
  %32 = select i1 %31, i32 0, i32 292, !dbg !1343
  %33 = and i32 %29, 146, !dbg !1344
  %34 = icmp eq i32 %33, 0, !dbg !1345
  %35 = select i1 %34, i32 0, i32 146, !dbg !1345
  %36 = and i32 %29, 73, !dbg !1346
  %37 = icmp eq i32 %36, 0, !dbg !1347
  %38 = select i1 %37, i32 0, i32 73, !dbg !1347
  %39 = or i32 %35, %29, !dbg !1348
  %40 = or i32 %39, %32, !dbg !1349
  %41 = or i32 %40, %38, !dbg !1350
  call void @llvm.dbg.value(metadata i32 %41, metadata !1315, metadata !DIExpression()), !dbg !1338
  br label %48, !dbg !1351

; <label>:42:                                     ; preds = %14
  %43 = and i32 %17, 73, !dbg !1352
  %44 = or i32 %43, %13, !dbg !1354
  %45 = icmp eq i32 %44, 0, !dbg !1354
  %46 = or i32 %27, 73, !dbg !1355
  %47 = select i1 %45, i32 %27, i32 %46, !dbg !1356
  br label %48, !dbg !1356

; <label>:48:                                     ; preds = %42, %14, %28
  %49 = phi i32 [ %27, %14 ], [ %41, %28 ], [ %47, %42 ], !dbg !1357
  call void @llvm.dbg.value(metadata i32 %49, metadata !1315, metadata !DIExpression()), !dbg !1338
  %50 = icmp ne i32 %21, 0, !dbg !1358
  %51 = select i1 %50, i32 %21, i32 %12, !dbg !1358
  %52 = xor i32 %25, -1, !dbg !1359
  %53 = and i32 %51, %52, !dbg !1360
  %54 = and i32 %53, %49, !dbg !1361
  call void @llvm.dbg.value(metadata i32 %54, metadata !1315, metadata !DIExpression()), !dbg !1338
  %55 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 0, !dbg !1362
  %56 = load i8, i8* %55, align 4, !dbg !1362, !tbaa !1065
  %57 = sext i8 %56 to i32, !dbg !1363
  switch i32 %57, label %74 [
    i32 61, label %58
    i32 43, label %67
    i32 45, label %70
  ], !dbg !1364

; <label>:58:                                     ; preds = %48
  %59 = xor i32 %21, -1, !dbg !1365
  %60 = select i1 %50, i32 %59, i32 0, !dbg !1366
  %61 = or i32 %60, %25, !dbg !1367
  call void @llvm.dbg.value(metadata i32 %61, metadata !1316, metadata !DIExpression()), !dbg !1368
  %62 = and i32 %61, 4095, !dbg !1369
  %63 = xor i32 %62, 4095, !dbg !1369
  %64 = or i32 %63, %18, !dbg !1370
  call void @llvm.dbg.value(metadata i32 %64, metadata !1309, metadata !DIExpression()), !dbg !1326
  %65 = and i32 %61, %17, !dbg !1371
  %66 = or i32 %54, %65, !dbg !1372
  call void @llvm.dbg.value(metadata i32 %66, metadata !1308, metadata !DIExpression()), !dbg !1325
  br label %74

; <label>:67:                                     ; preds = %48
  %68 = or i32 %54, %18, !dbg !1373
  call void @llvm.dbg.value(metadata i32 %68, metadata !1309, metadata !DIExpression()), !dbg !1326
  %69 = or i32 %54, %17, !dbg !1374
  call void @llvm.dbg.value(metadata i32 %69, metadata !1308, metadata !DIExpression()), !dbg !1325
  br label %74, !dbg !1375

; <label>:70:                                     ; preds = %48
  %71 = or i32 %54, %18, !dbg !1376
  call void @llvm.dbg.value(metadata i32 %71, metadata !1309, metadata !DIExpression()), !dbg !1326
  %72 = xor i32 %54, -1, !dbg !1377
  %73 = and i32 %17, %72, !dbg !1378
  call void @llvm.dbg.value(metadata i32 %73, metadata !1308, metadata !DIExpression()), !dbg !1325
  br label %74, !dbg !1379

; <label>:74:                                     ; preds = %48, %70, %67, %58
  %75 = phi i32 [ %18, %48 ], [ %71, %70 ], [ %68, %67 ], [ %64, %58 ], !dbg !1380
  %76 = phi i32 [ %17, %48 ], [ %73, %70 ], [ %69, %67 ], [ %66, %58 ], !dbg !1380
  %77 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 1, !dbg !1381
  call void @llvm.dbg.value(metadata %struct.mode_change* %77, metadata !1306, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 %76, metadata !1308, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 %75, metadata !1309, metadata !DIExpression()), !dbg !1326
  %78 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 1, i32 1, !dbg !1327
  %79 = load i8, i8* %78, align 1, !dbg !1327, !tbaa !1069
  %80 = icmp eq i8 %79, 0, !dbg !1328
  br i1 %80, label %81, label %14, !dbg !1329, !llvm.loop !1382

; <label>:81:                                     ; preds = %74, %5
  %82 = phi i32 [ 0, %5 ], [ %75, %74 ], !dbg !1326
  %83 = phi i32 [ %6, %5 ], [ %76, %74 ], !dbg !1325
  call void @llvm.dbg.value(metadata i32 %82, metadata !1309, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i32 %83, metadata !1308, metadata !DIExpression()), !dbg !1325
  %84 = icmp eq i32* %4, null, !dbg !1384
  br i1 %84, label %86, label %85, !dbg !1386

; <label>:85:                                     ; preds = %81
  store i32 %82, i32* %4, align 4, !dbg !1387, !tbaa !791
  br label %86, !dbg !1388

; <label>:86:                                     ; preds = %81, %85
  ret i32 %83, !dbg !1389
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1390 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1392, metadata !DIExpression()), !dbg !1395
  %2 = icmp eq i8* %0, null, !dbg !1396
  br i1 %2, label %3, label %6, !dbg !1398

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1399, !tbaa !648
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.66, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1401
  tail call void @abort() #15, !dbg !1402
  unreachable, !dbg !1402

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %7, metadata !1393, metadata !DIExpression()), !dbg !1404
  %8 = icmp eq i8* %7, null, !dbg !1405
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1406
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1407
  call void @llvm.dbg.value(metadata i8* %10, metadata !1394, metadata !DIExpression()), !dbg !1408
  %11 = ptrtoint i8* %10 to i64, !dbg !1409
  %12 = ptrtoint i8* %0 to i64, !dbg !1409
  %13 = sub i64 %11, %12, !dbg !1409
  %14 = icmp sgt i64 %13, 6, !dbg !1411
  br i1 %14, label %15, label %24, !dbg !1412

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1413
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.67, i64 0, i64 0), i64 7) #14, !dbg !1414
  %18 = icmp eq i32 %17, 0, !dbg !1415
  br i1 %18, label %19, label %24, !dbg !1416

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1392, metadata !DIExpression()), !dbg !1395
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.68, i64 0, i64 0), i64 3) #14, !dbg !1417
  %21 = icmp eq i32 %20, 0, !dbg !1420
  br i1 %21, label %22, label %24, !dbg !1421

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1422
  call void @llvm.dbg.value(metadata i8* %23, metadata !1392, metadata !DIExpression()), !dbg !1395
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1424, !tbaa !648
  br label %24, !dbg !1425

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1392, metadata !DIExpression()), !dbg !1395
  store i8* %25, i8** @program_name, align 8, !dbg !1426, !tbaa !648
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1427, !tbaa !648
  ret void, !dbg !1428
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1429 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1434, metadata !DIExpression()), !dbg !1437
  %2 = tail call i32* @__errno_location() #17, !dbg !1438
  %3 = load i32, i32* %2, align 4, !dbg !1438, !tbaa !791
  call void @llvm.dbg.value(metadata i32 %3, metadata !1435, metadata !DIExpression()), !dbg !1439
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1440
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1440
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1440
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1441
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1441
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1436, metadata !DIExpression()), !dbg !1442
  store i32 %3, i32* %2, align 4, !dbg !1443, !tbaa !791
  ret %struct.quoting_options* %8, !dbg !1444
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1445 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1451, metadata !DIExpression()), !dbg !1452
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1453
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1453
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1454
  %5 = load i32, i32* %4, align 8, !dbg !1454, !tbaa !1455
  ret i32 %5, !dbg !1457
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1458 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1462, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i32 %1, metadata !1463, metadata !DIExpression()), !dbg !1465
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1466
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1466
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1467
  store i32 %1, i32* %5, align 8, !dbg !1468, !tbaa !1455
  ret void, !dbg !1469
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1470 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1474, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %1, metadata !1475, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i32 %2, metadata !1476, metadata !DIExpression()), !dbg !1485
  call void @llvm.dbg.value(metadata i8 %1, metadata !1477, metadata !DIExpression()), !dbg !1486
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1487
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1487
  %6 = lshr i8 %1, 5, !dbg !1488
  %7 = zext i8 %6 to i64, !dbg !1488
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1489
  call void @llvm.dbg.value(metadata i32* %8, metadata !1479, metadata !DIExpression()), !dbg !1490
  %9 = and i8 %1, 31, !dbg !1491
  %10 = zext i8 %9 to i32, !dbg !1491
  call void @llvm.dbg.value(metadata i32 %10, metadata !1481, metadata !DIExpression()), !dbg !1492
  %11 = load i32, i32* %8, align 4, !dbg !1493, !tbaa !791
  %12 = lshr i32 %11, %10, !dbg !1494
  %13 = and i32 %12, 1, !dbg !1495
  call void @llvm.dbg.value(metadata i32 %13, metadata !1482, metadata !DIExpression()), !dbg !1496
  %14 = and i32 %2, 1, !dbg !1497
  %15 = xor i32 %13, %14, !dbg !1498
  %16 = shl i32 %15, %10, !dbg !1499
  %17 = xor i32 %16, %11, !dbg !1500
  store i32 %17, i32* %8, align 4, !dbg !1500, !tbaa !791
  ret i32 %13, !dbg !1501
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1502 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1506, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.value(metadata i32 %1, metadata !1507, metadata !DIExpression()), !dbg !1510
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1511
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1513
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1506, metadata !DIExpression()), !dbg !1509
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1514
  %6 = load i32, i32* %5, align 4, !dbg !1514, !tbaa !1515
  call void @llvm.dbg.value(metadata i32 %6, metadata !1508, metadata !DIExpression()), !dbg !1516
  store i32 %1, i32* %5, align 4, !dbg !1517, !tbaa !1515
  ret i32 %6, !dbg !1518
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1519 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1523, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8* %1, metadata !1524, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8* %2, metadata !1525, metadata !DIExpression()), !dbg !1528
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1529
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1531
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1523, metadata !DIExpression()), !dbg !1526
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1532
  store i32 10, i32* %6, align 8, !dbg !1533, !tbaa !1455
  %7 = icmp ne i8* %1, null, !dbg !1534
  %8 = icmp ne i8* %2, null, !dbg !1536
  %9 = and i1 %7, %8, !dbg !1537
  br i1 %9, label %11, label %10, !dbg !1537

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1538
  unreachable, !dbg !1538

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1539
  store i8* %1, i8** %12, align 8, !dbg !1540, !tbaa !1541
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1542
  store i8* %2, i8** %13, align 8, !dbg !1543, !tbaa !1544
  ret void, !dbg !1545
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1546 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1550, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.value(metadata i64 %1, metadata !1551, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata i8* %2, metadata !1552, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata i64 %3, metadata !1553, metadata !DIExpression()), !dbg !1561
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1554, metadata !DIExpression()), !dbg !1562
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1563
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1563
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1555, metadata !DIExpression()), !dbg !1564
  %8 = tail call i32* @__errno_location() #17, !dbg !1565
  %9 = load i32, i32* %8, align 4, !dbg !1565, !tbaa !791
  call void @llvm.dbg.value(metadata i32 %9, metadata !1556, metadata !DIExpression()), !dbg !1566
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1567
  %11 = load i32, i32* %10, align 8, !dbg !1567, !tbaa !1455
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1568
  %13 = load i32, i32* %12, align 4, !dbg !1568, !tbaa !1515
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1569
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1570
  %16 = load i8*, i8** %15, align 8, !dbg !1570, !tbaa !1541
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1571
  %18 = load i8*, i8** %17, align 8, !dbg !1571, !tbaa !1544
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1572
  call void @llvm.dbg.value(metadata i64 %19, metadata !1557, metadata !DIExpression()), !dbg !1573
  store i32 %9, i32* %8, align 4, !dbg !1574, !tbaa !791
  ret i64 %19, !dbg !1575
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1576 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1582, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata i64 %1, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8* %2, metadata !1584, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %3, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i32 %4, metadata !1586, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i32 %5, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i32* %6, metadata !1588, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i8* %7, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %8, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 0, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 0, metadata !1593, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8* null, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 0, metadata !1595, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i8 0, metadata !1596, metadata !DIExpression()), !dbg !1659
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1660
  %14 = icmp eq i64 %13, 1, !dbg !1661
  %15 = lshr i32 %5, 1, !dbg !1662
  %16 = trunc i32 %15 to i8, !dbg !1662
  %17 = and i8 %16, 1, !dbg !1662
  call void @llvm.dbg.value(metadata i8 %17, metadata !1598, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 0, metadata !1599, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8 0, metadata !1600, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 1, metadata !1601, metadata !DIExpression()), !dbg !1665
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1666

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1656
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1657
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1658
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1659
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1667
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1663
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1664
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1665
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 %39, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 %38, metadata !1600, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 %37, metadata !1599, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8 %36, metadata !1598, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %35, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 %34, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i64 %33, metadata !1595, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i8* %32, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %31, metadata !1593, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 0, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %30, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %29, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 %28, metadata !1586, metadata !DIExpression()), !dbg !1650
  switch i32 %28, label %92 [
    i32 6, label %41
    i32 5, label %42
    i32 7, label %93
    i32 0, label %91
    i32 2, label %83
    i32 4, label %77
    i32 3, label %74
    i32 1, label %75
    i32 10, label %51
    i32 8, label %48
    i32 9, label %48
  ], !dbg !1669

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1586, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i8 1, metadata !1598, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %36, metadata !1598, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i32 5, metadata !1586, metadata !DIExpression()), !dbg !1650
  br label %93, !dbg !1670

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1598, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i32 5, metadata !1586, metadata !DIExpression()), !dbg !1650
  %43 = and i8 %36, 1, !dbg !1671
  %44 = icmp eq i8 %43, 0, !dbg !1671
  br i1 %44, label %45, label %93, !dbg !1670

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1673
  br i1 %46, label %93, label %47, !dbg !1676

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1673, !tbaa !799
  br label %93, !dbg !1673

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.79, i64 0, i64 0), i32 %28), !dbg !1677
  call void @llvm.dbg.value(metadata i8* %49, metadata !1589, metadata !DIExpression()), !dbg !1653
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), i32 %28), !dbg !1681
  call void @llvm.dbg.value(metadata i8* %50, metadata !1590, metadata !DIExpression()), !dbg !1654
  br label %51, !dbg !1682

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %52, metadata !1589, metadata !DIExpression()), !dbg !1653
  %54 = and i8 %36, 1, !dbg !1683
  %55 = icmp eq i8 %54, 0, !dbg !1683
  br i1 %55, label %56, label %71, !dbg !1685

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 0, metadata !1592, metadata !DIExpression()), !dbg !1655
  %57 = load i8, i8* %52, align 1, !dbg !1686, !tbaa !799
  %58 = icmp eq i8 %57, 0, !dbg !1689
  br i1 %58, label %71, label %59, !dbg !1689

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %62, metadata !1592, metadata !DIExpression()), !dbg !1655
  %63 = icmp ult i64 %62, %40, !dbg !1690
  br i1 %63, label %64, label %66, !dbg !1693

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1690
  store i8 %60, i8* %65, align 1, !dbg !1690, !tbaa !799
  br label %66, !dbg !1690

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1693
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1694
  call void @llvm.dbg.value(metadata i8* %68, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %67, metadata !1592, metadata !DIExpression()), !dbg !1655
  %69 = load i8, i8* %68, align 1, !dbg !1686, !tbaa !799
  %70 = icmp eq i8 %69, 0, !dbg !1689
  br i1 %70, label %71, label %59, !dbg !1689, !llvm.loop !1695

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1655
  call void @llvm.dbg.value(metadata i64 %72, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8 1, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %53, metadata !1594, metadata !DIExpression()), !dbg !1657
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1697
  call void @llvm.dbg.value(metadata i64 %73, metadata !1595, metadata !DIExpression()), !dbg !1658
  br label %93, !dbg !1698

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1596, metadata !DIExpression()), !dbg !1659
  br label %75, !dbg !1699

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1667
  call void @llvm.dbg.value(metadata i8 %76, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8 1, metadata !1598, metadata !DIExpression()), !dbg !1662
  br label %77, !dbg !1700

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1659
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1667
  call void @llvm.dbg.value(metadata i8 %79, metadata !1598, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %78, metadata !1596, metadata !DIExpression()), !dbg !1659
  %80 = and i8 %79, 1, !dbg !1701
  %81 = icmp eq i8 %80, 0, !dbg !1701
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1703
  br label %83, !dbg !1703

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1704
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1662
  call void @llvm.dbg.value(metadata i8 %85, metadata !1598, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %84, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i32 2, metadata !1586, metadata !DIExpression()), !dbg !1650
  %86 = and i8 %85, 1, !dbg !1705
  %87 = icmp eq i8 %86, 0, !dbg !1705
  br i1 %87, label %88, label %93, !dbg !1707

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1708
  br i1 %89, label %93, label %90, !dbg !1711

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1708, !tbaa !799
  br label %93, !dbg !1708

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1598, metadata !DIExpression()), !dbg !1662
  br label %93, !dbg !1712

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1713
  unreachable, !dbg !1713

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1655
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %41 ], !dbg !1667
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1667
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1667
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1714
  call void @llvm.dbg.value(metadata i8 %101, metadata !1598, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %100, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i64 %99, metadata !1595, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i8* %98, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %97, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 %94, metadata !1586, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i64 0, metadata !1591, metadata !DIExpression()), !dbg !1715
  %102 = and i8 %100, 1
  %103 = icmp ne i8 %102, 0
  %104 = icmp ne i32 %94, 2
  %105 = and i1 %104, %103
  %106 = icmp ne i64 %99, 0
  %107 = and i1 %106, %105
  %108 = icmp ugt i64 %99, 1
  %109 = and i8 %101, 1
  %110 = icmp eq i8 %109, 0
  %111 = icmp ne i8 %109, 0
  %112 = and i1 %18, %111
  %113 = or i1 %104, %110
  %114 = icmp eq i32 %94, 2
  %115 = xor i1 %103, true
  %116 = and i1 %114, %111
  %117 = and i8 %100, %101
  %118 = and i8 %117, 1
  %119 = icmp ne i8 %118, 0
  %120 = and i1 %119, %106
  br label %121, !dbg !1716

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1717
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1655
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1656
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1663
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1664
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1665
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 %128, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 %127, metadata !1600, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 %126, metadata !1599, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 %125, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %124, metadata !1593, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %123, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %122, metadata !1591, metadata !DIExpression()), !dbg !1715
  %130 = icmp eq i64 %125, -1, !dbg !1718
  br i1 %130, label %131, label %135, !dbg !1719

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1720
  %133 = load i8, i8* %132, align 1, !dbg !1720, !tbaa !799
  %134 = icmp eq i8 %133, 0, !dbg !1721
  br i1 %134, label %617, label %137, !dbg !1722

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1723
  br i1 %136, label %617, label %137, !dbg !1722

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1607, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i8 0, metadata !1608, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i8 0, metadata !1609, metadata !DIExpression()), !dbg !1726
  br i1 %107, label %138, label %153, !dbg !1727

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1729
  %140 = and i1 %108, %130, !dbg !1730
  br i1 %140, label %141, label %143, !dbg !1730

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1731
  call void @llvm.dbg.value(metadata i64 %142, metadata !1585, metadata !DIExpression()), !dbg !1649
  br label %143, !dbg !1732

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1585, metadata !DIExpression()), !dbg !1649
  %145 = icmp ugt i64 %139, %144, !dbg !1733
  br i1 %145, label %153, label %146, !dbg !1734

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1735
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1736
  %149 = icmp ne i32 %148, 0, !dbg !1737
  %150 = or i1 %149, %110, !dbg !1738
  %151 = xor i1 %149, true, !dbg !1738
  %152 = zext i1 %151 to i8, !dbg !1738
  br i1 %150, label %153, label %661, !dbg !1738

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1739
  call void @llvm.dbg.value(metadata i8 %155, metadata !1607, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i64 %154, metadata !1585, metadata !DIExpression()), !dbg !1649
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1740
  %157 = load i8, i8* %156, align 1, !dbg !1740, !tbaa !799
  call void @llvm.dbg.value(metadata i8 %157, metadata !1602, metadata !DIExpression()), !dbg !1741
  switch i8 %157, label %296 [
    i8 0, label %158
    i8 63, label %208
    i8 7, label %255
    i8 8, label %245
    i8 12, label %246
    i8 10, label %253
    i8 13, label %247
    i8 9, label %248
    i8 11, label %249
    i8 92, label %250
    i8 123, label %257
    i8 125, label %257
    i8 35, label %268
    i8 126, label %268
    i8 32, label %270
    i8 33, label %271
    i8 34, label %271
    i8 36, label %271
    i8 38, label %271
    i8 40, label %271
    i8 41, label %271
    i8 42, label %271
    i8 59, label %271
    i8 60, label %271
    i8 61, label %271
    i8 62, label %271
    i8 91, label %271
    i8 94, label %271
    i8 96, label %271
    i8 124, label %271
    i8 39, label %273
    i8 37, label %467
    i8 43, label %467
    i8 44, label %467
    i8 45, label %467
    i8 46, label %467
    i8 47, label %467
    i8 48, label %467
    i8 49, label %467
    i8 50, label %467
    i8 51, label %467
    i8 52, label %467
    i8 53, label %467
    i8 54, label %467
    i8 55, label %467
    i8 56, label %467
    i8 57, label %467
    i8 58, label %467
    i8 65, label %467
    i8 66, label %467
    i8 67, label %467
    i8 68, label %467
    i8 69, label %467
    i8 70, label %467
    i8 71, label %467
    i8 72, label %467
    i8 73, label %467
    i8 74, label %467
    i8 75, label %467
    i8 76, label %467
    i8 77, label %467
    i8 78, label %467
    i8 79, label %467
    i8 80, label %467
    i8 81, label %467
    i8 82, label %467
    i8 83, label %467
    i8 84, label %467
    i8 85, label %467
    i8 86, label %467
    i8 87, label %467
    i8 88, label %467
    i8 89, label %467
    i8 90, label %467
    i8 93, label %467
    i8 95, label %467
    i8 97, label %467
    i8 98, label %467
    i8 99, label %467
    i8 100, label %467
    i8 101, label %467
    i8 102, label %467
    i8 103, label %467
    i8 104, label %467
    i8 105, label %467
    i8 106, label %467
    i8 107, label %467
    i8 108, label %467
    i8 109, label %467
    i8 110, label %467
    i8 111, label %467
    i8 112, label %467
    i8 113, label %467
    i8 114, label %467
    i8 115, label %467
    i8 116, label %467
    i8 117, label %467
    i8 118, label %467
    i8 119, label %467
    i8 120, label %467
    i8 121, label %467
    i8 122, label %467
  ], !dbg !1742

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1743

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1744

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1608, metadata !DIExpression()), !dbg !1725
  %161 = and i8 %126, 1, !dbg !1748
  %162 = icmp eq i8 %161, 0, !dbg !1748
  %163 = and i1 %114, %162, !dbg !1748
  br i1 %163, label %164, label %180, !dbg !1748

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1750
  br i1 %165, label %166, label %168, !dbg !1754

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1750
  store i8 39, i8* %167, align 1, !dbg !1750, !tbaa !799
  br label %168, !dbg !1750

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1754
  call void @llvm.dbg.value(metadata i64 %169, metadata !1592, metadata !DIExpression()), !dbg !1655
  %170 = icmp ult i64 %169, %129, !dbg !1755
  br i1 %170, label %171, label %173, !dbg !1758

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1755
  store i8 36, i8* %172, align 1, !dbg !1755, !tbaa !799
  br label %173, !dbg !1755

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1758
  call void @llvm.dbg.value(metadata i64 %174, metadata !1592, metadata !DIExpression()), !dbg !1655
  %175 = icmp ult i64 %174, %129, !dbg !1759
  br i1 %175, label %176, label %178, !dbg !1762

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1759
  store i8 39, i8* %177, align 1, !dbg !1759, !tbaa !799
  br label %178, !dbg !1759

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1762
  call void @llvm.dbg.value(metadata i64 %179, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8 1, metadata !1599, metadata !DIExpression()), !dbg !1663
  br label %180, !dbg !1763

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1714
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1714
  call void @llvm.dbg.value(metadata i8 %182, metadata !1599, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 %181, metadata !1592, metadata !DIExpression()), !dbg !1655
  %183 = icmp ult i64 %181, %129, !dbg !1764
  br i1 %183, label %184, label %186, !dbg !1767

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1764
  store i8 92, i8* %185, align 1, !dbg !1764, !tbaa !799
  br label %186, !dbg !1764

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1767
  call void @llvm.dbg.value(metadata i64 %187, metadata !1592, metadata !DIExpression()), !dbg !1655
  br i1 %104, label %188, label %478, !dbg !1768

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1770
  %190 = icmp ult i64 %189, %154, !dbg !1771
  br i1 %190, label %191, label %467, !dbg !1772

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1773
  %193 = load i8, i8* %192, align 1, !dbg !1773, !tbaa !799
  %194 = add i8 %193, -48, !dbg !1774
  %195 = icmp ult i8 %194, 10, !dbg !1774
  br i1 %195, label %196, label %467, !dbg !1774

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1775
  br i1 %197, label %198, label %200, !dbg !1779

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1775
  store i8 48, i8* %199, align 1, !dbg !1775, !tbaa !799
  br label %200, !dbg !1775

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1779
  call void @llvm.dbg.value(metadata i64 %201, metadata !1592, metadata !DIExpression()), !dbg !1655
  %202 = icmp ult i64 %201, %129, !dbg !1780
  br i1 %202, label %203, label %205, !dbg !1783

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1780
  store i8 48, i8* %204, align 1, !dbg !1780, !tbaa !799
  br label %205, !dbg !1780

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1783
  call void @llvm.dbg.value(metadata i64 %206, metadata !1592, metadata !DIExpression()), !dbg !1655
  br label %467, !dbg !1784

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1785

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1786

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1787

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1789

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1791
  %213 = icmp ult i64 %212, %154, !dbg !1792
  br i1 %213, label %214, label %467, !dbg !1793

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1794
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1795
  %217 = load i8, i8* %216, align 1, !dbg !1795, !tbaa !799
  %218 = icmp eq i8 %217, 63, !dbg !1796
  br i1 %218, label %219, label %467, !dbg !1797

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1798
  %221 = load i8, i8* %220, align 1, !dbg !1798, !tbaa !799
  %222 = sext i8 %221 to i32, !dbg !1798
  switch i32 %222, label %467 [
    i32 33, label %223
    i32 39, label %223
    i32 40, label %223
    i32 41, label %223
    i32 45, label %223
    i32 47, label %223
    i32 60, label %223
    i32 61, label %223
    i32 62, label %223
  ], !dbg !1799

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1800

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1602, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i64 %212, metadata !1591, metadata !DIExpression()), !dbg !1715
  %225 = icmp ult i64 %123, %129, !dbg !1802
  br i1 %225, label %226, label %228, !dbg !1805

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1802
  store i8 63, i8* %227, align 1, !dbg !1802, !tbaa !799
  br label %228, !dbg !1802

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1805
  call void @llvm.dbg.value(metadata i64 %229, metadata !1592, metadata !DIExpression()), !dbg !1655
  %230 = icmp ult i64 %229, %129, !dbg !1806
  br i1 %230, label %231, label %233, !dbg !1809

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1806
  store i8 34, i8* %232, align 1, !dbg !1806, !tbaa !799
  br label %233, !dbg !1806

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1809
  call void @llvm.dbg.value(metadata i64 %234, metadata !1592, metadata !DIExpression()), !dbg !1655
  %235 = icmp ult i64 %234, %129, !dbg !1810
  br i1 %235, label %236, label %238, !dbg !1813

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1810
  store i8 34, i8* %237, align 1, !dbg !1810, !tbaa !799
  br label %238, !dbg !1810

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1813
  call void @llvm.dbg.value(metadata i64 %239, metadata !1592, metadata !DIExpression()), !dbg !1655
  %240 = icmp ult i64 %239, %129, !dbg !1814
  br i1 %240, label %241, label %243, !dbg !1817

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1814
  store i8 63, i8* %242, align 1, !dbg !1814, !tbaa !799
  br label %243, !dbg !1814

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1817
  call void @llvm.dbg.value(metadata i64 %244, metadata !1592, metadata !DIExpression()), !dbg !1655
  br label %467, !dbg !1818

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1606, metadata !DIExpression()), !dbg !1819
  br label %255, !dbg !1820

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1606, metadata !DIExpression()), !dbg !1819
  br label %255, !dbg !1821

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1606, metadata !DIExpression()), !dbg !1819
  br label %253, !dbg !1822

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1606, metadata !DIExpression()), !dbg !1819
  br label %253, !dbg !1823

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1606, metadata !DIExpression()), !dbg !1819
  br label %255, !dbg !1824

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1606, metadata !DIExpression()), !dbg !1819
  br i1 %114, label %251, label %252, !dbg !1825

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1826

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1829

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1831
  call void @llvm.dbg.value(metadata i8 %254, metadata !1606, metadata !DIExpression()), !dbg !1819
  br i1 %113, label %255, label %661, !dbg !1832

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1831
  call void @llvm.dbg.value(metadata i8 %256, metadata !1606, metadata !DIExpression()), !dbg !1819
  br i1 %103, label %524, label %478, !dbg !1834

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1835
  br i1 %258, label %259, label %264, !dbg !1837

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1838, !tbaa !799
  %261 = icmp ne i8 %260, 0, !dbg !1839
  %262 = icmp ne i64 %122, 0, !dbg !1840
  %263 = or i1 %262, %261, !dbg !1842
  br i1 %263, label %467, label %270, !dbg !1842

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1843
  %266 = icmp ne i64 %122, 0, !dbg !1840
  %267 = or i1 %266, %265, !dbg !1837
  br i1 %267, label %467, label %270, !dbg !1837

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1840
  br i1 %269, label %270, label %467, !dbg !1844

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1609, metadata !DIExpression()), !dbg !1726
  br label %271, !dbg !1845

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1831
  call void @llvm.dbg.value(metadata i8 %272, metadata !1609, metadata !DIExpression()), !dbg !1726
  br i1 %113, label %467, label %661, !dbg !1846

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1600, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 1, metadata !1609, metadata !DIExpression()), !dbg !1726
  br i1 %114, label %274, label %467, !dbg !1848

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1849

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1852
  %277 = icmp ne i64 %124, 0, !dbg !1854
  %278 = or i1 %277, %276, !dbg !1855
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1855
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1855
  call void @llvm.dbg.value(metadata i64 %280, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %279, metadata !1593, metadata !DIExpression()), !dbg !1656
  %281 = icmp ult i64 %123, %280, !dbg !1856
  br i1 %281, label %282, label %284, !dbg !1859

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1856
  store i8 39, i8* %283, align 1, !dbg !1856, !tbaa !799
  br label %284, !dbg !1856

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1859
  call void @llvm.dbg.value(metadata i64 %285, metadata !1592, metadata !DIExpression()), !dbg !1655
  %286 = icmp ult i64 %285, %280, !dbg !1860
  br i1 %286, label %287, label %289, !dbg !1863

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1860
  store i8 92, i8* %288, align 1, !dbg !1860, !tbaa !799
  br label %289, !dbg !1860

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1863
  call void @llvm.dbg.value(metadata i64 %290, metadata !1592, metadata !DIExpression()), !dbg !1655
  %291 = icmp ult i64 %290, %280, !dbg !1864
  br i1 %291, label %292, label %294, !dbg !1867

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1864
  store i8 39, i8* %293, align 1, !dbg !1864, !tbaa !799
  br label %294, !dbg !1864

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1867
  call void @llvm.dbg.value(metadata i64 %295, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8 0, metadata !1599, metadata !DIExpression()), !dbg !1663
  br label %467, !dbg !1868

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1869

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1610, metadata !DIExpression()), !dbg !1870
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !1871
  %299 = load i16*, i16** %298, align 8, !dbg !1871, !tbaa !648
  %300 = zext i8 %157 to i64, !dbg !1871
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1871
  %302 = load i16, i16* %301, align 2, !dbg !1871, !tbaa !1873
  %303 = lshr i16 %302, 14, !dbg !1875
  %304 = trunc i16 %303 to i8, !dbg !1875
  %305 = and i8 %304, 1, !dbg !1875
  call void @llvm.dbg.value(metadata i8 %305, metadata !1613, metadata !DIExpression()), !dbg !1876
  br label %359, !dbg !1877

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1878
  store i64 0, i64* %10, align 8, !dbg !1879
  call void @llvm.dbg.value(metadata i64 0, metadata !1610, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8 1, metadata !1613, metadata !DIExpression()), !dbg !1876
  %307 = icmp eq i64 %154, -1, !dbg !1880
  br i1 %307, label %308, label %310, !dbg !1882

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1883
  call void @llvm.dbg.value(metadata i64 %309, metadata !1585, metadata !DIExpression()), !dbg !1649
  br label %310, !dbg !1884

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1885
  call void @llvm.dbg.value(metadata i64 %311, metadata !1585, metadata !DIExpression()), !dbg !1649
  br label %312, !dbg !1886

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1887
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1888
  call void @llvm.dbg.value(metadata i8 %314, metadata !1613, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %313, metadata !1610, metadata !DIExpression()), !dbg !1870
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1889
  %315 = add i64 %313, %122, !dbg !1890
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1891
  %317 = sub i64 %311, %315, !dbg !1892
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1614, metadata !DIExpression(DW_OP_deref)), !dbg !1893
  call void @llvm.dbg.value(metadata i32* %12, metadata !1632, metadata !DIExpression(DW_OP_deref)), !dbg !1894
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #10, !dbg !1895
  call void @llvm.dbg.value(metadata i64 %318, metadata !1635, metadata !DIExpression()), !dbg !1896
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1897

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1610, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i64 %313, metadata !1610, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i64 %313, metadata !1610, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i64 %313, metadata !1610, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i64 %313, metadata !1610, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i64 %313, metadata !1610, metadata !DIExpression()), !dbg !1870
  %320 = icmp ugt i64 %311, %315, !dbg !1898
  br i1 %320, label %321, label %344, !dbg !1900

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1610, metadata !DIExpression()), !dbg !1870
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1901
  %325 = load i8, i8* %324, align 1, !dbg !1901, !tbaa !799
  %326 = icmp eq i8 %325, 0, !dbg !1900
  br i1 %326, label %344, label %327, !dbg !1902

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1903
  call void @llvm.dbg.value(metadata i64 %328, metadata !1610, metadata !DIExpression()), !dbg !1870
  %329 = add i64 %328, %122, !dbg !1904
  %330 = icmp ult i64 %329, %311, !dbg !1898
  br i1 %330, label %321, label %344, !dbg !1900, !llvm.loop !1905

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1906
  %333 = and i1 %116, %332, !dbg !1909
  call void @llvm.dbg.value(metadata i64 1, metadata !1636, metadata !DIExpression()), !dbg !1910
  br i1 %333, label %334, label %347, !dbg !1909

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1636, metadata !DIExpression()), !dbg !1910
  %336 = add i64 %335, %315, !dbg !1911
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1912
  %338 = load i8, i8* %337, align 1, !dbg !1912, !tbaa !799
  %339 = sext i8 %338 to i32, !dbg !1912
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1913

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1914
  call void @llvm.dbg.value(metadata i64 %341, metadata !1636, metadata !DIExpression()), !dbg !1910
  %342 = icmp ult i64 %341, %318, !dbg !1906
  br i1 %342, label %334, label %347, !dbg !1915, !llvm.loop !1916

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1610, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8 %314, metadata !1613, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %313, metadata !1610, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8 %314, metadata !1613, metadata !DIExpression()), !dbg !1876
  br label %344, !dbg !1918

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1613, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %352, metadata !1610, metadata !DIExpression()), !dbg !1870
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1918
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1919, !tbaa !791
  call void @llvm.dbg.value(metadata i32 %348, metadata !1632, metadata !DIExpression()), !dbg !1894
  %349 = call i32 @iswprint(i32 %348) #10, !dbg !1921
  %350 = icmp eq i32 %349, 0, !dbg !1921
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1922
  call void @llvm.dbg.value(metadata i8 %351, metadata !1613, metadata !DIExpression()), !dbg !1876
  %352 = add i64 %318, %313, !dbg !1923
  call void @llvm.dbg.value(metadata i64 %352, metadata !1610, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8 %351, metadata !1613, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %352, metadata !1610, metadata !DIExpression()), !dbg !1870
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1918
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1614, metadata !DIExpression(DW_OP_deref)), !dbg !1893
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1924
  %354 = icmp eq i32 %353, 0, !dbg !1925
  br i1 %354, label %312, label %355, !dbg !1926, !llvm.loop !1927

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1929
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %311, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %311, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %311, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %311, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %311, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %311, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %311, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %311, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %311, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %311, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %311, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %311, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %311, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %311, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %311, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %311, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %311, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %311, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %311, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %311, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i32 2, metadata !1586, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i32 2, metadata !1586, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i32 2, metadata !1586, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i32 2, metadata !1586, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i32 2, metadata !1586, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %100, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8 %100, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8 %100, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8 %100, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8 %100, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %311, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %311, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %311, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %311, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %311, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i32 %94, metadata !1586, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i32 %94, metadata !1586, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i32 %94, metadata !1586, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i32 %94, metadata !1586, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i32 %94, metadata !1586, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %100, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8 %100, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8 %100, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8 %100, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8 %100, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %311, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %311, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %311, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %311, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %311, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 %351, metadata !1613, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %352, metadata !1610, metadata !DIExpression()), !dbg !1870
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1918
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1929
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1930
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1931
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1931
  call void @llvm.dbg.value(metadata i8 %362, metadata !1613, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %361, metadata !1610, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i64 %360, metadata !1585, metadata !DIExpression()), !dbg !1649
  %363 = and i8 %362, 1, !dbg !1932
  %364 = icmp ne i8 %363, 0, !dbg !1932
  call void @llvm.dbg.value(metadata i8 %363, metadata !1609, metadata !DIExpression()), !dbg !1726
  %365 = icmp ult i64 %361, 2, !dbg !1933
  %366 = or i1 %364, %115, !dbg !1934
  %367 = and i1 %365, %366, !dbg !1935
  br i1 %367, label %467, label %368, !dbg !1935

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1936
  call void @llvm.dbg.value(metadata i64 %369, metadata !1643, metadata !DIExpression()), !dbg !1937
  br label %370, !dbg !1938

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1939
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1943
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1663
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1939
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1945
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1725
  call void @llvm.dbg.value(metadata i8 %376, metadata !1608, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i8 %375, metadata !1607, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i8 %374, metadata !1602, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 %373, metadata !1599, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 %372, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %371, metadata !1591, metadata !DIExpression()), !dbg !1715
  br i1 %366, label %423, label %377, !dbg !1949

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1950

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1608, metadata !DIExpression()), !dbg !1725
  %379 = and i8 %373, 1, !dbg !1953
  %380 = icmp eq i8 %379, 0, !dbg !1953
  %381 = and i1 %114, %380, !dbg !1953
  br i1 %381, label %382, label %398, !dbg !1953

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1955
  br i1 %383, label %384, label %386, !dbg !1959

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1955
  store i8 39, i8* %385, align 1, !dbg !1955, !tbaa !799
  br label %386, !dbg !1955

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1959
  call void @llvm.dbg.value(metadata i64 %387, metadata !1592, metadata !DIExpression()), !dbg !1655
  %388 = icmp ult i64 %387, %129, !dbg !1960
  br i1 %388, label %389, label %391, !dbg !1963

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1960
  store i8 36, i8* %390, align 1, !dbg !1960, !tbaa !799
  br label %391, !dbg !1960

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1963
  call void @llvm.dbg.value(metadata i64 %392, metadata !1592, metadata !DIExpression()), !dbg !1655
  %393 = icmp ult i64 %392, %129, !dbg !1964
  br i1 %393, label %394, label %396, !dbg !1967

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !1964
  store i8 39, i8* %395, align 1, !dbg !1964, !tbaa !799
  br label %396, !dbg !1964

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !1967
  call void @llvm.dbg.value(metadata i64 %397, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8 1, metadata !1599, metadata !DIExpression()), !dbg !1663
  br label %398, !dbg !1968

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1714
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1714
  call void @llvm.dbg.value(metadata i8 %400, metadata !1599, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 %399, metadata !1592, metadata !DIExpression()), !dbg !1655
  %401 = icmp ult i64 %399, %129, !dbg !1969
  br i1 %401, label %402, label %404, !dbg !1972

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !1969
  store i8 92, i8* %403, align 1, !dbg !1969, !tbaa !799
  br label %404, !dbg !1969

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !1972
  call void @llvm.dbg.value(metadata i64 %405, metadata !1592, metadata !DIExpression()), !dbg !1655
  %406 = icmp ult i64 %405, %129, !dbg !1973
  br i1 %406, label %407, label %411, !dbg !1976

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !1973
  %409 = or i8 %408, 48, !dbg !1973
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !1973
  store i8 %409, i8* %410, align 1, !dbg !1973, !tbaa !799
  br label %411, !dbg !1973

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !1976
  call void @llvm.dbg.value(metadata i64 %412, metadata !1592, metadata !DIExpression()), !dbg !1655
  %413 = icmp ult i64 %412, %129, !dbg !1977
  br i1 %413, label %414, label %419, !dbg !1980

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !1977
  %416 = and i8 %415, 7, !dbg !1977
  %417 = or i8 %416, 48, !dbg !1977
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !1977
  store i8 %417, i8* %418, align 1, !dbg !1977, !tbaa !799
  br label %419, !dbg !1977

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %420, metadata !1592, metadata !DIExpression()), !dbg !1655
  %421 = and i8 %374, 7, !dbg !1981
  %422 = or i8 %421, 48, !dbg !1982
  call void @llvm.dbg.value(metadata i8 %422, metadata !1602, metadata !DIExpression()), !dbg !1741
  br label %432, !dbg !1983

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !1984
  %425 = icmp eq i8 %424, 0, !dbg !1984
  br i1 %425, label %432, label %426, !dbg !1985

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !1986
  br i1 %427, label %428, label %430, !dbg !1989

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1986
  store i8 92, i8* %429, align 1, !dbg !1986, !tbaa !799
  br label %430, !dbg !1986

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !1989
  call void @llvm.dbg.value(metadata i64 %431, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8 0, metadata !1607, metadata !DIExpression()), !dbg !1724
  br label %432, !dbg !1990

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !1991
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1663
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !1992
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !1993
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !1995
  call void @llvm.dbg.value(metadata i8 %437, metadata !1608, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i8 %436, metadata !1607, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i8 %435, metadata !1602, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 %434, metadata !1599, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 %433, metadata !1592, metadata !DIExpression()), !dbg !1655
  %438 = add i64 %371, 1, !dbg !1996
  %439 = icmp ugt i64 %369, %438, !dbg !1998
  br i1 %439, label %440, label %562, !dbg !1999

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !2000
  %442 = icmp ne i8 %441, 0, !dbg !2000
  %443 = and i8 %437, 1, !dbg !2000
  %444 = icmp eq i8 %443, 0, !dbg !2000
  %445 = and i1 %442, %444, !dbg !2000
  br i1 %445, label %446, label %457, !dbg !2000

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !2003
  br i1 %447, label %448, label %450, !dbg !2007

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !2003
  store i8 39, i8* %449, align 1, !dbg !2003, !tbaa !799
  br label %450, !dbg !2003

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !2007
  call void @llvm.dbg.value(metadata i64 %451, metadata !1592, metadata !DIExpression()), !dbg !1655
  %452 = icmp ult i64 %451, %129, !dbg !2008
  br i1 %452, label %453, label %455, !dbg !2011

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !2008
  store i8 39, i8* %454, align 1, !dbg !2008, !tbaa !799
  br label %455, !dbg !2008

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !2011
  call void @llvm.dbg.value(metadata i64 %456, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8 0, metadata !1599, metadata !DIExpression()), !dbg !1663
  br label %457, !dbg !2012

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !2013
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1714
  call void @llvm.dbg.value(metadata i8 %459, metadata !1599, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 %458, metadata !1592, metadata !DIExpression()), !dbg !1655
  %460 = icmp ult i64 %458, %129, !dbg !2014
  br i1 %460, label %461, label %463, !dbg !2016

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !2014
  store i8 %435, i8* %462, align 1, !dbg !2014, !tbaa !799
  br label %463, !dbg !2014

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !2016
  call void @llvm.dbg.value(metadata i64 %464, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %438, metadata !1591, metadata !DIExpression()), !dbg !1715
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !2017
  %466 = load i8, i8* %465, align 1, !dbg !2017, !tbaa !799
  call void @llvm.dbg.value(metadata i8 %466, metadata !1602, metadata !DIExpression()), !dbg !1741
  br label %370, !dbg !2018, !llvm.loop !2019

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !2022
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1714
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1656
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !2023
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1714
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1714
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1739
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1739
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1739
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 %476, metadata !1609, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i8 %475, metadata !1608, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i8 %155, metadata !1607, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i8 %474, metadata !1602, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 %473, metadata !1600, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 %472, metadata !1599, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 %471, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %470, metadata !1593, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %469, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %468, metadata !1591, metadata !DIExpression()), !dbg !1715
  br i1 %105, label %489, label %478, !dbg !2024

; <label>:478:                                    ; preds = %255, %207, %186, %467
  %479 = phi i64 [ %477, %467 ], [ %129, %186 ], [ %129, %207 ], [ %129, %255 ]
  %480 = phi i8 [ %476, %467 ], [ 0, %186 ], [ 0, %207 ], [ 0, %255 ]
  %481 = phi i8 [ %475, %467 ], [ 1, %186 ], [ 0, %207 ], [ 0, %255 ]
  %482 = phi i8 [ %474, %467 ], [ 48, %186 ], [ 0, %207 ], [ %157, %255 ]
  %483 = phi i8 [ %473, %467 ], [ %127, %186 ], [ %127, %207 ], [ %127, %255 ]
  %484 = phi i8 [ %472, %467 ], [ %182, %186 ], [ %126, %207 ], [ %126, %255 ]
  %485 = phi i64 [ %471, %467 ], [ %154, %186 ], [ %154, %207 ], [ %154, %255 ]
  %486 = phi i64 [ %470, %467 ], [ %124, %186 ], [ %124, %207 ], [ %124, %255 ]
  %487 = phi i64 [ %469, %467 ], [ %187, %186 ], [ %123, %207 ], [ %123, %255 ]
  %488 = phi i64 [ %468, %467 ], [ %122, %186 ], [ %122, %207 ], [ %122, %255 ]
  br i1 %112, label %490, label %512, !dbg !2026

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !2027

; <label>:490:                                    ; preds = %489, %478
  %491 = phi i64 [ %477, %489 ], [ %479, %478 ]
  %492 = phi i8 [ %476, %489 ], [ %480, %478 ]
  %493 = phi i8 [ %475, %489 ], [ %481, %478 ]
  %494 = phi i8 [ %474, %489 ], [ %482, %478 ]
  %495 = phi i8 [ %473, %489 ], [ %483, %478 ]
  %496 = phi i8 [ %472, %489 ], [ %484, %478 ]
  %497 = phi i64 [ %471, %489 ], [ %485, %478 ]
  %498 = phi i64 [ %470, %489 ], [ %486, %478 ]
  %499 = phi i64 [ %469, %489 ], [ %487, %478 ]
  %500 = phi i64 [ %468, %489 ], [ %488, %478 ]
  %501 = lshr i8 %494, 5, !dbg !2028
  %502 = zext i8 %501 to i64, !dbg !2028
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !2029
  %504 = load i32, i32* %503, align 4, !dbg !2029, !tbaa !791
  %505 = and i8 %494, 31, !dbg !2030
  %506 = zext i8 %505 to i32, !dbg !2030
  %507 = shl i32 1, %506, !dbg !2031
  %508 = and i32 %504, %507, !dbg !2031
  %509 = icmp eq i32 %508, 0, !dbg !2031
  %510 = icmp eq i8 %155, 0, !dbg !2032
  %511 = and i1 %510, %509, !dbg !2033
  br i1 %511, label %562, label %524, !dbg !2033

; <label>:512:                                    ; preds = %489, %478
  %513 = phi i64 [ %477, %489 ], [ %479, %478 ]
  %514 = phi i8 [ %476, %489 ], [ %480, %478 ]
  %515 = phi i8 [ %475, %489 ], [ %481, %478 ]
  %516 = phi i8 [ %474, %489 ], [ %482, %478 ]
  %517 = phi i8 [ %473, %489 ], [ %483, %478 ]
  %518 = phi i8 [ %472, %489 ], [ %484, %478 ]
  %519 = phi i64 [ %471, %489 ], [ %485, %478 ]
  %520 = phi i64 [ %470, %489 ], [ %486, %478 ]
  %521 = phi i64 [ %469, %489 ], [ %487, %478 ]
  %522 = phi i64 [ %468, %489 ], [ %488, %478 ]
  %523 = icmp eq i8 %155, 0, !dbg !2032
  br i1 %523, label %562, label %524, !dbg !2034

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !2035
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1714
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1656
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !2023
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1663
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1664
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !2036
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1739
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 %532, metadata !1609, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i8 %531, metadata !1602, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 %530, metadata !1600, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 %529, metadata !1599, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 %528, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %527, metadata !1593, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %526, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %525, metadata !1591, metadata !DIExpression()), !dbg !1715
  br i1 %110, label %534, label %661, !dbg !2039

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1608, metadata !DIExpression()), !dbg !1725
  %535 = and i8 %529, 1, !dbg !2041
  %536 = icmp eq i8 %535, 0, !dbg !2041
  %537 = and i1 %114, %536, !dbg !2041
  br i1 %537, label %538, label %554, !dbg !2041

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !2043
  br i1 %539, label %540, label %542, !dbg !2047

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2043
  store i8 39, i8* %541, align 1, !dbg !2043, !tbaa !799
  br label %542, !dbg !2043

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !2047
  call void @llvm.dbg.value(metadata i64 %543, metadata !1592, metadata !DIExpression()), !dbg !1655
  %544 = icmp ult i64 %543, %533, !dbg !2048
  br i1 %544, label %545, label %547, !dbg !2051

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !2048
  store i8 36, i8* %546, align 1, !dbg !2048, !tbaa !799
  br label %547, !dbg !2048

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !2051
  call void @llvm.dbg.value(metadata i64 %548, metadata !1592, metadata !DIExpression()), !dbg !1655
  %549 = icmp ult i64 %548, %533, !dbg !2052
  br i1 %549, label %550, label %552, !dbg !2055

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2052
  store i8 39, i8* %551, align 1, !dbg !2052, !tbaa !799
  br label %552, !dbg !2052

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !2055
  call void @llvm.dbg.value(metadata i64 %553, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8 1, metadata !1599, metadata !DIExpression()), !dbg !1663
  br label %554, !dbg !2056

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !2013
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1714
  call void @llvm.dbg.value(metadata i8 %556, metadata !1599, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 %555, metadata !1592, metadata !DIExpression()), !dbg !1655
  %557 = icmp ult i64 %555, %533, !dbg !2057
  br i1 %557, label %558, label %560, !dbg !2060

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !2057
  store i8 92, i8* %559, align 1, !dbg !2057, !tbaa !799
  br label %560, !dbg !2057

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !2060
  call void @llvm.dbg.value(metadata i64 %561, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %572, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 %571, metadata !1609, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i8 %570, metadata !1608, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i8 %569, metadata !1602, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 %568, metadata !1600, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 %567, metadata !1599, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 %566, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %565, metadata !1593, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %564, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %563, metadata !1591, metadata !DIExpression()), !dbg !1715
  br label %589, !dbg !2061

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !2035
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1714
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1656
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !2023
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1663
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1664
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !2064
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1739
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1739
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 %571, metadata !1609, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i8 %570, metadata !1608, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i8 %569, metadata !1602, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 %568, metadata !1600, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 %567, metadata !1599, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 %566, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %565, metadata !1593, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %564, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %563, metadata !1591, metadata !DIExpression()), !dbg !1715
  %573 = and i8 %567, 1, !dbg !2061
  %574 = icmp ne i8 %573, 0, !dbg !2061
  %575 = and i8 %570, 1, !dbg !2061
  %576 = icmp eq i8 %575, 0, !dbg !2061
  %577 = and i1 %574, %576, !dbg !2061
  br i1 %577, label %578, label %589, !dbg !2061

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !2065
  br i1 %579, label %580, label %582, !dbg !2069

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2065
  store i8 39, i8* %581, align 1, !dbg !2065, !tbaa !799
  br label %582, !dbg !2065

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !2069
  call void @llvm.dbg.value(metadata i64 %583, metadata !1592, metadata !DIExpression()), !dbg !1655
  %584 = icmp ult i64 %583, %572, !dbg !2070
  br i1 %584, label %585, label %587, !dbg !2073

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !2070
  store i8 39, i8* %586, align 1, !dbg !2070, !tbaa !799
  br label %587, !dbg !2070

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !2073
  call void @llvm.dbg.value(metadata i64 %588, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8 0, metadata !1599, metadata !DIExpression()), !dbg !1663
  br label %589, !dbg !2074

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !2013
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1714
  call void @llvm.dbg.value(metadata i8 %598, metadata !1599, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 %597, metadata !1592, metadata !DIExpression()), !dbg !1655
  %599 = icmp ult i64 %597, %590, !dbg !2075
  br i1 %599, label %600, label %602, !dbg !2078

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !2075
  store i8 %592, i8* %601, align 1, !dbg !2075, !tbaa !799
  br label %602, !dbg !2075

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !2078
  call void @llvm.dbg.value(metadata i64 %603, metadata !1592, metadata !DIExpression()), !dbg !1655
  %604 = and i8 %591, 1, !dbg !2079
  %605 = icmp eq i8 %604, 0, !dbg !2079
  %606 = select i1 %605, i8 0, i8 %128, !dbg !2081
  call void @llvm.dbg.value(metadata i8 %606, metadata !1601, metadata !DIExpression()), !dbg !1665
  br label %607, !dbg !2082

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !2035
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1714
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1656
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !2023
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1663
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1714
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1665
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 %614, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 %613, metadata !1600, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 %612, metadata !1599, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 %611, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %610, metadata !1593, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %609, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %608, metadata !1591, metadata !DIExpression()), !dbg !1715
  %616 = add i64 %608, 1, !dbg !2083
  call void @llvm.dbg.value(metadata i64 %616, metadata !1591, metadata !DIExpression()), !dbg !1715
  br label %121, !dbg !2084, !llvm.loop !2085

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %123, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %124, metadata !1593, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %124, metadata !1593, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8 %126, metadata !1599, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8 %126, metadata !1599, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8 %127, metadata !1600, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 %127, metadata !1600, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 %128, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 %128, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %123, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %123, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %124, metadata !1593, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %124, metadata !1593, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8 %126, metadata !1599, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8 %126, metadata !1599, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8 %127, metadata !1600, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 %127, metadata !1600, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 %128, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 %128, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %123, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %123, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %124, metadata !1593, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %124, metadata !1593, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8 %126, metadata !1599, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8 %126, metadata !1599, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8 %127, metadata !1600, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 %127, metadata !1600, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 %128, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 %128, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %123, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %123, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %124, metadata !1593, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %124, metadata !1593, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8 %126, metadata !1599, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8 %126, metadata !1599, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8 %127, metadata !1600, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 %127, metadata !1600, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 %128, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 %128, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %123, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %123, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %124, metadata !1593, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %124, metadata !1593, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %618, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %618, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 %126, metadata !1599, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8 %126, metadata !1599, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8 %127, metadata !1600, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 %127, metadata !1600, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 %128, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 %128, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %123, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %123, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %124, metadata !1593, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %124, metadata !1593, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %125, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %125, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 %126, metadata !1599, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8 %126, metadata !1599, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8 %127, metadata !1600, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 %127, metadata !1600, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 %128, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 %128, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  %619 = icmp eq i64 %123, 0, !dbg !2087
  %620 = and i1 %114, %619, !dbg !2089
  %621 = xor i1 %620, true, !dbg !2089
  %622 = or i1 %110, %621, !dbg !2089
  br i1 %622, label %623, label %661, !dbg !2089

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !2090
  %625 = xor i1 %624, true, !dbg !2090
  %626 = and i8 %127, 1, !dbg !2092
  %627 = icmp eq i8 %626, 0, !dbg !2092
  %628 = or i1 %627, %625, !dbg !2090
  br i1 %628, label %638, label %629, !dbg !2090

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !2093
  %631 = icmp eq i8 %630, 0, !dbg !2093
  br i1 %631, label %634, label %632, !dbg !2096

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %124, metadata !1593, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %618, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %124, metadata !1593, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %618, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %124, metadata !1593, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %618, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %124, metadata !1593, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %124, metadata !1593, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %618, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8* %95, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %96, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %124, metadata !1593, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %125, metadata !1585, metadata !DIExpression()), !dbg !1649
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !2097
  br label %671, !dbg !2098

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !2099
  %636 = icmp ne i64 %124, 0, !dbg !2101
  %637 = and i1 %636, %635, !dbg !2102
  br i1 %637, label %27, label %638, !dbg !2102

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8* %98, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %123, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %123, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8* %98, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8* %98, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %123, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %123, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8* %98, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8* %98, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %123, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %123, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8* %98, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8* %98, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %123, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %123, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8* %98, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8* %98, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %123, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %123, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8* %98, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8* %98, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %123, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %123, metadata !1592, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1647
  %639 = icmp ne i8* %98, null, !dbg !2103
  %640 = and i1 %639, %110, !dbg !2105
  br i1 %640, label %641, label %656, !dbg !2105

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %123, metadata !1592, metadata !DIExpression()), !dbg !1655
  %642 = load i8, i8* %98, align 1, !dbg !2106, !tbaa !799
  %643 = icmp eq i8 %642, 0, !dbg !2109
  br i1 %643, label %656, label %644, !dbg !2109

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %647, metadata !1592, metadata !DIExpression()), !dbg !1655
  %648 = icmp ult i64 %647, %129, !dbg !2110
  br i1 %648, label %649, label %651, !dbg !2113

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !2110
  store i8 %645, i8* %650, align 1, !dbg !2110, !tbaa !799
  br label %651, !dbg !2110

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !2113
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !2114
  call void @llvm.dbg.value(metadata i8* %653, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %652, metadata !1592, metadata !DIExpression()), !dbg !1655
  %654 = load i8, i8* %653, align 1, !dbg !2106, !tbaa !799
  %655 = icmp eq i8 %654, 0, !dbg !2109
  br i1 %655, label %656, label %644, !dbg !2109, !llvm.loop !2115

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1655
  call void @llvm.dbg.value(metadata i64 %657, metadata !1592, metadata !DIExpression()), !dbg !1655
  %658 = icmp ult i64 %657, %129, !dbg !2117
  br i1 %658, label %659, label %671, !dbg !2119

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !2120
  store i8 0, i8* %660, align 1, !dbg !2121, !tbaa !799
  br label %671, !dbg !2120

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1583, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %663, metadata !1585, metadata !DIExpression()), !dbg !1649
  %665 = icmp ne i32 %662, 2, !dbg !2122
  %666 = icmp eq i8 %102, 0, !dbg !2124
  %667 = or i1 %665, %666, !dbg !2125
  call void @llvm.dbg.value(metadata i32 4, metadata !1586, metadata !DIExpression()), !dbg !1650
  %668 = select i1 %667, i32 %662, i32 4, !dbg !2125
  call void @llvm.dbg.value(metadata i32 %668, metadata !1586, metadata !DIExpression()), !dbg !1650
  %669 = and i32 %5, -3, !dbg !2126
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !2127
  br label %671, !dbg !2128

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !2129
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !2130 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2134, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i32 %1, metadata !2135, metadata !DIExpression()), !dbg !2139
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2140
  call void @llvm.dbg.value(metadata i8* %3, metadata !2136, metadata !DIExpression()), !dbg !2141
  %4 = icmp eq i8* %3, %0, !dbg !2142
  br i1 %4, label %5, label %71, !dbg !2144

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2145
  call void @llvm.dbg.value(metadata i8* %6, metadata !2137, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8* %6, metadata !2147, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i8* null, metadata !2153, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8 85, metadata !2154, metadata !DIExpression()), !dbg !2167
  call void @llvm.dbg.value(metadata i8 84, metadata !2155, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i8 70, metadata !2156, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i8 45, metadata !2157, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i8 56, metadata !2158, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i8 0, metadata !2159, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i8 0, metadata !2160, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i8 0, metadata !2161, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8 0, metadata !2162, metadata !DIExpression()), !dbg !2175
  %7 = load i8, i8* %6, align 1, !dbg !2176, !tbaa !799
  %8 = and i8 %7, -33, !dbg !2176
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2176

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2178, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8* null, metadata !2183, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 84, metadata !2184, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i8 70, metadata !2185, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i8 45, metadata !2186, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8 56, metadata !2187, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i8 0, metadata !2188, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata i8 0, metadata !2189, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 0, metadata !2190, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i8 0, metadata !2191, metadata !DIExpression()), !dbg !2204
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2205
  %11 = load i8, i8* %10, align 1, !dbg !2205, !tbaa !799
  %12 = and i8 %11, -33, !dbg !2205
  %13 = icmp eq i8 %12, 84, !dbg !2205
  br i1 %13, label %14, label %68, !dbg !2205

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2207, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8* null, metadata !2212, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i8 70, metadata !2213, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i8 45, metadata !2214, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8 56, metadata !2215, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i8 0, metadata !2216, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.value(metadata i8 0, metadata !2217, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i8 0, metadata !2218, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata i8 0, metadata !2219, metadata !DIExpression()), !dbg !2231
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2232
  %16 = load i8, i8* %15, align 1, !dbg !2232, !tbaa !799
  %17 = and i8 %16, -33, !dbg !2232
  %18 = icmp eq i8 %17, 70, !dbg !2232
  br i1 %18, label %19, label %68, !dbg !2232

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2234, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i8* null, metadata !2239, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i8 45, metadata !2240, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 56, metadata !2241, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 0, metadata !2242, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata i8 0, metadata !2243, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i8 0, metadata !2244, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8 0, metadata !2245, metadata !DIExpression()), !dbg !2256
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2257
  %21 = load i8, i8* %20, align 1, !dbg !2257, !tbaa !799
  %22 = icmp eq i8 %21, 45, !dbg !2257
  br i1 %22, label %23, label %68, !dbg !2259

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2260, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* null, metadata !2265, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8 56, metadata !2266, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 0, metadata !2267, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i8 0, metadata !2268, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i8 0, metadata !2269, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i8 0, metadata !2270, metadata !DIExpression()), !dbg !2280
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2281
  %25 = load i8, i8* %24, align 1, !dbg !2281, !tbaa !799
  %26 = icmp eq i8 %25, 56, !dbg !2281
  br i1 %26, label %27, label %68, !dbg !2283

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2284, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8* null, metadata !2289, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i8 0, metadata !2290, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 0, metadata !2291, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 0, metadata !2292, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 0, metadata !2293, metadata !DIExpression()), !dbg !2302
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2303
  %29 = load i8, i8* %28, align 1, !dbg !2303, !tbaa !799
  %30 = icmp eq i8 %29, 0, !dbg !2303
  br i1 %30, label %31, label %68, !dbg !2305

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2306, !tbaa !799
  %33 = icmp eq i8 %32, 96, !dbg !2307
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.82, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.83, i64 0, i64 0), !dbg !2306
  br label %71, !dbg !2308

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2178, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8* null, metadata !2183, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata i8 66, metadata !2184, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i8 49, metadata !2185, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i8 56, metadata !2186, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 48, metadata !2187, metadata !DIExpression()), !dbg !2317
  call void @llvm.dbg.value(metadata i8 51, metadata !2188, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i8 48, metadata !2189, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 0, metadata !2190, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i8 0, metadata !2191, metadata !DIExpression()), !dbg !2321
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2322
  %37 = load i8, i8* %36, align 1, !dbg !2322, !tbaa !799
  %38 = and i8 %37, -33, !dbg !2322
  %39 = icmp eq i8 %38, 66, !dbg !2322
  br i1 %39, label %40, label %68, !dbg !2322

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2207, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata i8* null, metadata !2212, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i8 49, metadata !2213, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 56, metadata !2214, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i8 48, metadata !2215, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i8 51, metadata !2216, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata i8 48, metadata !2217, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 0, metadata !2218, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i8 0, metadata !2219, metadata !DIExpression()), !dbg !2332
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2333
  %42 = load i8, i8* %41, align 1, !dbg !2333, !tbaa !799
  %43 = icmp eq i8 %42, 49, !dbg !2333
  br i1 %43, label %44, label %68, !dbg !2334

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2234, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i8* null, metadata !2239, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata i8 56, metadata !2240, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 48, metadata !2241, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata i8 51, metadata !2242, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8 48, metadata !2243, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 0, metadata !2244, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i8 0, metadata !2245, metadata !DIExpression()), !dbg !2343
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2344
  %46 = load i8, i8* %45, align 1, !dbg !2344, !tbaa !799
  %47 = icmp eq i8 %46, 56, !dbg !2344
  br i1 %47, label %48, label %68, !dbg !2345

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2260, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8* null, metadata !2265, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata i8 48, metadata !2266, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 51, metadata !2267, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata i8 48, metadata !2268, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8 0, metadata !2269, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8 0, metadata !2270, metadata !DIExpression()), !dbg !2353
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2354
  %50 = load i8, i8* %49, align 1, !dbg !2354, !tbaa !799
  %51 = icmp eq i8 %50, 48, !dbg !2354
  br i1 %51, label %52, label %68, !dbg !2355

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2284, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* null, metadata !2289, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i8 51, metadata !2290, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 48, metadata !2291, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i8 0, metadata !2292, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 0, metadata !2293, metadata !DIExpression()), !dbg !2362
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2363
  %54 = load i8, i8* %53, align 1, !dbg !2363, !tbaa !799
  %55 = icmp eq i8 %54, 51, !dbg !2363
  br i1 %55, label %56, label %68, !dbg !2364

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2365, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i8* null, metadata !2370, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i8 48, metadata !2371, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i8 0, metadata !2372, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i8 0, metadata !2373, metadata !DIExpression()), !dbg !2381
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2382
  %58 = load i8, i8* %57, align 1, !dbg !2382, !tbaa !799
  %59 = icmp eq i8 %58, 48, !dbg !2382
  br i1 %59, label %60, label %68, !dbg !2384

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2385, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i8* null, metadata !2390, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata i8 0, metadata !2391, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i8 0, metadata !2392, metadata !DIExpression()), !dbg !2399
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2400
  %62 = load i8, i8* %61, align 1, !dbg !2400, !tbaa !799
  %63 = icmp eq i8 %62, 0, !dbg !2400
  br i1 %63, label %64, label %68, !dbg !2402

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2403, !tbaa !799
  %66 = icmp eq i8 %65, 96, !dbg !2404
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.84, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.85, i64 0, i64 0), !dbg !2403
  br label %71, !dbg !2405

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2406
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), !dbg !2407
  br label %71, !dbg !2408

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2409
  ret i8* %72, !dbg !2410
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #12

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2411 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2415, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i64 %1, metadata !2416, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2417, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i8* %0, metadata !2421, metadata !DIExpression()) #10, !dbg !2434
  call void @llvm.dbg.value(metadata i64 %1, metadata !2426, metadata !DIExpression()) #10, !dbg !2436
  call void @llvm.dbg.value(metadata i64* null, metadata !2427, metadata !DIExpression()) #10, !dbg !2437
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2428, metadata !DIExpression()) #10, !dbg !2438
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2439
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2439
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2429, metadata !DIExpression()) #10, !dbg !2440
  %6 = tail call i32* @__errno_location() #17, !dbg !2441
  %7 = load i32, i32* %6, align 4, !dbg !2441, !tbaa !791
  call void @llvm.dbg.value(metadata i32 %7, metadata !2430, metadata !DIExpression()) #10, !dbg !2442
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2443
  %9 = load i32, i32* %8, align 4, !dbg !2443, !tbaa !1515
  %10 = or i32 %9, 1, !dbg !2444
  call void @llvm.dbg.value(metadata i32 %10, metadata !2431, metadata !DIExpression()) #10, !dbg !2445
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2446
  %12 = load i32, i32* %11, align 8, !dbg !2446, !tbaa !1455
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2447
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2448
  %15 = load i8*, i8** %14, align 8, !dbg !2448, !tbaa !1541
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2449
  %17 = load i8*, i8** %16, align 8, !dbg !2449, !tbaa !1544
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #10, !dbg !2450
  %19 = add i64 %18, 1, !dbg !2451
  call void @llvm.dbg.value(metadata i64 %19, metadata !2432, metadata !DIExpression()) #10, !dbg !2452
  call void @llvm.dbg.value(metadata i64 %19, metadata !2453, metadata !DIExpression()) #10, !dbg !2458
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2460
  call void @llvm.dbg.value(metadata i8* %20, metadata !2433, metadata !DIExpression()) #10, !dbg !2461
  %21 = load i32, i32* %11, align 8, !dbg !2462, !tbaa !1455
  %22 = load i8*, i8** %14, align 8, !dbg !2463, !tbaa !1541
  %23 = load i8*, i8** %16, align 8, !dbg !2464, !tbaa !1544
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #10, !dbg !2465
  store i32 %7, i32* %6, align 4, !dbg !2466, !tbaa !791
  ret i8* %20, !dbg !2467
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2422 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2421, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i64 %1, metadata !2426, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i64* %2, metadata !2427, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2428, metadata !DIExpression()), !dbg !2471
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2472
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2472
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2429, metadata !DIExpression()), !dbg !2473
  %7 = tail call i32* @__errno_location() #17, !dbg !2474
  %8 = load i32, i32* %7, align 4, !dbg !2474, !tbaa !791
  call void @llvm.dbg.value(metadata i32 %8, metadata !2430, metadata !DIExpression()), !dbg !2475
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2476
  %10 = load i32, i32* %9, align 4, !dbg !2476, !tbaa !1515
  %11 = icmp ne i64* %2, null, !dbg !2477
  %12 = xor i1 %11, true, !dbg !2477
  %13 = zext i1 %12 to i32, !dbg !2477
  %14 = or i32 %10, %13, !dbg !2478
  call void @llvm.dbg.value(metadata i32 %14, metadata !2431, metadata !DIExpression()), !dbg !2479
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2480
  %16 = load i32, i32* %15, align 8, !dbg !2480, !tbaa !1455
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2481
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2482
  %19 = load i8*, i8** %18, align 8, !dbg !2482, !tbaa !1541
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2483
  %21 = load i8*, i8** %20, align 8, !dbg !2483, !tbaa !1544
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2484
  %23 = add i64 %22, 1, !dbg !2485
  call void @llvm.dbg.value(metadata i64 %23, metadata !2432, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i64 %23, metadata !2453, metadata !DIExpression()) #10, !dbg !2487
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2489
  call void @llvm.dbg.value(metadata i8* %24, metadata !2433, metadata !DIExpression()), !dbg !2490
  %25 = load i32, i32* %15, align 8, !dbg !2491, !tbaa !1455
  %26 = load i8*, i8** %18, align 8, !dbg !2492, !tbaa !1541
  %27 = load i8*, i8** %20, align 8, !dbg !2493, !tbaa !1544
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2494
  store i32 %8, i32* %7, align 4, !dbg !2495, !tbaa !791
  br i1 %11, label %29, label %30, !dbg !2496

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2497, !tbaa !871
  br label %30, !dbg !2499

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2500
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2501 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2505, !tbaa !648
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2503, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i32 1, metadata !2504, metadata !DIExpression()), !dbg !2507
  %2 = load i32, i32* @nslots, align 4, !dbg !2508, !tbaa !791
  %3 = icmp sgt i32 %2, 1, !dbg !2511
  br i1 %3, label %4, label %12, !dbg !2512

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2504, metadata !DIExpression()), !dbg !2507
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2513
  %7 = load i8*, i8** %6, align 8, !dbg !2513, !tbaa !2514
  tail call void @free(i8* %7) #10, !dbg !2516
  %8 = add nuw nsw i64 %5, 1, !dbg !2517
  call void @llvm.dbg.value(metadata i32 undef, metadata !2504, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2507
  %9 = load i32, i32* @nslots, align 4, !dbg !2508, !tbaa !791
  %10 = sext i32 %9 to i64, !dbg !2511
  %11 = icmp slt i64 %8, %10, !dbg !2511
  br i1 %11, label %4, label %12, !dbg !2512, !llvm.loop !2518

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2520
  %14 = load i8*, i8** %13, align 8, !dbg !2520, !tbaa !2514
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2522
  br i1 %15, label %17, label %16, !dbg !2523

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #10, !dbg !2524
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2526, !tbaa !2527
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2528, !tbaa !2514
  br label %17, !dbg !2529

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2530
  br i1 %18, label %21, label %19, !dbg !2532

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2533
  tail call void @free(i8* %20) #10, !dbg !2535
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2536, !tbaa !648
  br label %21, !dbg !2537

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2538, !tbaa !791
  ret void, !dbg !2539
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2540 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2544, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i8* %1, metadata !2545, metadata !DIExpression()), !dbg !2547
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2548
  ret i8* %3, !dbg !2549
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2550 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2554, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i8* %1, metadata !2555, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i64 %2, metadata !2556, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2557, metadata !DIExpression()), !dbg !2572
  %5 = tail call i32* @__errno_location() #17, !dbg !2573
  %6 = load i32, i32* %5, align 4, !dbg !2573, !tbaa !791
  call void @llvm.dbg.value(metadata i32 %6, metadata !2558, metadata !DIExpression()), !dbg !2574
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2575, !tbaa !648
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2559, metadata !DIExpression()), !dbg !2576
  %8 = icmp slt i32 %0, 0, !dbg !2577
  br i1 %8, label %9, label %10, !dbg !2579

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2580
  unreachable, !dbg !2580

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2581, !tbaa !791
  %12 = icmp sgt i32 %11, %0, !dbg !2582
  br i1 %12, label %34, label %13, !dbg !2583

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2584
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2563, metadata !DIExpression()), !dbg !2585
  %15 = icmp eq i32 %0, 2147483647, !dbg !2586
  br i1 %15, label %16, label %17, !dbg !2588

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2589
  unreachable, !dbg !2589

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2590
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2590
  %20 = add nsw i32 %0, 1, !dbg !2591
  %21 = sext i32 %20 to i64, !dbg !2592
  %22 = shl nsw i64 %21, 4, !dbg !2593
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2594
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2594
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2559, metadata !DIExpression()), !dbg !2576
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2595, !tbaa !648
  br i1 %14, label %25, label %26, !dbg !2596

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2597, !tbaa.struct !2599
  br label %26, !dbg !2600

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2601, !tbaa !791
  %28 = sext i32 %27 to i64, !dbg !2602
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2602
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2603
  %31 = sub nsw i32 %20, %27, !dbg !2604
  %32 = sext i32 %31 to i64, !dbg !2605
  %33 = shl nsw i64 %32, 4, !dbg !2606
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2603
  store i32 %20, i32* @nslots, align 4, !dbg !2607, !tbaa !791
  br label %34, !dbg !2608

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2609
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2559, metadata !DIExpression()), !dbg !2576
  %36 = sext i32 %0 to i64, !dbg !2610
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2611
  %38 = load i64, i64* %37, align 8, !dbg !2611, !tbaa !2527
  call void @llvm.dbg.value(metadata i64 %38, metadata !2564, metadata !DIExpression()), !dbg !2612
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2613
  %40 = load i8*, i8** %39, align 8, !dbg !2613, !tbaa !2514
  call void @llvm.dbg.value(metadata i8* %40, metadata !2566, metadata !DIExpression()), !dbg !2614
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2615
  %42 = load i32, i32* %41, align 4, !dbg !2615, !tbaa !1515
  %43 = or i32 %42, 1, !dbg !2616
  call void @llvm.dbg.value(metadata i32 %43, metadata !2567, metadata !DIExpression()), !dbg !2617
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2618
  %45 = load i32, i32* %44, align 8, !dbg !2618, !tbaa !1455
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2619
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2620
  %48 = load i8*, i8** %47, align 8, !dbg !2620, !tbaa !1541
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2621
  %50 = load i8*, i8** %49, align 8, !dbg !2621, !tbaa !1544
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2622
  call void @llvm.dbg.value(metadata i64 %51, metadata !2568, metadata !DIExpression()), !dbg !2623
  %52 = icmp ugt i64 %38, %51, !dbg !2624
  br i1 %52, label %63, label %53, !dbg !2626

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2627
  call void @llvm.dbg.value(metadata i64 %54, metadata !2564, metadata !DIExpression()), !dbg !2612
  store i64 %54, i64* %37, align 8, !dbg !2629, !tbaa !2527
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2630
  br i1 %55, label %57, label %56, !dbg !2632

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2633
  br label %57, !dbg !2633

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2453, metadata !DIExpression()) #10, !dbg !2634
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2636
  call void @llvm.dbg.value(metadata i8* %58, metadata !2566, metadata !DIExpression()), !dbg !2614
  store i8* %58, i8** %39, align 8, !dbg !2637, !tbaa !2514
  %59 = load i32, i32* %44, align 8, !dbg !2638, !tbaa !1455
  %60 = load i8*, i8** %47, align 8, !dbg !2639, !tbaa !1541
  %61 = load i8*, i8** %49, align 8, !dbg !2640, !tbaa !1544
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2641
  br label %63, !dbg !2642

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2643
  call void @llvm.dbg.value(metadata i8* %64, metadata !2566, metadata !DIExpression()), !dbg !2614
  store i32 %6, i32* %5, align 4, !dbg !2644, !tbaa !791
  ret i8* %64, !dbg !2645
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2646 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2650, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i8* %1, metadata !2651, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i64 %2, metadata !2652, metadata !DIExpression()), !dbg !2655
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2656
  ret i8* %4, !dbg !2657
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2658 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2662, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i32 0, metadata !2544, metadata !DIExpression()) #10, !dbg !2664
  call void @llvm.dbg.value(metadata i8* %0, metadata !2545, metadata !DIExpression()) #10, !dbg !2666
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2667
  ret i8* %2, !dbg !2668
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2669 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2673, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %1, metadata !2674, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i32 0, metadata !2650, metadata !DIExpression()) #10, !dbg !2677
  call void @llvm.dbg.value(metadata i8* %0, metadata !2651, metadata !DIExpression()) #10, !dbg !2679
  call void @llvm.dbg.value(metadata i64 %1, metadata !2652, metadata !DIExpression()) #10, !dbg !2680
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2681
  ret i8* %3, !dbg !2682
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2683 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2687, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i32 %1, metadata !2688, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i8* %2, metadata !2689, metadata !DIExpression()), !dbg !2693
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2694
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2694
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2690, metadata !DIExpression(DW_OP_deref)), !dbg !2695
  call void @llvm.dbg.value(metadata i32 %1, metadata !2696, metadata !DIExpression()) #10, !dbg !2702
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2704, !alias.scope !2705
  %6 = icmp eq i32 %1, 10, !dbg !2708
  br i1 %6, label %7, label %8, !dbg !2710

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2711, !noalias !2705
  unreachable, !dbg !2711

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2712
  store i32 %1, i32* %9, align 8, !dbg !2713, !tbaa !1455, !alias.scope !2705
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2690, metadata !DIExpression(DW_OP_deref)), !dbg !2695
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2701, metadata !DIExpression(DW_OP_deref)), !dbg !2704
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2714
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2715
  ret i8* %10, !dbg !2716
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2717 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2721, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i32 %1, metadata !2722, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8* %2, metadata !2723, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 %3, metadata !2724, metadata !DIExpression()), !dbg !2729
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2730
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2730
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2725, metadata !DIExpression(DW_OP_deref)), !dbg !2731
  call void @llvm.dbg.value(metadata i32 %1, metadata !2696, metadata !DIExpression()) #10, !dbg !2732
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #10, !dbg !2734, !alias.scope !2735
  %7 = icmp eq i32 %1, 10, !dbg !2738
  br i1 %7, label %8, label %9, !dbg !2739

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2740, !noalias !2735
  unreachable, !dbg !2740

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2741
  store i32 %1, i32* %10, align 8, !dbg !2742, !tbaa !1455, !alias.scope !2735
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2725, metadata !DIExpression(DW_OP_deref)), !dbg !2731
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2701, metadata !DIExpression(DW_OP_deref)), !dbg !2734
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2743
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2744
  ret i8* %11, !dbg !2745
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2746 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2750, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i8* %1, metadata !2751, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i32 0, metadata !2687, metadata !DIExpression()) #10, !dbg !2754
  call void @llvm.dbg.value(metadata i32 %0, metadata !2688, metadata !DIExpression()) #10, !dbg !2756
  call void @llvm.dbg.value(metadata i8* %1, metadata !2689, metadata !DIExpression()) #10, !dbg !2757
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2758
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2758
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2690, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2759
  call void @llvm.dbg.value(metadata i32 %0, metadata !2696, metadata !DIExpression()) #10, !dbg !2760
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #10, !dbg !2762, !alias.scope !2763
  %5 = icmp eq i32 %0, 10, !dbg !2766
  br i1 %5, label %6, label %7, !dbg !2767

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2768, !noalias !2763
  unreachable, !dbg !2768

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2769
  store i32 %0, i32* %8, align 8, !dbg !2770, !tbaa !1455, !alias.scope !2763
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2690, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2759
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2701, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2762
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2771
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2772
  ret i8* %9, !dbg !2773
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2774 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2778, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i8* %1, metadata !2779, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %2, metadata !2780, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i32 0, metadata !2721, metadata !DIExpression()) #10, !dbg !2784
  call void @llvm.dbg.value(metadata i32 %0, metadata !2722, metadata !DIExpression()) #10, !dbg !2786
  call void @llvm.dbg.value(metadata i8* %1, metadata !2723, metadata !DIExpression()) #10, !dbg !2787
  call void @llvm.dbg.value(metadata i64 %2, metadata !2724, metadata !DIExpression()) #10, !dbg !2788
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2789
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2789
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2725, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2790
  call void @llvm.dbg.value(metadata i32 %0, metadata !2696, metadata !DIExpression()) #10, !dbg !2791
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2793, !alias.scope !2794
  %6 = icmp eq i32 %0, 10, !dbg !2797
  br i1 %6, label %7, label %8, !dbg !2798

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2799, !noalias !2794
  unreachable, !dbg !2799

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2800
  store i32 %0, i32* %9, align 8, !dbg !2801, !tbaa !1455, !alias.scope !2794
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2725, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2790
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2701, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2793
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #10, !dbg !2802
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2803
  ret i8* %10, !dbg !2804
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2805 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2809, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i64 %1, metadata !2810, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i8 %2, metadata !2811, metadata !DIExpression()), !dbg !2815
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2816
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2816
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2817, !tbaa.struct !2818
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2812, metadata !DIExpression(DW_OP_deref)), !dbg !2819
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1474, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i8 %2, metadata !1475, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i32 1, metadata !1476, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i8 %2, metadata !1477, metadata !DIExpression()), !dbg !2824
  %6 = lshr i8 %2, 5, !dbg !2825
  %7 = zext i8 %6 to i64, !dbg !2825
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2826
  call void @llvm.dbg.value(metadata i32* %8, metadata !1479, metadata !DIExpression()), !dbg !2827
  %9 = and i8 %2, 31, !dbg !2828
  %10 = zext i8 %9 to i32, !dbg !2828
  call void @llvm.dbg.value(metadata i32 %10, metadata !1481, metadata !DIExpression()), !dbg !2829
  %11 = load i32, i32* %8, align 4, !dbg !2830, !tbaa !791
  %12 = lshr i32 %11, %10, !dbg !2831
  %13 = and i32 %12, 1, !dbg !2832
  call void @llvm.dbg.value(metadata i32 %13, metadata !1482, metadata !DIExpression()), !dbg !2833
  %14 = xor i32 %13, 1, !dbg !2834
  %15 = shl i32 %14, %10, !dbg !2835
  %16 = xor i32 %15, %11, !dbg !2836
  store i32 %16, i32* %8, align 4, !dbg !2836, !tbaa !791
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2812, metadata !DIExpression(DW_OP_deref)), !dbg !2819
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2837
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2838
  ret i8* %17, !dbg !2839
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2840 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2844, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8 %1, metadata !2845, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i8* %0, metadata !2809, metadata !DIExpression()) #10, !dbg !2848
  call void @llvm.dbg.value(metadata i64 -1, metadata !2810, metadata !DIExpression()) #10, !dbg !2850
  call void @llvm.dbg.value(metadata i8 %1, metadata !2811, metadata !DIExpression()) #10, !dbg !2851
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2852
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2852
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2853, !tbaa.struct !2818
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2812, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2854
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1474, metadata !DIExpression()) #10, !dbg !2855
  call void @llvm.dbg.value(metadata i8 %1, metadata !1475, metadata !DIExpression()) #10, !dbg !2857
  call void @llvm.dbg.value(metadata i32 1, metadata !1476, metadata !DIExpression()) #10, !dbg !2858
  call void @llvm.dbg.value(metadata i8 %1, metadata !1477, metadata !DIExpression()) #10, !dbg !2859
  %5 = lshr i8 %1, 5, !dbg !2860
  %6 = zext i8 %5 to i64, !dbg !2860
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2861
  call void @llvm.dbg.value(metadata i32* %7, metadata !1479, metadata !DIExpression()) #10, !dbg !2862
  %8 = and i8 %1, 31, !dbg !2863
  %9 = zext i8 %8 to i32, !dbg !2863
  call void @llvm.dbg.value(metadata i32 %9, metadata !1481, metadata !DIExpression()) #10, !dbg !2864
  %10 = load i32, i32* %7, align 4, !dbg !2865, !tbaa !791
  %11 = lshr i32 %10, %9, !dbg !2866
  %12 = and i32 %11, 1, !dbg !2867
  call void @llvm.dbg.value(metadata i32 %12, metadata !1482, metadata !DIExpression()) #10, !dbg !2868
  %13 = xor i32 %12, 1, !dbg !2869
  %14 = shl i32 %13, %9, !dbg !2870
  %15 = xor i32 %14, %10, !dbg !2871
  store i32 %15, i32* %7, align 4, !dbg !2871, !tbaa !791
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2812, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2854
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2872
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2873
  ret i8* %16, !dbg !2874
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2875 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2877, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i8* %0, metadata !2844, metadata !DIExpression()) #10, !dbg !2879
  call void @llvm.dbg.value(metadata i8 58, metadata !2845, metadata !DIExpression()) #10, !dbg !2881
  call void @llvm.dbg.value(metadata i8* %0, metadata !2809, metadata !DIExpression()) #10, !dbg !2882
  call void @llvm.dbg.value(metadata i64 -1, metadata !2810, metadata !DIExpression()) #10, !dbg !2884
  call void @llvm.dbg.value(metadata i8 58, metadata !2811, metadata !DIExpression()) #10, !dbg !2885
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2886
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2886
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2887, !tbaa.struct !2818
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2812, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2888
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1474, metadata !DIExpression()) #10, !dbg !2889
  call void @llvm.dbg.value(metadata i8 58, metadata !1475, metadata !DIExpression()) #10, !dbg !2891
  call void @llvm.dbg.value(metadata i32 1, metadata !1476, metadata !DIExpression()) #10, !dbg !2892
  call void @llvm.dbg.value(metadata i8 58, metadata !1477, metadata !DIExpression()) #10, !dbg !2893
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2894
  call void @llvm.dbg.value(metadata i32* %4, metadata !1479, metadata !DIExpression()) #10, !dbg !2895
  call void @llvm.dbg.value(metadata i32 26, metadata !1481, metadata !DIExpression()) #10, !dbg !2896
  %5 = load i32, i32* %4, align 4, !dbg !2897, !tbaa !791
  %6 = or i32 %5, 67108864, !dbg !2898
  store i32 %6, i32* %4, align 4, !dbg !2898, !tbaa !791
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2812, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2888
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2899
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2900
  ret i8* %7, !dbg !2901
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !2902 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2904, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 %1, metadata !2905, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i8* %0, metadata !2809, metadata !DIExpression()) #10, !dbg !2908
  call void @llvm.dbg.value(metadata i64 %1, metadata !2810, metadata !DIExpression()) #10, !dbg !2910
  call void @llvm.dbg.value(metadata i8 58, metadata !2811, metadata !DIExpression()) #10, !dbg !2911
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2912
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2912
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2913, !tbaa.struct !2818
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2812, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2914
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1474, metadata !DIExpression()) #10, !dbg !2915
  call void @llvm.dbg.value(metadata i8 58, metadata !1475, metadata !DIExpression()) #10, !dbg !2917
  call void @llvm.dbg.value(metadata i32 1, metadata !1476, metadata !DIExpression()) #10, !dbg !2918
  call void @llvm.dbg.value(metadata i8 58, metadata !1477, metadata !DIExpression()) #10, !dbg !2919
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2920
  call void @llvm.dbg.value(metadata i32* %5, metadata !1479, metadata !DIExpression()) #10, !dbg !2921
  call void @llvm.dbg.value(metadata i32 26, metadata !1481, metadata !DIExpression()) #10, !dbg !2922
  %6 = load i32, i32* %5, align 4, !dbg !2923, !tbaa !791
  %7 = or i32 %6, 67108864, !dbg !2924
  store i32 %7, i32* %5, align 4, !dbg !2924, !tbaa !791
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2812, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2914
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2925
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2926
  ret i8* %8, !dbg !2927
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !2928 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2701, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2934
  call void @llvm.dbg.value(metadata i32 %0, metadata !2930, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i32 %1, metadata !2931, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i8* %2, metadata !2932, metadata !DIExpression()), !dbg !2938
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2939
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2939
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2940
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2940
  call void @llvm.dbg.value(metadata i32 %1, metadata !2696, metadata !DIExpression()) #10, !dbg !2941
  call void @llvm.dbg.value(metadata i32 0, metadata !2701, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2934
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2934, !alias.scope !2942
  %8 = icmp eq i32 %1, 10, !dbg !2945
  br i1 %8, label %9, label %10, !dbg !2946

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2947, !noalias !2942
  unreachable, !dbg !2947

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2701, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2934
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2940
  store i32 %1, i32* %11, align 8, !dbg !2940
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2940
  %13 = bitcast i32* %12 to i8*, !dbg !2940
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2940
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2940
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2933, metadata !DIExpression(DW_OP_deref)), !dbg !2948
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1474, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i8 58, metadata !1475, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata i32 1, metadata !1476, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i8 58, metadata !1477, metadata !DIExpression()), !dbg !2953
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2954
  call void @llvm.dbg.value(metadata i32* %14, metadata !1479, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i32 26, metadata !1481, metadata !DIExpression()), !dbg !2956
  %15 = load i32, i32* %14, align 4, !dbg !2957, !tbaa !791
  %16 = or i32 %15, 67108864, !dbg !2958
  store i32 %16, i32* %14, align 4, !dbg !2958, !tbaa !791
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2933, metadata !DIExpression(DW_OP_deref)), !dbg !2948
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2959
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2960
  ret i8* %17, !dbg !2961
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2962 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2966, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i8* %1, metadata !2967, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i8* %2, metadata !2968, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i8* %3, metadata !2969, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i32 %0, metadata !2974, metadata !DIExpression()) #10, !dbg !2984
  call void @llvm.dbg.value(metadata i8* %1, metadata !2979, metadata !DIExpression()) #10, !dbg !2986
  call void @llvm.dbg.value(metadata i8* %2, metadata !2980, metadata !DIExpression()) #10, !dbg !2987
  call void @llvm.dbg.value(metadata i8* %3, metadata !2981, metadata !DIExpression()) #10, !dbg !2988
  call void @llvm.dbg.value(metadata i64 -1, metadata !2982, metadata !DIExpression()) #10, !dbg !2989
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2990
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2990
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2991, !tbaa.struct !2818
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2983, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2992
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1523, metadata !DIExpression()) #10, !dbg !2993
  call void @llvm.dbg.value(metadata i8* %1, metadata !1524, metadata !DIExpression()) #10, !dbg !2995
  call void @llvm.dbg.value(metadata i8* %2, metadata !1525, metadata !DIExpression()) #10, !dbg !2996
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1523, metadata !DIExpression()) #10, !dbg !2993
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2997
  store i32 10, i32* %7, align 8, !dbg !2998, !tbaa !1455
  %8 = icmp ne i8* %1, null, !dbg !2999
  %9 = icmp ne i8* %2, null, !dbg !3000
  %10 = and i1 %8, %9, !dbg !3001
  br i1 %10, label %12, label %11, !dbg !3001

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3002
  unreachable, !dbg !3002

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3003
  store i8* %1, i8** %13, align 8, !dbg !3004, !tbaa !1541
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3005
  store i8* %2, i8** %14, align 8, !dbg !3006, !tbaa !1544
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2983, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2992
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3007
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3008
  ret i8* %15, !dbg !3009
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2975 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2974, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i8* %1, metadata !2979, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i8* %2, metadata !2980, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i8* %3, metadata !2981, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata i64 %4, metadata !2982, metadata !DIExpression()), !dbg !3014
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3015
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3015
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3016, !tbaa.struct !2818
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2983, metadata !DIExpression(DW_OP_deref)), !dbg !3017
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1523, metadata !DIExpression()) #10, !dbg !3018
  call void @llvm.dbg.value(metadata i8* %1, metadata !1524, metadata !DIExpression()) #10, !dbg !3020
  call void @llvm.dbg.value(metadata i8* %2, metadata !1525, metadata !DIExpression()) #10, !dbg !3021
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1523, metadata !DIExpression()) #10, !dbg !3018
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3022
  store i32 10, i32* %8, align 8, !dbg !3023, !tbaa !1455
  %9 = icmp ne i8* %1, null, !dbg !3024
  %10 = icmp ne i8* %2, null, !dbg !3025
  %11 = and i1 %9, %10, !dbg !3026
  br i1 %11, label %13, label %12, !dbg !3026

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3027
  unreachable, !dbg !3027

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3028
  store i8* %1, i8** %14, align 8, !dbg !3029, !tbaa !1541
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3030
  store i8* %2, i8** %15, align 8, !dbg !3031, !tbaa !1544
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2983, metadata !DIExpression(DW_OP_deref)), !dbg !3017
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3032
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3033
  ret i8* %16, !dbg !3034
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3035 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3039, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8* %1, metadata !3040, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i8* %2, metadata !3041, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i32 0, metadata !2966, metadata !DIExpression()) #10, !dbg !3045
  call void @llvm.dbg.value(metadata i8* %0, metadata !2967, metadata !DIExpression()) #10, !dbg !3047
  call void @llvm.dbg.value(metadata i8* %1, metadata !2968, metadata !DIExpression()) #10, !dbg !3048
  call void @llvm.dbg.value(metadata i8* %2, metadata !2969, metadata !DIExpression()) #10, !dbg !3049
  call void @llvm.dbg.value(metadata i32 0, metadata !2974, metadata !DIExpression()) #10, !dbg !3050
  call void @llvm.dbg.value(metadata i8* %0, metadata !2979, metadata !DIExpression()) #10, !dbg !3052
  call void @llvm.dbg.value(metadata i8* %1, metadata !2980, metadata !DIExpression()) #10, !dbg !3053
  call void @llvm.dbg.value(metadata i8* %2, metadata !2981, metadata !DIExpression()) #10, !dbg !3054
  call void @llvm.dbg.value(metadata i64 -1, metadata !2982, metadata !DIExpression()) #10, !dbg !3055
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3056
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3056
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3057, !tbaa.struct !2818
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2983, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3058
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1523, metadata !DIExpression()) #10, !dbg !3059
  call void @llvm.dbg.value(metadata i8* %0, metadata !1524, metadata !DIExpression()) #10, !dbg !3061
  call void @llvm.dbg.value(metadata i8* %1, metadata !1525, metadata !DIExpression()) #10, !dbg !3062
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1523, metadata !DIExpression()) #10, !dbg !3059
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3063
  store i32 10, i32* %6, align 8, !dbg !3064, !tbaa !1455
  %7 = icmp ne i8* %0, null, !dbg !3065
  %8 = icmp ne i8* %1, null, !dbg !3066
  %9 = and i1 %7, %8, !dbg !3067
  br i1 %9, label %11, label %10, !dbg !3067

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3068
  unreachable, !dbg !3068

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3069
  store i8* %0, i8** %12, align 8, !dbg !3070, !tbaa !1541
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3071
  store i8* %1, i8** %13, align 8, !dbg !3072, !tbaa !1544
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2983, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3058
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3073
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3074
  ret i8* %14, !dbg !3075
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3076 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3080, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i8* %1, metadata !3081, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i8* %2, metadata !3082, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata i64 %3, metadata !3083, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i32 0, metadata !2974, metadata !DIExpression()) #10, !dbg !3088
  call void @llvm.dbg.value(metadata i8* %0, metadata !2979, metadata !DIExpression()) #10, !dbg !3090
  call void @llvm.dbg.value(metadata i8* %1, metadata !2980, metadata !DIExpression()) #10, !dbg !3091
  call void @llvm.dbg.value(metadata i8* %2, metadata !2981, metadata !DIExpression()) #10, !dbg !3092
  call void @llvm.dbg.value(metadata i64 %3, metadata !2982, metadata !DIExpression()) #10, !dbg !3093
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3094
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3094
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3095, !tbaa.struct !2818
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2983, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3096
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1523, metadata !DIExpression()) #10, !dbg !3097
  call void @llvm.dbg.value(metadata i8* %0, metadata !1524, metadata !DIExpression()) #10, !dbg !3099
  call void @llvm.dbg.value(metadata i8* %1, metadata !1525, metadata !DIExpression()) #10, !dbg !3100
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1523, metadata !DIExpression()) #10, !dbg !3097
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3101
  store i32 10, i32* %7, align 8, !dbg !3102, !tbaa !1455
  %8 = icmp ne i8* %0, null, !dbg !3103
  %9 = icmp ne i8* %1, null, !dbg !3104
  %10 = and i1 %8, %9, !dbg !3105
  br i1 %10, label %12, label %11, !dbg !3105

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3106
  unreachable, !dbg !3106

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3107
  store i8* %0, i8** %13, align 8, !dbg !3108, !tbaa !1541
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3109
  store i8* %1, i8** %14, align 8, !dbg !3110, !tbaa !1544
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2983, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3096
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3111
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3112
  ret i8* %15, !dbg !3113
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3114 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3118, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i8* %1, metadata !3119, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %2, metadata !3120, metadata !DIExpression()), !dbg !3123
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3124
  ret i8* %4, !dbg !3125
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !3126 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3130, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i64 %1, metadata !3131, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i32 0, metadata !3118, metadata !DIExpression()) #10, !dbg !3134
  call void @llvm.dbg.value(metadata i8* %0, metadata !3119, metadata !DIExpression()) #10, !dbg !3136
  call void @llvm.dbg.value(metadata i64 %1, metadata !3120, metadata !DIExpression()) #10, !dbg !3137
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3138
  ret i8* %3, !dbg !3139
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !3140 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3144, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i8* %1, metadata !3145, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i32 %0, metadata !3118, metadata !DIExpression()) #10, !dbg !3148
  call void @llvm.dbg.value(metadata i8* %1, metadata !3119, metadata !DIExpression()) #10, !dbg !3150
  call void @llvm.dbg.value(metadata i64 -1, metadata !3120, metadata !DIExpression()) #10, !dbg !3151
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3152
  ret i8* %3, !dbg !3153
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !3154 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3158, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i32 0, metadata !3144, metadata !DIExpression()) #10, !dbg !3160
  call void @llvm.dbg.value(metadata i8* %0, metadata !3145, metadata !DIExpression()) #10, !dbg !3162
  call void @llvm.dbg.value(metadata i32 0, metadata !3118, metadata !DIExpression()) #10, !dbg !3163
  call void @llvm.dbg.value(metadata i8* %0, metadata !3119, metadata !DIExpression()) #10, !dbg !3165
  call void @llvm.dbg.value(metadata i64 -1, metadata !3120, metadata !DIExpression()) #10, !dbg !3166
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3167
  ret i8* %2, !dbg !3168
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !3169 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3226, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i8* %1, metadata !3227, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i8* %2, metadata !3228, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i8* %3, metadata !3229, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata i8** %4, metadata !3230, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata i64 %5, metadata !3231, metadata !DIExpression()), !dbg !3237
  %7 = icmp eq i8* %1, null, !dbg !3238
  br i1 %7, label %10, label %8, !dbg !3240

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3241
  br label %12, !dbg !3241

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.95, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3242
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.96, i64 0, i64 0), i32 5) #10, !dbg !3243
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #10, !dbg !3243
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.97, i64 0, i64 0), i32 5) #10, !dbg !3244
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3244
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
  ], !dbg !3245

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3246
  unreachable, !dbg !3246

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.98, i64 0, i64 0), i32 5) #10, !dbg !3248
  %20 = load i8*, i8** %4, align 8, !dbg !3248, !tbaa !648
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3248
  br label %146, !dbg !3249

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.99, i64 0, i64 0), i32 5) #10, !dbg !3250
  %24 = load i8*, i8** %4, align 8, !dbg !3250, !tbaa !648
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3250
  %26 = load i8*, i8** %25, align 8, !dbg !3250, !tbaa !648
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3250
  br label %146, !dbg !3251

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.100, i64 0, i64 0), i32 5) #10, !dbg !3252
  %30 = load i8*, i8** %4, align 8, !dbg !3252, !tbaa !648
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3252
  %32 = load i8*, i8** %31, align 8, !dbg !3252, !tbaa !648
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3252
  %34 = load i8*, i8** %33, align 8, !dbg !3252, !tbaa !648
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3252
  br label %146, !dbg !3253

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.101, i64 0, i64 0), i32 5) #10, !dbg !3254
  %38 = load i8*, i8** %4, align 8, !dbg !3254, !tbaa !648
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3254
  %40 = load i8*, i8** %39, align 8, !dbg !3254, !tbaa !648
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3254
  %42 = load i8*, i8** %41, align 8, !dbg !3254, !tbaa !648
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3254
  %44 = load i8*, i8** %43, align 8, !dbg !3254, !tbaa !648
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3254
  br label %146, !dbg !3255

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.102, i64 0, i64 0), i32 5) #10, !dbg !3256
  %48 = load i8*, i8** %4, align 8, !dbg !3256, !tbaa !648
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3256
  %50 = load i8*, i8** %49, align 8, !dbg !3256, !tbaa !648
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3256
  %52 = load i8*, i8** %51, align 8, !dbg !3256, !tbaa !648
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3256
  %54 = load i8*, i8** %53, align 8, !dbg !3256, !tbaa !648
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3256
  %56 = load i8*, i8** %55, align 8, !dbg !3256, !tbaa !648
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3256
  br label %146, !dbg !3257

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.103, i64 0, i64 0), i32 5) #10, !dbg !3258
  %60 = load i8*, i8** %4, align 8, !dbg !3258, !tbaa !648
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3258
  %62 = load i8*, i8** %61, align 8, !dbg !3258, !tbaa !648
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3258
  %64 = load i8*, i8** %63, align 8, !dbg !3258, !tbaa !648
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3258
  %66 = load i8*, i8** %65, align 8, !dbg !3258, !tbaa !648
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3258
  %68 = load i8*, i8** %67, align 8, !dbg !3258, !tbaa !648
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3258
  %70 = load i8*, i8** %69, align 8, !dbg !3258, !tbaa !648
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3258
  br label %146, !dbg !3259

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.104, i64 0, i64 0), i32 5) #10, !dbg !3260
  %74 = load i8*, i8** %4, align 8, !dbg !3260, !tbaa !648
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3260
  %76 = load i8*, i8** %75, align 8, !dbg !3260, !tbaa !648
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3260
  %78 = load i8*, i8** %77, align 8, !dbg !3260, !tbaa !648
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3260
  %80 = load i8*, i8** %79, align 8, !dbg !3260, !tbaa !648
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3260
  %82 = load i8*, i8** %81, align 8, !dbg !3260, !tbaa !648
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3260
  %84 = load i8*, i8** %83, align 8, !dbg !3260, !tbaa !648
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3260
  %86 = load i8*, i8** %85, align 8, !dbg !3260, !tbaa !648
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3260
  br label %146, !dbg !3261

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.105, i64 0, i64 0), i32 5) #10, !dbg !3262
  %90 = load i8*, i8** %4, align 8, !dbg !3262, !tbaa !648
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3262
  %92 = load i8*, i8** %91, align 8, !dbg !3262, !tbaa !648
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3262
  %94 = load i8*, i8** %93, align 8, !dbg !3262, !tbaa !648
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3262
  %96 = load i8*, i8** %95, align 8, !dbg !3262, !tbaa !648
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3262
  %98 = load i8*, i8** %97, align 8, !dbg !3262, !tbaa !648
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3262
  %100 = load i8*, i8** %99, align 8, !dbg !3262, !tbaa !648
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3262
  %102 = load i8*, i8** %101, align 8, !dbg !3262, !tbaa !648
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3262
  %104 = load i8*, i8** %103, align 8, !dbg !3262, !tbaa !648
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3262
  br label %146, !dbg !3263

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.106, i64 0, i64 0), i32 5) #10, !dbg !3264
  %108 = load i8*, i8** %4, align 8, !dbg !3264, !tbaa !648
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3264
  %110 = load i8*, i8** %109, align 8, !dbg !3264, !tbaa !648
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3264
  %112 = load i8*, i8** %111, align 8, !dbg !3264, !tbaa !648
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3264
  %114 = load i8*, i8** %113, align 8, !dbg !3264, !tbaa !648
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3264
  %116 = load i8*, i8** %115, align 8, !dbg !3264, !tbaa !648
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3264
  %118 = load i8*, i8** %117, align 8, !dbg !3264, !tbaa !648
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3264
  %120 = load i8*, i8** %119, align 8, !dbg !3264, !tbaa !648
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3264
  %122 = load i8*, i8** %121, align 8, !dbg !3264, !tbaa !648
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3264
  %124 = load i8*, i8** %123, align 8, !dbg !3264, !tbaa !648
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3264
  br label %146, !dbg !3265

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.107, i64 0, i64 0), i32 5) #10, !dbg !3266
  %128 = load i8*, i8** %4, align 8, !dbg !3266, !tbaa !648
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3266
  %130 = load i8*, i8** %129, align 8, !dbg !3266, !tbaa !648
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3266
  %132 = load i8*, i8** %131, align 8, !dbg !3266, !tbaa !648
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3266
  %134 = load i8*, i8** %133, align 8, !dbg !3266, !tbaa !648
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3266
  %136 = load i8*, i8** %135, align 8, !dbg !3266, !tbaa !648
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3266
  %138 = load i8*, i8** %137, align 8, !dbg !3266, !tbaa !648
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3266
  %140 = load i8*, i8** %139, align 8, !dbg !3266, !tbaa !648
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3266
  %142 = load i8*, i8** %141, align 8, !dbg !3266, !tbaa !648
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3266
  %144 = load i8*, i8** %143, align 8, !dbg !3266, !tbaa !648
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3266
  br label %146, !dbg !3267

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3268
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3269 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3273, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata i8* %1, metadata !3274, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8* %2, metadata !3275, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i8* %3, metadata !3276, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i8** %4, metadata !3277, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i64 0, metadata !3278, metadata !DIExpression()), !dbg !3284
  br label %6, !dbg !3285

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3287
  call void @llvm.dbg.value(metadata i64 %7, metadata !3278, metadata !DIExpression()), !dbg !3284
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3289
  %9 = load i8*, i8** %8, align 8, !dbg !3289, !tbaa !648
  %10 = icmp eq i8* %9, null, !dbg !3290
  %11 = add i64 %7, 1, !dbg !3291
  call void @llvm.dbg.value(metadata i64 %11, metadata !3278, metadata !DIExpression()), !dbg !3284
  br i1 %10, label %12, label %6, !dbg !3290, !llvm.loop !3292

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3278, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i64 %7, metadata !3278, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i64 %7, metadata !3278, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i64 %7, metadata !3278, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i64 %7, metadata !3278, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i64 %7, metadata !3278, metadata !DIExpression()), !dbg !3284
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3294
  ret void, !dbg !3295
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3296 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3307, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i8* %1, metadata !3308, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata i8* %2, metadata !3309, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8* %3, metadata !3310, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3311, metadata !DIExpression()), !dbg !3319
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3320
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3320
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3313, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i64 0, metadata !3312, metadata !DIExpression()), !dbg !3322
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3312, metadata !DIExpression()), !dbg !3322
  %11 = load i32, i32* %8, align 8, !dbg !3323
  %12 = icmp ult i32 %11, 41, !dbg !3323
  br i1 %12, label %13, label %18, !dbg !3323

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3323
  %15 = sext i32 %11 to i64, !dbg !3323
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3323
  %17 = add i32 %11, 8, !dbg !3323
  store i32 %17, i32* %8, align 8, !dbg !3323
  br label %21, !dbg !3323

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3323
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3323
  store i8* %20, i8** %10, align 8, !dbg !3323
  br label %21, !dbg !3323

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3323
  %25 = load i8*, i8** %24, align 8, !dbg !3323
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3326
  store i8* %25, i8** %26, align 16, !dbg !3327, !tbaa !648
  %27 = icmp eq i8* %25, null, !dbg !3328
  br i1 %27, label %30, label %28, !dbg !3329

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3312, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i64 1, metadata !3312, metadata !DIExpression()), !dbg !3322
  %29 = icmp ult i32 %22, 41, !dbg !3323
  br i1 %29, label %35, label %32, !dbg !3323

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3330
  call void @llvm.dbg.value(metadata i64 %31, metadata !3312, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i64 %31, metadata !3312, metadata !DIExpression()), !dbg !3322
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3331
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3332
  ret void, !dbg !3332

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3323
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3323
  store i8* %34, i8** %10, align 8, !dbg !3323
  br label %40, !dbg !3323

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3323
  %37 = sext i32 %22 to i64, !dbg !3323
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3323
  %39 = add i32 %22, 8, !dbg !3323
  store i32 %39, i32* %8, align 8, !dbg !3323
  br label %40, !dbg !3323

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3323
  %44 = load i8*, i8** %43, align 8, !dbg !3323
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3326
  store i8* %44, i8** %45, align 8, !dbg !3327, !tbaa !648
  %46 = icmp eq i8* %44, null, !dbg !3328
  br i1 %46, label %30, label %47, !dbg !3329

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3312, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i64 2, metadata !3312, metadata !DIExpression()), !dbg !3322
  %48 = icmp ult i32 %41, 41, !dbg !3323
  br i1 %48, label %52, label %49, !dbg !3323

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3323
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3323
  store i8* %51, i8** %10, align 8, !dbg !3323
  br label %57, !dbg !3323

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3323
  %54 = sext i32 %41 to i64, !dbg !3323
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3323
  %56 = add i32 %41, 8, !dbg !3323
  store i32 %56, i32* %8, align 8, !dbg !3323
  br label %57, !dbg !3323

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3323
  %61 = load i8*, i8** %60, align 8, !dbg !3323
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3326
  store i8* %61, i8** %62, align 16, !dbg !3327, !tbaa !648
  %63 = icmp eq i8* %61, null, !dbg !3328
  br i1 %63, label %30, label %64, !dbg !3329

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3312, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i64 3, metadata !3312, metadata !DIExpression()), !dbg !3322
  %65 = icmp ult i32 %58, 41, !dbg !3323
  br i1 %65, label %69, label %66, !dbg !3323

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3323
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3323
  store i8* %68, i8** %10, align 8, !dbg !3323
  br label %74, !dbg !3323

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3323
  %71 = sext i32 %58 to i64, !dbg !3323
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3323
  %73 = add i32 %58, 8, !dbg !3323
  store i32 %73, i32* %8, align 8, !dbg !3323
  br label %74, !dbg !3323

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3323
  %78 = load i8*, i8** %77, align 8, !dbg !3323
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3326
  store i8* %78, i8** %79, align 8, !dbg !3327, !tbaa !648
  %80 = icmp eq i8* %78, null, !dbg !3328
  br i1 %80, label %30, label %81, !dbg !3329

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3312, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i64 4, metadata !3312, metadata !DIExpression()), !dbg !3322
  %82 = icmp ult i32 %75, 41, !dbg !3323
  br i1 %82, label %86, label %83, !dbg !3323

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3323
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3323
  store i8* %85, i8** %10, align 8, !dbg !3323
  br label %91, !dbg !3323

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3323
  %88 = sext i32 %75 to i64, !dbg !3323
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3323
  %90 = add i32 %75, 8, !dbg !3323
  store i32 %90, i32* %8, align 8, !dbg !3323
  br label %91, !dbg !3323

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3323
  %95 = load i8*, i8** %94, align 8, !dbg !3323
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3326
  store i8* %95, i8** %96, align 16, !dbg !3327, !tbaa !648
  %97 = icmp eq i8* %95, null, !dbg !3328
  br i1 %97, label %30, label %98, !dbg !3329

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3312, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i64 5, metadata !3312, metadata !DIExpression()), !dbg !3322
  %99 = icmp ult i32 %92, 41, !dbg !3323
  br i1 %99, label %103, label %100, !dbg !3323

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3323
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3323
  store i8* %102, i8** %10, align 8, !dbg !3323
  br label %108, !dbg !3323

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3323
  %105 = sext i32 %92 to i64, !dbg !3323
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3323
  %107 = add i32 %92, 8, !dbg !3323
  store i32 %107, i32* %8, align 8, !dbg !3323
  br label %108, !dbg !3323

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3323
  %111 = load i8*, i8** %110, align 8, !dbg !3323
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3326
  store i8* %111, i8** %112, align 8, !dbg !3327, !tbaa !648
  %113 = icmp eq i8* %111, null, !dbg !3328
  br i1 %113, label %30, label %114, !dbg !3329

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3312, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i64 6, metadata !3312, metadata !DIExpression()), !dbg !3322
  %115 = load i8*, i8** %10, align 8, !dbg !3323
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3323
  store i8* %116, i8** %10, align 8, !dbg !3323
  %117 = bitcast i8* %115 to i8**, !dbg !3323
  %118 = load i8*, i8** %117, align 8, !dbg !3323
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3326
  store i8* %118, i8** %119, align 16, !dbg !3327, !tbaa !648
  %120 = icmp eq i8* %118, null, !dbg !3328
  br i1 %120, label %30, label %121, !dbg !3329

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3312, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i64 7, metadata !3312, metadata !DIExpression()), !dbg !3322
  %122 = load i8*, i8** %10, align 8, !dbg !3323
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3323
  store i8* %123, i8** %10, align 8, !dbg !3323
  %124 = bitcast i8* %122 to i8**, !dbg !3323
  %125 = load i8*, i8** %124, align 8, !dbg !3323
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3326
  store i8* %125, i8** %126, align 8, !dbg !3327, !tbaa !648
  %127 = icmp eq i8* %125, null, !dbg !3328
  br i1 %127, label %30, label %128, !dbg !3329

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3312, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i64 8, metadata !3312, metadata !DIExpression()), !dbg !3322
  %129 = load i8*, i8** %10, align 8, !dbg !3323
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3323
  store i8* %130, i8** %10, align 8, !dbg !3323
  %131 = bitcast i8* %129 to i8**, !dbg !3323
  %132 = load i8*, i8** %131, align 8, !dbg !3323
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3326
  store i8* %132, i8** %133, align 16, !dbg !3327, !tbaa !648
  %134 = icmp eq i8* %132, null, !dbg !3328
  br i1 %134, label %30, label %135, !dbg !3329

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3312, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i64 9, metadata !3312, metadata !DIExpression()), !dbg !3322
  %136 = load i8*, i8** %10, align 8, !dbg !3323
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3323
  store i8* %137, i8** %10, align 8, !dbg !3323
  %138 = bitcast i8* %136 to i8**, !dbg !3323
  %139 = load i8*, i8** %138, align 8, !dbg !3323
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3326
  store i8* %139, i8** %140, align 8, !dbg !3327, !tbaa !648
  %141 = icmp eq i8* %139, null, !dbg !3328
  %142 = select i1 %141, i64 9, i64 10, !dbg !3329
  br label %30, !dbg !3329
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3333 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3337, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i8* %1, metadata !3338, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i8* %2, metadata !3339, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i8* %3, metadata !3340, metadata !DIExpression()), !dbg !3351
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3352
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3352
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3341, metadata !DIExpression()), !dbg !3353
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3354
  call void @llvm.va_start(i8* nonnull %6), !dbg !3354
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3355
  call void @llvm.va_end(i8* nonnull %6), !dbg !3356
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3357
  ret void, !dbg !3357
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3358 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.110, i64 0, i64 0), i32 5) #10, !dbg !3359
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.111, i64 0, i64 0)) #10, !dbg !3359
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.112, i64 0, i64 0), i32 5) #10, !dbg !3360
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.113, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.114, i64 0, i64 0)) #10, !dbg !3360
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.115, i64 0, i64 0), i32 5) #10, !dbg !3361
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3361, !tbaa !648
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3361
  ret void, !dbg !3362
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3363 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3365, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i64 %1, metadata !3366, metadata !DIExpression()), !dbg !3368
  %3 = udiv i64 9223372036854775807, %1, !dbg !3369
  %4 = icmp ult i64 %3, %0, !dbg !3369
  br i1 %4, label %5, label %6, !dbg !3371

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3372
  unreachable, !dbg !3372

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3373
  call void @llvm.dbg.value(metadata i64 %7, metadata !3374, metadata !DIExpression()) #10, !dbg !3381
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3383
  call void @llvm.dbg.value(metadata i8* %8, metadata !3380, metadata !DIExpression()) #10, !dbg !3384
  %9 = icmp eq i8* %8, null, !dbg !3385
  %10 = icmp ne i64 %7, 0, !dbg !3387
  %11 = and i1 %10, %9, !dbg !3388
  br i1 %11, label %12, label %13, !dbg !3388

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3389
  unreachable, !dbg !3389

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3390
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3375 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3374, metadata !DIExpression()), !dbg !3391
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3392
  call void @llvm.dbg.value(metadata i8* %2, metadata !3380, metadata !DIExpression()), !dbg !3393
  %3 = icmp eq i8* %2, null, !dbg !3394
  %4 = icmp ne i64 %0, 0, !dbg !3395
  %5 = and i1 %4, %3, !dbg !3396
  br i1 %5, label %6, label %7, !dbg !3396

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3397
  unreachable, !dbg !3397

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3398
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3399 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3403, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata i64 %1, metadata !3404, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i64 %2, metadata !3405, metadata !DIExpression()), !dbg !3408
  %4 = udiv i64 9223372036854775807, %2, !dbg !3409
  %5 = icmp ult i64 %4, %1, !dbg !3409
  br i1 %5, label %6, label %7, !dbg !3411

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3412
  unreachable, !dbg !3412

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3413
  call void @llvm.dbg.value(metadata i8* %0, metadata !3414, metadata !DIExpression()) #10, !dbg !3420
  call void @llvm.dbg.value(metadata i64 %8, metadata !3419, metadata !DIExpression()) #10, !dbg !3422
  %9 = icmp eq i64 %8, 0, !dbg !3423
  %10 = icmp ne i8* %0, null, !dbg !3425
  %11 = and i1 %10, %9, !dbg !3426
  br i1 %11, label %12, label %13, !dbg !3426

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3427
  br label %19, !dbg !3429

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3430
  call void @llvm.dbg.value(metadata i8* %14, metadata !3414, metadata !DIExpression()) #10, !dbg !3420
  %15 = icmp eq i8* %14, null, !dbg !3431
  %16 = icmp ne i64 %8, 0, !dbg !3433
  %17 = and i1 %16, %15, !dbg !3434
  br i1 %17, label %18, label %19, !dbg !3434

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3435
  unreachable, !dbg !3435

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3436
  ret i8* %20, !dbg !3437
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3415 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3414, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i64 %1, metadata !3419, metadata !DIExpression()), !dbg !3439
  %3 = icmp eq i64 %1, 0, !dbg !3440
  %4 = icmp ne i8* %0, null, !dbg !3441
  %5 = and i1 %4, %3, !dbg !3442
  br i1 %5, label %6, label %7, !dbg !3442

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3443
  br label %13, !dbg !3444

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3445
  call void @llvm.dbg.value(metadata i8* %8, metadata !3414, metadata !DIExpression()), !dbg !3438
  %9 = icmp eq i8* %8, null, !dbg !3446
  %10 = icmp ne i64 %1, 0, !dbg !3447
  %11 = and i1 %10, %9, !dbg !3448
  br i1 %11, label %12, label %13, !dbg !3448

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3449
  unreachable, !dbg !3449

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3450
  ret i8* %14, !dbg !3451
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !188 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !193, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata i64* %1, metadata !194, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i64 %2, metadata !195, metadata !DIExpression()), !dbg !3454
  %4 = load i64, i64* %1, align 8, !dbg !3455, !tbaa !871
  call void @llvm.dbg.value(metadata i64 %4, metadata !196, metadata !DIExpression()), !dbg !3456
  %5 = icmp eq i8* %0, null, !dbg !3457
  br i1 %5, label %6, label %20, !dbg !3459

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3460
  br i1 %7, label %8, label %13, !dbg !3463

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3464
  call void @llvm.dbg.value(metadata i64 %9, metadata !196, metadata !DIExpression()), !dbg !3456
  %10 = icmp ugt i64 %2, 128, !dbg !3466
  %11 = zext i1 %10 to i64, !dbg !3466
  %12 = add nuw nsw i64 %9, %11, !dbg !3467
  call void @llvm.dbg.value(metadata i64 %12, metadata !196, metadata !DIExpression()), !dbg !3456
  br label %13, !dbg !3468

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3469
  call void @llvm.dbg.value(metadata i64 %14, metadata !196, metadata !DIExpression()), !dbg !3456
  %15 = udiv i64 9223372036854775807, %2, !dbg !3470
  %16 = icmp ult i64 %15, %14, !dbg !3470
  br i1 %16, label %19, label %17, !dbg !3472

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !196, metadata !DIExpression()), !dbg !3456
  store i64 %14, i64* %1, align 8, !dbg !3473, !tbaa !871
  %18 = mul i64 %14, %2, !dbg !3474
  call void @llvm.dbg.value(metadata i8* %0, metadata !3414, metadata !DIExpression()) #10, !dbg !3475
  call void @llvm.dbg.value(metadata i64 %28, metadata !3419, metadata !DIExpression()) #10, !dbg !3477
  br label %31, !dbg !3478

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3479
  unreachable, !dbg !3479

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3480
  %22 = icmp ugt i64 %21, %4, !dbg !3483
  br i1 %22, label %24, label %23, !dbg !3484

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3485
  unreachable, !dbg !3485

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3486
  %26 = add i64 %4, 1, !dbg !3487
  %27 = add i64 %26, %25, !dbg !3488
  call void @llvm.dbg.value(metadata i64 %27, metadata !196, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i64 %27, metadata !196, metadata !DIExpression()), !dbg !3456
  store i64 %27, i64* %1, align 8, !dbg !3473, !tbaa !871
  %28 = mul i64 %27, %2, !dbg !3474
  call void @llvm.dbg.value(metadata i8* %0, metadata !3414, metadata !DIExpression()) #10, !dbg !3475
  call void @llvm.dbg.value(metadata i64 %28, metadata !3419, metadata !DIExpression()) #10, !dbg !3477
  %29 = icmp eq i64 %28, 0, !dbg !3489
  br i1 %29, label %30, label %31, !dbg !3478

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #10, !dbg !3490
  br label %38, !dbg !3491

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #10, !dbg !3492
  call void @llvm.dbg.value(metadata i8* %33, metadata !3414, metadata !DIExpression()) #10, !dbg !3475
  %34 = icmp eq i8* %33, null, !dbg !3493
  %35 = icmp ne i64 %32, 0, !dbg !3494
  %36 = and i1 %35, %34, !dbg !3495
  br i1 %36, label %37, label %38, !dbg !3495

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3496
  unreachable, !dbg !3496

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3497
  ret i8* %39, !dbg !3498
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3499 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3501, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i64 %0, metadata !3374, metadata !DIExpression()) #10, !dbg !3503
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3505
  call void @llvm.dbg.value(metadata i8* %2, metadata !3380, metadata !DIExpression()) #10, !dbg !3506
  %3 = icmp eq i8* %2, null, !dbg !3507
  %4 = icmp ne i64 %0, 0, !dbg !3508
  %5 = and i1 %4, %3, !dbg !3509
  br i1 %5, label %6, label %7, !dbg !3509

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3510
  unreachable, !dbg !3510

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3511
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3512 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3516, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i64* %1, metadata !3517, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i8* %0, metadata !193, metadata !DIExpression()) #10, !dbg !3520
  call void @llvm.dbg.value(metadata i64* %1, metadata !194, metadata !DIExpression()) #10, !dbg !3522
  call void @llvm.dbg.value(metadata i64 1, metadata !195, metadata !DIExpression()) #10, !dbg !3523
  %3 = load i64, i64* %1, align 8, !dbg !3524, !tbaa !871
  call void @llvm.dbg.value(metadata i64 %3, metadata !196, metadata !DIExpression()) #10, !dbg !3525
  %4 = icmp eq i8* %0, null, !dbg !3526
  br i1 %4, label %5, label %12, !dbg !3527

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3528
  br i1 %6, label %9, label %7, !dbg !3529

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !196, metadata !DIExpression()) #10, !dbg !3525
  %8 = icmp slt i64 %3, 0, !dbg !3530
  br i1 %8, label %11, label %9, !dbg !3531

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !196, metadata !DIExpression()) #10, !dbg !3525
  store i64 %10, i64* %1, align 8, !dbg !3532, !tbaa !871
  call void @llvm.dbg.value(metadata i8* %0, metadata !3414, metadata !DIExpression()) #10, !dbg !3533
  call void @llvm.dbg.value(metadata i64 %18, metadata !3419, metadata !DIExpression()) #10, !dbg !3535
  br label %21, !dbg !3536

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3537
  unreachable, !dbg !3537

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3538
  br i1 %13, label %15, label %14, !dbg !3539

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3540
  unreachable, !dbg !3540

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3541
  %17 = add i64 %3, 1, !dbg !3542
  %18 = add i64 %17, %16, !dbg !3543
  call void @llvm.dbg.value(metadata i64 %18, metadata !196, metadata !DIExpression()) #10, !dbg !3525
  call void @llvm.dbg.value(metadata i64 %18, metadata !196, metadata !DIExpression()) #10, !dbg !3525
  store i64 %18, i64* %1, align 8, !dbg !3532, !tbaa !871
  call void @llvm.dbg.value(metadata i8* %0, metadata !3414, metadata !DIExpression()) #10, !dbg !3533
  call void @llvm.dbg.value(metadata i64 %18, metadata !3419, metadata !DIExpression()) #10, !dbg !3535
  %19 = icmp eq i64 %18, 0, !dbg !3544
  br i1 %19, label %20, label %21, !dbg !3536

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #10, !dbg !3545
  br label %28, !dbg !3546

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #10, !dbg !3547
  call void @llvm.dbg.value(metadata i8* %23, metadata !3414, metadata !DIExpression()) #10, !dbg !3533
  %24 = icmp eq i8* %23, null, !dbg !3548
  %25 = icmp ne i64 %22, 0, !dbg !3549
  %26 = and i1 %25, %24, !dbg !3550
  br i1 %26, label %27, label %28, !dbg !3550

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3551
  unreachable, !dbg !3551

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3552
  ret i8* %29, !dbg !3553
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3554 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3556, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.value(metadata i64 %0, metadata !3374, metadata !DIExpression()) #10, !dbg !3558
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3560
  call void @llvm.dbg.value(metadata i8* %2, metadata !3380, metadata !DIExpression()) #10, !dbg !3561
  %3 = icmp eq i8* %2, null, !dbg !3562
  %4 = icmp ne i64 %0, 0, !dbg !3563
  %5 = and i1 %4, %3, !dbg !3564
  br i1 %5, label %6, label %7, !dbg !3564

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3565
  unreachable, !dbg !3565

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3566
  ret i8* %2, !dbg !3567
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3568 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3570, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i64 %1, metadata !3571, metadata !DIExpression()), !dbg !3574
  %3 = udiv i64 9223372036854775807, %1, !dbg !3575
  %4 = icmp ult i64 %3, %0, !dbg !3575
  br i1 %4, label %8, label %5, !dbg !3577

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3578
  call void @llvm.dbg.value(metadata i8* %6, metadata !3572, metadata !DIExpression()), !dbg !3579
  %7 = icmp eq i8* %6, null, !dbg !3580
  br i1 %7, label %8, label %9, !dbg !3581

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3582
  unreachable, !dbg !3582

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3583
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3584 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3590, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i64 %1, metadata !3591, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata i64 %1, metadata !3374, metadata !DIExpression()) #10, !dbg !3594
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3596
  call void @llvm.dbg.value(metadata i8* %3, metadata !3380, metadata !DIExpression()) #10, !dbg !3597
  %4 = icmp eq i8* %3, null, !dbg !3598
  %5 = icmp ne i64 %1, 0, !dbg !3599
  %6 = and i1 %5, %4, !dbg !3600
  br i1 %6, label %7, label %8, !dbg !3600

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3601
  unreachable, !dbg !3601

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3602
  ret i8* %3, !dbg !3603
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3604 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3606, metadata !DIExpression()), !dbg !3607
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3608
  %3 = add i64 %2, 1, !dbg !3609
  call void @llvm.dbg.value(metadata i8* %0, metadata !3590, metadata !DIExpression()) #10, !dbg !3610
  call void @llvm.dbg.value(metadata i64 %3, metadata !3591, metadata !DIExpression()) #10, !dbg !3612
  call void @llvm.dbg.value(metadata i64 %3, metadata !3374, metadata !DIExpression()) #10, !dbg !3613
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3615
  call void @llvm.dbg.value(metadata i8* %4, metadata !3380, metadata !DIExpression()) #10, !dbg !3616
  %5 = icmp eq i8* %4, null, !dbg !3617
  %6 = icmp ne i64 %3, 0, !dbg !3618
  %7 = and i1 %6, %5, !dbg !3619
  br i1 %7, label %8, label %9, !dbg !3619

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3620
  unreachable, !dbg !3620

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #10, !dbg !3621
  ret i8* %4, !dbg !3622
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3623 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3625, !tbaa !791
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.126, i64 0, i64 0), i32 5) #10, !dbg !3626
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.127, i64 0, i64 0), i8* %2) #10, !dbg !3627
  tail call void @abort() #15, !dbg !3628
  unreachable, !dbg !3628
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #7 !dbg !3629 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3636, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i8** %1, metadata !3637, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata i32 %2, metadata !3638, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i64* %3, metadata !3639, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.value(metadata i8* %4, metadata !3640, metadata !DIExpression()), !dbg !3658
  %7 = bitcast i8** %6 to i8*, !dbg !3659
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #10, !dbg !3659
  call void @llvm.dbg.value(metadata i32 0, metadata !3644, metadata !DIExpression()), !dbg !3660
  %8 = icmp ult i32 %2, 37, !dbg !3661
  br i1 %8, label %10, label %9, !dbg !3661

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.130, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.131, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #15, !dbg !3661
  unreachable, !dbg !3661

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3664
  call void @llvm.dbg.value(metadata i8** %25, metadata !3642, metadata !DIExpression()), !dbg !3665
  %12 = tail call i32* @__errno_location() #17, !dbg !3666
  store i32 0, i32* %12, align 4, !dbg !3667, !tbaa !791
  call void @llvm.dbg.value(metadata i8* %0, metadata !3645, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i8* %0, metadata !3648, metadata !DIExpression(DW_OP_deref)), !dbg !3669
  %13 = tail call i16** @__ctype_b_loc() #17, !dbg !3670
  %14 = load i16*, i16** %13, align 8, !tbaa !648
  br label %15, !dbg !3671

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !3672
  %17 = load i8, i8* %16, align 1, !dbg !3672, !tbaa !799
  call void @llvm.dbg.value(metadata i8 %17, metadata !3648, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata i8* %16, metadata !3645, metadata !DIExpression()), !dbg !3668
  %18 = zext i8 %17 to i64, !dbg !3670
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !3670
  %20 = load i16, i16* %19, align 2, !dbg !3670, !tbaa !1873
  %21 = and i16 %20, 8192, !dbg !3670
  %22 = icmp eq i16 %21, 0, !dbg !3671
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !3673
  call void @llvm.dbg.value(metadata i8* %23, metadata !3645, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i8* %23, metadata !3648, metadata !DIExpression(DW_OP_deref)), !dbg !3669
  br i1 %22, label %24, label %15, !dbg !3671, !llvm.loop !3674

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !3664
  %26 = icmp eq i8 %17, 45, !dbg !3676
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  call void @llvm.dbg.value(metadata i8* %0, metadata !3678, metadata !DIExpression()) #10, !dbg !3688
  call void @llvm.dbg.value(metadata i8** %25, metadata !3686, metadata !DIExpression()) #10, !dbg !3688
  call void @llvm.dbg.value(metadata i32 %2, metadata !3687, metadata !DIExpression()) #10, !dbg !3688
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #10, !dbg !3690
  call void @llvm.dbg.value(metadata i64 %28, metadata !3643, metadata !DIExpression()), !dbg !3691
  %29 = load i8*, i8** %25, align 8, !dbg !3692, !tbaa !648
  %30 = icmp eq i8* %29, %0, !dbg !3694
  br i1 %30, label %31, label %40, !dbg !3695

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !3696
  br i1 %32, label %265, label %33, !dbg !3699

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !3700, !tbaa !799
  %35 = icmp eq i8 %34, 0, !dbg !3700
  br i1 %35, label %265, label %36, !dbg !3701

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !3700
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #14, !dbg !3702
  %39 = icmp eq i8* %38, null, !dbg !3702
  br i1 %39, label %265, label %47, !dbg !3703

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !3704, !tbaa !791
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !3706

; <label>:42:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !3644, metadata !DIExpression()), !dbg !3660
  br label %43, !dbg !3707

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !3709
  call void @llvm.dbg.value(metadata i32 %44, metadata !3644, metadata !DIExpression()), !dbg !3660
  %45 = icmp eq i8* %4, null, !dbg !3710
  br i1 %45, label %46, label %47, !dbg !3712

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !3643, metadata !DIExpression()), !dbg !3691
  store i64 %28, i64* %3, align 8, !dbg !3713, !tbaa !871
  br label %265, !dbg !3715

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !3716, !tbaa !799
  %51 = sext i8 %50 to i32, !dbg !3716
  %52 = icmp eq i8 %50, 0, !dbg !3717
  br i1 %52, label %262, label %53, !dbg !3718

; <label>:53:                                     ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !3649, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i32 1, metadata !3652, metadata !DIExpression()), !dbg !3720
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #14, !dbg !3721
  %55 = icmp eq i8* %54, null, !dbg !3721
  br i1 %55, label %56, label %58, !dbg !3723

; <label>:56:                                     ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !3643, metadata !DIExpression()), !dbg !3691
  store i64 %49, i64* %3, align 8, !dbg !3724, !tbaa !871
  %57 = or i32 %48, 2, !dbg !3726
  br label %265, !dbg !3727

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
  ], !dbg !3728

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #14, !dbg !3729
  %61 = icmp eq i8* %60, null, !dbg !3729
  br i1 %61, label %72, label %62, !dbg !3732

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !3733
  %64 = load i8, i8* %63, align 1, !dbg !3733, !tbaa !799
  %65 = sext i8 %64 to i32, !dbg !3733
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !3734

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !3735
  %68 = load i8, i8* %67, align 1, !dbg !3735, !tbaa !799
  %69 = icmp eq i8 %68, 66, !dbg !3738
  %70 = select i1 %69, i64 3, i64 1, !dbg !3739
  br label %72, !dbg !3739

; <label>:71:                                     ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !3649, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i32 2, metadata !3652, metadata !DIExpression()), !dbg !3720
  br label %72, !dbg !3740

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
  ], !dbg !3741

; <label>:75:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 512, metadata !3742, metadata !DIExpression()), !dbg !3748
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !3751
  %77 = shl i64 %49, 9, !dbg !3753
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !3754
  %79 = zext i1 %76 to i32, !dbg !3754
  call void @llvm.dbg.value(metadata i32 %79, metadata !3653, metadata !DIExpression()), !dbg !3755
  br label %253, !dbg !3756

; <label>:80:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 1024, metadata !3742, metadata !DIExpression()), !dbg !3757
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !3759
  %82 = shl i64 %49, 10, !dbg !3760
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !3761
  %84 = zext i1 %81 to i32, !dbg !3761
  call void @llvm.dbg.value(metadata i32 %84, metadata !3653, metadata !DIExpression()), !dbg !3755
  br label %253, !dbg !3762

; <label>:85:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 6, metadata !3763, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata i32 0, metadata !3770, metadata !DIExpression()), !dbg !3773
  %86 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3770, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata i32 6, metadata !3763, metadata !DIExpression()), !dbg !3771
  %87 = icmp ult i64 %86, %49, !dbg !3774
  %88 = mul i64 %49, %73, !dbg !3776
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !3777
  call void @llvm.dbg.value(metadata i32 5, metadata !3763, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata i32 5, metadata !3763, metadata !DIExpression()), !dbg !3771
  %90 = icmp ult i64 %86, %89, !dbg !3774
  %91 = mul i64 %89, %73, !dbg !3776
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !3777
  %93 = or i1 %87, %90, !dbg !3778
  call void @llvm.dbg.value(metadata i32 4, metadata !3763, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata i32 4, metadata !3763, metadata !DIExpression()), !dbg !3771
  %94 = icmp ult i64 %86, %92, !dbg !3774
  %95 = mul i64 %92, %73, !dbg !3776
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !3777
  %97 = or i1 %93, %94, !dbg !3778
  call void @llvm.dbg.value(metadata i32 3, metadata !3763, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata i32 3, metadata !3763, metadata !DIExpression()), !dbg !3771
  %98 = icmp ult i64 %86, %96, !dbg !3774
  %99 = mul i64 %96, %73, !dbg !3776
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !3777
  %101 = or i1 %97, %98, !dbg !3778
  call void @llvm.dbg.value(metadata i32 2, metadata !3763, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata i32 2, metadata !3763, metadata !DIExpression()), !dbg !3771
  %102 = icmp ult i64 %86, %100, !dbg !3774
  %103 = mul i64 %100, %73, !dbg !3776
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !3777
  %105 = or i1 %101, %102, !dbg !3778
  call void @llvm.dbg.value(metadata i32 1, metadata !3763, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata i32 1, metadata !3763, metadata !DIExpression()), !dbg !3771
  %106 = icmp ult i64 %86, %104, !dbg !3774
  %107 = mul i64 %104, %73, !dbg !3776
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !3777
  %109 = or i1 %105, %106, !dbg !3778
  %110 = zext i1 %109 to i32, !dbg !3778
  call void @llvm.dbg.value(metadata i32 %110, metadata !3770, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata i32 0, metadata !3763, metadata !DIExpression()), !dbg !3771
  br label %253, !dbg !3779

; <label>:111:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 3, metadata !3763, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 0, metadata !3770, metadata !DIExpression()), !dbg !3782
  %112 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3770, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i32 3, metadata !3763, metadata !DIExpression()), !dbg !3780
  %113 = icmp ult i64 %112, %49, !dbg !3783
  %114 = mul i64 %49, %73, !dbg !3785
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !3786
  call void @llvm.dbg.value(metadata i32 2, metadata !3763, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 2, metadata !3763, metadata !DIExpression()), !dbg !3780
  %116 = icmp ult i64 %112, %115, !dbg !3783
  %117 = mul i64 %115, %73, !dbg !3785
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !3786
  %119 = or i1 %113, %116, !dbg !3787
  call void @llvm.dbg.value(metadata i32 1, metadata !3763, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 1, metadata !3763, metadata !DIExpression()), !dbg !3780
  %120 = icmp ult i64 %112, %118, !dbg !3783
  %121 = mul i64 %118, %73, !dbg !3785
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !3786
  %123 = or i1 %119, %120, !dbg !3787
  %124 = zext i1 %123 to i32, !dbg !3787
  call void @llvm.dbg.value(metadata i32 %124, metadata !3770, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i32 0, metadata !3763, metadata !DIExpression()), !dbg !3780
  br label %253, !dbg !3779

; <label>:125:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 1, metadata !3763, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.value(metadata i32 0, metadata !3770, metadata !DIExpression()), !dbg !3790
  %126 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3770, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i32 undef, metadata !3763, metadata !DIExpression()), !dbg !3788
  %127 = icmp ult i64 %126, %49, !dbg !3791
  %128 = mul i64 %49, %73, !dbg !3793
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !3794
  %130 = zext i1 %127 to i32, !dbg !3794
  call void @llvm.dbg.value(metadata i32 %130, metadata !3770, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i32 undef, metadata !3763, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3788
  br label %253, !dbg !3779

; <label>:131:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 2, metadata !3763, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i32 0, metadata !3770, metadata !DIExpression()), !dbg !3797
  %132 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3770, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata i32 2, metadata !3763, metadata !DIExpression()), !dbg !3795
  %133 = icmp ult i64 %132, %49, !dbg !3798
  %134 = mul i64 %49, %73, !dbg !3800
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !3801
  call void @llvm.dbg.value(metadata i32 1, metadata !3763, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i32 1, metadata !3763, metadata !DIExpression()), !dbg !3795
  %136 = icmp ult i64 %132, %135, !dbg !3798
  %137 = mul i64 %135, %73, !dbg !3800
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !3801
  %139 = or i1 %133, %136, !dbg !3802
  %140 = zext i1 %139 to i32, !dbg !3802
  call void @llvm.dbg.value(metadata i32 %140, metadata !3770, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata i32 0, metadata !3763, metadata !DIExpression()), !dbg !3795
  br label %253, !dbg !3779

; <label>:141:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 5, metadata !3763, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata i32 0, metadata !3770, metadata !DIExpression()), !dbg !3805
  %142 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3770, metadata !DIExpression()), !dbg !3805
  call void @llvm.dbg.value(metadata i32 5, metadata !3763, metadata !DIExpression()), !dbg !3803
  %143 = icmp ult i64 %142, %49, !dbg !3806
  %144 = mul i64 %49, %73, !dbg !3808
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !3809
  call void @llvm.dbg.value(metadata i32 4, metadata !3763, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata i32 4, metadata !3763, metadata !DIExpression()), !dbg !3803
  %146 = icmp ult i64 %142, %145, !dbg !3806
  %147 = mul i64 %145, %73, !dbg !3808
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !3809
  %149 = or i1 %143, %146, !dbg !3810
  call void @llvm.dbg.value(metadata i32 3, metadata !3763, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata i32 3, metadata !3763, metadata !DIExpression()), !dbg !3803
  %150 = icmp ult i64 %142, %148, !dbg !3806
  %151 = mul i64 %148, %73, !dbg !3808
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !3809
  %153 = or i1 %149, %150, !dbg !3810
  call void @llvm.dbg.value(metadata i32 2, metadata !3763, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata i32 2, metadata !3763, metadata !DIExpression()), !dbg !3803
  %154 = icmp ult i64 %142, %152, !dbg !3806
  %155 = mul i64 %152, %73, !dbg !3808
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !3809
  %157 = or i1 %153, %154, !dbg !3810
  call void @llvm.dbg.value(metadata i32 1, metadata !3763, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata i32 1, metadata !3763, metadata !DIExpression()), !dbg !3803
  %158 = icmp ult i64 %142, %156, !dbg !3806
  %159 = mul i64 %156, %73, !dbg !3808
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !3809
  %161 = or i1 %157, %158, !dbg !3810
  %162 = zext i1 %161 to i32, !dbg !3810
  call void @llvm.dbg.value(metadata i32 %162, metadata !3770, metadata !DIExpression()), !dbg !3805
  call void @llvm.dbg.value(metadata i32 0, metadata !3763, metadata !DIExpression()), !dbg !3803
  br label %253, !dbg !3779

; <label>:163:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 4, metadata !3763, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i32 0, metadata !3770, metadata !DIExpression()), !dbg !3813
  %164 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3770, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i32 4, metadata !3763, metadata !DIExpression()), !dbg !3811
  %165 = icmp ult i64 %164, %49, !dbg !3814
  %166 = mul i64 %49, %73, !dbg !3816
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !3817
  call void @llvm.dbg.value(metadata i32 3, metadata !3763, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i32 3, metadata !3763, metadata !DIExpression()), !dbg !3811
  %168 = icmp ult i64 %164, %167, !dbg !3814
  %169 = mul i64 %167, %73, !dbg !3816
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !3817
  %171 = or i1 %165, %168, !dbg !3818
  call void @llvm.dbg.value(metadata i32 2, metadata !3763, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i32 2, metadata !3763, metadata !DIExpression()), !dbg !3811
  %172 = icmp ult i64 %164, %170, !dbg !3814
  %173 = mul i64 %170, %73, !dbg !3816
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !3817
  %175 = or i1 %171, %172, !dbg !3818
  call void @llvm.dbg.value(metadata i32 1, metadata !3763, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i32 1, metadata !3763, metadata !DIExpression()), !dbg !3811
  %176 = icmp ult i64 %164, %174, !dbg !3814
  %177 = mul i64 %174, %73, !dbg !3816
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !3817
  %179 = or i1 %175, %176, !dbg !3818
  %180 = zext i1 %179 to i32, !dbg !3818
  call void @llvm.dbg.value(metadata i32 %180, metadata !3770, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i32 0, metadata !3763, metadata !DIExpression()), !dbg !3811
  br label %253, !dbg !3779

; <label>:181:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 2, metadata !3742, metadata !DIExpression()), !dbg !3819
  %182 = icmp slt i64 %49, 0, !dbg !3821
  %183 = shl i64 %49, 1, !dbg !3822
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !3823
  %185 = lshr i64 %49, 63, !dbg !3823
  %186 = trunc i64 %185 to i32, !dbg !3823
  call void @llvm.dbg.value(metadata i32 %186, metadata !3653, metadata !DIExpression()), !dbg !3755
  br label %253, !dbg !3824

; <label>:187:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 8, metadata !3763, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i32 0, metadata !3770, metadata !DIExpression()), !dbg !3827
  %188 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3770, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata i32 8, metadata !3763, metadata !DIExpression()), !dbg !3825
  %189 = icmp ult i64 %188, %49, !dbg !3828
  %190 = mul i64 %49, %73, !dbg !3830
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !3831
  call void @llvm.dbg.value(metadata i32 7, metadata !3763, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i32 7, metadata !3763, metadata !DIExpression()), !dbg !3825
  %192 = icmp ult i64 %188, %191, !dbg !3828
  %193 = mul i64 %191, %73, !dbg !3830
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !3831
  %195 = or i1 %189, %192, !dbg !3832
  call void @llvm.dbg.value(metadata i32 6, metadata !3763, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i32 6, metadata !3763, metadata !DIExpression()), !dbg !3825
  %196 = icmp ult i64 %188, %194, !dbg !3828
  %197 = mul i64 %194, %73, !dbg !3830
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !3831
  %199 = or i1 %195, %196, !dbg !3832
  call void @llvm.dbg.value(metadata i32 5, metadata !3763, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i32 5, metadata !3763, metadata !DIExpression()), !dbg !3825
  %200 = icmp ult i64 %188, %198, !dbg !3828
  %201 = mul i64 %198, %73, !dbg !3830
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !3831
  %203 = or i1 %199, %200, !dbg !3832
  call void @llvm.dbg.value(metadata i32 4, metadata !3763, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i32 4, metadata !3763, metadata !DIExpression()), !dbg !3825
  %204 = icmp ult i64 %188, %202, !dbg !3828
  %205 = mul i64 %202, %73, !dbg !3830
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !3831
  %207 = or i1 %203, %204, !dbg !3832
  call void @llvm.dbg.value(metadata i32 3, metadata !3763, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i32 3, metadata !3763, metadata !DIExpression()), !dbg !3825
  %208 = icmp ult i64 %188, %206, !dbg !3828
  %209 = mul i64 %206, %73, !dbg !3830
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !3831
  %211 = or i1 %207, %208, !dbg !3832
  call void @llvm.dbg.value(metadata i32 2, metadata !3763, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i32 2, metadata !3763, metadata !DIExpression()), !dbg !3825
  %212 = icmp ult i64 %188, %210, !dbg !3828
  %213 = mul i64 %210, %73, !dbg !3830
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !3831
  %215 = or i1 %211, %212, !dbg !3832
  call void @llvm.dbg.value(metadata i32 1, metadata !3763, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i32 1, metadata !3763, metadata !DIExpression()), !dbg !3825
  %216 = icmp ult i64 %188, %214, !dbg !3828
  %217 = mul i64 %214, %73, !dbg !3830
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !3831
  %219 = or i1 %215, %216, !dbg !3832
  %220 = zext i1 %219 to i32, !dbg !3832
  call void @llvm.dbg.value(metadata i32 %220, metadata !3770, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata i32 0, metadata !3763, metadata !DIExpression()), !dbg !3825
  br label %253, !dbg !3779

; <label>:221:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 7, metadata !3763, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i32 0, metadata !3770, metadata !DIExpression()), !dbg !3835
  %222 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3770, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i32 7, metadata !3763, metadata !DIExpression()), !dbg !3833
  %223 = icmp ult i64 %222, %49, !dbg !3836
  %224 = mul i64 %49, %73, !dbg !3838
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !3839
  call void @llvm.dbg.value(metadata i32 6, metadata !3763, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i32 6, metadata !3763, metadata !DIExpression()), !dbg !3833
  %226 = icmp ult i64 %222, %225, !dbg !3836
  %227 = mul i64 %225, %73, !dbg !3838
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !3839
  %229 = or i1 %223, %226, !dbg !3840
  call void @llvm.dbg.value(metadata i32 5, metadata !3763, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i32 5, metadata !3763, metadata !DIExpression()), !dbg !3833
  %230 = icmp ult i64 %222, %228, !dbg !3836
  %231 = mul i64 %228, %73, !dbg !3838
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !3839
  %233 = or i1 %229, %230, !dbg !3840
  call void @llvm.dbg.value(metadata i32 4, metadata !3763, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i32 4, metadata !3763, metadata !DIExpression()), !dbg !3833
  %234 = icmp ult i64 %222, %232, !dbg !3836
  %235 = mul i64 %232, %73, !dbg !3838
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !3839
  %237 = or i1 %233, %234, !dbg !3840
  call void @llvm.dbg.value(metadata i32 3, metadata !3763, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i32 3, metadata !3763, metadata !DIExpression()), !dbg !3833
  %238 = icmp ult i64 %222, %236, !dbg !3836
  %239 = mul i64 %236, %73, !dbg !3838
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !3839
  %241 = or i1 %237, %238, !dbg !3840
  call void @llvm.dbg.value(metadata i32 2, metadata !3763, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i32 2, metadata !3763, metadata !DIExpression()), !dbg !3833
  %242 = icmp ult i64 %222, %240, !dbg !3836
  %243 = mul i64 %240, %73, !dbg !3838
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !3839
  %245 = or i1 %241, %242, !dbg !3840
  call void @llvm.dbg.value(metadata i32 1, metadata !3763, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i32 1, metadata !3763, metadata !DIExpression()), !dbg !3833
  %246 = icmp ult i64 %222, %244, !dbg !3836
  %247 = mul i64 %244, %73, !dbg !3838
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !3839
  %249 = or i1 %245, %246, !dbg !3840
  %250 = zext i1 %249 to i32, !dbg !3840
  call void @llvm.dbg.value(metadata i32 %250, metadata !3770, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i32 0, metadata !3763, metadata !DIExpression()), !dbg !3833
  br label %253, !dbg !3779

; <label>:251:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !3643, metadata !DIExpression()), !dbg !3691
  store i64 %49, i64* %3, align 8, !dbg !3841, !tbaa !871
  %252 = or i32 %48, 2, !dbg !3842
  br label %265, !dbg !3843

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ], !dbg !3844
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ], !dbg !3845
  call void @llvm.dbg.value(metadata i32 %255, metadata !3653, metadata !DIExpression()), !dbg !3755
  %256 = or i32 %255, %48, !dbg !3779
  call void @llvm.dbg.value(metadata i32 %256, metadata !3644, metadata !DIExpression()), !dbg !3660
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !3846
  store i8* %257, i8** %25, align 8, !dbg !3846, !tbaa !648
  %258 = load i8, i8* %257, align 1, !dbg !3847, !tbaa !799
  %259 = icmp eq i8 %258, 0, !dbg !3847
  %260 = or i32 %256, 2, !dbg !3849
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !3850
  call void @llvm.dbg.value(metadata i32 %261, metadata !3644, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i32 %261, metadata !3644, metadata !DIExpression()), !dbg !3660
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ], !dbg !3851
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ], !dbg !3660
  call void @llvm.dbg.value(metadata i32 %264, metadata !3644, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i64 %263, metadata !3643, metadata !DIExpression()), !dbg !3691
  store i64 %263, i64* %3, align 8, !dbg !3852, !tbaa !871
  br label %265, !dbg !3853

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ], !dbg !3854
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #10, !dbg !3855
  ret i32 %266, !dbg !3855
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3856 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3859, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata i64 %1, metadata !3860, metadata !DIExpression()), !dbg !3866
  %3 = icmp eq i64 %0, 0, !dbg !3867
  %4 = icmp eq i64 %1, 0, !dbg !3868
  %5 = or i1 %3, %4, !dbg !3869
  br i1 %5, label %12, label %6, !dbg !3869

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3870
  call void @llvm.dbg.value(metadata i64 %7, metadata !3862, metadata !DIExpression()), !dbg !3871
  %8 = udiv i64 %7, %1, !dbg !3872
  %9 = icmp eq i64 %8, %0, !dbg !3874
  br i1 %9, label %12, label %10, !dbg !3875

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3876
  store i32 12, i32* %11, align 4, !dbg !3878, !tbaa !791
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3859, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata i64 %13, metadata !3860, metadata !DIExpression()), !dbg !3866
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3879
  call void @llvm.dbg.value(metadata i8* %15, metadata !3861, metadata !DIExpression()), !dbg !3880
  br label %16, !dbg !3881

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3882
  ret i8* %17, !dbg !3883
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3884 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3901, metadata !DIExpression()), !dbg !3910
  call void @llvm.dbg.value(metadata i8* %1, metadata !3902, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata i64 %2, metadata !3903, metadata !DIExpression()), !dbg !3912
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3904, metadata !DIExpression()), !dbg !3913
  %6 = bitcast i32* %5 to i8*, !dbg !3914
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3914
  %7 = icmp eq i32* %0, null, !dbg !3915
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3917
  call void @llvm.dbg.value(metadata i32* %8, metadata !3901, metadata !DIExpression()), !dbg !3910
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3918
  call void @llvm.dbg.value(metadata i64 %9, metadata !3905, metadata !DIExpression()), !dbg !3919
  %10 = icmp ugt i64 %9, -3, !dbg !3920
  %11 = icmp ne i64 %2, 0, !dbg !3921
  %12 = and i1 %11, %10, !dbg !3922
  br i1 %12, label %13, label %18, !dbg !3922

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3923
  br i1 %14, label %18, label %15, !dbg !3924

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3925, !tbaa !799
  call void @llvm.dbg.value(metadata i8 %16, metadata !3907, metadata !DIExpression()), !dbg !3926
  %17 = zext i8 %16 to i32, !dbg !3927
  store i32 %17, i32* %8, align 4, !dbg !3928, !tbaa !791
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3929
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3930
  ret i64 %19, !dbg !3930
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3931 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3970, metadata !DIExpression()), !dbg !3975
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3976
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3977, metadata !DIExpression()), !dbg !3981
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3983
  %4 = load i32, i32* %3, align 8, !dbg !3983, !tbaa !3984
  %5 = and i32 %4, 32, !dbg !3983
  %6 = icmp eq i32 %5, 0, !dbg !3986
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3987
  %8 = icmp ne i32 %7, 0, !dbg !3988
  br i1 %6, label %9, label %19, !dbg !3989

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3991
  %11 = xor i1 %8, true, !dbg !3992
  %12 = or i1 %10, %11, !dbg !3992
  %13 = sext i1 %8 to i32, !dbg !3992
  br i1 %12, label %22, label %14, !dbg !3992

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3993
  %16 = load i32, i32* %15, align 4, !dbg !3993, !tbaa !791
  %17 = icmp ne i32 %16, 9, !dbg !3994
  %18 = sext i1 %17 to i32, !dbg !3995
  br label %22, !dbg !3995

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3996

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3998
  store i32 0, i32* %21, align 4, !dbg !4000, !tbaa !791
  br label %22, !dbg !3998

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4001
  ret i32 %23, !dbg !4002
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !4003 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4008, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.value(metadata i8 1, metadata !4009, metadata !DIExpression()), !dbg !4012
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !4013
  call void @llvm.dbg.value(metadata i8* %2, metadata !4010, metadata !DIExpression()), !dbg !4014
  %3 = icmp eq i8* %2, null, !dbg !4015
  br i1 %3, label %11, label %4, !dbg !4017

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.140, i64 0, i64 0)) #14, !dbg !4018
  %6 = icmp eq i32 %5, 0, !dbg !4023
  br i1 %6, label %10, label %7, !dbg !4024

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.141, i64 0, i64 0)) #14, !dbg !4025
  %9 = icmp eq i32 %8, 0, !dbg !4026
  br i1 %9, label %10, label %11, !dbg !4027

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !4009, metadata !DIExpression()), !dbg !4012
  br label %11, !dbg !4028

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4029
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !4030 {
  %1 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !4036
  call void @llvm.dbg.value(metadata i8* %1, metadata !4035, metadata !DIExpression()), !dbg !4037
  %2 = icmp eq i8* %1, null, !dbg !4038
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.144, i64 0, i64 0), i8* %1, !dbg !4040
  call void @llvm.dbg.value(metadata i8* %3, metadata !4035, metadata !DIExpression()), !dbg !4037
  %4 = load i8, i8* %3, align 1, !dbg !4041, !tbaa !799
  %5 = icmp eq i8 %4, 0, !dbg !4045
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.145, i64 0, i64 0), i8* %3, !dbg !4046
  call void @llvm.dbg.value(metadata i8* %6, metadata !4035, metadata !DIExpression()), !dbg !4037
  ret i8* %6, !dbg !4047
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !4048 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4087, metadata !DIExpression()), !dbg !4091
  call void @llvm.dbg.value(metadata i32 0, metadata !4088, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata i32 0, metadata !4090, metadata !DIExpression()), !dbg !4093
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4094
  call void @llvm.dbg.value(metadata i32 %2, metadata !4089, metadata !DIExpression()), !dbg !4095
  %3 = icmp slt i32 %2, 0, !dbg !4096
  br i1 %3, label %4, label %6, !dbg !4098

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4099
  br label %24, !dbg !4100

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4101
  %8 = icmp eq i32 %7, 0, !dbg !4101
  br i1 %8, label %13, label %9, !dbg !4103

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4104
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4105
  %12 = icmp eq i64 %11, -1, !dbg !4106
  br i1 %12, label %16, label %13, !dbg !4107

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4108
  %15 = icmp eq i32 %14, 0, !dbg !4108
  br i1 %15, label %16, label %18, !dbg !4109

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4088, metadata !DIExpression()), !dbg !4092
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4110
  call void @llvm.dbg.value(metadata i32 %21, metadata !4090, metadata !DIExpression()), !dbg !4093
  br label %24, !dbg !4111

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4112
  %20 = load i32, i32* %19, align 4, !dbg !4112, !tbaa !791
  call void @llvm.dbg.value(metadata i32 %20, metadata !4088, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata i32 %20, metadata !4088, metadata !DIExpression()), !dbg !4092
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4110
  call void @llvm.dbg.value(metadata i32 %21, metadata !4090, metadata !DIExpression()), !dbg !4093
  %22 = icmp eq i32 %20, 0, !dbg !4113
  br i1 %22, label %24, label %23, !dbg !4111

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4115, !tbaa !791
  call void @llvm.dbg.value(metadata i32 -1, metadata !4090, metadata !DIExpression()), !dbg !4093
  br label %24, !dbg !4117

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4118
  ret i32 %25, !dbg !4119
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4120 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4159, metadata !DIExpression()), !dbg !4160
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4161
  br i1 %2, label %6, label %3, !dbg !4163

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4164
  %5 = icmp eq i32 %4, 0, !dbg !4164
  br i1 %5, label %6, label %8, !dbg !4165

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4166
  br label %17, !dbg !4167

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4168, metadata !DIExpression()) #10, !dbg !4173
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4175
  %10 = load i32, i32* %9, align 8, !dbg !4175, !tbaa !3984
  %11 = and i32 %10, 256, !dbg !4177
  %12 = icmp eq i32 %11, 0, !dbg !4177
  br i1 %12, label %15, label %13, !dbg !4178

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4179
  br label %15, !dbg !4179

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4180
  br label %17, !dbg !4181

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4182
  ret i32 %18, !dbg !4183
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !4184 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4224, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata i64 %1, metadata !4225, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.value(metadata i32 %2, metadata !4226, metadata !DIExpression()), !dbg !4232
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4233
  %5 = load i8*, i8** %4, align 8, !dbg !4233, !tbaa !4234
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4235
  %7 = load i8*, i8** %6, align 8, !dbg !4235, !tbaa !4236
  %8 = icmp eq i8* %5, %7, !dbg !4237
  br i1 %8, label %9, label %28, !dbg !4238

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4239
  %11 = load i8*, i8** %10, align 8, !dbg !4239, !tbaa !4240
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4241
  %13 = load i8*, i8** %12, align 8, !dbg !4241, !tbaa !4242
  %14 = icmp eq i8* %11, %13, !dbg !4243
  br i1 %14, label %15, label %28, !dbg !4244

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4245
  %17 = load i8*, i8** %16, align 8, !dbg !4245, !tbaa !4246
  %18 = icmp eq i8* %17, null, !dbg !4247
  br i1 %18, label %19, label %28, !dbg !4248

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4249
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4250
  call void @llvm.dbg.value(metadata i64 %21, metadata !4227, metadata !DIExpression()), !dbg !4251
  %22 = icmp eq i64 %21, -1, !dbg !4252
  br i1 %22, label %30, label %23, !dbg !4254

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4255
  %25 = load i32, i32* %24, align 8, !dbg !4256, !tbaa !3984
  %26 = and i32 %25, -17, !dbg !4256
  store i32 %26, i32* %24, align 8, !dbg !4256, !tbaa !3984
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4257
  store i64 %21, i64* %27, align 8, !dbg !4258, !tbaa !4259
  br label %30, !dbg !4260

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4261
  br label %30, !dbg !4262

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4263
  ret i32 %31, !dbg !4264
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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

!llvm.dbg.cu = !{!2, !162, !55, !61, !70, !164, !77, !84, !175, !155, !183, !200, !202, !206, !208, !210, !212, !214, !603, !605, !607}
!llvm.ident = !{!609, !609, !609, !609, !609, !609, !609, !609, !609, !609, !609, !609, !609, !609, !609, !609, !609, !609, !609, !609, !609}
!llvm.module.flags = !{!610, !611, !612, !613, !614}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 39, type: !38, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !28, globals: !37)
!3 = !DIFile(filename: "src/mknod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{!5, !14}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !15, line: 32, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!17 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!18 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!19 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!20 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!21 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!22 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!23 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!24 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!25 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!26 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!27 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!28 = !{!29, !31, !7, !32, !34}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !33, line: 59, baseType: !34)
!33 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !35, line: 143, baseType: !36)
!35 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !{!0}
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 1280, elements: !51)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !41, line: 50, size: 256, elements: !42)
!41 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!42 = !{!43, !46, !48, !50}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !40, file: !41, line: 52, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !40, file: !41, line: 55, baseType: !47, size: 32, offset: 64)
!47 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !40, file: !41, line: 56, baseType: !49, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !40, file: !41, line: 57, baseType: !47, size: 32, offset: 192)
!51 = !{!52}
!52 = !DISubrange(count: 5)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "Version", scope: !55, file: !56, line: 2, type: !44, isLocal: false, isDefinition: true)
!55 = distinct !DICompileUnit(language: DW_LANG_C99, file: !56, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, globals: !58)
!56 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!57 = !{}
!58 = !{!53}
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "file_name", scope: !61, file: !66, line: 46, type: !44, isLocal: true, isDefinition: true)
!61 = distinct !DICompileUnit(language: DW_LANG_C99, file: !62, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, globals: !63)
!62 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!63 = !{!59, !64}
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !61, file: !66, line: 56, type: !67, isLocal: true, isDefinition: true)
!66 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!67 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "exit_failure", scope: !70, file: !73, line: 24, type: !74, isLocal: false, isDefinition: true)
!70 = distinct !DICompileUnit(language: DW_LANG_C99, file: !71, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, globals: !72)
!71 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!72 = !{!68}
!73 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!74 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !47)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "program_name", scope: !77, file: !81, line: 33, type: !44, isLocal: false, isDefinition: true)
!77 = distinct !DICompileUnit(language: DW_LANG_C99, file: !78, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, retainedTypes: !79, globals: !80)
!78 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!79 = !{!31, !29}
!80 = !{!75}
!81 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !84, file: !114, line: 85, type: !149, isLocal: false, isDefinition: true)
!84 = distinct !DICompileUnit(language: DW_LANG_C99, file: !85, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !86, retainedTypes: !107, globals: !111)
!85 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!86 = !{!14, !87, !92}
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !15, line: 242, baseType: !7, size: 32, elements: !88)
!88 = !{!89, !90, !91}
!89 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!90 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!91 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !93, line: 46, baseType: !7, size: 32, elements: !94)
!93 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!94 = !{!95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!95 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!96 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!97 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!98 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!99 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!100 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!101 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!102 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!103 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!104 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!105 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!106 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!107 = !{!47, !108, !109, !29}
!108 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !110, line: 62, baseType: !36)
!110 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!111 = !{!82, !112, !119, !131, !133, !138, !145, !147}
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !84, file: !114, line: 101, type: !115, isLocal: false, isDefinition: true)
!114 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 320, elements: !117)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!117 = !{!118}
!118 = !DISubrange(count: 10)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !84, file: !114, line: 1052, type: !121, isLocal: false, isDefinition: true)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !114, line: 65, size: 448, elements: !122)
!122 = !{!123, !124, !125, !129, !130}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !121, file: !114, line: 68, baseType: !14, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !121, file: !114, line: 71, baseType: !47, size: 32, offset: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !121, file: !114, line: 75, baseType: !126, size: 256, offset: 64)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 8)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !121, file: !114, line: 78, baseType: !44, size: 64, offset: 320)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !121, file: !114, line: 81, baseType: !44, size: 64, offset: 384)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !84, file: !114, line: 116, type: !121, isLocal: true, isDefinition: true)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "slot0", scope: !84, file: !114, line: 842, type: !135, isLocal: true, isDefinition: true)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2048, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 256)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "slotvec", scope: !84, file: !114, line: 845, type: !140, isLocal: true, isDefinition: true)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !114, line: 834, size: 128, elements: !142)
!142 = !{!143, !144}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !141, file: !114, line: 836, baseType: !109, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !141, file: !114, line: 837, baseType: !29, size: 64, offset: 64)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "nslots", scope: !84, file: !114, line: 843, type: !47, isLocal: true, isDefinition: true)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "slotvec0", scope: !84, file: !114, line: 844, type: !141, isLocal: true, isDefinition: true)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 704, elements: !151)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!151 = !{!152}
!152 = !DISubrange(count: 11)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !155, file: !158, line: 26, type: !159, isLocal: false, isDefinition: true)
!155 = distinct !DICompileUnit(language: DW_LANG_C99, file: !156, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, globals: !157)
!156 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!157 = !{!153}
!158 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 376, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 47)
!162 = distinct !DICompileUnit(language: DW_LANG_C99, file: !163, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57)
!163 = !DIFile(filename: "src/selinux.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!164 = distinct !DICompileUnit(language: DW_LANG_C99, file: !165, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !166, retainedTypes: !174)
!165 = !DIFile(filename: "./lib/modechange.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!166 = !{!167}
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !168, line: 78, baseType: !7, size: 32, elements: !169)
!168 = !DIFile(filename: "lib/modechange.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!169 = !{!170, !171, !172, !173}
!170 = !DIEnumerator(name: "MODE_DONE", value: 0, isUnsigned: true)
!171 = !DIEnumerator(name: "MODE_ORDINARY_CHANGE", value: 1, isUnsigned: true)
!172 = !DIEnumerator(name: "MODE_X_IF_ANY_X", value: 2, isUnsigned: true)
!173 = !DIEnumerator(name: "MODE_COPY_EXISTING", value: 3, isUnsigned: true)
!174 = !{!109}
!175 = distinct !DICompileUnit(language: DW_LANG_C99, file: !176, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !177, retainedTypes: !182)
!176 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!177 = !{!178}
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !179, line: 41, baseType: !7, size: 32, elements: !180)
!179 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!180 = !{!181}
!181 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!182 = !{!31}
!183 = distinct !DICompileUnit(language: DW_LANG_C99, file: !184, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !185, retainedTypes: !199)
!184 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!185 = !{!186}
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !188, file: !187, line: 186, baseType: !7, size: 32, elements: !197)
!187 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!188 = distinct !DISubprogram(name: "x2nrealloc", scope: !187, file: !187, line: 174, type: !189, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !183, retainedNodes: !192)
!189 = !DISubroutineType(types: !190)
!190 = !{!31, !31, !191, !109}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!192 = !{!193, !194, !195, !196}
!193 = !DILocalVariable(name: "p", arg: 1, scope: !188, file: !187, line: 174, type: !31)
!194 = !DILocalVariable(name: "pn", arg: 2, scope: !188, file: !187, line: 174, type: !191)
!195 = !DILocalVariable(name: "s", arg: 3, scope: !188, file: !187, line: 174, type: !109)
!196 = !DILocalVariable(name: "n", scope: !188, file: !187, line: 176, type: !109)
!197 = !{!198}
!198 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!199 = !{!109, !29, !31}
!200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !201, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57)
!201 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!202 = distinct !DICompileUnit(language: DW_LANG_C99, file: !203, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !204, retainedTypes: !205)
!203 = !DIFile(filename: "./lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!204 = !{!5, !92}
!205 = !{!47, !108}
!206 = distinct !DICompileUnit(language: DW_LANG_C99, file: !207, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, retainedTypes: !182)
!207 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!208 = distinct !DICompileUnit(language: DW_LANG_C99, file: !209, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, retainedTypes: !174)
!209 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!210 = distinct !DICompileUnit(language: DW_LANG_C99, file: !211, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57)
!211 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!212 = distinct !DICompileUnit(language: DW_LANG_C99, file: !213, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57)
!213 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!214 = distinct !DICompileUnit(language: DW_LANG_C99, file: !215, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !216, retainedTypes: !182)
!215 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!216 = !{!217}
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !218, line: 41, baseType: !7, size: 32, elements: !219)
!218 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!219 = !{!220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602}
!220 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!221 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!222 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!223 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!224 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!225 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!226 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!227 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!228 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!229 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!230 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!231 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!232 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!233 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!234 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!235 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!236 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!237 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!238 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!239 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!240 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!241 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!242 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!243 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!244 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!245 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!246 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!247 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!248 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!249 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!250 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!251 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!252 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!253 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!254 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!255 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!256 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!257 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!258 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!259 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!260 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!261 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!262 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!263 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!264 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!265 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!266 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!267 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!268 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!269 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!328 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!331 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!332 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!333 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!334 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!335 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!336 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!337 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!338 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!339 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!340 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!341 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!342 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!415 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!488 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!489 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!490 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!491 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!492 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!493 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!494 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!495 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!496 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!497 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!498 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!499 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!500 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!501 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!502 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!504 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!505 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!506 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!507 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!508 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!509 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!535 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!536 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!537 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!538 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!539 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!544 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!545 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!546 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!547 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!603 = distinct !DICompileUnit(language: DW_LANG_C99, file: !604, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57)
!604 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!605 = distinct !DICompileUnit(language: DW_LANG_C99, file: !606, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, retainedTypes: !182)
!606 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!607 = distinct !DICompileUnit(language: DW_LANG_C99, file: !608, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, retainedTypes: !182)
!608 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!609 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!610 = !{i32 2, !"Dwarf Version", i32 4}
!611 = !{i32 2, !"Debug Info Version", i32 3}
!612 = !{i32 1, !"wchar_size", i32 4}
!613 = !{i32 7, !"PIC Level", i32 2}
!614 = !{i32 7, !"PIE Level", i32 2}
!615 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 49, type: !616, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !618)
!616 = !DISubroutineType(types: !617)
!617 = !{null, !47}
!618 = !{!619}
!619 = !DILocalVariable(name: "status", arg: 1, scope: !615, file: !3, line: 49, type: !47)
!620 = !DILocalVariable(name: "infomap", scope: !621, file: !622, line: 632, type: !636)
!621 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !622, file: !622, line: 630, type: !623, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !625)
!622 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!623 = !DISubroutineType(types: !624)
!624 = !{null, !44}
!625 = !{!626, !620, !627, !628, !635}
!626 = !DILocalVariable(name: "program", arg: 1, scope: !621, file: !622, line: 630, type: !44)
!627 = !DILocalVariable(name: "node", scope: !621, file: !622, line: 642, type: !44)
!628 = !DILocalVariable(name: "map_prog", scope: !621, file: !622, line: 643, type: !629)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !631)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !621, file: !622, line: 632, size: 128, elements: !632)
!632 = !{!633, !634}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !631, file: !622, line: 632, baseType: !44, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !631, file: !622, line: 632, baseType: !44, size: 64, offset: 64)
!635 = !DILocalVariable(name: "lc_messages", scope: !621, file: !622, line: 655, type: !44)
!636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, size: 896, elements: !637)
!637 = !{!638}
!638 = !DISubrange(count: 7)
!639 = !DILocation(line: 632, column: 67, scope: !621, inlinedAt: !640)
!640 = distinct !DILocation(line: 87, column: 7, scope: !641)
!641 = distinct !DILexicalBlock(scope: !642, file: !3, line: 54, column: 5)
!642 = distinct !DILexicalBlock(scope: !615, file: !3, line: 51, column: 7)
!643 = !DILocation(line: 49, column: 12, scope: !615)
!644 = !DILocation(line: 51, column: 14, scope: !642)
!645 = !DILocation(line: 51, column: 7, scope: !615)
!646 = !DILocation(line: 52, column: 5, scope: !647)
!647 = distinct !DILexicalBlock(scope: !642, file: !3, line: 52, column: 5)
!648 = !{!649, !649, i64 0}
!649 = !{!"any pointer", !650, i64 0}
!650 = !{!"omnipotent char", !651, i64 0}
!651 = !{!"Simple C/C++ TBAA"}
!652 = !DILocation(line: 55, column: 7, scope: !641)
!653 = !DILocation(line: 57, column: 7, scope: !641)
!654 = !DILocation(line: 587, column: 3, scope: !655, inlinedAt: !658)
!655 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !622, file: !622, line: 585, type: !656, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !57)
!656 = !DISubroutineType(types: !657)
!657 = !{null}
!658 = distinct !DILocation(line: 61, column: 7, scope: !641)
!659 = !DILocation(line: 63, column: 7, scope: !641)
!660 = !DILocation(line: 66, column: 7, scope: !641)
!661 = !DILocation(line: 71, column: 7, scope: !641)
!662 = !DILocation(line: 72, column: 7, scope: !641)
!663 = !DILocation(line: 73, column: 7, scope: !641)
!664 = !DILocation(line: 80, column: 7, scope: !641)
!665 = !DILocation(line: 86, column: 7, scope: !641)
!666 = !DILocation(line: 632, column: 3, scope: !621, inlinedAt: !640)
!667 = !DILocation(line: 643, column: 36, scope: !621, inlinedAt: !640)
!668 = !DILocation(line: 643, column: 25, scope: !621, inlinedAt: !640)
!669 = !DILocation(line: 645, column: 33, scope: !621, inlinedAt: !640)
!670 = !DILocation(line: 645, column: 3, scope: !621, inlinedAt: !640)
!671 = !DILocation(line: 646, column: 13, scope: !621, inlinedAt: !640)
!672 = !DILocation(line: 645, column: 20, scope: !621, inlinedAt: !640)
!673 = !{!674, !649, i64 0}
!674 = !{!"infomap", !649, i64 0, !649, i64 8}
!675 = !DILocation(line: 645, column: 10, scope: !621, inlinedAt: !640)
!676 = !DILocation(line: 645, column: 28, scope: !621, inlinedAt: !640)
!677 = distinct !{!677, !678, !679}
!678 = !DILocation(line: 645, column: 3, scope: !621)
!679 = !DILocation(line: 646, column: 13, scope: !621)
!680 = !DILocation(line: 648, column: 17, scope: !681, inlinedAt: !640)
!681 = distinct !DILexicalBlock(scope: !621, file: !622, line: 648, column: 7)
!682 = !{!674, !649, i64 8}
!683 = !DILocation(line: 648, column: 7, scope: !681, inlinedAt: !640)
!684 = !DILocation(line: 648, column: 7, scope: !621, inlinedAt: !640)
!685 = !DILocation(line: 642, column: 15, scope: !621, inlinedAt: !640)
!686 = !DILocation(line: 651, column: 3, scope: !621, inlinedAt: !640)
!687 = !DILocation(line: 655, column: 29, scope: !621, inlinedAt: !640)
!688 = !DILocation(line: 655, column: 15, scope: !621, inlinedAt: !640)
!689 = !DILocation(line: 656, column: 7, scope: !690, inlinedAt: !640)
!690 = distinct !DILexicalBlock(scope: !621, file: !622, line: 656, column: 7)
!691 = !DILocation(line: 656, column: 19, scope: !690, inlinedAt: !640)
!692 = !DILocation(line: 656, column: 22, scope: !690, inlinedAt: !640)
!693 = !DILocation(line: 656, column: 7, scope: !621, inlinedAt: !640)
!694 = !DILocation(line: 662, column: 7, scope: !695, inlinedAt: !640)
!695 = distinct !DILexicalBlock(scope: !690, file: !622, line: 657, column: 5)
!696 = !DILocation(line: 664, column: 5, scope: !695, inlinedAt: !640)
!697 = !DILocation(line: 665, column: 3, scope: !621, inlinedAt: !640)
!698 = !DILocation(line: 667, column: 3, scope: !621, inlinedAt: !640)
!699 = !DILocation(line: 669, column: 1, scope: !621, inlinedAt: !640)
!700 = !DILocation(line: 89, column: 3, scope: !615)
!701 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 93, type: !702, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !705)
!702 = !DISubroutineType(types: !703)
!703 = !{!47, !47, !704}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!705 = !{!706, !707, !708, !711, !712, !713, !714, !715, !716, !717, !720, !724, !727, !730, !731, !735, !736}
!706 = !DILocalVariable(name: "argc", arg: 1, scope: !701, file: !3, line: 93, type: !47)
!707 = !DILocalVariable(name: "argv", arg: 2, scope: !701, file: !3, line: 93, type: !704)
!708 = !DILocalVariable(name: "newmode", scope: !701, file: !3, line: 95, type: !709)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !33, line: 69, baseType: !710)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !35, line: 148, baseType: !7)
!711 = !DILocalVariable(name: "specified_mode", scope: !701, file: !3, line: 96, type: !44)
!712 = !DILocalVariable(name: "optc", scope: !701, file: !3, line: 97, type: !47)
!713 = !DILocalVariable(name: "expected_operands", scope: !701, file: !3, line: 98, type: !109)
!714 = !DILocalVariable(name: "node_type", scope: !701, file: !3, line: 99, type: !709)
!715 = !DILocalVariable(name: "scontext", scope: !701, file: !3, line: 100, type: !44)
!716 = !DILocalVariable(name: "set_security_context", scope: !701, file: !3, line: 101, type: !67)
!717 = !DILocalVariable(name: "umask_value", scope: !718, file: !3, line: 148, type: !709)
!718 = distinct !DILexicalBlock(scope: !719, file: !3, line: 147, column: 5)
!719 = distinct !DILexicalBlock(scope: !701, file: !3, line: 146, column: 7)
!720 = !DILocalVariable(name: "change", scope: !718, file: !3, line: 149, type: !721)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !723, line: 25, flags: DIFlagFwdDecl)
!723 = !DIFile(filename: "./lib/modechange.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!724 = !DILocalVariable(name: "ret", scope: !725, file: !3, line: 192, type: !47)
!725 = distinct !DILexicalBlock(scope: !726, file: !3, line: 191, column: 5)
!726 = distinct !DILexicalBlock(scope: !701, file: !3, line: 190, column: 7)
!727 = !DILocalVariable(name: "s_major", scope: !728, file: !3, line: 228, type: !44)
!728 = distinct !DILexicalBlock(scope: !729, file: !3, line: 227, column: 7)
!729 = distinct !DILexicalBlock(scope: !701, file: !3, line: 208, column: 5)
!730 = !DILocalVariable(name: "s_minor", scope: !728, file: !3, line: 229, type: !44)
!731 = !DILocalVariable(name: "i_major", scope: !728, file: !3, line: 230, type: !732)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !733, line: 102, baseType: !734)
!733 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !35, line: 72, baseType: !36)
!735 = !DILocalVariable(name: "i_minor", scope: !728, file: !3, line: 230, type: !732)
!736 = !DILocalVariable(name: "device", scope: !728, file: !3, line: 231, type: !32)
!737 = !DILocation(line: 93, column: 11, scope: !701)
!738 = !DILocation(line: 93, column: 24, scope: !701)
!739 = !DILocation(line: 96, column: 15, scope: !701)
!740 = !DILocation(line: 100, column: 15, scope: !701)
!741 = !DILocation(line: 101, column: 8, scope: !701)
!742 = !DILocation(line: 104, column: 21, scope: !701)
!743 = !DILocation(line: 104, column: 3, scope: !701)
!744 = !DILocation(line: 105, column: 3, scope: !701)
!745 = !DILocation(line: 106, column: 3, scope: !701)
!746 = !DILocation(line: 107, column: 3, scope: !701)
!747 = !DILocation(line: 109, column: 3, scope: !701)
!748 = !DILocation(line: 111, column: 3, scope: !701)
!749 = !DILocation(line: 111, column: 18, scope: !701)
!750 = !DILocation(line: 97, column: 7, scope: !701)
!751 = !DILocation(line: 116, column: 28, scope: !752)
!752 = distinct !DILexicalBlock(scope: !753, file: !3, line: 114, column: 9)
!753 = distinct !DILexicalBlock(scope: !701, file: !3, line: 112, column: 5)
!754 = !DILocation(line: 117, column: 11, scope: !752)
!755 = distinct !{!755, !748, !756}
!756 = !DILocation(line: 143, column: 5, scope: !701)
!757 = !DILocation(line: 0, scope: !758)
!758 = distinct !DILexicalBlock(scope: !759, file: !3, line: 131, column: 20)
!759 = distinct !DILexicalBlock(scope: !760, file: !3, line: 124, column: 20)
!760 = distinct !DILexicalBlock(scope: !752, file: !3, line: 119, column: 15)
!761 = !DILocation(line: 131, column: 20, scope: !758)
!762 = !DILocation(line: 131, column: 20, scope: !759)
!763 = !DILocation(line: 134, column: 22, scope: !764)
!764 = distinct !DILexicalBlock(scope: !758, file: !3, line: 132, column: 13)
!765 = !DILocation(line: 133, column: 15, scope: !764)
!766 = !DILocation(line: 136, column: 13, scope: !764)
!767 = !DILocation(line: 138, column: 9, scope: !752)
!768 = !DILocation(line: 139, column: 9, scope: !752)
!769 = !DILocation(line: 141, column: 11, scope: !752)
!770 = !DILocation(line: 95, column: 10, scope: !701)
!771 = !DILocation(line: 146, column: 7, scope: !719)
!772 = !DILocation(line: 146, column: 7, scope: !701)
!773 = !DILocation(line: 149, column: 36, scope: !718)
!774 = !DILocation(line: 149, column: 27, scope: !718)
!775 = !DILocation(line: 150, column: 12, scope: !776)
!776 = distinct !DILexicalBlock(scope: !718, file: !3, line: 150, column: 11)
!777 = !DILocation(line: 150, column: 11, scope: !718)
!778 = !DILocation(line: 151, column: 9, scope: !776)
!779 = !DILocation(line: 152, column: 21, scope: !718)
!780 = !DILocation(line: 148, column: 14, scope: !718)
!781 = !DILocation(line: 153, column: 7, scope: !718)
!782 = !DILocation(line: 154, column: 17, scope: !718)
!783 = !DILocation(line: 155, column: 13, scope: !718)
!784 = !DILocation(line: 155, column: 7, scope: !718)
!785 = !DILocation(line: 156, column: 19, scope: !786)
!786 = distinct !DILexicalBlock(scope: !718, file: !3, line: 156, column: 11)
!787 = !DILocation(line: 156, column: 11, scope: !718)
!788 = !DILocation(line: 157, column: 9, scope: !786)
!789 = !DILocation(line: 0, scope: !701)
!790 = !DILocation(line: 164, column: 32, scope: !701)
!791 = !{!792, !792, i64 0}
!792 = !{!"int", !650, i64 0}
!793 = !DILocation(line: 164, column: 29, scope: !701)
!794 = !DILocation(line: 165, column: 24, scope: !701)
!795 = !DILocation(line: 165, column: 35, scope: !701)
!796 = !DILocation(line: 165, column: 39, scope: !701)
!797 = !DILocation(line: 165, column: 46, scope: !701)
!798 = !DILocation(line: 165, column: 49, scope: !701)
!799 = !{!650, !650, i64 0}
!800 = !DILocation(line: 165, column: 69, scope: !701)
!801 = !DILocation(line: 164, column: 23, scope: !701)
!802 = !DILocation(line: 98, column: 10, scope: !701)
!803 = !DILocation(line: 168, column: 12, scope: !804)
!804 = distinct !DILexicalBlock(scope: !701, file: !3, line: 168, column: 7)
!805 = !DILocation(line: 168, column: 7, scope: !804)
!806 = !DILocation(line: 168, column: 21, scope: !804)
!807 = !DILocation(line: 168, column: 7, scope: !701)
!808 = !DILocation(line: 170, column: 11, scope: !809)
!809 = distinct !DILexicalBlock(scope: !804, file: !3, line: 169, column: 5)
!810 = !DILocation(line: 171, column: 22, scope: !811)
!811 = distinct !DILexicalBlock(scope: !809, file: !3, line: 170, column: 11)
!812 = !DILocation(line: 171, column: 9, scope: !811)
!813 = !DILocation(line: 173, column: 22, scope: !811)
!814 = !DILocation(line: 173, column: 70, scope: !811)
!815 = !DILocation(line: 173, column: 60, scope: !811)
!816 = !DILocation(line: 173, column: 53, scope: !811)
!817 = !DILocation(line: 173, column: 9, scope: !811)
!818 = !DILocation(line: 174, column: 34, scope: !819)
!819 = distinct !DILexicalBlock(scope: !809, file: !3, line: 174, column: 11)
!820 = !DILocation(line: 174, column: 44, scope: !819)
!821 = !DILocation(line: 174, column: 42, scope: !819)
!822 = !DILocation(line: 174, column: 51, scope: !819)
!823 = !DILocation(line: 174, column: 11, scope: !809)
!824 = !DILocation(line: 175, column: 9, scope: !819)
!825 = !DILocation(line: 177, column: 7, scope: !809)
!826 = !DILocation(line: 180, column: 25, scope: !827)
!827 = distinct !DILexicalBlock(scope: !701, file: !3, line: 180, column: 7)
!828 = !DILocation(line: 180, column: 7, scope: !701)
!829 = !DILocation(line: 182, column: 20, scope: !830)
!830 = distinct !DILexicalBlock(scope: !827, file: !3, line: 181, column: 5)
!831 = !DILocation(line: 183, column: 26, scope: !830)
!832 = !DILocation(line: 183, column: 33, scope: !830)
!833 = !DILocation(line: 183, column: 21, scope: !830)
!834 = !DILocation(line: 183, column: 14, scope: !830)
!835 = !DILocation(line: 182, column: 7, scope: !830)
!836 = !DILocation(line: 184, column: 34, scope: !837)
!837 = distinct !DILexicalBlock(scope: !830, file: !3, line: 184, column: 11)
!838 = !DILocation(line: 184, column: 44, scope: !837)
!839 = !DILocation(line: 184, column: 42, scope: !837)
!840 = !DILocation(line: 184, column: 51, scope: !837)
!841 = !DILocation(line: 184, column: 11, scope: !830)
!842 = !DILocation(line: 185, column: 9, scope: !837)
!843 = !DILocation(line: 187, column: 7, scope: !830)
!844 = !DILocation(line: 207, column: 23, scope: !701)
!845 = !DILocation(line: 207, column: 11, scope: !701)
!846 = !DILocation(line: 207, column: 3, scope: !701)
!847 = !DILocation(line: 99, column: 10, scope: !701)
!848 = !DILocation(line: 224, column: 7, scope: !729)
!849 = !DILocation(line: 0, scope: !729)
!850 = !DILocation(line: 228, column: 43, scope: !728)
!851 = !DILocation(line: 228, column: 31, scope: !728)
!852 = !DILocation(line: 228, column: 21, scope: !728)
!853 = !DILocation(line: 229, column: 43, scope: !728)
!854 = !DILocation(line: 229, column: 31, scope: !728)
!855 = !DILocation(line: 229, column: 21, scope: !728)
!856 = !DILocation(line: 230, column: 9, scope: !728)
!857 = !DILocation(line: 230, column: 19, scope: !728)
!858 = !DILocation(line: 233, column: 13, scope: !859)
!859 = distinct !DILexicalBlock(scope: !728, file: !3, line: 233, column: 13)
!860 = !DILocation(line: 233, column: 59, scope: !859)
!861 = !DILocation(line: 234, column: 16, scope: !859)
!862 = !DILocation(line: 234, column: 24, scope: !859)
!863 = !DILocation(line: 234, column: 13, scope: !859)
!864 = !DILocation(line: 235, column: 11, scope: !859)
!865 = !DILocation(line: 230, column: 28, scope: !728)
!866 = !DILocation(line: 238, column: 13, scope: !867)
!867 = distinct !DILexicalBlock(scope: !728, file: !3, line: 238, column: 13)
!868 = !DILocation(line: 238, column: 59, scope: !867)
!869 = !DILocation(line: 239, column: 13, scope: !867)
!870 = !DILocation(line: 239, column: 16, scope: !867)
!871 = !{!872, !872, i64 0}
!872 = !{!"long", !650, i64 0}
!873 = !DILocation(line: 239, column: 24, scope: !867)
!874 = !DILocation(line: 238, column: 13, scope: !728)
!875 = !DILocation(line: 240, column: 11, scope: !867)
!876 = !DILocation(line: 243, column: 18, scope: !728)
!877 = !DILocation(line: 43, column: 1, scope: !878, inlinedAt: !886)
!878 = distinct !DISubprogram(name: "gnu_dev_makedev", scope: !879, file: !879, line: 43, type: !880, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !882)
!879 = !DIFile(filename: "/usr/include/sys/sysmacros.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!880 = !DISubroutineType(types: !881)
!881 = !{!34, !7, !7}
!882 = !{!883, !884, !885}
!883 = !DILocalVariable(name: "__major", arg: 1, scope: !878, file: !879, line: 43, type: !7)
!884 = !DILocalVariable(name: "__minor", arg: 2, scope: !878, file: !879, line: 43, type: !7)
!885 = !DILocalVariable(name: "__dev", scope: !878, file: !879, line: 43, type: !34)
!886 = distinct !DILocation(line: 243, column: 18, scope: !728)
!887 = !DILocation(line: 231, column: 15, scope: !728)
!888 = !DILocation(line: 245, column: 20, scope: !889)
!889 = distinct !DILexicalBlock(scope: !728, file: !3, line: 245, column: 13)
!890 = !DILocation(line: 245, column: 13, scope: !728)
!891 = !DILocation(line: 246, column: 11, scope: !889)
!892 = !DILocation(line: 253, column: 25, scope: !893)
!893 = distinct !DILexicalBlock(scope: !728, file: !3, line: 253, column: 13)
!894 = !DILocation(line: 253, column: 20, scope: !893)
!895 = !DILocation(line: 253, column: 42, scope: !893)
!896 = !DILocation(line: 483, column: 1, scope: !897, inlinedAt: !905)
!897 = distinct !DISubprogram(name: "mknod", scope: !898, file: !898, line: 483, type: !899, isLocal: false, isDefinition: true, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !901)
!898 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!899 = !DISubroutineType(types: !900)
!900 = !{!47, !44, !710, !34}
!901 = !{!902, !903, !904}
!902 = !DILocalVariable(name: "__path", arg: 1, scope: !897, file: !898, line: 483, type: !44)
!903 = !DILocalVariable(name: "__mode", arg: 2, scope: !897, file: !898, line: 483, type: !710)
!904 = !DILocalVariable(name: "__dev", arg: 3, scope: !897, file: !898, line: 483, type: !34)
!905 = distinct !DILocation(line: 253, column: 13, scope: !893)
!906 = !DILocation(line: 485, column: 10, scope: !897, inlinedAt: !905)
!907 = !DILocation(line: 485, column: 3, scope: !897, inlinedAt: !905)
!908 = !DILocation(line: 253, column: 63, scope: !893)
!909 = !DILocation(line: 253, column: 13, scope: !728)
!910 = !DILocation(line: 254, column: 11, scope: !893)
!911 = !DILocation(line: 255, column: 7, scope: !729)
!912 = !DILocation(line: 256, column: 7, scope: !729)
!913 = !DILocation(line: 261, column: 19, scope: !914)
!914 = distinct !DILexicalBlock(scope: !729, file: !3, line: 261, column: 11)
!915 = !DILocation(line: 261, column: 11, scope: !914)
!916 = !DILocation(line: 261, column: 42, scope: !914)
!917 = !DILocation(line: 261, column: 11, scope: !729)
!918 = !DILocation(line: 262, column: 9, scope: !914)
!919 = !DILocation(line: 266, column: 20, scope: !729)
!920 = !DILocation(line: 266, column: 61, scope: !729)
!921 = !DILocation(line: 266, column: 68, scope: !729)
!922 = !DILocation(line: 266, column: 56, scope: !729)
!923 = !DILocation(line: 266, column: 49, scope: !729)
!924 = !DILocation(line: 266, column: 7, scope: !729)
!925 = !DILocation(line: 267, column: 7, scope: !729)
!926 = !DILocation(line: 270, column: 22, scope: !927)
!927 = distinct !DILexicalBlock(scope: !701, file: !3, line: 270, column: 7)
!928 = !DILocation(line: 270, column: 38, scope: !927)
!929 = !DILocation(line: 270, column: 33, scope: !927)
!930 = !DILocation(line: 270, column: 25, scope: !927)
!931 = !DILocation(line: 270, column: 56, scope: !927)
!932 = !DILocation(line: 270, column: 7, scope: !701)
!933 = !DILocation(line: 271, column: 5, scope: !927)
!934 = !DILocation(line: 274, column: 3, scope: !701)
!935 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !66, file: !66, line: 51, type: !623, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !936)
!936 = !{!937}
!937 = !DILocalVariable(name: "file", arg: 1, scope: !935, file: !66, line: 51, type: !44)
!938 = !DILocation(line: 51, column: 41, scope: !935)
!939 = !DILocation(line: 53, column: 13, scope: !935)
!940 = !DILocation(line: 54, column: 1, scope: !935)
!941 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !66, file: !66, line: 88, type: !942, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !944)
!942 = !DISubroutineType(types: !943)
!943 = !{null, !67}
!944 = !{!945}
!945 = !DILocalVariable(name: "ignore", arg: 1, scope: !941, file: !66, line: 88, type: !67)
!946 = !DILocation(line: 88, column: 37, scope: !941)
!947 = !DILocation(line: 90, column: 16, scope: !941)
!948 = !{!949, !949, i64 0}
!949 = !{!"_Bool", !650, i64 0}
!950 = !DILocation(line: 91, column: 1, scope: !941)
!951 = distinct !DISubprogram(name: "close_stdout", scope: !66, file: !66, line: 117, type: !656, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !61, retainedNodes: !952)
!952 = !{!953}
!953 = !DILocalVariable(name: "write_error", scope: !954, file: !66, line: 122, type: !44)
!954 = distinct !DILexicalBlock(scope: !955, file: !66, line: 121, column: 5)
!955 = distinct !DILexicalBlock(scope: !951, file: !66, line: 119, column: 7)
!956 = !DILocation(line: 119, column: 21, scope: !955)
!957 = !DILocation(line: 119, column: 7, scope: !955)
!958 = !DILocation(line: 119, column: 29, scope: !955)
!959 = !DILocation(line: 120, column: 7, scope: !955)
!960 = !DILocation(line: 120, column: 12, scope: !955)
!961 = !{i8 0, i8 2}
!962 = !DILocation(line: 120, column: 25, scope: !955)
!963 = !DILocation(line: 120, column: 28, scope: !955)
!964 = !DILocation(line: 120, column: 34, scope: !955)
!965 = !DILocation(line: 119, column: 7, scope: !951)
!966 = !DILocation(line: 122, column: 33, scope: !954)
!967 = !DILocation(line: 122, column: 19, scope: !954)
!968 = !DILocation(line: 123, column: 11, scope: !969)
!969 = distinct !DILexicalBlock(scope: !954, file: !66, line: 123, column: 11)
!970 = !DILocation(line: 0, scope: !969)
!971 = !DILocation(line: 123, column: 11, scope: !954)
!972 = !DILocation(line: 124, column: 36, scope: !969)
!973 = !DILocation(line: 124, column: 9, scope: !969)
!974 = !DILocation(line: 127, column: 9, scope: !969)
!975 = !DILocation(line: 129, column: 14, scope: !954)
!976 = !DILocation(line: 129, column: 7, scope: !954)
!977 = !DILocation(line: 134, column: 42, scope: !978)
!978 = distinct !DILexicalBlock(scope: !951, file: !66, line: 134, column: 7)
!979 = !DILocation(line: 134, column: 28, scope: !978)
!980 = !DILocation(line: 134, column: 50, scope: !978)
!981 = !DILocation(line: 134, column: 7, scope: !951)
!982 = !DILocation(line: 135, column: 12, scope: !978)
!983 = !DILocation(line: 135, column: 5, scope: !978)
!984 = !DILocation(line: 136, column: 1, scope: !951)
!985 = distinct !DISubprogram(name: "mode_compile", scope: !168, file: !168, line: 134, type: !986, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !164, retainedNodes: !996)
!986 = !DISubroutineType(types: !987)
!987 = !{!988, !44}
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !168, line: 98, size: 128, elements: !990)
!990 = !{!991, !992, !993, !994, !995}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !989, file: !168, line: 100, baseType: !30, size: 8)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !989, file: !168, line: 101, baseType: !30, size: 8, offset: 8)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "affected", scope: !989, file: !168, line: 102, baseType: !709, size: 32, offset: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !989, file: !168, line: 103, baseType: !709, size: 32, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "mentioned", scope: !989, file: !168, line: 104, baseType: !709, size: 32, offset: 96)
!996 = !{!997, !998, !999, !1000, !1001, !1004, !1005, !1006, !1008, !1012, !1014, !1015, !1016, !1017, !1018}
!997 = !DILocalVariable(name: "mode_string", arg: 1, scope: !985, file: !168, line: 134, type: !44)
!998 = !DILocalVariable(name: "mc", scope: !985, file: !168, line: 137, type: !988)
!999 = !DILocalVariable(name: "used", scope: !985, file: !168, line: 138, type: !109)
!1000 = !DILocalVariable(name: "p", scope: !985, file: !168, line: 139, type: !44)
!1001 = !DILocalVariable(name: "octal_mode", scope: !1002, file: !168, line: 143, type: !7)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !168, line: 142, column: 5)
!1003 = distinct !DILexicalBlock(scope: !985, file: !168, line: 141, column: 7)
!1004 = !DILocalVariable(name: "mode", scope: !1002, file: !168, line: 144, type: !709)
!1005 = !DILocalVariable(name: "mentioned", scope: !1002, file: !168, line: 145, type: !709)
!1006 = !DILocalVariable(name: "needed", scope: !1007, file: !168, line: 168, type: !109)
!1007 = distinct !DILexicalBlock(scope: !985, file: !168, line: 167, column: 3)
!1008 = !DILocalVariable(name: "affected", scope: !1009, file: !168, line: 179, type: !709)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !168, line: 177, column: 5)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !168, line: 176, column: 3)
!1011 = distinct !DILexicalBlock(scope: !985, file: !168, line: 176, column: 3)
!1012 = !DILocalVariable(name: "op", scope: !1013, file: !168, line: 206, type: !30)
!1013 = distinct !DILexicalBlock(scope: !1009, file: !168, line: 205, column: 9)
!1014 = !DILocalVariable(name: "value", scope: !1013, file: !168, line: 207, type: !709)
!1015 = !DILocalVariable(name: "mentioned", scope: !1013, file: !168, line: 208, type: !709)
!1016 = !DILocalVariable(name: "flag", scope: !1013, file: !168, line: 209, type: !30)
!1017 = !DILocalVariable(name: "change", scope: !1013, file: !168, line: 210, type: !988)
!1018 = !DILocalVariable(name: "octal_mode", scope: !1019, file: !168, line: 217, type: !7)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !168, line: 216, column: 15)
!1020 = distinct !DILexicalBlock(scope: !1013, file: !168, line: 213, column: 13)
!1021 = !DILocation(line: 134, column: 27, scope: !985)
!1022 = !DILocation(line: 138, column: 10, scope: !985)
!1023 = !DILocation(line: 141, column: 14, scope: !1003)
!1024 = !DILocation(line: 141, column: 27, scope: !1003)
!1025 = !DILocation(line: 150, column: 41, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1002, file: !168, line: 149, column: 9)
!1027 = !DILocation(line: 0, scope: !1026)
!1028 = !DILocation(line: 139, column: 15, scope: !985)
!1029 = !DILocation(line: 143, column: 20, scope: !1002)
!1030 = !DILocation(line: 150, column: 26, scope: !1026)
!1031 = !DILocation(line: 150, column: 43, scope: !1026)
!1032 = !DILocation(line: 150, column: 39, scope: !1026)
!1033 = !DILocation(line: 150, column: 46, scope: !1026)
!1034 = !DILocation(line: 151, column: 20, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1026, file: !168, line: 151, column: 15)
!1036 = !DILocation(line: 151, column: 15, scope: !1026)
!1037 = !DILocation(line: 154, column: 21, scope: !1002)
!1038 = !DILocation(line: 154, column: 24, scope: !1002)
!1039 = distinct !{!1039, !1040, !1041}
!1040 = !DILocation(line: 148, column: 7, scope: !1002)
!1041 = !DILocation(line: 154, column: 35, scope: !1002)
!1042 = !DILocation(line: 156, column: 11, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1002, file: !168, line: 156, column: 11)
!1044 = !DILocation(line: 156, column: 11, scope: !1002)
!1045 = !DILocation(line: 144, column: 14, scope: !1002)
!1046 = !DILocation(line: 160, column: 22, scope: !1002)
!1047 = !DILocation(line: 160, column: 36, scope: !1002)
!1048 = !DILocation(line: 161, column: 28, scope: !1002)
!1049 = !DILocation(line: 161, column: 61, scope: !1002)
!1050 = !DILocation(line: 160, column: 20, scope: !1002)
!1051 = !DILocation(line: 145, column: 14, scope: !1002)
!1052 = !DILocalVariable(name: "new_mode", arg: 1, scope: !1053, file: !168, line: 112, type: !709)
!1053 = distinct !DISubprogram(name: "make_node_op_equals", scope: !168, file: !168, line: 112, type: !1054, isLocal: true, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !164, retainedNodes: !1056)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!988, !709, !709}
!1056 = !{!1052, !1057, !1058}
!1057 = !DILocalVariable(name: "mentioned", arg: 2, scope: !1053, file: !168, line: 112, type: !709)
!1058 = !DILocalVariable(name: "p", scope: !1053, file: !168, line: 114, type: !988)
!1059 = !DILocation(line: 112, column: 29, scope: !1053, inlinedAt: !1060)
!1060 = distinct !DILocation(line: 163, column: 14, scope: !1002)
!1061 = !DILocation(line: 112, column: 46, scope: !1053, inlinedAt: !1060)
!1062 = !DILocation(line: 114, column: 27, scope: !1053, inlinedAt: !1060)
!1063 = !DILocation(line: 114, column: 23, scope: !1053, inlinedAt: !1060)
!1064 = !DILocation(line: 115, column: 9, scope: !1053, inlinedAt: !1060)
!1065 = !{!1066, !650, i64 0}
!1066 = !{!"mode_change", !650, i64 0, !650, i64 1, !792, i64 4, !792, i64 8, !792, i64 12}
!1067 = !DILocation(line: 116, column: 6, scope: !1053, inlinedAt: !1060)
!1068 = !DILocation(line: 116, column: 11, scope: !1053, inlinedAt: !1060)
!1069 = !{!1066, !650, i64 1}
!1070 = !DILocation(line: 117, column: 6, scope: !1053, inlinedAt: !1060)
!1071 = !DILocation(line: 117, column: 15, scope: !1053, inlinedAt: !1060)
!1072 = !{!1066, !792, i64 4}
!1073 = !DILocation(line: 118, column: 6, scope: !1053, inlinedAt: !1060)
!1074 = !DILocation(line: 118, column: 12, scope: !1053, inlinedAt: !1060)
!1075 = !{!1066, !792, i64 8}
!1076 = !DILocation(line: 119, column: 6, scope: !1053, inlinedAt: !1060)
!1077 = !DILocation(line: 119, column: 16, scope: !1053, inlinedAt: !1060)
!1078 = !{!1066, !792, i64 12}
!1079 = !DILocation(line: 120, column: 8, scope: !1053, inlinedAt: !1060)
!1080 = !DILocation(line: 120, column: 13, scope: !1053, inlinedAt: !1060)
!1081 = !DILocation(line: 163, column: 7, scope: !1002)
!1082 = !DILocation(line: 169, column: 27, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !168, line: 169, column: 5)
!1084 = distinct !DILexicalBlock(scope: !1007, file: !168, line: 169, column: 5)
!1085 = !DILocation(line: 0, scope: !1083)
!1086 = !DILocation(line: 168, column: 12, scope: !1007)
!1087 = !DILocation(line: 169, column: 5, scope: !1084)
!1088 = !DILocation(line: 170, column: 41, scope: !1083)
!1089 = !DILocation(line: 170, column: 14, scope: !1083)
!1090 = !DILocation(line: 169, column: 32, scope: !1083)
!1091 = !DILocation(line: 169, column: 5, scope: !1083)
!1092 = distinct !{!1092, !1087, !1093}
!1093 = !DILocation(line: 170, column: 53, scope: !1084)
!1094 = !DILocalVariable(name: "n", arg: 1, scope: !1095, file: !187, line: 99, type: !109)
!1095 = distinct !DISubprogram(name: "xnmalloc", scope: !187, file: !187, line: 99, type: !1096, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !164, retainedNodes: !1098)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!31, !109, !109}
!1098 = !{!1094, !1099}
!1099 = !DILocalVariable(name: "s", arg: 2, scope: !1095, file: !187, line: 99, type: !109)
!1100 = !DILocation(line: 99, column: 18, scope: !1095, inlinedAt: !1101)
!1101 = distinct !DILocation(line: 171, column: 10, scope: !1007)
!1102 = !DILocation(line: 99, column: 28, scope: !1095, inlinedAt: !1101)
!1103 = !DILocation(line: 101, column: 7, scope: !1104, inlinedAt: !1101)
!1104 = distinct !DILexicalBlock(scope: !1095, file: !187, line: 101, column: 7)
!1105 = !DILocation(line: 101, column: 7, scope: !1095, inlinedAt: !1101)
!1106 = !DILocation(line: 102, column: 5, scope: !1104, inlinedAt: !1101)
!1107 = !DILocation(line: 103, column: 21, scope: !1095, inlinedAt: !1101)
!1108 = !DILocation(line: 103, column: 10, scope: !1095, inlinedAt: !1101)
!1109 = !DILocation(line: 171, column: 10, scope: !1007)
!1110 = !DILocation(line: 137, column: 23, scope: !985)
!1111 = !DILocation(line: 176, column: 8, scope: !1011)
!1112 = !DILocation(line: 0, scope: !1010)
!1113 = !DILocation(line: 179, column: 14, scope: !1009)
!1114 = !DILocation(line: 182, column: 7, scope: !1009)
!1115 = !DILocation(line: 0, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !168, line: 182, column: 7)
!1117 = distinct !DILexicalBlock(scope: !1009, file: !168, line: 182, column: 7)
!1118 = !DILocation(line: 0, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1116, file: !168, line: 184, column: 11)
!1120 = !DILocation(line: 183, column: 17, scope: !1116)
!1121 = !DILocation(line: 183, column: 9, scope: !1116)
!1122 = !DILocation(line: 206, column: 23, scope: !1013)
!1123 = !DILocation(line: 192, column: 13, scope: !1119)
!1124 = !DILocation(line: 195, column: 13, scope: !1119)
!1125 = !DILocation(line: 198, column: 13, scope: !1119)
!1126 = !DILocation(line: 182, column: 16, scope: !1116)
!1127 = !DILocation(line: 182, column: 7, scope: !1116)
!1128 = distinct !{!1128, !1129, !1130}
!1129 = !DILocation(line: 182, column: 7, scope: !1117)
!1130 = !DILocation(line: 201, column: 11, scope: !1117)
!1131 = !DILocation(line: 206, column: 21, scope: !1013)
!1132 = !DILocation(line: 0, scope: !1013)
!1133 = !DILocation(line: 206, column: 16, scope: !1013)
!1134 = !DILocation(line: 208, column: 18, scope: !1013)
!1135 = !DILocation(line: 209, column: 16, scope: !1013)
!1136 = !DILocation(line: 212, column: 19, scope: !1013)
!1137 = !DILocation(line: 212, column: 11, scope: !1013)
!1138 = !DILocation(line: 221, column: 36, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1019, file: !168, line: 220, column: 19)
!1140 = !DILocation(line: 221, column: 51, scope: !1139)
!1141 = !DILocation(line: 0, scope: !1139)
!1142 = !DILocation(line: 217, column: 30, scope: !1019)
!1143 = !DILocation(line: 221, column: 53, scope: !1139)
!1144 = !DILocation(line: 221, column: 49, scope: !1139)
!1145 = !DILocation(line: 221, column: 56, scope: !1139)
!1146 = !DILocation(line: 222, column: 30, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1139, file: !168, line: 222, column: 25)
!1148 = !DILocation(line: 222, column: 25, scope: !1139)
!1149 = !DILocation(line: 225, column: 31, scope: !1019)
!1150 = !DILocation(line: 225, column: 34, scope: !1019)
!1151 = distinct !{!1151, !1152, !1153}
!1152 = !DILocation(line: 219, column: 17, scope: !1019)
!1153 = !DILocation(line: 225, column: 45, scope: !1019)
!1154 = !DILocation(line: 227, column: 21, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1019, file: !168, line: 227, column: 21)
!1156 = !DILocation(line: 227, column: 30, scope: !1155)
!1157 = !DILocation(line: 227, column: 37, scope: !1155)
!1158 = !DILocation(line: 207, column: 18, scope: !1013)
!1159 = !DILocation(line: 239, column: 16, scope: !1020)
!1160 = !DILocation(line: 240, column: 15, scope: !1020)
!1161 = !DILocation(line: 245, column: 16, scope: !1020)
!1162 = !DILocation(line: 246, column: 15, scope: !1020)
!1163 = !DILocation(line: 251, column: 16, scope: !1020)
!1164 = !DILocation(line: 252, column: 15, scope: !1020)
!1165 = !DILocation(line: 259, column: 25, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !168, line: 258, column: 15)
!1167 = distinct !DILexicalBlock(scope: !1020, file: !168, line: 258, column: 15)
!1168 = !DILocation(line: 0, scope: !1166)
!1169 = !DILocation(line: 0, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1166, file: !168, line: 260, column: 19)
!1171 = !DILocation(line: 256, column: 20, scope: !1020)
!1172 = !DILocation(line: 259, column: 17, scope: !1166)
!1173 = !DILocation(line: 262, column: 27, scope: !1170)
!1174 = !DILocation(line: 263, column: 21, scope: !1170)
!1175 = !DILocation(line: 265, column: 27, scope: !1170)
!1176 = !DILocation(line: 266, column: 21, scope: !1170)
!1177 = !DILocation(line: 268, column: 27, scope: !1170)
!1178 = !DILocation(line: 269, column: 21, scope: !1170)
!1179 = !DILocation(line: 275, column: 27, scope: !1170)
!1180 = !DILocation(line: 276, column: 21, scope: !1170)
!1181 = !DILocation(line: 279, column: 27, scope: !1170)
!1182 = !DILocation(line: 280, column: 21, scope: !1170)
!1183 = !DILocation(line: 0, scope: !1020)
!1184 = !DILocation(line: 258, column: 24, scope: !1166)
!1185 = !DILocation(line: 258, column: 15, scope: !1166)
!1186 = distinct !{!1186, !1187, !1188}
!1187 = !DILocation(line: 258, column: 15, scope: !1167)
!1188 = !DILocation(line: 283, column: 19, scope: !1167)
!1189 = !DILocation(line: 287, column: 28, scope: !1013)
!1190 = !DILocation(line: 288, column: 19, scope: !1013)
!1191 = !DILocation(line: 288, column: 22, scope: !1013)
!1192 = !DILocation(line: 289, column: 19, scope: !1013)
!1193 = !DILocation(line: 289, column: 24, scope: !1013)
!1194 = !DILocation(line: 290, column: 19, scope: !1013)
!1195 = !DILocation(line: 290, column: 28, scope: !1013)
!1196 = !DILocation(line: 291, column: 19, scope: !1013)
!1197 = !DILocation(line: 291, column: 25, scope: !1013)
!1198 = !DILocation(line: 293, column: 14, scope: !1013)
!1199 = !DILocation(line: 293, column: 38, scope: !1013)
!1200 = !DILocation(line: 292, column: 19, scope: !1013)
!1201 = !DILocation(line: 292, column: 29, scope: !1013)
!1202 = !DILocation(line: 295, column: 14, scope: !1009)
!1203 = !DILocation(line: 295, column: 24, scope: !1009)
!1204 = !DILocation(line: 176, column: 28, scope: !1010)
!1205 = !DILocation(line: 176, column: 3, scope: !1010)
!1206 = distinct !{!1206, !1207, !1208}
!1207 = !DILocation(line: 176, column: 3, scope: !1011)
!1208 = !DILocation(line: 299, column: 5, scope: !1011)
!1209 = !DILocation(line: 303, column: 16, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !168, line: 302, column: 5)
!1211 = distinct !DILexicalBlock(scope: !985, file: !168, line: 301, column: 7)
!1212 = !DILocation(line: 303, column: 21, scope: !1210)
!1213 = !DILocation(line: 304, column: 7, scope: !1210)
!1214 = !DILocation(line: 308, column: 3, scope: !985)
!1215 = !DILocation(line: 309, column: 3, scope: !985)
!1216 = !DILocation(line: 310, column: 1, scope: !985)
!1217 = distinct !DISubprogram(name: "mode_create_from_ref", scope: !168, file: !168, line: 316, type: !986, isLocal: false, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, unit: !164, retainedNodes: !1218)
!1218 = !{!1219, !1220}
!1219 = !DILocalVariable(name: "ref_file", arg: 1, scope: !1217, file: !168, line: 316, type: !44)
!1220 = !DILocalVariable(name: "ref_stats", scope: !1217, file: !168, line: 318, type: !1221)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1222, line: 46, size: 1152, elements: !1223)
!1222 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1223 = !{!1224, !1225, !1227, !1229, !1230, !1232, !1234, !1235, !1236, !1239, !1241, !1243, !1251, !1252, !1253}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1221, file: !1222, line: 48, baseType: !34, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1221, file: !1222, line: 53, baseType: !1226, size: 64, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !35, line: 146, baseType: !36)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1221, file: !1222, line: 61, baseType: !1228, size: 64, offset: 128)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !35, line: 149, baseType: !36)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1221, file: !1222, line: 62, baseType: !710, size: 32, offset: 192)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1221, file: !1222, line: 64, baseType: !1231, size: 32, offset: 224)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !35, line: 144, baseType: !7)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1221, file: !1222, line: 65, baseType: !1233, size: 32, offset: 256)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !35, line: 145, baseType: !7)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1221, file: !1222, line: 67, baseType: !47, size: 32, offset: 288)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1221, file: !1222, line: 69, baseType: !34, size: 64, offset: 320)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1221, file: !1222, line: 74, baseType: !1237, size: 64, offset: 384)
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !35, line: 150, baseType: !1238)
!1238 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1221, file: !1222, line: 78, baseType: !1240, size: 64, offset: 448)
!1240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !35, line: 172, baseType: !1238)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1221, file: !1222, line: 80, baseType: !1242, size: 64, offset: 512)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !35, line: 177, baseType: !1238)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1221, file: !1222, line: 91, baseType: !1244, size: 128, offset: 576)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1245, line: 9, size: 128, elements: !1246)
!1245 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1246 = !{!1247, !1249}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1244, file: !1245, line: 11, baseType: !1248, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !35, line: 158, baseType: !1238)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1244, file: !1245, line: 12, baseType: !1250, size: 64, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !35, line: 194, baseType: !1238)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1221, file: !1222, line: 92, baseType: !1244, size: 128, offset: 704)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1221, file: !1222, line: 93, baseType: !1244, size: 128, offset: 832)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1221, file: !1222, line: 106, baseType: !1254, size: 192, offset: 960)
!1254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1250, size: 192, elements: !1255)
!1255 = !{!1256}
!1256 = !DISubrange(count: 3)
!1257 = !DILocation(line: 316, column: 35, scope: !1217)
!1258 = !DILocation(line: 318, column: 3, scope: !1217)
!1259 = !DILocation(line: 318, column: 15, scope: !1217)
!1260 = !DILocalVariable(name: "__path", arg: 1, scope: !1261, file: !898, line: 453, type: !44)
!1261 = distinct !DISubprogram(name: "stat", scope: !898, file: !898, line: 453, type: !1262, isLocal: false, isDefinition: true, scopeLine: 454, flags: DIFlagPrototyped, isOptimized: true, unit: !164, retainedNodes: !1265)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!47, !44, !1264}
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1265 = !{!1260, !1266}
!1266 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1261, file: !898, line: 453, type: !1264)
!1267 = !DILocation(line: 453, column: 1, scope: !1261, inlinedAt: !1268)
!1268 = distinct !DILocation(line: 320, column: 7, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1217, file: !168, line: 320, column: 7)
!1270 = !DILocation(line: 455, column: 10, scope: !1261, inlinedAt: !1268)
!1271 = !DILocation(line: 320, column: 35, scope: !1269)
!1272 = !DILocation(line: 320, column: 7, scope: !1217)
!1273 = !DILocation(line: 322, column: 41, scope: !1217)
!1274 = !{!1275, !792, i64 24}
!1275 = !{!"stat", !872, i64 0, !872, i64 8, !872, i64 16, !792, i64 24, !792, i64 28, !792, i64 32, !792, i64 36, !872, i64 40, !872, i64 48, !872, i64 56, !872, i64 64, !1276, i64 72, !1276, i64 88, !1276, i64 104, !650, i64 120}
!1276 = !{!"timespec", !872, i64 0, !872, i64 8}
!1277 = !DILocation(line: 112, column: 29, scope: !1053, inlinedAt: !1278)
!1278 = distinct !DILocation(line: 322, column: 10, scope: !1217)
!1279 = !DILocation(line: 112, column: 46, scope: !1053, inlinedAt: !1278)
!1280 = !DILocation(line: 114, column: 27, scope: !1053, inlinedAt: !1278)
!1281 = !DILocation(line: 114, column: 23, scope: !1053, inlinedAt: !1278)
!1282 = !DILocation(line: 115, column: 9, scope: !1053, inlinedAt: !1278)
!1283 = !DILocation(line: 116, column: 6, scope: !1053, inlinedAt: !1278)
!1284 = !DILocation(line: 116, column: 11, scope: !1053, inlinedAt: !1278)
!1285 = !DILocation(line: 117, column: 6, scope: !1053, inlinedAt: !1278)
!1286 = !DILocation(line: 117, column: 15, scope: !1053, inlinedAt: !1278)
!1287 = !DILocation(line: 118, column: 6, scope: !1053, inlinedAt: !1278)
!1288 = !DILocation(line: 118, column: 12, scope: !1053, inlinedAt: !1278)
!1289 = !DILocation(line: 119, column: 6, scope: !1053, inlinedAt: !1278)
!1290 = !DILocation(line: 119, column: 16, scope: !1053, inlinedAt: !1278)
!1291 = !DILocation(line: 120, column: 8, scope: !1053, inlinedAt: !1278)
!1292 = !DILocation(line: 120, column: 13, scope: !1053, inlinedAt: !1278)
!1293 = !DILocation(line: 322, column: 3, scope: !1217)
!1294 = !DILocation(line: 0, scope: !1217)
!1295 = !DILocation(line: 323, column: 1, scope: !1217)
!1296 = distinct !DISubprogram(name: "mode_adjust", scope: !168, file: !168, line: 339, type: !1297, isLocal: false, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true, unit: !164, retainedNodes: !1302)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!709, !709, !67, !709, !1299, !1301}
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !989)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!1302 = !{!1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1314, !1315, !1316}
!1303 = !DILocalVariable(name: "oldmode", arg: 1, scope: !1296, file: !168, line: 339, type: !709)
!1304 = !DILocalVariable(name: "dir", arg: 2, scope: !1296, file: !168, line: 339, type: !67)
!1305 = !DILocalVariable(name: "umask_value", arg: 3, scope: !1296, file: !168, line: 339, type: !709)
!1306 = !DILocalVariable(name: "changes", arg: 4, scope: !1296, file: !168, line: 340, type: !1299)
!1307 = !DILocalVariable(name: "pmode_bits", arg: 5, scope: !1296, file: !168, line: 340, type: !1301)
!1308 = !DILocalVariable(name: "newmode", scope: !1296, file: !168, line: 343, type: !709)
!1309 = !DILocalVariable(name: "mode_bits", scope: !1296, file: !168, line: 346, type: !709)
!1310 = !DILocalVariable(name: "affected", scope: !1311, file: !168, line: 350, type: !709)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !168, line: 349, column: 5)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !168, line: 348, column: 3)
!1313 = distinct !DILexicalBlock(scope: !1296, file: !168, line: 348, column: 3)
!1314 = !DILocalVariable(name: "omit_change", scope: !1311, file: !168, line: 351, type: !709)
!1315 = !DILocalVariable(name: "value", scope: !1311, file: !168, line: 353, type: !709)
!1316 = !DILocalVariable(name: "preserved", scope: !1317, file: !168, line: 393, type: !709)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !168, line: 392, column: 11)
!1318 = distinct !DILexicalBlock(scope: !1311, file: !168, line: 387, column: 9)
!1319 = !DILocation(line: 339, column: 21, scope: !1296)
!1320 = !DILocation(line: 339, column: 35, scope: !1296)
!1321 = !DILocation(line: 339, column: 47, scope: !1296)
!1322 = !DILocation(line: 340, column: 40, scope: !1296)
!1323 = !DILocation(line: 340, column: 57, scope: !1296)
!1324 = !DILocation(line: 343, column: 28, scope: !1296)
!1325 = !DILocation(line: 343, column: 10, scope: !1296)
!1326 = !DILocation(line: 346, column: 10, scope: !1296)
!1327 = !DILocation(line: 348, column: 19, scope: !1312)
!1328 = !DILocation(line: 348, column: 24, scope: !1312)
!1329 = !DILocation(line: 348, column: 3, scope: !1313)
!1330 = !DILocation(line: 348, column: 10, scope: !1312)
!1331 = !DILocation(line: 350, column: 34, scope: !1311)
!1332 = !DILocation(line: 350, column: 14, scope: !1311)
!1333 = !DILocation(line: 352, column: 52, scope: !1311)
!1334 = !DILocation(line: 352, column: 41, scope: !1311)
!1335 = !DILocation(line: 352, column: 39, scope: !1311)
!1336 = !DILocation(line: 351, column: 14, scope: !1311)
!1337 = !DILocation(line: 353, column: 31, scope: !1311)
!1338 = !DILocation(line: 353, column: 14, scope: !1311)
!1339 = !DILocation(line: 355, column: 7, scope: !1311)
!1340 = !DILocation(line: 362, column: 17, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1311, file: !168, line: 356, column: 9)
!1342 = !DILocation(line: 365, column: 28, scope: !1341)
!1343 = !DILocation(line: 365, column: 22, scope: !1341)
!1344 = !DILocation(line: 367, column: 30, scope: !1341)
!1345 = !DILocation(line: 367, column: 24, scope: !1341)
!1346 = !DILocation(line: 369, column: 30, scope: !1341)
!1347 = !DILocation(line: 369, column: 24, scope: !1341)
!1348 = !DILocation(line: 367, column: 21, scope: !1341)
!1349 = !DILocation(line: 369, column: 21, scope: !1341)
!1350 = !DILocation(line: 365, column: 17, scope: !1341)
!1351 = !DILocation(line: 371, column: 11, scope: !1341)
!1352 = !DILocation(line: 376, column: 24, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1341, file: !168, line: 376, column: 15)
!1354 = !DILocation(line: 376, column: 57, scope: !1353)
!1355 = !DILocation(line: 377, column: 19, scope: !1353)
!1356 = !DILocation(line: 376, column: 15, scope: !1341)
!1357 = !DILocation(line: 0, scope: !1311)
!1358 = !DILocation(line: 384, column: 17, scope: !1311)
!1359 = !DILocation(line: 384, column: 55, scope: !1311)
!1360 = !DILocation(line: 384, column: 53, scope: !1311)
!1361 = !DILocation(line: 384, column: 13, scope: !1311)
!1362 = !DILocation(line: 386, column: 24, scope: !1311)
!1363 = !DILocation(line: 386, column: 15, scope: !1311)
!1364 = !DILocation(line: 386, column: 7, scope: !1311)
!1365 = !DILocation(line: 393, column: 44, scope: !1317)
!1366 = !DILocation(line: 393, column: 33, scope: !1317)
!1367 = !DILocation(line: 393, column: 59, scope: !1317)
!1368 = !DILocation(line: 393, column: 20, scope: !1317)
!1369 = !DILocation(line: 394, column: 42, scope: !1317)
!1370 = !DILocation(line: 394, column: 23, scope: !1317)
!1371 = !DILocation(line: 395, column: 32, scope: !1317)
!1372 = !DILocation(line: 395, column: 45, scope: !1317)
!1373 = !DILocation(line: 400, column: 21, scope: !1318)
!1374 = !DILocation(line: 401, column: 19, scope: !1318)
!1375 = !DILocation(line: 402, column: 11, scope: !1318)
!1376 = !DILocation(line: 405, column: 21, scope: !1318)
!1377 = !DILocation(line: 406, column: 22, scope: !1318)
!1378 = !DILocation(line: 406, column: 19, scope: !1318)
!1379 = !DILocation(line: 407, column: 11, scope: !1318)
!1380 = !DILocation(line: 0, scope: !1317)
!1381 = !DILocation(line: 348, column: 45, scope: !1312)
!1382 = distinct !{!1382, !1329, !1383}
!1383 = !DILocation(line: 409, column: 5, scope: !1313)
!1384 = !DILocation(line: 411, column: 7, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1296, file: !168, line: 411, column: 7)
!1386 = !DILocation(line: 411, column: 7, scope: !1296)
!1387 = !DILocation(line: 412, column: 17, scope: !1385)
!1388 = !DILocation(line: 412, column: 5, scope: !1385)
!1389 = !DILocation(line: 413, column: 3, scope: !1296)
!1390 = distinct !DISubprogram(name: "set_program_name", scope: !81, file: !81, line: 39, type: !623, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !77, retainedNodes: !1391)
!1391 = !{!1392, !1393, !1394}
!1392 = !DILocalVariable(name: "argv0", arg: 1, scope: !1390, file: !81, line: 39, type: !44)
!1393 = !DILocalVariable(name: "slash", scope: !1390, file: !81, line: 46, type: !44)
!1394 = !DILocalVariable(name: "base", scope: !1390, file: !81, line: 47, type: !44)
!1395 = !DILocation(line: 39, column: 31, scope: !1390)
!1396 = !DILocation(line: 51, column: 13, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1390, file: !81, line: 51, column: 7)
!1398 = !DILocation(line: 51, column: 7, scope: !1390)
!1399 = !DILocation(line: 55, column: 14, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1397, file: !81, line: 52, column: 5)
!1401 = !DILocation(line: 54, column: 7, scope: !1400)
!1402 = !DILocation(line: 56, column: 7, scope: !1400)
!1403 = !DILocation(line: 59, column: 11, scope: !1390)
!1404 = !DILocation(line: 46, column: 15, scope: !1390)
!1405 = !DILocation(line: 60, column: 17, scope: !1390)
!1406 = !DILocation(line: 60, column: 33, scope: !1390)
!1407 = !DILocation(line: 60, column: 11, scope: !1390)
!1408 = !DILocation(line: 47, column: 15, scope: !1390)
!1409 = !DILocation(line: 61, column: 12, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1390, file: !81, line: 61, column: 7)
!1411 = !DILocation(line: 61, column: 20, scope: !1410)
!1412 = !DILocation(line: 61, column: 25, scope: !1410)
!1413 = !DILocation(line: 61, column: 42, scope: !1410)
!1414 = !DILocation(line: 61, column: 28, scope: !1410)
!1415 = !DILocation(line: 61, column: 61, scope: !1410)
!1416 = !DILocation(line: 61, column: 7, scope: !1390)
!1417 = !DILocation(line: 64, column: 11, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !81, line: 64, column: 11)
!1419 = distinct !DILexicalBlock(scope: !1410, file: !81, line: 62, column: 5)
!1420 = !DILocation(line: 64, column: 36, scope: !1418)
!1421 = !DILocation(line: 64, column: 11, scope: !1419)
!1422 = !DILocation(line: 66, column: 24, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1418, file: !81, line: 65, column: 9)
!1424 = !DILocation(line: 70, column: 41, scope: !1423)
!1425 = !DILocation(line: 72, column: 9, scope: !1423)
!1426 = !DILocation(line: 84, column: 16, scope: !1390)
!1427 = !DILocation(line: 90, column: 27, scope: !1390)
!1428 = !DILocation(line: 92, column: 1, scope: !1390)
!1429 = distinct !DISubprogram(name: "clone_quoting_options", scope: !114, file: !114, line: 122, type: !1430, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !1433)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!1432, !1432}
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!1433 = !{!1434, !1435, !1436}
!1434 = !DILocalVariable(name: "o", arg: 1, scope: !1429, file: !114, line: 122, type: !1432)
!1435 = !DILocalVariable(name: "e", scope: !1429, file: !114, line: 124, type: !47)
!1436 = !DILocalVariable(name: "p", scope: !1429, file: !114, line: 125, type: !1432)
!1437 = !DILocation(line: 122, column: 48, scope: !1429)
!1438 = !DILocation(line: 124, column: 11, scope: !1429)
!1439 = !DILocation(line: 124, column: 7, scope: !1429)
!1440 = !DILocation(line: 125, column: 40, scope: !1429)
!1441 = !DILocation(line: 125, column: 31, scope: !1429)
!1442 = !DILocation(line: 125, column: 27, scope: !1429)
!1443 = !DILocation(line: 127, column: 9, scope: !1429)
!1444 = !DILocation(line: 128, column: 3, scope: !1429)
!1445 = distinct !DISubprogram(name: "get_quoting_style", scope: !114, file: !114, line: 133, type: !1446, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !1450)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!14, !1448}
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!1450 = !{!1451}
!1451 = !DILocalVariable(name: "o", arg: 1, scope: !1445, file: !114, line: 133, type: !1448)
!1452 = !DILocation(line: 133, column: 50, scope: !1445)
!1453 = !DILocation(line: 135, column: 11, scope: !1445)
!1454 = !DILocation(line: 135, column: 46, scope: !1445)
!1455 = !{!1456, !650, i64 0}
!1456 = !{!"quoting_options", !650, i64 0, !792, i64 4, !650, i64 8, !649, i64 40, !649, i64 48}
!1457 = !DILocation(line: 135, column: 3, scope: !1445)
!1458 = distinct !DISubprogram(name: "set_quoting_style", scope: !114, file: !114, line: 141, type: !1459, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !1461)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{null, !1432, !14}
!1461 = !{!1462, !1463}
!1462 = !DILocalVariable(name: "o", arg: 1, scope: !1458, file: !114, line: 141, type: !1432)
!1463 = !DILocalVariable(name: "s", arg: 2, scope: !1458, file: !114, line: 141, type: !14)
!1464 = !DILocation(line: 141, column: 44, scope: !1458)
!1465 = !DILocation(line: 141, column: 66, scope: !1458)
!1466 = !DILocation(line: 143, column: 4, scope: !1458)
!1467 = !DILocation(line: 143, column: 39, scope: !1458)
!1468 = !DILocation(line: 143, column: 45, scope: !1458)
!1469 = !DILocation(line: 144, column: 1, scope: !1458)
!1470 = distinct !DISubprogram(name: "set_char_quoting", scope: !114, file: !114, line: 152, type: !1471, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !1473)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!47, !1432, !30, !47}
!1473 = !{!1474, !1475, !1476, !1477, !1479, !1481, !1482}
!1474 = !DILocalVariable(name: "o", arg: 1, scope: !1470, file: !114, line: 152, type: !1432)
!1475 = !DILocalVariable(name: "c", arg: 2, scope: !1470, file: !114, line: 152, type: !30)
!1476 = !DILocalVariable(name: "i", arg: 3, scope: !1470, file: !114, line: 152, type: !47)
!1477 = !DILocalVariable(name: "uc", scope: !1470, file: !114, line: 154, type: !1478)
!1478 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1479 = !DILocalVariable(name: "p", scope: !1470, file: !114, line: 155, type: !1480)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1481 = !DILocalVariable(name: "shift", scope: !1470, file: !114, line: 157, type: !47)
!1482 = !DILocalVariable(name: "r", scope: !1470, file: !114, line: 158, type: !47)
!1483 = !DILocation(line: 152, column: 43, scope: !1470)
!1484 = !DILocation(line: 152, column: 51, scope: !1470)
!1485 = !DILocation(line: 152, column: 58, scope: !1470)
!1486 = !DILocation(line: 154, column: 17, scope: !1470)
!1487 = !DILocation(line: 156, column: 6, scope: !1470)
!1488 = !DILocation(line: 156, column: 62, scope: !1470)
!1489 = !DILocation(line: 156, column: 57, scope: !1470)
!1490 = !DILocation(line: 155, column: 17, scope: !1470)
!1491 = !DILocation(line: 157, column: 15, scope: !1470)
!1492 = !DILocation(line: 157, column: 7, scope: !1470)
!1493 = !DILocation(line: 158, column: 12, scope: !1470)
!1494 = !DILocation(line: 158, column: 15, scope: !1470)
!1495 = !DILocation(line: 158, column: 25, scope: !1470)
!1496 = !DILocation(line: 158, column: 7, scope: !1470)
!1497 = !DILocation(line: 159, column: 13, scope: !1470)
!1498 = !DILocation(line: 159, column: 18, scope: !1470)
!1499 = !DILocation(line: 159, column: 23, scope: !1470)
!1500 = !DILocation(line: 159, column: 6, scope: !1470)
!1501 = !DILocation(line: 160, column: 3, scope: !1470)
!1502 = distinct !DISubprogram(name: "set_quoting_flags", scope: !114, file: !114, line: 168, type: !1503, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !1505)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!47, !1432, !47}
!1505 = !{!1506, !1507, !1508}
!1506 = !DILocalVariable(name: "o", arg: 1, scope: !1502, file: !114, line: 168, type: !1432)
!1507 = !DILocalVariable(name: "i", arg: 2, scope: !1502, file: !114, line: 168, type: !47)
!1508 = !DILocalVariable(name: "r", scope: !1502, file: !114, line: 170, type: !47)
!1509 = !DILocation(line: 168, column: 44, scope: !1502)
!1510 = !DILocation(line: 168, column: 51, scope: !1502)
!1511 = !DILocation(line: 171, column: 8, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1502, file: !114, line: 171, column: 7)
!1513 = !DILocation(line: 171, column: 7, scope: !1502)
!1514 = !DILocation(line: 173, column: 10, scope: !1502)
!1515 = !{!1456, !792, i64 4}
!1516 = !DILocation(line: 170, column: 7, scope: !1502)
!1517 = !DILocation(line: 174, column: 12, scope: !1502)
!1518 = !DILocation(line: 175, column: 3, scope: !1502)
!1519 = distinct !DISubprogram(name: "set_custom_quoting", scope: !114, file: !114, line: 179, type: !1520, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !1522)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{null, !1432, !44, !44}
!1522 = !{!1523, !1524, !1525}
!1523 = !DILocalVariable(name: "o", arg: 1, scope: !1519, file: !114, line: 179, type: !1432)
!1524 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1519, file: !114, line: 180, type: !44)
!1525 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1519, file: !114, line: 180, type: !44)
!1526 = !DILocation(line: 179, column: 45, scope: !1519)
!1527 = !DILocation(line: 180, column: 33, scope: !1519)
!1528 = !DILocation(line: 180, column: 57, scope: !1519)
!1529 = !DILocation(line: 182, column: 8, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1519, file: !114, line: 182, column: 7)
!1531 = !DILocation(line: 182, column: 7, scope: !1519)
!1532 = !DILocation(line: 184, column: 6, scope: !1519)
!1533 = !DILocation(line: 184, column: 12, scope: !1519)
!1534 = !DILocation(line: 185, column: 8, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1519, file: !114, line: 185, column: 7)
!1536 = !DILocation(line: 185, column: 23, scope: !1535)
!1537 = !DILocation(line: 185, column: 19, scope: !1535)
!1538 = !DILocation(line: 186, column: 5, scope: !1535)
!1539 = !DILocation(line: 187, column: 6, scope: !1519)
!1540 = !DILocation(line: 187, column: 17, scope: !1519)
!1541 = !{!1456, !649, i64 40}
!1542 = !DILocation(line: 188, column: 6, scope: !1519)
!1543 = !DILocation(line: 188, column: 18, scope: !1519)
!1544 = !{!1456, !649, i64 48}
!1545 = !DILocation(line: 189, column: 1, scope: !1519)
!1546 = distinct !DISubprogram(name: "quotearg_buffer", scope: !114, file: !114, line: 784, type: !1547, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !1549)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!109, !29, !109, !44, !109, !1448}
!1549 = !{!1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557}
!1550 = !DILocalVariable(name: "buffer", arg: 1, scope: !1546, file: !114, line: 784, type: !29)
!1551 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1546, file: !114, line: 784, type: !109)
!1552 = !DILocalVariable(name: "arg", arg: 3, scope: !1546, file: !114, line: 785, type: !44)
!1553 = !DILocalVariable(name: "argsize", arg: 4, scope: !1546, file: !114, line: 785, type: !109)
!1554 = !DILocalVariable(name: "o", arg: 5, scope: !1546, file: !114, line: 786, type: !1448)
!1555 = !DILocalVariable(name: "p", scope: !1546, file: !114, line: 788, type: !1448)
!1556 = !DILocalVariable(name: "e", scope: !1546, file: !114, line: 789, type: !47)
!1557 = !DILocalVariable(name: "r", scope: !1546, file: !114, line: 790, type: !109)
!1558 = !DILocation(line: 784, column: 24, scope: !1546)
!1559 = !DILocation(line: 784, column: 39, scope: !1546)
!1560 = !DILocation(line: 785, column: 30, scope: !1546)
!1561 = !DILocation(line: 785, column: 42, scope: !1546)
!1562 = !DILocation(line: 786, column: 48, scope: !1546)
!1563 = !DILocation(line: 788, column: 37, scope: !1546)
!1564 = !DILocation(line: 788, column: 33, scope: !1546)
!1565 = !DILocation(line: 789, column: 11, scope: !1546)
!1566 = !DILocation(line: 789, column: 7, scope: !1546)
!1567 = !DILocation(line: 791, column: 43, scope: !1546)
!1568 = !DILocation(line: 791, column: 53, scope: !1546)
!1569 = !DILocation(line: 791, column: 60, scope: !1546)
!1570 = !DILocation(line: 792, column: 43, scope: !1546)
!1571 = !DILocation(line: 792, column: 58, scope: !1546)
!1572 = !DILocation(line: 790, column: 14, scope: !1546)
!1573 = !DILocation(line: 790, column: 10, scope: !1546)
!1574 = !DILocation(line: 793, column: 9, scope: !1546)
!1575 = !DILocation(line: 794, column: 3, scope: !1546)
!1576 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !114, file: !114, line: 256, type: !1577, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !1581)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!109, !29, !109, !44, !109, !14, !47, !1579, !44, !44}
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1581 = !{!1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1606, !1607, !1608, !1609, !1610, !1613, !1614, !1632, !1635, !1636, !1643}
!1582 = !DILocalVariable(name: "buffer", arg: 1, scope: !1576, file: !114, line: 256, type: !29)
!1583 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1576, file: !114, line: 256, type: !109)
!1584 = !DILocalVariable(name: "arg", arg: 3, scope: !1576, file: !114, line: 257, type: !44)
!1585 = !DILocalVariable(name: "argsize", arg: 4, scope: !1576, file: !114, line: 257, type: !109)
!1586 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1576, file: !114, line: 258, type: !14)
!1587 = !DILocalVariable(name: "flags", arg: 6, scope: !1576, file: !114, line: 258, type: !47)
!1588 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1576, file: !114, line: 259, type: !1579)
!1589 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1576, file: !114, line: 260, type: !44)
!1590 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1576, file: !114, line: 261, type: !44)
!1591 = !DILocalVariable(name: "i", scope: !1576, file: !114, line: 263, type: !109)
!1592 = !DILocalVariable(name: "len", scope: !1576, file: !114, line: 264, type: !109)
!1593 = !DILocalVariable(name: "orig_buffersize", scope: !1576, file: !114, line: 265, type: !109)
!1594 = !DILocalVariable(name: "quote_string", scope: !1576, file: !114, line: 266, type: !44)
!1595 = !DILocalVariable(name: "quote_string_len", scope: !1576, file: !114, line: 267, type: !109)
!1596 = !DILocalVariable(name: "backslash_escapes", scope: !1576, file: !114, line: 268, type: !67)
!1597 = !DILocalVariable(name: "unibyte_locale", scope: !1576, file: !114, line: 269, type: !67)
!1598 = !DILocalVariable(name: "elide_outer_quotes", scope: !1576, file: !114, line: 270, type: !67)
!1599 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1576, file: !114, line: 271, type: !67)
!1600 = !DILocalVariable(name: "encountered_single_quote", scope: !1576, file: !114, line: 272, type: !67)
!1601 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1576, file: !114, line: 273, type: !67)
!1602 = !DILocalVariable(name: "c", scope: !1603, file: !114, line: 402, type: !1478)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !114, line: 401, column: 5)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !114, line: 400, column: 3)
!1605 = distinct !DILexicalBlock(scope: !1576, file: !114, line: 400, column: 3)
!1606 = !DILocalVariable(name: "esc", scope: !1603, file: !114, line: 403, type: !1478)
!1607 = !DILocalVariable(name: "is_right_quote", scope: !1603, file: !114, line: 404, type: !67)
!1608 = !DILocalVariable(name: "escaping", scope: !1603, file: !114, line: 405, type: !67)
!1609 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1603, file: !114, line: 406, type: !67)
!1610 = !DILocalVariable(name: "m", scope: !1611, file: !114, line: 610, type: !109)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !114, line: 608, column: 11)
!1612 = distinct !DILexicalBlock(scope: !1603, file: !114, line: 426, column: 9)
!1613 = !DILocalVariable(name: "printable", scope: !1611, file: !114, line: 612, type: !67)
!1614 = !DILocalVariable(name: "mbstate", scope: !1615, file: !114, line: 621, type: !1617)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !114, line: 620, column: 15)
!1616 = distinct !DILexicalBlock(scope: !1611, file: !114, line: 614, column: 17)
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1618, line: 6, baseType: !1619)
!1618 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1620, line: 21, baseType: !1621)
!1620 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1620, line: 13, size: 64, elements: !1622)
!1622 = !{!1623, !1624}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1621, file: !1620, line: 15, baseType: !47, size: 32)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1621, file: !1620, line: 20, baseType: !1625, size: 32, offset: 32)
!1625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1621, file: !1620, line: 16, size: 32, elements: !1626)
!1626 = !{!1627, !1628}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1625, file: !1620, line: 18, baseType: !7, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1625, file: !1620, line: 19, baseType: !1629, size: 32)
!1629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32, elements: !1630)
!1630 = !{!1631}
!1631 = !DISubrange(count: 4)
!1632 = !DILocalVariable(name: "w", scope: !1633, file: !114, line: 631, type: !1634)
!1633 = distinct !DILexicalBlock(scope: !1615, file: !114, line: 630, column: 19)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !110, line: 90, baseType: !47)
!1635 = !DILocalVariable(name: "bytes", scope: !1633, file: !114, line: 632, type: !109)
!1636 = !DILocalVariable(name: "j", scope: !1637, file: !114, line: 657, type: !109)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !114, line: 656, column: 27)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !114, line: 654, column: 29)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !114, line: 649, column: 23)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !114, line: 641, column: 30)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !114, line: 636, column: 30)
!1642 = distinct !DILexicalBlock(scope: !1633, file: !114, line: 634, column: 25)
!1643 = !DILocalVariable(name: "ilim", scope: !1644, file: !114, line: 684, type: !109)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !114, line: 681, column: 15)
!1645 = distinct !DILexicalBlock(scope: !1611, file: !114, line: 680, column: 17)
!1646 = !DILocation(line: 256, column: 33, scope: !1576)
!1647 = !DILocation(line: 256, column: 48, scope: !1576)
!1648 = !DILocation(line: 257, column: 39, scope: !1576)
!1649 = !DILocation(line: 257, column: 51, scope: !1576)
!1650 = !DILocation(line: 258, column: 46, scope: !1576)
!1651 = !DILocation(line: 258, column: 65, scope: !1576)
!1652 = !DILocation(line: 259, column: 47, scope: !1576)
!1653 = !DILocation(line: 260, column: 39, scope: !1576)
!1654 = !DILocation(line: 261, column: 39, scope: !1576)
!1655 = !DILocation(line: 264, column: 10, scope: !1576)
!1656 = !DILocation(line: 265, column: 10, scope: !1576)
!1657 = !DILocation(line: 266, column: 15, scope: !1576)
!1658 = !DILocation(line: 267, column: 10, scope: !1576)
!1659 = !DILocation(line: 268, column: 8, scope: !1576)
!1660 = !DILocation(line: 269, column: 25, scope: !1576)
!1661 = !DILocation(line: 269, column: 36, scope: !1576)
!1662 = !DILocation(line: 270, column: 8, scope: !1576)
!1663 = !DILocation(line: 271, column: 8, scope: !1576)
!1664 = !DILocation(line: 272, column: 8, scope: !1576)
!1665 = !DILocation(line: 273, column: 8, scope: !1576)
!1666 = !DILocation(line: 273, column: 3, scope: !1576)
!1667 = !DILocation(line: 0, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1576, file: !114, line: 317, column: 5)
!1669 = !DILocation(line: 316, column: 3, scope: !1576)
!1670 = !DILocation(line: 323, column: 11, scope: !1668)
!1671 = !DILocation(line: 323, column: 12, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1668, file: !114, line: 323, column: 11)
!1673 = !DILocation(line: 324, column: 9, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !114, line: 324, column: 9)
!1675 = distinct !DILexicalBlock(scope: !1672, file: !114, line: 324, column: 9)
!1676 = !DILocation(line: 324, column: 9, scope: !1675)
!1677 = !DILocation(line: 362, column: 26, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !114, line: 340, column: 11)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !114, line: 339, column: 13)
!1680 = distinct !DILexicalBlock(scope: !1668, file: !114, line: 338, column: 7)
!1681 = !DILocation(line: 363, column: 27, scope: !1678)
!1682 = !DILocation(line: 364, column: 11, scope: !1678)
!1683 = !DILocation(line: 365, column: 14, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1680, file: !114, line: 365, column: 13)
!1685 = !DILocation(line: 365, column: 13, scope: !1680)
!1686 = !DILocation(line: 366, column: 43, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !114, line: 366, column: 11)
!1688 = distinct !DILexicalBlock(scope: !1684, file: !114, line: 366, column: 11)
!1689 = !DILocation(line: 366, column: 11, scope: !1688)
!1690 = !DILocation(line: 367, column: 13, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !114, line: 367, column: 13)
!1692 = distinct !DILexicalBlock(scope: !1687, file: !114, line: 367, column: 13)
!1693 = !DILocation(line: 367, column: 13, scope: !1692)
!1694 = !DILocation(line: 366, column: 70, scope: !1687)
!1695 = distinct !{!1695, !1689, !1696}
!1696 = !DILocation(line: 367, column: 13, scope: !1688)
!1697 = !DILocation(line: 370, column: 28, scope: !1680)
!1698 = !DILocation(line: 372, column: 7, scope: !1668)
!1699 = !DILocation(line: 376, column: 7, scope: !1668)
!1700 = !DILocation(line: 379, column: 7, scope: !1668)
!1701 = !DILocation(line: 381, column: 12, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1668, file: !114, line: 381, column: 11)
!1703 = !DILocation(line: 381, column: 11, scope: !1668)
!1704 = !DILocation(line: 0, scope: !1702)
!1705 = !DILocation(line: 386, column: 12, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1668, file: !114, line: 386, column: 11)
!1707 = !DILocation(line: 386, column: 11, scope: !1668)
!1708 = !DILocation(line: 387, column: 9, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !114, line: 387, column: 9)
!1710 = distinct !DILexicalBlock(scope: !1706, file: !114, line: 387, column: 9)
!1711 = !DILocation(line: 387, column: 9, scope: !1710)
!1712 = !DILocation(line: 394, column: 7, scope: !1668)
!1713 = !DILocation(line: 397, column: 7, scope: !1668)
!1714 = !DILocation(line: 0, scope: !1576)
!1715 = !DILocation(line: 263, column: 10, scope: !1576)
!1716 = !DILocation(line: 400, column: 8, scope: !1605)
!1717 = !DILocation(line: 0, scope: !1604)
!1718 = !DILocation(line: 400, column: 27, scope: !1604)
!1719 = !DILocation(line: 400, column: 19, scope: !1604)
!1720 = !DILocation(line: 400, column: 41, scope: !1604)
!1721 = !DILocation(line: 400, column: 48, scope: !1604)
!1722 = !DILocation(line: 400, column: 3, scope: !1605)
!1723 = !DILocation(line: 400, column: 60, scope: !1604)
!1724 = !DILocation(line: 404, column: 12, scope: !1603)
!1725 = !DILocation(line: 405, column: 12, scope: !1603)
!1726 = !DILocation(line: 406, column: 12, scope: !1603)
!1727 = !DILocation(line: 409, column: 11, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1603, file: !114, line: 408, column: 11)
!1729 = !DILocation(line: 411, column: 17, scope: !1728)
!1730 = !DILocation(line: 412, column: 39, scope: !1728)
!1731 = !DILocation(line: 416, column: 32, scope: !1728)
!1732 = !DILocation(line: 412, column: 19, scope: !1728)
!1733 = !DILocation(line: 412, column: 15, scope: !1728)
!1734 = !DILocation(line: 417, column: 11, scope: !1728)
!1735 = !DILocation(line: 417, column: 26, scope: !1728)
!1736 = !DILocation(line: 417, column: 14, scope: !1728)
!1737 = !DILocation(line: 417, column: 63, scope: !1728)
!1738 = !DILocation(line: 408, column: 11, scope: !1603)
!1739 = !DILocation(line: 0, scope: !1603)
!1740 = !DILocation(line: 424, column: 11, scope: !1603)
!1741 = !DILocation(line: 402, column: 21, scope: !1603)
!1742 = !DILocation(line: 425, column: 7, scope: !1603)
!1743 = !DILocation(line: 428, column: 15, scope: !1612)
!1744 = !DILocation(line: 430, column: 15, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !114, line: 430, column: 15)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !114, line: 429, column: 13)
!1747 = distinct !DILexicalBlock(scope: !1612, file: !114, line: 428, column: 15)
!1748 = !DILocation(line: 430, column: 15, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1745, file: !114, line: 430, column: 15)
!1750 = !DILocation(line: 430, column: 15, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !114, line: 430, column: 15)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !114, line: 430, column: 15)
!1753 = distinct !DILexicalBlock(scope: !1749, file: !114, line: 430, column: 15)
!1754 = !DILocation(line: 430, column: 15, scope: !1752)
!1755 = !DILocation(line: 430, column: 15, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !114, line: 430, column: 15)
!1757 = distinct !DILexicalBlock(scope: !1753, file: !114, line: 430, column: 15)
!1758 = !DILocation(line: 430, column: 15, scope: !1757)
!1759 = !DILocation(line: 430, column: 15, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !114, line: 430, column: 15)
!1761 = distinct !DILexicalBlock(scope: !1753, file: !114, line: 430, column: 15)
!1762 = !DILocation(line: 430, column: 15, scope: !1761)
!1763 = !DILocation(line: 430, column: 15, scope: !1753)
!1764 = !DILocation(line: 430, column: 15, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !114, line: 430, column: 15)
!1766 = distinct !DILexicalBlock(scope: !1745, file: !114, line: 430, column: 15)
!1767 = !DILocation(line: 430, column: 15, scope: !1766)
!1768 = !DILocation(line: 438, column: 19, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1746, file: !114, line: 437, column: 19)
!1770 = !DILocation(line: 438, column: 24, scope: !1769)
!1771 = !DILocation(line: 438, column: 28, scope: !1769)
!1772 = !DILocation(line: 438, column: 38, scope: !1769)
!1773 = !DILocation(line: 438, column: 48, scope: !1769)
!1774 = !DILocation(line: 438, column: 59, scope: !1769)
!1775 = !DILocation(line: 440, column: 19, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !114, line: 440, column: 19)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !114, line: 440, column: 19)
!1778 = distinct !DILexicalBlock(scope: !1769, file: !114, line: 439, column: 17)
!1779 = !DILocation(line: 440, column: 19, scope: !1777)
!1780 = !DILocation(line: 441, column: 19, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !114, line: 441, column: 19)
!1782 = distinct !DILexicalBlock(scope: !1778, file: !114, line: 441, column: 19)
!1783 = !DILocation(line: 441, column: 19, scope: !1782)
!1784 = !DILocation(line: 442, column: 17, scope: !1778)
!1785 = !DILocation(line: 449, column: 20, scope: !1747)
!1786 = !DILocation(line: 454, column: 11, scope: !1612)
!1787 = !DILocation(line: 457, column: 19, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1612, file: !114, line: 455, column: 13)
!1789 = !DILocation(line: 463, column: 19, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1788, file: !114, line: 462, column: 19)
!1791 = !DILocation(line: 463, column: 24, scope: !1790)
!1792 = !DILocation(line: 463, column: 28, scope: !1790)
!1793 = !DILocation(line: 463, column: 38, scope: !1790)
!1794 = !DILocation(line: 463, column: 47, scope: !1790)
!1795 = !DILocation(line: 463, column: 41, scope: !1790)
!1796 = !DILocation(line: 463, column: 52, scope: !1790)
!1797 = !DILocation(line: 462, column: 19, scope: !1788)
!1798 = !DILocation(line: 464, column: 25, scope: !1790)
!1799 = !DILocation(line: 464, column: 17, scope: !1790)
!1800 = !DILocation(line: 471, column: 25, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1790, file: !114, line: 465, column: 19)
!1802 = !DILocation(line: 475, column: 21, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !114, line: 475, column: 21)
!1804 = distinct !DILexicalBlock(scope: !1801, file: !114, line: 475, column: 21)
!1805 = !DILocation(line: 475, column: 21, scope: !1804)
!1806 = !DILocation(line: 476, column: 21, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !114, line: 476, column: 21)
!1808 = distinct !DILexicalBlock(scope: !1801, file: !114, line: 476, column: 21)
!1809 = !DILocation(line: 476, column: 21, scope: !1808)
!1810 = !DILocation(line: 477, column: 21, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !114, line: 477, column: 21)
!1812 = distinct !DILexicalBlock(scope: !1801, file: !114, line: 477, column: 21)
!1813 = !DILocation(line: 477, column: 21, scope: !1812)
!1814 = !DILocation(line: 478, column: 21, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !114, line: 478, column: 21)
!1816 = distinct !DILexicalBlock(scope: !1801, file: !114, line: 478, column: 21)
!1817 = !DILocation(line: 478, column: 21, scope: !1816)
!1818 = !DILocation(line: 479, column: 21, scope: !1801)
!1819 = !DILocation(line: 403, column: 21, scope: !1603)
!1820 = !DILocation(line: 492, column: 31, scope: !1612)
!1821 = !DILocation(line: 493, column: 31, scope: !1612)
!1822 = !DILocation(line: 495, column: 31, scope: !1612)
!1823 = !DILocation(line: 496, column: 31, scope: !1612)
!1824 = !DILocation(line: 497, column: 31, scope: !1612)
!1825 = !DILocation(line: 500, column: 15, scope: !1612)
!1826 = !DILocation(line: 502, column: 19, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !114, line: 501, column: 13)
!1828 = distinct !DILexicalBlock(scope: !1612, file: !114, line: 500, column: 15)
!1829 = !DILocation(line: 509, column: 33, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1612, file: !114, line: 509, column: 15)
!1831 = !DILocation(line: 0, scope: !1612)
!1832 = !DILocation(line: 514, column: 15, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1612, file: !114, line: 513, column: 15)
!1834 = !DILocation(line: 518, column: 15, scope: !1612)
!1835 = !DILocation(line: 526, column: 26, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1612, file: !114, line: 526, column: 15)
!1837 = !DILocation(line: 526, column: 15, scope: !1612)
!1838 = !DILocation(line: 526, column: 40, scope: !1836)
!1839 = !DILocation(line: 526, column: 47, scope: !1836)
!1840 = !DILocation(line: 530, column: 17, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1612, file: !114, line: 530, column: 15)
!1842 = !DILocation(line: 526, column: 18, scope: !1836)
!1843 = !DILocation(line: 526, column: 65, scope: !1836)
!1844 = !DILocation(line: 530, column: 15, scope: !1612)
!1845 = !DILocation(line: 535, column: 11, scope: !1612)
!1846 = !DILocation(line: 549, column: 15, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1612, file: !114, line: 548, column: 15)
!1848 = !DILocation(line: 556, column: 15, scope: !1612)
!1849 = !DILocation(line: 558, column: 19, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !114, line: 557, column: 13)
!1851 = distinct !DILexicalBlock(scope: !1612, file: !114, line: 556, column: 15)
!1852 = !DILocation(line: 561, column: 19, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1850, file: !114, line: 561, column: 19)
!1854 = !DILocation(line: 561, column: 35, scope: !1853)
!1855 = !DILocation(line: 561, column: 30, scope: !1853)
!1856 = !DILocation(line: 570, column: 15, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !114, line: 570, column: 15)
!1858 = distinct !DILexicalBlock(scope: !1850, file: !114, line: 570, column: 15)
!1859 = !DILocation(line: 570, column: 15, scope: !1858)
!1860 = !DILocation(line: 571, column: 15, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !114, line: 571, column: 15)
!1862 = distinct !DILexicalBlock(scope: !1850, file: !114, line: 571, column: 15)
!1863 = !DILocation(line: 571, column: 15, scope: !1862)
!1864 = !DILocation(line: 572, column: 15, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !114, line: 572, column: 15)
!1866 = distinct !DILexicalBlock(scope: !1850, file: !114, line: 572, column: 15)
!1867 = !DILocation(line: 572, column: 15, scope: !1866)
!1868 = !DILocation(line: 574, column: 13, scope: !1850)
!1869 = !DILocation(line: 614, column: 17, scope: !1611)
!1870 = !DILocation(line: 610, column: 20, scope: !1611)
!1871 = !DILocation(line: 617, column: 29, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1616, file: !114, line: 615, column: 15)
!1873 = !{!1874, !1874, i64 0}
!1874 = !{!"short", !650, i64 0}
!1875 = !DILocation(line: 617, column: 27, scope: !1872)
!1876 = !DILocation(line: 612, column: 18, scope: !1611)
!1877 = !DILocation(line: 618, column: 15, scope: !1872)
!1878 = !DILocation(line: 621, column: 17, scope: !1615)
!1879 = !DILocation(line: 622, column: 17, scope: !1615)
!1880 = !DILocation(line: 626, column: 29, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1615, file: !114, line: 626, column: 21)
!1882 = !DILocation(line: 626, column: 21, scope: !1615)
!1883 = !DILocation(line: 627, column: 29, scope: !1881)
!1884 = !DILocation(line: 627, column: 19, scope: !1881)
!1885 = !DILocation(line: 0, scope: !1728)
!1886 = !DILocation(line: 629, column: 17, scope: !1615)
!1887 = !DILocation(line: 624, column: 19, scope: !1615)
!1888 = !DILocation(line: 625, column: 27, scope: !1615)
!1889 = !DILocation(line: 631, column: 21, scope: !1633)
!1890 = !DILocation(line: 632, column: 56, scope: !1633)
!1891 = !DILocation(line: 632, column: 50, scope: !1633)
!1892 = !DILocation(line: 633, column: 53, scope: !1633)
!1893 = !DILocation(line: 621, column: 27, scope: !1615)
!1894 = !DILocation(line: 631, column: 29, scope: !1633)
!1895 = !DILocation(line: 632, column: 36, scope: !1633)
!1896 = !DILocation(line: 632, column: 28, scope: !1633)
!1897 = !DILocation(line: 634, column: 25, scope: !1633)
!1898 = !DILocation(line: 644, column: 38, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1640, file: !114, line: 642, column: 23)
!1900 = !DILocation(line: 644, column: 48, scope: !1899)
!1901 = !DILocation(line: 644, column: 51, scope: !1899)
!1902 = !DILocation(line: 644, column: 25, scope: !1899)
!1903 = !DILocation(line: 645, column: 28, scope: !1899)
!1904 = !DILocation(line: 644, column: 34, scope: !1899)
!1905 = distinct !{!1905, !1902, !1903}
!1906 = !DILocation(line: 658, column: 43, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !114, line: 658, column: 29)
!1908 = distinct !DILexicalBlock(scope: !1637, file: !114, line: 658, column: 29)
!1909 = !DILocation(line: 655, column: 29, scope: !1638)
!1910 = !DILocation(line: 657, column: 36, scope: !1637)
!1911 = !DILocation(line: 659, column: 49, scope: !1907)
!1912 = !DILocation(line: 659, column: 39, scope: !1907)
!1913 = !DILocation(line: 659, column: 31, scope: !1907)
!1914 = !DILocation(line: 658, column: 53, scope: !1907)
!1915 = !DILocation(line: 658, column: 29, scope: !1908)
!1916 = distinct !{!1916, !1915, !1917}
!1917 = !DILocation(line: 667, column: 33, scope: !1908)
!1918 = !DILocation(line: 674, column: 19, scope: !1615)
!1919 = !DILocation(line: 670, column: 41, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1639, file: !114, line: 670, column: 29)
!1921 = !DILocation(line: 670, column: 31, scope: !1920)
!1922 = !DILocation(line: 670, column: 29, scope: !1639)
!1923 = !DILocation(line: 672, column: 27, scope: !1639)
!1924 = !DILocation(line: 675, column: 26, scope: !1615)
!1925 = !DILocation(line: 675, column: 24, scope: !1615)
!1926 = !DILocation(line: 674, column: 19, scope: !1633)
!1927 = distinct !{!1927, !1886, !1928}
!1928 = !DILocation(line: 675, column: 44, scope: !1615)
!1929 = !DILocation(line: 676, column: 15, scope: !1616)
!1930 = !DILocation(line: 0, scope: !1881)
!1931 = !DILocation(line: 0, scope: !1615)
!1932 = !DILocation(line: 678, column: 40, scope: !1611)
!1933 = !DILocation(line: 680, column: 19, scope: !1645)
!1934 = !DILocation(line: 680, column: 45, scope: !1645)
!1935 = !DILocation(line: 680, column: 23, scope: !1645)
!1936 = !DILocation(line: 684, column: 33, scope: !1644)
!1937 = !DILocation(line: 684, column: 24, scope: !1644)
!1938 = !DILocation(line: 686, column: 17, scope: !1644)
!1939 = !DILocation(line: 0, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !114, line: 687, column: 19)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !114, line: 686, column: 17)
!1942 = distinct !DILexicalBlock(scope: !1644, file: !114, line: 686, column: 17)
!1943 = !DILocation(line: 0, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1940, file: !114, line: 703, column: 21)
!1945 = !DILocation(line: 0, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !114, line: 696, column: 23)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !114, line: 695, column: 30)
!1948 = distinct !DILexicalBlock(scope: !1940, file: !114, line: 688, column: 25)
!1949 = !DILocation(line: 688, column: 43, scope: !1948)
!1950 = !DILocation(line: 690, column: 25, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !114, line: 690, column: 25)
!1952 = distinct !DILexicalBlock(scope: !1948, file: !114, line: 689, column: 23)
!1953 = !DILocation(line: 690, column: 25, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1951, file: !114, line: 690, column: 25)
!1955 = !DILocation(line: 690, column: 25, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !114, line: 690, column: 25)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !114, line: 690, column: 25)
!1958 = distinct !DILexicalBlock(scope: !1954, file: !114, line: 690, column: 25)
!1959 = !DILocation(line: 690, column: 25, scope: !1957)
!1960 = !DILocation(line: 690, column: 25, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !114, line: 690, column: 25)
!1962 = distinct !DILexicalBlock(scope: !1958, file: !114, line: 690, column: 25)
!1963 = !DILocation(line: 690, column: 25, scope: !1962)
!1964 = !DILocation(line: 690, column: 25, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !114, line: 690, column: 25)
!1966 = distinct !DILexicalBlock(scope: !1958, file: !114, line: 690, column: 25)
!1967 = !DILocation(line: 690, column: 25, scope: !1966)
!1968 = !DILocation(line: 690, column: 25, scope: !1958)
!1969 = !DILocation(line: 690, column: 25, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !114, line: 690, column: 25)
!1971 = distinct !DILexicalBlock(scope: !1951, file: !114, line: 690, column: 25)
!1972 = !DILocation(line: 690, column: 25, scope: !1971)
!1973 = !DILocation(line: 691, column: 25, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !114, line: 691, column: 25)
!1975 = distinct !DILexicalBlock(scope: !1952, file: !114, line: 691, column: 25)
!1976 = !DILocation(line: 691, column: 25, scope: !1975)
!1977 = !DILocation(line: 692, column: 25, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !114, line: 692, column: 25)
!1979 = distinct !DILexicalBlock(scope: !1952, file: !114, line: 692, column: 25)
!1980 = !DILocation(line: 692, column: 25, scope: !1979)
!1981 = !DILocation(line: 693, column: 38, scope: !1952)
!1982 = !DILocation(line: 693, column: 33, scope: !1952)
!1983 = !DILocation(line: 694, column: 23, scope: !1952)
!1984 = !DILocation(line: 695, column: 30, scope: !1947)
!1985 = !DILocation(line: 695, column: 30, scope: !1948)
!1986 = !DILocation(line: 697, column: 25, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !114, line: 697, column: 25)
!1988 = distinct !DILexicalBlock(scope: !1946, file: !114, line: 697, column: 25)
!1989 = !DILocation(line: 697, column: 25, scope: !1988)
!1990 = !DILocation(line: 699, column: 23, scope: !1946)
!1991 = !DILocation(line: 0, scope: !1979)
!1992 = !DILocation(line: 0, scope: !1952)
!1993 = !DILocation(line: 0, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1728, file: !114, line: 418, column: 9)
!1995 = !DILocation(line: 0, scope: !1951)
!1996 = !DILocation(line: 700, column: 35, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1940, file: !114, line: 700, column: 25)
!1998 = !DILocation(line: 700, column: 30, scope: !1997)
!1999 = !DILocation(line: 700, column: 25, scope: !1940)
!2000 = !DILocation(line: 702, column: 21, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !114, line: 702, column: 21)
!2002 = distinct !DILexicalBlock(scope: !1940, file: !114, line: 702, column: 21)
!2003 = !DILocation(line: 702, column: 21, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !114, line: 702, column: 21)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !114, line: 702, column: 21)
!2006 = distinct !DILexicalBlock(scope: !2001, file: !114, line: 702, column: 21)
!2007 = !DILocation(line: 702, column: 21, scope: !2005)
!2008 = !DILocation(line: 702, column: 21, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !114, line: 702, column: 21)
!2010 = distinct !DILexicalBlock(scope: !2006, file: !114, line: 702, column: 21)
!2011 = !DILocation(line: 702, column: 21, scope: !2010)
!2012 = !DILocation(line: 702, column: 21, scope: !2006)
!2013 = !DILocation(line: 0, scope: !1988)
!2014 = !DILocation(line: 703, column: 21, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1944, file: !114, line: 703, column: 21)
!2016 = !DILocation(line: 703, column: 21, scope: !1944)
!2017 = !DILocation(line: 704, column: 25, scope: !1940)
!2018 = !DILocation(line: 686, column: 17, scope: !1941)
!2019 = distinct !{!2019, !2020, !2021}
!2020 = !DILocation(line: 686, column: 17, scope: !1942)
!2021 = !DILocation(line: 705, column: 19, scope: !1942)
!2022 = !DILocation(line: 0, scope: !1605)
!2023 = !DILocation(line: 416, column: 30, scope: !1728)
!2024 = !DILocation(line: 712, column: 34, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !1603, file: !114, line: 712, column: 11)
!2026 = !DILocation(line: 714, column: 14, scope: !2025)
!2027 = !DILocation(line: 715, column: 14, scope: !2025)
!2028 = !DILocation(line: 715, column: 35, scope: !2025)
!2029 = !DILocation(line: 715, column: 17, scope: !2025)
!2030 = !DILocation(line: 715, column: 47, scope: !2025)
!2031 = !DILocation(line: 715, column: 65, scope: !2025)
!2032 = !DILocation(line: 716, column: 15, scope: !2025)
!2033 = !DILocation(line: 716, column: 11, scope: !2025)
!2034 = !DILocation(line: 712, column: 11, scope: !1603)
!2035 = !DILocation(line: 400, column: 10, scope: !1605)
!2036 = !DILocation(line: 0, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !114, line: 519, column: 13)
!2038 = distinct !DILexicalBlock(scope: !1612, file: !114, line: 518, column: 15)
!2039 = !DILocation(line: 720, column: 7, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !1603, file: !114, line: 720, column: 7)
!2041 = !DILocation(line: 720, column: 7, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2040, file: !114, line: 720, column: 7)
!2043 = !DILocation(line: 720, column: 7, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !114, line: 720, column: 7)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !114, line: 720, column: 7)
!2046 = distinct !DILexicalBlock(scope: !2042, file: !114, line: 720, column: 7)
!2047 = !DILocation(line: 720, column: 7, scope: !2045)
!2048 = !DILocation(line: 720, column: 7, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !114, line: 720, column: 7)
!2050 = distinct !DILexicalBlock(scope: !2046, file: !114, line: 720, column: 7)
!2051 = !DILocation(line: 720, column: 7, scope: !2050)
!2052 = !DILocation(line: 720, column: 7, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !114, line: 720, column: 7)
!2054 = distinct !DILexicalBlock(scope: !2046, file: !114, line: 720, column: 7)
!2055 = !DILocation(line: 720, column: 7, scope: !2054)
!2056 = !DILocation(line: 720, column: 7, scope: !2046)
!2057 = !DILocation(line: 720, column: 7, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !114, line: 720, column: 7)
!2059 = distinct !DILexicalBlock(scope: !2040, file: !114, line: 720, column: 7)
!2060 = !DILocation(line: 720, column: 7, scope: !2059)
!2061 = !DILocation(line: 723, column: 7, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !114, line: 723, column: 7)
!2063 = distinct !DILexicalBlock(scope: !1603, file: !114, line: 723, column: 7)
!2064 = !DILocation(line: 424, column: 9, scope: !1603)
!2065 = !DILocation(line: 723, column: 7, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !114, line: 723, column: 7)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !114, line: 723, column: 7)
!2068 = distinct !DILexicalBlock(scope: !2062, file: !114, line: 723, column: 7)
!2069 = !DILocation(line: 723, column: 7, scope: !2067)
!2070 = !DILocation(line: 723, column: 7, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !114, line: 723, column: 7)
!2072 = distinct !DILexicalBlock(scope: !2068, file: !114, line: 723, column: 7)
!2073 = !DILocation(line: 723, column: 7, scope: !2072)
!2074 = !DILocation(line: 723, column: 7, scope: !2068)
!2075 = !DILocation(line: 724, column: 7, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !114, line: 724, column: 7)
!2077 = distinct !DILexicalBlock(scope: !1603, file: !114, line: 724, column: 7)
!2078 = !DILocation(line: 724, column: 7, scope: !2077)
!2079 = !DILocation(line: 726, column: 13, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !1603, file: !114, line: 726, column: 11)
!2081 = !DILocation(line: 726, column: 11, scope: !1603)
!2082 = !DILocation(line: 728, column: 5, scope: !1604)
!2083 = !DILocation(line: 400, column: 75, scope: !1604)
!2084 = !DILocation(line: 400, column: 3, scope: !1604)
!2085 = distinct !{!2085, !1722, !2086}
!2086 = !DILocation(line: 728, column: 5, scope: !1605)
!2087 = !DILocation(line: 730, column: 11, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !1576, file: !114, line: 730, column: 7)
!2089 = !DILocation(line: 730, column: 16, scope: !2088)
!2090 = !DILocation(line: 738, column: 51, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !1576, file: !114, line: 738, column: 7)
!2092 = !DILocation(line: 739, column: 10, scope: !2091)
!2093 = !DILocation(line: 741, column: 11, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !114, line: 741, column: 11)
!2095 = distinct !DILexicalBlock(scope: !2091, file: !114, line: 740, column: 5)
!2096 = !DILocation(line: 741, column: 11, scope: !2095)
!2097 = !DILocation(line: 742, column: 16, scope: !2094)
!2098 = !DILocation(line: 742, column: 9, scope: !2094)
!2099 = !DILocation(line: 746, column: 18, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2094, file: !114, line: 746, column: 16)
!2101 = !DILocation(line: 746, column: 32, scope: !2100)
!2102 = !DILocation(line: 746, column: 29, scope: !2100)
!2103 = !DILocation(line: 755, column: 7, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !1576, file: !114, line: 755, column: 7)
!2105 = !DILocation(line: 755, column: 20, scope: !2104)
!2106 = !DILocation(line: 756, column: 12, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !114, line: 756, column: 5)
!2108 = distinct !DILexicalBlock(scope: !2104, file: !114, line: 756, column: 5)
!2109 = !DILocation(line: 756, column: 5, scope: !2108)
!2110 = !DILocation(line: 757, column: 7, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !114, line: 757, column: 7)
!2112 = distinct !DILexicalBlock(scope: !2107, file: !114, line: 757, column: 7)
!2113 = !DILocation(line: 757, column: 7, scope: !2112)
!2114 = !DILocation(line: 756, column: 39, scope: !2107)
!2115 = distinct !{!2115, !2109, !2116}
!2116 = !DILocation(line: 757, column: 7, scope: !2108)
!2117 = !DILocation(line: 759, column: 11, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !1576, file: !114, line: 759, column: 7)
!2119 = !DILocation(line: 759, column: 7, scope: !1576)
!2120 = !DILocation(line: 760, column: 5, scope: !2118)
!2121 = !DILocation(line: 760, column: 17, scope: !2118)
!2122 = !DILocation(line: 766, column: 21, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !1576, file: !114, line: 766, column: 7)
!2124 = !DILocation(line: 766, column: 54, scope: !2123)
!2125 = !DILocation(line: 766, column: 51, scope: !2123)
!2126 = !DILocation(line: 770, column: 42, scope: !1576)
!2127 = !DILocation(line: 768, column: 10, scope: !1576)
!2128 = !DILocation(line: 768, column: 3, scope: !1576)
!2129 = !DILocation(line: 772, column: 1, scope: !1576)
!2130 = distinct !DISubprogram(name: "gettext_quote", scope: !114, file: !114, line: 207, type: !2131, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !2133)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!44, !44, !14}
!2133 = !{!2134, !2135, !2136, !2137}
!2134 = !DILocalVariable(name: "msgid", arg: 1, scope: !2130, file: !114, line: 207, type: !44)
!2135 = !DILocalVariable(name: "s", arg: 2, scope: !2130, file: !114, line: 207, type: !14)
!2136 = !DILocalVariable(name: "translation", scope: !2130, file: !114, line: 209, type: !44)
!2137 = !DILocalVariable(name: "locale_code", scope: !2130, file: !114, line: 210, type: !44)
!2138 = !DILocation(line: 207, column: 28, scope: !2130)
!2139 = !DILocation(line: 207, column: 54, scope: !2130)
!2140 = !DILocation(line: 209, column: 29, scope: !2130)
!2141 = !DILocation(line: 209, column: 15, scope: !2130)
!2142 = !DILocation(line: 212, column: 19, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2130, file: !114, line: 212, column: 7)
!2144 = !DILocation(line: 212, column: 7, scope: !2130)
!2145 = !DILocation(line: 233, column: 17, scope: !2130)
!2146 = !DILocation(line: 210, column: 15, scope: !2130)
!2147 = !DILocalVariable(name: "s1", arg: 1, scope: !2148, file: !2149, line: 160, type: !44)
!2148 = distinct !DISubprogram(name: "strcaseeq0", scope: !2149, file: !2149, line: 160, type: !2150, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !2152)
!2149 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!47, !44, !44, !30, !30, !30, !30, !30, !30, !30, !30, !30}
!2152 = !{!2147, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162}
!2153 = !DILocalVariable(name: "s2", arg: 2, scope: !2148, file: !2149, line: 160, type: !44)
!2154 = !DILocalVariable(name: "s20", arg: 3, scope: !2148, file: !2149, line: 160, type: !30)
!2155 = !DILocalVariable(name: "s21", arg: 4, scope: !2148, file: !2149, line: 160, type: !30)
!2156 = !DILocalVariable(name: "s22", arg: 5, scope: !2148, file: !2149, line: 160, type: !30)
!2157 = !DILocalVariable(name: "s23", arg: 6, scope: !2148, file: !2149, line: 160, type: !30)
!2158 = !DILocalVariable(name: "s24", arg: 7, scope: !2148, file: !2149, line: 160, type: !30)
!2159 = !DILocalVariable(name: "s25", arg: 8, scope: !2148, file: !2149, line: 160, type: !30)
!2160 = !DILocalVariable(name: "s26", arg: 9, scope: !2148, file: !2149, line: 160, type: !30)
!2161 = !DILocalVariable(name: "s27", arg: 10, scope: !2148, file: !2149, line: 160, type: !30)
!2162 = !DILocalVariable(name: "s28", arg: 11, scope: !2148, file: !2149, line: 160, type: !30)
!2163 = !DILocation(line: 160, column: 25, scope: !2148, inlinedAt: !2164)
!2164 = distinct !DILocation(line: 234, column: 7, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2130, file: !114, line: 234, column: 7)
!2166 = !DILocation(line: 160, column: 41, scope: !2148, inlinedAt: !2164)
!2167 = !DILocation(line: 160, column: 50, scope: !2148, inlinedAt: !2164)
!2168 = !DILocation(line: 160, column: 60, scope: !2148, inlinedAt: !2164)
!2169 = !DILocation(line: 160, column: 70, scope: !2148, inlinedAt: !2164)
!2170 = !DILocation(line: 160, column: 80, scope: !2148, inlinedAt: !2164)
!2171 = !DILocation(line: 160, column: 90, scope: !2148, inlinedAt: !2164)
!2172 = !DILocation(line: 160, column: 100, scope: !2148, inlinedAt: !2164)
!2173 = !DILocation(line: 160, column: 110, scope: !2148, inlinedAt: !2164)
!2174 = !DILocation(line: 160, column: 120, scope: !2148, inlinedAt: !2164)
!2175 = !DILocation(line: 160, column: 130, scope: !2148, inlinedAt: !2164)
!2176 = !DILocation(line: 162, column: 7, scope: !2177, inlinedAt: !2164)
!2177 = distinct !DILexicalBlock(scope: !2148, file: !2149, line: 162, column: 7)
!2178 = !DILocalVariable(name: "s1", arg: 1, scope: !2179, file: !2149, line: 146, type: !44)
!2179 = distinct !DISubprogram(name: "strcaseeq1", scope: !2149, file: !2149, line: 146, type: !2180, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !2182)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!47, !44, !44, !30, !30, !30, !30, !30, !30, !30, !30}
!2182 = !{!2178, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191}
!2183 = !DILocalVariable(name: "s2", arg: 2, scope: !2179, file: !2149, line: 146, type: !44)
!2184 = !DILocalVariable(name: "s21", arg: 3, scope: !2179, file: !2149, line: 146, type: !30)
!2185 = !DILocalVariable(name: "s22", arg: 4, scope: !2179, file: !2149, line: 146, type: !30)
!2186 = !DILocalVariable(name: "s23", arg: 5, scope: !2179, file: !2149, line: 146, type: !30)
!2187 = !DILocalVariable(name: "s24", arg: 6, scope: !2179, file: !2149, line: 146, type: !30)
!2188 = !DILocalVariable(name: "s25", arg: 7, scope: !2179, file: !2149, line: 146, type: !30)
!2189 = !DILocalVariable(name: "s26", arg: 8, scope: !2179, file: !2149, line: 146, type: !30)
!2190 = !DILocalVariable(name: "s27", arg: 9, scope: !2179, file: !2149, line: 146, type: !30)
!2191 = !DILocalVariable(name: "s28", arg: 10, scope: !2179, file: !2149, line: 146, type: !30)
!2192 = !DILocation(line: 146, column: 25, scope: !2179, inlinedAt: !2193)
!2193 = distinct !DILocation(line: 167, column: 16, scope: !2194, inlinedAt: !2164)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !2149, line: 164, column: 11)
!2195 = distinct !DILexicalBlock(scope: !2177, file: !2149, line: 163, column: 5)
!2196 = !DILocation(line: 146, column: 41, scope: !2179, inlinedAt: !2193)
!2197 = !DILocation(line: 146, column: 50, scope: !2179, inlinedAt: !2193)
!2198 = !DILocation(line: 146, column: 60, scope: !2179, inlinedAt: !2193)
!2199 = !DILocation(line: 146, column: 70, scope: !2179, inlinedAt: !2193)
!2200 = !DILocation(line: 146, column: 80, scope: !2179, inlinedAt: !2193)
!2201 = !DILocation(line: 146, column: 90, scope: !2179, inlinedAt: !2193)
!2202 = !DILocation(line: 146, column: 100, scope: !2179, inlinedAt: !2193)
!2203 = !DILocation(line: 146, column: 110, scope: !2179, inlinedAt: !2193)
!2204 = !DILocation(line: 146, column: 120, scope: !2179, inlinedAt: !2193)
!2205 = !DILocation(line: 148, column: 7, scope: !2206, inlinedAt: !2193)
!2206 = distinct !DILexicalBlock(scope: !2179, file: !2149, line: 148, column: 7)
!2207 = !DILocalVariable(name: "s1", arg: 1, scope: !2208, file: !2149, line: 132, type: !44)
!2208 = distinct !DISubprogram(name: "strcaseeq2", scope: !2149, file: !2149, line: 132, type: !2209, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !2211)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!47, !44, !44, !30, !30, !30, !30, !30, !30, !30}
!2211 = !{!2207, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219}
!2212 = !DILocalVariable(name: "s2", arg: 2, scope: !2208, file: !2149, line: 132, type: !44)
!2213 = !DILocalVariable(name: "s22", arg: 3, scope: !2208, file: !2149, line: 132, type: !30)
!2214 = !DILocalVariable(name: "s23", arg: 4, scope: !2208, file: !2149, line: 132, type: !30)
!2215 = !DILocalVariable(name: "s24", arg: 5, scope: !2208, file: !2149, line: 132, type: !30)
!2216 = !DILocalVariable(name: "s25", arg: 6, scope: !2208, file: !2149, line: 132, type: !30)
!2217 = !DILocalVariable(name: "s26", arg: 7, scope: !2208, file: !2149, line: 132, type: !30)
!2218 = !DILocalVariable(name: "s27", arg: 8, scope: !2208, file: !2149, line: 132, type: !30)
!2219 = !DILocalVariable(name: "s28", arg: 9, scope: !2208, file: !2149, line: 132, type: !30)
!2220 = !DILocation(line: 132, column: 25, scope: !2208, inlinedAt: !2221)
!2221 = distinct !DILocation(line: 153, column: 16, scope: !2222, inlinedAt: !2193)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !2149, line: 150, column: 11)
!2223 = distinct !DILexicalBlock(scope: !2206, file: !2149, line: 149, column: 5)
!2224 = !DILocation(line: 132, column: 41, scope: !2208, inlinedAt: !2221)
!2225 = !DILocation(line: 132, column: 50, scope: !2208, inlinedAt: !2221)
!2226 = !DILocation(line: 132, column: 60, scope: !2208, inlinedAt: !2221)
!2227 = !DILocation(line: 132, column: 70, scope: !2208, inlinedAt: !2221)
!2228 = !DILocation(line: 132, column: 80, scope: !2208, inlinedAt: !2221)
!2229 = !DILocation(line: 132, column: 90, scope: !2208, inlinedAt: !2221)
!2230 = !DILocation(line: 132, column: 100, scope: !2208, inlinedAt: !2221)
!2231 = !DILocation(line: 132, column: 110, scope: !2208, inlinedAt: !2221)
!2232 = !DILocation(line: 134, column: 7, scope: !2233, inlinedAt: !2221)
!2233 = distinct !DILexicalBlock(scope: !2208, file: !2149, line: 134, column: 7)
!2234 = !DILocalVariable(name: "s1", arg: 1, scope: !2235, file: !2149, line: 118, type: !44)
!2235 = distinct !DISubprogram(name: "strcaseeq3", scope: !2149, file: !2149, line: 118, type: !2236, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !2238)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!47, !44, !44, !30, !30, !30, !30, !30, !30}
!2238 = !{!2234, !2239, !2240, !2241, !2242, !2243, !2244, !2245}
!2239 = !DILocalVariable(name: "s2", arg: 2, scope: !2235, file: !2149, line: 118, type: !44)
!2240 = !DILocalVariable(name: "s23", arg: 3, scope: !2235, file: !2149, line: 118, type: !30)
!2241 = !DILocalVariable(name: "s24", arg: 4, scope: !2235, file: !2149, line: 118, type: !30)
!2242 = !DILocalVariable(name: "s25", arg: 5, scope: !2235, file: !2149, line: 118, type: !30)
!2243 = !DILocalVariable(name: "s26", arg: 6, scope: !2235, file: !2149, line: 118, type: !30)
!2244 = !DILocalVariable(name: "s27", arg: 7, scope: !2235, file: !2149, line: 118, type: !30)
!2245 = !DILocalVariable(name: "s28", arg: 8, scope: !2235, file: !2149, line: 118, type: !30)
!2246 = !DILocation(line: 118, column: 25, scope: !2235, inlinedAt: !2247)
!2247 = distinct !DILocation(line: 139, column: 16, scope: !2248, inlinedAt: !2221)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !2149, line: 136, column: 11)
!2249 = distinct !DILexicalBlock(scope: !2233, file: !2149, line: 135, column: 5)
!2250 = !DILocation(line: 118, column: 41, scope: !2235, inlinedAt: !2247)
!2251 = !DILocation(line: 118, column: 50, scope: !2235, inlinedAt: !2247)
!2252 = !DILocation(line: 118, column: 60, scope: !2235, inlinedAt: !2247)
!2253 = !DILocation(line: 118, column: 70, scope: !2235, inlinedAt: !2247)
!2254 = !DILocation(line: 118, column: 80, scope: !2235, inlinedAt: !2247)
!2255 = !DILocation(line: 118, column: 90, scope: !2235, inlinedAt: !2247)
!2256 = !DILocation(line: 118, column: 100, scope: !2235, inlinedAt: !2247)
!2257 = !DILocation(line: 120, column: 7, scope: !2258, inlinedAt: !2247)
!2258 = distinct !DILexicalBlock(scope: !2235, file: !2149, line: 120, column: 7)
!2259 = !DILocation(line: 120, column: 7, scope: !2235, inlinedAt: !2247)
!2260 = !DILocalVariable(name: "s1", arg: 1, scope: !2261, file: !2149, line: 104, type: !44)
!2261 = distinct !DISubprogram(name: "strcaseeq4", scope: !2149, file: !2149, line: 104, type: !2262, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !2264)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!47, !44, !44, !30, !30, !30, !30, !30}
!2264 = !{!2260, !2265, !2266, !2267, !2268, !2269, !2270}
!2265 = !DILocalVariable(name: "s2", arg: 2, scope: !2261, file: !2149, line: 104, type: !44)
!2266 = !DILocalVariable(name: "s24", arg: 3, scope: !2261, file: !2149, line: 104, type: !30)
!2267 = !DILocalVariable(name: "s25", arg: 4, scope: !2261, file: !2149, line: 104, type: !30)
!2268 = !DILocalVariable(name: "s26", arg: 5, scope: !2261, file: !2149, line: 104, type: !30)
!2269 = !DILocalVariable(name: "s27", arg: 6, scope: !2261, file: !2149, line: 104, type: !30)
!2270 = !DILocalVariable(name: "s28", arg: 7, scope: !2261, file: !2149, line: 104, type: !30)
!2271 = !DILocation(line: 104, column: 25, scope: !2261, inlinedAt: !2272)
!2272 = distinct !DILocation(line: 125, column: 16, scope: !2273, inlinedAt: !2247)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !2149, line: 122, column: 11)
!2274 = distinct !DILexicalBlock(scope: !2258, file: !2149, line: 121, column: 5)
!2275 = !DILocation(line: 104, column: 41, scope: !2261, inlinedAt: !2272)
!2276 = !DILocation(line: 104, column: 50, scope: !2261, inlinedAt: !2272)
!2277 = !DILocation(line: 104, column: 60, scope: !2261, inlinedAt: !2272)
!2278 = !DILocation(line: 104, column: 70, scope: !2261, inlinedAt: !2272)
!2279 = !DILocation(line: 104, column: 80, scope: !2261, inlinedAt: !2272)
!2280 = !DILocation(line: 104, column: 90, scope: !2261, inlinedAt: !2272)
!2281 = !DILocation(line: 106, column: 7, scope: !2282, inlinedAt: !2272)
!2282 = distinct !DILexicalBlock(scope: !2261, file: !2149, line: 106, column: 7)
!2283 = !DILocation(line: 106, column: 7, scope: !2261, inlinedAt: !2272)
!2284 = !DILocalVariable(name: "s1", arg: 1, scope: !2285, file: !2149, line: 90, type: !44)
!2285 = distinct !DISubprogram(name: "strcaseeq5", scope: !2149, file: !2149, line: 90, type: !2286, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !2288)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!47, !44, !44, !30, !30, !30, !30}
!2288 = !{!2284, !2289, !2290, !2291, !2292, !2293}
!2289 = !DILocalVariable(name: "s2", arg: 2, scope: !2285, file: !2149, line: 90, type: !44)
!2290 = !DILocalVariable(name: "s25", arg: 3, scope: !2285, file: !2149, line: 90, type: !30)
!2291 = !DILocalVariable(name: "s26", arg: 4, scope: !2285, file: !2149, line: 90, type: !30)
!2292 = !DILocalVariable(name: "s27", arg: 5, scope: !2285, file: !2149, line: 90, type: !30)
!2293 = !DILocalVariable(name: "s28", arg: 6, scope: !2285, file: !2149, line: 90, type: !30)
!2294 = !DILocation(line: 90, column: 25, scope: !2285, inlinedAt: !2295)
!2295 = distinct !DILocation(line: 111, column: 16, scope: !2296, inlinedAt: !2272)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !2149, line: 108, column: 11)
!2297 = distinct !DILexicalBlock(scope: !2282, file: !2149, line: 107, column: 5)
!2298 = !DILocation(line: 90, column: 41, scope: !2285, inlinedAt: !2295)
!2299 = !DILocation(line: 90, column: 50, scope: !2285, inlinedAt: !2295)
!2300 = !DILocation(line: 90, column: 60, scope: !2285, inlinedAt: !2295)
!2301 = !DILocation(line: 90, column: 70, scope: !2285, inlinedAt: !2295)
!2302 = !DILocation(line: 90, column: 80, scope: !2285, inlinedAt: !2295)
!2303 = !DILocation(line: 92, column: 7, scope: !2304, inlinedAt: !2295)
!2304 = distinct !DILexicalBlock(scope: !2285, file: !2149, line: 92, column: 7)
!2305 = !DILocation(line: 92, column: 7, scope: !2285, inlinedAt: !2295)
!2306 = !DILocation(line: 235, column: 12, scope: !2165)
!2307 = !DILocation(line: 235, column: 21, scope: !2165)
!2308 = !DILocation(line: 235, column: 5, scope: !2165)
!2309 = !DILocation(line: 146, column: 25, scope: !2179, inlinedAt: !2310)
!2310 = distinct !DILocation(line: 167, column: 16, scope: !2194, inlinedAt: !2311)
!2311 = distinct !DILocation(line: 236, column: 7, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2130, file: !114, line: 236, column: 7)
!2313 = !DILocation(line: 146, column: 41, scope: !2179, inlinedAt: !2310)
!2314 = !DILocation(line: 146, column: 50, scope: !2179, inlinedAt: !2310)
!2315 = !DILocation(line: 146, column: 60, scope: !2179, inlinedAt: !2310)
!2316 = !DILocation(line: 146, column: 70, scope: !2179, inlinedAt: !2310)
!2317 = !DILocation(line: 146, column: 80, scope: !2179, inlinedAt: !2310)
!2318 = !DILocation(line: 146, column: 90, scope: !2179, inlinedAt: !2310)
!2319 = !DILocation(line: 146, column: 100, scope: !2179, inlinedAt: !2310)
!2320 = !DILocation(line: 146, column: 110, scope: !2179, inlinedAt: !2310)
!2321 = !DILocation(line: 146, column: 120, scope: !2179, inlinedAt: !2310)
!2322 = !DILocation(line: 148, column: 7, scope: !2206, inlinedAt: !2310)
!2323 = !DILocation(line: 132, column: 25, scope: !2208, inlinedAt: !2324)
!2324 = distinct !DILocation(line: 153, column: 16, scope: !2222, inlinedAt: !2310)
!2325 = !DILocation(line: 132, column: 41, scope: !2208, inlinedAt: !2324)
!2326 = !DILocation(line: 132, column: 50, scope: !2208, inlinedAt: !2324)
!2327 = !DILocation(line: 132, column: 60, scope: !2208, inlinedAt: !2324)
!2328 = !DILocation(line: 132, column: 70, scope: !2208, inlinedAt: !2324)
!2329 = !DILocation(line: 132, column: 80, scope: !2208, inlinedAt: !2324)
!2330 = !DILocation(line: 132, column: 90, scope: !2208, inlinedAt: !2324)
!2331 = !DILocation(line: 132, column: 100, scope: !2208, inlinedAt: !2324)
!2332 = !DILocation(line: 132, column: 110, scope: !2208, inlinedAt: !2324)
!2333 = !DILocation(line: 134, column: 7, scope: !2233, inlinedAt: !2324)
!2334 = !DILocation(line: 134, column: 7, scope: !2208, inlinedAt: !2324)
!2335 = !DILocation(line: 118, column: 25, scope: !2235, inlinedAt: !2336)
!2336 = distinct !DILocation(line: 139, column: 16, scope: !2248, inlinedAt: !2324)
!2337 = !DILocation(line: 118, column: 41, scope: !2235, inlinedAt: !2336)
!2338 = !DILocation(line: 118, column: 50, scope: !2235, inlinedAt: !2336)
!2339 = !DILocation(line: 118, column: 60, scope: !2235, inlinedAt: !2336)
!2340 = !DILocation(line: 118, column: 70, scope: !2235, inlinedAt: !2336)
!2341 = !DILocation(line: 118, column: 80, scope: !2235, inlinedAt: !2336)
!2342 = !DILocation(line: 118, column: 90, scope: !2235, inlinedAt: !2336)
!2343 = !DILocation(line: 118, column: 100, scope: !2235, inlinedAt: !2336)
!2344 = !DILocation(line: 120, column: 7, scope: !2258, inlinedAt: !2336)
!2345 = !DILocation(line: 120, column: 7, scope: !2235, inlinedAt: !2336)
!2346 = !DILocation(line: 104, column: 25, scope: !2261, inlinedAt: !2347)
!2347 = distinct !DILocation(line: 125, column: 16, scope: !2273, inlinedAt: !2336)
!2348 = !DILocation(line: 104, column: 41, scope: !2261, inlinedAt: !2347)
!2349 = !DILocation(line: 104, column: 50, scope: !2261, inlinedAt: !2347)
!2350 = !DILocation(line: 104, column: 60, scope: !2261, inlinedAt: !2347)
!2351 = !DILocation(line: 104, column: 70, scope: !2261, inlinedAt: !2347)
!2352 = !DILocation(line: 104, column: 80, scope: !2261, inlinedAt: !2347)
!2353 = !DILocation(line: 104, column: 90, scope: !2261, inlinedAt: !2347)
!2354 = !DILocation(line: 106, column: 7, scope: !2282, inlinedAt: !2347)
!2355 = !DILocation(line: 106, column: 7, scope: !2261, inlinedAt: !2347)
!2356 = !DILocation(line: 90, column: 25, scope: !2285, inlinedAt: !2357)
!2357 = distinct !DILocation(line: 111, column: 16, scope: !2296, inlinedAt: !2347)
!2358 = !DILocation(line: 90, column: 41, scope: !2285, inlinedAt: !2357)
!2359 = !DILocation(line: 90, column: 50, scope: !2285, inlinedAt: !2357)
!2360 = !DILocation(line: 90, column: 60, scope: !2285, inlinedAt: !2357)
!2361 = !DILocation(line: 90, column: 70, scope: !2285, inlinedAt: !2357)
!2362 = !DILocation(line: 90, column: 80, scope: !2285, inlinedAt: !2357)
!2363 = !DILocation(line: 92, column: 7, scope: !2304, inlinedAt: !2357)
!2364 = !DILocation(line: 92, column: 7, scope: !2285, inlinedAt: !2357)
!2365 = !DILocalVariable(name: "s1", arg: 1, scope: !2366, file: !2149, line: 76, type: !44)
!2366 = distinct !DISubprogram(name: "strcaseeq6", scope: !2149, file: !2149, line: 76, type: !2367, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !2369)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!47, !44, !44, !30, !30, !30}
!2369 = !{!2365, !2370, !2371, !2372, !2373}
!2370 = !DILocalVariable(name: "s2", arg: 2, scope: !2366, file: !2149, line: 76, type: !44)
!2371 = !DILocalVariable(name: "s26", arg: 3, scope: !2366, file: !2149, line: 76, type: !30)
!2372 = !DILocalVariable(name: "s27", arg: 4, scope: !2366, file: !2149, line: 76, type: !30)
!2373 = !DILocalVariable(name: "s28", arg: 5, scope: !2366, file: !2149, line: 76, type: !30)
!2374 = !DILocation(line: 76, column: 25, scope: !2366, inlinedAt: !2375)
!2375 = distinct !DILocation(line: 97, column: 16, scope: !2376, inlinedAt: !2357)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !2149, line: 94, column: 11)
!2377 = distinct !DILexicalBlock(scope: !2304, file: !2149, line: 93, column: 5)
!2378 = !DILocation(line: 76, column: 41, scope: !2366, inlinedAt: !2375)
!2379 = !DILocation(line: 76, column: 50, scope: !2366, inlinedAt: !2375)
!2380 = !DILocation(line: 76, column: 60, scope: !2366, inlinedAt: !2375)
!2381 = !DILocation(line: 76, column: 70, scope: !2366, inlinedAt: !2375)
!2382 = !DILocation(line: 78, column: 7, scope: !2383, inlinedAt: !2375)
!2383 = distinct !DILexicalBlock(scope: !2366, file: !2149, line: 78, column: 7)
!2384 = !DILocation(line: 78, column: 7, scope: !2366, inlinedAt: !2375)
!2385 = !DILocalVariable(name: "s1", arg: 1, scope: !2386, file: !2149, line: 62, type: !44)
!2386 = distinct !DISubprogram(name: "strcaseeq7", scope: !2149, file: !2149, line: 62, type: !2387, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !2389)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!47, !44, !44, !30, !30}
!2389 = !{!2385, !2390, !2391, !2392}
!2390 = !DILocalVariable(name: "s2", arg: 2, scope: !2386, file: !2149, line: 62, type: !44)
!2391 = !DILocalVariable(name: "s27", arg: 3, scope: !2386, file: !2149, line: 62, type: !30)
!2392 = !DILocalVariable(name: "s28", arg: 4, scope: !2386, file: !2149, line: 62, type: !30)
!2393 = !DILocation(line: 62, column: 25, scope: !2386, inlinedAt: !2394)
!2394 = distinct !DILocation(line: 83, column: 16, scope: !2395, inlinedAt: !2375)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !2149, line: 80, column: 11)
!2396 = distinct !DILexicalBlock(scope: !2383, file: !2149, line: 79, column: 5)
!2397 = !DILocation(line: 62, column: 41, scope: !2386, inlinedAt: !2394)
!2398 = !DILocation(line: 62, column: 50, scope: !2386, inlinedAt: !2394)
!2399 = !DILocation(line: 62, column: 60, scope: !2386, inlinedAt: !2394)
!2400 = !DILocation(line: 64, column: 7, scope: !2401, inlinedAt: !2394)
!2401 = distinct !DILexicalBlock(scope: !2386, file: !2149, line: 64, column: 7)
!2402 = !DILocation(line: 236, column: 7, scope: !2130)
!2403 = !DILocation(line: 237, column: 12, scope: !2312)
!2404 = !DILocation(line: 237, column: 21, scope: !2312)
!2405 = !DILocation(line: 237, column: 5, scope: !2312)
!2406 = !DILocation(line: 239, column: 13, scope: !2130)
!2407 = !DILocation(line: 239, column: 11, scope: !2130)
!2408 = !DILocation(line: 239, column: 3, scope: !2130)
!2409 = !DILocation(line: 0, scope: !2130)
!2410 = !DILocation(line: 240, column: 1, scope: !2130)
!2411 = distinct !DISubprogram(name: "quotearg_alloc", scope: !114, file: !114, line: 799, type: !2412, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !2414)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!29, !44, !109, !1448}
!2414 = !{!2415, !2416, !2417}
!2415 = !DILocalVariable(name: "arg", arg: 1, scope: !2411, file: !114, line: 799, type: !44)
!2416 = !DILocalVariable(name: "argsize", arg: 2, scope: !2411, file: !114, line: 799, type: !109)
!2417 = !DILocalVariable(name: "o", arg: 3, scope: !2411, file: !114, line: 800, type: !1448)
!2418 = !DILocation(line: 799, column: 29, scope: !2411)
!2419 = !DILocation(line: 799, column: 41, scope: !2411)
!2420 = !DILocation(line: 800, column: 47, scope: !2411)
!2421 = !DILocalVariable(name: "arg", arg: 1, scope: !2422, file: !114, line: 812, type: !44)
!2422 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !114, file: !114, line: 812, type: !2423, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !2425)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!29, !44, !109, !191, !1448}
!2425 = !{!2421, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433}
!2426 = !DILocalVariable(name: "argsize", arg: 2, scope: !2422, file: !114, line: 812, type: !109)
!2427 = !DILocalVariable(name: "size", arg: 3, scope: !2422, file: !114, line: 812, type: !191)
!2428 = !DILocalVariable(name: "o", arg: 4, scope: !2422, file: !114, line: 813, type: !1448)
!2429 = !DILocalVariable(name: "p", scope: !2422, file: !114, line: 815, type: !1448)
!2430 = !DILocalVariable(name: "e", scope: !2422, file: !114, line: 816, type: !47)
!2431 = !DILocalVariable(name: "flags", scope: !2422, file: !114, line: 818, type: !47)
!2432 = !DILocalVariable(name: "bufsize", scope: !2422, file: !114, line: 819, type: !109)
!2433 = !DILocalVariable(name: "buf", scope: !2422, file: !114, line: 823, type: !29)
!2434 = !DILocation(line: 812, column: 33, scope: !2422, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 802, column: 10, scope: !2411)
!2436 = !DILocation(line: 812, column: 45, scope: !2422, inlinedAt: !2435)
!2437 = !DILocation(line: 812, column: 62, scope: !2422, inlinedAt: !2435)
!2438 = !DILocation(line: 813, column: 51, scope: !2422, inlinedAt: !2435)
!2439 = !DILocation(line: 815, column: 37, scope: !2422, inlinedAt: !2435)
!2440 = !DILocation(line: 815, column: 33, scope: !2422, inlinedAt: !2435)
!2441 = !DILocation(line: 816, column: 11, scope: !2422, inlinedAt: !2435)
!2442 = !DILocation(line: 816, column: 7, scope: !2422, inlinedAt: !2435)
!2443 = !DILocation(line: 818, column: 18, scope: !2422, inlinedAt: !2435)
!2444 = !DILocation(line: 818, column: 24, scope: !2422, inlinedAt: !2435)
!2445 = !DILocation(line: 818, column: 7, scope: !2422, inlinedAt: !2435)
!2446 = !DILocation(line: 819, column: 69, scope: !2422, inlinedAt: !2435)
!2447 = !DILocation(line: 820, column: 53, scope: !2422, inlinedAt: !2435)
!2448 = !DILocation(line: 821, column: 49, scope: !2422, inlinedAt: !2435)
!2449 = !DILocation(line: 822, column: 49, scope: !2422, inlinedAt: !2435)
!2450 = !DILocation(line: 819, column: 20, scope: !2422, inlinedAt: !2435)
!2451 = !DILocation(line: 822, column: 62, scope: !2422, inlinedAt: !2435)
!2452 = !DILocation(line: 819, column: 10, scope: !2422, inlinedAt: !2435)
!2453 = !DILocalVariable(name: "n", arg: 1, scope: !2454, file: !187, line: 216, type: !109)
!2454 = distinct !DISubprogram(name: "xcharalloc", scope: !187, file: !187, line: 216, type: !2455, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !2457)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!29, !109}
!2457 = !{!2453}
!2458 = !DILocation(line: 216, column: 20, scope: !2454, inlinedAt: !2459)
!2459 = distinct !DILocation(line: 823, column: 15, scope: !2422, inlinedAt: !2435)
!2460 = !DILocation(line: 218, column: 10, scope: !2454, inlinedAt: !2459)
!2461 = !DILocation(line: 823, column: 9, scope: !2422, inlinedAt: !2435)
!2462 = !DILocation(line: 824, column: 60, scope: !2422, inlinedAt: !2435)
!2463 = !DILocation(line: 826, column: 32, scope: !2422, inlinedAt: !2435)
!2464 = !DILocation(line: 826, column: 47, scope: !2422, inlinedAt: !2435)
!2465 = !DILocation(line: 824, column: 3, scope: !2422, inlinedAt: !2435)
!2466 = !DILocation(line: 827, column: 9, scope: !2422, inlinedAt: !2435)
!2467 = !DILocation(line: 802, column: 3, scope: !2411)
!2468 = !DILocation(line: 812, column: 33, scope: !2422)
!2469 = !DILocation(line: 812, column: 45, scope: !2422)
!2470 = !DILocation(line: 812, column: 62, scope: !2422)
!2471 = !DILocation(line: 813, column: 51, scope: !2422)
!2472 = !DILocation(line: 815, column: 37, scope: !2422)
!2473 = !DILocation(line: 815, column: 33, scope: !2422)
!2474 = !DILocation(line: 816, column: 11, scope: !2422)
!2475 = !DILocation(line: 816, column: 7, scope: !2422)
!2476 = !DILocation(line: 818, column: 18, scope: !2422)
!2477 = !DILocation(line: 818, column: 27, scope: !2422)
!2478 = !DILocation(line: 818, column: 24, scope: !2422)
!2479 = !DILocation(line: 818, column: 7, scope: !2422)
!2480 = !DILocation(line: 819, column: 69, scope: !2422)
!2481 = !DILocation(line: 820, column: 53, scope: !2422)
!2482 = !DILocation(line: 821, column: 49, scope: !2422)
!2483 = !DILocation(line: 822, column: 49, scope: !2422)
!2484 = !DILocation(line: 819, column: 20, scope: !2422)
!2485 = !DILocation(line: 822, column: 62, scope: !2422)
!2486 = !DILocation(line: 819, column: 10, scope: !2422)
!2487 = !DILocation(line: 216, column: 20, scope: !2454, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 823, column: 15, scope: !2422)
!2489 = !DILocation(line: 218, column: 10, scope: !2454, inlinedAt: !2488)
!2490 = !DILocation(line: 823, column: 9, scope: !2422)
!2491 = !DILocation(line: 824, column: 60, scope: !2422)
!2492 = !DILocation(line: 826, column: 32, scope: !2422)
!2493 = !DILocation(line: 826, column: 47, scope: !2422)
!2494 = !DILocation(line: 824, column: 3, scope: !2422)
!2495 = !DILocation(line: 827, column: 9, scope: !2422)
!2496 = !DILocation(line: 828, column: 7, scope: !2422)
!2497 = !DILocation(line: 829, column: 11, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2422, file: !114, line: 828, column: 7)
!2499 = !DILocation(line: 829, column: 5, scope: !2498)
!2500 = !DILocation(line: 830, column: 3, scope: !2422)
!2501 = distinct !DISubprogram(name: "quotearg_free", scope: !114, file: !114, line: 848, type: !656, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !2502)
!2502 = !{!2503, !2504}
!2503 = !DILocalVariable(name: "sv", scope: !2501, file: !114, line: 850, type: !140)
!2504 = !DILocalVariable(name: "i", scope: !2501, file: !114, line: 851, type: !47)
!2505 = !DILocation(line: 850, column: 24, scope: !2501)
!2506 = !DILocation(line: 850, column: 19, scope: !2501)
!2507 = !DILocation(line: 851, column: 7, scope: !2501)
!2508 = !DILocation(line: 852, column: 19, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !114, line: 852, column: 3)
!2510 = distinct !DILexicalBlock(scope: !2501, file: !114, line: 852, column: 3)
!2511 = !DILocation(line: 852, column: 17, scope: !2509)
!2512 = !DILocation(line: 852, column: 3, scope: !2510)
!2513 = !DILocation(line: 853, column: 17, scope: !2509)
!2514 = !{!2515, !649, i64 8}
!2515 = !{!"slotvec", !872, i64 0, !649, i64 8}
!2516 = !DILocation(line: 853, column: 5, scope: !2509)
!2517 = !DILocation(line: 852, column: 28, scope: !2509)
!2518 = distinct !{!2518, !2512, !2519}
!2519 = !DILocation(line: 853, column: 20, scope: !2510)
!2520 = !DILocation(line: 854, column: 13, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2501, file: !114, line: 854, column: 7)
!2522 = !DILocation(line: 854, column: 17, scope: !2521)
!2523 = !DILocation(line: 854, column: 7, scope: !2501)
!2524 = !DILocation(line: 856, column: 7, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2521, file: !114, line: 855, column: 5)
!2526 = !DILocation(line: 857, column: 21, scope: !2525)
!2527 = !{!2515, !872, i64 0}
!2528 = !DILocation(line: 858, column: 20, scope: !2525)
!2529 = !DILocation(line: 859, column: 5, scope: !2525)
!2530 = !DILocation(line: 860, column: 10, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2501, file: !114, line: 860, column: 7)
!2532 = !DILocation(line: 860, column: 7, scope: !2501)
!2533 = !DILocation(line: 862, column: 13, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2531, file: !114, line: 861, column: 5)
!2535 = !DILocation(line: 862, column: 7, scope: !2534)
!2536 = !DILocation(line: 863, column: 15, scope: !2534)
!2537 = !DILocation(line: 864, column: 5, scope: !2534)
!2538 = !DILocation(line: 865, column: 10, scope: !2501)
!2539 = !DILocation(line: 866, column: 1, scope: !2501)
!2540 = distinct !DISubprogram(name: "quotearg_n", scope: !114, file: !114, line: 931, type: !2541, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !2543)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!29, !47, !44}
!2543 = !{!2544, !2545}
!2544 = !DILocalVariable(name: "n", arg: 1, scope: !2540, file: !114, line: 931, type: !47)
!2545 = !DILocalVariable(name: "arg", arg: 2, scope: !2540, file: !114, line: 931, type: !44)
!2546 = !DILocation(line: 931, column: 17, scope: !2540)
!2547 = !DILocation(line: 931, column: 32, scope: !2540)
!2548 = !DILocation(line: 933, column: 10, scope: !2540)
!2549 = !DILocation(line: 933, column: 3, scope: !2540)
!2550 = distinct !DISubprogram(name: "quotearg_n_options", scope: !114, file: !114, line: 877, type: !2551, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !2553)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!29, !47, !44, !109, !1448}
!2553 = !{!2554, !2555, !2556, !2557, !2558, !2559, !2560, !2563, !2564, !2566, !2567, !2568}
!2554 = !DILocalVariable(name: "n", arg: 1, scope: !2550, file: !114, line: 877, type: !47)
!2555 = !DILocalVariable(name: "arg", arg: 2, scope: !2550, file: !114, line: 877, type: !44)
!2556 = !DILocalVariable(name: "argsize", arg: 3, scope: !2550, file: !114, line: 877, type: !109)
!2557 = !DILocalVariable(name: "options", arg: 4, scope: !2550, file: !114, line: 878, type: !1448)
!2558 = !DILocalVariable(name: "e", scope: !2550, file: !114, line: 880, type: !47)
!2559 = !DILocalVariable(name: "sv", scope: !2550, file: !114, line: 882, type: !140)
!2560 = !DILocalVariable(name: "preallocated", scope: !2561, file: !114, line: 889, type: !67)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !114, line: 888, column: 5)
!2562 = distinct !DILexicalBlock(scope: !2550, file: !114, line: 887, column: 7)
!2563 = !DILocalVariable(name: "nmax", scope: !2561, file: !114, line: 890, type: !47)
!2564 = !DILocalVariable(name: "size", scope: !2565, file: !114, line: 903, type: !109)
!2565 = distinct !DILexicalBlock(scope: !2550, file: !114, line: 902, column: 3)
!2566 = !DILocalVariable(name: "val", scope: !2565, file: !114, line: 904, type: !29)
!2567 = !DILocalVariable(name: "flags", scope: !2565, file: !114, line: 906, type: !47)
!2568 = !DILocalVariable(name: "qsize", scope: !2565, file: !114, line: 907, type: !109)
!2569 = !DILocation(line: 877, column: 25, scope: !2550)
!2570 = !DILocation(line: 877, column: 40, scope: !2550)
!2571 = !DILocation(line: 877, column: 52, scope: !2550)
!2572 = !DILocation(line: 878, column: 51, scope: !2550)
!2573 = !DILocation(line: 880, column: 11, scope: !2550)
!2574 = !DILocation(line: 880, column: 7, scope: !2550)
!2575 = !DILocation(line: 882, column: 24, scope: !2550)
!2576 = !DILocation(line: 882, column: 19, scope: !2550)
!2577 = !DILocation(line: 884, column: 9, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2550, file: !114, line: 884, column: 7)
!2579 = !DILocation(line: 884, column: 7, scope: !2550)
!2580 = !DILocation(line: 885, column: 5, scope: !2578)
!2581 = !DILocation(line: 887, column: 7, scope: !2562)
!2582 = !DILocation(line: 887, column: 14, scope: !2562)
!2583 = !DILocation(line: 887, column: 7, scope: !2550)
!2584 = !DILocation(line: 889, column: 31, scope: !2561)
!2585 = !DILocation(line: 890, column: 11, scope: !2561)
!2586 = !DILocation(line: 892, column: 16, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2561, file: !114, line: 892, column: 11)
!2588 = !DILocation(line: 892, column: 11, scope: !2561)
!2589 = !DILocation(line: 893, column: 9, scope: !2587)
!2590 = !DILocation(line: 895, column: 32, scope: !2561)
!2591 = !DILocation(line: 895, column: 61, scope: !2561)
!2592 = !DILocation(line: 895, column: 58, scope: !2561)
!2593 = !DILocation(line: 895, column: 66, scope: !2561)
!2594 = !DILocation(line: 895, column: 22, scope: !2561)
!2595 = !DILocation(line: 895, column: 15, scope: !2561)
!2596 = !DILocation(line: 896, column: 11, scope: !2561)
!2597 = !DILocation(line: 897, column: 15, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2561, file: !114, line: 896, column: 11)
!2599 = !{i64 0, i64 8, !871, i64 8, i64 8, !648}
!2600 = !DILocation(line: 897, column: 9, scope: !2598)
!2601 = !DILocation(line: 898, column: 20, scope: !2561)
!2602 = !DILocation(line: 898, column: 18, scope: !2561)
!2603 = !DILocation(line: 898, column: 7, scope: !2561)
!2604 = !DILocation(line: 898, column: 38, scope: !2561)
!2605 = !DILocation(line: 898, column: 31, scope: !2561)
!2606 = !DILocation(line: 898, column: 48, scope: !2561)
!2607 = !DILocation(line: 899, column: 14, scope: !2561)
!2608 = !DILocation(line: 900, column: 5, scope: !2561)
!2609 = !DILocation(line: 0, scope: !2550)
!2610 = !DILocation(line: 903, column: 19, scope: !2565)
!2611 = !DILocation(line: 903, column: 25, scope: !2565)
!2612 = !DILocation(line: 903, column: 12, scope: !2565)
!2613 = !DILocation(line: 904, column: 23, scope: !2565)
!2614 = !DILocation(line: 904, column: 11, scope: !2565)
!2615 = !DILocation(line: 906, column: 26, scope: !2565)
!2616 = !DILocation(line: 906, column: 32, scope: !2565)
!2617 = !DILocation(line: 906, column: 9, scope: !2565)
!2618 = !DILocation(line: 908, column: 55, scope: !2565)
!2619 = !DILocation(line: 909, column: 46, scope: !2565)
!2620 = !DILocation(line: 910, column: 55, scope: !2565)
!2621 = !DILocation(line: 911, column: 55, scope: !2565)
!2622 = !DILocation(line: 907, column: 20, scope: !2565)
!2623 = !DILocation(line: 907, column: 12, scope: !2565)
!2624 = !DILocation(line: 913, column: 14, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2565, file: !114, line: 913, column: 9)
!2626 = !DILocation(line: 913, column: 9, scope: !2565)
!2627 = !DILocation(line: 915, column: 35, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2625, file: !114, line: 914, column: 7)
!2629 = !DILocation(line: 915, column: 20, scope: !2628)
!2630 = !DILocation(line: 916, column: 17, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2628, file: !114, line: 916, column: 13)
!2632 = !DILocation(line: 916, column: 13, scope: !2628)
!2633 = !DILocation(line: 917, column: 11, scope: !2631)
!2634 = !DILocation(line: 216, column: 20, scope: !2454, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 918, column: 27, scope: !2628)
!2636 = !DILocation(line: 218, column: 10, scope: !2454, inlinedAt: !2635)
!2637 = !DILocation(line: 918, column: 19, scope: !2628)
!2638 = !DILocation(line: 919, column: 69, scope: !2628)
!2639 = !DILocation(line: 921, column: 44, scope: !2628)
!2640 = !DILocation(line: 922, column: 44, scope: !2628)
!2641 = !DILocation(line: 919, column: 9, scope: !2628)
!2642 = !DILocation(line: 923, column: 7, scope: !2628)
!2643 = !DILocation(line: 0, scope: !2565)
!2644 = !DILocation(line: 925, column: 11, scope: !2565)
!2645 = !DILocation(line: 926, column: 5, scope: !2565)
!2646 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !114, file: !114, line: 937, type: !2647, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !2649)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!29, !47, !44, !109}
!2649 = !{!2650, !2651, !2652}
!2650 = !DILocalVariable(name: "n", arg: 1, scope: !2646, file: !114, line: 937, type: !47)
!2651 = !DILocalVariable(name: "arg", arg: 2, scope: !2646, file: !114, line: 937, type: !44)
!2652 = !DILocalVariable(name: "argsize", arg: 3, scope: !2646, file: !114, line: 937, type: !109)
!2653 = !DILocation(line: 937, column: 21, scope: !2646)
!2654 = !DILocation(line: 937, column: 36, scope: !2646)
!2655 = !DILocation(line: 937, column: 48, scope: !2646)
!2656 = !DILocation(line: 939, column: 10, scope: !2646)
!2657 = !DILocation(line: 939, column: 3, scope: !2646)
!2658 = distinct !DISubprogram(name: "quotearg", scope: !114, file: !114, line: 943, type: !2659, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !2661)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!29, !44}
!2661 = !{!2662}
!2662 = !DILocalVariable(name: "arg", arg: 1, scope: !2658, file: !114, line: 943, type: !44)
!2663 = !DILocation(line: 943, column: 23, scope: !2658)
!2664 = !DILocation(line: 931, column: 17, scope: !2540, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 945, column: 10, scope: !2658)
!2666 = !DILocation(line: 931, column: 32, scope: !2540, inlinedAt: !2665)
!2667 = !DILocation(line: 933, column: 10, scope: !2540, inlinedAt: !2665)
!2668 = !DILocation(line: 945, column: 3, scope: !2658)
!2669 = distinct !DISubprogram(name: "quotearg_mem", scope: !114, file: !114, line: 949, type: !2670, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !2672)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!29, !44, !109}
!2672 = !{!2673, !2674}
!2673 = !DILocalVariable(name: "arg", arg: 1, scope: !2669, file: !114, line: 949, type: !44)
!2674 = !DILocalVariable(name: "argsize", arg: 2, scope: !2669, file: !114, line: 949, type: !109)
!2675 = !DILocation(line: 949, column: 27, scope: !2669)
!2676 = !DILocation(line: 949, column: 39, scope: !2669)
!2677 = !DILocation(line: 937, column: 21, scope: !2646, inlinedAt: !2678)
!2678 = distinct !DILocation(line: 951, column: 10, scope: !2669)
!2679 = !DILocation(line: 937, column: 36, scope: !2646, inlinedAt: !2678)
!2680 = !DILocation(line: 937, column: 48, scope: !2646, inlinedAt: !2678)
!2681 = !DILocation(line: 939, column: 10, scope: !2646, inlinedAt: !2678)
!2682 = !DILocation(line: 951, column: 3, scope: !2669)
!2683 = distinct !DISubprogram(name: "quotearg_n_style", scope: !114, file: !114, line: 955, type: !2684, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !2686)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!29, !47, !14, !44}
!2686 = !{!2687, !2688, !2689, !2690}
!2687 = !DILocalVariable(name: "n", arg: 1, scope: !2683, file: !114, line: 955, type: !47)
!2688 = !DILocalVariable(name: "s", arg: 2, scope: !2683, file: !114, line: 955, type: !14)
!2689 = !DILocalVariable(name: "arg", arg: 3, scope: !2683, file: !114, line: 955, type: !44)
!2690 = !DILocalVariable(name: "o", scope: !2683, file: !114, line: 957, type: !1449)
!2691 = !DILocation(line: 955, column: 23, scope: !2683)
!2692 = !DILocation(line: 955, column: 45, scope: !2683)
!2693 = !DILocation(line: 955, column: 60, scope: !2683)
!2694 = !DILocation(line: 957, column: 3, scope: !2683)
!2695 = !DILocation(line: 957, column: 32, scope: !2683)
!2696 = !DILocalVariable(name: "style", arg: 1, scope: !2697, file: !114, line: 193, type: !14)
!2697 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !114, file: !114, line: 193, type: !2698, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !2700)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!121, !14}
!2700 = !{!2696, !2701}
!2701 = !DILocalVariable(name: "o", scope: !2697, file: !114, line: 195, type: !121)
!2702 = !DILocation(line: 193, column: 48, scope: !2697, inlinedAt: !2703)
!2703 = distinct !DILocation(line: 957, column: 36, scope: !2683)
!2704 = !DILocation(line: 195, column: 26, scope: !2697, inlinedAt: !2703)
!2705 = !{!2706}
!2706 = distinct !{!2706, !2707, !"quoting_options_from_style: argument 0"}
!2707 = distinct !{!2707, !"quoting_options_from_style"}
!2708 = !DILocation(line: 196, column: 13, scope: !2709, inlinedAt: !2703)
!2709 = distinct !DILexicalBlock(scope: !2697, file: !114, line: 196, column: 7)
!2710 = !DILocation(line: 196, column: 7, scope: !2697, inlinedAt: !2703)
!2711 = !DILocation(line: 197, column: 5, scope: !2709, inlinedAt: !2703)
!2712 = !DILocation(line: 198, column: 5, scope: !2697, inlinedAt: !2703)
!2713 = !DILocation(line: 198, column: 11, scope: !2697, inlinedAt: !2703)
!2714 = !DILocation(line: 958, column: 10, scope: !2683)
!2715 = !DILocation(line: 959, column: 1, scope: !2683)
!2716 = !DILocation(line: 958, column: 3, scope: !2683)
!2717 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !114, file: !114, line: 962, type: !2718, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !2720)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!29, !47, !14, !44, !109}
!2720 = !{!2721, !2722, !2723, !2724, !2725}
!2721 = !DILocalVariable(name: "n", arg: 1, scope: !2717, file: !114, line: 962, type: !47)
!2722 = !DILocalVariable(name: "s", arg: 2, scope: !2717, file: !114, line: 962, type: !14)
!2723 = !DILocalVariable(name: "arg", arg: 3, scope: !2717, file: !114, line: 963, type: !44)
!2724 = !DILocalVariable(name: "argsize", arg: 4, scope: !2717, file: !114, line: 963, type: !109)
!2725 = !DILocalVariable(name: "o", scope: !2717, file: !114, line: 965, type: !1449)
!2726 = !DILocation(line: 962, column: 27, scope: !2717)
!2727 = !DILocation(line: 962, column: 49, scope: !2717)
!2728 = !DILocation(line: 963, column: 35, scope: !2717)
!2729 = !DILocation(line: 963, column: 47, scope: !2717)
!2730 = !DILocation(line: 965, column: 3, scope: !2717)
!2731 = !DILocation(line: 965, column: 32, scope: !2717)
!2732 = !DILocation(line: 193, column: 48, scope: !2697, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 965, column: 36, scope: !2717)
!2734 = !DILocation(line: 195, column: 26, scope: !2697, inlinedAt: !2733)
!2735 = !{!2736}
!2736 = distinct !{!2736, !2737, !"quoting_options_from_style: argument 0"}
!2737 = distinct !{!2737, !"quoting_options_from_style"}
!2738 = !DILocation(line: 196, column: 13, scope: !2709, inlinedAt: !2733)
!2739 = !DILocation(line: 196, column: 7, scope: !2697, inlinedAt: !2733)
!2740 = !DILocation(line: 197, column: 5, scope: !2709, inlinedAt: !2733)
!2741 = !DILocation(line: 198, column: 5, scope: !2697, inlinedAt: !2733)
!2742 = !DILocation(line: 198, column: 11, scope: !2697, inlinedAt: !2733)
!2743 = !DILocation(line: 966, column: 10, scope: !2717)
!2744 = !DILocation(line: 967, column: 1, scope: !2717)
!2745 = !DILocation(line: 966, column: 3, scope: !2717)
!2746 = distinct !DISubprogram(name: "quotearg_style", scope: !114, file: !114, line: 970, type: !2747, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !2749)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!29, !14, !44}
!2749 = !{!2750, !2751}
!2750 = !DILocalVariable(name: "s", arg: 1, scope: !2746, file: !114, line: 970, type: !14)
!2751 = !DILocalVariable(name: "arg", arg: 2, scope: !2746, file: !114, line: 970, type: !44)
!2752 = !DILocation(line: 970, column: 36, scope: !2746)
!2753 = !DILocation(line: 970, column: 51, scope: !2746)
!2754 = !DILocation(line: 955, column: 23, scope: !2683, inlinedAt: !2755)
!2755 = distinct !DILocation(line: 972, column: 10, scope: !2746)
!2756 = !DILocation(line: 955, column: 45, scope: !2683, inlinedAt: !2755)
!2757 = !DILocation(line: 955, column: 60, scope: !2683, inlinedAt: !2755)
!2758 = !DILocation(line: 957, column: 3, scope: !2683, inlinedAt: !2755)
!2759 = !DILocation(line: 957, column: 32, scope: !2683, inlinedAt: !2755)
!2760 = !DILocation(line: 193, column: 48, scope: !2697, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 957, column: 36, scope: !2683, inlinedAt: !2755)
!2762 = !DILocation(line: 195, column: 26, scope: !2697, inlinedAt: !2761)
!2763 = !{!2764}
!2764 = distinct !{!2764, !2765, !"quoting_options_from_style: argument 0"}
!2765 = distinct !{!2765, !"quoting_options_from_style"}
!2766 = !DILocation(line: 196, column: 13, scope: !2709, inlinedAt: !2761)
!2767 = !DILocation(line: 196, column: 7, scope: !2697, inlinedAt: !2761)
!2768 = !DILocation(line: 197, column: 5, scope: !2709, inlinedAt: !2761)
!2769 = !DILocation(line: 198, column: 5, scope: !2697, inlinedAt: !2761)
!2770 = !DILocation(line: 198, column: 11, scope: !2697, inlinedAt: !2761)
!2771 = !DILocation(line: 958, column: 10, scope: !2683, inlinedAt: !2755)
!2772 = !DILocation(line: 959, column: 1, scope: !2683, inlinedAt: !2755)
!2773 = !DILocation(line: 972, column: 3, scope: !2746)
!2774 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !114, file: !114, line: 976, type: !2775, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !2777)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!29, !14, !44, !109}
!2777 = !{!2778, !2779, !2780}
!2778 = !DILocalVariable(name: "s", arg: 1, scope: !2774, file: !114, line: 976, type: !14)
!2779 = !DILocalVariable(name: "arg", arg: 2, scope: !2774, file: !114, line: 976, type: !44)
!2780 = !DILocalVariable(name: "argsize", arg: 3, scope: !2774, file: !114, line: 976, type: !109)
!2781 = !DILocation(line: 976, column: 40, scope: !2774)
!2782 = !DILocation(line: 976, column: 55, scope: !2774)
!2783 = !DILocation(line: 976, column: 67, scope: !2774)
!2784 = !DILocation(line: 962, column: 27, scope: !2717, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 978, column: 10, scope: !2774)
!2786 = !DILocation(line: 962, column: 49, scope: !2717, inlinedAt: !2785)
!2787 = !DILocation(line: 963, column: 35, scope: !2717, inlinedAt: !2785)
!2788 = !DILocation(line: 963, column: 47, scope: !2717, inlinedAt: !2785)
!2789 = !DILocation(line: 965, column: 3, scope: !2717, inlinedAt: !2785)
!2790 = !DILocation(line: 965, column: 32, scope: !2717, inlinedAt: !2785)
!2791 = !DILocation(line: 193, column: 48, scope: !2697, inlinedAt: !2792)
!2792 = distinct !DILocation(line: 965, column: 36, scope: !2717, inlinedAt: !2785)
!2793 = !DILocation(line: 195, column: 26, scope: !2697, inlinedAt: !2792)
!2794 = !{!2795}
!2795 = distinct !{!2795, !2796, !"quoting_options_from_style: argument 0"}
!2796 = distinct !{!2796, !"quoting_options_from_style"}
!2797 = !DILocation(line: 196, column: 13, scope: !2709, inlinedAt: !2792)
!2798 = !DILocation(line: 196, column: 7, scope: !2697, inlinedAt: !2792)
!2799 = !DILocation(line: 197, column: 5, scope: !2709, inlinedAt: !2792)
!2800 = !DILocation(line: 198, column: 5, scope: !2697, inlinedAt: !2792)
!2801 = !DILocation(line: 198, column: 11, scope: !2697, inlinedAt: !2792)
!2802 = !DILocation(line: 966, column: 10, scope: !2717, inlinedAt: !2785)
!2803 = !DILocation(line: 967, column: 1, scope: !2717, inlinedAt: !2785)
!2804 = !DILocation(line: 978, column: 3, scope: !2774)
!2805 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !114, file: !114, line: 982, type: !2806, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !2808)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!29, !44, !109, !30}
!2808 = !{!2809, !2810, !2811, !2812}
!2809 = !DILocalVariable(name: "arg", arg: 1, scope: !2805, file: !114, line: 982, type: !44)
!2810 = !DILocalVariable(name: "argsize", arg: 2, scope: !2805, file: !114, line: 982, type: !109)
!2811 = !DILocalVariable(name: "ch", arg: 3, scope: !2805, file: !114, line: 982, type: !30)
!2812 = !DILocalVariable(name: "options", scope: !2805, file: !114, line: 984, type: !121)
!2813 = !DILocation(line: 982, column: 32, scope: !2805)
!2814 = !DILocation(line: 982, column: 44, scope: !2805)
!2815 = !DILocation(line: 982, column: 58, scope: !2805)
!2816 = !DILocation(line: 984, column: 3, scope: !2805)
!2817 = !DILocation(line: 985, column: 13, scope: !2805)
!2818 = !{i64 0, i64 4, !799, i64 4, i64 4, !791, i64 8, i64 32, !799, i64 40, i64 8, !648, i64 48, i64 8, !648}
!2819 = !DILocation(line: 984, column: 26, scope: !2805)
!2820 = !DILocation(line: 152, column: 43, scope: !1470, inlinedAt: !2821)
!2821 = distinct !DILocation(line: 986, column: 3, scope: !2805)
!2822 = !DILocation(line: 152, column: 51, scope: !1470, inlinedAt: !2821)
!2823 = !DILocation(line: 152, column: 58, scope: !1470, inlinedAt: !2821)
!2824 = !DILocation(line: 154, column: 17, scope: !1470, inlinedAt: !2821)
!2825 = !DILocation(line: 156, column: 62, scope: !1470, inlinedAt: !2821)
!2826 = !DILocation(line: 156, column: 57, scope: !1470, inlinedAt: !2821)
!2827 = !DILocation(line: 155, column: 17, scope: !1470, inlinedAt: !2821)
!2828 = !DILocation(line: 157, column: 15, scope: !1470, inlinedAt: !2821)
!2829 = !DILocation(line: 157, column: 7, scope: !1470, inlinedAt: !2821)
!2830 = !DILocation(line: 158, column: 12, scope: !1470, inlinedAt: !2821)
!2831 = !DILocation(line: 158, column: 15, scope: !1470, inlinedAt: !2821)
!2832 = !DILocation(line: 158, column: 25, scope: !1470, inlinedAt: !2821)
!2833 = !DILocation(line: 158, column: 7, scope: !1470, inlinedAt: !2821)
!2834 = !DILocation(line: 159, column: 18, scope: !1470, inlinedAt: !2821)
!2835 = !DILocation(line: 159, column: 23, scope: !1470, inlinedAt: !2821)
!2836 = !DILocation(line: 159, column: 6, scope: !1470, inlinedAt: !2821)
!2837 = !DILocation(line: 987, column: 10, scope: !2805)
!2838 = !DILocation(line: 988, column: 1, scope: !2805)
!2839 = !DILocation(line: 987, column: 3, scope: !2805)
!2840 = distinct !DISubprogram(name: "quotearg_char", scope: !114, file: !114, line: 991, type: !2841, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !2843)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!29, !44, !30}
!2843 = !{!2844, !2845}
!2844 = !DILocalVariable(name: "arg", arg: 1, scope: !2840, file: !114, line: 991, type: !44)
!2845 = !DILocalVariable(name: "ch", arg: 2, scope: !2840, file: !114, line: 991, type: !30)
!2846 = !DILocation(line: 991, column: 28, scope: !2840)
!2847 = !DILocation(line: 991, column: 38, scope: !2840)
!2848 = !DILocation(line: 982, column: 32, scope: !2805, inlinedAt: !2849)
!2849 = distinct !DILocation(line: 993, column: 10, scope: !2840)
!2850 = !DILocation(line: 982, column: 44, scope: !2805, inlinedAt: !2849)
!2851 = !DILocation(line: 982, column: 58, scope: !2805, inlinedAt: !2849)
!2852 = !DILocation(line: 984, column: 3, scope: !2805, inlinedAt: !2849)
!2853 = !DILocation(line: 985, column: 13, scope: !2805, inlinedAt: !2849)
!2854 = !DILocation(line: 984, column: 26, scope: !2805, inlinedAt: !2849)
!2855 = !DILocation(line: 152, column: 43, scope: !1470, inlinedAt: !2856)
!2856 = distinct !DILocation(line: 986, column: 3, scope: !2805, inlinedAt: !2849)
!2857 = !DILocation(line: 152, column: 51, scope: !1470, inlinedAt: !2856)
!2858 = !DILocation(line: 152, column: 58, scope: !1470, inlinedAt: !2856)
!2859 = !DILocation(line: 154, column: 17, scope: !1470, inlinedAt: !2856)
!2860 = !DILocation(line: 156, column: 62, scope: !1470, inlinedAt: !2856)
!2861 = !DILocation(line: 156, column: 57, scope: !1470, inlinedAt: !2856)
!2862 = !DILocation(line: 155, column: 17, scope: !1470, inlinedAt: !2856)
!2863 = !DILocation(line: 157, column: 15, scope: !1470, inlinedAt: !2856)
!2864 = !DILocation(line: 157, column: 7, scope: !1470, inlinedAt: !2856)
!2865 = !DILocation(line: 158, column: 12, scope: !1470, inlinedAt: !2856)
!2866 = !DILocation(line: 158, column: 15, scope: !1470, inlinedAt: !2856)
!2867 = !DILocation(line: 158, column: 25, scope: !1470, inlinedAt: !2856)
!2868 = !DILocation(line: 158, column: 7, scope: !1470, inlinedAt: !2856)
!2869 = !DILocation(line: 159, column: 18, scope: !1470, inlinedAt: !2856)
!2870 = !DILocation(line: 159, column: 23, scope: !1470, inlinedAt: !2856)
!2871 = !DILocation(line: 159, column: 6, scope: !1470, inlinedAt: !2856)
!2872 = !DILocation(line: 987, column: 10, scope: !2805, inlinedAt: !2849)
!2873 = !DILocation(line: 988, column: 1, scope: !2805, inlinedAt: !2849)
!2874 = !DILocation(line: 993, column: 3, scope: !2840)
!2875 = distinct !DISubprogram(name: "quotearg_colon", scope: !114, file: !114, line: 997, type: !2659, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !2876)
!2876 = !{!2877}
!2877 = !DILocalVariable(name: "arg", arg: 1, scope: !2875, file: !114, line: 997, type: !44)
!2878 = !DILocation(line: 997, column: 29, scope: !2875)
!2879 = !DILocation(line: 991, column: 28, scope: !2840, inlinedAt: !2880)
!2880 = distinct !DILocation(line: 999, column: 10, scope: !2875)
!2881 = !DILocation(line: 991, column: 38, scope: !2840, inlinedAt: !2880)
!2882 = !DILocation(line: 982, column: 32, scope: !2805, inlinedAt: !2883)
!2883 = distinct !DILocation(line: 993, column: 10, scope: !2840, inlinedAt: !2880)
!2884 = !DILocation(line: 982, column: 44, scope: !2805, inlinedAt: !2883)
!2885 = !DILocation(line: 982, column: 58, scope: !2805, inlinedAt: !2883)
!2886 = !DILocation(line: 984, column: 3, scope: !2805, inlinedAt: !2883)
!2887 = !DILocation(line: 985, column: 13, scope: !2805, inlinedAt: !2883)
!2888 = !DILocation(line: 984, column: 26, scope: !2805, inlinedAt: !2883)
!2889 = !DILocation(line: 152, column: 43, scope: !1470, inlinedAt: !2890)
!2890 = distinct !DILocation(line: 986, column: 3, scope: !2805, inlinedAt: !2883)
!2891 = !DILocation(line: 152, column: 51, scope: !1470, inlinedAt: !2890)
!2892 = !DILocation(line: 152, column: 58, scope: !1470, inlinedAt: !2890)
!2893 = !DILocation(line: 154, column: 17, scope: !1470, inlinedAt: !2890)
!2894 = !DILocation(line: 156, column: 57, scope: !1470, inlinedAt: !2890)
!2895 = !DILocation(line: 155, column: 17, scope: !1470, inlinedAt: !2890)
!2896 = !DILocation(line: 157, column: 7, scope: !1470, inlinedAt: !2890)
!2897 = !DILocation(line: 158, column: 12, scope: !1470, inlinedAt: !2890)
!2898 = !DILocation(line: 159, column: 6, scope: !1470, inlinedAt: !2890)
!2899 = !DILocation(line: 987, column: 10, scope: !2805, inlinedAt: !2883)
!2900 = !DILocation(line: 988, column: 1, scope: !2805, inlinedAt: !2883)
!2901 = !DILocation(line: 999, column: 3, scope: !2875)
!2902 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !114, file: !114, line: 1003, type: !2670, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !2903)
!2903 = !{!2904, !2905}
!2904 = !DILocalVariable(name: "arg", arg: 1, scope: !2902, file: !114, line: 1003, type: !44)
!2905 = !DILocalVariable(name: "argsize", arg: 2, scope: !2902, file: !114, line: 1003, type: !109)
!2906 = !DILocation(line: 1003, column: 33, scope: !2902)
!2907 = !DILocation(line: 1003, column: 45, scope: !2902)
!2908 = !DILocation(line: 982, column: 32, scope: !2805, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 1005, column: 10, scope: !2902)
!2910 = !DILocation(line: 982, column: 44, scope: !2805, inlinedAt: !2909)
!2911 = !DILocation(line: 982, column: 58, scope: !2805, inlinedAt: !2909)
!2912 = !DILocation(line: 984, column: 3, scope: !2805, inlinedAt: !2909)
!2913 = !DILocation(line: 985, column: 13, scope: !2805, inlinedAt: !2909)
!2914 = !DILocation(line: 984, column: 26, scope: !2805, inlinedAt: !2909)
!2915 = !DILocation(line: 152, column: 43, scope: !1470, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 986, column: 3, scope: !2805, inlinedAt: !2909)
!2917 = !DILocation(line: 152, column: 51, scope: !1470, inlinedAt: !2916)
!2918 = !DILocation(line: 152, column: 58, scope: !1470, inlinedAt: !2916)
!2919 = !DILocation(line: 154, column: 17, scope: !1470, inlinedAt: !2916)
!2920 = !DILocation(line: 156, column: 57, scope: !1470, inlinedAt: !2916)
!2921 = !DILocation(line: 155, column: 17, scope: !1470, inlinedAt: !2916)
!2922 = !DILocation(line: 157, column: 7, scope: !1470, inlinedAt: !2916)
!2923 = !DILocation(line: 158, column: 12, scope: !1470, inlinedAt: !2916)
!2924 = !DILocation(line: 159, column: 6, scope: !1470, inlinedAt: !2916)
!2925 = !DILocation(line: 987, column: 10, scope: !2805, inlinedAt: !2909)
!2926 = !DILocation(line: 988, column: 1, scope: !2805, inlinedAt: !2909)
!2927 = !DILocation(line: 1005, column: 3, scope: !2902)
!2928 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !114, file: !114, line: 1009, type: !2684, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !2929)
!2929 = !{!2930, !2931, !2932, !2933}
!2930 = !DILocalVariable(name: "n", arg: 1, scope: !2928, file: !114, line: 1009, type: !47)
!2931 = !DILocalVariable(name: "s", arg: 2, scope: !2928, file: !114, line: 1009, type: !14)
!2932 = !DILocalVariable(name: "arg", arg: 3, scope: !2928, file: !114, line: 1009, type: !44)
!2933 = !DILocalVariable(name: "options", scope: !2928, file: !114, line: 1011, type: !121)
!2934 = !DILocation(line: 195, column: 26, scope: !2697, inlinedAt: !2935)
!2935 = distinct !DILocation(line: 1012, column: 13, scope: !2928)
!2936 = !DILocation(line: 1009, column: 29, scope: !2928)
!2937 = !DILocation(line: 1009, column: 51, scope: !2928)
!2938 = !DILocation(line: 1009, column: 66, scope: !2928)
!2939 = !DILocation(line: 1011, column: 3, scope: !2928)
!2940 = !DILocation(line: 1012, column: 13, scope: !2928)
!2941 = !DILocation(line: 193, column: 48, scope: !2697, inlinedAt: !2935)
!2942 = !{!2943}
!2943 = distinct !{!2943, !2944, !"quoting_options_from_style: argument 0"}
!2944 = distinct !{!2944, !"quoting_options_from_style"}
!2945 = !DILocation(line: 196, column: 13, scope: !2709, inlinedAt: !2935)
!2946 = !DILocation(line: 196, column: 7, scope: !2697, inlinedAt: !2935)
!2947 = !DILocation(line: 197, column: 5, scope: !2709, inlinedAt: !2935)
!2948 = !DILocation(line: 1011, column: 26, scope: !2928)
!2949 = !DILocation(line: 152, column: 43, scope: !1470, inlinedAt: !2950)
!2950 = distinct !DILocation(line: 1013, column: 3, scope: !2928)
!2951 = !DILocation(line: 152, column: 51, scope: !1470, inlinedAt: !2950)
!2952 = !DILocation(line: 152, column: 58, scope: !1470, inlinedAt: !2950)
!2953 = !DILocation(line: 154, column: 17, scope: !1470, inlinedAt: !2950)
!2954 = !DILocation(line: 156, column: 57, scope: !1470, inlinedAt: !2950)
!2955 = !DILocation(line: 155, column: 17, scope: !1470, inlinedAt: !2950)
!2956 = !DILocation(line: 157, column: 7, scope: !1470, inlinedAt: !2950)
!2957 = !DILocation(line: 158, column: 12, scope: !1470, inlinedAt: !2950)
!2958 = !DILocation(line: 159, column: 6, scope: !1470, inlinedAt: !2950)
!2959 = !DILocation(line: 1014, column: 10, scope: !2928)
!2960 = !DILocation(line: 1015, column: 1, scope: !2928)
!2961 = !DILocation(line: 1014, column: 3, scope: !2928)
!2962 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !114, file: !114, line: 1018, type: !2963, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !2965)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!29, !47, !44, !44, !44}
!2965 = !{!2966, !2967, !2968, !2969}
!2966 = !DILocalVariable(name: "n", arg: 1, scope: !2962, file: !114, line: 1018, type: !47)
!2967 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2962, file: !114, line: 1018, type: !44)
!2968 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2962, file: !114, line: 1019, type: !44)
!2969 = !DILocalVariable(name: "arg", arg: 4, scope: !2962, file: !114, line: 1019, type: !44)
!2970 = !DILocation(line: 1018, column: 24, scope: !2962)
!2971 = !DILocation(line: 1018, column: 39, scope: !2962)
!2972 = !DILocation(line: 1019, column: 32, scope: !2962)
!2973 = !DILocation(line: 1019, column: 57, scope: !2962)
!2974 = !DILocalVariable(name: "n", arg: 1, scope: !2975, file: !114, line: 1026, type: !47)
!2975 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !114, file: !114, line: 1026, type: !2976, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !2978)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!29, !47, !44, !44, !44, !109}
!2978 = !{!2974, !2979, !2980, !2981, !2982, !2983}
!2979 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2975, file: !114, line: 1026, type: !44)
!2980 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2975, file: !114, line: 1027, type: !44)
!2981 = !DILocalVariable(name: "arg", arg: 4, scope: !2975, file: !114, line: 1028, type: !44)
!2982 = !DILocalVariable(name: "argsize", arg: 5, scope: !2975, file: !114, line: 1028, type: !109)
!2983 = !DILocalVariable(name: "o", scope: !2975, file: !114, line: 1030, type: !121)
!2984 = !DILocation(line: 1026, column: 28, scope: !2975, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 1021, column: 10, scope: !2962)
!2986 = !DILocation(line: 1026, column: 43, scope: !2975, inlinedAt: !2985)
!2987 = !DILocation(line: 1027, column: 36, scope: !2975, inlinedAt: !2985)
!2988 = !DILocation(line: 1028, column: 36, scope: !2975, inlinedAt: !2985)
!2989 = !DILocation(line: 1028, column: 48, scope: !2975, inlinedAt: !2985)
!2990 = !DILocation(line: 1030, column: 3, scope: !2975, inlinedAt: !2985)
!2991 = !DILocation(line: 1030, column: 30, scope: !2975, inlinedAt: !2985)
!2992 = !DILocation(line: 1030, column: 26, scope: !2975, inlinedAt: !2985)
!2993 = !DILocation(line: 179, column: 45, scope: !1519, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 1031, column: 3, scope: !2975, inlinedAt: !2985)
!2995 = !DILocation(line: 180, column: 33, scope: !1519, inlinedAt: !2994)
!2996 = !DILocation(line: 180, column: 57, scope: !1519, inlinedAt: !2994)
!2997 = !DILocation(line: 184, column: 6, scope: !1519, inlinedAt: !2994)
!2998 = !DILocation(line: 184, column: 12, scope: !1519, inlinedAt: !2994)
!2999 = !DILocation(line: 185, column: 8, scope: !1535, inlinedAt: !2994)
!3000 = !DILocation(line: 185, column: 23, scope: !1535, inlinedAt: !2994)
!3001 = !DILocation(line: 185, column: 19, scope: !1535, inlinedAt: !2994)
!3002 = !DILocation(line: 186, column: 5, scope: !1535, inlinedAt: !2994)
!3003 = !DILocation(line: 187, column: 6, scope: !1519, inlinedAt: !2994)
!3004 = !DILocation(line: 187, column: 17, scope: !1519, inlinedAt: !2994)
!3005 = !DILocation(line: 188, column: 6, scope: !1519, inlinedAt: !2994)
!3006 = !DILocation(line: 188, column: 18, scope: !1519, inlinedAt: !2994)
!3007 = !DILocation(line: 1032, column: 10, scope: !2975, inlinedAt: !2985)
!3008 = !DILocation(line: 1033, column: 1, scope: !2975, inlinedAt: !2985)
!3009 = !DILocation(line: 1021, column: 3, scope: !2962)
!3010 = !DILocation(line: 1026, column: 28, scope: !2975)
!3011 = !DILocation(line: 1026, column: 43, scope: !2975)
!3012 = !DILocation(line: 1027, column: 36, scope: !2975)
!3013 = !DILocation(line: 1028, column: 36, scope: !2975)
!3014 = !DILocation(line: 1028, column: 48, scope: !2975)
!3015 = !DILocation(line: 1030, column: 3, scope: !2975)
!3016 = !DILocation(line: 1030, column: 30, scope: !2975)
!3017 = !DILocation(line: 1030, column: 26, scope: !2975)
!3018 = !DILocation(line: 179, column: 45, scope: !1519, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 1031, column: 3, scope: !2975)
!3020 = !DILocation(line: 180, column: 33, scope: !1519, inlinedAt: !3019)
!3021 = !DILocation(line: 180, column: 57, scope: !1519, inlinedAt: !3019)
!3022 = !DILocation(line: 184, column: 6, scope: !1519, inlinedAt: !3019)
!3023 = !DILocation(line: 184, column: 12, scope: !1519, inlinedAt: !3019)
!3024 = !DILocation(line: 185, column: 8, scope: !1535, inlinedAt: !3019)
!3025 = !DILocation(line: 185, column: 23, scope: !1535, inlinedAt: !3019)
!3026 = !DILocation(line: 185, column: 19, scope: !1535, inlinedAt: !3019)
!3027 = !DILocation(line: 186, column: 5, scope: !1535, inlinedAt: !3019)
!3028 = !DILocation(line: 187, column: 6, scope: !1519, inlinedAt: !3019)
!3029 = !DILocation(line: 187, column: 17, scope: !1519, inlinedAt: !3019)
!3030 = !DILocation(line: 188, column: 6, scope: !1519, inlinedAt: !3019)
!3031 = !DILocation(line: 188, column: 18, scope: !1519, inlinedAt: !3019)
!3032 = !DILocation(line: 1032, column: 10, scope: !2975)
!3033 = !DILocation(line: 1033, column: 1, scope: !2975)
!3034 = !DILocation(line: 1032, column: 3, scope: !2975)
!3035 = distinct !DISubprogram(name: "quotearg_custom", scope: !114, file: !114, line: 1036, type: !3036, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !3038)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!29, !44, !44, !44}
!3038 = !{!3039, !3040, !3041}
!3039 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3035, file: !114, line: 1036, type: !44)
!3040 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3035, file: !114, line: 1036, type: !44)
!3041 = !DILocalVariable(name: "arg", arg: 3, scope: !3035, file: !114, line: 1037, type: !44)
!3042 = !DILocation(line: 1036, column: 30, scope: !3035)
!3043 = !DILocation(line: 1036, column: 54, scope: !3035)
!3044 = !DILocation(line: 1037, column: 30, scope: !3035)
!3045 = !DILocation(line: 1018, column: 24, scope: !2962, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 1039, column: 10, scope: !3035)
!3047 = !DILocation(line: 1018, column: 39, scope: !2962, inlinedAt: !3046)
!3048 = !DILocation(line: 1019, column: 32, scope: !2962, inlinedAt: !3046)
!3049 = !DILocation(line: 1019, column: 57, scope: !2962, inlinedAt: !3046)
!3050 = !DILocation(line: 1026, column: 28, scope: !2975, inlinedAt: !3051)
!3051 = distinct !DILocation(line: 1021, column: 10, scope: !2962, inlinedAt: !3046)
!3052 = !DILocation(line: 1026, column: 43, scope: !2975, inlinedAt: !3051)
!3053 = !DILocation(line: 1027, column: 36, scope: !2975, inlinedAt: !3051)
!3054 = !DILocation(line: 1028, column: 36, scope: !2975, inlinedAt: !3051)
!3055 = !DILocation(line: 1028, column: 48, scope: !2975, inlinedAt: !3051)
!3056 = !DILocation(line: 1030, column: 3, scope: !2975, inlinedAt: !3051)
!3057 = !DILocation(line: 1030, column: 30, scope: !2975, inlinedAt: !3051)
!3058 = !DILocation(line: 1030, column: 26, scope: !2975, inlinedAt: !3051)
!3059 = !DILocation(line: 179, column: 45, scope: !1519, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 1031, column: 3, scope: !2975, inlinedAt: !3051)
!3061 = !DILocation(line: 180, column: 33, scope: !1519, inlinedAt: !3060)
!3062 = !DILocation(line: 180, column: 57, scope: !1519, inlinedAt: !3060)
!3063 = !DILocation(line: 184, column: 6, scope: !1519, inlinedAt: !3060)
!3064 = !DILocation(line: 184, column: 12, scope: !1519, inlinedAt: !3060)
!3065 = !DILocation(line: 185, column: 8, scope: !1535, inlinedAt: !3060)
!3066 = !DILocation(line: 185, column: 23, scope: !1535, inlinedAt: !3060)
!3067 = !DILocation(line: 185, column: 19, scope: !1535, inlinedAt: !3060)
!3068 = !DILocation(line: 186, column: 5, scope: !1535, inlinedAt: !3060)
!3069 = !DILocation(line: 187, column: 6, scope: !1519, inlinedAt: !3060)
!3070 = !DILocation(line: 187, column: 17, scope: !1519, inlinedAt: !3060)
!3071 = !DILocation(line: 188, column: 6, scope: !1519, inlinedAt: !3060)
!3072 = !DILocation(line: 188, column: 18, scope: !1519, inlinedAt: !3060)
!3073 = !DILocation(line: 1032, column: 10, scope: !2975, inlinedAt: !3051)
!3074 = !DILocation(line: 1033, column: 1, scope: !2975, inlinedAt: !3051)
!3075 = !DILocation(line: 1039, column: 3, scope: !3035)
!3076 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !114, file: !114, line: 1043, type: !3077, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !3079)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!29, !44, !44, !44, !109}
!3079 = !{!3080, !3081, !3082, !3083}
!3080 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3076, file: !114, line: 1043, type: !44)
!3081 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3076, file: !114, line: 1043, type: !44)
!3082 = !DILocalVariable(name: "arg", arg: 3, scope: !3076, file: !114, line: 1044, type: !44)
!3083 = !DILocalVariable(name: "argsize", arg: 4, scope: !3076, file: !114, line: 1044, type: !109)
!3084 = !DILocation(line: 1043, column: 34, scope: !3076)
!3085 = !DILocation(line: 1043, column: 58, scope: !3076)
!3086 = !DILocation(line: 1044, column: 34, scope: !3076)
!3087 = !DILocation(line: 1044, column: 46, scope: !3076)
!3088 = !DILocation(line: 1026, column: 28, scope: !2975, inlinedAt: !3089)
!3089 = distinct !DILocation(line: 1046, column: 10, scope: !3076)
!3090 = !DILocation(line: 1026, column: 43, scope: !2975, inlinedAt: !3089)
!3091 = !DILocation(line: 1027, column: 36, scope: !2975, inlinedAt: !3089)
!3092 = !DILocation(line: 1028, column: 36, scope: !2975, inlinedAt: !3089)
!3093 = !DILocation(line: 1028, column: 48, scope: !2975, inlinedAt: !3089)
!3094 = !DILocation(line: 1030, column: 3, scope: !2975, inlinedAt: !3089)
!3095 = !DILocation(line: 1030, column: 30, scope: !2975, inlinedAt: !3089)
!3096 = !DILocation(line: 1030, column: 26, scope: !2975, inlinedAt: !3089)
!3097 = !DILocation(line: 179, column: 45, scope: !1519, inlinedAt: !3098)
!3098 = distinct !DILocation(line: 1031, column: 3, scope: !2975, inlinedAt: !3089)
!3099 = !DILocation(line: 180, column: 33, scope: !1519, inlinedAt: !3098)
!3100 = !DILocation(line: 180, column: 57, scope: !1519, inlinedAt: !3098)
!3101 = !DILocation(line: 184, column: 6, scope: !1519, inlinedAt: !3098)
!3102 = !DILocation(line: 184, column: 12, scope: !1519, inlinedAt: !3098)
!3103 = !DILocation(line: 185, column: 8, scope: !1535, inlinedAt: !3098)
!3104 = !DILocation(line: 185, column: 23, scope: !1535, inlinedAt: !3098)
!3105 = !DILocation(line: 185, column: 19, scope: !1535, inlinedAt: !3098)
!3106 = !DILocation(line: 186, column: 5, scope: !1535, inlinedAt: !3098)
!3107 = !DILocation(line: 187, column: 6, scope: !1519, inlinedAt: !3098)
!3108 = !DILocation(line: 187, column: 17, scope: !1519, inlinedAt: !3098)
!3109 = !DILocation(line: 188, column: 6, scope: !1519, inlinedAt: !3098)
!3110 = !DILocation(line: 188, column: 18, scope: !1519, inlinedAt: !3098)
!3111 = !DILocation(line: 1032, column: 10, scope: !2975, inlinedAt: !3089)
!3112 = !DILocation(line: 1033, column: 1, scope: !2975, inlinedAt: !3089)
!3113 = !DILocation(line: 1046, column: 3, scope: !3076)
!3114 = distinct !DISubprogram(name: "quote_n_mem", scope: !114, file: !114, line: 1061, type: !3115, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !3117)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!44, !47, !44, !109}
!3117 = !{!3118, !3119, !3120}
!3118 = !DILocalVariable(name: "n", arg: 1, scope: !3114, file: !114, line: 1061, type: !47)
!3119 = !DILocalVariable(name: "arg", arg: 2, scope: !3114, file: !114, line: 1061, type: !44)
!3120 = !DILocalVariable(name: "argsize", arg: 3, scope: !3114, file: !114, line: 1061, type: !109)
!3121 = !DILocation(line: 1061, column: 18, scope: !3114)
!3122 = !DILocation(line: 1061, column: 33, scope: !3114)
!3123 = !DILocation(line: 1061, column: 45, scope: !3114)
!3124 = !DILocation(line: 1063, column: 10, scope: !3114)
!3125 = !DILocation(line: 1063, column: 3, scope: !3114)
!3126 = distinct !DISubprogram(name: "quote_mem", scope: !114, file: !114, line: 1067, type: !3127, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !3129)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!44, !44, !109}
!3129 = !{!3130, !3131}
!3130 = !DILocalVariable(name: "arg", arg: 1, scope: !3126, file: !114, line: 1067, type: !44)
!3131 = !DILocalVariable(name: "argsize", arg: 2, scope: !3126, file: !114, line: 1067, type: !109)
!3132 = !DILocation(line: 1067, column: 24, scope: !3126)
!3133 = !DILocation(line: 1067, column: 36, scope: !3126)
!3134 = !DILocation(line: 1061, column: 18, scope: !3114, inlinedAt: !3135)
!3135 = distinct !DILocation(line: 1069, column: 10, scope: !3126)
!3136 = !DILocation(line: 1061, column: 33, scope: !3114, inlinedAt: !3135)
!3137 = !DILocation(line: 1061, column: 45, scope: !3114, inlinedAt: !3135)
!3138 = !DILocation(line: 1063, column: 10, scope: !3114, inlinedAt: !3135)
!3139 = !DILocation(line: 1069, column: 3, scope: !3126)
!3140 = distinct !DISubprogram(name: "quote_n", scope: !114, file: !114, line: 1073, type: !3141, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !3143)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!44, !47, !44}
!3143 = !{!3144, !3145}
!3144 = !DILocalVariable(name: "n", arg: 1, scope: !3140, file: !114, line: 1073, type: !47)
!3145 = !DILocalVariable(name: "arg", arg: 2, scope: !3140, file: !114, line: 1073, type: !44)
!3146 = !DILocation(line: 1073, column: 14, scope: !3140)
!3147 = !DILocation(line: 1073, column: 29, scope: !3140)
!3148 = !DILocation(line: 1061, column: 18, scope: !3114, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 1075, column: 10, scope: !3140)
!3150 = !DILocation(line: 1061, column: 33, scope: !3114, inlinedAt: !3149)
!3151 = !DILocation(line: 1061, column: 45, scope: !3114, inlinedAt: !3149)
!3152 = !DILocation(line: 1063, column: 10, scope: !3114, inlinedAt: !3149)
!3153 = !DILocation(line: 1075, column: 3, scope: !3140)
!3154 = distinct !DISubprogram(name: "quote", scope: !114, file: !114, line: 1079, type: !3155, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !3157)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!44, !44}
!3157 = !{!3158}
!3158 = !DILocalVariable(name: "arg", arg: 1, scope: !3154, file: !114, line: 1079, type: !44)
!3159 = !DILocation(line: 1079, column: 20, scope: !3154)
!3160 = !DILocation(line: 1073, column: 14, scope: !3140, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 1081, column: 10, scope: !3154)
!3162 = !DILocation(line: 1073, column: 29, scope: !3140, inlinedAt: !3161)
!3163 = !DILocation(line: 1061, column: 18, scope: !3114, inlinedAt: !3164)
!3164 = distinct !DILocation(line: 1075, column: 10, scope: !3140, inlinedAt: !3161)
!3165 = !DILocation(line: 1061, column: 33, scope: !3114, inlinedAt: !3164)
!3166 = !DILocation(line: 1061, column: 45, scope: !3114, inlinedAt: !3164)
!3167 = !DILocation(line: 1063, column: 10, scope: !3114, inlinedAt: !3164)
!3168 = !DILocation(line: 1081, column: 3, scope: !3154)
!3169 = distinct !DISubprogram(name: "version_etc_arn", scope: !179, file: !179, line: 62, type: !3170, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !175, retainedNodes: !3225)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{null, !3172, !44, !44, !44, !3224, !109}
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3174, line: 7, baseType: !3175)
!3174 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3176, line: 49, size: 1728, elements: !3177)
!3176 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3177 = !{!3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3193, !3195, !3196, !3197, !3198, !3199, !3201, !3205, !3208, !3210, !3213, !3216, !3217, !3218, !3219, !3220}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3175, file: !3176, line: 51, baseType: !47, size: 32)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3175, file: !3176, line: 54, baseType: !29, size: 64, offset: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3175, file: !3176, line: 55, baseType: !29, size: 64, offset: 128)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3175, file: !3176, line: 56, baseType: !29, size: 64, offset: 192)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3175, file: !3176, line: 57, baseType: !29, size: 64, offset: 256)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3175, file: !3176, line: 58, baseType: !29, size: 64, offset: 320)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3175, file: !3176, line: 59, baseType: !29, size: 64, offset: 384)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3175, file: !3176, line: 60, baseType: !29, size: 64, offset: 448)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3175, file: !3176, line: 61, baseType: !29, size: 64, offset: 512)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3175, file: !3176, line: 64, baseType: !29, size: 64, offset: 576)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3175, file: !3176, line: 65, baseType: !29, size: 64, offset: 640)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3175, file: !3176, line: 66, baseType: !29, size: 64, offset: 704)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3175, file: !3176, line: 68, baseType: !3191, size: 64, offset: 768)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3176, line: 36, flags: DIFlagFwdDecl)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3175, file: !3176, line: 70, baseType: !3194, size: 64, offset: 832)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3175, file: !3176, line: 72, baseType: !47, size: 32, offset: 896)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3175, file: !3176, line: 73, baseType: !47, size: 32, offset: 928)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3175, file: !3176, line: 74, baseType: !1237, size: 64, offset: 960)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3175, file: !3176, line: 77, baseType: !108, size: 16, offset: 1024)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3175, file: !3176, line: 78, baseType: !3200, size: 8, offset: 1040)
!3200 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3175, file: !3176, line: 79, baseType: !3202, size: 8, offset: 1048)
!3202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 8, elements: !3203)
!3203 = !{!3204}
!3204 = !DISubrange(count: 1)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3175, file: !3176, line: 81, baseType: !3206, size: 64, offset: 1088)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3176, line: 43, baseType: null)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3175, file: !3176, line: 89, baseType: !3209, size: 64, offset: 1152)
!3209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !35, line: 151, baseType: !1238)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3175, file: !3176, line: 91, baseType: !3211, size: 64, offset: 1216)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !3176, line: 37, flags: DIFlagFwdDecl)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3175, file: !3176, line: 92, baseType: !3214, size: 64, offset: 1280)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !3176, line: 38, flags: DIFlagFwdDecl)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3175, file: !3176, line: 93, baseType: !3194, size: 64, offset: 1344)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3175, file: !3176, line: 94, baseType: !31, size: 64, offset: 1408)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3175, file: !3176, line: 95, baseType: !109, size: 64, offset: 1472)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3175, file: !3176, line: 96, baseType: !47, size: 32, offset: 1536)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3175, file: !3176, line: 98, baseType: !3221, size: 160, offset: 1568)
!3221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 160, elements: !3222)
!3222 = !{!3223}
!3223 = !DISubrange(count: 20)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!3225 = !{!3226, !3227, !3228, !3229, !3230, !3231}
!3226 = !DILocalVariable(name: "stream", arg: 1, scope: !3169, file: !179, line: 62, type: !3172)
!3227 = !DILocalVariable(name: "command_name", arg: 2, scope: !3169, file: !179, line: 63, type: !44)
!3228 = !DILocalVariable(name: "package", arg: 3, scope: !3169, file: !179, line: 63, type: !44)
!3229 = !DILocalVariable(name: "version", arg: 4, scope: !3169, file: !179, line: 64, type: !44)
!3230 = !DILocalVariable(name: "authors", arg: 5, scope: !3169, file: !179, line: 65, type: !3224)
!3231 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3169, file: !179, line: 65, type: !109)
!3232 = !DILocation(line: 62, column: 24, scope: !3169)
!3233 = !DILocation(line: 63, column: 30, scope: !3169)
!3234 = !DILocation(line: 63, column: 56, scope: !3169)
!3235 = !DILocation(line: 64, column: 30, scope: !3169)
!3236 = !DILocation(line: 65, column: 39, scope: !3169)
!3237 = !DILocation(line: 65, column: 55, scope: !3169)
!3238 = !DILocation(line: 67, column: 7, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3169, file: !179, line: 67, column: 7)
!3240 = !DILocation(line: 67, column: 7, scope: !3169)
!3241 = !DILocation(line: 68, column: 5, scope: !3239)
!3242 = !DILocation(line: 70, column: 5, scope: !3239)
!3243 = !DILocation(line: 84, column: 3, scope: !3169)
!3244 = !DILocation(line: 86, column: 3, scope: !3169)
!3245 = !DILocation(line: 95, column: 3, scope: !3169)
!3246 = !DILocation(line: 99, column: 7, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3169, file: !179, line: 96, column: 5)
!3248 = !DILocation(line: 102, column: 7, scope: !3247)
!3249 = !DILocation(line: 103, column: 7, scope: !3247)
!3250 = !DILocation(line: 106, column: 7, scope: !3247)
!3251 = !DILocation(line: 107, column: 7, scope: !3247)
!3252 = !DILocation(line: 110, column: 7, scope: !3247)
!3253 = !DILocation(line: 112, column: 7, scope: !3247)
!3254 = !DILocation(line: 117, column: 7, scope: !3247)
!3255 = !DILocation(line: 119, column: 7, scope: !3247)
!3256 = !DILocation(line: 124, column: 7, scope: !3247)
!3257 = !DILocation(line: 126, column: 7, scope: !3247)
!3258 = !DILocation(line: 131, column: 7, scope: !3247)
!3259 = !DILocation(line: 134, column: 7, scope: !3247)
!3260 = !DILocation(line: 139, column: 7, scope: !3247)
!3261 = !DILocation(line: 142, column: 7, scope: !3247)
!3262 = !DILocation(line: 147, column: 7, scope: !3247)
!3263 = !DILocation(line: 151, column: 7, scope: !3247)
!3264 = !DILocation(line: 156, column: 7, scope: !3247)
!3265 = !DILocation(line: 160, column: 7, scope: !3247)
!3266 = !DILocation(line: 167, column: 7, scope: !3247)
!3267 = !DILocation(line: 171, column: 7, scope: !3247)
!3268 = !DILocation(line: 173, column: 1, scope: !3169)
!3269 = distinct !DISubprogram(name: "version_etc_ar", scope: !179, file: !179, line: 180, type: !3270, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !175, retainedNodes: !3272)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{null, !3172, !44, !44, !44, !3224}
!3272 = !{!3273, !3274, !3275, !3276, !3277, !3278}
!3273 = !DILocalVariable(name: "stream", arg: 1, scope: !3269, file: !179, line: 180, type: !3172)
!3274 = !DILocalVariable(name: "command_name", arg: 2, scope: !3269, file: !179, line: 181, type: !44)
!3275 = !DILocalVariable(name: "package", arg: 3, scope: !3269, file: !179, line: 181, type: !44)
!3276 = !DILocalVariable(name: "version", arg: 4, scope: !3269, file: !179, line: 182, type: !44)
!3277 = !DILocalVariable(name: "authors", arg: 5, scope: !3269, file: !179, line: 182, type: !3224)
!3278 = !DILocalVariable(name: "n_authors", scope: !3269, file: !179, line: 184, type: !109)
!3279 = !DILocation(line: 180, column: 23, scope: !3269)
!3280 = !DILocation(line: 181, column: 29, scope: !3269)
!3281 = !DILocation(line: 181, column: 55, scope: !3269)
!3282 = !DILocation(line: 182, column: 29, scope: !3269)
!3283 = !DILocation(line: 182, column: 59, scope: !3269)
!3284 = !DILocation(line: 184, column: 10, scope: !3269)
!3285 = !DILocation(line: 186, column: 8, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3269, file: !179, line: 186, column: 3)
!3287 = !DILocation(line: 0, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3286, file: !179, line: 186, column: 3)
!3289 = !DILocation(line: 186, column: 23, scope: !3288)
!3290 = !DILocation(line: 186, column: 3, scope: !3286)
!3291 = !DILocation(line: 186, column: 52, scope: !3288)
!3292 = distinct !{!3292, !3290, !3293}
!3293 = !DILocation(line: 187, column: 5, scope: !3286)
!3294 = !DILocation(line: 188, column: 3, scope: !3269)
!3295 = !DILocation(line: 189, column: 1, scope: !3269)
!3296 = distinct !DISubprogram(name: "version_etc_va", scope: !179, file: !179, line: 196, type: !3297, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !175, retainedNodes: !3306)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{null, !3172, !44, !44, !44, !3299}
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !176, line: 189, size: 192, elements: !3301)
!3301 = !{!3302, !3303, !3304, !3305}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3300, file: !176, line: 189, baseType: !7, size: 32)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3300, file: !176, line: 189, baseType: !7, size: 32, offset: 32)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3300, file: !176, line: 189, baseType: !31, size: 64, offset: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3300, file: !176, line: 189, baseType: !31, size: 64, offset: 128)
!3306 = !{!3307, !3308, !3309, !3310, !3311, !3312, !3313}
!3307 = !DILocalVariable(name: "stream", arg: 1, scope: !3296, file: !179, line: 196, type: !3172)
!3308 = !DILocalVariable(name: "command_name", arg: 2, scope: !3296, file: !179, line: 197, type: !44)
!3309 = !DILocalVariable(name: "package", arg: 3, scope: !3296, file: !179, line: 197, type: !44)
!3310 = !DILocalVariable(name: "version", arg: 4, scope: !3296, file: !179, line: 198, type: !44)
!3311 = !DILocalVariable(name: "authors", arg: 5, scope: !3296, file: !179, line: 198, type: !3299)
!3312 = !DILocalVariable(name: "n_authors", scope: !3296, file: !179, line: 200, type: !109)
!3313 = !DILocalVariable(name: "authtab", scope: !3296, file: !179, line: 201, type: !3314)
!3314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 640, elements: !117)
!3315 = !DILocation(line: 196, column: 23, scope: !3296)
!3316 = !DILocation(line: 197, column: 29, scope: !3296)
!3317 = !DILocation(line: 197, column: 55, scope: !3296)
!3318 = !DILocation(line: 198, column: 29, scope: !3296)
!3319 = !DILocation(line: 198, column: 46, scope: !3296)
!3320 = !DILocation(line: 201, column: 3, scope: !3296)
!3321 = !DILocation(line: 201, column: 15, scope: !3296)
!3322 = !DILocation(line: 200, column: 10, scope: !3296)
!3323 = !DILocation(line: 205, column: 35, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3325, file: !179, line: 203, column: 3)
!3325 = distinct !DILexicalBlock(scope: !3296, file: !179, line: 203, column: 3)
!3326 = !DILocation(line: 205, column: 14, scope: !3324)
!3327 = !DILocation(line: 205, column: 33, scope: !3324)
!3328 = !DILocation(line: 205, column: 67, scope: !3324)
!3329 = !DILocation(line: 203, column: 3, scope: !3325)
!3330 = !DILocation(line: 0, scope: !3324)
!3331 = !DILocation(line: 208, column: 3, scope: !3296)
!3332 = !DILocation(line: 210, column: 1, scope: !3296)
!3333 = distinct !DISubprogram(name: "version_etc", scope: !179, file: !179, line: 227, type: !3334, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !175, retainedNodes: !3336)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{null, !3172, !44, !44, !44, null}
!3336 = !{!3337, !3338, !3339, !3340, !3341}
!3337 = !DILocalVariable(name: "stream", arg: 1, scope: !3333, file: !179, line: 227, type: !3172)
!3338 = !DILocalVariable(name: "command_name", arg: 2, scope: !3333, file: !179, line: 228, type: !44)
!3339 = !DILocalVariable(name: "package", arg: 3, scope: !3333, file: !179, line: 228, type: !44)
!3340 = !DILocalVariable(name: "version", arg: 4, scope: !3333, file: !179, line: 229, type: !44)
!3341 = !DILocalVariable(name: "authors", scope: !3333, file: !179, line: 231, type: !3342)
!3342 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3343, line: 52, baseType: !3344)
!3343 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3345, line: 48, baseType: !3346)
!3345 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !176, line: 231, baseType: !3347)
!3347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3300, size: 192, elements: !3203)
!3348 = !DILocation(line: 227, column: 20, scope: !3333)
!3349 = !DILocation(line: 228, column: 26, scope: !3333)
!3350 = !DILocation(line: 228, column: 52, scope: !3333)
!3351 = !DILocation(line: 229, column: 26, scope: !3333)
!3352 = !DILocation(line: 231, column: 3, scope: !3333)
!3353 = !DILocation(line: 231, column: 11, scope: !3333)
!3354 = !DILocation(line: 233, column: 3, scope: !3333)
!3355 = !DILocation(line: 234, column: 3, scope: !3333)
!3356 = !DILocation(line: 235, column: 3, scope: !3333)
!3357 = !DILocation(line: 236, column: 1, scope: !3333)
!3358 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !179, file: !179, line: 239, type: !656, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !175, retainedNodes: !57)
!3359 = !DILocation(line: 245, column: 3, scope: !3358)
!3360 = !DILocation(line: 251, column: 3, scope: !3358)
!3361 = !DILocation(line: 256, column: 3, scope: !3358)
!3362 = !DILocation(line: 258, column: 1, scope: !3358)
!3363 = distinct !DISubprogram(name: "xnmalloc", scope: !187, file: !187, line: 99, type: !1096, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !183, retainedNodes: !3364)
!3364 = !{!3365, !3366}
!3365 = !DILocalVariable(name: "n", arg: 1, scope: !3363, file: !187, line: 99, type: !109)
!3366 = !DILocalVariable(name: "s", arg: 2, scope: !3363, file: !187, line: 99, type: !109)
!3367 = !DILocation(line: 99, column: 18, scope: !3363)
!3368 = !DILocation(line: 99, column: 28, scope: !3363)
!3369 = !DILocation(line: 101, column: 7, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3363, file: !187, line: 101, column: 7)
!3371 = !DILocation(line: 101, column: 7, scope: !3363)
!3372 = !DILocation(line: 102, column: 5, scope: !3370)
!3373 = !DILocation(line: 103, column: 21, scope: !3363)
!3374 = !DILocalVariable(name: "n", arg: 1, scope: !3375, file: !3376, line: 39, type: !109)
!3375 = distinct !DISubprogram(name: "xmalloc", scope: !3376, file: !3376, line: 39, type: !3377, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !183, retainedNodes: !3379)
!3376 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!31, !109}
!3379 = !{!3374, !3380}
!3380 = !DILocalVariable(name: "p", scope: !3375, file: !3376, line: 41, type: !31)
!3381 = !DILocation(line: 39, column: 17, scope: !3375, inlinedAt: !3382)
!3382 = distinct !DILocation(line: 103, column: 10, scope: !3363)
!3383 = !DILocation(line: 41, column: 13, scope: !3375, inlinedAt: !3382)
!3384 = !DILocation(line: 41, column: 9, scope: !3375, inlinedAt: !3382)
!3385 = !DILocation(line: 42, column: 8, scope: !3386, inlinedAt: !3382)
!3386 = distinct !DILexicalBlock(scope: !3375, file: !3376, line: 42, column: 7)
!3387 = !DILocation(line: 42, column: 15, scope: !3386, inlinedAt: !3382)
!3388 = !DILocation(line: 42, column: 10, scope: !3386, inlinedAt: !3382)
!3389 = !DILocation(line: 43, column: 5, scope: !3386, inlinedAt: !3382)
!3390 = !DILocation(line: 103, column: 3, scope: !3363)
!3391 = !DILocation(line: 39, column: 17, scope: !3375)
!3392 = !DILocation(line: 41, column: 13, scope: !3375)
!3393 = !DILocation(line: 41, column: 9, scope: !3375)
!3394 = !DILocation(line: 42, column: 8, scope: !3386)
!3395 = !DILocation(line: 42, column: 15, scope: !3386)
!3396 = !DILocation(line: 42, column: 10, scope: !3386)
!3397 = !DILocation(line: 43, column: 5, scope: !3386)
!3398 = !DILocation(line: 44, column: 3, scope: !3375)
!3399 = distinct !DISubprogram(name: "xnrealloc", scope: !187, file: !187, line: 112, type: !3400, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !183, retainedNodes: !3402)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!31, !31, !109, !109}
!3402 = !{!3403, !3404, !3405}
!3403 = !DILocalVariable(name: "p", arg: 1, scope: !3399, file: !187, line: 112, type: !31)
!3404 = !DILocalVariable(name: "n", arg: 2, scope: !3399, file: !187, line: 112, type: !109)
!3405 = !DILocalVariable(name: "s", arg: 3, scope: !3399, file: !187, line: 112, type: !109)
!3406 = !DILocation(line: 112, column: 18, scope: !3399)
!3407 = !DILocation(line: 112, column: 28, scope: !3399)
!3408 = !DILocation(line: 112, column: 38, scope: !3399)
!3409 = !DILocation(line: 114, column: 7, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3399, file: !187, line: 114, column: 7)
!3411 = !DILocation(line: 114, column: 7, scope: !3399)
!3412 = !DILocation(line: 115, column: 5, scope: !3410)
!3413 = !DILocation(line: 116, column: 25, scope: !3399)
!3414 = !DILocalVariable(name: "p", arg: 1, scope: !3415, file: !3376, line: 51, type: !31)
!3415 = distinct !DISubprogram(name: "xrealloc", scope: !3376, file: !3376, line: 51, type: !3416, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !183, retainedNodes: !3418)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!31, !31, !109}
!3418 = !{!3414, !3419}
!3419 = !DILocalVariable(name: "n", arg: 2, scope: !3415, file: !3376, line: 51, type: !109)
!3420 = !DILocation(line: 51, column: 17, scope: !3415, inlinedAt: !3421)
!3421 = distinct !DILocation(line: 116, column: 10, scope: !3399)
!3422 = !DILocation(line: 51, column: 27, scope: !3415, inlinedAt: !3421)
!3423 = !DILocation(line: 53, column: 8, scope: !3424, inlinedAt: !3421)
!3424 = distinct !DILexicalBlock(scope: !3415, file: !3376, line: 53, column: 7)
!3425 = !DILocation(line: 53, column: 13, scope: !3424, inlinedAt: !3421)
!3426 = !DILocation(line: 53, column: 10, scope: !3424, inlinedAt: !3421)
!3427 = !DILocation(line: 57, column: 7, scope: !3428, inlinedAt: !3421)
!3428 = distinct !DILexicalBlock(scope: !3424, file: !3376, line: 54, column: 5)
!3429 = !DILocation(line: 58, column: 7, scope: !3428, inlinedAt: !3421)
!3430 = !DILocation(line: 61, column: 7, scope: !3415, inlinedAt: !3421)
!3431 = !DILocation(line: 62, column: 8, scope: !3432, inlinedAt: !3421)
!3432 = distinct !DILexicalBlock(scope: !3415, file: !3376, line: 62, column: 7)
!3433 = !DILocation(line: 62, column: 13, scope: !3432, inlinedAt: !3421)
!3434 = !DILocation(line: 62, column: 10, scope: !3432, inlinedAt: !3421)
!3435 = !DILocation(line: 63, column: 5, scope: !3432, inlinedAt: !3421)
!3436 = !DILocation(line: 0, scope: !3415, inlinedAt: !3421)
!3437 = !DILocation(line: 116, column: 3, scope: !3399)
!3438 = !DILocation(line: 51, column: 17, scope: !3415)
!3439 = !DILocation(line: 51, column: 27, scope: !3415)
!3440 = !DILocation(line: 53, column: 8, scope: !3424)
!3441 = !DILocation(line: 53, column: 13, scope: !3424)
!3442 = !DILocation(line: 53, column: 10, scope: !3424)
!3443 = !DILocation(line: 57, column: 7, scope: !3428)
!3444 = !DILocation(line: 58, column: 7, scope: !3428)
!3445 = !DILocation(line: 61, column: 7, scope: !3415)
!3446 = !DILocation(line: 62, column: 8, scope: !3432)
!3447 = !DILocation(line: 62, column: 13, scope: !3432)
!3448 = !DILocation(line: 62, column: 10, scope: !3432)
!3449 = !DILocation(line: 63, column: 5, scope: !3432)
!3450 = !DILocation(line: 0, scope: !3415)
!3451 = !DILocation(line: 65, column: 1, scope: !3415)
!3452 = !DILocation(line: 174, column: 19, scope: !188)
!3453 = !DILocation(line: 174, column: 30, scope: !188)
!3454 = !DILocation(line: 174, column: 41, scope: !188)
!3455 = !DILocation(line: 176, column: 14, scope: !188)
!3456 = !DILocation(line: 176, column: 10, scope: !188)
!3457 = !DILocation(line: 178, column: 9, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !188, file: !187, line: 178, column: 7)
!3459 = !DILocation(line: 178, column: 7, scope: !188)
!3460 = !DILocation(line: 180, column: 13, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3462, file: !187, line: 180, column: 11)
!3462 = distinct !DILexicalBlock(scope: !3458, file: !187, line: 179, column: 5)
!3463 = !DILocation(line: 180, column: 11, scope: !3462)
!3464 = !DILocation(line: 188, column: 30, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3461, file: !187, line: 181, column: 9)
!3466 = !DILocation(line: 189, column: 16, scope: !3465)
!3467 = !DILocation(line: 189, column: 13, scope: !3465)
!3468 = !DILocation(line: 190, column: 9, scope: !3465)
!3469 = !DILocation(line: 0, scope: !3465)
!3470 = !DILocation(line: 191, column: 11, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3462, file: !187, line: 191, column: 11)
!3472 = !DILocation(line: 191, column: 11, scope: !3462)
!3473 = !DILocation(line: 206, column: 7, scope: !188)
!3474 = !DILocation(line: 207, column: 25, scope: !188)
!3475 = !DILocation(line: 51, column: 17, scope: !3415, inlinedAt: !3476)
!3476 = distinct !DILocation(line: 207, column: 10, scope: !188)
!3477 = !DILocation(line: 51, column: 27, scope: !3415, inlinedAt: !3476)
!3478 = !DILocation(line: 53, column: 10, scope: !3424, inlinedAt: !3476)
!3479 = !DILocation(line: 192, column: 9, scope: !3471)
!3480 = !DILocation(line: 200, column: 69, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3482, file: !187, line: 200, column: 11)
!3482 = distinct !DILexicalBlock(scope: !3458, file: !187, line: 195, column: 5)
!3483 = !DILocation(line: 201, column: 11, scope: !3481)
!3484 = !DILocation(line: 200, column: 11, scope: !3482)
!3485 = !DILocation(line: 202, column: 9, scope: !3481)
!3486 = !DILocation(line: 203, column: 14, scope: !3482)
!3487 = !DILocation(line: 203, column: 18, scope: !3482)
!3488 = !DILocation(line: 203, column: 9, scope: !3482)
!3489 = !DILocation(line: 53, column: 8, scope: !3424, inlinedAt: !3476)
!3490 = !DILocation(line: 57, column: 7, scope: !3428, inlinedAt: !3476)
!3491 = !DILocation(line: 58, column: 7, scope: !3428, inlinedAt: !3476)
!3492 = !DILocation(line: 61, column: 7, scope: !3415, inlinedAt: !3476)
!3493 = !DILocation(line: 62, column: 8, scope: !3432, inlinedAt: !3476)
!3494 = !DILocation(line: 62, column: 13, scope: !3432, inlinedAt: !3476)
!3495 = !DILocation(line: 62, column: 10, scope: !3432, inlinedAt: !3476)
!3496 = !DILocation(line: 63, column: 5, scope: !3432, inlinedAt: !3476)
!3497 = !DILocation(line: 0, scope: !3415, inlinedAt: !3476)
!3498 = !DILocation(line: 207, column: 3, scope: !188)
!3499 = distinct !DISubprogram(name: "xcharalloc", scope: !187, file: !187, line: 216, type: !2455, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !183, retainedNodes: !3500)
!3500 = !{!3501}
!3501 = !DILocalVariable(name: "n", arg: 1, scope: !3499, file: !187, line: 216, type: !109)
!3502 = !DILocation(line: 216, column: 20, scope: !3499)
!3503 = !DILocation(line: 39, column: 17, scope: !3375, inlinedAt: !3504)
!3504 = distinct !DILocation(line: 218, column: 10, scope: !3499)
!3505 = !DILocation(line: 41, column: 13, scope: !3375, inlinedAt: !3504)
!3506 = !DILocation(line: 41, column: 9, scope: !3375, inlinedAt: !3504)
!3507 = !DILocation(line: 42, column: 8, scope: !3386, inlinedAt: !3504)
!3508 = !DILocation(line: 42, column: 15, scope: !3386, inlinedAt: !3504)
!3509 = !DILocation(line: 42, column: 10, scope: !3386, inlinedAt: !3504)
!3510 = !DILocation(line: 43, column: 5, scope: !3386, inlinedAt: !3504)
!3511 = !DILocation(line: 218, column: 3, scope: !3499)
!3512 = distinct !DISubprogram(name: "x2realloc", scope: !3376, file: !3376, line: 74, type: !3513, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !183, retainedNodes: !3515)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!31, !31, !191}
!3515 = !{!3516, !3517}
!3516 = !DILocalVariable(name: "p", arg: 1, scope: !3512, file: !3376, line: 74, type: !31)
!3517 = !DILocalVariable(name: "pn", arg: 2, scope: !3512, file: !3376, line: 74, type: !191)
!3518 = !DILocation(line: 74, column: 18, scope: !3512)
!3519 = !DILocation(line: 74, column: 29, scope: !3512)
!3520 = !DILocation(line: 174, column: 19, scope: !188, inlinedAt: !3521)
!3521 = distinct !DILocation(line: 76, column: 10, scope: !3512)
!3522 = !DILocation(line: 174, column: 30, scope: !188, inlinedAt: !3521)
!3523 = !DILocation(line: 174, column: 41, scope: !188, inlinedAt: !3521)
!3524 = !DILocation(line: 176, column: 14, scope: !188, inlinedAt: !3521)
!3525 = !DILocation(line: 176, column: 10, scope: !188, inlinedAt: !3521)
!3526 = !DILocation(line: 178, column: 9, scope: !3458, inlinedAt: !3521)
!3527 = !DILocation(line: 178, column: 7, scope: !188, inlinedAt: !3521)
!3528 = !DILocation(line: 180, column: 13, scope: !3461, inlinedAt: !3521)
!3529 = !DILocation(line: 180, column: 11, scope: !3462, inlinedAt: !3521)
!3530 = !DILocation(line: 191, column: 11, scope: !3471, inlinedAt: !3521)
!3531 = !DILocation(line: 191, column: 11, scope: !3462, inlinedAt: !3521)
!3532 = !DILocation(line: 206, column: 7, scope: !188, inlinedAt: !3521)
!3533 = !DILocation(line: 51, column: 17, scope: !3415, inlinedAt: !3534)
!3534 = distinct !DILocation(line: 207, column: 10, scope: !188, inlinedAt: !3521)
!3535 = !DILocation(line: 51, column: 27, scope: !3415, inlinedAt: !3534)
!3536 = !DILocation(line: 53, column: 10, scope: !3424, inlinedAt: !3534)
!3537 = !DILocation(line: 192, column: 9, scope: !3471, inlinedAt: !3521)
!3538 = !DILocation(line: 201, column: 11, scope: !3481, inlinedAt: !3521)
!3539 = !DILocation(line: 200, column: 11, scope: !3482, inlinedAt: !3521)
!3540 = !DILocation(line: 202, column: 9, scope: !3481, inlinedAt: !3521)
!3541 = !DILocation(line: 203, column: 14, scope: !3482, inlinedAt: !3521)
!3542 = !DILocation(line: 203, column: 18, scope: !3482, inlinedAt: !3521)
!3543 = !DILocation(line: 203, column: 9, scope: !3482, inlinedAt: !3521)
!3544 = !DILocation(line: 53, column: 8, scope: !3424, inlinedAt: !3534)
!3545 = !DILocation(line: 57, column: 7, scope: !3428, inlinedAt: !3534)
!3546 = !DILocation(line: 58, column: 7, scope: !3428, inlinedAt: !3534)
!3547 = !DILocation(line: 61, column: 7, scope: !3415, inlinedAt: !3534)
!3548 = !DILocation(line: 62, column: 8, scope: !3432, inlinedAt: !3534)
!3549 = !DILocation(line: 62, column: 13, scope: !3432, inlinedAt: !3534)
!3550 = !DILocation(line: 62, column: 10, scope: !3432, inlinedAt: !3534)
!3551 = !DILocation(line: 63, column: 5, scope: !3432, inlinedAt: !3534)
!3552 = !DILocation(line: 0, scope: !3415, inlinedAt: !3534)
!3553 = !DILocation(line: 76, column: 3, scope: !3512)
!3554 = distinct !DISubprogram(name: "xzalloc", scope: !3376, file: !3376, line: 84, type: !3377, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !183, retainedNodes: !3555)
!3555 = !{!3556}
!3556 = !DILocalVariable(name: "s", arg: 1, scope: !3554, file: !3376, line: 84, type: !109)
!3557 = !DILocation(line: 84, column: 17, scope: !3554)
!3558 = !DILocation(line: 39, column: 17, scope: !3375, inlinedAt: !3559)
!3559 = distinct !DILocation(line: 86, column: 18, scope: !3554)
!3560 = !DILocation(line: 41, column: 13, scope: !3375, inlinedAt: !3559)
!3561 = !DILocation(line: 41, column: 9, scope: !3375, inlinedAt: !3559)
!3562 = !DILocation(line: 42, column: 8, scope: !3386, inlinedAt: !3559)
!3563 = !DILocation(line: 42, column: 15, scope: !3386, inlinedAt: !3559)
!3564 = !DILocation(line: 42, column: 10, scope: !3386, inlinedAt: !3559)
!3565 = !DILocation(line: 43, column: 5, scope: !3386, inlinedAt: !3559)
!3566 = !DILocation(line: 86, column: 10, scope: !3554)
!3567 = !DILocation(line: 86, column: 3, scope: !3554)
!3568 = distinct !DISubprogram(name: "xcalloc", scope: !3376, file: !3376, line: 93, type: !1096, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !183, retainedNodes: !3569)
!3569 = !{!3570, !3571, !3572}
!3570 = !DILocalVariable(name: "n", arg: 1, scope: !3568, file: !3376, line: 93, type: !109)
!3571 = !DILocalVariable(name: "s", arg: 2, scope: !3568, file: !3376, line: 93, type: !109)
!3572 = !DILocalVariable(name: "p", scope: !3568, file: !3376, line: 95, type: !31)
!3573 = !DILocation(line: 93, column: 17, scope: !3568)
!3574 = !DILocation(line: 93, column: 27, scope: !3568)
!3575 = !DILocation(line: 100, column: 7, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3568, file: !3376, line: 100, column: 7)
!3577 = !DILocation(line: 101, column: 7, scope: !3576)
!3578 = !DILocation(line: 101, column: 18, scope: !3576)
!3579 = !DILocation(line: 95, column: 9, scope: !3568)
!3580 = !DILocation(line: 101, column: 16, scope: !3576)
!3581 = !DILocation(line: 100, column: 7, scope: !3568)
!3582 = !DILocation(line: 102, column: 5, scope: !3576)
!3583 = !DILocation(line: 103, column: 3, scope: !3568)
!3584 = distinct !DISubprogram(name: "xmemdup", scope: !3376, file: !3376, line: 111, type: !3585, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !183, retainedNodes: !3589)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!31, !3587, !109}
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3589 = !{!3590, !3591}
!3590 = !DILocalVariable(name: "p", arg: 1, scope: !3584, file: !3376, line: 111, type: !3587)
!3591 = !DILocalVariable(name: "s", arg: 2, scope: !3584, file: !3376, line: 111, type: !109)
!3592 = !DILocation(line: 111, column: 22, scope: !3584)
!3593 = !DILocation(line: 111, column: 32, scope: !3584)
!3594 = !DILocation(line: 39, column: 17, scope: !3375, inlinedAt: !3595)
!3595 = distinct !DILocation(line: 113, column: 18, scope: !3584)
!3596 = !DILocation(line: 41, column: 13, scope: !3375, inlinedAt: !3595)
!3597 = !DILocation(line: 41, column: 9, scope: !3375, inlinedAt: !3595)
!3598 = !DILocation(line: 42, column: 8, scope: !3386, inlinedAt: !3595)
!3599 = !DILocation(line: 42, column: 15, scope: !3386, inlinedAt: !3595)
!3600 = !DILocation(line: 42, column: 10, scope: !3386, inlinedAt: !3595)
!3601 = !DILocation(line: 43, column: 5, scope: !3386, inlinedAt: !3595)
!3602 = !DILocation(line: 113, column: 10, scope: !3584)
!3603 = !DILocation(line: 113, column: 3, scope: !3584)
!3604 = distinct !DISubprogram(name: "xstrdup", scope: !3376, file: !3376, line: 119, type: !2659, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !183, retainedNodes: !3605)
!3605 = !{!3606}
!3606 = !DILocalVariable(name: "string", arg: 1, scope: !3604, file: !3376, line: 119, type: !44)
!3607 = !DILocation(line: 119, column: 22, scope: !3604)
!3608 = !DILocation(line: 121, column: 27, scope: !3604)
!3609 = !DILocation(line: 121, column: 43, scope: !3604)
!3610 = !DILocation(line: 111, column: 22, scope: !3584, inlinedAt: !3611)
!3611 = distinct !DILocation(line: 121, column: 10, scope: !3604)
!3612 = !DILocation(line: 111, column: 32, scope: !3584, inlinedAt: !3611)
!3613 = !DILocation(line: 39, column: 17, scope: !3375, inlinedAt: !3614)
!3614 = distinct !DILocation(line: 113, column: 18, scope: !3584, inlinedAt: !3611)
!3615 = !DILocation(line: 41, column: 13, scope: !3375, inlinedAt: !3614)
!3616 = !DILocation(line: 41, column: 9, scope: !3375, inlinedAt: !3614)
!3617 = !DILocation(line: 42, column: 8, scope: !3386, inlinedAt: !3614)
!3618 = !DILocation(line: 42, column: 15, scope: !3386, inlinedAt: !3614)
!3619 = !DILocation(line: 42, column: 10, scope: !3386, inlinedAt: !3614)
!3620 = !DILocation(line: 43, column: 5, scope: !3386, inlinedAt: !3614)
!3621 = !DILocation(line: 113, column: 10, scope: !3584, inlinedAt: !3611)
!3622 = !DILocation(line: 121, column: 3, scope: !3604)
!3623 = distinct !DISubprogram(name: "xalloc_die", scope: !3624, file: !3624, line: 32, type: !656, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !200, retainedNodes: !57)
!3624 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3625 = !DILocation(line: 34, column: 10, scope: !3623)
!3626 = !DILocation(line: 34, column: 33, scope: !3623)
!3627 = !DILocation(line: 34, column: 3, scope: !3623)
!3628 = !DILocation(line: 40, column: 3, scope: !3623)
!3629 = distinct !DISubprogram(name: "xstrtoumax", scope: !3630, file: !3630, line: 88, type: !3631, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !202, retainedNodes: !3635)
!3630 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!3633, !44, !704, !47, !3634, !44}
!3633 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !6, line: 39, baseType: !5)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!3635 = !{!3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3648, !3649, !3652, !3653}
!3636 = !DILocalVariable(name: "s", arg: 1, scope: !3629, file: !3630, line: 88, type: !44)
!3637 = !DILocalVariable(name: "ptr", arg: 2, scope: !3629, file: !3630, line: 88, type: !704)
!3638 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3629, file: !3630, line: 88, type: !47)
!3639 = !DILocalVariable(name: "val", arg: 4, scope: !3629, file: !3630, line: 89, type: !3634)
!3640 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3629, file: !3630, line: 89, type: !44)
!3641 = !DILocalVariable(name: "t_ptr", scope: !3629, file: !3630, line: 91, type: !29)
!3642 = !DILocalVariable(name: "p", scope: !3629, file: !3630, line: 92, type: !704)
!3643 = !DILocalVariable(name: "tmp", scope: !3629, file: !3630, line: 93, type: !732)
!3644 = !DILocalVariable(name: "err", scope: !3629, file: !3630, line: 94, type: !3633)
!3645 = !DILocalVariable(name: "q", scope: !3646, file: !3630, line: 104, type: !44)
!3646 = distinct !DILexicalBlock(scope: !3647, file: !3630, line: 103, column: 5)
!3647 = distinct !DILexicalBlock(scope: !3629, file: !3630, line: 102, column: 7)
!3648 = !DILocalVariable(name: "ch", scope: !3646, file: !3630, line: 105, type: !1478)
!3649 = !DILocalVariable(name: "base", scope: !3650, file: !3630, line: 141, type: !47)
!3650 = distinct !DILexicalBlock(scope: !3651, file: !3630, line: 140, column: 5)
!3651 = distinct !DILexicalBlock(scope: !3629, file: !3630, line: 139, column: 7)
!3652 = !DILocalVariable(name: "suffixes", scope: !3650, file: !3630, line: 142, type: !47)
!3653 = !DILocalVariable(name: "overflow", scope: !3650, file: !3630, line: 143, type: !3633)
!3654 = !DILocation(line: 88, column: 24, scope: !3629)
!3655 = !DILocation(line: 88, column: 34, scope: !3629)
!3656 = !DILocation(line: 88, column: 43, scope: !3629)
!3657 = !DILocation(line: 89, column: 24, scope: !3629)
!3658 = !DILocation(line: 89, column: 41, scope: !3629)
!3659 = !DILocation(line: 91, column: 3, scope: !3629)
!3660 = !DILocation(line: 94, column: 16, scope: !3629)
!3661 = !DILocation(line: 96, column: 3, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3663, file: !3630, line: 96, column: 3)
!3663 = distinct !DILexicalBlock(scope: !3629, file: !3630, line: 96, column: 3)
!3664 = !DILocation(line: 98, column: 8, scope: !3629)
!3665 = !DILocation(line: 92, column: 10, scope: !3629)
!3666 = !DILocation(line: 100, column: 3, scope: !3629)
!3667 = !DILocation(line: 100, column: 9, scope: !3629)
!3668 = !DILocation(line: 104, column: 19, scope: !3646)
!3669 = !DILocation(line: 105, column: 21, scope: !3646)
!3670 = !DILocation(line: 106, column: 14, scope: !3646)
!3671 = !DILocation(line: 106, column: 7, scope: !3646)
!3672 = !DILocation(line: 0, scope: !3646)
!3673 = !DILocation(line: 107, column: 15, scope: !3646)
!3674 = distinct !{!3674, !3671, !3675}
!3675 = !DILocation(line: 107, column: 17, scope: !3646)
!3676 = !DILocation(line: 108, column: 14, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3646, file: !3630, line: 108, column: 11)
!3678 = !DILocalVariable(name: "nptr", arg: 1, scope: !3679, file: !3680, line: 336, type: !3683)
!3679 = distinct !DISubprogram(name: "strtoumax", scope: !3680, file: !3680, line: 336, type: !3681, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !202, retainedNodes: !3685)
!3680 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!732, !3683, !3684, !47}
!3683 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !44)
!3684 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !704)
!3685 = !{!3678, !3686, !3687}
!3686 = !DILocalVariable(name: "endptr", arg: 2, scope: !3679, file: !3680, line: 336, type: !3684)
!3687 = !DILocalVariable(name: "base", arg: 3, scope: !3679, file: !3680, line: 336, type: !47)
!3688 = !DILocation(line: 336, column: 1, scope: !3679, inlinedAt: !3689)
!3689 = distinct !DILocation(line: 112, column: 9, scope: !3629)
!3690 = !DILocation(line: 339, column: 10, scope: !3679, inlinedAt: !3689)
!3691 = !DILocation(line: 93, column: 14, scope: !3629)
!3692 = !DILocation(line: 114, column: 7, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3629, file: !3630, line: 114, column: 7)
!3694 = !DILocation(line: 114, column: 10, scope: !3693)
!3695 = !DILocation(line: 114, column: 7, scope: !3629)
!3696 = !DILocation(line: 118, column: 11, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3698, file: !3630, line: 118, column: 11)
!3698 = distinct !DILexicalBlock(scope: !3693, file: !3630, line: 115, column: 5)
!3699 = !DILocation(line: 118, column: 26, scope: !3697)
!3700 = !DILocation(line: 118, column: 29, scope: !3697)
!3701 = !DILocation(line: 118, column: 33, scope: !3697)
!3702 = !DILocation(line: 118, column: 36, scope: !3697)
!3703 = !DILocation(line: 118, column: 11, scope: !3698)
!3704 = !DILocation(line: 123, column: 12, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3693, file: !3630, line: 123, column: 12)
!3706 = !DILocation(line: 123, column: 12, scope: !3693)
!3707 = !DILocation(line: 128, column: 5, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3705, file: !3630, line: 124, column: 5)
!3709 = !DILocation(line: 0, scope: !3629)
!3710 = !DILocation(line: 133, column: 8, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3629, file: !3630, line: 133, column: 7)
!3712 = !DILocation(line: 133, column: 7, scope: !3629)
!3713 = !DILocation(line: 135, column: 12, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3711, file: !3630, line: 134, column: 5)
!3715 = !DILocation(line: 136, column: 7, scope: !3714)
!3716 = !DILocation(line: 139, column: 7, scope: !3651)
!3717 = !DILocation(line: 139, column: 11, scope: !3651)
!3718 = !DILocation(line: 139, column: 7, scope: !3629)
!3719 = !DILocation(line: 141, column: 11, scope: !3650)
!3720 = !DILocation(line: 142, column: 11, scope: !3650)
!3721 = !DILocation(line: 145, column: 12, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3650, file: !3630, line: 145, column: 11)
!3723 = !DILocation(line: 145, column: 11, scope: !3650)
!3724 = !DILocation(line: 147, column: 16, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3722, file: !3630, line: 146, column: 9)
!3726 = !DILocation(line: 148, column: 22, scope: !3725)
!3727 = !DILocation(line: 148, column: 11, scope: !3725)
!3728 = !DILocation(line: 151, column: 7, scope: !3650)
!3729 = !DILocation(line: 163, column: 15, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3731, file: !3630, line: 163, column: 15)
!3731 = distinct !DILexicalBlock(scope: !3650, file: !3630, line: 152, column: 9)
!3732 = !DILocation(line: 163, column: 15, scope: !3731)
!3733 = !DILocation(line: 164, column: 21, scope: !3730)
!3734 = !DILocation(line: 164, column: 13, scope: !3730)
!3735 = !DILocation(line: 167, column: 21, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3737, file: !3630, line: 167, column: 21)
!3737 = distinct !DILexicalBlock(scope: !3730, file: !3630, line: 165, column: 15)
!3738 = !DILocation(line: 167, column: 29, scope: !3736)
!3739 = !DILocation(line: 167, column: 21, scope: !3737)
!3740 = !DILocation(line: 175, column: 17, scope: !3737)
!3741 = !DILocation(line: 179, column: 7, scope: !3650)
!3742 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3743, file: !3630, line: 60, type: !47)
!3743 = distinct !DISubprogram(name: "bkm_scale", scope: !3630, file: !3630, line: 60, type: !3744, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !202, retainedNodes: !3746)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!3633, !3634, !47}
!3746 = !{!3747, !3742}
!3747 = !DILocalVariable(name: "x", arg: 1, scope: !3743, file: !3630, line: 60, type: !3634)
!3748 = !DILocation(line: 60, column: 31, scope: !3743, inlinedAt: !3749)
!3749 = distinct !DILocation(line: 182, column: 22, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3650, file: !3630, line: 180, column: 9)
!3751 = !DILocation(line: 67, column: 39, scope: !3752, inlinedAt: !3749)
!3752 = distinct !DILexicalBlock(scope: !3743, file: !3630, line: 67, column: 7)
!3753 = !DILocation(line: 72, column: 6, scope: !3743, inlinedAt: !3749)
!3754 = !DILocation(line: 67, column: 7, scope: !3743, inlinedAt: !3749)
!3755 = !DILocation(line: 143, column: 20, scope: !3650)
!3756 = !DILocation(line: 183, column: 11, scope: !3750)
!3757 = !DILocation(line: 60, column: 31, scope: !3743, inlinedAt: !3758)
!3758 = distinct !DILocation(line: 189, column: 22, scope: !3750)
!3759 = !DILocation(line: 67, column: 39, scope: !3752, inlinedAt: !3758)
!3760 = !DILocation(line: 72, column: 6, scope: !3743, inlinedAt: !3758)
!3761 = !DILocation(line: 67, column: 7, scope: !3743, inlinedAt: !3758)
!3762 = !DILocation(line: 190, column: 11, scope: !3750)
!3763 = !DILocalVariable(name: "power", arg: 3, scope: !3764, file: !3630, line: 77, type: !47)
!3764 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3630, file: !3630, line: 77, type: !3765, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !202, retainedNodes: !3767)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!3633, !3634, !47, !47}
!3767 = !{!3768, !3769, !3763, !3770}
!3768 = !DILocalVariable(name: "x", arg: 1, scope: !3764, file: !3630, line: 77, type: !3634)
!3769 = !DILocalVariable(name: "base", arg: 2, scope: !3764, file: !3630, line: 77, type: !47)
!3770 = !DILocalVariable(name: "err", scope: !3764, file: !3630, line: 79, type: !3633)
!3771 = !DILocation(line: 77, column: 50, scope: !3764, inlinedAt: !3772)
!3772 = distinct !DILocation(line: 197, column: 22, scope: !3750)
!3773 = !DILocation(line: 79, column: 16, scope: !3764, inlinedAt: !3772)
!3774 = !DILocation(line: 67, column: 39, scope: !3752, inlinedAt: !3775)
!3775 = distinct !DILocation(line: 81, column: 12, scope: !3764, inlinedAt: !3772)
!3776 = !DILocation(line: 72, column: 6, scope: !3743, inlinedAt: !3775)
!3777 = !DILocation(line: 67, column: 7, scope: !3743, inlinedAt: !3775)
!3778 = !DILocation(line: 81, column: 9, scope: !3764, inlinedAt: !3772)
!3779 = !DILocation(line: 241, column: 11, scope: !3650)
!3780 = !DILocation(line: 77, column: 50, scope: !3764, inlinedAt: !3781)
!3781 = distinct !DILocation(line: 202, column: 22, scope: !3750)
!3782 = !DILocation(line: 79, column: 16, scope: !3764, inlinedAt: !3781)
!3783 = !DILocation(line: 67, column: 39, scope: !3752, inlinedAt: !3784)
!3784 = distinct !DILocation(line: 81, column: 12, scope: !3764, inlinedAt: !3781)
!3785 = !DILocation(line: 72, column: 6, scope: !3743, inlinedAt: !3784)
!3786 = !DILocation(line: 67, column: 7, scope: !3743, inlinedAt: !3784)
!3787 = !DILocation(line: 81, column: 9, scope: !3764, inlinedAt: !3781)
!3788 = !DILocation(line: 77, column: 50, scope: !3764, inlinedAt: !3789)
!3789 = distinct !DILocation(line: 207, column: 22, scope: !3750)
!3790 = !DILocation(line: 79, column: 16, scope: !3764, inlinedAt: !3789)
!3791 = !DILocation(line: 67, column: 39, scope: !3752, inlinedAt: !3792)
!3792 = distinct !DILocation(line: 81, column: 12, scope: !3764, inlinedAt: !3789)
!3793 = !DILocation(line: 72, column: 6, scope: !3743, inlinedAt: !3792)
!3794 = !DILocation(line: 67, column: 7, scope: !3743, inlinedAt: !3792)
!3795 = !DILocation(line: 77, column: 50, scope: !3764, inlinedAt: !3796)
!3796 = distinct !DILocation(line: 212, column: 22, scope: !3750)
!3797 = !DILocation(line: 79, column: 16, scope: !3764, inlinedAt: !3796)
!3798 = !DILocation(line: 67, column: 39, scope: !3752, inlinedAt: !3799)
!3799 = distinct !DILocation(line: 81, column: 12, scope: !3764, inlinedAt: !3796)
!3800 = !DILocation(line: 72, column: 6, scope: !3743, inlinedAt: !3799)
!3801 = !DILocation(line: 67, column: 7, scope: !3743, inlinedAt: !3799)
!3802 = !DILocation(line: 81, column: 9, scope: !3764, inlinedAt: !3796)
!3803 = !DILocation(line: 77, column: 50, scope: !3764, inlinedAt: !3804)
!3804 = distinct !DILocation(line: 216, column: 22, scope: !3750)
!3805 = !DILocation(line: 79, column: 16, scope: !3764, inlinedAt: !3804)
!3806 = !DILocation(line: 67, column: 39, scope: !3752, inlinedAt: !3807)
!3807 = distinct !DILocation(line: 81, column: 12, scope: !3764, inlinedAt: !3804)
!3808 = !DILocation(line: 72, column: 6, scope: !3743, inlinedAt: !3807)
!3809 = !DILocation(line: 67, column: 7, scope: !3743, inlinedAt: !3807)
!3810 = !DILocation(line: 81, column: 9, scope: !3764, inlinedAt: !3804)
!3811 = !DILocation(line: 77, column: 50, scope: !3764, inlinedAt: !3812)
!3812 = distinct !DILocation(line: 221, column: 22, scope: !3750)
!3813 = !DILocation(line: 79, column: 16, scope: !3764, inlinedAt: !3812)
!3814 = !DILocation(line: 67, column: 39, scope: !3752, inlinedAt: !3815)
!3815 = distinct !DILocation(line: 81, column: 12, scope: !3764, inlinedAt: !3812)
!3816 = !DILocation(line: 72, column: 6, scope: !3743, inlinedAt: !3815)
!3817 = !DILocation(line: 67, column: 7, scope: !3743, inlinedAt: !3815)
!3818 = !DILocation(line: 81, column: 9, scope: !3764, inlinedAt: !3812)
!3819 = !DILocation(line: 60, column: 31, scope: !3743, inlinedAt: !3820)
!3820 = distinct !DILocation(line: 225, column: 22, scope: !3750)
!3821 = !DILocation(line: 67, column: 39, scope: !3752, inlinedAt: !3820)
!3822 = !DILocation(line: 72, column: 6, scope: !3743, inlinedAt: !3820)
!3823 = !DILocation(line: 67, column: 7, scope: !3743, inlinedAt: !3820)
!3824 = !DILocation(line: 226, column: 11, scope: !3750)
!3825 = !DILocation(line: 77, column: 50, scope: !3764, inlinedAt: !3826)
!3826 = distinct !DILocation(line: 229, column: 22, scope: !3750)
!3827 = !DILocation(line: 79, column: 16, scope: !3764, inlinedAt: !3826)
!3828 = !DILocation(line: 67, column: 39, scope: !3752, inlinedAt: !3829)
!3829 = distinct !DILocation(line: 81, column: 12, scope: !3764, inlinedAt: !3826)
!3830 = !DILocation(line: 72, column: 6, scope: !3743, inlinedAt: !3829)
!3831 = !DILocation(line: 67, column: 7, scope: !3743, inlinedAt: !3829)
!3832 = !DILocation(line: 81, column: 9, scope: !3764, inlinedAt: !3826)
!3833 = !DILocation(line: 77, column: 50, scope: !3764, inlinedAt: !3834)
!3834 = distinct !DILocation(line: 233, column: 22, scope: !3750)
!3835 = !DILocation(line: 79, column: 16, scope: !3764, inlinedAt: !3834)
!3836 = !DILocation(line: 67, column: 39, scope: !3752, inlinedAt: !3837)
!3837 = distinct !DILocation(line: 81, column: 12, scope: !3764, inlinedAt: !3834)
!3838 = !DILocation(line: 72, column: 6, scope: !3743, inlinedAt: !3837)
!3839 = !DILocation(line: 67, column: 7, scope: !3743, inlinedAt: !3837)
!3840 = !DILocation(line: 81, column: 9, scope: !3764, inlinedAt: !3834)
!3841 = !DILocation(line: 237, column: 16, scope: !3750)
!3842 = !DILocation(line: 238, column: 22, scope: !3750)
!3843 = !DILocation(line: 238, column: 11, scope: !3750)
!3844 = !DILocation(line: 0, scope: !3697)
!3845 = !DILocation(line: 0, scope: !3750)
!3846 = !DILocation(line: 242, column: 10, scope: !3650)
!3847 = !DILocation(line: 243, column: 11, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3650, file: !3630, line: 243, column: 11)
!3849 = !DILocation(line: 244, column: 13, scope: !3848)
!3850 = !DILocation(line: 243, column: 11, scope: !3650)
!3851 = !DILocation(line: 119, column: 13, scope: !3697)
!3852 = !DILocation(line: 247, column: 8, scope: !3629)
!3853 = !DILocation(line: 248, column: 3, scope: !3629)
!3854 = !DILocation(line: 0, scope: !3677)
!3855 = !DILocation(line: 249, column: 1, scope: !3629)
!3856 = distinct !DISubprogram(name: "rpl_calloc", scope: !3857, file: !3857, line: 42, type: !1096, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !206, retainedNodes: !3858)
!3857 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3858 = !{!3859, !3860, !3861, !3862}
!3859 = !DILocalVariable(name: "n", arg: 1, scope: !3856, file: !3857, line: 42, type: !109)
!3860 = !DILocalVariable(name: "s", arg: 2, scope: !3856, file: !3857, line: 42, type: !109)
!3861 = !DILocalVariable(name: "result", scope: !3856, file: !3857, line: 44, type: !31)
!3862 = !DILocalVariable(name: "bytes", scope: !3863, file: !3857, line: 56, type: !109)
!3863 = distinct !DILexicalBlock(scope: !3864, file: !3857, line: 53, column: 5)
!3864 = distinct !DILexicalBlock(scope: !3856, file: !3857, line: 47, column: 7)
!3865 = !DILocation(line: 42, column: 20, scope: !3856)
!3866 = !DILocation(line: 42, column: 30, scope: !3856)
!3867 = !DILocation(line: 47, column: 9, scope: !3864)
!3868 = !DILocation(line: 47, column: 19, scope: !3864)
!3869 = !DILocation(line: 47, column: 14, scope: !3864)
!3870 = !DILocation(line: 56, column: 24, scope: !3863)
!3871 = !DILocation(line: 56, column: 14, scope: !3863)
!3872 = !DILocation(line: 57, column: 17, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3863, file: !3857, line: 57, column: 11)
!3874 = !DILocation(line: 57, column: 21, scope: !3873)
!3875 = !DILocation(line: 57, column: 11, scope: !3863)
!3876 = !DILocation(line: 59, column: 11, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3873, file: !3857, line: 58, column: 9)
!3878 = !DILocation(line: 59, column: 17, scope: !3877)
!3879 = !DILocation(line: 65, column: 12, scope: !3856)
!3880 = !DILocation(line: 44, column: 9, scope: !3856)
!3881 = !DILocation(line: 72, column: 3, scope: !3856)
!3882 = !DILocation(line: 0, scope: !3877)
!3883 = !DILocation(line: 73, column: 1, scope: !3856)
!3884 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3885, file: !3885, line: 385, type: !3886, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !208, retainedNodes: !3900)
!3885 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!109, !3888, !44, !109, !3889}
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1618, line: 6, baseType: !3891)
!3891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1620, line: 21, baseType: !3892)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1620, line: 13, size: 64, elements: !3893)
!3893 = !{!3894, !3895}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3892, file: !1620, line: 15, baseType: !47, size: 32)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3892, file: !1620, line: 20, baseType: !3896, size: 32, offset: 32)
!3896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3892, file: !1620, line: 16, size: 32, elements: !3897)
!3897 = !{!3898, !3899}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3896, file: !1620, line: 18, baseType: !7, size: 32)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3896, file: !1620, line: 19, baseType: !1629, size: 32)
!3900 = !{!3901, !3902, !3903, !3904, !3905, !3906, !3907}
!3901 = !DILocalVariable(name: "pwc", arg: 1, scope: !3884, file: !3885, line: 385, type: !3888)
!3902 = !DILocalVariable(name: "s", arg: 2, scope: !3884, file: !3885, line: 385, type: !44)
!3903 = !DILocalVariable(name: "n", arg: 3, scope: !3884, file: !3885, line: 385, type: !109)
!3904 = !DILocalVariable(name: "ps", arg: 4, scope: !3884, file: !3885, line: 385, type: !3889)
!3905 = !DILocalVariable(name: "ret", scope: !3884, file: !3885, line: 387, type: !109)
!3906 = !DILocalVariable(name: "wc", scope: !3884, file: !3885, line: 388, type: !1634)
!3907 = !DILocalVariable(name: "uc", scope: !3908, file: !3885, line: 449, type: !1478)
!3908 = distinct !DILexicalBlock(scope: !3909, file: !3885, line: 448, column: 5)
!3909 = distinct !DILexicalBlock(scope: !3884, file: !3885, line: 447, column: 7)
!3910 = !DILocation(line: 385, column: 23, scope: !3884)
!3911 = !DILocation(line: 385, column: 40, scope: !3884)
!3912 = !DILocation(line: 385, column: 50, scope: !3884)
!3913 = !DILocation(line: 385, column: 64, scope: !3884)
!3914 = !DILocation(line: 388, column: 3, scope: !3884)
!3915 = !DILocation(line: 404, column: 9, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3884, file: !3885, line: 404, column: 7)
!3917 = !DILocation(line: 404, column: 7, scope: !3884)
!3918 = !DILocation(line: 439, column: 9, scope: !3884)
!3919 = !DILocation(line: 387, column: 10, scope: !3884)
!3920 = !DILocation(line: 447, column: 19, scope: !3909)
!3921 = !DILocation(line: 447, column: 31, scope: !3909)
!3922 = !DILocation(line: 447, column: 26, scope: !3909)
!3923 = !DILocation(line: 447, column: 41, scope: !3909)
!3924 = !DILocation(line: 447, column: 7, scope: !3884)
!3925 = !DILocation(line: 449, column: 26, scope: !3908)
!3926 = !DILocation(line: 449, column: 21, scope: !3908)
!3927 = !DILocation(line: 450, column: 14, scope: !3908)
!3928 = !DILocation(line: 450, column: 12, scope: !3908)
!3929 = !DILocation(line: 0, scope: !3908)
!3930 = !DILocation(line: 456, column: 1, scope: !3884)
!3931 = distinct !DISubprogram(name: "close_stream", scope: !3932, file: !3932, line: 56, type: !3933, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !210, retainedNodes: !3969)
!3932 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!47, !3935}
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3174, line: 7, baseType: !3937)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3176, line: 49, size: 1728, elements: !3938)
!3938 = !{!3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3937, file: !3176, line: 51, baseType: !47, size: 32)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3937, file: !3176, line: 54, baseType: !29, size: 64, offset: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3937, file: !3176, line: 55, baseType: !29, size: 64, offset: 128)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3937, file: !3176, line: 56, baseType: !29, size: 64, offset: 192)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3937, file: !3176, line: 57, baseType: !29, size: 64, offset: 256)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3937, file: !3176, line: 58, baseType: !29, size: 64, offset: 320)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3937, file: !3176, line: 59, baseType: !29, size: 64, offset: 384)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3937, file: !3176, line: 60, baseType: !29, size: 64, offset: 448)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3937, file: !3176, line: 61, baseType: !29, size: 64, offset: 512)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3937, file: !3176, line: 64, baseType: !29, size: 64, offset: 576)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3937, file: !3176, line: 65, baseType: !29, size: 64, offset: 640)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3937, file: !3176, line: 66, baseType: !29, size: 64, offset: 704)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3937, file: !3176, line: 68, baseType: !3191, size: 64, offset: 768)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3937, file: !3176, line: 70, baseType: !3953, size: 64, offset: 832)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3937, file: !3176, line: 72, baseType: !47, size: 32, offset: 896)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3937, file: !3176, line: 73, baseType: !47, size: 32, offset: 928)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3937, file: !3176, line: 74, baseType: !1237, size: 64, offset: 960)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3937, file: !3176, line: 77, baseType: !108, size: 16, offset: 1024)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3937, file: !3176, line: 78, baseType: !3200, size: 8, offset: 1040)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3937, file: !3176, line: 79, baseType: !3202, size: 8, offset: 1048)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3937, file: !3176, line: 81, baseType: !3206, size: 64, offset: 1088)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3937, file: !3176, line: 89, baseType: !3209, size: 64, offset: 1152)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3937, file: !3176, line: 91, baseType: !3211, size: 64, offset: 1216)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3937, file: !3176, line: 92, baseType: !3214, size: 64, offset: 1280)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3937, file: !3176, line: 93, baseType: !3953, size: 64, offset: 1344)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3937, file: !3176, line: 94, baseType: !31, size: 64, offset: 1408)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3937, file: !3176, line: 95, baseType: !109, size: 64, offset: 1472)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3937, file: !3176, line: 96, baseType: !47, size: 32, offset: 1536)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3937, file: !3176, line: 98, baseType: !3221, size: 160, offset: 1568)
!3969 = !{!3970, !3971, !3973, !3974}
!3970 = !DILocalVariable(name: "stream", arg: 1, scope: !3931, file: !3932, line: 56, type: !3935)
!3971 = !DILocalVariable(name: "some_pending", scope: !3931, file: !3932, line: 58, type: !3972)
!3972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!3973 = !DILocalVariable(name: "prev_fail", scope: !3931, file: !3932, line: 59, type: !3972)
!3974 = !DILocalVariable(name: "fclose_fail", scope: !3931, file: !3932, line: 60, type: !3972)
!3975 = !DILocation(line: 56, column: 21, scope: !3931)
!3976 = !DILocation(line: 58, column: 30, scope: !3931)
!3977 = !DILocalVariable(name: "__stream", arg: 1, scope: !3978, file: !3979, line: 135, type: !3935)
!3978 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3979, file: !3979, line: 135, type: !3933, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !210, retainedNodes: !3980)
!3979 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3980 = !{!3977}
!3981 = !DILocation(line: 135, column: 1, scope: !3978, inlinedAt: !3982)
!3982 = distinct !DILocation(line: 59, column: 27, scope: !3931)
!3983 = !DILocation(line: 137, column: 10, scope: !3978, inlinedAt: !3982)
!3984 = !{!3985, !792, i64 0}
!3985 = !{!"_IO_FILE", !792, i64 0, !649, i64 8, !649, i64 16, !649, i64 24, !649, i64 32, !649, i64 40, !649, i64 48, !649, i64 56, !649, i64 64, !649, i64 72, !649, i64 80, !649, i64 88, !649, i64 96, !649, i64 104, !792, i64 112, !792, i64 116, !872, i64 120, !1874, i64 128, !650, i64 130, !650, i64 131, !649, i64 136, !872, i64 144, !649, i64 152, !649, i64 160, !649, i64 168, !649, i64 176, !872, i64 184, !792, i64 192, !650, i64 196}
!3986 = !DILocation(line: 59, column: 43, scope: !3931)
!3987 = !DILocation(line: 60, column: 29, scope: !3931)
!3988 = !DILocation(line: 60, column: 45, scope: !3931)
!3989 = !DILocation(line: 70, column: 17, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3931, file: !3932, line: 70, column: 7)
!3991 = !DILocation(line: 58, column: 50, scope: !3931)
!3992 = !DILocation(line: 70, column: 33, scope: !3990)
!3993 = !DILocation(line: 70, column: 53, scope: !3990)
!3994 = !DILocation(line: 70, column: 59, scope: !3990)
!3995 = !DILocation(line: 70, column: 7, scope: !3931)
!3996 = !DILocation(line: 72, column: 11, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3990, file: !3932, line: 71, column: 5)
!3998 = !DILocation(line: 73, column: 9, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3997, file: !3932, line: 72, column: 11)
!4000 = !DILocation(line: 73, column: 15, scope: !3999)
!4001 = !DILocation(line: 0, scope: !3931)
!4002 = !DILocation(line: 78, column: 1, scope: !3931)
!4003 = distinct !DISubprogram(name: "hard_locale", scope: !4004, file: !4004, line: 38, type: !4005, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !212, retainedNodes: !4007)
!4004 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!67, !47}
!4007 = !{!4008, !4009, !4010}
!4008 = !DILocalVariable(name: "category", arg: 1, scope: !4003, file: !4004, line: 38, type: !47)
!4009 = !DILocalVariable(name: "hard", scope: !4003, file: !4004, line: 40, type: !67)
!4010 = !DILocalVariable(name: "p", scope: !4003, file: !4004, line: 41, type: !44)
!4011 = !DILocation(line: 38, column: 18, scope: !4003)
!4012 = !DILocation(line: 40, column: 8, scope: !4003)
!4013 = !DILocation(line: 41, column: 19, scope: !4003)
!4014 = !DILocation(line: 41, column: 15, scope: !4003)
!4015 = !DILocation(line: 43, column: 7, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !4003, file: !4004, line: 43, column: 7)
!4017 = !DILocation(line: 43, column: 7, scope: !4003)
!4018 = !DILocation(line: 47, column: 15, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !4020, file: !4004, line: 47, column: 15)
!4020 = distinct !DILexicalBlock(scope: !4021, file: !4004, line: 46, column: 9)
!4021 = distinct !DILexicalBlock(scope: !4022, file: !4004, line: 45, column: 11)
!4022 = distinct !DILexicalBlock(scope: !4016, file: !4004, line: 44, column: 5)
!4023 = !DILocation(line: 47, column: 31, scope: !4019)
!4024 = !DILocation(line: 47, column: 36, scope: !4019)
!4025 = !DILocation(line: 47, column: 39, scope: !4019)
!4026 = !DILocation(line: 47, column: 59, scope: !4019)
!4027 = !DILocation(line: 47, column: 15, scope: !4020)
!4028 = !DILocation(line: 48, column: 13, scope: !4019)
!4029 = !DILocation(line: 71, column: 3, scope: !4003)
!4030 = distinct !DISubprogram(name: "locale_charset", scope: !4031, file: !4031, line: 687, type: !4032, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !214, retainedNodes: !4034)
!4031 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!44}
!4034 = !{!4035}
!4035 = !DILocalVariable(name: "codeset", scope: !4030, file: !4031, line: 689, type: !44)
!4036 = !DILocation(line: 696, column: 13, scope: !4030)
!4037 = !DILocation(line: 689, column: 15, scope: !4030)
!4038 = !DILocation(line: 754, column: 15, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4030, file: !4031, line: 754, column: 7)
!4040 = !DILocation(line: 754, column: 7, scope: !4030)
!4041 = !DILocation(line: 907, column: 13, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4043, file: !4031, line: 907, column: 13)
!4043 = distinct !DILexicalBlock(scope: !4044, file: !4031, line: 897, column: 7)
!4044 = distinct !DILexicalBlock(scope: !4030, file: !4031, line: 856, column: 3)
!4045 = !DILocation(line: 907, column: 24, scope: !4042)
!4046 = !DILocation(line: 907, column: 13, scope: !4043)
!4047 = !DILocation(line: 995, column: 3, scope: !4030)
!4048 = distinct !DISubprogram(name: "rpl_fclose", scope: !4049, file: !4049, line: 58, type: !4050, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !603, retainedNodes: !4086)
!4049 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!47, !4052}
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3174, line: 7, baseType: !4054)
!4054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3176, line: 49, size: 1728, elements: !4055)
!4055 = !{!4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4054, file: !3176, line: 51, baseType: !47, size: 32)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4054, file: !3176, line: 54, baseType: !29, size: 64, offset: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4054, file: !3176, line: 55, baseType: !29, size: 64, offset: 128)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4054, file: !3176, line: 56, baseType: !29, size: 64, offset: 192)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4054, file: !3176, line: 57, baseType: !29, size: 64, offset: 256)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4054, file: !3176, line: 58, baseType: !29, size: 64, offset: 320)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4054, file: !3176, line: 59, baseType: !29, size: 64, offset: 384)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4054, file: !3176, line: 60, baseType: !29, size: 64, offset: 448)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4054, file: !3176, line: 61, baseType: !29, size: 64, offset: 512)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4054, file: !3176, line: 64, baseType: !29, size: 64, offset: 576)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4054, file: !3176, line: 65, baseType: !29, size: 64, offset: 640)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4054, file: !3176, line: 66, baseType: !29, size: 64, offset: 704)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4054, file: !3176, line: 68, baseType: !3191, size: 64, offset: 768)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4054, file: !3176, line: 70, baseType: !4070, size: 64, offset: 832)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4054, file: !3176, line: 72, baseType: !47, size: 32, offset: 896)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4054, file: !3176, line: 73, baseType: !47, size: 32, offset: 928)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4054, file: !3176, line: 74, baseType: !1237, size: 64, offset: 960)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4054, file: !3176, line: 77, baseType: !108, size: 16, offset: 1024)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4054, file: !3176, line: 78, baseType: !3200, size: 8, offset: 1040)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4054, file: !3176, line: 79, baseType: !3202, size: 8, offset: 1048)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4054, file: !3176, line: 81, baseType: !3206, size: 64, offset: 1088)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4054, file: !3176, line: 89, baseType: !3209, size: 64, offset: 1152)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4054, file: !3176, line: 91, baseType: !3211, size: 64, offset: 1216)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4054, file: !3176, line: 92, baseType: !3214, size: 64, offset: 1280)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4054, file: !3176, line: 93, baseType: !4070, size: 64, offset: 1344)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4054, file: !3176, line: 94, baseType: !31, size: 64, offset: 1408)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4054, file: !3176, line: 95, baseType: !109, size: 64, offset: 1472)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4054, file: !3176, line: 96, baseType: !47, size: 32, offset: 1536)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4054, file: !3176, line: 98, baseType: !3221, size: 160, offset: 1568)
!4086 = !{!4087, !4088, !4089, !4090}
!4087 = !DILocalVariable(name: "fp", arg: 1, scope: !4048, file: !4049, line: 58, type: !4052)
!4088 = !DILocalVariable(name: "saved_errno", scope: !4048, file: !4049, line: 60, type: !47)
!4089 = !DILocalVariable(name: "fd", scope: !4048, file: !4049, line: 61, type: !47)
!4090 = !DILocalVariable(name: "result", scope: !4048, file: !4049, line: 62, type: !47)
!4091 = !DILocation(line: 58, column: 19, scope: !4048)
!4092 = !DILocation(line: 60, column: 7, scope: !4048)
!4093 = !DILocation(line: 62, column: 7, scope: !4048)
!4094 = !DILocation(line: 65, column: 8, scope: !4048)
!4095 = !DILocation(line: 61, column: 7, scope: !4048)
!4096 = !DILocation(line: 66, column: 10, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4048, file: !4049, line: 66, column: 7)
!4098 = !DILocation(line: 66, column: 7, scope: !4048)
!4099 = !DILocation(line: 67, column: 12, scope: !4097)
!4100 = !DILocation(line: 67, column: 5, scope: !4097)
!4101 = !DILocation(line: 72, column: 9, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4048, file: !4049, line: 72, column: 7)
!4103 = !DILocation(line: 72, column: 23, scope: !4102)
!4104 = !DILocation(line: 72, column: 33, scope: !4102)
!4105 = !DILocation(line: 72, column: 26, scope: !4102)
!4106 = !DILocation(line: 72, column: 59, scope: !4102)
!4107 = !DILocation(line: 73, column: 7, scope: !4102)
!4108 = !DILocation(line: 73, column: 10, scope: !4102)
!4109 = !DILocation(line: 72, column: 7, scope: !4048)
!4110 = !DILocation(line: 100, column: 12, scope: !4048)
!4111 = !DILocation(line: 105, column: 7, scope: !4048)
!4112 = !DILocation(line: 74, column: 19, scope: !4102)
!4113 = !DILocation(line: 105, column: 19, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4048, file: !4049, line: 105, column: 7)
!4115 = !DILocation(line: 107, column: 13, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4114, file: !4049, line: 106, column: 5)
!4117 = !DILocation(line: 109, column: 5, scope: !4116)
!4118 = !DILocation(line: 0, scope: !4048)
!4119 = !DILocation(line: 112, column: 1, scope: !4048)
!4120 = distinct !DISubprogram(name: "rpl_fflush", scope: !4121, file: !4121, line: 129, type: !4122, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !605, retainedNodes: !4158)
!4121 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!47, !4124}
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3174, line: 7, baseType: !4126)
!4126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3176, line: 49, size: 1728, elements: !4127)
!4127 = !{!4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4126, file: !3176, line: 51, baseType: !47, size: 32)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4126, file: !3176, line: 54, baseType: !29, size: 64, offset: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4126, file: !3176, line: 55, baseType: !29, size: 64, offset: 128)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4126, file: !3176, line: 56, baseType: !29, size: 64, offset: 192)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4126, file: !3176, line: 57, baseType: !29, size: 64, offset: 256)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4126, file: !3176, line: 58, baseType: !29, size: 64, offset: 320)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4126, file: !3176, line: 59, baseType: !29, size: 64, offset: 384)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4126, file: !3176, line: 60, baseType: !29, size: 64, offset: 448)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4126, file: !3176, line: 61, baseType: !29, size: 64, offset: 512)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4126, file: !3176, line: 64, baseType: !29, size: 64, offset: 576)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4126, file: !3176, line: 65, baseType: !29, size: 64, offset: 640)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4126, file: !3176, line: 66, baseType: !29, size: 64, offset: 704)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4126, file: !3176, line: 68, baseType: !3191, size: 64, offset: 768)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4126, file: !3176, line: 70, baseType: !4142, size: 64, offset: 832)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4126, file: !3176, line: 72, baseType: !47, size: 32, offset: 896)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4126, file: !3176, line: 73, baseType: !47, size: 32, offset: 928)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4126, file: !3176, line: 74, baseType: !1237, size: 64, offset: 960)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4126, file: !3176, line: 77, baseType: !108, size: 16, offset: 1024)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4126, file: !3176, line: 78, baseType: !3200, size: 8, offset: 1040)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4126, file: !3176, line: 79, baseType: !3202, size: 8, offset: 1048)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4126, file: !3176, line: 81, baseType: !3206, size: 64, offset: 1088)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4126, file: !3176, line: 89, baseType: !3209, size: 64, offset: 1152)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4126, file: !3176, line: 91, baseType: !3211, size: 64, offset: 1216)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4126, file: !3176, line: 92, baseType: !3214, size: 64, offset: 1280)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4126, file: !3176, line: 93, baseType: !4142, size: 64, offset: 1344)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4126, file: !3176, line: 94, baseType: !31, size: 64, offset: 1408)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4126, file: !3176, line: 95, baseType: !109, size: 64, offset: 1472)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4126, file: !3176, line: 96, baseType: !47, size: 32, offset: 1536)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4126, file: !3176, line: 98, baseType: !3221, size: 160, offset: 1568)
!4158 = !{!4159}
!4159 = !DILocalVariable(name: "stream", arg: 1, scope: !4120, file: !4121, line: 129, type: !4124)
!4160 = !DILocation(line: 129, column: 19, scope: !4120)
!4161 = !DILocation(line: 150, column: 14, scope: !4162)
!4162 = distinct !DILexicalBlock(scope: !4120, file: !4121, line: 150, column: 7)
!4163 = !DILocation(line: 150, column: 22, scope: !4162)
!4164 = !DILocation(line: 150, column: 27, scope: !4162)
!4165 = !DILocation(line: 150, column: 7, scope: !4120)
!4166 = !DILocation(line: 151, column: 12, scope: !4162)
!4167 = !DILocation(line: 151, column: 5, scope: !4162)
!4168 = !DILocalVariable(name: "fp", arg: 1, scope: !4169, file: !4121, line: 41, type: !4124)
!4169 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4121, file: !4121, line: 41, type: !4170, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !605, retainedNodes: !4172)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{null, !4124}
!4172 = !{!4168}
!4173 = !DILocation(line: 41, column: 48, scope: !4169, inlinedAt: !4174)
!4174 = distinct !DILocation(line: 156, column: 3, scope: !4120)
!4175 = !DILocation(line: 43, column: 11, scope: !4176, inlinedAt: !4174)
!4176 = distinct !DILexicalBlock(scope: !4169, file: !4121, line: 43, column: 7)
!4177 = !DILocation(line: 43, column: 18, scope: !4176, inlinedAt: !4174)
!4178 = !DILocation(line: 43, column: 7, scope: !4169, inlinedAt: !4174)
!4179 = !DILocation(line: 45, column: 5, scope: !4176, inlinedAt: !4174)
!4180 = !DILocation(line: 158, column: 10, scope: !4120)
!4181 = !DILocation(line: 158, column: 3, scope: !4120)
!4182 = !DILocation(line: 0, scope: !4120)
!4183 = !DILocation(line: 232, column: 1, scope: !4120)
!4184 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4185, file: !4185, line: 28, type: !4186, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !607, retainedNodes: !4223)
!4185 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!47, !4188, !4222, !47}
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3174, line: 7, baseType: !4190)
!4190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3176, line: 49, size: 1728, elements: !4191)
!4191 = !{!4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4190, file: !3176, line: 51, baseType: !47, size: 32)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4190, file: !3176, line: 54, baseType: !29, size: 64, offset: 64)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4190, file: !3176, line: 55, baseType: !29, size: 64, offset: 128)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4190, file: !3176, line: 56, baseType: !29, size: 64, offset: 192)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4190, file: !3176, line: 57, baseType: !29, size: 64, offset: 256)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4190, file: !3176, line: 58, baseType: !29, size: 64, offset: 320)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4190, file: !3176, line: 59, baseType: !29, size: 64, offset: 384)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4190, file: !3176, line: 60, baseType: !29, size: 64, offset: 448)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4190, file: !3176, line: 61, baseType: !29, size: 64, offset: 512)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4190, file: !3176, line: 64, baseType: !29, size: 64, offset: 576)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4190, file: !3176, line: 65, baseType: !29, size: 64, offset: 640)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4190, file: !3176, line: 66, baseType: !29, size: 64, offset: 704)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4190, file: !3176, line: 68, baseType: !3191, size: 64, offset: 768)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4190, file: !3176, line: 70, baseType: !4206, size: 64, offset: 832)
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4190, file: !3176, line: 72, baseType: !47, size: 32, offset: 896)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4190, file: !3176, line: 73, baseType: !47, size: 32, offset: 928)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4190, file: !3176, line: 74, baseType: !1237, size: 64, offset: 960)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4190, file: !3176, line: 77, baseType: !108, size: 16, offset: 1024)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4190, file: !3176, line: 78, baseType: !3200, size: 8, offset: 1040)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4190, file: !3176, line: 79, baseType: !3202, size: 8, offset: 1048)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4190, file: !3176, line: 81, baseType: !3206, size: 64, offset: 1088)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4190, file: !3176, line: 89, baseType: !3209, size: 64, offset: 1152)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4190, file: !3176, line: 91, baseType: !3211, size: 64, offset: 1216)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4190, file: !3176, line: 92, baseType: !3214, size: 64, offset: 1280)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4190, file: !3176, line: 93, baseType: !4206, size: 64, offset: 1344)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4190, file: !3176, line: 94, baseType: !31, size: 64, offset: 1408)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4190, file: !3176, line: 95, baseType: !109, size: 64, offset: 1472)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4190, file: !3176, line: 96, baseType: !47, size: 32, offset: 1536)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4190, file: !3176, line: 98, baseType: !3221, size: 160, offset: 1568)
!4222 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3343, line: 63, baseType: !1237)
!4223 = !{!4224, !4225, !4226, !4227}
!4224 = !DILocalVariable(name: "fp", arg: 1, scope: !4184, file: !4185, line: 28, type: !4188)
!4225 = !DILocalVariable(name: "offset", arg: 2, scope: !4184, file: !4185, line: 28, type: !4222)
!4226 = !DILocalVariable(name: "whence", arg: 3, scope: !4184, file: !4185, line: 28, type: !47)
!4227 = !DILocalVariable(name: "pos", scope: !4228, file: !4185, line: 117, type: !4222)
!4228 = distinct !DILexicalBlock(scope: !4229, file: !4185, line: 113, column: 5)
!4229 = distinct !DILexicalBlock(scope: !4184, file: !4185, line: 52, column: 7)
!4230 = !DILocation(line: 28, column: 15, scope: !4184)
!4231 = !DILocation(line: 28, column: 25, scope: !4184)
!4232 = !DILocation(line: 28, column: 37, scope: !4184)
!4233 = !DILocation(line: 52, column: 11, scope: !4229)
!4234 = !{!3985, !649, i64 16}
!4235 = !DILocation(line: 52, column: 31, scope: !4229)
!4236 = !{!3985, !649, i64 8}
!4237 = !DILocation(line: 52, column: 24, scope: !4229)
!4238 = !DILocation(line: 53, column: 7, scope: !4229)
!4239 = !DILocation(line: 53, column: 14, scope: !4229)
!4240 = !{!3985, !649, i64 40}
!4241 = !DILocation(line: 53, column: 35, scope: !4229)
!4242 = !{!3985, !649, i64 32}
!4243 = !DILocation(line: 53, column: 28, scope: !4229)
!4244 = !DILocation(line: 54, column: 7, scope: !4229)
!4245 = !DILocation(line: 54, column: 14, scope: !4229)
!4246 = !{!3985, !649, i64 72}
!4247 = !DILocation(line: 54, column: 28, scope: !4229)
!4248 = !DILocation(line: 52, column: 7, scope: !4184)
!4249 = !DILocation(line: 117, column: 26, scope: !4228)
!4250 = !DILocation(line: 117, column: 19, scope: !4228)
!4251 = !DILocation(line: 117, column: 13, scope: !4228)
!4252 = !DILocation(line: 118, column: 15, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4228, file: !4185, line: 118, column: 11)
!4254 = !DILocation(line: 118, column: 11, scope: !4228)
!4255 = !DILocation(line: 129, column: 11, scope: !4228)
!4256 = !DILocation(line: 129, column: 18, scope: !4228)
!4257 = !DILocation(line: 130, column: 11, scope: !4228)
!4258 = !DILocation(line: 130, column: 19, scope: !4228)
!4259 = !{!3985, !872, i64 144}
!4260 = !DILocation(line: 161, column: 7, scope: !4228)
!4261 = !DILocation(line: 163, column: 10, scope: !4184)
!4262 = !DILocation(line: 163, column: 3, scope: !4184)
!4263 = !DILocation(line: 0, scope: !4184)
!4264 = !DILocation(line: 164, column: 1, scope: !4184)
