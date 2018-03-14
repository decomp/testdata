; ModuleID = 'coreutils-8.27/src/mkdir.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.mkdir_options = type { i32 (i8*, i8*, i8*)*, i32, i32, i32, i8, i8* }
%struct.mode_change = type { i8, i8, i32, i32, i32 }
%struct.savewd = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Usage: %s [OPTION]... DIRECTORY...\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Create the DIRECTORY(ies), if they do not already exist.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.19 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [207 x i8] c"  -m, --mode=MODE   set file mode (as in chmod), not a=rwx - umask\0A  -p, --parents     no error if existing, make parent directories as needed\0A  -v, --verbose     print a message for each created directory\0A\00", align 1
@.str.4 = private unnamed_addr constant [258 x i8] c"  -Z                   set SELinux security context of each created directory\0A                         to the default type\0A      --context[=CTX]  like -Z, or if CTX is specified then set the SELinux\0A                         or SMACK security context to CTX\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"mkdir\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.31 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.33 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"pm:vZ\00", align 1
@longopts = internal constant [7 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 2, i32* null, i32 90 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i32 1, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.12 = private unnamed_addr constant [21 x i8] c"created directory %s\00", align 1
@.str.13 = private unnamed_addr constant [73 x i8] c"warning: ignoring --context; it requires an SELinux/SMACK-enabled kernel\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"invalid mode %s\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"parents\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c": \00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), align 8, !dbg !84
@.str.20 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !90
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !95
@.str.23 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.24 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.25 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !99
@.str.41 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1.42 = private unnamed_addr constant [32 x i8] c"cannot change permissions of %s\00", align 1
@.str.2.43 = private unnamed_addr constant [42 x i8] c"cannot change owner and permissions of %s\00", align 1
@.str.3.44 = private unnamed_addr constant [27 x i8] c"cannot create directory %s\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !106
@.str.53 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.54 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.55 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.57, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.58, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.59, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.60, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.63, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.64, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.65, i32 0, i32 0), i8* null], align 16, !dbg !113
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !144
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !151
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !163
@.str.11.66 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.67 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.68 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.69 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.70 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.71 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.72 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !170
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !177
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !165
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !179
@.str.5.81 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2.82 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1.83 = private unnamed_addr constant [13 x i8] c"lib/savewd.c\00", align 1
@__PRETTY_FUNCTION__.savewd_save = private unnamed_addr constant [35 x i8] c"_Bool savewd_save(struct savewd *)\00", align 1
@.str.84 = private unnamed_addr constant [19 x i8] c"wd->val.child == 0\00", align 1
@__PRETTY_FUNCTION__.savewd_chdir = private unnamed_addr constant [60 x i8] c"int savewd_chdir(struct savewd *, const char *, int, int *)\00", align 1
@.str.3.85 = private unnamed_addr constant [28 x i8] c"(*__errno_location ()) == 4\00", align 1
@__PRETTY_FUNCTION__.savewd_restore = private unnamed_addr constant [41 x i8] c"int savewd_restore(struct savewd *, int)\00", align 1
@.str.4.86 = private unnamed_addr constant [18 x i8] c"wd->val.child < 0\00", align 1
@__PRETTY_FUNCTION__.savewd_finish = private unnamed_addr constant [36 x i8] c"void savewd_finish(struct savewd *)\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.90 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.91 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.92 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.93 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.94 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.95 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.96 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.97 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.98 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.99 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.100 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.101 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.102 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.105 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.106 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.107 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.108 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.109 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.110 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !185
@.str.1.121 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.122 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.133 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.134 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.137 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !194
@.str.3.138 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.139 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.140 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.141 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.142 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.143 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !543

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !698 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !702, metadata !703), !dbg !704
  %2 = icmp eq i32 %0, 0, !dbg !705
  br i1 %2, label %8, label %3, !dbg !707

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !708, !tbaa !710
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #9, !dbg !708
  %6 = load i8*, i8** @program_name, align 8, !dbg !708, !tbaa !710
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #9, !dbg !708
  br label %45, !dbg !708

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 5) #9, !dbg !714
  %10 = load i8*, i8** @program_name, align 8, !dbg !714, !tbaa !710
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #9, !dbg !714
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 5) #9, !dbg !716
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !716, !tbaa !710
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #9, !dbg !716
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.19, i64 0, i64 0), i32 5) #9, !dbg !717
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !717, !tbaa !710
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #9, !dbg !717
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([207 x i8], [207 x i8]* @.str.3, i64 0, i64 0), i32 5) #9, !dbg !722
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !722, !tbaa !710
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #9, !dbg !722
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([258 x i8], [258 x i8]* @.str.4, i64 0, i64 0), i32 5) #9, !dbg !723
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !723, !tbaa !710
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #9, !dbg !723
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #9, !dbg !724
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !724, !tbaa !710
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #9, !dbg !724
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #9, !dbg !725
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !725, !tbaa !710
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #9, !dbg !725
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !62, metadata !703) #9, !dbg !726
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !62, metadata !703) #9, !dbg !726
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0), i32 5) #9, !dbg !728
  %31 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0)) #9, !dbg !728
  %32 = tail call i8* @setlocale(i32 5, i8* null) #9, !dbg !729
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !70, metadata !703) #9, !dbg !730
  %33 = icmp eq i8* %32, null, !dbg !731
  br i1 %33, label %40, label %34, !dbg !733

; <label>:34:                                     ; preds = %8
  %35 = tail call i32 @strncmp(i8* nonnull %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0), i64 3) #15, !dbg !734
  %36 = icmp eq i32 %35, 0, !dbg !734
  br i1 %36, label %40, label %37, !dbg !735

; <label>:37:                                     ; preds = %34
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.31, i64 0, i64 0), i32 5) #9, !dbg !736
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !736
  br label %40, !dbg !738

; <label>:40:                                     ; preds = %8, %34, %37
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i64 0, i64 0), i32 5) #9, !dbg !739
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !739
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.33, i64 0, i64 0), i32 5) #9, !dbg !740
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0)) #9, !dbg !740
  br label %45

; <label>:45:                                     ; preds = %40, %3
  tail call void @exit(i32 %0) #16, !dbg !741
  unreachable, !dbg !741
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !742 {
  %3 = alloca %struct.mkdir_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !747, metadata !703), !dbg !776
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !748, metadata !703), !dbg !777
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !749, metadata !703), !dbg !778
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !751, metadata !703), !dbg !779
  %4 = bitcast %struct.mkdir_options* %3 to i8*, !dbg !780
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #9, !dbg !780
  %5 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 0, !dbg !781
  store i32 (i8*, i8*, i8*)* null, i32 (i8*, i8*, i8*)** %5, align 8, !dbg !782, !tbaa !783
  %6 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 2, !dbg !787
  store i32 511, i32* %6, align 4, !dbg !788, !tbaa !789
  %7 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 3, !dbg !790
  store i32 0, i32* %7, align 8, !dbg !791, !tbaa !792
  %8 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 5, !dbg !793
  store i8* null, i8** %8, align 8, !dbg !794, !tbaa !795
  %9 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 4, !dbg !796
  store i8 0, i8* %9, align 4, !dbg !797, !tbaa !798
  %10 = load i8*, i8** %1, align 8, !dbg !799, !tbaa !710
  tail call void @set_program_name(i8* %10) #9, !dbg !800
  %11 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !801
  %12 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !802
  %13 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !803
  %14 = tail call i32 @atexit(void ()* nonnull @close_stdout) #9, !dbg !804
  br label %15, !dbg !805

; <label>:15:                                     ; preds = %22, %2
  %16 = phi i32 (i8*, i8*, i8*)* [ @make_ancestor, %22 ], [ null, %2 ]
  %17 = phi i8* [ %19, %22 ], [ null, %2 ]
  br label %18, !dbg !806

; <label>:18:                                     ; preds = %15, %23
  %19 = phi i8* [ %17, %15 ], [ %24, %23 ]
  br label %20, !dbg !806

; <label>:20:                                     ; preds = %30, %18
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !749, metadata !703), !dbg !778
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !751, metadata !703), !dbg !779
  %21 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([7 x %struct.option], [7 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #9, !dbg !806
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !750, metadata !703), !dbg !807
  switch i32 %21, label %37 [
    i32 -1, label %38
    i32 112, label %22
    i32 109, label %23
    i32 118, label %25
    i32 90, label %27
    i32 -130, label %33
    i32 -131, label %34
  ], !dbg !805

; <label>:22:                                     ; preds = %20
  store i32 (i8*, i8*, i8*)* @make_ancestor, i32 (i8*, i8*, i8*)** %5, align 8, !dbg !808, !tbaa !783
  br label %15, !dbg !811, !llvm.loop !812

; <label>:23:                                     ; preds = %20
  %24 = load i8*, i8** @optarg, align 8, !dbg !814, !tbaa !710
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !749, metadata !703), !dbg !778
  br label %18, !dbg !815, !llvm.loop !812

; <label>:25:                                     ; preds = %20
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 5) #9, !dbg !816
  store i8* %26, i8** %8, align 8, !dbg !817, !tbaa !795
  br label %30, !dbg !818

; <label>:27:                                     ; preds = %20
  %28 = load i8*, i8** @optarg, align 8, !tbaa !710
  %29 = icmp eq i8* %28, null, !dbg !819
  br i1 %29, label %30, label %31, !dbg !823

; <label>:30:                                     ; preds = %27, %31, %25
  br label %20, !dbg !778, !llvm.loop !812

; <label>:31:                                     ; preds = %27
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i64 0, i64 0), i32 5) #9, !dbg !824
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %32) #9, !dbg !826
  br label %30, !dbg !827

; <label>:33:                                     ; preds = %20
  tail call void @usage(i32 0) #17, !dbg !828
  unreachable, !dbg !828

; <label>:34:                                     ; preds = %20
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !829, !tbaa !710
  %36 = load i8*, i8** @Version, align 8, !dbg !829, !tbaa !710
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* null) #9, !dbg !829
  tail call void @exit(i32 0) #16, !dbg !829
  unreachable, !dbg !829

; <label>:37:                                     ; preds = %20
  tail call void @usage(i32 1) #17, !dbg !830
  unreachable, !dbg !830

; <label>:38:                                     ; preds = %20
  %39 = load i32, i32* @optind, align 4, !dbg !831, !tbaa !833
  %40 = icmp eq i32 %39, %0, !dbg !834
  br i1 %40, label %41, label %43, !dbg !835

; <label>:41:                                     ; preds = %38
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 5) #9, !dbg !836
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %42) #9, !dbg !838
  tail call void @usage(i32 1) #17, !dbg !839
  unreachable, !dbg !839

; <label>:43:                                     ; preds = %38
  %44 = icmp ne i32 (i8*, i8*, i8*)* %16, null, !dbg !840
  %45 = icmp ne i8* %19, null, !dbg !841
  %46 = or i1 %45, %44, !dbg !842
  br i1 %46, label %47, label %61, !dbg !842

; <label>:47:                                     ; preds = %43
  %48 = tail call i32 @umask(i32 0) #9, !dbg !843
  tail call void @llvm.dbg.value(metadata i32 %48, i64 0, metadata !767, metadata !703), !dbg !844
  %49 = tail call i32 @umask(i32 %48) #9, !dbg !845
  %50 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 1, !dbg !846
  store i32 %48, i32* %50, align 8, !dbg !847, !tbaa !848
  br i1 %45, label %51, label %60, !dbg !849

; <label>:51:                                     ; preds = %47
  %52 = tail call %struct.mode_change* @mode_compile(i8* nonnull %19) #9, !dbg !850
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %52, i64 0, metadata !770, metadata !703), !dbg !851
  %53 = icmp eq %struct.mode_change* %52, null, !dbg !852
  br i1 %53, label %54, label %57, !dbg !854

; <label>:54:                                     ; preds = %51
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 5) #9, !dbg !855
  %56 = tail call i8* @quote(i8* nonnull %19) #9, !dbg !855
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %55, i8* %56) #9, !dbg !855
  unreachable, !dbg !855

; <label>:57:                                     ; preds = %51
  %58 = call i32 @mode_adjust(i32 511, i1 zeroext true, i32 %48, %struct.mode_change* nonnull %52, i32* nonnull %7) #9, !dbg !856
  store i32 %58, i32* %6, align 4, !dbg !857, !tbaa !789
  %59 = bitcast %struct.mode_change* %52 to i8*, !dbg !858
  call void @free(i8* %59) #9, !dbg !859
  br label %61, !dbg !860

; <label>:60:                                     ; preds = %47
  store i32 511, i32* %6, align 4, !dbg !861, !tbaa !789
  br label %61

; <label>:61:                                     ; preds = %57, %60, %43
  %62 = load i32, i32* @optind, align 4, !dbg !862, !tbaa !833
  %63 = sub nsw i32 %0, %62, !dbg !863
  %64 = sext i32 %62 to i64, !dbg !864
  %65 = getelementptr inbounds i8*, i8** %1, i64 %64, !dbg !864
  %66 = call i32 @savewd_process_files(i32 %63, i8** %65, i32 (i8*, %struct.savewd*, i8*)* nonnull @process_dir, i8* nonnull %4) #9, !dbg !865
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #9, !dbg !866
  ret i32 %66, !dbg !867
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @make_ancestor(i8*, i8* nocapture readonly, i8* nocapture readonly) #6 !dbg !868 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !870, metadata !703), !dbg !882
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !871, metadata !703), !dbg !883
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !872, metadata !703), !dbg !884
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !873, metadata !703), !dbg !885
  %4 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !886
  %5 = load i8, i8* %4, align 4, !dbg !886, !tbaa !798, !range !888
  %6 = icmp eq i8 %5, 0, !dbg !886
  br i1 %6, label %9, label %7, !dbg !889

; <label>:7:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !890, metadata !703) #9, !dbg !897
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !896, metadata !703) #9, !dbg !899
  %8 = tail call i32* @__errno_location() #18, !dbg !900
  store i32 95, i32* %8, align 4, !dbg !901, !tbaa !833
  br label %9, !dbg !902

; <label>:9:                                      ; preds = %7, %3
  tail call void @llvm.dbg.value(metadata i32 192, i64 0, metadata !876, metadata !703), !dbg !903
  %10 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !904
  %11 = bitcast i8* %10 to i32*, !dbg !904
  %12 = load i32, i32* %11, align 8, !dbg !904, !tbaa !848
  %13 = and i32 %12, 192, !dbg !905
  %14 = icmp eq i32 %13, 0, !dbg !906
  br i1 %14, label %15, label %17, !dbg !907

; <label>:15:                                     ; preds = %9
  %16 = tail call i32 @mkdir(i8* %1, i32 511) #9, !dbg !908
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !878, metadata !703), !dbg !909
  br label %25

; <label>:17:                                     ; preds = %9
  %18 = and i32 %12, -193, !dbg !910
  %19 = tail call i32 @umask(i32 %18) #9, !dbg !912
  %20 = tail call i32 @mkdir(i8* %1, i32 511) #9, !dbg !908
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !878, metadata !703), !dbg !909
  %21 = tail call i32* @__errno_location() #18, !dbg !913
  %22 = load i32, i32* %21, align 4, !dbg !913, !tbaa !833
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !879, metadata !703), !dbg !914
  %23 = load i32, i32* %11, align 8, !dbg !915, !tbaa !848
  %24 = tail call i32 @umask(i32 %23) #9, !dbg !916
  store i32 %22, i32* %21, align 4, !dbg !917, !tbaa !833
  br label %25, !dbg !918

; <label>:25:                                     ; preds = %15, %17
  %26 = phi i32 [ %20, %17 ], [ %16, %15 ]
  %27 = icmp eq i32 %26, 0, !dbg !919
  br i1 %27, label %28, label %39, !dbg !921

; <label>:28:                                     ; preds = %25
  %29 = load i32, i32* %11, align 8, !dbg !922, !tbaa !848
  %30 = lshr i32 %29, 8, !dbg !924
  %31 = and i32 %30, 1, !dbg !924
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !878, metadata !703), !dbg !909
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !925, metadata !703) #9, !dbg !932
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !930, metadata !703) #9, !dbg !934
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !931, metadata !703) #9, !dbg !935
  %32 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !936
  %33 = bitcast i8* %32 to i8**, !dbg !936
  %34 = load i8*, i8** %33, align 8, !dbg !936, !tbaa !795
  %35 = icmp eq i8* %34, null, !dbg !938
  br i1 %35, label %39, label %36, !dbg !939

; <label>:36:                                     ; preds = %28
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !940, !tbaa !710
  %38 = tail call i8* @quotearg_style(i32 4, i8* %0) #9, !dbg !941
  tail call void (%struct._IO_FILE*, i8*, ...) @prog_fprintf(%struct._IO_FILE* %37, i8* nonnull %34, i8* %38) #9, !dbg !942
  br label %39, !dbg !942

; <label>:39:                                     ; preds = %36, %28, %25
  %40 = phi i32 [ %26, %25 ], [ %31, %28 ], [ %31, %36 ]
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !878, metadata !703), !dbg !909
  ret i32 %40, !dbg !943
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @umask(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @process_dir(i8*, %struct.savewd*, i8*) #6 !dbg !944 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !949, metadata !703), !dbg !954
  tail call void @llvm.dbg.value(metadata %struct.savewd* %1, i64 0, metadata !950, metadata !703), !dbg !955
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !951, metadata !703), !dbg !956
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !952, metadata !703), !dbg !957
  %4 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !958
  %5 = load i8, i8* %4, align 4, !dbg !958, !tbaa !798, !range !888
  %6 = icmp ne i8 %5, 0, !dbg !958
  %7 = bitcast i8* %2 to i32 (i8*, i8*, i8*)**
  %8 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %7, align 8, !tbaa !783
  %9 = icmp eq i32 (i8*, i8*, i8*)* %8, null, !dbg !960
  %10 = and i1 %6, %9, !dbg !963
  br i1 %10, label %11, label %13, !dbg !963

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !890, metadata !703) #9, !dbg !964
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !896, metadata !703) #9, !dbg !966
  %12 = tail call i32* @__errno_location() #18, !dbg !967
  store i32 95, i32* %12, align 4, !dbg !968, !tbaa !833
  br label %13, !dbg !969

; <label>:13:                                     ; preds = %3, %11
  %14 = phi i32 (i8*, i8*, i8*)* [ null, %11 ], [ %8, %3 ], !dbg !970
  %15 = getelementptr inbounds i8, i8* %2, i64 12, !dbg !971
  %16 = bitcast i8* %15 to i32*, !dbg !971
  %17 = load i32, i32* %16, align 4, !dbg !971, !tbaa !789
  %18 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !972
  %19 = bitcast i8* %18 to i32*, !dbg !972
  %20 = load i32, i32* %19, align 8, !dbg !972, !tbaa !792
  %21 = tail call zeroext i1 @make_dir_parents(i8* %0, %struct.savewd* %1, i32 (i8*, i8*, i8*)* %14, i8* nonnull %2, i32 %17, void (i8*, i8*)* nonnull @announce_mkdir, i32 %20, i32 -1, i32 -1, i1 zeroext true) #9, !dbg !973
  %22 = xor i1 %21, true, !dbg !973
  %23 = zext i1 %22 to i32, !dbg !973
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !953, metadata !703), !dbg !974
  br i1 %21, label %24, label %32, !dbg !975

; <label>:24:                                     ; preds = %13
  %25 = load i8, i8* %4, align 4, !dbg !977, !tbaa !798, !range !888
  %26 = icmp eq i8 %25, 0, !dbg !977
  br i1 %26, label %32, label %27, !dbg !978

; <label>:27:                                     ; preds = %24
  %28 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %7, align 8, !dbg !979, !tbaa !783
  %29 = icmp eq i32 (i8*, i8*, i8*)* %28, null, !dbg !980
  br i1 %29, label %32, label %30, !dbg !981

; <label>:30:                                     ; preds = %27
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !982, metadata !703) #9, !dbg !989
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !987, metadata !703) #9, !dbg !993
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !988, metadata !703) #9, !dbg !994
  %31 = tail call i32* @__errno_location() #18, !dbg !995
  store i32 95, i32* %31, align 4, !dbg !996, !tbaa !833
  br label %32, !dbg !997

; <label>:32:                                     ; preds = %30, %27, %24, %13
  ret i32 %23, !dbg !998
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal void @announce_mkdir(i8*, i8* nocapture readonly) #6 !dbg !926 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !925, metadata !703), !dbg !999
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !930, metadata !703), !dbg !1000
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !931, metadata !703), !dbg !1001
  %3 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !1002
  %4 = bitcast i8* %3 to i8**, !dbg !1002
  %5 = load i8*, i8** %4, align 8, !dbg !1002, !tbaa !795
  %6 = icmp eq i8* %5, null, !dbg !1003
  br i1 %6, label %10, label %7, !dbg !1004

; <label>:7:                                      ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1005, !tbaa !710
  %9 = tail call i8* @quotearg_style(i32 4, i8* %0) #9, !dbg !1006
  tail call void (%struct._IO_FILE*, i8*, ...) @prog_fprintf(%struct._IO_FILE* %8, i8* nonnull %5, i8* %9) #9, !dbg !1007
  br label %10, !dbg !1007

; <label>:10:                                     ; preds = %2, %7
  ret void, !dbg !1008
}

; Function Attrs: nounwind
declare i32 @mkdir(i8* nocapture readonly, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @prog_fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #6 !dbg !1009 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1065, metadata !703), !dbg !1079
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1066, metadata !703), !dbg !1080
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !1081
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #9, !dbg !1081
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !1067, metadata !703), !dbg !1082
  %5 = load i8*, i8** @program_name, align 8, !dbg !1083, !tbaa !710
  %6 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %0) #9, !dbg !1083
  %7 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), %struct._IO_FILE* %0) #9, !dbg !1084
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !1085
  call void @llvm.va_start(i8* nonnull %4), !dbg !1085
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1086, metadata !703) #9, !dbg !1097
  call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1095, metadata !703) #9, !dbg !1099
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %8, i64 0, metadata !1096, metadata !703) #9, !dbg !1100
  %9 = call i32 @__vfprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %1, %struct.__va_list_tag* nonnull %8) #9, !dbg !1101
  call void @llvm.va_end(i8* nonnull %4), !dbg !1102
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1103, metadata !703) #9, !dbg !1110
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1109, metadata !703) #9, !dbg !1112
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1113
  %11 = load i8*, i8** %10, align 8, !dbg !1113, !tbaa !1114
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1113
  %13 = load i8*, i8** %12, align 8, !dbg !1113, !tbaa !1118
  %14 = icmp ult i8* %11, %13, !dbg !1113
  br i1 %14, label %17, label %15, !dbg !1113, !prof !1119

; <label>:15:                                     ; preds = %2
  %16 = call i32 @__overflow(%struct._IO_FILE* nonnull %0, i32 10) #9, !dbg !1113
  br label %19, !dbg !1113

; <label>:17:                                     ; preds = %2
  %18 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1113
  store i8* %18, i8** %10, align 8, !dbg !1113, !tbaa !1114
  store i8 10, i8* %11, align 1, !dbg !1113, !tbaa !1120
  br label %19, !dbg !1113

; <label>:19:                                     ; preds = %15, %17
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #9, !dbg !1121
  ret void, !dbg !1121
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

declare i32 @__vfprintf_chk(%struct._IO_FILE*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1122 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1124, metadata !703), !dbg !1125
  store i8* %0, i8** @file_name, align 8, !dbg !1126, !tbaa !710
  ret void, !dbg !1127
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1128 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1132, metadata !703), !dbg !1133
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1134, !tbaa !1135
  ret void, !dbg !1136
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1137 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1142, !tbaa !710
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #9, !dbg !1143
  %3 = icmp eq i32 %2, 0, !dbg !1144
  br i1 %3, label %21, label %4, !dbg !1145

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1146, !tbaa !1135, !range !888
  %6 = icmp eq i8 %5, 0, !dbg !1146
  %7 = tail call i32* @__errno_location() #18, !dbg !1147
  br i1 %6, label %11, label %8, !dbg !1149

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1150, !tbaa !833
  %10 = icmp eq i32 %9, 32, !dbg !1151
  br i1 %10, label %21, label %11, !dbg !1152

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i32 5) #9, !dbg !1153
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1139, metadata !703), !dbg !1154
  %13 = load i8*, i8** @file_name, align 8, !dbg !1155, !tbaa !710
  %14 = icmp eq i8* %13, null, !dbg !1155
  %15 = load i32, i32* %7, align 4, !tbaa !833
  br i1 %14, label %18, label %16, !dbg !1156

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #9, !dbg !1157
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.24, i64 0, i64 0), i8* %17, i8* %12) #9, !dbg !1158
  br label %19, !dbg !1158

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.25, i64 0, i64 0), i8* %12) #9, !dbg !1159
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1160, !tbaa !833
  tail call void @_exit(i32 %20) #16, !dbg !1161
  unreachable, !dbg !1161

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1162, !tbaa !710
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #9, !dbg !1164
  %24 = icmp eq i32 %23, 0, !dbg !1165
  br i1 %24, label %27, label %25, !dbg !1166

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1167, !tbaa !833
  tail call void @_exit(i32 %26) #16, !dbg !1168
  unreachable, !dbg !1168

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1169
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @make_dir_parents(i8*, %struct.savewd*, i32 (i8*, i8*, i8*)*, i8*, i32, void (i8*, i8*)* nocapture, i32, i32, i32, i1 zeroext) local_unnamed_addr #6 !dbg !1170 {
  %11 = alloca %struct.stat, align 8
  %12 = alloca [2 x i32], align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1177, metadata !703), !dbg !1247
  tail call void @llvm.dbg.value(metadata %struct.savewd* %1, i64 0, metadata !1178, metadata !703), !dbg !1248
  tail call void @llvm.dbg.value(metadata i32 (i8*, i8*, i8*)* %2, i64 0, metadata !1179, metadata !703), !dbg !1249
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1180, metadata !703), !dbg !1250
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1181, metadata !703), !dbg !1251
  tail call void @llvm.dbg.value(metadata void (i8*, i8*)* %5, i64 0, metadata !1182, metadata !703), !dbg !1252
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1183, metadata !703), !dbg !1253
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1184, metadata !703), !dbg !1254
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1185, metadata !703), !dbg !1255
  tail call void @llvm.dbg.value(metadata i1 %9, i64 0, metadata !1186, metadata !703), !dbg !1256
  %13 = load i8, i8* %0, align 1, !dbg !1257, !tbaa !1120
  %14 = icmp eq i8 %13, 47, !dbg !1257
  br i1 %14, label %23, label %15, !dbg !1257

; <label>:15:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata %struct.savewd* %1, i64 0, metadata !1258, metadata !703), !dbg !1265
  %16 = getelementptr inbounds %struct.savewd, %struct.savewd* %1, i64 0, i32 0, !dbg !1267
  %17 = load i32, i32* %16, align 4, !dbg !1267, !tbaa !1268
  %18 = icmp eq i32 %17, 4, !dbg !1270
  br i1 %18, label %19, label %23, !dbg !1271

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.savewd, %struct.savewd* %1, i64 0, i32 1, i32 0, !dbg !1272
  %21 = load i32, i32* %20, align 4, !dbg !1272, !tbaa !1120
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !1187, metadata !703), !dbg !1273
  %22 = icmp eq i32 %21, 0, !dbg !1274
  br i1 %22, label %23, label %114, !dbg !1275

; <label>:23:                                     ; preds = %15, %10, %19
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1188, metadata !703), !dbg !1276
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1192, metadata !703), !dbg !1277
  %24 = icmp ne i32 (i8*, i8*, i8*)* %2, null, !dbg !1278
  br i1 %24, label %25, label %33, !dbg !1280

; <label>:25:                                     ; preds = %23
  %26 = tail call i64 @mkancesdirs(i8* nonnull %0, %struct.savewd* %1, i32 (i8*, i8*, i8*)* nonnull %2, i8* %3) #9, !dbg !1281
  tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !1188, metadata !703), !dbg !1276
  %27 = icmp slt i64 %26, 0, !dbg !1283
  br i1 %27, label %28, label %33, !dbg !1285

; <label>:28:                                     ; preds = %25
  %29 = icmp eq i64 %26, -1, !dbg !1286
  br i1 %29, label %30, label %118, !dbg !1289

; <label>:30:                                     ; preds = %28
  %31 = tail call i32* @__errno_location() #18, !dbg !1290
  %32 = load i32, i32* %31, align 4, !dbg !1290, !tbaa !833
  tail call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !1187, metadata !703), !dbg !1273
  tail call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !1187, metadata !703), !dbg !1273
  tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !1188, metadata !703), !dbg !1276
  br label %114

; <label>:33:                                     ; preds = %25, %23
  %34 = phi i64 [ 0, %23 ], [ %26, %25 ]
  tail call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !1187, metadata !703), !dbg !1273
  tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !1188, metadata !703), !dbg !1276
  %35 = and i32 %8, %7, !dbg !1291
  %36 = icmp eq i32 %35, -1, !dbg !1291
  %37 = and i32 %6, 3072, !dbg !1292
  %38 = and i32 %4, 512, !dbg !1293
  %39 = or i32 %37, %38, !dbg !1294
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1197, metadata !703), !dbg !1295
  br i1 %36, label %42, label %40, !dbg !1296

; <label>:40:                                     ; preds = %33
  %41 = and i32 %4, -64, !dbg !1297
  tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !1197, metadata !703), !dbg !1295
  br label %46, !dbg !1299

; <label>:42:                                     ; preds = %33
  %43 = icmp eq i32 %39, 0, !dbg !1300
  %44 = and i32 %4, -19, !dbg !1301
  tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !1197, metadata !703), !dbg !1295
  %45 = select i1 %43, i32 %4, i32 %44, !dbg !1303
  br label %46, !dbg !1303

; <label>:46:                                     ; preds = %42, %40
  %47 = phi i32 [ %41, %40 ], [ %45, %42 ]
  tail call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !1197, metadata !703), !dbg !1295
  %48 = getelementptr inbounds i8, i8* %0, i64 %34, !dbg !1304
  %49 = tail call i32 @mkdir(i8* %48, i32 %47) #9, !dbg !1305
  %50 = icmp eq i32 %49, 0, !dbg !1306
  br i1 %50, label %51, label %59, !dbg !1307

; <label>:51:                                     ; preds = %46
  %52 = and i32 %4, 511, !dbg !1308
  %53 = and i32 %52, %6, !dbg !1309
  tail call void %5(i8* nonnull %0, i8* %3) #9, !dbg !1310
  %54 = or i32 %39, %53, !dbg !1311
  %55 = icmp eq i32 %54, 0, !dbg !1311
  %56 = and i1 %55, %36, !dbg !1311
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !1192, metadata !703), !dbg !1277
  tail call void @llvm.dbg.value(metadata i32 %61, i64 0, metadata !1187, metadata !703), !dbg !1273
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !1197, metadata !703), !dbg !1295
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1192, metadata !703), !dbg !1277
  br i1 %56, label %57, label %79, !dbg !1312

; <label>:57:                                     ; preds = %51
  %58 = bitcast %struct.stat* %11 to i8*, !dbg !1313
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %58) #9, !dbg !1313
  br label %76, !dbg !1314

; <label>:59:                                     ; preds = %46
  %60 = tail call i32* @__errno_location() #18, !dbg !1316
  %61 = load i32, i32* %60, align 4, !dbg !1316, !tbaa !833
  tail call void @llvm.dbg.value(metadata i32 %61, i64 0, metadata !1187, metadata !703), !dbg !1273
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !1197, metadata !703), !dbg !1295
  tail call void @llvm.dbg.value(metadata i32 %61, i64 0, metadata !1187, metadata !703), !dbg !1273
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !1197, metadata !703), !dbg !1295
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1192, metadata !703), !dbg !1277
  br i1 %9, label %62, label %79, !dbg !1312

; <label>:62:                                     ; preds = %59
  %63 = bitcast %struct.stat* %11 to i8*, !dbg !1313
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %63) #9, !dbg !1313
  %64 = icmp eq i32 %61, 0, !dbg !1318
  br i1 %64, label %76, label %65, !dbg !1314

; <label>:65:                                     ; preds = %62
  %66 = icmp ne i32 %61, 2, !dbg !1319
  %67 = and i1 %24, %66, !dbg !1320
  br i1 %67, label %68, label %78, !dbg !1320

; <label>:68:                                     ; preds = %65
  tail call void @llvm.dbg.value(metadata %struct.stat* %11, i64 0, metadata !1201, metadata !703), !dbg !1321
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !1322, metadata !703) #9, !dbg !1330
  tail call void @llvm.dbg.value(metadata %struct.stat* %11, i64 0, metadata !1329, metadata !703) #9, !dbg !1330
  %69 = call i32 @__xstat(i32 1, i8* nonnull %48, %struct.stat* nonnull %11) #9, !dbg !1332
  %70 = icmp eq i32 %69, 0, !dbg !1333
  br i1 %70, label %71, label %78, !dbg !1334

; <label>:71:                                     ; preds = %68
  %72 = getelementptr inbounds %struct.stat, %struct.stat* %11, i64 0, i32 3, !dbg !1335
  %73 = load i32, i32* %72, align 8, !dbg !1335, !tbaa !1336
  %74 = and i32 %73, 61440, !dbg !1335
  %75 = icmp eq i32 %74, 16384, !dbg !1335
  br i1 %75, label %76, label %78, !dbg !1339

; <label>:76:                                     ; preds = %71, %62, %57
  %77 = phi i8* [ %58, %57 ], [ %63, %62 ], [ %63, %71 ]
  call void @llvm.lifetime.end.p0i8(i64 144, i8* %77) #9, !dbg !1340
  br label %118

; <label>:78:                                     ; preds = %65, %68, %71
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %63) #9, !dbg !1340
  br label %114

; <label>:79:                                     ; preds = %51, %59
  %80 = phi i32 [ 0, %51 ], [ %61, %59 ]
  %81 = phi i32 [ %47, %51 ], [ -1, %59 ]
  %82 = phi i32 [ 3, %51 ], [ 2, %59 ]
  %83 = bitcast [2 x i32]* %12 to i8*, !dbg !1341
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %83) #9, !dbg !1341
  tail call void @llvm.dbg.declare(metadata [2 x i32]* %12, metadata !1237, metadata !703), !dbg !1342
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0, !dbg !1343
  %85 = call i32 @savewd_chdir(%struct.savewd* %1, i8* %48, i32 %82, i32* nonnull %84) #9, !dbg !1344
  call void @llvm.dbg.value(metadata i32 %85, i64 0, metadata !1242, metadata !703), !dbg !1345
  %86 = icmp slt i32 %85, -1, !dbg !1346
  br i1 %86, label %87, label %88, !dbg !1347

; <label>:87:                                     ; preds = %79
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %83) #9, !dbg !1348
  br label %118

; <label>:88:                                     ; preds = %79
  %89 = icmp eq i32 %85, 0, !dbg !1349
  %90 = select i1 %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0), i8* %48, !dbg !1350
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !1246, metadata !703), !dbg !1351
  %91 = load i32, i32* %84, align 4, !dbg !1352, !tbaa !833
  %92 = call i32 @dirchownmod(i32 %91, i8* %90, i32 %81, i32 %7, i32 %8, i32 %4, i32 %6) #9, !dbg !1354
  %93 = icmp eq i32 %92, 0, !dbg !1355
  br i1 %93, label %112, label %94, !dbg !1356

; <label>:94:                                     ; preds = %88
  %95 = icmp eq i32 %80, 0, !dbg !1357
  br i1 %95, label %96, label %98, !dbg !1359

; <label>:96:                                     ; preds = %94
  %97 = tail call i32* @__errno_location() #18, !dbg !1360
  br label %105, !dbg !1359

; <label>:98:                                     ; preds = %94
  %99 = icmp ne i32 %80, 2, !dbg !1362
  %100 = and i1 %24, %99, !dbg !1363
  br i1 %100, label %101, label %111, !dbg !1363

; <label>:101:                                    ; preds = %98
  %102 = tail call i32* @__errno_location() #18, !dbg !1364
  %103 = load i32, i32* %102, align 4, !dbg !1364, !tbaa !833
  %104 = icmp eq i32 %103, 20, !dbg !1365
  br i1 %104, label %111, label %105, !dbg !1366

; <label>:105:                                    ; preds = %96, %101
  %106 = phi i32* [ %97, %96 ], [ %102, %101 ], !dbg !1360
  %107 = load i32, i32* %106, align 4, !dbg !1360, !tbaa !833
  %108 = select i1 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1.42, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2.43, i64 0, i64 0), !dbg !1367
  %109 = call i8* @dcgettext(i8* null, i8* %108, i32 5) #9, !dbg !1367
  %110 = call i8* @quote(i8* nonnull %0) #9, !dbg !1368
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %107, i8* %109, i8* %110) #9, !dbg !1369
  br label %112, !dbg !1370

; <label>:111:                                    ; preds = %101, %98
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %83) #9, !dbg !1348
  br label %114

; <label>:112:                                    ; preds = %105, %88
  %113 = phi i1 [ false, %105 ], [ true, %88 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %83) #9, !dbg !1348
  br label %118

; <label>:114:                                    ; preds = %30, %78, %111, %19
  %115 = phi i32 [ %21, %19 ], [ %80, %111 ], [ %61, %78 ], [ %32, %30 ]
  call void @llvm.dbg.value(metadata i32 %115, i64 0, metadata !1187, metadata !703), !dbg !1273
  %116 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3.44, i64 0, i64 0), i32 5) #9, !dbg !1371
  %117 = call i8* @quote(i8* nonnull %0) #9, !dbg !1372
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %115, i8* %116, i8* %117) #9, !dbg !1373
  br label %118, !dbg !1374

; <label>:118:                                    ; preds = %87, %76, %112, %28, %114
  %119 = phi i1 [ false, %114 ], [ true, %28 ], [ true, %87 ], [ true, %76 ], [ %113, %112 ]
  ret i1 %119, !dbg !1375
}

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.mode_change* @mode_compile(i8*) local_unnamed_addr #6 !dbg !1376 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1388, metadata !703), !dbg !1412
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1390, metadata !703), !dbg !1413
  %2 = load i8, i8* %0, align 1, !dbg !1414, !tbaa !1120
  %3 = and i8 %2, -8, !dbg !1415
  %4 = icmp eq i8 %3, 48, !dbg !1415
  br i1 %4, label %6, label %5, !dbg !1415, !llvm.loop !1416

; <label>:5:                                      ; preds = %1
  br label %41, !dbg !1419

; <label>:6:                                      ; preds = %1
  br label %7, !dbg !1421

; <label>:7:                                      ; preds = %6, %17
  %8 = phi i8 [ %18, %17 ], [ %2, %6 ], !dbg !1423
  %9 = phi i32 [ %15, %17 ], [ 0, %6 ]
  %10 = phi i8* [ %12, %17 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1391, metadata !703), !dbg !1424
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1392, metadata !703), !dbg !1425
  %11 = shl i32 %9, 3, !dbg !1421
  %12 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1426
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1391, metadata !703), !dbg !1424
  %13 = sext i8 %8 to i32, !dbg !1423
  %14 = add i32 %11, -48, !dbg !1427
  %15 = add i32 %14, %13, !dbg !1428
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !1392, metadata !703), !dbg !1425
  %16 = icmp ugt i32 %15, 4095, !dbg !1429
  br i1 %16, label %154, label %17, !dbg !1431

; <label>:17:                                     ; preds = %7
  %18 = load i8, i8* %12, align 1, !dbg !1432, !tbaa !1120
  %19 = and i8 %18, -8, !dbg !1433
  %20 = icmp eq i8 %19, 48, !dbg !1433
  br i1 %20, label %7, label %21, !dbg !1433, !llvm.loop !1416

; <label>:21:                                     ; preds = %17
  %22 = icmp eq i8 %18, 0, !dbg !1434
  br i1 %22, label %23, label %154, !dbg !1436

; <label>:23:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !1395, metadata !703), !dbg !1437
  %24 = ptrtoint i8* %12 to i64, !dbg !1438
  %25 = ptrtoint i8* %0 to i64, !dbg !1438
  %26 = sub i64 %24, %25, !dbg !1438
  %27 = icmp slt i64 %26, 5, !dbg !1439
  %28 = and i32 %15, 3072, !dbg !1440
  %29 = or i32 %28, 1023, !dbg !1441
  %30 = select i1 %27, i32 %29, i32 4095, !dbg !1442
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !1396, metadata !703), !dbg !1443
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !1444, metadata !703) #9, !dbg !1451
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !1449, metadata !703) #9, !dbg !1453
  %31 = tail call noalias i8* @xmalloc(i64 32) #9, !dbg !1454
  %32 = bitcast i8* %31 to %struct.mode_change*, !dbg !1454
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %32, i64 0, metadata !1450, metadata !703) #9, !dbg !1455
  store i8 61, i8* %31, align 4, !dbg !1456, !tbaa !1457
  %33 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !1459
  store i8 1, i8* %33, align 1, !dbg !1460, !tbaa !1461
  %34 = getelementptr inbounds i8, i8* %31, i64 4, !dbg !1462
  %35 = bitcast i8* %34 to i32*, !dbg !1462
  store i32 4095, i32* %35, align 4, !dbg !1463, !tbaa !1464
  %36 = getelementptr inbounds i8, i8* %31, i64 8, !dbg !1465
  %37 = bitcast i8* %36 to i32*, !dbg !1465
  store i32 %15, i32* %37, align 4, !dbg !1466, !tbaa !1467
  %38 = getelementptr inbounds i8, i8* %31, i64 12, !dbg !1468
  %39 = bitcast i8* %38 to i32*, !dbg !1468
  store i32 %30, i32* %39, align 4, !dbg !1469, !tbaa !1470
  %40 = getelementptr inbounds i8, i8* %31, i64 17, !dbg !1471
  store i8 0, i8* %40, align 1, !dbg !1472, !tbaa !1461
  br label %154, !dbg !1473

; <label>:41:                                     ; preds = %5, %46
  %42 = phi i8 [ %50, %46 ], [ %2, %5 ], !dbg !1474
  %43 = phi i8* [ %49, %46 ], [ %0, %5 ]
  %44 = phi i64 [ %48, %46 ], [ 1, %5 ]
  tail call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !1397, metadata !703), !dbg !1476
  tail call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !1391, metadata !703), !dbg !1424
  switch i8 %42, label %45 [
    i8 0, label %51
    i8 61, label %46
    i8 43, label %46
    i8 45, label %46
  ], !dbg !1419

; <label>:45:                                     ; preds = %41
  br label %46, !dbg !1477

; <label>:46:                                     ; preds = %41, %41, %41, %45
  %47 = phi i64 [ 0, %45 ], [ 1, %41 ], [ 1, %41 ], [ 1, %41 ]
  %48 = add i64 %47, %44, !dbg !1478
  tail call void @llvm.dbg.value(metadata i64 %48, i64 0, metadata !1397, metadata !703), !dbg !1476
  %49 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !1479
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1391, metadata !703), !dbg !1424
  %50 = load i8, i8* %49, align 1, !dbg !1474, !tbaa !1120
  br label %41, !dbg !1480, !llvm.loop !1481

; <label>:51:                                     ; preds = %41
  tail call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !1483, metadata !703) #9, !dbg !1489
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !1488, metadata !703) #9, !dbg !1491
  %52 = icmp ugt i64 %44, 576460752303423487, !dbg !1492
  br i1 %52, label %53, label %54, !dbg !1494

; <label>:53:                                     ; preds = %51
  tail call void @xalloc_die() #16, !dbg !1495
  unreachable, !dbg !1495

; <label>:54:                                     ; preds = %51
  %55 = shl i64 %44, 4, !dbg !1496
  %56 = tail call noalias i8* @xmalloc(i64 %55) #9, !dbg !1497
  %57 = bitcast i8* %56 to %struct.mode_change*, !dbg !1498
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %57, i64 0, metadata !1389, metadata !703), !dbg !1499
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1391, metadata !703), !dbg !1424
  br label %58, !dbg !1500

; <label>:58:                                     ; preds = %149, %54
  %59 = phi i8* [ %0, %54 ], [ %150, %149 ]
  %60 = phi i64 [ 0, %54 ], [ %134, %149 ]
  tail call void @llvm.dbg.value(metadata i64 %60, i64 0, metadata !1390, metadata !703), !dbg !1413
  tail call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !1391, metadata !703), !dbg !1424
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1399, metadata !703), !dbg !1501
  br label %61, !dbg !1502

; <label>:61:                                     ; preds = %70, %58
  %62 = phi i8* [ %59, %58 ], [ %73, %70 ]
  %63 = phi i32 [ 0, %58 ], [ %72, %70 ]
  tail call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !1399, metadata !703), !dbg !1501
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1391, metadata !703), !dbg !1424
  %64 = load i8, i8* %62, align 1, !dbg !1503, !tbaa !1120
  %65 = sext i8 %64 to i32, !dbg !1503
  switch i32 %65, label %153 [
    i32 117, label %67
    i32 103, label %70
    i32 111, label %68
    i32 97, label %69
    i32 61, label %66
    i32 43, label %66
    i32 45, label %66
  ], !dbg !1506, !llvm.loop !1507

; <label>:66:                                     ; preds = %61, %61, %61
  br label %74, !dbg !1510

; <label>:67:                                     ; preds = %61
  tail call void @llvm.dbg.value(metadata i32 %72, i64 0, metadata !1399, metadata !703), !dbg !1501
  br label %70, !dbg !1511

; <label>:68:                                     ; preds = %61
  br label %70, !dbg !1513

; <label>:69:                                     ; preds = %61
  br label %70, !dbg !1514

; <label>:70:                                     ; preds = %61, %67, %68, %69
  %71 = phi i32 [ 2496, %67 ], [ 519, %68 ], [ 4095, %69 ], [ 1080, %61 ]
  %72 = or i32 %71, %63
  tail call void @llvm.dbg.value(metadata i32 %72, i64 0, metadata !1399, metadata !703), !dbg !1501
  %73 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1515
  tail call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !1391, metadata !703), !dbg !1424
  br label %61, !dbg !1516, !llvm.loop !1517

; <label>:74:                                     ; preds = %148, %66
  %75 = phi i8 [ %64, %66 ], [ %147, %148 ], !dbg !1520
  %76 = phi i8* [ %62, %66 ], [ %129, %148 ]
  %77 = phi i32 [ %63, %66 ], [ %130, %148 ]
  %78 = phi i64 [ %60, %66 ], [ %134, %148 ]
  tail call void @llvm.dbg.value(metadata i64 %78, i64 0, metadata !1390, metadata !703), !dbg !1413
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !1399, metadata !703), !dbg !1501
  tail call void @llvm.dbg.value(metadata i8* %76, i64 0, metadata !1391, metadata !703), !dbg !1424
  %79 = getelementptr inbounds i8, i8* %76, i64 1, !dbg !1510
  tail call void @llvm.dbg.value(metadata i8* %79, i64 0, metadata !1391, metadata !703), !dbg !1424
  tail call void @llvm.dbg.value(metadata i8 %75, i64 0, metadata !1403, metadata !703), !dbg !1521
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1406, metadata !703), !dbg !1522
  tail call void @llvm.dbg.value(metadata i8 3, i64 0, metadata !1407, metadata !703), !dbg !1523
  %80 = load i8, i8* %79, align 1, !dbg !1524, !tbaa !1120
  %81 = sext i8 %80 to i32, !dbg !1524
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
  ], !dbg !1525, !llvm.loop !1526

; <label>:82:                                     ; preds = %74, %74, %74, %74, %74, %74, %74, %74
  br label %84, !dbg !1529

; <label>:83:                                     ; preds = %74
  br label %107, !dbg !1531

; <label>:84:                                     ; preds = %82, %94
  %85 = phi i8 [ %95, %94 ], [ %80, %82 ], !dbg !1534
  %86 = phi i8* [ %89, %94 ], [ %79, %82 ]
  %87 = phi i32 [ %92, %94 ], [ 0, %82 ]
  tail call void @llvm.dbg.value(metadata i32 %87, i64 0, metadata !1409, metadata !703), !dbg !1535
  tail call void @llvm.dbg.value(metadata i8* %86, i64 0, metadata !1391, metadata !703), !dbg !1424
  %88 = shl i32 %87, 3, !dbg !1529
  %89 = getelementptr inbounds i8, i8* %86, i64 1, !dbg !1536
  tail call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !1391, metadata !703), !dbg !1424
  %90 = sext i8 %85 to i32, !dbg !1534
  %91 = add i32 %88, -48, !dbg !1537
  %92 = add i32 %91, %90, !dbg !1538
  tail call void @llvm.dbg.value(metadata i32 %92, i64 0, metadata !1409, metadata !703), !dbg !1535
  %93 = icmp ugt i32 %92, 4095, !dbg !1539
  br i1 %93, label %153, label %94, !dbg !1541

; <label>:94:                                     ; preds = %84
  %95 = load i8, i8* %89, align 1, !dbg !1542, !tbaa !1120
  %96 = and i8 %95, -8, !dbg !1543
  %97 = icmp eq i8 %96, 48, !dbg !1543
  br i1 %97, label %84, label %98, !dbg !1543, !llvm.loop !1526

; <label>:98:                                     ; preds = %94
  %99 = icmp eq i32 %77, 0, !dbg !1544
  br i1 %99, label %100, label %153, !dbg !1546

; <label>:100:                                    ; preds = %98
  switch i8 %95, label %153 [
    i8 0, label %128
    i8 44, label %128
  ], !dbg !1547

; <label>:101:                                    ; preds = %74
  tail call void @llvm.dbg.value(metadata i32 448, i64 0, metadata !1405, metadata !703), !dbg !1548
  %102 = getelementptr inbounds i8, i8* %76, i64 2, !dbg !1549
  tail call void @llvm.dbg.value(metadata i8* %102, i64 0, metadata !1391, metadata !703), !dbg !1424
  br label %128, !dbg !1550

; <label>:103:                                    ; preds = %74
  tail call void @llvm.dbg.value(metadata i32 56, i64 0, metadata !1405, metadata !703), !dbg !1548
  %104 = getelementptr inbounds i8, i8* %76, i64 2, !dbg !1551
  tail call void @llvm.dbg.value(metadata i8* %104, i64 0, metadata !1391, metadata !703), !dbg !1424
  br label %128, !dbg !1552

; <label>:105:                                    ; preds = %74
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !1405, metadata !703), !dbg !1548
  %106 = getelementptr inbounds i8, i8* %76, i64 2, !dbg !1553
  tail call void @llvm.dbg.value(metadata i8* %106, i64 0, metadata !1391, metadata !703), !dbg !1424
  br label %128, !dbg !1554

; <label>:107:                                    ; preds = %83, %123
  %108 = phi i8 [ %127, %123 ], [ %80, %83 ], !dbg !1531
  %109 = phi i8* [ %126, %123 ], [ %79, %83 ]
  %110 = phi i32 [ %124, %123 ], [ 0, %83 ]
  %111 = phi i8 [ %125, %123 ], [ 1, %83 ]
  tail call void @llvm.dbg.value(metadata i8 %111, i64 0, metadata !1407, metadata !703), !dbg !1523
  tail call void @llvm.dbg.value(metadata i32 %110, i64 0, metadata !1405, metadata !703), !dbg !1548
  tail call void @llvm.dbg.value(metadata i8* %109, i64 0, metadata !1391, metadata !703), !dbg !1424
  %112 = sext i8 %108 to i32, !dbg !1531
  switch i32 %112, label %128 [
    i32 114, label %113
    i32 119, label %115
    i32 120, label %117
    i32 88, label %123
    i32 115, label %119
    i32 116, label %121
  ], !dbg !1555

; <label>:113:                                    ; preds = %107
  %114 = or i32 %110, 292, !dbg !1556
  tail call void @llvm.dbg.value(metadata i32 %114, i64 0, metadata !1405, metadata !703), !dbg !1548
  br label %123, !dbg !1558

; <label>:115:                                    ; preds = %107
  %116 = or i32 %110, 146, !dbg !1559
  tail call void @llvm.dbg.value(metadata i32 %116, i64 0, metadata !1405, metadata !703), !dbg !1548
  br label %123, !dbg !1560

; <label>:117:                                    ; preds = %107
  %118 = or i32 %110, 73, !dbg !1561
  tail call void @llvm.dbg.value(metadata i32 %118, i64 0, metadata !1405, metadata !703), !dbg !1548
  br label %123, !dbg !1562

; <label>:119:                                    ; preds = %107
  %120 = or i32 %110, 3072, !dbg !1563
  tail call void @llvm.dbg.value(metadata i32 %120, i64 0, metadata !1405, metadata !703), !dbg !1548
  br label %123, !dbg !1564

; <label>:121:                                    ; preds = %107
  %122 = or i32 %110, 512, !dbg !1565
  tail call void @llvm.dbg.value(metadata i32 %122, i64 0, metadata !1405, metadata !703), !dbg !1548
  br label %123, !dbg !1566

; <label>:123:                                    ; preds = %107, %113, %115, %117, %119, %121
  %124 = phi i32 [ %122, %121 ], [ %120, %119 ], [ %118, %117 ], [ %116, %115 ], [ %114, %113 ], [ %110, %107 ]
  %125 = phi i8 [ %111, %121 ], [ %111, %119 ], [ %111, %117 ], [ %111, %115 ], [ %111, %113 ], [ 2, %107 ]
  tail call void @llvm.dbg.value(metadata i8 %125, i64 0, metadata !1407, metadata !703), !dbg !1523
  tail call void @llvm.dbg.value(metadata i32 %124, i64 0, metadata !1405, metadata !703), !dbg !1548
  %126 = getelementptr inbounds i8, i8* %109, i64 1, !dbg !1567
  tail call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !1391, metadata !703), !dbg !1424
  %127 = load i8, i8* %126, align 1, !dbg !1531, !tbaa !1120
  br label %107, !dbg !1568, !llvm.loop !1569

; <label>:128:                                    ; preds = %107, %100, %100, %105, %103, %101
  %129 = phi i8* [ %106, %105 ], [ %104, %103 ], [ %102, %101 ], [ %89, %100 ], [ %89, %100 ], [ %109, %107 ]
  %130 = phi i32 [ %77, %105 ], [ %77, %103 ], [ %77, %101 ], [ 4095, %100 ], [ 4095, %100 ], [ %77, %107 ]
  %131 = phi i32 [ 7, %105 ], [ 56, %103 ], [ 448, %101 ], [ %92, %100 ], [ %92, %100 ], [ %110, %107 ]
  %132 = phi i32 [ 0, %105 ], [ 0, %103 ], [ 0, %101 ], [ 4095, %100 ], [ 4095, %100 ], [ 0, %107 ]
  %133 = phi i8 [ 3, %105 ], [ 3, %103 ], [ 3, %101 ], [ 1, %100 ], [ 1, %100 ], [ %111, %107 ]
  tail call void @llvm.dbg.value(metadata i8 %133, i64 0, metadata !1407, metadata !703), !dbg !1523
  tail call void @llvm.dbg.value(metadata i32 %132, i64 0, metadata !1406, metadata !703), !dbg !1522
  tail call void @llvm.dbg.value(metadata i32 %131, i64 0, metadata !1405, metadata !703), !dbg !1548
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !1399, metadata !703), !dbg !1501
  tail call void @llvm.dbg.value(metadata i8* %129, i64 0, metadata !1391, metadata !703), !dbg !1424
  %134 = add i64 %78, 1, !dbg !1572
  tail call void @llvm.dbg.value(metadata i64 %134, i64 0, metadata !1390, metadata !703), !dbg !1413
  %135 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 0, !dbg !1573
  store i8 %75, i8* %135, align 4, !dbg !1574, !tbaa !1457
  %136 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 1, !dbg !1575
  store i8 %133, i8* %136, align 1, !dbg !1576, !tbaa !1461
  %137 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 2, !dbg !1577
  store i32 %130, i32* %137, align 4, !dbg !1578, !tbaa !1464
  %138 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 3, !dbg !1579
  store i32 %131, i32* %138, align 4, !dbg !1580, !tbaa !1467
  %139 = icmp eq i32 %132, 0, !dbg !1581
  br i1 %139, label %140, label %144, !dbg !1581

; <label>:140:                                    ; preds = %128
  %141 = icmp eq i32 %130, 0, !dbg !1582
  %142 = select i1 %141, i32 -1, i32 %130, !dbg !1582
  %143 = and i32 %142, %131, !dbg !1582
  br label %144, !dbg !1582

; <label>:144:                                    ; preds = %128, %140
  %145 = phi i32 [ %132, %128 ], [ %143, %140 ], !dbg !1581
  %146 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 4, !dbg !1583
  store i32 %145, i32* %146, align 4, !dbg !1584, !tbaa !1470
  tail call void @llvm.dbg.value(metadata i64 %78, i64 0, metadata !1390, metadata !703), !dbg !1413
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !1399, metadata !703), !dbg !1501
  tail call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !1391, metadata !703), !dbg !1424
  %147 = load i8, i8* %129, align 1, !dbg !1585, !tbaa !1120
  switch i8 %147, label %153 [
    i8 61, label %148
    i8 43, label %148
    i8 45, label %148
    i8 44, label %149
    i8 0, label %151
  ], !dbg !1586

; <label>:148:                                    ; preds = %144, %144, %144
  br label %74, !dbg !1413

; <label>:149:                                    ; preds = %144
  tail call void @llvm.dbg.value(metadata i32 %131, i64 0, metadata !1405, metadata !703), !dbg !1548
  tail call void @llvm.dbg.value(metadata i64 %134, i64 0, metadata !1390, metadata !703), !dbg !1413
  tail call void @llvm.dbg.value(metadata i8* %129, i64 0, metadata !1391, metadata !703), !dbg !1424
  %150 = getelementptr inbounds i8, i8* %129, i64 1, !dbg !1587
  tail call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !1391, metadata !703), !dbg !1424
  br label %58, !dbg !1588, !llvm.loop !1589

; <label>:151:                                    ; preds = %144
  %152 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %134, i32 1, !dbg !1592
  store i8 0, i8* %152, align 1, !dbg !1595, !tbaa !1461
  br label %154, !dbg !1596

; <label>:153:                                    ; preds = %61, %98, %100, %144, %84
  tail call void @free(i8* %56) #9, !dbg !1597
  br label %154, !dbg !1598

; <label>:154:                                    ; preds = %7, %23, %21, %153, %151
  %155 = phi %struct.mode_change* [ null, %153 ], [ %57, %151 ], [ %32, %23 ], [ null, %21 ], [ null, %7 ]
  ret %struct.mode_change* %155, !dbg !1599
}

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.mode_change* @mode_create_from_ref(i8*) local_unnamed_addr #6 !dbg !1600 {
  %2 = alloca %struct.stat, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1602, metadata !703), !dbg !1625
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !1626
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %3) #9, !dbg !1626
  tail call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !1603, metadata !703), !dbg !1627
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1628, metadata !703) #9, !dbg !1635
  tail call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !1634, metadata !703) #9, !dbg !1635
  %4 = call i32 @__xstat(i32 1, i8* nonnull %0, %struct.stat* nonnull %2) #9, !dbg !1638
  %5 = icmp eq i32 %4, 0, !dbg !1639
  br i1 %5, label %6, label %19, !dbg !1640

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 3, !dbg !1641
  %8 = load i32, i32* %7, align 8, !dbg !1641, !tbaa !1336
  call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1444, metadata !703) #9, !dbg !1642
  call void @llvm.dbg.value(metadata i32 4095, i64 0, metadata !1449, metadata !703) #9, !dbg !1644
  %9 = call noalias i8* @xmalloc(i64 32) #9, !dbg !1645
  %10 = bitcast i8* %9 to %struct.mode_change*, !dbg !1645
  call void @llvm.dbg.value(metadata %struct.mode_change* %10, i64 0, metadata !1450, metadata !703) #9, !dbg !1646
  store i8 61, i8* %9, align 4, !dbg !1647, !tbaa !1457
  %11 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !1648
  store i8 1, i8* %11, align 1, !dbg !1649, !tbaa !1461
  %12 = getelementptr inbounds i8, i8* %9, i64 4, !dbg !1650
  %13 = bitcast i8* %12 to i32*, !dbg !1650
  store i32 4095, i32* %13, align 4, !dbg !1651, !tbaa !1464
  %14 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !1652
  %15 = bitcast i8* %14 to i32*, !dbg !1652
  store i32 %8, i32* %15, align 4, !dbg !1653, !tbaa !1467
  %16 = getelementptr inbounds i8, i8* %9, i64 12, !dbg !1654
  %17 = bitcast i8* %16 to i32*, !dbg !1654
  store i32 4095, i32* %17, align 4, !dbg !1655, !tbaa !1470
  %18 = getelementptr inbounds i8, i8* %9, i64 17, !dbg !1656
  store i8 0, i8* %18, align 1, !dbg !1657, !tbaa !1461
  br label %19, !dbg !1658

; <label>:19:                                     ; preds = %1, %6
  %20 = phi %struct.mode_change* [ %10, %6 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %3) #9, !dbg !1659
  ret %struct.mode_change* %20, !dbg !1659
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @mode_adjust(i32, i1 zeroext, i32, %struct.mode_change* nocapture readonly, i32*) local_unnamed_addr #6 !dbg !1660 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1667, metadata !703), !dbg !1683
  tail call void @llvm.dbg.value(metadata i1 %1, i64 0, metadata !1668, metadata !703), !dbg !1684
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1669, metadata !703), !dbg !1685
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %3, i64 0, metadata !1670, metadata !703), !dbg !1686
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1671, metadata !703), !dbg !1687
  %6 = and i32 %0, 4095, !dbg !1688
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1672, metadata !703), !dbg !1689
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1673, metadata !703), !dbg !1690
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %3, i64 0, metadata !1670, metadata !703), !dbg !1686
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1672, metadata !703), !dbg !1689
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1673, metadata !703), !dbg !1690
  %7 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %3, i64 0, i32 1, !dbg !1691
  %8 = load i8, i8* %7, align 1, !dbg !1691, !tbaa !1461
  %9 = icmp eq i8 %8, 0, !dbg !1692
  br i1 %9, label %81, label %10, !dbg !1693

; <label>:10:                                     ; preds = %5
  %11 = select i1 %1, i32 3072, i32 0
  %12 = xor i32 %2, -1
  %13 = zext i1 %1 to i32
  br label %14, !dbg !1693

; <label>:14:                                     ; preds = %10, %74
  %15 = phi i8 [ %8, %10 ], [ %79, %74 ]
  %16 = phi %struct.mode_change* [ %3, %10 ], [ %77, %74 ]
  %17 = phi i32 [ %6, %10 ], [ %76, %74 ]
  %18 = phi i32 [ 0, %10 ], [ %75, %74 ]
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !1673, metadata !703), !dbg !1690
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !1672, metadata !703), !dbg !1689
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %16, i64 0, metadata !1670, metadata !703), !dbg !1686
  %19 = sext i8 %15 to i32, !dbg !1694
  %20 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 2, !dbg !1695
  %21 = load i32, i32* %20, align 4, !dbg !1695, !tbaa !1464
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !1674, metadata !703), !dbg !1696
  %22 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 4, !dbg !1697
  %23 = load i32, i32* %22, align 4, !dbg !1697, !tbaa !1470
  %24 = xor i32 %23, -1, !dbg !1698
  %25 = and i32 %11, %24, !dbg !1699
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !1678, metadata !703), !dbg !1700
  %26 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 3, !dbg !1701
  %27 = load i32, i32* %26, align 4, !dbg !1701, !tbaa !1467
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !1679, metadata !703), !dbg !1702
  switch i32 %19, label %48 [
    i32 2, label %42
    i32 3, label %28
  ], !dbg !1703

; <label>:28:                                     ; preds = %14
  %29 = and i32 %27, %17, !dbg !1704
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !1679, metadata !703), !dbg !1702
  %30 = and i32 %29, 292, !dbg !1706
  %31 = icmp eq i32 %30, 0, !dbg !1707
  %32 = select i1 %31, i32 0, i32 292, !dbg !1707
  %33 = and i32 %29, 146, !dbg !1708
  %34 = icmp eq i32 %33, 0, !dbg !1709
  %35 = select i1 %34, i32 0, i32 146, !dbg !1709
  %36 = and i32 %29, 73, !dbg !1710
  %37 = icmp eq i32 %36, 0, !dbg !1711
  %38 = select i1 %37, i32 0, i32 73, !dbg !1711
  %39 = or i32 %35, %29, !dbg !1712
  %40 = or i32 %39, %32, !dbg !1713
  %41 = or i32 %40, %38, !dbg !1714
  tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !1679, metadata !703), !dbg !1702
  br label %48, !dbg !1715

; <label>:42:                                     ; preds = %14
  %43 = and i32 %17, 73, !dbg !1716
  %44 = or i32 %43, %13, !dbg !1718
  %45 = icmp eq i32 %44, 0, !dbg !1718
  %46 = or i32 %27, 73, !dbg !1719
  tail call void @llvm.dbg.value(metadata i32 %46, i64 0, metadata !1679, metadata !703), !dbg !1702
  %47 = select i1 %45, i32 %27, i32 %46, !dbg !1720
  br label %48, !dbg !1720

; <label>:48:                                     ; preds = %42, %14, %28
  %49 = phi i32 [ %27, %14 ], [ %41, %28 ], [ %47, %42 ]
  tail call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !1679, metadata !703), !dbg !1702
  %50 = icmp ne i32 %21, 0, !dbg !1721
  %51 = select i1 %50, i32 %21, i32 %12, !dbg !1721
  %52 = xor i32 %25, -1, !dbg !1722
  %53 = and i32 %51, %52, !dbg !1723
  %54 = and i32 %53, %49, !dbg !1724
  tail call void @llvm.dbg.value(metadata i32 %54, i64 0, metadata !1679, metadata !703), !dbg !1702
  %55 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 0, !dbg !1725
  %56 = load i8, i8* %55, align 4, !dbg !1725, !tbaa !1457
  %57 = sext i8 %56 to i32, !dbg !1726
  switch i32 %57, label %74 [
    i32 61, label %58
    i32 43, label %67
    i32 45, label %70
  ], !dbg !1727

; <label>:58:                                     ; preds = %48
  %59 = xor i32 %21, -1, !dbg !1728
  %60 = select i1 %50, i32 %59, i32 0, !dbg !1729
  %61 = or i32 %60, %25, !dbg !1730
  tail call void @llvm.dbg.value(metadata i32 %61, i64 0, metadata !1680, metadata !703), !dbg !1731
  %62 = and i32 %61, 4095, !dbg !1732
  %63 = xor i32 %62, 4095, !dbg !1732
  %64 = or i32 %63, %18, !dbg !1733
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !1673, metadata !703), !dbg !1690
  %65 = and i32 %61, %17, !dbg !1734
  %66 = or i32 %54, %65, !dbg !1735
  tail call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !1672, metadata !703), !dbg !1689
  br label %74

; <label>:67:                                     ; preds = %48
  %68 = or i32 %54, %18, !dbg !1736
  tail call void @llvm.dbg.value(metadata i32 %68, i64 0, metadata !1673, metadata !703), !dbg !1690
  %69 = or i32 %54, %17, !dbg !1737
  tail call void @llvm.dbg.value(metadata i32 %69, i64 0, metadata !1672, metadata !703), !dbg !1689
  br label %74, !dbg !1738

; <label>:70:                                     ; preds = %48
  %71 = or i32 %54, %18, !dbg !1739
  tail call void @llvm.dbg.value(metadata i32 %71, i64 0, metadata !1673, metadata !703), !dbg !1690
  %72 = xor i32 %54, -1, !dbg !1740
  %73 = and i32 %17, %72, !dbg !1741
  tail call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !1672, metadata !703), !dbg !1689
  br label %74, !dbg !1742

; <label>:74:                                     ; preds = %48, %70, %67, %58
  %75 = phi i32 [ %18, %48 ], [ %71, %70 ], [ %68, %67 ], [ %64, %58 ]
  %76 = phi i32 [ %17, %48 ], [ %73, %70 ], [ %69, %67 ], [ %66, %58 ]
  tail call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !1672, metadata !703), !dbg !1689
  tail call void @llvm.dbg.value(metadata i32 %75, i64 0, metadata !1673, metadata !703), !dbg !1690
  %77 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 1, !dbg !1743
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %77, i64 0, metadata !1670, metadata !703), !dbg !1686
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %77, i64 0, metadata !1670, metadata !703), !dbg !1686
  tail call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !1672, metadata !703), !dbg !1689
  tail call void @llvm.dbg.value(metadata i32 %75, i64 0, metadata !1673, metadata !703), !dbg !1690
  %78 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 1, i32 1, !dbg !1691
  %79 = load i8, i8* %78, align 1, !dbg !1691, !tbaa !1461
  %80 = icmp eq i8 %79, 0, !dbg !1692
  br i1 %80, label %81, label %14, !dbg !1693, !llvm.loop !1744

; <label>:81:                                     ; preds = %74, %5
  %82 = phi i32 [ 0, %5 ], [ %75, %74 ]
  %83 = phi i32 [ %6, %5 ], [ %76, %74 ]
  %84 = icmp eq i32* %4, null, !dbg !1746
  br i1 %84, label %86, label %85, !dbg !1748

; <label>:85:                                     ; preds = %81
  store i32 %82, i32* %4, align 4, !dbg !1749, !tbaa !833
  br label %86, !dbg !1750

; <label>:86:                                     ; preds = %81, %85
  ret i32 %83, !dbg !1751
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1752 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1754, metadata !703), !dbg !1757
  %2 = icmp eq i8* %0, null, !dbg !1758
  br i1 %2, label %3, label %6, !dbg !1760

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1761, !tbaa !710
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.53, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #19, !dbg !1763
  tail call void @abort() #16, !dbg !1764
  unreachable, !dbg !1764

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #15, !dbg !1765
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1755, metadata !703), !dbg !1766
  %8 = icmp eq i8* %7, null, !dbg !1767
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1768
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1769
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1756, metadata !703), !dbg !1770
  %11 = ptrtoint i8* %10 to i64, !dbg !1771
  %12 = ptrtoint i8* %0 to i64, !dbg !1771
  %13 = sub i64 %11, %12, !dbg !1771
  %14 = icmp sgt i64 %13, 6, !dbg !1773
  br i1 %14, label %15, label %24, !dbg !1774

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1775
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.54, i64 0, i64 0), i64 7) #15, !dbg !1776
  %18 = icmp eq i32 %17, 0, !dbg !1777
  br i1 %18, label %19, label %24, !dbg !1778

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1754, metadata !703), !dbg !1757
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.55, i64 0, i64 0), i64 3) #15, !dbg !1779
  %21 = icmp eq i32 %20, 0, !dbg !1782
  br i1 %21, label %22, label %24, !dbg !1783

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1784
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1754, metadata !703), !dbg !1757
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1786, !tbaa !710
  br label %24, !dbg !1787

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1754, metadata !703), !dbg !1757
  store i8* %25, i8** @program_name, align 8, !dbg !1788, !tbaa !710
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1789, !tbaa !710
  ret void, !dbg !1790
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #9

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1791 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1796, metadata !703), !dbg !1799
  %2 = tail call i32* @__errno_location() #18, !dbg !1800
  %3 = load i32, i32* %2, align 4, !dbg !1800, !tbaa !833
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1797, metadata !703), !dbg !1801
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1802
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1802
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1802
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #9, !dbg !1803
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1803
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1798, metadata !703), !dbg !1804
  store i32 %3, i32* %2, align 4, !dbg !1805, !tbaa !833
  ret %struct.quoting_options* %8, !dbg !1806
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1807 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1813, metadata !703), !dbg !1814
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1815
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1815
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1816
  %5 = load i32, i32* %4, align 8, !dbg !1816, !tbaa !1817
  ret i32 %5, !dbg !1819
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1820 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1824, metadata !703), !dbg !1826
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1825, metadata !703), !dbg !1827
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1828
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1828
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1829
  store i32 %1, i32* %5, align 8, !dbg !1830, !tbaa !1817
  ret void, !dbg !1831
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1832 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1836, metadata !703), !dbg !1844
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1837, metadata !703), !dbg !1845
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1838, metadata !703), !dbg !1846
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1839, metadata !703), !dbg !1847
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1848
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1848
  %6 = lshr i8 %1, 5, !dbg !1849
  %7 = zext i8 %6 to i64, !dbg !1849
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1850
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1840, metadata !703), !dbg !1851
  %9 = and i8 %1, 31, !dbg !1852
  %10 = zext i8 %9 to i32, !dbg !1853
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1842, metadata !703), !dbg !1854
  %11 = load i32, i32* %8, align 4, !dbg !1855, !tbaa !833
  %12 = lshr i32 %11, %10, !dbg !1856
  %13 = and i32 %12, 1, !dbg !1857
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1843, metadata !703), !dbg !1858
  %14 = and i32 %2, 1, !dbg !1859
  %15 = xor i32 %13, %14, !dbg !1860
  %16 = shl i32 %15, %10, !dbg !1861
  %17 = xor i32 %16, %11, !dbg !1862
  store i32 %17, i32* %8, align 4, !dbg !1862, !tbaa !833
  ret i32 %13, !dbg !1863
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1864 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1868, metadata !703), !dbg !1871
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1869, metadata !703), !dbg !1872
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1873
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1868, metadata !703), !dbg !1871
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1875
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1868, metadata !703), !dbg !1871
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1876
  %6 = load i32, i32* %5, align 4, !dbg !1876, !tbaa !1877
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1870, metadata !703), !dbg !1878
  store i32 %1, i32* %5, align 4, !dbg !1879, !tbaa !1877
  ret i32 %6, !dbg !1880
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1881 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1885, metadata !703), !dbg !1888
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1886, metadata !703), !dbg !1889
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1887, metadata !703), !dbg !1890
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1891
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1885, metadata !703), !dbg !1888
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1893
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1885, metadata !703), !dbg !1888
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1894
  store i32 10, i32* %6, align 8, !dbg !1895, !tbaa !1817
  %7 = icmp ne i8* %1, null, !dbg !1896
  %8 = icmp ne i8* %2, null, !dbg !1898
  %9 = and i1 %7, %8, !dbg !1899
  br i1 %9, label %11, label %10, !dbg !1899

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !1900
  unreachable, !dbg !1900

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1901
  store i8* %1, i8** %12, align 8, !dbg !1902, !tbaa !1903
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1904
  store i8* %2, i8** %13, align 8, !dbg !1905, !tbaa !1906
  ret void, !dbg !1907
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1908 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1912, metadata !703), !dbg !1920
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1913, metadata !703), !dbg !1921
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1914, metadata !703), !dbg !1922
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1915, metadata !703), !dbg !1923
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1916, metadata !703), !dbg !1924
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1925
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1925
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1917, metadata !703), !dbg !1926
  %8 = tail call i32* @__errno_location() #18, !dbg !1927
  %9 = load i32, i32* %8, align 4, !dbg !1927, !tbaa !833
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1918, metadata !703), !dbg !1928
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1929
  %11 = load i32, i32* %10, align 8, !dbg !1929, !tbaa !1817
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1930
  %13 = load i32, i32* %12, align 4, !dbg !1930, !tbaa !1877
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1931
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1932
  %16 = load i8*, i8** %15, align 8, !dbg !1932, !tbaa !1903
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1933
  %18 = load i8*, i8** %17, align 8, !dbg !1933, !tbaa !1906
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1934
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1919, metadata !703), !dbg !1935
  store i32 %9, i32* %8, align 4, !dbg !1936, !tbaa !833
  ret i64 %19, !dbg !1937
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1938 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.savewd*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1944, metadata !703), !dbg !2008
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1945, metadata !703), !dbg !2009
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1946, metadata !703), !dbg !2010
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1947, metadata !703), !dbg !2011
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1948, metadata !703), !dbg !2012
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1949, metadata !703), !dbg !2013
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1950, metadata !703), !dbg !2014
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1951, metadata !703), !dbg !2015
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1952, metadata !703), !dbg !2016
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1954, metadata !703), !dbg !2017
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1955, metadata !703), !dbg !2018
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1956, metadata !703), !dbg !2019
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1957, metadata !703), !dbg !2020
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1958, metadata !703), !dbg !2021
  %13 = tail call i64 @__ctype_get_mb_cur_max() #9, !dbg !2022
  %14 = icmp eq i64 %13, 1, !dbg !2023
  %15 = lshr i32 %5, 1, !dbg !2024
  %16 = trunc i32 %15 to i8, !dbg !2024
  %17 = and i8 %16, 1, !dbg !2024
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1960, metadata !703), !dbg !2024
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1961, metadata !703), !dbg !2025
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1962, metadata !703), !dbg !2026
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1963, metadata !703), !dbg !2027
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2028

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1945, metadata !703), !dbg !2009
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1963, metadata !703), !dbg !2027
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1962, metadata !703), !dbg !2026
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1961, metadata !703), !dbg !2025
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1960, metadata !703), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1947, metadata !703), !dbg !2011
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1958, metadata !703), !dbg !2021
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1957, metadata !703), !dbg !2020
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1956, metadata !703), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1955, metadata !703), !dbg !2018
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1954, metadata !703), !dbg !2017
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1952, metadata !703), !dbg !2016
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1951, metadata !703), !dbg !2015
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1948, metadata !703), !dbg !2012
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
  ], !dbg !2029

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1948, metadata !703), !dbg !2012
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1960, metadata !703), !dbg !2024
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1960, metadata !703), !dbg !2024
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1948, metadata !703), !dbg !2012
  br label %94, !dbg !2030

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1960, metadata !703), !dbg !2024
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1948, metadata !703), !dbg !2012
  %43 = and i8 %36, 1, !dbg !2032
  %44 = icmp eq i8 %43, 0, !dbg !2032
  br i1 %44, label %45, label %94, !dbg !2030

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2034
  br i1 %46, label %94, label %47, !dbg !2037

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2034, !tbaa !1120
  br label %94, !dbg !2034

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.66, i64 0, i64 0), i32 %28), !dbg !2038
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1951, metadata !703), !dbg !2015
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), i32 %28), !dbg !2042
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1952, metadata !703), !dbg !2016
  br label %51, !dbg !2043

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1952, metadata !703), !dbg !2016
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1951, metadata !703), !dbg !2015
  %54 = and i8 %36, 1, !dbg !2044
  %55 = icmp eq i8 %54, 0, !dbg !2044
  br i1 %55, label %56, label %72, !dbg !2046

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1956, metadata !703), !dbg !2019
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1956, metadata !703), !dbg !2019
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1954, metadata !703), !dbg !2017
  %57 = load i8, i8* %52, align 1, !dbg !2047, !tbaa !1120
  %58 = icmp eq i8 %57, 0, !dbg !2050
  br i1 %58, label %72, label %59, !dbg !2050

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2051

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1954, metadata !703), !dbg !2017
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1956, metadata !703), !dbg !2019
  %64 = icmp ult i64 %63, %40, !dbg !2051
  br i1 %64, label %65, label %67, !dbg !2054

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2051
  store i8 %61, i8* %66, align 1, !dbg !2051, !tbaa !1120
  br label %67, !dbg !2051

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2054
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1954, metadata !703), !dbg !2017
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2055
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1956, metadata !703), !dbg !2019
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1956, metadata !703), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1954, metadata !703), !dbg !2017
  %70 = load i8, i8* %69, align 1, !dbg !2047, !tbaa !1120
  %71 = icmp eq i8 %70, 0, !dbg !2050
  br i1 %71, label %72, label %60, !dbg !2050, !llvm.loop !2056

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1954, metadata !703), !dbg !2017
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1958, metadata !703), !dbg !2021
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1956, metadata !703), !dbg !2019
  %74 = call i64 @strlen(i8* %53) #15, !dbg !2058
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1957, metadata !703), !dbg !2020
  br label %94, !dbg !2059

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1958, metadata !703), !dbg !2021
  br label %76, !dbg !2060

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1958, metadata !703), !dbg !2021
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1960, metadata !703), !dbg !2024
  br label %78, !dbg !2061

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1960, metadata !703), !dbg !2024
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1958, metadata !703), !dbg !2021
  %81 = and i8 %80, 1, !dbg !2062
  %82 = icmp eq i8 %81, 0, !dbg !2062
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1958, metadata !703), !dbg !2021
  %83 = select i1 %82, i8 1, i8 %79, !dbg !2064
  br label %84, !dbg !2064

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1960, metadata !703), !dbg !2024
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1958, metadata !703), !dbg !2021
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1948, metadata !703), !dbg !2012
  %87 = and i8 %86, 1, !dbg !2065
  %88 = icmp eq i8 %87, 0, !dbg !2065
  br i1 %88, label %89, label %94, !dbg !2067

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !2068
  br i1 %90, label %94, label %91, !dbg !2071

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !2068, !tbaa !1120
  br label %94, !dbg !2068

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1960, metadata !703), !dbg !2024
  br label %94, !dbg !2072

; <label>:93:                                     ; preds = %27
  call void @abort() #16, !dbg !2073
  unreachable, !dbg !2073

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1960, metadata !703), !dbg !2024
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1958, metadata !703), !dbg !2021
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1957, metadata !703), !dbg !2020
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1956, metadata !703), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1954, metadata !703), !dbg !2017
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1952, metadata !703), !dbg !2016
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1951, metadata !703), !dbg !2015
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1948, metadata !703), !dbg !2012
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1953, metadata !703), !dbg !2074
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
  br label %122, !dbg !2075

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1945, metadata !703), !dbg !2009
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1963, metadata !703), !dbg !2027
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1962, metadata !703), !dbg !2026
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1961, metadata !703), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1947, metadata !703), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1955, metadata !703), !dbg !2018
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1954, metadata !703), !dbg !2017
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1953, metadata !703), !dbg !2074
  %131 = icmp eq i64 %126, -1, !dbg !2076
  br i1 %131, label %134, label %132, !dbg !2077

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !2078
  br i1 %133, label %590, label %138, !dbg !2079

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2080
  %136 = load i8, i8* %135, align 1, !dbg !2080, !tbaa !1120
  %137 = icmp eq i8 %136, 0, !dbg !2081
  br i1 %137, label %590, label %138, !dbg !2079

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1969, metadata !703), !dbg !2082
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1970, metadata !703), !dbg !2083
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1971, metadata !703), !dbg !2084
  br i1 %108, label %139, label %154, !dbg !2085

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !2087
  %141 = and i1 %109, %131, !dbg !2088
  br i1 %141, label %142, label %144, !dbg !2088

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #15, !dbg !2089
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1947, metadata !703), !dbg !2011
  br label %144, !dbg !2090

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1947, metadata !703), !dbg !2011
  %146 = icmp ugt i64 %140, %145, !dbg !2091
  br i1 %146, label %154, label %147, !dbg !2092

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2093
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #15, !dbg !2094
  %150 = icmp ne i32 %149, 0, !dbg !2095
  %151 = or i1 %150, %111, !dbg !2096
  %152 = xor i1 %150, true, !dbg !2096
  %153 = zext i1 %152 to i8, !dbg !2096
  br i1 %151, label %154, label %635, !dbg !2096

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1969, metadata !703), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1947, metadata !703), !dbg !2011
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2097
  %158 = load i8, i8* %157, align 1, !dbg !2097, !tbaa !1120
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1964, metadata !703), !dbg !2098
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
  ], !dbg !2099

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !2100

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !2101

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1970, metadata !703), !dbg !2083
  %162 = and i8 %127, 1, !dbg !2105
  %163 = icmp eq i8 %162, 0, !dbg !2105
  %164 = and i1 %113, %163, !dbg !2105
  br i1 %164, label %165, label %181, !dbg !2105

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2107
  br i1 %166, label %167, label %169, !dbg !2111

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2107
  store i8 39, i8* %168, align 1, !dbg !2107, !tbaa !1120
  br label %169, !dbg !2107

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2111
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1954, metadata !703), !dbg !2017
  %171 = icmp ult i64 %170, %130, !dbg !2112
  br i1 %171, label %172, label %174, !dbg !2115

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2112
  store i8 36, i8* %173, align 1, !dbg !2112, !tbaa !1120
  br label %174, !dbg !2112

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2115
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1954, metadata !703), !dbg !2017
  %176 = icmp ult i64 %175, %130, !dbg !2116
  br i1 %176, label %177, label %179, !dbg !2119

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2116
  store i8 39, i8* %178, align 1, !dbg !2116, !tbaa !1120
  br label %179, !dbg !2116

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2119
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1954, metadata !703), !dbg !2017
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1961, metadata !703), !dbg !2025
  br label %181, !dbg !2120

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1961, metadata !703), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1954, metadata !703), !dbg !2017
  %184 = icmp ult i64 %182, %130, !dbg !2121
  br i1 %184, label %185, label %187, !dbg !2124

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2121
  store i8 92, i8* %186, align 1, !dbg !2121, !tbaa !1120
  br label %187, !dbg !2121

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2124
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1954, metadata !703), !dbg !2017
  br i1 %105, label %189, label %470, !dbg !2125

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !2127
  %191 = icmp ult i64 %190, %155, !dbg !2128
  br i1 %191, label %192, label %470, !dbg !2129

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2130
  %194 = load i8, i8* %193, align 1, !dbg !2130, !tbaa !1120
  %195 = add i8 %194, -48, !dbg !2131
  %196 = icmp ult i8 %195, 10, !dbg !2131
  br i1 %196, label %197, label %470, !dbg !2131

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2132
  br i1 %198, label %199, label %201, !dbg !2136

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2132
  store i8 48, i8* %200, align 1, !dbg !2132, !tbaa !1120
  br label %201, !dbg !2132

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2136
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1954, metadata !703), !dbg !2017
  %203 = icmp ult i64 %202, %130, !dbg !2137
  br i1 %203, label %204, label %206, !dbg !2140

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2137
  store i8 48, i8* %205, align 1, !dbg !2137, !tbaa !1120
  br label %206, !dbg !2137

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2140
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1954, metadata !703), !dbg !2017
  br label %470, !dbg !2141

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !2142

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2143

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !2144

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !2146

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !2148
  %214 = icmp ult i64 %213, %155, !dbg !2149
  br i1 %214, label %215, label %470, !dbg !2150

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !2151
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2152
  %218 = load i8, i8* %217, align 1, !dbg !2152, !tbaa !1120
  %219 = icmp eq i8 %218, 63, !dbg !2153
  br i1 %219, label %220, label %470, !dbg !2154

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2155
  %222 = load i8, i8* %221, align 1, !dbg !2155, !tbaa !1120
  %223 = sext i8 %222 to i32, !dbg !2155
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
  ], !dbg !2156

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !2157

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1964, metadata !703), !dbg !2098
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1953, metadata !703), !dbg !2074
  %226 = icmp ult i64 %124, %130, !dbg !2159
  br i1 %226, label %227, label %229, !dbg !2162

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2159
  store i8 63, i8* %228, align 1, !dbg !2159, !tbaa !1120
  br label %229, !dbg !2159

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2162
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1954, metadata !703), !dbg !2017
  %231 = icmp ult i64 %230, %130, !dbg !2163
  br i1 %231, label %232, label %234, !dbg !2166

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2163
  store i8 34, i8* %233, align 1, !dbg !2163, !tbaa !1120
  br label %234, !dbg !2163

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2166
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1954, metadata !703), !dbg !2017
  %236 = icmp ult i64 %235, %130, !dbg !2167
  br i1 %236, label %237, label %239, !dbg !2170

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2167
  store i8 34, i8* %238, align 1, !dbg !2167, !tbaa !1120
  br label %239, !dbg !2167

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2170
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1954, metadata !703), !dbg !2017
  %241 = icmp ult i64 %240, %130, !dbg !2171
  br i1 %241, label %242, label %244, !dbg !2174

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2171
  store i8 63, i8* %243, align 1, !dbg !2171, !tbaa !1120
  br label %244, !dbg !2171

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2174
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1954, metadata !703), !dbg !2017
  br label %470, !dbg !2175

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1968, metadata !703), !dbg !2176
  br label %256, !dbg !2177

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1968, metadata !703), !dbg !2176
  br label %256, !dbg !2178

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1968, metadata !703), !dbg !2176
  br label %254, !dbg !2179

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1968, metadata !703), !dbg !2176
  br label %254, !dbg !2180

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1968, metadata !703), !dbg !2176
  br label %256, !dbg !2181

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1968, metadata !703), !dbg !2176
  br i1 %113, label %252, label %253, !dbg !2182

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !2183

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !2186

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1968, metadata !703), !dbg !2176
  br i1 %117, label %256, label %635, !dbg !2188

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1968, metadata !703), !dbg !2176
  br i1 %104, label %497, label %470, !dbg !2190

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !2191
  br i1 %259, label %260, label %265, !dbg !2193

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !2194, !tbaa !1120
  %262 = icmp ne i8 %261, 0, !dbg !2195
  %263 = icmp ne i64 %123, 0, !dbg !2196
  %264 = or i1 %263, %262, !dbg !2198
  br i1 %264, label %470, label %271, !dbg !2198

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !2199
  %267 = icmp ne i64 %123, 0, !dbg !2196
  %268 = or i1 %267, %266, !dbg !2193
  br i1 %268, label %470, label %271, !dbg !2193

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !2196
  br i1 %270, label %271, label %470, !dbg !2200

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1971, metadata !703), !dbg !2084
  br label %272, !dbg !2201

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1971, metadata !703), !dbg !2084
  br i1 %117, label %470, label %635, !dbg !2202

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1962, metadata !703), !dbg !2026
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1971, metadata !703), !dbg !2084
  br i1 %113, label %275, label %470, !dbg !2204

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !2205

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !2208
  %278 = icmp ne i64 %125, 0, !dbg !2210
  %279 = or i1 %278, %277, !dbg !2211
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1955, metadata !703), !dbg !2018
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1945, metadata !703), !dbg !2009
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !2211
  %281 = select i1 %279, i64 %130, i64 0, !dbg !2211
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1945, metadata !703), !dbg !2009
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1955, metadata !703), !dbg !2018
  %282 = icmp ult i64 %124, %281, !dbg !2212
  br i1 %282, label %283, label %285, !dbg !2215

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2212
  store i8 39, i8* %284, align 1, !dbg !2212, !tbaa !1120
  br label %285, !dbg !2212

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !2215
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1954, metadata !703), !dbg !2017
  %287 = icmp ult i64 %286, %281, !dbg !2216
  br i1 %287, label %288, label %290, !dbg !2219

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !2216
  store i8 92, i8* %289, align 1, !dbg !2216, !tbaa !1120
  br label %290, !dbg !2216

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !2219
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1954, metadata !703), !dbg !2017
  %292 = icmp ult i64 %291, %281, !dbg !2220
  br i1 %292, label %293, label %295, !dbg !2223

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !2220
  store i8 39, i8* %294, align 1, !dbg !2220, !tbaa !1120
  br label %295, !dbg !2220

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !2223
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1954, metadata !703), !dbg !2017
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1961, metadata !703), !dbg !2025
  br label %470, !dbg !2224

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !2225

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1972, metadata !703), !dbg !2226
  %299 = tail call i16** @__ctype_b_loc() #18, !dbg !2227
  %300 = load i16*, i16** %299, align 8, !dbg !2227, !tbaa !710
  %301 = zext i8 %158 to i64, !dbg !2227
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !2227
  %303 = load i16, i16* %302, align 2, !dbg !2227, !tbaa !2229
  %304 = lshr i16 %303, 14, !dbg !2230
  %305 = trunc i16 %304 to i8, !dbg !2230
  %306 = and i8 %305, 1, !dbg !2230
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1975, metadata !703), !dbg !2231
  br label %362, !dbg !2232

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #9, !dbg !2233
  store i64 0, i64* %10, align 8, !dbg !2234
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1972, metadata !703), !dbg !2226
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1975, metadata !703), !dbg !2231
  %308 = icmp eq i64 %155, -1, !dbg !2235
  br i1 %308, label %309, label %311, !dbg !2237

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #15, !dbg !2238
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1947, metadata !703), !dbg !2011
  br label %311, !dbg !2239

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1947, metadata !703), !dbg !2011
  br label %313, !dbg !2240, !llvm.loop !2241

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1975, metadata !703), !dbg !2231
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1972, metadata !703), !dbg !2226
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #9, !dbg !2243
  %316 = add i64 %314, %123, !dbg !2244
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !2245
  %318 = sub i64 %312, %316, !dbg !2246
  call void @llvm.dbg.value(metadata %struct.savewd* %11, i64 0, metadata !1976, metadata !703), !dbg !2247
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1994, metadata !703), !dbg !2248
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.savewd* nonnull %11) #9, !dbg !2249
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1997, metadata !703), !dbg !2250
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !2251

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1975, metadata !703), !dbg !2231
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1972, metadata !703), !dbg !2226
  %321 = icmp ugt i64 %312, %316, !dbg !2252
  br i1 %321, label %322, label %347, !dbg !2254

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !2255

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1972, metadata !703), !dbg !2226
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !2255
  %327 = load i8, i8* %326, align 1, !dbg !2255, !tbaa !1120
  %328 = icmp eq i8 %327, 0, !dbg !2254
  br i1 %328, label %347, label %329, !dbg !2256

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !2257
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1972, metadata !703), !dbg !2226
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1972, metadata !703), !dbg !2226
  %331 = add i64 %330, %123, !dbg !2258
  %332 = icmp ult i64 %331, %312, !dbg !2252
  br i1 %332, label %323, label %347, !dbg !2254, !llvm.loop !2259

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !2260
  %335 = and i1 %115, %334, !dbg !2263
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1998, metadata !703), !dbg !2264
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1998, metadata !703), !dbg !2264
  br i1 %335, label %336, label %350, !dbg !2263

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !2265

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1998, metadata !703), !dbg !2264
  %339 = add i64 %338, %316, !dbg !2265
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !2266
  %341 = load i8, i8* %340, align 1, !dbg !2266, !tbaa !1120
  %342 = sext i8 %341 to i32, !dbg !2266
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !2267

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !2268
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1998, metadata !703), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1998, metadata !703), !dbg !2264
  %345 = icmp ult i64 %344, %319, !dbg !2260
  br i1 %345, label %337, label %350, !dbg !2269, !llvm.loop !2270

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !2272

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1975, metadata !703), !dbg !2231
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1972, metadata !703), !dbg !2226
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #9, !dbg !2272
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !2273, !tbaa !833
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1994, metadata !703), !dbg !2248
  %352 = call i32 @iswprint(i32 %351) #9, !dbg !2275
  %353 = icmp eq i32 %352, 0, !dbg !2275
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1975, metadata !703), !dbg !2231
  %354 = select i1 %353, i8 0, i8 %315, !dbg !2276
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1975, metadata !703), !dbg !2231
  %355 = add i64 %319, %314, !dbg !2277
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1972, metadata !703), !dbg !2226
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1975, metadata !703), !dbg !2231
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1972, metadata !703), !dbg !2226
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #9, !dbg !2272
  call void @llvm.dbg.value(metadata %struct.savewd* %11, i64 0, metadata !1976, metadata !703), !dbg !2247
  %356 = call i32 @mbsinit(%struct.savewd* nonnull %11) #15, !dbg !2278
  %357 = icmp eq i32 %356, 0, !dbg !2279
  br i1 %357, label %313, label %358, !dbg !2280, !llvm.loop !2241

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #9, !dbg !2281
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1975, metadata !703), !dbg !2231
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1972, metadata !703), !dbg !2226
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #9, !dbg !2272
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #9, !dbg !2281
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1975, metadata !703), !dbg !2231
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1972, metadata !703), !dbg !2226
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1947, metadata !703), !dbg !2011
  %366 = and i8 %365, 1, !dbg !2282
  %367 = icmp ne i8 %366, 0, !dbg !2282
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1971, metadata !703), !dbg !2084
  %368 = icmp ult i64 %364, 2, !dbg !2283
  %369 = or i1 %367, %112, !dbg !2284
  %370 = and i1 %368, %369, !dbg !2285
  br i1 %370, label %470, label %371, !dbg !2285

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !2286
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !2005, metadata !703), !dbg !2287
  br label %373, !dbg !2288

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1970, metadata !703), !dbg !2083
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1969, metadata !703), !dbg !2082
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1964, metadata !703), !dbg !2098
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1961, metadata !703), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1954, metadata !703), !dbg !2017
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1953, metadata !703), !dbg !2074
  br i1 %369, label %426, label %380, !dbg !2289

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !2294

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1970, metadata !703), !dbg !2083
  %382 = and i8 %376, 1, !dbg !2297
  %383 = icmp eq i8 %382, 0, !dbg !2297
  %384 = and i1 %113, %383, !dbg !2297
  br i1 %384, label %385, label %401, !dbg !2297

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !2299
  br i1 %386, label %387, label %389, !dbg !2303

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2299
  store i8 39, i8* %388, align 1, !dbg !2299, !tbaa !1120
  br label %389, !dbg !2299

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !2303
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1954, metadata !703), !dbg !2017
  %391 = icmp ult i64 %390, %130, !dbg !2304
  br i1 %391, label %392, label %394, !dbg !2307

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2304
  store i8 36, i8* %393, align 1, !dbg !2304, !tbaa !1120
  br label %394, !dbg !2304

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !2307
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1954, metadata !703), !dbg !2017
  %396 = icmp ult i64 %395, %130, !dbg !2308
  br i1 %396, label %397, label %399, !dbg !2311

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2308
  store i8 39, i8* %398, align 1, !dbg !2308, !tbaa !1120
  br label %399, !dbg !2308

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !2311
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1954, metadata !703), !dbg !2017
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1961, metadata !703), !dbg !2025
  br label %401, !dbg !2312

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1961, metadata !703), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1954, metadata !703), !dbg !2017
  %404 = icmp ult i64 %402, %130, !dbg !2313
  br i1 %404, label %405, label %407, !dbg !2316

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !2313
  store i8 92, i8* %406, align 1, !dbg !2313, !tbaa !1120
  br label %407, !dbg !2313

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !2316
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1954, metadata !703), !dbg !2017
  %409 = icmp ult i64 %408, %130, !dbg !2317
  br i1 %409, label %410, label %414, !dbg !2320

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !2317
  %412 = or i8 %411, 48, !dbg !2317
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2317
  store i8 %412, i8* %413, align 1, !dbg !2317, !tbaa !1120
  br label %414, !dbg !2317

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !2320
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1954, metadata !703), !dbg !2017
  %416 = icmp ult i64 %415, %130, !dbg !2321
  br i1 %416, label %417, label %422, !dbg !2324

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !2321
  %419 = and i8 %418, 7, !dbg !2321
  %420 = or i8 %419, 48, !dbg !2321
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !2321
  store i8 %420, i8* %421, align 1, !dbg !2321, !tbaa !1120
  br label %422, !dbg !2321

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !2324
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1954, metadata !703), !dbg !2017
  %424 = and i8 %377, 7, !dbg !2325
  %425 = or i8 %424, 48, !dbg !2326
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1964, metadata !703), !dbg !2098
  br label %435, !dbg !2327

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !2328
  %428 = icmp eq i8 %427, 0, !dbg !2328
  br i1 %428, label %435, label %429, !dbg !2330

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !2331
  br i1 %430, label %431, label %433, !dbg !2335

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2331
  store i8 92, i8* %432, align 1, !dbg !2331, !tbaa !1120
  br label %433, !dbg !2331

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !2335
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1954, metadata !703), !dbg !2017
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1969, metadata !703), !dbg !2082
  br label %435, !dbg !2336

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1970, metadata !703), !dbg !2083
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1969, metadata !703), !dbg !2082
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1964, metadata !703), !dbg !2098
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1961, metadata !703), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1954, metadata !703), !dbg !2017
  %441 = add i64 %374, 1, !dbg !2337
  %442 = icmp ugt i64 %372, %441, !dbg !2339
  br i1 %442, label %443, label %535, !dbg !2340

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !2341
  %445 = icmp ne i8 %444, 0, !dbg !2341
  %446 = and i8 %440, 1, !dbg !2341
  %447 = icmp eq i8 %446, 0, !dbg !2341
  %448 = and i1 %445, %447, !dbg !2341
  br i1 %448, label %449, label %460, !dbg !2341

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !2344
  br i1 %450, label %451, label %453, !dbg !2348

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !2344
  store i8 39, i8* %452, align 1, !dbg !2344, !tbaa !1120
  br label %453, !dbg !2344

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !2348
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1954, metadata !703), !dbg !2017
  %455 = icmp ult i64 %454, %130, !dbg !2349
  br i1 %455, label %456, label %458, !dbg !2352

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2349
  store i8 39, i8* %457, align 1, !dbg !2349, !tbaa !1120
  br label %458, !dbg !2349

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !2352
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1954, metadata !703), !dbg !2017
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1961, metadata !703), !dbg !2025
  br label %460, !dbg !2353

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1961, metadata !703), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1954, metadata !703), !dbg !2017
  %463 = icmp ult i64 %461, %130, !dbg !2354
  br i1 %463, label %464, label %466, !dbg !2357

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !2354
  store i8 %438, i8* %465, align 1, !dbg !2354, !tbaa !1120
  br label %466, !dbg !2354

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !2357
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1954, metadata !703), !dbg !2017
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1953, metadata !703), !dbg !2074
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !2358
  %469 = load i8, i8* %468, align 1, !dbg !2358, !tbaa !1120
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1964, metadata !703), !dbg !2098
  br label %373, !dbg !2359, !llvm.loop !2360

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1945, metadata !703), !dbg !2009
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1971, metadata !703), !dbg !2084
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1970, metadata !703), !dbg !2083
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1969, metadata !703), !dbg !2082
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1964, metadata !703), !dbg !2098
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1962, metadata !703), !dbg !2026
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1961, metadata !703), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1947, metadata !703), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1955, metadata !703), !dbg !2018
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1954, metadata !703), !dbg !2017
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1953, metadata !703), !dbg !2074
  br i1 %106, label %482, label %481, !dbg !2363

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !2365

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !2366

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !2367
  %485 = zext i8 %484 to i64, !dbg !2367
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !2368
  %487 = load i32, i32* %486, align 4, !dbg !2368, !tbaa !833
  %488 = and i8 %477, 31, !dbg !2369
  %489 = zext i8 %488 to i32, !dbg !2370
  %490 = shl i32 1, %489, !dbg !2371
  %491 = and i32 %487, %490, !dbg !2371
  %492 = icmp eq i32 %491, 0, !dbg !2371
  %493 = icmp eq i8 %156, 0, !dbg !2372
  %494 = and i1 %493, %492, !dbg !2373
  br i1 %494, label %535, label %497, !dbg !2373

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !2372
  br i1 %496, label %535, label %497, !dbg !2374

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1945, metadata !703), !dbg !2009
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1971, metadata !703), !dbg !2084
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1964, metadata !703), !dbg !2098
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1962, metadata !703), !dbg !2026
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1961, metadata !703), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1947, metadata !703), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1955, metadata !703), !dbg !2018
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1954, metadata !703), !dbg !2017
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1953, metadata !703), !dbg !2074
  br i1 %111, label %507, label %635, !dbg !2375

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1970, metadata !703), !dbg !2083
  %508 = and i8 %502, 1, !dbg !2377
  %509 = icmp eq i8 %508, 0, !dbg !2377
  %510 = and i1 %113, %509, !dbg !2377
  br i1 %510, label %511, label %527, !dbg !2377

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !2379
  br i1 %512, label %513, label %515, !dbg !2383

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !2379
  store i8 39, i8* %514, align 1, !dbg !2379, !tbaa !1120
  br label %515, !dbg !2379

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !2383
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1954, metadata !703), !dbg !2017
  %517 = icmp ult i64 %516, %506, !dbg !2384
  br i1 %517, label %518, label %520, !dbg !2387

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !2384
  store i8 36, i8* %519, align 1, !dbg !2384, !tbaa !1120
  br label %520, !dbg !2384

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !2387
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1954, metadata !703), !dbg !2017
  %522 = icmp ult i64 %521, %506, !dbg !2388
  br i1 %522, label %523, label %525, !dbg !2391

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !2388
  store i8 39, i8* %524, align 1, !dbg !2388, !tbaa !1120
  br label %525, !dbg !2388

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !2391
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1954, metadata !703), !dbg !2017
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1961, metadata !703), !dbg !2025
  br label %527, !dbg !2392

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1961, metadata !703), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1954, metadata !703), !dbg !2017
  %530 = icmp ult i64 %528, %506, !dbg !2393
  br i1 %530, label %531, label %533, !dbg !2396

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2393
  store i8 92, i8* %532, align 1, !dbg !2393, !tbaa !1120
  br label %533, !dbg !2393

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !2396
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1954, metadata !703), !dbg !2017
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1945, metadata !703), !dbg !2009
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1971, metadata !703), !dbg !2084
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1970, metadata !703), !dbg !2083
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1964, metadata !703), !dbg !2098
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1962, metadata !703), !dbg !2026
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1961, metadata !703), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1947, metadata !703), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1955, metadata !703), !dbg !2018
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1954, metadata !703), !dbg !2017
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1953, metadata !703), !dbg !2074
  br label %562, !dbg !2397

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1945, metadata !703), !dbg !2009
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1971, metadata !703), !dbg !2084
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1970, metadata !703), !dbg !2083
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1964, metadata !703), !dbg !2098
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1962, metadata !703), !dbg !2026
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1961, metadata !703), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1947, metadata !703), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1955, metadata !703), !dbg !2018
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1954, metadata !703), !dbg !2017
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1953, metadata !703), !dbg !2074
  %546 = and i8 %540, 1, !dbg !2397
  %547 = icmp ne i8 %546, 0, !dbg !2397
  %548 = and i8 %543, 1, !dbg !2397
  %549 = icmp eq i8 %548, 0, !dbg !2397
  %550 = and i1 %547, %549, !dbg !2397
  br i1 %550, label %551, label %562, !dbg !2397

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !2400
  br i1 %552, label %553, label %555, !dbg !2404

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !2400
  store i8 39, i8* %554, align 1, !dbg !2400, !tbaa !1120
  br label %555, !dbg !2400

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !2404
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1954, metadata !703), !dbg !2017
  %557 = icmp ult i64 %556, %545, !dbg !2405
  br i1 %557, label %558, label %560, !dbg !2408

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !2405
  store i8 39, i8* %559, align 1, !dbg !2405, !tbaa !1120
  br label %560, !dbg !2405

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !2408
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1954, metadata !703), !dbg !2017
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1961, metadata !703), !dbg !2025
  br label %562, !dbg !2409

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1961, metadata !703), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1954, metadata !703), !dbg !2017
  %572 = icmp ult i64 %570, %563, !dbg !2410
  br i1 %572, label %573, label %575, !dbg !2413

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !2410
  store i8 %565, i8* %574, align 1, !dbg !2410, !tbaa !1120
  br label %575, !dbg !2410

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !2413
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1954, metadata !703), !dbg !2017
  %577 = and i8 %564, 1, !dbg !2414
  %578 = icmp eq i8 %577, 0, !dbg !2414
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1963, metadata !703), !dbg !2027
  %579 = select i1 %578, i8 0, i8 %129, !dbg !2416
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1963, metadata !703), !dbg !2027
  br label %580, !dbg !2417

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1945, metadata !703), !dbg !2009
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1963, metadata !703), !dbg !2027
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1962, metadata !703), !dbg !2026
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1961, metadata !703), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1947, metadata !703), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1955, metadata !703), !dbg !2018
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1954, metadata !703), !dbg !2017
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1953, metadata !703), !dbg !2074
  %589 = add i64 %581, 1, !dbg !2418
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1953, metadata !703), !dbg !2074
  br label %122, !dbg !2419, !llvm.loop !2420

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !2422
  %593 = and i1 %113, %592, !dbg !2424
  %594 = xor i1 %593, true, !dbg !2424
  %595 = or i1 %111, %594, !dbg !2424
  br i1 %595, label %596, label %635, !dbg !2424

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !2425
  %598 = xor i1 %597, true, !dbg !2425
  %599 = and i8 %128, 1, !dbg !2427
  %600 = icmp eq i8 %599, 0, !dbg !2427
  %601 = or i1 %600, %598, !dbg !2425
  br i1 %601, label %611, label %602, !dbg !2425

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !2428
  %604 = icmp eq i8 %603, 0, !dbg !2428
  br i1 %604, label %607, label %605, !dbg !2431

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !2432
  br label %645, !dbg !2433

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !2434
  %609 = icmp ne i64 %125, 0, !dbg !2436
  %610 = and i1 %609, %608, !dbg !2437
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1945, metadata !703), !dbg !2009
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1954, metadata !703), !dbg !2017
  br i1 %610, label %27, label %611, !dbg !2437

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !2438
  %613 = and i1 %612, %111, !dbg !2440
  br i1 %613, label %614, label %630, !dbg !2440

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1956, metadata !703), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1954, metadata !703), !dbg !2017
  %615 = load i8, i8* %99, align 1, !dbg !2441, !tbaa !1120
  %616 = icmp eq i8 %615, 0, !dbg !2444
  br i1 %616, label %630, label %617, !dbg !2444

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !2445

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1954, metadata !703), !dbg !2017
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1956, metadata !703), !dbg !2019
  %622 = icmp ult i64 %621, %130, !dbg !2445
  br i1 %622, label %623, label %625, !dbg !2448

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2445
  store i8 %619, i8* %624, align 1, !dbg !2445, !tbaa !1120
  br label %625, !dbg !2445

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !2448
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1954, metadata !703), !dbg !2017
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !2449
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1956, metadata !703), !dbg !2019
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1956, metadata !703), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1954, metadata !703), !dbg !2017
  %628 = load i8, i8* %627, align 1, !dbg !2441, !tbaa !1120
  %629 = icmp eq i8 %628, 0, !dbg !2444
  br i1 %629, label %630, label %618, !dbg !2444, !llvm.loop !2450

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1954, metadata !703), !dbg !2017
  %632 = icmp ult i64 %631, %130, !dbg !2452
  br i1 %632, label %633, label %645, !dbg !2454

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !2455
  store i8 0, i8* %634, align 1, !dbg !2456, !tbaa !1120
  br label %645, !dbg !2455

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1945, metadata !703), !dbg !2009
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1947, metadata !703), !dbg !2011
  %639 = icmp ne i32 %636, 2, !dbg !2457
  %640 = icmp eq i8 %103, 0, !dbg !2459
  %641 = or i1 %639, %640, !dbg !2460
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1948, metadata !703), !dbg !2012
  %642 = select i1 %641, i32 %636, i32 4, !dbg !2460
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1948, metadata !703), !dbg !2012
  %643 = and i32 %5, -3, !dbg !2461
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !2462
  br label %645, !dbg !2463

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !2464
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2465 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2469, metadata !703), !dbg !2473
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2470, metadata !703), !dbg !2474
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #9, !dbg !2475
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2471, metadata !703), !dbg !2476
  %4 = icmp eq i8* %3, %0, !dbg !2477
  br i1 %4, label %5, label %75, !dbg !2479

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #9, !dbg !2480
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2472, metadata !703), !dbg !2481
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2482, metadata !703), !dbg !2498
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2496, metadata !703), !dbg !2501
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2497, metadata !703), !dbg !2502
  %7 = load i8, i8* %6, align 1, !dbg !2503, !tbaa !1120
  %8 = sext i8 %7 to i32, !dbg !2503
  %9 = and i32 %8, -33, !dbg !2503
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2503

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2505, metadata !703), !dbg !2519
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2517, metadata !703), !dbg !2523
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2518, metadata !703), !dbg !2524
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2525
  %12 = load i8, i8* %11, align 1, !dbg !2525, !tbaa !1120
  %13 = sext i8 %12 to i32, !dbg !2525
  %14 = and i32 %13, -33, !dbg !2525
  %15 = icmp eq i32 %14, 84, !dbg !2525
  br i1 %15, label %16, label %72, !dbg !2525

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2527, metadata !703), !dbg !2540
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2538, metadata !703), !dbg !2544
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2539, metadata !703), !dbg !2545
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2546
  %18 = load i8, i8* %17, align 1, !dbg !2546, !tbaa !1120
  %19 = sext i8 %18 to i32, !dbg !2546
  %20 = and i32 %19, -33, !dbg !2546
  %21 = icmp eq i32 %20, 70, !dbg !2546
  br i1 %21, label %22, label %72, !dbg !2546

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2548, metadata !703), !dbg !2560
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2558, metadata !703), !dbg !2564
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2559, metadata !703), !dbg !2565
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2566
  %24 = load i8, i8* %23, align 1, !dbg !2566, !tbaa !1120
  %25 = icmp eq i8 %24, 45, !dbg !2566
  br i1 %25, label %26, label %72, !dbg !2568

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2569, metadata !703), !dbg !2580
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2578, metadata !703), !dbg !2584
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2579, metadata !703), !dbg !2585
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2586
  %28 = load i8, i8* %27, align 1, !dbg !2586, !tbaa !1120
  %29 = icmp eq i8 %28, 56, !dbg !2586
  br i1 %29, label %30, label %72, !dbg !2588

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2589, metadata !703), !dbg !2599
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2597, metadata !703), !dbg !2603
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2598, metadata !703), !dbg !2604
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2605
  %32 = load i8, i8* %31, align 1, !dbg !2605, !tbaa !1120
  %33 = icmp eq i8 %32, 0, !dbg !2605
  br i1 %33, label %34, label %72, !dbg !2607

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2608, !tbaa !1120
  %36 = icmp eq i8 %35, 96, !dbg !2609
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.69, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.70, i64 0, i64 0), !dbg !2608
  br label %75, !dbg !2610

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2505, metadata !703), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2517, metadata !703), !dbg !2615
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2518, metadata !703), !dbg !2616
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2617
  %40 = load i8, i8* %39, align 1, !dbg !2617, !tbaa !1120
  %41 = sext i8 %40 to i32, !dbg !2617
  %42 = and i32 %41, -33, !dbg !2617
  %43 = icmp eq i32 %42, 66, !dbg !2617
  br i1 %43, label %44, label %72, !dbg !2617

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2527, metadata !703), !dbg !2618
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2538, metadata !703), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2539, metadata !703), !dbg !2621
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2622
  %46 = load i8, i8* %45, align 1, !dbg !2622, !tbaa !1120
  %47 = icmp eq i8 %46, 49, !dbg !2622
  br i1 %47, label %48, label %72, !dbg !2623

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2548, metadata !703), !dbg !2624
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2558, metadata !703), !dbg !2626
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2559, metadata !703), !dbg !2627
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2628
  %50 = load i8, i8* %49, align 1, !dbg !2628, !tbaa !1120
  %51 = icmp eq i8 %50, 56, !dbg !2628
  br i1 %51, label %52, label %72, !dbg !2629

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2569, metadata !703), !dbg !2630
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2578, metadata !703), !dbg !2632
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2579, metadata !703), !dbg !2633
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2634
  %54 = load i8, i8* %53, align 1, !dbg !2634, !tbaa !1120
  %55 = icmp eq i8 %54, 48, !dbg !2634
  br i1 %55, label %56, label %72, !dbg !2635

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2589, metadata !703), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2597, metadata !703), !dbg !2638
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2598, metadata !703), !dbg !2639
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2640
  %58 = load i8, i8* %57, align 1, !dbg !2640, !tbaa !1120
  %59 = icmp eq i8 %58, 51, !dbg !2640
  br i1 %59, label %60, label %72, !dbg !2641

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2642, metadata !703), !dbg !2651
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2649, metadata !703), !dbg !2655
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2650, metadata !703), !dbg !2656
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2657
  %62 = load i8, i8* %61, align 1, !dbg !2657, !tbaa !1120
  %63 = icmp eq i8 %62, 48, !dbg !2657
  br i1 %63, label %64, label %72, !dbg !2659

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2660, metadata !703), !dbg !2668
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2666, metadata !703), !dbg !2672
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2667, metadata !703), !dbg !2673
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2674
  %66 = load i8, i8* %65, align 1, !dbg !2674, !tbaa !1120
  %67 = icmp eq i8 %66, 0, !dbg !2674
  br i1 %67, label %68, label %72, !dbg !2676

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2677, !tbaa !1120
  %70 = icmp eq i8 %69, 96, !dbg !2678
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.71, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.72, i64 0, i64 0), !dbg !2677
  br label %75, !dbg !2679

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2680
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), !dbg !2681
  br label %75, !dbg !2682

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2683
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
declare i32 @mbsinit(%struct.savewd*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2684 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2688, metadata !703), !dbg !2691
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2689, metadata !703), !dbg !2692
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2690, metadata !703), !dbg !2693
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2694, metadata !703) #9, !dbg !2707
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2699, metadata !703) #9, !dbg !2709
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2700, metadata !703) #9, !dbg !2710
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2701, metadata !703) #9, !dbg !2711
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2712
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2712
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2702, metadata !703) #9, !dbg !2713
  %6 = tail call i32* @__errno_location() #18, !dbg !2714
  %7 = load i32, i32* %6, align 4, !dbg !2714, !tbaa !833
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2703, metadata !703) #9, !dbg !2715
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2716
  %9 = load i32, i32* %8, align 4, !dbg !2716, !tbaa !1877
  %10 = or i32 %9, 1, !dbg !2717
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2704, metadata !703) #9, !dbg !2718
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2719
  %12 = load i32, i32* %11, align 8, !dbg !2719, !tbaa !1817
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2720
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2721
  %15 = load i8*, i8** %14, align 8, !dbg !2721, !tbaa !1903
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2722
  %17 = load i8*, i8** %16, align 8, !dbg !2722, !tbaa !1906
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #9, !dbg !2723
  %19 = add i64 %18, 1, !dbg !2724
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2705, metadata !703) #9, !dbg !2725
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2726, metadata !703) #9, !dbg !2731
  %20 = tail call noalias i8* @xmalloc(i64 %19) #9, !dbg !2733
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2706, metadata !703) #9, !dbg !2734
  %21 = load i32, i32* %11, align 8, !dbg !2735, !tbaa !1817
  %22 = load i8*, i8** %14, align 8, !dbg !2736, !tbaa !1903
  %23 = load i8*, i8** %16, align 8, !dbg !2737, !tbaa !1906
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #9, !dbg !2738
  store i32 %7, i32* %6, align 4, !dbg !2739, !tbaa !833
  ret i8* %20, !dbg !2740
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2695 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2694, metadata !703), !dbg !2741
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2699, metadata !703), !dbg !2742
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2700, metadata !703), !dbg !2743
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2701, metadata !703), !dbg !2744
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2745
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2745
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2702, metadata !703), !dbg !2746
  %7 = tail call i32* @__errno_location() #18, !dbg !2747
  %8 = load i32, i32* %7, align 4, !dbg !2747, !tbaa !833
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2703, metadata !703), !dbg !2748
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2749
  %10 = load i32, i32* %9, align 4, !dbg !2749, !tbaa !1877
  %11 = icmp ne i64* %2, null, !dbg !2750
  %12 = xor i1 %11, true, !dbg !2750
  %13 = zext i1 %12 to i32, !dbg !2750
  %14 = or i32 %10, %13, !dbg !2751
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2704, metadata !703), !dbg !2752
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2753
  %16 = load i32, i32* %15, align 8, !dbg !2753, !tbaa !1817
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2754
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2755
  %19 = load i8*, i8** %18, align 8, !dbg !2755, !tbaa !1903
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2756
  %21 = load i8*, i8** %20, align 8, !dbg !2756, !tbaa !1906
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2757
  %23 = add i64 %22, 1, !dbg !2758
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2705, metadata !703), !dbg !2759
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2726, metadata !703) #9, !dbg !2760
  %24 = tail call noalias i8* @xmalloc(i64 %23) #9, !dbg !2762
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2706, metadata !703), !dbg !2763
  %25 = load i32, i32* %15, align 8, !dbg !2764, !tbaa !1817
  %26 = load i8*, i8** %18, align 8, !dbg !2765, !tbaa !1903
  %27 = load i8*, i8** %20, align 8, !dbg !2766, !tbaa !1906
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2767
  store i32 %8, i32* %7, align 4, !dbg !2768, !tbaa !833
  br i1 %11, label %29, label %30, !dbg !2769

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2770, !tbaa !2772
  br label %30, !dbg !2773

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2774
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2775 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2779, !tbaa !710
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2777, metadata !703), !dbg !2780
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2778, metadata !703), !dbg !2781
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2778, metadata !703), !dbg !2781
  %2 = load i32, i32* @nslots, align 4, !dbg !2782, !tbaa !833
  %3 = icmp sgt i32 %2, 1, !dbg !2785
  br i1 %3, label %4, label %13, !dbg !2786

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2787

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2778, metadata !703), !dbg !2781
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2787
  %8 = load i8*, i8** %7, align 8, !dbg !2787, !tbaa !2788
  tail call void @free(i8* %8) #9, !dbg !2790
  %9 = add nuw i64 %6, 1, !dbg !2791
  %10 = load i32, i32* @nslots, align 4, !dbg !2782, !tbaa !833
  %11 = sext i32 %10 to i64, !dbg !2785
  %12 = icmp slt i64 %9, %11, !dbg !2785
  br i1 %12, label %5, label %13, !dbg !2786, !llvm.loop !2792

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2794
  %15 = load i8*, i8** %14, align 8, !dbg !2794, !tbaa !2788
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2796
  br i1 %16, label %18, label %17, !dbg !2797

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #9, !dbg !2798
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2800, !tbaa !2801
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2802, !tbaa !2788
  br label %18, !dbg !2803

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2804
  br i1 %19, label %22, label %20, !dbg !2806

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2807
  tail call void @free(i8* %21) #9, !dbg !2809
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2810, !tbaa !710
  br label %22, !dbg !2811

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2812, !tbaa !833
  ret void, !dbg !2813
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2814 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2818, metadata !703), !dbg !2820
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2819, metadata !703), !dbg !2821
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2822
  ret i8* %3, !dbg !2823
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2824 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2828, metadata !703), !dbg !2842
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2829, metadata !703), !dbg !2843
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2830, metadata !703), !dbg !2844
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2831, metadata !703), !dbg !2845
  %5 = tail call i32* @__errno_location() #18, !dbg !2846
  %6 = load i32, i32* %5, align 4, !dbg !2846, !tbaa !833
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2832, metadata !703), !dbg !2847
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2848, !tbaa !710
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2833, metadata !703), !dbg !2849
  %8 = icmp slt i32 %0, 0, !dbg !2850
  br i1 %8, label %9, label %10, !dbg !2852

; <label>:9:                                      ; preds = %4
  tail call void @abort() #16, !dbg !2853
  unreachable, !dbg !2853

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2854, !tbaa !833
  %12 = icmp sgt i32 %11, %0, !dbg !2855
  br i1 %12, label %34, label %13, !dbg !2856

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2857
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2858
  br i1 %15, label %16, label %17, !dbg !2860

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !2861
  unreachable, !dbg !2861

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2862
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2862
  %20 = add nsw i32 %0, 1, !dbg !2863
  %21 = sext i32 %20 to i64, !dbg !2864
  %22 = shl nsw i64 %21, 4, !dbg !2865
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #9, !dbg !2866
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2866
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2833, metadata !703), !dbg !2849
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2867, !tbaa !710
  br i1 %14, label %25, label %26, !dbg !2868

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2869, !tbaa.struct !2871
  br label %26, !dbg !2872

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2873, !tbaa !833
  %28 = sext i32 %27 to i64, !dbg !2874
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2874
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2875
  %31 = sub nsw i32 %20, %27, !dbg !2876
  %32 = sext i32 %31 to i64, !dbg !2877
  %33 = shl nsw i64 %32, 4, !dbg !2878
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2875
  store i32 %20, i32* @nslots, align 4, !dbg !2879, !tbaa !833
  br label %34, !dbg !2880

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2833, metadata !703), !dbg !2849
  %36 = sext i32 %0 to i64, !dbg !2881
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2882
  %38 = load i64, i64* %37, align 8, !dbg !2882, !tbaa !2801
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2837, metadata !703), !dbg !2883
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2884
  %40 = load i8*, i8** %39, align 8, !dbg !2884, !tbaa !2788
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2839, metadata !703), !dbg !2885
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2886
  %42 = load i32, i32* %41, align 4, !dbg !2886, !tbaa !1877
  %43 = or i32 %42, 1, !dbg !2887
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2840, metadata !703), !dbg !2888
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2889
  %45 = load i32, i32* %44, align 8, !dbg !2889, !tbaa !1817
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2890
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2891
  %48 = load i8*, i8** %47, align 8, !dbg !2891, !tbaa !1903
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2892
  %50 = load i8*, i8** %49, align 8, !dbg !2892, !tbaa !1906
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2893
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2841, metadata !703), !dbg !2894
  %52 = icmp ugt i64 %38, %51, !dbg !2895
  br i1 %52, label %63, label %53, !dbg !2897

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2898
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2837, metadata !703), !dbg !2883
  store i64 %54, i64* %37, align 8, !dbg !2900, !tbaa !2801
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2901
  br i1 %55, label %57, label %56, !dbg !2903

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #9, !dbg !2904
  br label %57, !dbg !2904

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2726, metadata !703) #9, !dbg !2905
  %58 = tail call noalias i8* @xmalloc(i64 %54) #9, !dbg !2907
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2839, metadata !703), !dbg !2885
  store i8* %58, i8** %39, align 8, !dbg !2908, !tbaa !2788
  %59 = load i32, i32* %44, align 8, !dbg !2909, !tbaa !1817
  %60 = load i8*, i8** %47, align 8, !dbg !2910, !tbaa !1903
  %61 = load i8*, i8** %49, align 8, !dbg !2911, !tbaa !1906
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2912
  br label %63, !dbg !2913

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2839, metadata !703), !dbg !2885
  store i32 %6, i32* %5, align 4, !dbg !2914, !tbaa !833
  ret i8* %64, !dbg !2915
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2916 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2920, metadata !703), !dbg !2923
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2921, metadata !703), !dbg !2924
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2922, metadata !703), !dbg !2925
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2926
  ret i8* %4, !dbg !2927
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2928 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2932, metadata !703), !dbg !2933
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2818, metadata !703) #9, !dbg !2934
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2819, metadata !703) #9, !dbg !2936
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !2937
  ret i8* %2, !dbg !2938
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2939 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2943, metadata !703), !dbg !2945
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2944, metadata !703), !dbg !2946
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2920, metadata !703) #9, !dbg !2947
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2921, metadata !703) #9, !dbg !2949
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2922, metadata !703) #9, !dbg !2950
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !2951
  ret i8* %3, !dbg !2952
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2953 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2961, metadata !2967), !dbg !2968
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2957, metadata !703), !dbg !2970
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2958, metadata !703), !dbg !2971
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2959, metadata !703), !dbg !2972
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2973
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2973
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2960, metadata !703), !dbg !2974
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2966, metadata !703) #9, !dbg !2975
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2976
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2976
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2961, metadata !703) #9, !dbg !2968
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2961, metadata !2977) #9, !dbg !2968
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2968
  %8 = icmp eq i32 %1, 10, !dbg !2978
  br i1 %8, label %9, label %10, !dbg !2980

; <label>:9:                                      ; preds = %3
  tail call void @abort() #16, !dbg !2981, !noalias !2982
  unreachable, !dbg !2981

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2961, metadata !2977) #9, !dbg !2968
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2985
  store i32 %1, i32* %11, align 8, !dbg !2985, !alias.scope !2982
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2985
  %13 = bitcast i32* %12 to i8*, !dbg !2985
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !2985
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2986
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2960, metadata !703), !dbg !2974
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2987
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2988
  ret i8* %14, !dbg !2989
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2990 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2961, metadata !2967), !dbg !2999
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2994, metadata !703), !dbg !3001
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2995, metadata !703), !dbg !3002
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2996, metadata !703), !dbg !3003
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2997, metadata !703), !dbg !3004
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3005
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #9, !dbg !3005
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2998, metadata !703), !dbg !3006
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2966, metadata !703) #9, !dbg !3007
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3008
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3008
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2961, metadata !703) #9, !dbg !2999
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2961, metadata !2977) #9, !dbg !2999
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2999
  %9 = icmp eq i32 %1, 10, !dbg !3009
  br i1 %9, label %10, label %11, !dbg !3010

; <label>:10:                                     ; preds = %4
  tail call void @abort() #16, !dbg !3011, !noalias !3012
  unreachable, !dbg !3011

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2961, metadata !2977) #9, !dbg !2999
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3015
  store i32 %1, i32* %12, align 8, !dbg !3015, !alias.scope !3012
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3015
  %14 = bitcast i32* %13 to i8*, !dbg !3015
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #9, !dbg !3015
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3016
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2998, metadata !703), !dbg !3006
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3017
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #9, !dbg !3018
  ret i8* %15, !dbg !3019
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3020 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2961, metadata !2967), !dbg !3026
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3024, metadata !703), !dbg !3029
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3025, metadata !703), !dbg !3030
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2957, metadata !703) #9, !dbg !3031
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2958, metadata !703) #9, !dbg !3032
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2959, metadata !703) #9, !dbg !3033
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3034
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !3034
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2960, metadata !703) #9, !dbg !3035
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2966, metadata !703) #9, !dbg !3036
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3037
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !3037
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2961, metadata !703) #9, !dbg !3026
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2961, metadata !2977) #9, !dbg !3026
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3026
  %7 = icmp eq i32 %0, 10, !dbg !3038
  br i1 %7, label %8, label %9, !dbg !3039

; <label>:8:                                      ; preds = %2
  tail call void @abort() #16, !dbg !3040, !noalias !3041
  unreachable, !dbg !3040

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2961, metadata !2977) #9, !dbg !3026
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3044
  store i32 %0, i32* %10, align 8, !dbg !3044, !alias.scope !3041
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3044
  %12 = bitcast i32* %11 to i8*, !dbg !3044
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #9, !dbg !3044
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !3045
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2960, metadata !703) #9, !dbg !3035
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !3046
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !3047
  ret i8* %13, !dbg !3048
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3049 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2961, metadata !2967), !dbg !3056
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3053, metadata !703), !dbg !3059
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3054, metadata !703), !dbg !3060
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3055, metadata !703), !dbg !3061
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2994, metadata !703) #9, !dbg !3062
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2995, metadata !703) #9, !dbg !3063
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2996, metadata !703) #9, !dbg !3064
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2997, metadata !703) #9, !dbg !3065
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3066
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !3066
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2998, metadata !703) #9, !dbg !3067
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2966, metadata !703) #9, !dbg !3068
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3069
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3069
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2961, metadata !703) #9, !dbg !3056
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2961, metadata !2977) #9, !dbg !3056
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3056
  %8 = icmp eq i32 %0, 10, !dbg !3070
  br i1 %8, label %9, label %10, !dbg !3071

; <label>:9:                                      ; preds = %3
  tail call void @abort() #16, !dbg !3072, !noalias !3073
  unreachable, !dbg !3072

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2961, metadata !2977) #9, !dbg !3056
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3076
  store i32 %0, i32* %11, align 8, !dbg !3076, !alias.scope !3073
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3076
  %13 = bitcast i32* %12 to i8*, !dbg !3076
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !3076
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3077
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2998, metadata !703) #9, !dbg !3067
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #9, !dbg !3078
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !3079
  ret i8* %14, !dbg !3080
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3081 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3085, metadata !703), !dbg !3089
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3086, metadata !703), !dbg !3090
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3087, metadata !703), !dbg !3091
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3092
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !3092
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3093, !tbaa.struct !3094
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3088, metadata !703), !dbg !3095
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1836, metadata !703), !dbg !3096
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1837, metadata !703), !dbg !3098
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1838, metadata !703), !dbg !3099
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1839, metadata !703), !dbg !3100
  %6 = lshr i8 %2, 5, !dbg !3101
  %7 = zext i8 %6 to i64, !dbg !3101
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3102
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1840, metadata !703), !dbg !3103
  %9 = and i8 %2, 31, !dbg !3104
  %10 = zext i8 %9 to i32, !dbg !3105
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1842, metadata !703), !dbg !3106
  %11 = load i32, i32* %8, align 4, !dbg !3107, !tbaa !833
  %12 = lshr i32 %11, %10, !dbg !3108
  %13 = and i32 %12, 1, !dbg !3109
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1843, metadata !703), !dbg !3110
  %14 = xor i32 %13, 1, !dbg !3111
  %15 = shl i32 %14, %10, !dbg !3112
  %16 = xor i32 %15, %11, !dbg !3113
  store i32 %16, i32* %8, align 4, !dbg !3113, !tbaa !833
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3088, metadata !703), !dbg !3095
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3114
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !3115
  ret i8* %17, !dbg !3116
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3117 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3121, metadata !703), !dbg !3123
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3122, metadata !703), !dbg !3124
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3085, metadata !703) #9, !dbg !3125
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3086, metadata !703) #9, !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3087, metadata !703) #9, !dbg !3128
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3129
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #9, !dbg !3129
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !3130, !tbaa.struct !3094
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3088, metadata !703) #9, !dbg !3131
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1836, metadata !703) #9, !dbg !3132
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1837, metadata !703) #9, !dbg !3134
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1838, metadata !703) #9, !dbg !3135
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1839, metadata !703) #9, !dbg !3136
  %5 = lshr i8 %1, 5, !dbg !3137
  %6 = zext i8 %5 to i64, !dbg !3137
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3138
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1840, metadata !703) #9, !dbg !3139
  %8 = and i8 %1, 31, !dbg !3140
  %9 = zext i8 %8 to i32, !dbg !3141
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1842, metadata !703) #9, !dbg !3142
  %10 = load i32, i32* %7, align 4, !dbg !3143, !tbaa !833
  %11 = lshr i32 %10, %9, !dbg !3144
  %12 = and i32 %11, 1, !dbg !3145
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1843, metadata !703) #9, !dbg !3146
  %13 = xor i32 %12, 1, !dbg !3147
  %14 = shl i32 %13, %9, !dbg !3148
  %15 = xor i32 %14, %10, !dbg !3149
  store i32 %15, i32* %7, align 4, !dbg !3149, !tbaa !833
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3088, metadata !703) #9, !dbg !3131
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #9, !dbg !3150
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #9, !dbg !3151
  ret i8* %16, !dbg !3152
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3153 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3155, metadata !703), !dbg !3156
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3121, metadata !703) #9, !dbg !3157
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3122, metadata !703) #9, !dbg !3159
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3085, metadata !703) #9, !dbg !3160
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3086, metadata !703) #9, !dbg !3162
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3087, metadata !703) #9, !dbg !3163
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3164
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #9, !dbg !3164
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !3165, !tbaa.struct !3094
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3088, metadata !703) #9, !dbg !3166
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1836, metadata !703) #9, !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1837, metadata !703) #9, !dbg !3169
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1838, metadata !703) #9, !dbg !3170
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1839, metadata !703) #9, !dbg !3171
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3172
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1840, metadata !703) #9, !dbg !3173
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1842, metadata !703) #9, !dbg !3174
  %5 = load i32, i32* %4, align 4, !dbg !3175, !tbaa !833
  %6 = or i32 %5, 67108864, !dbg !3176
  store i32 %6, i32* %4, align 4, !dbg !3176, !tbaa !833
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3088, metadata !703) #9, !dbg !3166
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #9, !dbg !3177
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #9, !dbg !3178
  ret i8* %7, !dbg !3179
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3180 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3182, metadata !703), !dbg !3184
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3183, metadata !703), !dbg !3185
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3085, metadata !703) #9, !dbg !3186
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3086, metadata !703) #9, !dbg !3188
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3087, metadata !703) #9, !dbg !3189
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3190
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #9, !dbg !3190
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !3191, !tbaa.struct !3094
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3088, metadata !703) #9, !dbg !3192
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1836, metadata !703) #9, !dbg !3193
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1837, metadata !703) #9, !dbg !3195
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1838, metadata !703) #9, !dbg !3196
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1839, metadata !703) #9, !dbg !3197
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3198
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1840, metadata !703) #9, !dbg !3199
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1842, metadata !703) #9, !dbg !3200
  %6 = load i32, i32* %5, align 4, !dbg !3201, !tbaa !833
  %7 = or i32 %6, 67108864, !dbg !3202
  store i32 %7, i32* %5, align 4, !dbg !3202, !tbaa !833
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3088, metadata !703) #9, !dbg !3192
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #9, !dbg !3203
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #9, !dbg !3204
  ret i8* %8, !dbg !3205
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3206 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2961, metadata !2967), !dbg !3212
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3208, metadata !703), !dbg !3214
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3209, metadata !703), !dbg !3215
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3210, metadata !703), !dbg !3216
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3217
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #9, !dbg !3217
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2966, metadata !703) #9, !dbg !3218
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3219
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3219
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2961, metadata !703) #9, !dbg !3212
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2961, metadata !2977) #9, !dbg !3212
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3212
  %9 = icmp eq i32 %1, 10, !dbg !3220
  br i1 %9, label %10, label %11, !dbg !3221

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !3222, !noalias !3223
  unreachable, !dbg !3222

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2961, metadata !2977) #9, !dbg !3212
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3226
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3226
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3227
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3228
  store i32 %1, i32* %13, align 8, !dbg !3228
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3228
  %15 = bitcast i32* %14 to i8*, !dbg !3228
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3228
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3211, metadata !703), !dbg !3229
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1836, metadata !703), !dbg !3230
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1837, metadata !703), !dbg !3232
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1838, metadata !703), !dbg !3233
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1839, metadata !703), !dbg !3234
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3235
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1840, metadata !703), !dbg !3236
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1842, metadata !703), !dbg !3237
  %17 = load i32, i32* %16, align 4, !dbg !3238, !tbaa !833
  %18 = or i32 %17, 67108864, !dbg !3239
  store i32 %18, i32* %16, align 4, !dbg !3239, !tbaa !833
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3211, metadata !703), !dbg !3229
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3240
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #9, !dbg !3241
  ret i8* %19, !dbg !3242
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3243 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3247, metadata !703), !dbg !3251
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3248, metadata !703), !dbg !3252
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3249, metadata !703), !dbg !3253
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3250, metadata !703), !dbg !3254
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3255, metadata !703) #9, !dbg !3265
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3260, metadata !703) #9, !dbg !3267
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3261, metadata !703) #9, !dbg !3268
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3262, metadata !703) #9, !dbg !3269
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3263, metadata !703) #9, !dbg !3270
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3271
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !3271
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !3272, !tbaa.struct !3094
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3264, metadata !703) #9, !dbg !3273
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1885, metadata !703) #9, !dbg !3274
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1886, metadata !703) #9, !dbg !3276
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1887, metadata !703) #9, !dbg !3277
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1885, metadata !703) #9, !dbg !3274
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1885, metadata !703) #9, !dbg !3274
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3278
  store i32 10, i32* %7, align 8, !dbg !3279, !tbaa !1817
  %8 = icmp ne i8* %1, null, !dbg !3280
  %9 = icmp ne i8* %2, null, !dbg !3281
  %10 = and i1 %8, %9, !dbg !3282
  br i1 %10, label %12, label %11, !dbg !3282

; <label>:11:                                     ; preds = %4
  tail call void @abort() #16, !dbg !3283
  unreachable, !dbg !3283

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3284
  store i8* %1, i8** %13, align 8, !dbg !3285, !tbaa !1903
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3286
  store i8* %2, i8** %14, align 8, !dbg !3287, !tbaa !1906
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3264, metadata !703) #9, !dbg !3273
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #9, !dbg !3288
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !3289
  ret i8* %15, !dbg !3290
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3256 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3255, metadata !703), !dbg !3291
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3260, metadata !703), !dbg !3292
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3261, metadata !703), !dbg !3293
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3262, metadata !703), !dbg !3294
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3263, metadata !703), !dbg !3295
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3296
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #9, !dbg !3296
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3297, !tbaa.struct !3094
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3264, metadata !703), !dbg !3298
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1885, metadata !703) #9, !dbg !3299
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1886, metadata !703) #9, !dbg !3301
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1887, metadata !703) #9, !dbg !3302
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1885, metadata !703) #9, !dbg !3299
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1885, metadata !703) #9, !dbg !3299
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3303
  store i32 10, i32* %8, align 8, !dbg !3304, !tbaa !1817
  %9 = icmp ne i8* %1, null, !dbg !3305
  %10 = icmp ne i8* %2, null, !dbg !3306
  %11 = and i1 %9, %10, !dbg !3307
  br i1 %11, label %13, label %12, !dbg !3307

; <label>:12:                                     ; preds = %5
  tail call void @abort() #16, !dbg !3308
  unreachable, !dbg !3308

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3309
  store i8* %1, i8** %14, align 8, !dbg !3310, !tbaa !1903
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3311
  store i8* %2, i8** %15, align 8, !dbg !3312, !tbaa !1906
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3264, metadata !703), !dbg !3298
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3313
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #9, !dbg !3314
  ret i8* %16, !dbg !3315
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3316 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3320, metadata !703), !dbg !3323
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3321, metadata !703), !dbg !3324
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3322, metadata !703), !dbg !3325
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3247, metadata !703) #9, !dbg !3326
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3248, metadata !703) #9, !dbg !3328
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3249, metadata !703) #9, !dbg !3329
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3250, metadata !703) #9, !dbg !3330
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3255, metadata !703) #9, !dbg !3331
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3260, metadata !703) #9, !dbg !3333
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3261, metadata !703) #9, !dbg !3334
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3262, metadata !703) #9, !dbg !3335
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3263, metadata !703) #9, !dbg !3336
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3337
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !3337
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !3338, !tbaa.struct !3094
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3264, metadata !703) #9, !dbg !3339
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1885, metadata !703) #9, !dbg !3340
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1886, metadata !703) #9, !dbg !3342
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1887, metadata !703) #9, !dbg !3343
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1885, metadata !703) #9, !dbg !3340
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1885, metadata !703) #9, !dbg !3340
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3344
  store i32 10, i32* %6, align 8, !dbg !3345, !tbaa !1817
  %7 = icmp ne i8* %0, null, !dbg !3346
  %8 = icmp ne i8* %1, null, !dbg !3347
  %9 = and i1 %7, %8, !dbg !3348
  br i1 %9, label %11, label %10, !dbg !3348

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !3349
  unreachable, !dbg !3349

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3350
  store i8* %0, i8** %12, align 8, !dbg !3351, !tbaa !1903
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3352
  store i8* %1, i8** %13, align 8, !dbg !3353, !tbaa !1906
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3264, metadata !703) #9, !dbg !3339
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !3354
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !3355
  ret i8* %14, !dbg !3356
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3357 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3361, metadata !703), !dbg !3365
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3362, metadata !703), !dbg !3366
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3363, metadata !703), !dbg !3367
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3364, metadata !703), !dbg !3368
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3255, metadata !703) #9, !dbg !3369
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3260, metadata !703) #9, !dbg !3371
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3261, metadata !703) #9, !dbg !3372
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3262, metadata !703) #9, !dbg !3373
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3263, metadata !703) #9, !dbg !3374
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3375
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !3375
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !3376, !tbaa.struct !3094
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3264, metadata !703) #9, !dbg !3377
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1885, metadata !703) #9, !dbg !3378
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1886, metadata !703) #9, !dbg !3380
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1887, metadata !703) #9, !dbg !3381
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1885, metadata !703) #9, !dbg !3378
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1885, metadata !703) #9, !dbg !3378
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3382
  store i32 10, i32* %7, align 8, !dbg !3383, !tbaa !1817
  %8 = icmp ne i8* %0, null, !dbg !3384
  %9 = icmp ne i8* %1, null, !dbg !3385
  %10 = and i1 %8, %9, !dbg !3386
  br i1 %10, label %12, label %11, !dbg !3386

; <label>:11:                                     ; preds = %4
  tail call void @abort() #16, !dbg !3387
  unreachable, !dbg !3387

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3388
  store i8* %0, i8** %13, align 8, !dbg !3389, !tbaa !1903
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3390
  store i8* %1, i8** %14, align 8, !dbg !3391, !tbaa !1906
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3264, metadata !703) #9, !dbg !3377
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #9, !dbg !3392
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !3393
  ret i8* %15, !dbg !3394
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3395 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3399, metadata !703), !dbg !3402
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3400, metadata !703), !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3401, metadata !703), !dbg !3404
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3405
  ret i8* %4, !dbg !3406
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3407 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3411, metadata !703), !dbg !3413
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3412, metadata !703), !dbg !3414
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3399, metadata !703) #9, !dbg !3415
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3400, metadata !703) #9, !dbg !3417
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3401, metadata !703) #9, !dbg !3418
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !3419
  ret i8* %3, !dbg !3420
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3421 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3425, metadata !703), !dbg !3427
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3426, metadata !703), !dbg !3428
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3399, metadata !703) #9, !dbg !3429
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3400, metadata !703) #9, !dbg !3431
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3401, metadata !703) #9, !dbg !3432
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !3433
  ret i8* %3, !dbg !3434
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3435 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3439, metadata !703), !dbg !3440
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3425, metadata !703) #9, !dbg !3441
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3426, metadata !703) #9, !dbg !3443
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3399, metadata !703) #9, !dbg !3444
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3400, metadata !703) #9, !dbg !3446
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3401, metadata !703) #9, !dbg !3447
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !3448
  ret i8* %2, !dbg !3449
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define void @savewd_init(%struct.savewd* nocapture) local_unnamed_addr #13 !dbg !3450 {
  tail call void @llvm.dbg.value(metadata %struct.savewd* %0, i64 0, metadata !3455, metadata !703), !dbg !3456
  %2 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 0, !dbg !3457
  store i32 0, i32* %2, align 4, !dbg !3458, !tbaa !1268
  ret void, !dbg !3459
}

; Function Attrs: inlinehint nounwind readonly sspstrong uwtable
define i32 @savewd_errno(%struct.savewd* nocapture readonly) local_unnamed_addr #14 !dbg !3460 {
  tail call void @llvm.dbg.value(metadata %struct.savewd* %0, i64 0, metadata !3466, metadata !703), !dbg !3467
  %2 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 0, !dbg !3468
  %3 = load i32, i32* %2, align 4, !dbg !3468, !tbaa !1268
  %4 = icmp eq i32 %3, 4, !dbg !3469
  br i1 %4, label %5, label %8, !dbg !3470

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3471
  %7 = load i32, i32* %6, align 4, !dbg !3471, !tbaa !1120
  br label %8, !dbg !3470

; <label>:8:                                      ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !3470
  ret i32 %9, !dbg !3472
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @savewd_chdir(%struct.savewd* nocapture, i8*, i32, i32*) local_unnamed_addr #6 !dbg !3473 {
  tail call void @llvm.dbg.value(metadata %struct.savewd* %0, i64 0, metadata !3478, metadata !703), !dbg !3487
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3479, metadata !703), !dbg !3488
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3480, metadata !703), !dbg !3489
  tail call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !3481, metadata !703), !dbg !3490
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3482, metadata !703), !dbg !3491
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3483, metadata !703), !dbg !3492
  %5 = icmp ne i32* %3, null, !dbg !3493
  %6 = xor i1 %5, true, !dbg !3495
  %7 = and i32 %2, 1, !dbg !3496
  %8 = icmp eq i32 %7, 0, !dbg !3496
  %9 = and i1 %8, %6, !dbg !3495
  br i1 %9, label %28, label %10, !dbg !3495

; <label>:10:                                     ; preds = %4
  %11 = shl i32 %2, 17, !dbg !3497
  %12 = and i32 %11, 131072, !dbg !3497
  %13 = or i32 %12, 67840, !dbg !3499
  %14 = tail call i32 (i8*, i32, ...) @open(i8* %1, i32 %13) #9, !dbg !3500
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !3482, metadata !703), !dbg !3491
  br i1 %5, label %15, label %19, !dbg !3501

; <label>:15:                                     ; preds = %10
  store i32 %14, i32* %3, align 4, !dbg !3502, !tbaa !833
  %16 = tail call i32* @__errno_location() #18, !dbg !3505
  %17 = load i32, i32* %16, align 4, !dbg !3505, !tbaa !833
  %18 = getelementptr inbounds i32, i32* %3, i64 1, !dbg !3506
  store i32 %17, i32* %18, align 4, !dbg !3507, !tbaa !833
  br label %19, !dbg !3508

; <label>:19:                                     ; preds = %15, %10
  %20 = icmp slt i32 %14, 0, !dbg !3509
  br i1 %20, label %21, label %25, !dbg !3511

; <label>:21:                                     ; preds = %19
  %22 = tail call i32* @__errno_location() #18, !dbg !3512
  %23 = load i32, i32* %22, align 4, !dbg !3512, !tbaa !833
  %24 = icmp eq i32 %23, 13, !dbg !3513
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3483, metadata !703), !dbg !3492
  br i1 %24, label %28, label %87

; <label>:25:                                     ; preds = %19
  %26 = and i32 %2, 2, !dbg !3514
  %27 = icmp eq i32 %26, 0, !dbg !3514
  br i1 %27, label %28, label %76, !dbg !3516

; <label>:28:                                     ; preds = %21, %4, %25
  %29 = phi i32 [ %14, %25 ], [ -1, %4 ], [ %14, %21 ]
  tail call void @llvm.dbg.value(metadata %struct.savewd* %0, i64 0, metadata !3517, metadata !703) #9, !dbg !3525
  %30 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 0, !dbg !3529
  %31 = load i32, i32* %30, align 4, !dbg !3529, !tbaa !1268
  switch i32 %31, label %57 [
    i32 0, label %32
    i32 3, label %44
    i32 1, label %58
    i32 2, label %58
    i32 4, label %58
    i32 5, label %58
  ], !dbg !3530

; <label>:32:                                     ; preds = %28
  %33 = tail call i32 (i8*, i32, ...) @open_safer(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.81, i64 0, i64 0), i32 0) #9, !dbg !3531
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !3522, metadata !703) #9, !dbg !3532
  %34 = icmp sgt i32 %33, -1, !dbg !3533
  br i1 %34, label %35, label %37, !dbg !3535

; <label>:35:                                     ; preds = %32
  store i32 1, i32* %30, align 4, !dbg !3536, !tbaa !1268
  %36 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3538
  store i32 %33, i32* %36, align 4, !dbg !3539, !tbaa !1120
  br label %58

; <label>:37:                                     ; preds = %32
  %38 = tail call i32* @__errno_location() #18, !dbg !3540
  %39 = load i32, i32* %38, align 4, !dbg !3540, !tbaa !833
  switch i32 %39, label %40 [
    i32 13, label %42
    i32 116, label %42
  ], !dbg !3542

; <label>:40:                                     ; preds = %37
  store i32 4, i32* %30, align 4, !dbg !3543, !tbaa !1268
  %41 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3545
  store i32 %39, i32* %41, align 4, !dbg !3546, !tbaa !1120
  br label %58

; <label>:42:                                     ; preds = %37, %37
  store i32 3, i32* %30, align 4, !dbg !3547, !tbaa !1268
  %43 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3548
  store i32 -1, i32* %43, align 4, !dbg !3549, !tbaa !1120
  br label %48, !dbg !3550

; <label>:44:                                     ; preds = %28
  %45 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0
  %46 = load i32, i32* %45, align 4, !dbg !3551, !tbaa !1120
  %47 = icmp slt i32 %46, 0, !dbg !3530
  br i1 %47, label %48, label %58, !dbg !3550

; <label>:48:                                     ; preds = %44, %42
  %49 = phi i32* [ %43, %42 ], [ %45, %44 ]
  %50 = tail call i32 @fork() #9, !dbg !3553
  store i32 %50, i32* %49, align 4, !dbg !3555, !tbaa !1120
  %51 = icmp eq i32 %50, 0, !dbg !3556
  br i1 %51, label %58, label %52, !dbg !3558

; <label>:52:                                     ; preds = %48
  %53 = icmp sgt i32 %50, 0, !dbg !3559
  br i1 %53, label %76, label %54, !dbg !3562

; <label>:54:                                     ; preds = %52
  store i32 4, i32* %30, align 4, !dbg !3563, !tbaa !1268
  %55 = tail call i32* @__errno_location() #18, !dbg !3564
  %56 = load i32, i32* %55, align 4, !dbg !3564, !tbaa !833
  store i32 %56, i32* %49, align 4, !dbg !3565, !tbaa !1120
  br label %58, !dbg !3566

; <label>:57:                                     ; preds = %28
  tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.82, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.83, i64 0, i64 0), i32 91, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.savewd_save, i64 0, i64 0)) #16, !dbg !3567
  unreachable, !dbg !3567

; <label>:58:                                     ; preds = %40, %35, %48, %28, %28, %28, %28, %44, %54
  %59 = icmp slt i32 %29, 0, !dbg !3570
  br i1 %59, label %60, label %62, !dbg !3572

; <label>:60:                                     ; preds = %58
  %61 = tail call i32 @chdir(i8* %1) #9, !dbg !3573
  br label %64, !dbg !3572

; <label>:62:                                     ; preds = %58
  %63 = tail call i32 @fchdir(i32 %29) #9, !dbg !3574
  br label %64, !dbg !3572

; <label>:64:                                     ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ], !dbg !3572
  tail call void @llvm.dbg.value(metadata i32 %65, i64 0, metadata !3483, metadata !703), !dbg !3492
  %66 = icmp eq i32 %65, 0, !dbg !3575
  br i1 %66, label %67, label %76, !dbg !3577

; <label>:67:                                     ; preds = %64
  %68 = load i32, i32* %30, align 4, !dbg !3578, !tbaa !1268
  switch i32 %68, label %75 [
    i32 1, label %69
    i32 4, label %76
    i32 2, label %76
    i32 5, label %76
    i32 3, label %70
  ], !dbg !3579

; <label>:69:                                     ; preds = %67
  store i32 2, i32* %30, align 4, !dbg !3580, !tbaa !1268
  br label %76, !dbg !3582

; <label>:70:                                     ; preds = %67
  %71 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3583
  %72 = load i32, i32* %71, align 4, !dbg !3583, !tbaa !1120
  %73 = icmp eq i32 %72, 0, !dbg !3583
  br i1 %73, label %76, label %74, !dbg !3586

; <label>:74:                                     ; preds = %70
  tail call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.84, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.83, i64 0, i64 0), i32 147, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.savewd_chdir, i64 0, i64 0)) #16, !dbg !3583
  unreachable, !dbg !3583

; <label>:75:                                     ; preds = %67
  tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.82, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.83, i64 0, i64 0), i32 151, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.savewd_chdir, i64 0, i64 0)) #16, !dbg !3587
  unreachable, !dbg !3587

; <label>:76:                                     ; preds = %52, %25, %69, %67, %67, %67, %70, %64
  %77 = phi i32 [ %29, %70 ], [ %29, %67 ], [ %29, %67 ], [ %29, %67 ], [ %29, %69 ], [ %29, %64 ], [ %14, %25 ], [ %29, %52 ], !dbg !3490
  %78 = phi i32 [ 0, %70 ], [ 0, %67 ], [ 0, %67 ], [ 0, %67 ], [ 0, %69 ], [ %65, %64 ], [ 0, %25 ], [ -2, %52 ]
  %79 = phi i32* [ %3, %70 ], [ %3, %67 ], [ %3, %67 ], [ %3, %67 ], [ %3, %69 ], [ %3, %64 ], [ %3, %25 ], [ null, %52 ]
  tail call void @llvm.dbg.value(metadata i32* %79, i64 0, metadata !3481, metadata !703), !dbg !3490
  tail call void @llvm.dbg.value(metadata i32 %78, i64 0, metadata !3483, metadata !703), !dbg !3492
  %80 = icmp slt i32 %77, 0, !dbg !3590
  %81 = icmp ne i32* %79, null, !dbg !3591
  %82 = or i1 %80, %81, !dbg !3592
  br i1 %82, label %87, label %83, !dbg !3592

; <label>:83:                                     ; preds = %76
  %84 = tail call i32* @__errno_location() #18, !dbg !3593
  %85 = load i32, i32* %84, align 4, !dbg !3593, !tbaa !833
  tail call void @llvm.dbg.value(metadata i32 %85, i64 0, metadata !3484, metadata !703), !dbg !3594
  %86 = tail call i32 @close(i32 %77) #9, !dbg !3595
  store i32 %85, i32* %84, align 4, !dbg !3596, !tbaa !833
  br label %87, !dbg !3597

; <label>:87:                                     ; preds = %21, %76, %83
  %88 = phi i32 [ %78, %76 ], [ %78, %83 ], [ -1, %21 ]
  ret i32 %88, !dbg !3598
}

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @fork() local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @chdir(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fchdir(i32) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @savewd_restore(%struct.savewd* nocapture, i32) local_unnamed_addr #6 !dbg !3599 {
  %3 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct.savewd* %0, i64 0, metadata !3603, metadata !703), !dbg !3614
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3604, metadata !703), !dbg !3615
  %4 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 0, !dbg !3616
  %5 = load i32, i32* %4, align 4, !dbg !3616, !tbaa !1268
  switch i32 %5, label %55 [
    i32 0, label %56
    i32 1, label %56
    i32 2, label %10
    i32 4, label %6
    i32 3, label %24
  ], !dbg !3617

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0
  %8 = load i32, i32* %7, align 4, !dbg !3618, !tbaa !1120
  %9 = tail call i32* @__errno_location() #18, !dbg !3619
  br label %21, !dbg !3617

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3620
  %12 = load i32, i32* %11, align 4, !dbg !3620, !tbaa !1120
  %13 = tail call i32 @fchdir(i32 %12) #9, !dbg !3621
  %14 = icmp eq i32 %13, 0, !dbg !3622
  br i1 %14, label %15, label %16, !dbg !3623

; <label>:15:                                     ; preds = %10
  store i32 1, i32* %4, align 4, !dbg !3624, !tbaa !1268
  br label %56, !dbg !3626

; <label>:16:                                     ; preds = %10
  %17 = tail call i32* @__errno_location() #18, !dbg !3627
  %18 = load i32, i32* %17, align 4, !dbg !3627, !tbaa !833
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !3605, metadata !703), !dbg !3628
  %19 = load i32, i32* %11, align 4, !dbg !3629, !tbaa !1120
  %20 = tail call i32 @close(i32 %19) #9, !dbg !3630
  store i32 4, i32* %4, align 4, !dbg !3631, !tbaa !1268
  store i32 %18, i32* %11, align 4, !dbg !3632, !tbaa !1120
  br label %21, !dbg !3633

; <label>:21:                                     ; preds = %6, %16
  %22 = phi i32* [ %9, %6 ], [ %17, %16 ], !dbg !3619
  %23 = phi i32 [ %8, %6 ], [ %18, %16 ], !dbg !3618
  store i32 %23, i32* %22, align 4, !dbg !3634, !tbaa !833
  br label %56, !dbg !3635

; <label>:24:                                     ; preds = %2
  %25 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3636
  %26 = load i32, i32* %25, align 4, !dbg !3636, !tbaa !1120
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !3609, metadata !703), !dbg !3637
  %27 = icmp eq i32 %26, 0, !dbg !3638
  br i1 %27, label %28, label %29, !dbg !3640

; <label>:28:                                     ; preds = %24
  tail call void @_exit(i32 %1) #16, !dbg !3641
  unreachable, !dbg !3641

; <label>:29:                                     ; preds = %24
  %30 = icmp sgt i32 %26, 0, !dbg !3642
  br i1 %30, label %31, label %56, !dbg !3643

; <label>:31:                                     ; preds = %29
  %32 = bitcast i32* %3 to i8*, !dbg !3644
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %32) #9, !dbg !3644
  call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !3611, metadata !703), !dbg !3645
  %33 = call i32 @waitpid(i32 %26, i32* nonnull %3, i32 0) #9, !dbg !3646
  %34 = icmp slt i32 %33, 0, !dbg !3647
  br i1 %34, label %35, label %44, !dbg !3648

; <label>:35:                                     ; preds = %31
  %36 = tail call i32* @__errno_location() #18, !dbg !3649
  br label %40, !dbg !3648

; <label>:37:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !3611, metadata !703), !dbg !3645
  %38 = call i32 @waitpid(i32 %26, i32* nonnull %3, i32 0) #9, !dbg !3646
  %39 = icmp slt i32 %38, 0, !dbg !3647
  br i1 %39, label %40, label %44, !dbg !3648, !llvm.loop !3652

; <label>:40:                                     ; preds = %35, %37
  %41 = load i32, i32* %36, align 4, !dbg !3649, !tbaa !833
  %42 = icmp eq i32 %41, 4, !dbg !3649
  br i1 %42, label %37, label %43, !dbg !3654

; <label>:43:                                     ; preds = %40
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3.85, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.83, i64 0, i64 0), i32 208, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.savewd_restore, i64 0, i64 0)) #16, !dbg !3649
  unreachable, !dbg !3649

; <label>:44:                                     ; preds = %37, %31
  store i32 -1, i32* %25, align 4, !dbg !3655, !tbaa !1120
  %45 = load i32, i32* %3, align 4, !dbg !3656, !tbaa !833
  call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !3611, metadata !703), !dbg !3645
  %46 = and i32 %45, 127, !dbg !3656
  %47 = icmp eq i32 %46, 0, !dbg !3656
  br i1 %47, label %51, label %48, !dbg !3658

; <label>:48:                                     ; preds = %44
  %49 = call i32 @raise(i32 %46) #9, !dbg !3659
  %50 = load i32, i32* %3, align 4, !dbg !3660, !tbaa !833
  br label %51, !dbg !3659

; <label>:51:                                     ; preds = %44, %48
  %52 = phi i32 [ %45, %44 ], [ %50, %48 ], !dbg !3660
  call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !3611, metadata !703), !dbg !3645
  %53 = lshr i32 %52, 8, !dbg !3660
  %54 = and i32 %53, 255, !dbg !3660
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %32) #9, !dbg !3661
  br label %56

; <label>:55:                                     ; preds = %2
  tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.82, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.83, i64 0, i64 0), i32 218, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.savewd_restore, i64 0, i64 0)) #16, !dbg !3662
  unreachable, !dbg !3662

; <label>:56:                                     ; preds = %29, %15, %2, %2, %51, %21
  %57 = phi i32 [ %54, %51 ], [ -1, %21 ], [ 0, %2 ], [ 0, %2 ], [ 0, %15 ], [ 0, %29 ]
  ret i32 %57, !dbg !3665
}

declare i32 @waitpid(i32, i32*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @raise(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @savewd_finish(%struct.savewd* nocapture) local_unnamed_addr #6 !dbg !3666 {
  tail call void @llvm.dbg.value(metadata %struct.savewd* %0, i64 0, metadata !3668, metadata !703), !dbg !3669
  %2 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 0, !dbg !3670
  %3 = load i32, i32* %2, align 4, !dbg !3670, !tbaa !1268
  switch i32 %3, label %13 [
    i32 0, label %14
    i32 4, label %14
    i32 1, label %4
    i32 2, label %4
    i32 3, label %8
  ], !dbg !3671

; <label>:4:                                      ; preds = %1, %1
  %5 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3672
  %6 = load i32, i32* %5, align 4, !dbg !3672, !tbaa !1120
  %7 = tail call i32 @close(i32 %6) #9, !dbg !3674
  br label %14, !dbg !3675

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3676
  %10 = load i32, i32* %9, align 4, !dbg !3676, !tbaa !1120
  %11 = icmp slt i32 %10, 0, !dbg !3676
  br i1 %11, label %14, label %12, !dbg !3679

; <label>:12:                                     ; preds = %8
  tail call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4.86, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.83, i64 0, i64 0), i32 239, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.savewd_finish, i64 0, i64 0)) #16, !dbg !3676
  unreachable, !dbg !3676

; <label>:13:                                     ; preds = %1
  tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.82, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.83, i64 0, i64 0), i32 243, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.savewd_finish, i64 0, i64 0)) #16, !dbg !3680
  unreachable, !dbg !3680

; <label>:14:                                     ; preds = %8, %1, %1, %4
  store i32 5, i32* %2, align 4, !dbg !3683, !tbaa !1268
  ret void, !dbg !3684
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @savewd_process_files(i32, i8** nocapture readonly, i32 (i8*, %struct.savewd*, i8*)* nocapture, i8*) local_unnamed_addr #6 !dbg !3685 {
  %5 = alloca %struct.savewd, align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3692, metadata !703), !dbg !3713
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !3693, metadata !703), !dbg !3714
  tail call void @llvm.dbg.value(metadata i32 (i8*, %struct.savewd*, i8*)* %2, i64 0, metadata !3694, metadata !703), !dbg !3715
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3695, metadata !703), !dbg !3716
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3696, metadata !703), !dbg !3717
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3698, metadata !703), !dbg !3718
  %6 = bitcast %struct.savewd* %5 to i8*, !dbg !3719
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9, !dbg !3719
  tail call void @llvm.dbg.value(metadata %struct.savewd* %5, i64 0, metadata !3699, metadata !703), !dbg !3720
  tail call void @llvm.dbg.value(metadata %struct.savewd* %5, i64 0, metadata !3455, metadata !703), !dbg !3721
  %7 = getelementptr inbounds %struct.savewd, %struct.savewd* %5, i64 0, i32 0, !dbg !3723
  store i32 0, i32* %7, align 4, !dbg !3724, !tbaa !1268
  %8 = add nsw i32 %0, -1
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !3697, metadata !703), !dbg !3725
  %9 = icmp sgt i32 %0, 0, !dbg !3726
  br i1 %9, label %10, label %24, !dbg !3729

; <label>:10:                                     ; preds = %4
  %11 = sext i32 %0 to i64, !dbg !3729
  br label %15, !dbg !3729

; <label>:12:                                     ; preds = %15
  %13 = add nsw i32 %17, -1
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !3697, metadata !703), !dbg !3725
  %14 = icmp sgt i64 %18, 0, !dbg !3726
  br i1 %14, label %15, label %24, !dbg !3729, !llvm.loop !3730

; <label>:15:                                     ; preds = %10, %12
  %16 = phi i64 [ %11, %10 ], [ %18, %12 ]
  %17 = phi i32 [ %8, %10 ], [ %13, %12 ]
  %18 = add i64 %16, -1
  %19 = getelementptr inbounds i8*, i8** %1, i64 %18, !dbg !3732
  %20 = load i8*, i8** %19, align 8, !dbg !3732, !tbaa !710
  %21 = load i8, i8* %20, align 1, !dbg !3732, !tbaa !1120
  %22 = icmp eq i8 %21, 47, !dbg !3732
  %23 = trunc i64 %18 to i32, !dbg !3734
  br i1 %22, label %12, label %24, !dbg !3734

; <label>:24:                                     ; preds = %12, %15, %4
  %25 = phi i32 [ %8, %4 ], [ %23, %15 ], [ %13, %12 ]
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3696, metadata !703), !dbg !3717
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3698, metadata !703), !dbg !3718
  %26 = icmp sgt i32 %25, 0, !dbg !3735
  call void @llvm.dbg.value(metadata %struct.savewd* %5, i64 0, metadata !3699, metadata !703), !dbg !3720
  br i1 %26, label %27, label %72, !dbg !3736

; <label>:27:                                     ; preds = %24
  %28 = getelementptr inbounds %struct.savewd, %struct.savewd* %5, i64 0, i32 1, i32 0
  %29 = zext i32 %25 to i64
  br label %30, !dbg !3736

; <label>:30:                                     ; preds = %59, %27
  %31 = phi i32 [ undef, %27 ], [ %60, %59 ], !dbg !3737
  %32 = phi i64 [ 0, %27 ], [ %46, %59 ]
  %33 = phi i32 [ 0, %27 ], [ %57, %59 ]
  %34 = phi i32 [ 0, %27 ], [ %56, %59 ]
  tail call void @llvm.dbg.value(metadata %struct.savewd* %5, i64 0, metadata !3742, metadata !703), !dbg !3744
  call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !3698, metadata !703), !dbg !3718
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !3696, metadata !703), !dbg !3717
  %35 = icmp eq i32 %33, 3, !dbg !3745
  %36 = icmp sgt i32 %31, 0, !dbg !3746
  %37 = and i1 %35, %36, !dbg !3747
  br i1 %37, label %44, label %38, !dbg !3747

; <label>:38:                                     ; preds = %30
  %39 = getelementptr inbounds i8*, i8** %1, i64 %32, !dbg !3748
  %40 = load i8*, i8** %39, align 8, !dbg !3748, !tbaa !710
  call void @llvm.dbg.value(metadata %struct.savewd* %5, i64 0, metadata !3699, metadata !703), !dbg !3720
  %41 = call i32 %2(i8* %40, %struct.savewd* nonnull %5, i8* %3) #9, !dbg !3749
  call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !3700, metadata !703), !dbg !3750
  %42 = icmp slt i32 %34, %41, !dbg !3751
  call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !3698, metadata !703), !dbg !3718
  %43 = select i1 %42, i32 %41, i32 %34, !dbg !3753
  call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3698, metadata !703), !dbg !3718
  br label %44, !dbg !3754

; <label>:44:                                     ; preds = %30, %38
  %45 = phi i32 [ %43, %38 ], [ %34, %30 ]
  call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !3698, metadata !703), !dbg !3718
  %46 = add nuw nsw i64 %32, 1, !dbg !3755
  %47 = getelementptr inbounds i8*, i8** %1, i64 %46, !dbg !3755
  %48 = load i8*, i8** %47, align 8, !dbg !3755, !tbaa !710
  %49 = load i8, i8* %48, align 1, !dbg !3755, !tbaa !1120
  %50 = icmp eq i8 %49, 47, !dbg !3755
  br i1 %50, label %55, label %51, !dbg !3756

; <label>:51:                                     ; preds = %44
  call void @llvm.dbg.value(metadata %struct.savewd* %5, i64 0, metadata !3699, metadata !703), !dbg !3720
  %52 = call i32 @savewd_restore(%struct.savewd* nonnull %5, i32 %45), !dbg !3757
  call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !3706, metadata !703), !dbg !3758
  %53 = icmp slt i32 %45, %52, !dbg !3759
  call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !3698, metadata !703), !dbg !3718
  %54 = select i1 %53, i32 %52, i32 %45, !dbg !3761
  call void @llvm.dbg.value(metadata i32 %54, i64 0, metadata !3698, metadata !703), !dbg !3718
  br label %55, !dbg !3762

; <label>:55:                                     ; preds = %44, %51
  %56 = phi i32 [ %45, %44 ], [ %54, %51 ]
  call void @llvm.dbg.value(metadata i32 %56, i64 0, metadata !3698, metadata !703), !dbg !3718
  call void @llvm.dbg.value(metadata i32 %56, i64 0, metadata !3698, metadata !703), !dbg !3718
  call void @llvm.dbg.value(metadata %struct.savewd* %5, i64 0, metadata !3699, metadata !703), !dbg !3720
  %57 = load i32, i32* %7, align 4, !tbaa !1268
  %58 = icmp eq i64 %46, %29, !dbg !3735
  br i1 %58, label %61, label %59, !dbg !3736, !llvm.loop !3763

; <label>:59:                                     ; preds = %55
  %60 = load i32, i32* %28, align 4, !dbg !3737
  br label %30, !dbg !3736

; <label>:61:                                     ; preds = %55
  call void @llvm.dbg.value(metadata %struct.savewd* %5, i64 0, metadata !3668, metadata !703) #9, !dbg !3765
  switch i32 %57, label %71 [
    i32 0, label %72
    i32 4, label %72
    i32 1, label %62
    i32 2, label %62
    i32 3, label %66
  ], !dbg !3767

; <label>:62:                                     ; preds = %61, %61
  %63 = getelementptr inbounds %struct.savewd, %struct.savewd* %5, i64 0, i32 1, i32 0, !dbg !3768
  %64 = load i32, i32* %63, align 4, !dbg !3768, !tbaa !1120
  %65 = call i32 @close(i32 %64) #9, !dbg !3769
  br label %72, !dbg !3770

; <label>:66:                                     ; preds = %61
  %67 = getelementptr inbounds %struct.savewd, %struct.savewd* %5, i64 0, i32 1, i32 0, !dbg !3771
  %68 = load i32, i32* %67, align 4, !dbg !3771, !tbaa !1120
  %69 = icmp slt i32 %68, 0, !dbg !3771
  br i1 %69, label %72, label %70, !dbg !3772

; <label>:70:                                     ; preds = %66
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4.86, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.83, i64 0, i64 0), i32 239, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.savewd_finish, i64 0, i64 0)) #16, !dbg !3771
  unreachable, !dbg !3771

; <label>:71:                                     ; preds = %61
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.82, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.83, i64 0, i64 0), i32 243, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.savewd_finish, i64 0, i64 0)) #16, !dbg !3773
  unreachable, !dbg !3773

; <label>:72:                                     ; preds = %24, %61, %61, %62, %66
  %73 = phi i32 [ %25, %61 ], [ %25, %61 ], [ %25, %62 ], [ %25, %66 ], [ 0, %24 ]
  %74 = phi i32 [ %56, %61 ], [ %56, %61 ], [ %56, %62 ], [ %56, %66 ], [ 0, %24 ]
  store i32 5, i32* %7, align 4, !dbg !3774, !tbaa !1268
  call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !3696, metadata !703), !dbg !3717
  call void @llvm.dbg.value(metadata i32 %56, i64 0, metadata !3698, metadata !703), !dbg !3718
  %75 = icmp slt i32 %73, %0, !dbg !3775
  br i1 %75, label %76, label %89, !dbg !3776

; <label>:76:                                     ; preds = %72
  %77 = sext i32 %73 to i64, !dbg !3776
  br label %78, !dbg !3776

; <label>:78:                                     ; preds = %78, %76
  %79 = phi i64 [ %77, %76 ], [ %86, %78 ]
  %80 = phi i32 [ %74, %76 ], [ %85, %78 ]
  call void @llvm.dbg.value(metadata i32 %80, i64 0, metadata !3698, metadata !703), !dbg !3718
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !3696, metadata !703), !dbg !3717
  %81 = getelementptr inbounds i8*, i8** %1, i64 %79, !dbg !3777
  %82 = load i8*, i8** %81, align 8, !dbg !3777, !tbaa !710
  call void @llvm.dbg.value(metadata %struct.savewd* %5, i64 0, metadata !3699, metadata !703), !dbg !3720
  %83 = call i32 %2(i8* %82, %struct.savewd* nonnull %5, i8* %3) #9, !dbg !3778
  call void @llvm.dbg.value(metadata i32 %83, i64 0, metadata !3709, metadata !703), !dbg !3779
  %84 = icmp slt i32 %80, %83, !dbg !3780
  call void @llvm.dbg.value(metadata i32 %83, i64 0, metadata !3698, metadata !703), !dbg !3718
  %85 = select i1 %84, i32 %83, i32 %80, !dbg !3782
  call void @llvm.dbg.value(metadata i32 %85, i64 0, metadata !3698, metadata !703), !dbg !3718
  %86 = add nsw i64 %79, 1, !dbg !3783
  call void @llvm.dbg.value(metadata i32 %85, i64 0, metadata !3698, metadata !703), !dbg !3718
  %87 = trunc i64 %86 to i32, !dbg !3775
  %88 = icmp eq i32 %87, %0, !dbg !3775
  br i1 %88, label %89, label %78, !dbg !3776, !llvm.loop !3784

; <label>:89:                                     ; preds = %78, %72
  %90 = phi i32 [ %74, %72 ], [ %85, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9, !dbg !3786
  ret i32 %90, !dbg !3787
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3788 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3833, metadata !703), !dbg !3839
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3834, metadata !703), !dbg !3840
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3835, metadata !703), !dbg !3841
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3836, metadata !703), !dbg !3842
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3837, metadata !703), !dbg !3843
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3838, metadata !703), !dbg !3844
  %7 = icmp eq i8* %1, null, !dbg !3845
  br i1 %7, label %10, label %8, !dbg !3847

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #9, !dbg !3848
  br label %12, !dbg !3848

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.90, i64 0, i64 0), i8* %2, i8* %3) #9, !dbg !3849
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.91, i64 0, i64 0), i32 5) #9, !dbg !3850
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #9, !dbg !3850
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.92, i64 0, i64 0), i32 5) #9, !dbg !3851
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #9, !dbg !3851
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
  ], !dbg !3852

; <label>:17:                                     ; preds = %12
  tail call void @abort() #16, !dbg !3853
  unreachable, !dbg !3853

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.93, i64 0, i64 0), i32 5) #9, !dbg !3855
  %20 = load i8*, i8** %4, align 8, !dbg !3855, !tbaa !710
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #9, !dbg !3855
  br label %146, !dbg !3856

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.94, i64 0, i64 0), i32 5) #9, !dbg !3857
  %24 = load i8*, i8** %4, align 8, !dbg !3857, !tbaa !710
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3857
  %26 = load i8*, i8** %25, align 8, !dbg !3857, !tbaa !710
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #9, !dbg !3857
  br label %146, !dbg !3858

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.95, i64 0, i64 0), i32 5) #9, !dbg !3859
  %30 = load i8*, i8** %4, align 8, !dbg !3859, !tbaa !710
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3859
  %32 = load i8*, i8** %31, align 8, !dbg !3859, !tbaa !710
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3859
  %34 = load i8*, i8** %33, align 8, !dbg !3859, !tbaa !710
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #9, !dbg !3859
  br label %146, !dbg !3860

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.96, i64 0, i64 0), i32 5) #9, !dbg !3861
  %38 = load i8*, i8** %4, align 8, !dbg !3861, !tbaa !710
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3861
  %40 = load i8*, i8** %39, align 8, !dbg !3861, !tbaa !710
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3861
  %42 = load i8*, i8** %41, align 8, !dbg !3861, !tbaa !710
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3861
  %44 = load i8*, i8** %43, align 8, !dbg !3861, !tbaa !710
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #9, !dbg !3861
  br label %146, !dbg !3862

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.97, i64 0, i64 0), i32 5) #9, !dbg !3863
  %48 = load i8*, i8** %4, align 8, !dbg !3863, !tbaa !710
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3863
  %50 = load i8*, i8** %49, align 8, !dbg !3863, !tbaa !710
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3863
  %52 = load i8*, i8** %51, align 8, !dbg !3863, !tbaa !710
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3863
  %54 = load i8*, i8** %53, align 8, !dbg !3863, !tbaa !710
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3863
  %56 = load i8*, i8** %55, align 8, !dbg !3863, !tbaa !710
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #9, !dbg !3863
  br label %146, !dbg !3864

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.98, i64 0, i64 0), i32 5) #9, !dbg !3865
  %60 = load i8*, i8** %4, align 8, !dbg !3865, !tbaa !710
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3865
  %62 = load i8*, i8** %61, align 8, !dbg !3865, !tbaa !710
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3865
  %64 = load i8*, i8** %63, align 8, !dbg !3865, !tbaa !710
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3865
  %66 = load i8*, i8** %65, align 8, !dbg !3865, !tbaa !710
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3865
  %68 = load i8*, i8** %67, align 8, !dbg !3865, !tbaa !710
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3865
  %70 = load i8*, i8** %69, align 8, !dbg !3865, !tbaa !710
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #9, !dbg !3865
  br label %146, !dbg !3866

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.99, i64 0, i64 0), i32 5) #9, !dbg !3867
  %74 = load i8*, i8** %4, align 8, !dbg !3867, !tbaa !710
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3867
  %76 = load i8*, i8** %75, align 8, !dbg !3867, !tbaa !710
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3867
  %78 = load i8*, i8** %77, align 8, !dbg !3867, !tbaa !710
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3867
  %80 = load i8*, i8** %79, align 8, !dbg !3867, !tbaa !710
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3867
  %82 = load i8*, i8** %81, align 8, !dbg !3867, !tbaa !710
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3867
  %84 = load i8*, i8** %83, align 8, !dbg !3867, !tbaa !710
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3867
  %86 = load i8*, i8** %85, align 8, !dbg !3867, !tbaa !710
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #9, !dbg !3867
  br label %146, !dbg !3868

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.100, i64 0, i64 0), i32 5) #9, !dbg !3869
  %90 = load i8*, i8** %4, align 8, !dbg !3869, !tbaa !710
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3869
  %92 = load i8*, i8** %91, align 8, !dbg !3869, !tbaa !710
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3869
  %94 = load i8*, i8** %93, align 8, !dbg !3869, !tbaa !710
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3869
  %96 = load i8*, i8** %95, align 8, !dbg !3869, !tbaa !710
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3869
  %98 = load i8*, i8** %97, align 8, !dbg !3869, !tbaa !710
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3869
  %100 = load i8*, i8** %99, align 8, !dbg !3869, !tbaa !710
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3869
  %102 = load i8*, i8** %101, align 8, !dbg !3869, !tbaa !710
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3869
  %104 = load i8*, i8** %103, align 8, !dbg !3869, !tbaa !710
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #9, !dbg !3869
  br label %146, !dbg !3870

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.101, i64 0, i64 0), i32 5) #9, !dbg !3871
  %108 = load i8*, i8** %4, align 8, !dbg !3871, !tbaa !710
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3871
  %110 = load i8*, i8** %109, align 8, !dbg !3871, !tbaa !710
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3871
  %112 = load i8*, i8** %111, align 8, !dbg !3871, !tbaa !710
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3871
  %114 = load i8*, i8** %113, align 8, !dbg !3871, !tbaa !710
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3871
  %116 = load i8*, i8** %115, align 8, !dbg !3871, !tbaa !710
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3871
  %118 = load i8*, i8** %117, align 8, !dbg !3871, !tbaa !710
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3871
  %120 = load i8*, i8** %119, align 8, !dbg !3871, !tbaa !710
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3871
  %122 = load i8*, i8** %121, align 8, !dbg !3871, !tbaa !710
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3871
  %124 = load i8*, i8** %123, align 8, !dbg !3871, !tbaa !710
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #9, !dbg !3871
  br label %146, !dbg !3872

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.102, i64 0, i64 0), i32 5) #9, !dbg !3873
  %128 = load i8*, i8** %4, align 8, !dbg !3873, !tbaa !710
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3873
  %130 = load i8*, i8** %129, align 8, !dbg !3873, !tbaa !710
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3873
  %132 = load i8*, i8** %131, align 8, !dbg !3873, !tbaa !710
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3873
  %134 = load i8*, i8** %133, align 8, !dbg !3873, !tbaa !710
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3873
  %136 = load i8*, i8** %135, align 8, !dbg !3873, !tbaa !710
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3873
  %138 = load i8*, i8** %137, align 8, !dbg !3873, !tbaa !710
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3873
  %140 = load i8*, i8** %139, align 8, !dbg !3873, !tbaa !710
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3873
  %142 = load i8*, i8** %141, align 8, !dbg !3873, !tbaa !710
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3873
  %144 = load i8*, i8** %143, align 8, !dbg !3873, !tbaa !710
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #9, !dbg !3873
  br label %146, !dbg !3874

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3875
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3876 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3880, metadata !703), !dbg !3886
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3881, metadata !703), !dbg !3887
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3882, metadata !703), !dbg !3888
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3883, metadata !703), !dbg !3889
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3884, metadata !703), !dbg !3890
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3885, metadata !703), !dbg !3891
  br label %6, !dbg !3892

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3885, metadata !703), !dbg !3891
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3894
  %9 = load i8*, i8** %8, align 8, !dbg !3894, !tbaa !710
  %10 = icmp eq i8* %9, null, !dbg !3896
  %11 = add i64 %7, 1, !dbg !3897
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3885, metadata !703), !dbg !3891
  br i1 %10, label %12, label %6, !dbg !3896, !llvm.loop !3898

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3900
  ret void, !dbg !3901
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3902 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3913, metadata !703), !dbg !3921
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3914, metadata !703), !dbg !3922
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3915, metadata !703), !dbg !3923
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3916, metadata !703), !dbg !3924
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3917, metadata !703), !dbg !3925
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3926
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #9, !dbg !3926
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3919, metadata !703), !dbg !3927
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3918, metadata !703), !dbg !3928
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3918, metadata !703), !dbg !3928
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3918, metadata !703), !dbg !3928
  %11 = load i32, i32* %8, align 8, !dbg !3929
  %12 = icmp ult i32 %11, 41, !dbg !3929
  br i1 %12, label %13, label %18, !dbg !3929

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3929
  %15 = sext i32 %11 to i64, !dbg !3929
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3929
  %17 = add i32 %11, 8, !dbg !3929
  store i32 %17, i32* %8, align 8, !dbg !3929
  br label %21, !dbg !3929

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3929
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3929
  store i8* %20, i8** %10, align 8, !dbg !3929
  br label %21, !dbg !3929

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3929
  %25 = load i8*, i8** %24, align 8, !dbg !3929
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3932
  store i8* %25, i8** %26, align 16, !dbg !3933, !tbaa !710
  %27 = icmp eq i8* %25, null, !dbg !3934
  br i1 %27, label %30, label %28, !dbg !3935

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3918, metadata !703), !dbg !3928
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3918, metadata !703), !dbg !3928
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3918, metadata !703), !dbg !3928
  %29 = icmp ult i32 %22, 41, !dbg !3929
  br i1 %29, label %35, label %32, !dbg !3929

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3936
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #9, !dbg !3937
  ret void, !dbg !3937

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3929
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3929
  store i8* %34, i8** %10, align 8, !dbg !3929
  br label %40, !dbg !3929

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3929
  %37 = sext i32 %22 to i64, !dbg !3929
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3929
  %39 = add i32 %22, 8, !dbg !3929
  store i32 %39, i32* %8, align 8, !dbg !3929
  br label %40, !dbg !3929

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3929
  %44 = load i8*, i8** %43, align 8, !dbg !3929
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3932
  store i8* %44, i8** %45, align 8, !dbg !3933, !tbaa !710
  %46 = icmp eq i8* %44, null, !dbg !3934
  br i1 %46, label %30, label %47, !dbg !3935

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3918, metadata !703), !dbg !3928
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3918, metadata !703), !dbg !3928
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3918, metadata !703), !dbg !3928
  %48 = icmp ult i32 %41, 41, !dbg !3929
  br i1 %48, label %52, label %49, !dbg !3929

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3929
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3929
  store i8* %51, i8** %10, align 8, !dbg !3929
  br label %57, !dbg !3929

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3929
  %54 = sext i32 %41 to i64, !dbg !3929
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3929
  %56 = add i32 %41, 8, !dbg !3929
  store i32 %56, i32* %8, align 8, !dbg !3929
  br label %57, !dbg !3929

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3929
  %61 = load i8*, i8** %60, align 8, !dbg !3929
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3932
  store i8* %61, i8** %62, align 16, !dbg !3933, !tbaa !710
  %63 = icmp eq i8* %61, null, !dbg !3934
  br i1 %63, label %30, label %64, !dbg !3935

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3918, metadata !703), !dbg !3928
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3918, metadata !703), !dbg !3928
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3918, metadata !703), !dbg !3928
  %65 = icmp ult i32 %58, 41, !dbg !3929
  br i1 %65, label %69, label %66, !dbg !3929

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3929
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3929
  store i8* %68, i8** %10, align 8, !dbg !3929
  br label %74, !dbg !3929

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3929
  %71 = sext i32 %58 to i64, !dbg !3929
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3929
  %73 = add i32 %58, 8, !dbg !3929
  store i32 %73, i32* %8, align 8, !dbg !3929
  br label %74, !dbg !3929

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3929
  %78 = load i8*, i8** %77, align 8, !dbg !3929
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3932
  store i8* %78, i8** %79, align 8, !dbg !3933, !tbaa !710
  %80 = icmp eq i8* %78, null, !dbg !3934
  br i1 %80, label %30, label %81, !dbg !3935

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3918, metadata !703), !dbg !3928
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3918, metadata !703), !dbg !3928
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3918, metadata !703), !dbg !3928
  %82 = icmp ult i32 %75, 41, !dbg !3929
  br i1 %82, label %86, label %83, !dbg !3929

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3929
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3929
  store i8* %85, i8** %10, align 8, !dbg !3929
  br label %91, !dbg !3929

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3929
  %88 = sext i32 %75 to i64, !dbg !3929
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3929
  %90 = add i32 %75, 8, !dbg !3929
  store i32 %90, i32* %8, align 8, !dbg !3929
  br label %91, !dbg !3929

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3929
  %95 = load i8*, i8** %94, align 8, !dbg !3929
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3932
  store i8* %95, i8** %96, align 16, !dbg !3933, !tbaa !710
  %97 = icmp eq i8* %95, null, !dbg !3934
  br i1 %97, label %30, label %98, !dbg !3935

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3918, metadata !703), !dbg !3928
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3918, metadata !703), !dbg !3928
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3918, metadata !703), !dbg !3928
  %99 = icmp ult i32 %92, 41, !dbg !3929
  br i1 %99, label %103, label %100, !dbg !3929

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3929
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3929
  store i8* %102, i8** %10, align 8, !dbg !3929
  br label %108, !dbg !3929

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3929
  %105 = sext i32 %92 to i64, !dbg !3929
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3929
  %107 = add i32 %92, 8, !dbg !3929
  store i32 %107, i32* %8, align 8, !dbg !3929
  br label %108, !dbg !3929

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3929
  %111 = load i8*, i8** %110, align 8, !dbg !3929
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3932
  store i8* %111, i8** %112, align 8, !dbg !3933, !tbaa !710
  %113 = icmp eq i8* %111, null, !dbg !3934
  br i1 %113, label %30, label %114, !dbg !3935

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3918, metadata !703), !dbg !3928
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3918, metadata !703), !dbg !3928
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3918, metadata !703), !dbg !3928
  %115 = load i8*, i8** %10, align 8, !dbg !3929
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3929
  store i8* %116, i8** %10, align 8, !dbg !3929
  %117 = bitcast i8* %115 to i8**, !dbg !3929
  %118 = load i8*, i8** %117, align 8, !dbg !3929
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3932
  store i8* %118, i8** %119, align 16, !dbg !3933, !tbaa !710
  %120 = icmp eq i8* %118, null, !dbg !3934
  br i1 %120, label %30, label %121, !dbg !3935

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3918, metadata !703), !dbg !3928
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3918, metadata !703), !dbg !3928
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3918, metadata !703), !dbg !3928
  %122 = load i8*, i8** %10, align 8, !dbg !3929
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3929
  store i8* %123, i8** %10, align 8, !dbg !3929
  %124 = bitcast i8* %122 to i8**, !dbg !3929
  %125 = load i8*, i8** %124, align 8, !dbg !3929
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3932
  store i8* %125, i8** %126, align 8, !dbg !3933, !tbaa !710
  %127 = icmp eq i8* %125, null, !dbg !3934
  br i1 %127, label %30, label %128, !dbg !3935

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3918, metadata !703), !dbg !3928
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3918, metadata !703), !dbg !3928
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3918, metadata !703), !dbg !3928
  %129 = load i8*, i8** %10, align 8, !dbg !3929
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3929
  store i8* %130, i8** %10, align 8, !dbg !3929
  %131 = bitcast i8* %129 to i8**, !dbg !3929
  %132 = load i8*, i8** %131, align 8, !dbg !3929
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3932
  store i8* %132, i8** %133, align 16, !dbg !3933, !tbaa !710
  %134 = icmp eq i8* %132, null, !dbg !3934
  br i1 %134, label %30, label %135, !dbg !3935

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3918, metadata !703), !dbg !3928
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3918, metadata !703), !dbg !3928
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3918, metadata !703), !dbg !3928
  %136 = load i8*, i8** %10, align 8, !dbg !3929
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3929
  store i8* %137, i8** %10, align 8, !dbg !3929
  %138 = bitcast i8* %136 to i8**, !dbg !3929
  %139 = load i8*, i8** %138, align 8, !dbg !3929
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3932
  store i8* %139, i8** %140, align 8, !dbg !3933, !tbaa !710
  %141 = icmp eq i8* %139, null, !dbg !3934
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3918, metadata !703), !dbg !3928
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3918, metadata !703), !dbg !3928
  %142 = select i1 %141, i64 9, i64 10, !dbg !3935
  br label %30, !dbg !3935
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3938 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3942, metadata !703), !dbg !3951
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3943, metadata !703), !dbg !3952
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3944, metadata !703), !dbg !3953
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3945, metadata !703), !dbg !3954
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3955
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #9, !dbg !3955
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3946, metadata !703), !dbg !3956
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3957
  call void @llvm.va_start(i8* nonnull %6), !dbg !3957
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3958
  call void @llvm.va_end(i8* nonnull %6), !dbg !3959
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #9, !dbg !3960
  ret void, !dbg !3960
}

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3961 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.105, i64 0, i64 0), i32 5) #9, !dbg !3962
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.106, i64 0, i64 0)) #9, !dbg !3962
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.107, i64 0, i64 0), i32 5) #9, !dbg !3963
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.108, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.109, i64 0, i64 0)) #9, !dbg !3963
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.110, i64 0, i64 0), i32 5) #9, !dbg !3964
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3964, !tbaa !710
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #9, !dbg !3964
  ret void, !dbg !3965
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3966 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3968, metadata !703), !dbg !3970
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3969, metadata !703), !dbg !3971
  %3 = udiv i64 9223372036854775807, %1, !dbg !3972
  %4 = icmp ult i64 %3, %0, !dbg !3972
  br i1 %4, label %5, label %6, !dbg !3974

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #16, !dbg !3975
  unreachable, !dbg !3975

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3976
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3977, metadata !703) #9, !dbg !3984
  %8 = tail call noalias i8* @malloc(i64 %7) #9, !dbg !3986
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3983, metadata !703) #9, !dbg !3987
  %9 = icmp eq i8* %8, null, !dbg !3988
  %10 = icmp ne i64 %7, 0, !dbg !3990
  %11 = and i1 %10, %9, !dbg !3991
  br i1 %11, label %12, label %13, !dbg !3991

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #16, !dbg !3992
  unreachable, !dbg !3992

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3993
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3978 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3977, metadata !703), !dbg !3994
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3995
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3983, metadata !703), !dbg !3996
  %3 = icmp eq i8* %2, null, !dbg !3997
  %4 = icmp ne i64 %0, 0, !dbg !3998
  %5 = and i1 %4, %3, !dbg !3999
  br i1 %5, label %6, label %7, !dbg !3999

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !4000
  unreachable, !dbg !4000

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4001
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !4002 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4006, metadata !703), !dbg !4009
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4007, metadata !703), !dbg !4010
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4008, metadata !703), !dbg !4011
  %4 = udiv i64 9223372036854775807, %2, !dbg !4012
  %5 = icmp ult i64 %4, %1, !dbg !4012
  br i1 %5, label %6, label %7, !dbg !4014

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #16, !dbg !4015
  unreachable, !dbg !4015

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4016
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4017, metadata !703) #9, !dbg !4023
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4022, metadata !703) #9, !dbg !4025
  %9 = icmp eq i64 %8, 0, !dbg !4026
  %10 = icmp ne i8* %0, null, !dbg !4028
  %11 = and i1 %10, %9, !dbg !4029
  br i1 %11, label %12, label %13, !dbg !4029

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #9, !dbg !4030
  br label %19, !dbg !4032

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #9, !dbg !4033
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4017, metadata !703) #9, !dbg !4023
  %15 = icmp eq i8* %14, null, !dbg !4034
  %16 = icmp ne i64 %8, 0, !dbg !4036
  %17 = and i1 %16, %15, !dbg !4037
  br i1 %17, label %18, label %19, !dbg !4037

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !4038
  unreachable, !dbg !4038

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !4039
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !4018 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4017, metadata !703), !dbg !4040
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4022, metadata !703), !dbg !4041
  %3 = icmp eq i64 %1, 0, !dbg !4042
  %4 = icmp ne i8* %0, null, !dbg !4043
  %5 = and i1 %4, %3, !dbg !4044
  br i1 %5, label %6, label %7, !dbg !4044

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #9, !dbg !4045
  br label %13, !dbg !4046

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #9, !dbg !4047
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4017, metadata !703), !dbg !4040
  %9 = icmp eq i8* %8, null, !dbg !4048
  %10 = icmp ne i64 %1, 0, !dbg !4049
  %11 = and i1 %10, %9, !dbg !4050
  br i1 %11, label %12, label %13, !dbg !4050

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #16, !dbg !4051
  unreachable, !dbg !4051

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !4052
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !640 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !645, metadata !703), !dbg !4053
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !646, metadata !703), !dbg !4054
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !647, metadata !703), !dbg !4055
  %4 = load i64, i64* %1, align 8, !dbg !4056, !tbaa !2772
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !648, metadata !703), !dbg !4057
  %5 = icmp eq i8* %0, null, !dbg !4058
  br i1 %5, label %6, label %13, !dbg !4060

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4061
  br i1 %7, label %8, label %17, !dbg !4064

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4065
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !648, metadata !703), !dbg !4057
  %10 = icmp ugt i64 %2, 128, !dbg !4067
  %11 = zext i1 %10 to i64, !dbg !4067
  %12 = add nuw nsw i64 %9, %11, !dbg !4068
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !648, metadata !703), !dbg !4057
  br label %17, !dbg !4069

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !4070
  %15 = icmp ugt i64 %14, %4, !dbg !4073
  br i1 %15, label %20, label %16, !dbg !4074

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !4075
  unreachable, !dbg !4075

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !648, metadata !703), !dbg !4057
  store i64 %18, i64* %1, align 8, !dbg !4076, !tbaa !2772
  %19 = mul i64 %18, %2, !dbg !4077
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4017, metadata !703) #9, !dbg !4078
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4022, metadata !703) #9, !dbg !4080
  br label %27, !dbg !4081

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !4082
  %22 = add i64 %4, 1, !dbg !4083
  %23 = add i64 %22, %21, !dbg !4084
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !648, metadata !703), !dbg !4057
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !648, metadata !703), !dbg !4057
  store i64 %23, i64* %1, align 8, !dbg !4076, !tbaa !2772
  %24 = mul i64 %23, %2, !dbg !4077
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4017, metadata !703) #9, !dbg !4078
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4022, metadata !703) #9, !dbg !4080
  %25 = icmp eq i64 %24, 0, !dbg !4085
  br i1 %25, label %26, label %27, !dbg !4081

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #9, !dbg !4086
  br label %34, !dbg !4087

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #9, !dbg !4088
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4017, metadata !703) #9, !dbg !4078
  %30 = icmp eq i8* %29, null, !dbg !4089
  %31 = icmp ne i64 %28, 0, !dbg !4090
  %32 = and i1 %31, %30, !dbg !4091
  br i1 %32, label %33, label %34, !dbg !4091

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #16, !dbg !4092
  unreachable, !dbg !4092

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !4093
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !4094 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4096, metadata !703), !dbg !4097
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3977, metadata !703) #9, !dbg !4098
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !4100
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3983, metadata !703) #9, !dbg !4101
  %3 = icmp eq i8* %2, null, !dbg !4102
  %4 = icmp ne i64 %0, 0, !dbg !4103
  %5 = and i1 %4, %3, !dbg !4104
  br i1 %5, label %6, label %7, !dbg !4104

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !4105
  unreachable, !dbg !4105

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4106
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4107 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4111, metadata !703), !dbg !4113
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4112, metadata !703), !dbg !4114
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !645, metadata !703) #9, !dbg !4115
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !646, metadata !703) #9, !dbg !4117
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !647, metadata !703) #9, !dbg !4118
  %3 = load i64, i64* %1, align 8, !dbg !4119, !tbaa !2772
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !648, metadata !703) #9, !dbg !4120
  %4 = icmp eq i8* %0, null, !dbg !4121
  br i1 %4, label %5, label %8, !dbg !4122

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4123
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !648, metadata !703) #9, !dbg !4120
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !648, metadata !703) #9, !dbg !4120
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4124
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !648, metadata !703) #9, !dbg !4120
  store i64 %7, i64* %1, align 8, !dbg !4125, !tbaa !2772
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4017, metadata !703) #9, !dbg !4126
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4022, metadata !703) #9, !dbg !4128
  br label %17, !dbg !4129

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4130
  br i1 %9, label %11, label %10, !dbg !4131

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #16, !dbg !4132
  unreachable, !dbg !4132

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4133
  %13 = add i64 %3, 1, !dbg !4134
  %14 = add i64 %13, %12, !dbg !4135
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !648, metadata !703) #9, !dbg !4120
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !648, metadata !703) #9, !dbg !4120
  store i64 %14, i64* %1, align 8, !dbg !4125, !tbaa !2772
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4017, metadata !703) #9, !dbg !4126
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4022, metadata !703) #9, !dbg !4128
  %15 = icmp eq i64 %14, 0, !dbg !4136
  br i1 %15, label %16, label %17, !dbg !4129

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #9, !dbg !4137
  br label %24, !dbg !4138

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #9, !dbg !4139
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4017, metadata !703) #9, !dbg !4126
  %20 = icmp eq i8* %19, null, !dbg !4140
  %21 = icmp ne i64 %18, 0, !dbg !4141
  %22 = and i1 %21, %20, !dbg !4142
  br i1 %22, label %23, label %24, !dbg !4142

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #16, !dbg !4143
  unreachable, !dbg !4143

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4144
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4145 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4147, metadata !703), !dbg !4148
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3977, metadata !703) #9, !dbg !4149
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !4151
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3983, metadata !703) #9, !dbg !4152
  %3 = icmp eq i8* %2, null, !dbg !4153
  %4 = icmp ne i64 %0, 0, !dbg !4154
  %5 = and i1 %4, %3, !dbg !4155
  br i1 %5, label %6, label %7, !dbg !4155

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !4156
  unreachable, !dbg !4156

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4157
  ret i8* %2, !dbg !4158
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4159 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4161, metadata !703), !dbg !4164
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4162, metadata !703), !dbg !4165
  %3 = udiv i64 9223372036854775807, %1, !dbg !4166
  %4 = icmp ult i64 %3, %0, !dbg !4166
  br i1 %4, label %8, label %5, !dbg !4168

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #9, !dbg !4169
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4163, metadata !703), !dbg !4170
  %7 = icmp eq i8* %6, null, !dbg !4171
  br i1 %7, label %8, label %9, !dbg !4172

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #16, !dbg !4173
  unreachable, !dbg !4173

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4174
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4175 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4181, metadata !703), !dbg !4183
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4182, metadata !703), !dbg !4184
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3977, metadata !703) #9, !dbg !4185
  %3 = tail call noalias i8* @malloc(i64 %1) #9, !dbg !4187
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3983, metadata !703) #9, !dbg !4188
  %4 = icmp eq i8* %3, null, !dbg !4189
  %5 = icmp ne i64 %1, 0, !dbg !4190
  %6 = and i1 %5, %4, !dbg !4191
  br i1 %6, label %7, label %8, !dbg !4191

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #16, !dbg !4192
  unreachable, !dbg !4192

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4193
  ret i8* %3, !dbg !4194
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4195 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4197, metadata !703), !dbg !4198
  %2 = tail call i64 @strlen(i8* %0) #15, !dbg !4199
  %3 = add i64 %2, 1, !dbg !4200
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4181, metadata !703) #9, !dbg !4201
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4182, metadata !703) #9, !dbg !4203
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3977, metadata !703) #9, !dbg !4204
  %4 = tail call noalias i8* @malloc(i64 %3) #9, !dbg !4206
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3983, metadata !703) #9, !dbg !4207
  %5 = icmp eq i8* %4, null, !dbg !4208
  %6 = icmp ne i64 %3, 0, !dbg !4209
  %7 = and i1 %6, %5, !dbg !4210
  br i1 %7, label %8, label %9, !dbg !4210

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !4211
  unreachable, !dbg !4211

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #9, !dbg !4212
  ret i8* %4, !dbg !4213
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4214 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4216, !tbaa !833
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.121, i64 0, i64 0), i32 5) #9, !dbg !4217
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.122, i64 0, i64 0), i8* %2) #9, !dbg !4218
  tail call void @abort() #16, !dbg !4219
  unreachable, !dbg !4219
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4220 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4223, metadata !703), !dbg !4229
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4224, metadata !703), !dbg !4230
  %3 = icmp eq i64 %0, 0, !dbg !4231
  %4 = icmp eq i64 %1, 0, !dbg !4232
  %5 = or i1 %3, %4, !dbg !4233
  br i1 %5, label %12, label %6, !dbg !4233

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4234
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4226, metadata !703), !dbg !4235
  %8 = udiv i64 %7, %1, !dbg !4236
  %9 = icmp eq i64 %8, %0, !dbg !4238
  br i1 %9, label %12, label %10, !dbg !4239

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #18, !dbg !4240
  store i32 12, i32* %11, align 4, !dbg !4242, !tbaa !833
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4223, metadata !703), !dbg !4229
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4224, metadata !703), !dbg !4230
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #9, !dbg !4243
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4225, metadata !703), !dbg !4244
  br label %16, !dbg !4245

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4246
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.savewd*) local_unnamed_addr #6 !dbg !4247 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4264, metadata !703), !dbg !4273
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4265, metadata !703), !dbg !4274
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4266, metadata !703), !dbg !4275
  tail call void @llvm.dbg.value(metadata %struct.savewd* %3, i64 0, metadata !4267, metadata !703), !dbg !4276
  %6 = bitcast i32* %5 to i8*, !dbg !4277
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9, !dbg !4277
  %7 = icmp eq i32* %0, null, !dbg !4278
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4264, metadata !703), !dbg !4273
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4280
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4264, metadata !703), !dbg !4273
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.savewd* %3) #9, !dbg !4281
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4268, metadata !703), !dbg !4282
  %10 = icmp ugt i64 %9, -3, !dbg !4283
  %11 = icmp ne i64 %2, 0, !dbg !4284
  %12 = and i1 %11, %10, !dbg !4285
  br i1 %12, label %13, label %18, !dbg !4285

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #9, !dbg !4286
  br i1 %14, label %18, label %15, !dbg !4287

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4288, !tbaa !1120
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4270, metadata !703), !dbg !4289
  %17 = zext i8 %16 to i32, !dbg !4290
  store i32 %17, i32* %8, align 4, !dbg !4291, !tbaa !833
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9, !dbg !4292
  ret i64 %19, !dbg !4292
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.savewd*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4293 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4338, metadata !703), !dbg !4343
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #9, !dbg !4344
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4345, metadata !703), !dbg !4348
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4350
  %4 = load i32, i32* %3, align 8, !dbg !4350, !tbaa !4351
  %5 = and i32 %4, 32, !dbg !4350
  %6 = icmp eq i32 %5, 0, !dbg !4352
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #9, !dbg !4353
  %8 = icmp ne i32 %7, 0, !dbg !4354
  br i1 %6, label %9, label %19, !dbg !4355

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4357
  %11 = xor i1 %8, true, !dbg !4358
  %12 = or i1 %10, %11, !dbg !4358
  %13 = sext i1 %8 to i32, !dbg !4358
  br i1 %12, label %22, label %14, !dbg !4358

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #18, !dbg !4359
  %16 = load i32, i32* %15, align 4, !dbg !4359, !tbaa !833
  %17 = icmp ne i32 %16, 9, !dbg !4360
  %18 = sext i1 %17 to i32, !dbg !4361
  br label %22, !dbg !4361

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4362

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #18, !dbg !4364
  store i32 0, i32* %21, align 4, !dbg !4366, !tbaa !833
  br label %22, !dbg !4364

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4367
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @open_safer(i8* nocapture readonly, i32, ...) local_unnamed_addr #6 !dbg !4368 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4373, metadata !703), !dbg !4388
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4374, metadata !703), !dbg !4389
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4375, metadata !703), !dbg !4390
  %4 = and i32 %1, 64, !dbg !4391
  %5 = icmp eq i32 %4, 0, !dbg !4391
  br i1 %5, label %25, label %6, !dbg !4392

; <label>:6:                                      ; preds = %2
  %7 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4393
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #9, !dbg !4393
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !4376, metadata !703), !dbg !4394
  call void @llvm.va_start(i8* nonnull %7), !dbg !4395
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4396
  %9 = load i32, i32* %8, align 16, !dbg !4396
  %10 = icmp ult i32 %9, 41, !dbg !4396
  br i1 %10, label %11, label %17, !dbg !4396

; <label>:11:                                     ; preds = %6
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4396
  %13 = load i8*, i8** %12, align 16, !dbg !4396
  %14 = sext i32 %9 to i64, !dbg !4396
  %15 = getelementptr i8, i8* %13, i64 %14, !dbg !4396
  %16 = add i32 %9, 8, !dbg !4396
  store i32 %16, i32* %8, align 16, !dbg !4396
  br label %21, !dbg !4396

; <label>:17:                                     ; preds = %6
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4396
  %19 = load i8*, i8** %18, align 8, !dbg !4396
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4396
  store i8* %20, i8** %18, align 8, !dbg !4396
  br label %21, !dbg !4396

; <label>:21:                                     ; preds = %17, %11
  %22 = phi i8* [ %15, %11 ], [ %19, %17 ]
  %23 = bitcast i8* %22 to i32*, !dbg !4396
  %24 = load i32, i32* %23, align 4, !dbg !4396
  call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !4375, metadata !703), !dbg !4390
  call void @llvm.va_end(i8* nonnull %7), !dbg !4397
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #9, !dbg !4398
  br label %25, !dbg !4399

; <label>:25:                                     ; preds = %2, %21
  %26 = phi i32 [ %24, %21 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !4375, metadata !703), !dbg !4390
  %27 = call i32 (i8*, i32, ...) @open(i8* %0, i32 %1, i32 %26) #9, !dbg !4400
  %28 = call i32 @fd_safer(i32 %27) #9, !dbg !4401
  ret i32 %28, !dbg !4402
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4403 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4408, metadata !703), !dbg !4411
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4409, metadata !703), !dbg !4412
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #9, !dbg !4413
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4410, metadata !703), !dbg !4414
  %3 = icmp eq i8* %2, null, !dbg !4415
  br i1 %3, label %11, label %4, !dbg !4417

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.133, i64 0, i64 0)) #15, !dbg !4418
  %6 = icmp eq i32 %5, 0, !dbg !4423
  br i1 %6, label %10, label %7, !dbg !4424

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.134, i64 0, i64 0)) #15, !dbg !4425
  %9 = icmp eq i32 %8, 0, !dbg !4426
  br i1 %9, label %10, label %11, !dbg !4427

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4409, metadata !703), !dbg !4412
  br label %11, !dbg !4428

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4429
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4430 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4436, metadata !703), !dbg !4510
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4503, metadata !703), !dbg !4513
  %3 = tail call i8* @nl_langinfo(i32 14) #9, !dbg !4514
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4434, metadata !703), !dbg !4515
  %4 = icmp eq i8* %3, null, !dbg !4516
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.137, i64 0, i64 0), i8* %3, !dbg !4518
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4434, metadata !703), !dbg !4515
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4519, !tbaa !710
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4450, metadata !703) #9, !dbg !4520
  %7 = icmp eq i8* %6, null, !dbg !4521
  br i1 %7, label %8, label %123, !dbg !4522

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.138, i64 0, i64 0)) #9, !dbg !4523
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4451, metadata !703) #9, !dbg !4524
  %10 = icmp eq i8* %9, null, !dbg !4525
  br i1 %10, label %14, label %11, !dbg !4527

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4528, !tbaa !1120
  %13 = icmp eq i8 %12, 0, !dbg !4529
  br i1 %13, label %14, label %15, !dbg !4530

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4531

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.139, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4451, metadata !703) #9, !dbg !4524
  %17 = tail call i64 @strlen(i8* nonnull %16) #15, !dbg !4532
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4454, metadata !703) #9, !dbg !4533
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4456, metadata !703) #9, !dbg !4534
  %18 = icmp eq i64 %17, 0, !dbg !4535
  br i1 %18, label %24, label %19, !dbg !4536

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4537
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4537
  %22 = load i8, i8* %21, align 1, !dbg !4537, !tbaa !1120
  %23 = icmp ne i8 %22, 47, !dbg !4537
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4538
  %27 = add i64 %17, 14, !dbg !4539
  %28 = add i64 %27, %26, !dbg !4540
  %29 = tail call noalias i8* @malloc(i64 %28) #9, !dbg !4541
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4453, metadata !703) #9, !dbg !4542
  %30 = icmp eq i8* %29, null, !dbg !4543
  br i1 %30, label %121, label %31, !dbg !4543

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #9, !dbg !4544
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4547

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4548, !tbaa !1120
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4550
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.140, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !4551
  br label %37, !dbg !4552

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4550
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.140, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !4551
  br label %37, !dbg !4552

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #9, !dbg !4553
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4458, metadata !703) #9, !dbg !4554
  %39 = icmp slt i32 %38, 0, !dbg !4555
  br i1 %39, label %119, label %40, !dbg !4556

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.141, i64 0, i64 0)) #9, !dbg !4557
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4459, metadata !703) #9, !dbg !4558
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4559
  br i1 %42, label %43, label %45, !dbg !4560

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #9, !dbg !4561
  br label %119, !dbg !4563

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4500, metadata !703) #9, !dbg !4564
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4501, metadata !703) #9, !dbg !4565
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4566

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !4567

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4500, metadata !703) #9, !dbg !4564
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4501, metadata !703) #9, !dbg !4565
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #9, !dbg !4567
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #9, !dbg !4568
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4569, metadata !703) #9, !dbg !4574
  %54 = load i8*, i8** %48, align 8, !dbg !4576, !tbaa !4577
  %55 = load i8*, i8** %49, align 8, !dbg !4576, !tbaa !4578
  %56 = icmp ult i8* %54, %55, !dbg !4576
  br i1 %56, label %59, label %57, !dbg !4576, !prof !1119

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !4576
  br label %63, !dbg !4576

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !4576
  store i8* %60, i8** %48, align 8, !dbg !4576, !tbaa !4577
  %61 = load i8, i8* %54, align 1, !dbg !4576, !tbaa !1120
  %62 = zext i8 %61 to i32, !dbg !4576
  br label %63, !dbg !4576

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !4576
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !4502, metadata !703) #9, !dbg !4579
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !4580, !llvm.loop !4581

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !4586

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4569, metadata !703) #9, !dbg !4588
  %67 = load i8*, i8** %48, align 8, !dbg !4586, !tbaa !4577
  %68 = load i8*, i8** %49, align 8, !dbg !4586, !tbaa !4578
  %69 = icmp ult i8* %67, %68, !dbg !4586
  br i1 %69, label %72, label %70, !dbg !4586, !prof !1119

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !4586
  br label %76, !dbg !4586

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !4586
  store i8* %73, i8** %48, align 8, !dbg !4586, !tbaa !4577
  %74 = load i8, i8* %67, align 1, !dbg !4586, !tbaa !1120
  %75 = zext i8 %74 to i32, !dbg !4586
  br label %76, !dbg !4586

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !4586
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !4502, metadata !703) #9, !dbg !4579
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !4589, !llvm.loop !4590

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #9, !dbg !4593
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.142, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #9, !dbg !4594
  %81 = icmp slt i32 %80, 2, !dbg !4596
  br i1 %81, label %112, label %82, !dbg !4597

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #15, !dbg !4598
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4507, metadata !703) #9, !dbg !4599
  %84 = call i64 @strlen(i8* nonnull %47) #15, !dbg !4600
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !4508, metadata !703) #9, !dbg !4601
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4509, metadata !703) #9, !dbg !4602
  %85 = icmp eq i64 %51, 0, !dbg !4603
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !4605

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !4501, metadata !703) #9, !dbg !4565
  %90 = add i64 %87, 2, !dbg !4606
  %91 = call noalias i8* @malloc(i64 %90) #9, !dbg !4608
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !4500, metadata !703) #9, !dbg !4564
  br label %96, !dbg !4609

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !4610
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !4501, metadata !703) #9, !dbg !4565
  %94 = add i64 %93, 1, !dbg !4612
  %95 = call i8* @realloc(i8* %52, i64 %94) #9, !dbg !4613
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !4500, metadata !703) #9, !dbg !4564
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4500, metadata !703) #9, !dbg !4564
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4501, metadata !703) #9, !dbg !4565
  %99 = icmp eq i8* %98, null, !dbg !4614
  br i1 %99, label %100, label %102, !dbg !4616

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4501, metadata !703) #9, !dbg !4565
  call void @free(i8* %52) #9, !dbg !4617
  br label %112, !dbg !4619

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #9, !dbg !4620
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #9, !dbg !4620
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !4621
  %104 = xor i64 %84, -1, !dbg !4622
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4622
  %106 = xor i64 %83, -1, !dbg !4623
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !4623
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !4624, metadata !703) #9, !dbg !4632
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !4631, metadata !703) #9, !dbg !4632
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #9, !dbg !4634
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #9, !dbg !4635
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4624, metadata !703) #9, !dbg !4636
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4631, metadata !703) #9, !dbg !4636
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #9, !dbg !4638
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #9, !dbg !4639
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4500, metadata !703) #9, !dbg !4564
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4501, metadata !703) #9, !dbg !4565
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #9, !dbg !4620
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #9, !dbg !4620
  br label %50, !dbg !4640, !llvm.loop !4590

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #9, !dbg !4620
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #9, !dbg !4620
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #9, !dbg !4641
  %116 = icmp eq i64 %113, 0, !dbg !4642
  br i1 %116, label %119, label %117, !dbg !4644

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !4645
  store i8 0, i8* %118, align 1, !dbg !4647, !tbaa !1120
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.137, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.137, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.137, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !4450, metadata !703) #9, !dbg !4520
  call void @free(i8* %29) #9, !dbg !4648
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.137, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !4450, metadata !703) #9, !dbg !4520
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !4649, !tbaa !710
  br label %123, !dbg !4650

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4450, metadata !703) #9, !dbg !4520
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4435, metadata !703), !dbg !4651
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4435, metadata !703), !dbg !4651
  %125 = load i8, i8* %124, align 1, !dbg !4652, !tbaa !1120
  %126 = icmp eq i8 %125, 0, !dbg !4654
  br i1 %126, label %152, label %127, !dbg !4655

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !4656

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !4435, metadata !703), !dbg !4651
  %131 = call i32 @strcmp(i8* %5, i8* %130) #15, !dbg !4656
  %132 = icmp eq i32 %131, 0, !dbg !4658
  br i1 %132, label %139, label %133, !dbg !4659

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !4660
  br i1 %134, label %135, label %143, !dbg !4661

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !4662
  %137 = load i8, i8* %136, align 1, !dbg !4662, !tbaa !1120
  %138 = icmp eq i8 %137, 0, !dbg !4663
  br i1 %138, label %139, label %143, !dbg !4664

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #15, !dbg !4665
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !4667
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !4668
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !4434, metadata !703), !dbg !4515
  br label %152, !dbg !4669

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #15, !dbg !4670
  %145 = add i64 %144, 1, !dbg !4671
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !4672
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4435, metadata !703), !dbg !4651
  %147 = call i64 @strlen(i8* %146) #15, !dbg !4673
  %148 = add i64 %147, 1, !dbg !4674
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !4675
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4435, metadata !703), !dbg !4651
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4435, metadata !703), !dbg !4651
  %150 = load i8, i8* %149, align 1, !dbg !4652, !tbaa !1120
  %151 = icmp eq i8 %150, 0, !dbg !4654
  br i1 %151, label %152, label %128, !dbg !4655, !llvm.loop !4676

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4434, metadata !703), !dbg !4515
  %154 = load i8, i8* %153, align 1, !dbg !4678, !tbaa !1120
  %155 = icmp eq i8 %154, 0, !dbg !4680
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.143, i64 0, i64 0), i8* %153, !dbg !4681
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !4434, metadata !703), !dbg !4515
  ret i8* %156, !dbg !4682
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

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
define i64 @mkancesdirs(i8*, %struct.savewd*, i32 (i8*, i8*, i8*)* nocapture, i8*) local_unnamed_addr #6 !dbg !4683 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4689, metadata !703), !dbg !4706
  tail call void @llvm.dbg.value(metadata %struct.savewd* %1, i64 0, metadata !4690, metadata !703), !dbg !4707
  tail call void @llvm.dbg.value(metadata i32 (i8*, i8*, i8*)* %2, i64 0, metadata !4691, metadata !703), !dbg !4708
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4692, metadata !703), !dbg !4709
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4693, metadata !703), !dbg !4710
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4694, metadata !703), !dbg !4711
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4695, metadata !703), !dbg !4712
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4697, metadata !703), !dbg !4713
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4697, metadata !703), !dbg !4713
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4693, metadata !703), !dbg !4710
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4695, metadata !703), !dbg !4712
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4694, metadata !703), !dbg !4711
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4695, metadata !4714), !dbg !4712
  %5 = load i8, i8* %0, align 1, !dbg !4715, !tbaa !1120
  tail call void @llvm.dbg.value(metadata i8 %5, i64 0, metadata !4696, metadata !703), !dbg !4716
  %6 = icmp eq i8 %5, 0, !dbg !4717
  br i1 %6, label %90, label %7, !dbg !4717

; <label>:7:                                      ; preds = %4
  br label %8, !dbg !4718

; <label>:8:                                      ; preds = %7, %85
  %9 = phi i8 [ %86, %85 ], [ %5, %7 ]
  %10 = phi i8* [ %31, %85 ], [ %0, %7 ]
  %11 = phi i8 [ %88, %85 ], [ 0, %7 ]
  %12 = phi i8* [ %30, %85 ], [ null, %7 ]
  %13 = phi i8* [ %87, %85 ], [ %0, %7 ]
  %14 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !4718
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4694, metadata !703), !dbg !4711
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !4693, metadata !703), !dbg !4710
  tail call void @llvm.dbg.value(metadata i8 %11, i64 0, metadata !4697, metadata !703), !dbg !4713
  %15 = load i8, i8* %14, align 1, !dbg !4719, !tbaa !1120
  %16 = icmp eq i8 %15, 47, !dbg !4719
  %17 = icmp eq i8 %9, 47
  br i1 %16, label %18, label %29, !dbg !4720

; <label>:18:                                     ; preds = %8
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4693, metadata !703), !dbg !4710
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !4693, metadata !703), !dbg !4710
  %19 = select i1 %17, i8* %12, i8* %14, !dbg !4721
  tail call void @llvm.dbg.value(metadata i8 %88, i64 0, metadata !4697, metadata !703), !dbg !4713
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !4693, metadata !703), !dbg !4710
  tail call void @llvm.dbg.value(metadata i8* %87, i64 0, metadata !4694, metadata !703), !dbg !4711
  tail call void @llvm.dbg.value(metadata i8 %88, i64 0, metadata !4697, metadata !703), !dbg !4713
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !4693, metadata !703), !dbg !4710
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4695, metadata !703), !dbg !4712
  tail call void @llvm.dbg.value(metadata i8* %87, i64 0, metadata !4694, metadata !703), !dbg !4711
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4695, metadata !4714), !dbg !4712
  tail call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !4696, metadata !703), !dbg !4716
  %20 = getelementptr inbounds i8, i8* %10, i64 2, !dbg !4718
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4694, metadata !703), !dbg !4711
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4693, metadata !703), !dbg !4710
  tail call void @llvm.dbg.value(metadata i8 %11, i64 0, metadata !4697, metadata !703), !dbg !4713
  %21 = load i8, i8* %20, align 1, !dbg !4719, !tbaa !1120
  %22 = icmp eq i8 %21, 47, !dbg !4719
  br i1 %22, label %23, label %29, !dbg !4720

; <label>:23:                                     ; preds = %18
  br label %24, !dbg !4721

; <label>:24:                                     ; preds = %24, %23
  %25 = phi i8* [ %26, %24 ], [ %20, %23 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !4693, metadata !703), !dbg !4710
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4693, metadata !703), !dbg !4710
  tail call void @llvm.dbg.value(metadata i8 %88, i64 0, metadata !4697, metadata !703), !dbg !4713
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4693, metadata !703), !dbg !4710
  tail call void @llvm.dbg.value(metadata i8* %87, i64 0, metadata !4694, metadata !703), !dbg !4711
  tail call void @llvm.dbg.value(metadata i8 %88, i64 0, metadata !4697, metadata !703), !dbg !4713
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4693, metadata !703), !dbg !4710
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !4695, metadata !703), !dbg !4712
  tail call void @llvm.dbg.value(metadata i8* %87, i64 0, metadata !4694, metadata !703), !dbg !4711
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !4695, metadata !4714), !dbg !4712
  tail call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !4696, metadata !703), !dbg !4716
  %26 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !4718
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4694, metadata !703), !dbg !4711
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4693, metadata !703), !dbg !4710
  tail call void @llvm.dbg.value(metadata i8 %11, i64 0, metadata !4697, metadata !703), !dbg !4713
  %27 = load i8, i8* %26, align 1, !dbg !4719, !tbaa !1120
  %28 = icmp eq i8 %27, 47, !dbg !4719
  br i1 %28, label %24, label %29, !dbg !4720, !llvm.loop !4723

; <label>:29:                                     ; preds = %18, %24, %8
  %30 = phi i8* [ %12, %8 ], [ %19, %24 ], [ %19, %18 ]
  %31 = phi i8* [ %14, %8 ], [ %20, %18 ], [ %26, %24 ]
  %32 = phi i8 [ %15, %8 ], [ %21, %18 ], [ %27, %24 ]
  %33 = phi i1 [ %17, %8 ], [ true, %24 ], [ true, %18 ]
  br i1 %33, label %34, label %85, !dbg !4725

; <label>:34:                                     ; preds = %29
  %35 = icmp ne i8 %32, 0, !dbg !4726
  %36 = icmp ne i8* %30, null, !dbg !4727
  %37 = and i1 %36, %35, !dbg !4728
  br i1 %37, label %38, label %81, !dbg !4728

; <label>:38:                                     ; preds = %34
  %39 = ptrtoint i8* %30 to i64, !dbg !4729
  %40 = ptrtoint i8* %13 to i64, !dbg !4729
  %41 = sub i64 %39, %40, !dbg !4729
  %42 = icmp eq i64 %41, 1, !dbg !4730
  br i1 %42, label %43, label %47, !dbg !4731

; <label>:43:                                     ; preds = %38
  %44 = load i8, i8* %13, align 1, !dbg !4732, !tbaa !1120
  %45 = icmp eq i8 %44, 46, !dbg !4733
  br i1 %45, label %81, label %46, !dbg !4734

; <label>:46:                                     ; preds = %43
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4698, metadata !703), !dbg !4735
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4704, metadata !703), !dbg !4736
  store i8 0, i8* %30, align 1, !dbg !4737, !tbaa !1120
  br label %56, !dbg !4738

; <label>:47:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4698, metadata !703), !dbg !4735
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4704, metadata !703), !dbg !4736
  store i8 0, i8* %30, align 1, !dbg !4737, !tbaa !1120
  %48 = icmp eq i64 %41, 2, !dbg !4740
  br i1 %48, label %49, label %56, !dbg !4738

; <label>:49:                                     ; preds = %47
  %50 = load i8, i8* %13, align 1, !dbg !4741, !tbaa !1120
  %51 = icmp eq i8 %50, 46, !dbg !4742
  br i1 %51, label %52, label %56, !dbg !4743

; <label>:52:                                     ; preds = %49
  %53 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !4744
  %54 = load i8, i8* %53, align 1, !dbg !4744, !tbaa !1120
  %55 = icmp eq i8 %54, 46, !dbg !4745
  br i1 %55, label %62, label %56, !dbg !4746

; <label>:56:                                     ; preds = %46, %52, %49, %47
  %57 = tail call i32 %2(i8* %0, i8* %13, i8* %3) #9, !dbg !4747
  %58 = icmp slt i32 %57, 0, !dbg !4749
  br i1 %58, label %59, label %62, !dbg !4750

; <label>:59:                                     ; preds = %56
  %60 = tail call i32* @__errno_location() #18, !dbg !4751
  %61 = load i32, i32* %60, align 4, !dbg !4751, !tbaa !833
  tail call void @llvm.dbg.value(metadata i32 %61, i64 0, metadata !4698, metadata !703), !dbg !4735
  br label %62, !dbg !4752

; <label>:62:                                     ; preds = %56, %52, %59
  %63 = phi i8 [ %11, %59 ], [ 0, %52 ], [ 1, %56 ]
  %64 = phi i32 [ %61, %59 ], [ 0, %52 ], [ 0, %56 ]
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !4698, metadata !703), !dbg !4735
  tail call void @llvm.dbg.value(metadata i8 %63, i64 0, metadata !4697, metadata !703), !dbg !4713
  %65 = and i8 %63, 1, !dbg !4753
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4704, metadata !703), !dbg !4736
  %66 = zext i8 %65 to i32, !dbg !4755
  tail call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !4704, metadata !703), !dbg !4736
  %67 = tail call i32 @savewd_chdir(%struct.savewd* %1, i8* %13, i32 %66, i32* null) #9, !dbg !4756
  tail call void @llvm.dbg.value(metadata i32 %67, i64 0, metadata !4705, metadata !703), !dbg !4757
  %68 = icmp eq i32 %67, -1, !dbg !4758
  br i1 %68, label %71, label %69, !dbg !4758

; <label>:69:                                     ; preds = %62
  store i8 47, i8* %30, align 1, !dbg !4759, !tbaa !1120
  %70 = icmp eq i32 %67, 0, !dbg !4761
  br i1 %70, label %81, label %71, !dbg !4763

; <label>:71:                                     ; preds = %62, %69
  %72 = phi i32 [ -1, %62 ], [ %67, %69 ]
  %73 = icmp eq i32 %64, 0, !dbg !4764
  br i1 %73, label %79, label %74, !dbg !4767

; <label>:74:                                     ; preds = %71
  %75 = tail call i32* @__errno_location() #18, !dbg !4768
  %76 = load i32, i32* %75, align 4, !dbg !4768, !tbaa !833
  %77 = icmp eq i32 %76, 2, !dbg !4769
  br i1 %77, label %78, label %79, !dbg !4770

; <label>:78:                                     ; preds = %74
  store i32 %64, i32* %75, align 4, !dbg !4771, !tbaa !833
  br label %79, !dbg !4772

; <label>:79:                                     ; preds = %74, %78, %71
  %80 = sext i32 %72 to i64, !dbg !4773
  br label %95

; <label>:81:                                     ; preds = %34, %43, %69
  %82 = phi i8* [ %31, %69 ], [ %31, %43 ], [ %13, %34 ]
  %83 = phi i8 [ %63, %69 ], [ %11, %43 ], [ %11, %34 ]
  %84 = load i8, i8* %31, align 1, !dbg !4715, !tbaa !1120
  br label %85, !dbg !4715

; <label>:85:                                     ; preds = %81, %29
  %86 = phi i8 [ %84, %81 ], [ %32, %29 ], !dbg !4715
  %87 = phi i8* [ %82, %81 ], [ %13, %29 ]
  %88 = phi i8 [ %83, %81 ], [ %11, %29 ]
  tail call void @llvm.dbg.value(metadata i8 %88, i64 0, metadata !4697, metadata !703), !dbg !4713
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !4693, metadata !703), !dbg !4710
  tail call void @llvm.dbg.value(metadata i8* %87, i64 0, metadata !4694, metadata !703), !dbg !4711
  tail call void @llvm.dbg.value(metadata i8 %88, i64 0, metadata !4697, metadata !703), !dbg !4713
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !4693, metadata !703), !dbg !4710
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !4695, metadata !703), !dbg !4712
  tail call void @llvm.dbg.value(metadata i8* %87, i64 0, metadata !4694, metadata !703), !dbg !4711
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !4695, metadata !4714), !dbg !4712
  tail call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !4696, metadata !703), !dbg !4716
  %89 = icmp eq i8 %86, 0, !dbg !4717
  br i1 %89, label %90, label %8, !dbg !4717, !llvm.loop !4774

; <label>:90:                                     ; preds = %85, %4
  %91 = phi i8* [ %0, %4 ], [ %87, %85 ]
  %92 = ptrtoint i8* %91 to i64, !dbg !4776
  %93 = ptrtoint i8* %0 to i64, !dbg !4776
  %94 = sub i64 %92, %93, !dbg !4776
  br label %95, !dbg !4777

; <label>:95:                                     ; preds = %79, %90
  %96 = phi i64 [ %80, %79 ], [ %94, %90 ]
  ret i64 %96, !dbg !4778
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @dirchownmod(i32, i8*, i32, i32, i32, i32, i32) local_unnamed_addr #6 !dbg !4779 {
  %8 = alloca %struct.stat, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4784, metadata !703), !dbg !4828
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4785, metadata !703), !dbg !4829
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4786, metadata !703), !dbg !4830
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !4787, metadata !703), !dbg !4831
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !4788, metadata !703), !dbg !4832
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !4789, metadata !703), !dbg !4833
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !4790, metadata !703), !dbg !4834
  %9 = bitcast %struct.stat* %8 to i8*, !dbg !4835
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %9) #9, !dbg !4835
  %10 = icmp slt i32 %0, 0, !dbg !4836
  tail call void @llvm.dbg.value(metadata %struct.stat* %8, i64 0, metadata !4791, metadata !703), !dbg !4837
  br i1 %10, label %11, label %13, !dbg !4838

; <label>:11:                                     ; preds = %7
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4839, metadata !703) #9, !dbg !4846
  tail call void @llvm.dbg.value(metadata %struct.stat* %8, i64 0, metadata !4845, metadata !703) #9, !dbg !4846
  %12 = call i32 @__xstat(i32 1, i8* nonnull %1, %struct.stat* nonnull %8) #9, !dbg !4848
  br label %15, !dbg !4838

; <label>:13:                                     ; preds = %7
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4849, metadata !703) #9, !dbg !4855
  tail call void @llvm.dbg.value(metadata %struct.stat* %8, i64 0, metadata !4854, metadata !703) #9, !dbg !4855
  %14 = call i32 @__fxstat(i32 1, i32 %0, %struct.stat* nonnull %8) #9, !dbg !4857
  br label %15, !dbg !4838

; <label>:15:                                     ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ], !dbg !4838
  call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !4813, metadata !703), !dbg !4858
  %17 = icmp eq i32 %16, 0, !dbg !4859
  br i1 %17, label %18, label %72, !dbg !4860

; <label>:18:                                     ; preds = %15
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 3, !dbg !4861
  %20 = load i32, i32* %19, align 8, !dbg !4861, !tbaa !1336
  call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4814, metadata !703), !dbg !4862
  %21 = and i32 %20, 61440, !dbg !4863
  %22 = icmp eq i32 %21, 16384, !dbg !4863
  br i1 %22, label %25, label %23, !dbg !4864

; <label>:23:                                     ; preds = %18
  %24 = tail call i32* @__errno_location() #18, !dbg !4865
  store i32 20, i32* %24, align 4, !dbg !4867, !tbaa !833
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4813, metadata !703), !dbg !4858
  br label %72, !dbg !4868

; <label>:25:                                     ; preds = %18
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4817, metadata !703), !dbg !4869
  %26 = icmp eq i32 %3, -1, !dbg !4870
  br i1 %26, label %31, label %27, !dbg !4872

; <label>:27:                                     ; preds = %25
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 4, !dbg !4873
  %29 = load i32, i32* %28, align 4, !dbg !4873, !tbaa !4874
  %30 = icmp eq i32 %29, %3, !dbg !4875
  br i1 %30, label %31, label %37, !dbg !4876

; <label>:31:                                     ; preds = %27, %25
  %32 = icmp eq i32 %4, -1, !dbg !4877
  br i1 %32, label %56, label %33, !dbg !4878

; <label>:33:                                     ; preds = %31
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 5, !dbg !4879
  %35 = load i32, i32* %34, align 8, !dbg !4879, !tbaa !4880
  %36 = icmp eq i32 %35, %4, !dbg !4881
  br i1 %36, label %56, label %37, !dbg !4882

; <label>:37:                                     ; preds = %27, %33
  %38 = icmp sgt i32 %0, -1, !dbg !4883
  br i1 %38, label %39, label %41, !dbg !4885

; <label>:39:                                     ; preds = %37
  %40 = call i32 @fchown(i32 %0, i32 %3, i32 %4) #9, !dbg !4886
  br label %47, !dbg !4885

; <label>:41:                                     ; preds = %37
  %42 = icmp eq i32 %2, -1, !dbg !4887
  br i1 %42, label %45, label %43, !dbg !4888

; <label>:43:                                     ; preds = %41
  %44 = call i32 @lchown(i8* %1, i32 %3, i32 %4) #9, !dbg !4889
  br label %47, !dbg !4888

; <label>:45:                                     ; preds = %41
  %46 = call i32 @chown(i8* %1, i32 %3, i32 %4) #9, !dbg !4890
  br label %47, !dbg !4888

; <label>:47:                                     ; preds = %39, %45, %43
  %48 = phi i32 [ %40, %39 ], [ %44, %43 ], [ %46, %45 ], !dbg !4885
  call void @llvm.dbg.value(metadata i32 %48, i64 0, metadata !4813, metadata !703), !dbg !4858
  %49 = icmp ne i32 %48, 0, !dbg !4891
  %50 = and i32 %20, 73, !dbg !4893
  %51 = icmp eq i32 %50, 0, !dbg !4893
  %52 = or i1 %51, %49, !dbg !4894
  %53 = and i32 %20, 3072, !dbg !4895
  call void @llvm.dbg.value(metadata i32 %53, i64 0, metadata !4817, metadata !703), !dbg !4869
  %54 = select i1 %52, i32 0, i32 %53, !dbg !4894
  call void @llvm.dbg.value(metadata i32 %48, i64 0, metadata !4813, metadata !703), !dbg !4858
  call void @llvm.dbg.value(metadata i32 %54, i64 0, metadata !4817, metadata !703), !dbg !4869
  %55 = icmp eq i32 %48, 0, !dbg !4896
  br i1 %55, label %56, label %72, !dbg !4897

; <label>:56:                                     ; preds = %31, %33, %47
  %57 = phi i32 [ %54, %47 ], [ 0, %33 ], [ 0, %31 ]
  %58 = xor i32 %20, %5, !dbg !4898
  %59 = or i32 %57, %58, !dbg !4899
  %60 = and i32 %59, %6, !dbg !4900
  %61 = icmp eq i32 %60, 0, !dbg !4900
  br i1 %61, label %72, label %62, !dbg !4901

; <label>:62:                                     ; preds = %56
  %63 = and i32 %6, 4095, !dbg !4902
  %64 = xor i32 %63, 4095, !dbg !4902
  %65 = and i32 %64, %20, !dbg !4903
  %66 = or i32 %65, %5, !dbg !4904
  call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !4820, metadata !703), !dbg !4905
  %67 = icmp sgt i32 %0, -1, !dbg !4906
  br i1 %67, label %68, label %70, !dbg !4907

; <label>:68:                                     ; preds = %62
  %69 = call i32 @fchmod(i32 %0, i32 %66) #9, !dbg !4908
  call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !4813, metadata !703), !dbg !4858
  br label %75, !dbg !4909

; <label>:70:                                     ; preds = %62
  %71 = call i32 @chmod(i8* %1, i32 %66) #9, !dbg !4910
  call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !4813, metadata !703), !dbg !4858
  br label %84, !dbg !4909

; <label>:72:                                     ; preds = %23, %56, %47, %15
  %73 = phi i32 [ %16, %15 ], [ -1, %23 ], [ 0, %56 ], [ %48, %47 ]
  call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !4813, metadata !703), !dbg !4858
  %74 = icmp sgt i32 %0, -1, !dbg !4911
  br i1 %74, label %75, label %84, !dbg !4909

; <label>:75:                                     ; preds = %68, %72
  %76 = phi i32 [ %69, %68 ], [ %73, %72 ]
  %77 = icmp eq i32 %76, 0, !dbg !4912
  br i1 %77, label %78, label %80, !dbg !4913

; <label>:78:                                     ; preds = %75
  %79 = call i32 @close(i32 %0) #9, !dbg !4914
  call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !4813, metadata !703), !dbg !4858
  br label %84, !dbg !4915

; <label>:80:                                     ; preds = %75
  %81 = tail call i32* @__errno_location() #18, !dbg !4916
  %82 = load i32, i32* %81, align 4, !dbg !4916, !tbaa !833
  call void @llvm.dbg.value(metadata i32 %82, i64 0, metadata !4823, metadata !703), !dbg !4917
  %83 = call i32 @close(i32 %0) #9, !dbg !4918
  store i32 %82, i32* %81, align 4, !dbg !4919, !tbaa !833
  br label %84

; <label>:84:                                     ; preds = %70, %78, %80, %72
  %85 = phi i32 [ %79, %78 ], [ %76, %80 ], [ %73, %72 ], [ %71, %70 ]
  call void @llvm.dbg.value(metadata i32 %85, i64 0, metadata !4813, metadata !703), !dbg !4858
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %9) #9, !dbg !4920
  ret i32 %85, !dbg !4921
}

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fchown(i32, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @lchown(i8* nocapture readonly, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @chown(i8* nocapture readonly, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fchmod(i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @chmod(i8* nocapture readonly, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @fd_safer(i32) local_unnamed_addr #6 !dbg !4922 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4927, metadata !703), !dbg !4932
  %2 = icmp ult i32 %0, 3, !dbg !4933
  br i1 %2, label %3, label %8, !dbg !4933

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @dup_safer(i32 %0) #9, !dbg !4934
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !4928, metadata !703), !dbg !4935
  %5 = tail call i32* @__errno_location() #18, !dbg !4936
  %6 = load i32, i32* %5, align 4, !dbg !4936, !tbaa !833
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !4931, metadata !703), !dbg !4937
  %7 = tail call i32 @close(i32 %0) #9, !dbg !4938
  store i32 %6, i32* %5, align 4, !dbg !4939, !tbaa !833
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !4927, metadata !703), !dbg !4932
  br label %8, !dbg !4940

; <label>:8:                                      ; preds = %3, %1
  %9 = phi i32 [ %4, %3 ], [ %0, %1 ]
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !4927, metadata !703), !dbg !4932
  ret i32 %9, !dbg !4941
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4942 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4987, metadata !703), !dbg !4991
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4988, metadata !703), !dbg !4992
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4990, metadata !703), !dbg !4993
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !4994
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4989, metadata !703), !dbg !4995
  %3 = icmp slt i32 %2, 0, !dbg !4996
  br i1 %3, label %4, label %6, !dbg !4998

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4999
  br label %24, !dbg !5000

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !5001
  %8 = icmp eq i32 %7, 0, !dbg !5001
  br i1 %8, label %13, label %9, !dbg !5003

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !5004
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #9, !dbg !5005
  %12 = icmp eq i64 %11, -1, !dbg !5006
  br i1 %12, label %16, label %13, !dbg !5007

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #9, !dbg !5008
  %15 = icmp eq i32 %14, 0, !dbg !5008
  br i1 %15, label %16, label %18, !dbg !5009

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4988, metadata !703), !dbg !4992
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5010
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4990, metadata !703), !dbg !4993
  br label %24, !dbg !5011

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #18, !dbg !5012
  %20 = load i32, i32* %19, align 4, !dbg !5012, !tbaa !833
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4988, metadata !703), !dbg !4992
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4988, metadata !703), !dbg !4992
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5010
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4990, metadata !703), !dbg !4993
  %22 = icmp eq i32 %20, 0, !dbg !5013
  br i1 %22, label %24, label %23, !dbg !5011

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !5015, !tbaa !833
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4990, metadata !703), !dbg !4993
  br label %24, !dbg !5017

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !5018
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !5019 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5064, metadata !703), !dbg !5065
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !5066
  br i1 %2, label %6, label %3, !dbg !5068

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !5069
  %5 = icmp eq i32 %4, 0, !dbg !5069
  br i1 %5, label %6, label %8, !dbg !5070

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !5071
  br label %17, !dbg !5072

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5073, metadata !703) #9, !dbg !5078
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5080
  %10 = load i32, i32* %9, align 8, !dbg !5080, !tbaa !4351
  %11 = and i32 %10, 256, !dbg !5082
  %12 = icmp eq i32 %11, 0, !dbg !5082
  br i1 %12, label %15, label %13, !dbg !5083

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #9, !dbg !5084
  br label %15, !dbg !5084

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !5085
  br label %17, !dbg !5086

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !5087
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !5088 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5134, metadata !703), !dbg !5140
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5135, metadata !703), !dbg !5141
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5136, metadata !703), !dbg !5142
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5143
  %5 = load i8*, i8** %4, align 8, !dbg !5143, !tbaa !4578
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5144
  %7 = load i8*, i8** %6, align 8, !dbg !5144, !tbaa !4577
  %8 = icmp eq i8* %5, %7, !dbg !5145
  br i1 %8, label %9, label %28, !dbg !5146

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5147
  %11 = load i8*, i8** %10, align 8, !dbg !5147, !tbaa !1114
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5148
  %13 = load i8*, i8** %12, align 8, !dbg !5148, !tbaa !5149
  %14 = icmp eq i8* %11, %13, !dbg !5150
  br i1 %14, label %15, label %28, !dbg !5151

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5152
  %17 = load i8*, i8** %16, align 8, !dbg !5152, !tbaa !5153
  %18 = icmp eq i8* %17, null, !dbg !5154
  br i1 %18, label %19, label %28, !dbg !5155

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !5156
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #9, !dbg !5157
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !5137, metadata !703), !dbg !5158
  %22 = icmp eq i64 %21, -1, !dbg !5159
  br i1 %22, label %30, label %23, !dbg !5161

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5162
  %25 = load i32, i32* %24, align 8, !dbg !5163, !tbaa !4351
  %26 = and i32 %25, -17, !dbg !5163
  store i32 %26, i32* %24, align 8, !dbg !5163, !tbaa !4351
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5164
  store i64 %21, i64* %27, align 8, !dbg !5165, !tbaa !5166
  br label %30, !dbg !5167

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5168
  br label %30, !dbg !5169

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !5170
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_safer(i32) local_unnamed_addr #6 !dbg !5171 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5174, metadata !703), !dbg !5175
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #9, !dbg !5176
  ret i32 %2, !dbg !5177
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #6 !dbg !545 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !553, metadata !703), !dbg !5178
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !554, metadata !703), !dbg !5179
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !5180
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #9, !dbg !5180
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !555, metadata !703), !dbg !5181
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !568, metadata !703), !dbg !5182
  call void @llvm.va_start(i8* nonnull %4), !dbg !5183
  %5 = icmp eq i32 %1, 1030, !dbg !5184
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %7 = load i32, i32* %6, align 16
  %8 = icmp ult i32 %7, 41
  br i1 %5, label %9, label %59, !dbg !5184

; <label>:9:                                      ; preds = %2
  br i1 %8, label %10, label %16, !dbg !5185

; <label>:10:                                     ; preds = %9
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !5185
  %12 = load i8*, i8** %11, align 16, !dbg !5185
  %13 = sext i32 %7 to i64, !dbg !5185
  %14 = getelementptr i8, i8* %12, i64 %13, !dbg !5185
  %15 = add i32 %7, 8, !dbg !5185
  store i32 %15, i32* %6, align 16, !dbg !5185
  br label %20, !dbg !5185

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !5185
  %18 = load i8*, i8** %17, align 8, !dbg !5185
  %19 = getelementptr i8, i8* %18, i64 8, !dbg !5185
  store i8* %19, i8** %17, align 8, !dbg !5185
  br label %20, !dbg !5185

; <label>:20:                                     ; preds = %16, %10
  %21 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %22 = bitcast i8* %21 to i32*, !dbg !5185
  %23 = load i32, i32* %22, align 4, !dbg !5185
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !569, metadata !703), !dbg !5186
  %24 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !5187, !tbaa !833
  %25 = icmp sgt i32 %24, -1, !dbg !5189
  br i1 %25, label %26, label %39, !dbg !5190

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #9, !dbg !5191
  call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !568, metadata !703), !dbg !5182
  %28 = icmp sgt i32 %27, -1, !dbg !5193
  br i1 %28, label %36, label %29, !dbg !5195

; <label>:29:                                     ; preds = %26
  %30 = tail call i32* @__errno_location() #18, !dbg !5196
  %31 = load i32, i32* %30, align 4, !dbg !5196, !tbaa !833
  %32 = icmp eq i32 %31, 22, !dbg !5197
  br i1 %32, label %33, label %36, !dbg !5198

; <label>:33:                                     ; preds = %29
  %34 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !5199
  call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !568, metadata !703), !dbg !5182
  %35 = icmp slt i32 %34, 0, !dbg !5201
  br i1 %35, label %75, label %36, !dbg !5203

; <label>:36:                                     ; preds = %29, %26, %33
  %37 = phi i32 [ %27, %26 ], [ %27, %29 ], [ %34, %33 ]
  %38 = phi i32 [ 1, %26 ], [ 1, %29 ], [ -1, %33 ]
  call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !568, metadata !703), !dbg !5182
  store i32 %38, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !tbaa !833
  br label %42, !dbg !5204

; <label>:39:                                     ; preds = %20
  %40 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !5205
  call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !568, metadata !703), !dbg !5182
  %41 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !5206
  br label %42

; <label>:42:                                     ; preds = %39, %36
  %43 = phi i32 [ %38, %36 ], [ %41, %39 ], !dbg !5206
  %44 = phi i32 [ %37, %36 ], [ %40, %39 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !568, metadata !703), !dbg !5182
  %45 = icmp sgt i32 %44, -1, !dbg !5207
  %46 = icmp eq i32 %43, -1, !dbg !5208
  %47 = and i1 %45, %46, !dbg !5209
  br i1 %47, label %48, label %75, !dbg !5209

; <label>:48:                                     ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #9, !dbg !5210
  call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !572, metadata !703), !dbg !5211
  %50 = icmp slt i32 %49, 0, !dbg !5212
  br i1 %50, label %55, label %51, !dbg !5213

; <label>:51:                                     ; preds = %48
  %52 = or i32 %49, 1, !dbg !5214
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %52) #9, !dbg !5215
  %54 = icmp eq i32 %53, -1, !dbg !5216
  br i1 %54, label %55, label %75, !dbg !5217

; <label>:55:                                     ; preds = %51, %48
  %56 = tail call i32* @__errno_location() #18, !dbg !5218
  %57 = load i32, i32* %56, align 4, !dbg !5218, !tbaa !833
  call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !575, metadata !703), !dbg !5219
  %58 = call i32 @close(i32 %44) #9, !dbg !5220
  store i32 %57, i32* %56, align 4, !dbg !5221, !tbaa !833
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !568, metadata !703), !dbg !5182
  br label %75, !dbg !5222

; <label>:59:                                     ; preds = %2
  br i1 %8, label %60, label %66, !dbg !5223

; <label>:60:                                     ; preds = %59
  %61 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !5223
  %62 = load i8*, i8** %61, align 16, !dbg !5223
  %63 = sext i32 %7 to i64, !dbg !5223
  %64 = getelementptr i8, i8* %62, i64 %63, !dbg !5223
  %65 = add i32 %7, 8, !dbg !5223
  store i32 %65, i32* %6, align 16, !dbg !5223
  br label %70, !dbg !5223

; <label>:66:                                     ; preds = %59
  %67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !5223
  %68 = load i8*, i8** %67, align 8, !dbg !5223
  %69 = getelementptr i8, i8* %68, i64 8, !dbg !5223
  store i8* %69, i8** %67, align 8, !dbg !5223
  br label %70, !dbg !5223

; <label>:70:                                     ; preds = %66, %60
  %71 = phi i8* [ %64, %60 ], [ %68, %66 ]
  %72 = bitcast i8* %71 to i8**, !dbg !5223
  %73 = load i8*, i8** %72, align 8, !dbg !5223
  call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !578, metadata !703), !dbg !5224
  %74 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %73) #9, !dbg !5225
  call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !568, metadata !703), !dbg !5182
  br label %75

; <label>:75:                                     ; preds = %33, %51, %55, %42, %70
  %76 = phi i32 [ %74, %70 ], [ %34, %33 ], [ %44, %42 ], [ -1, %55 ], [ %44, %51 ]
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !568, metadata !703), !dbg !5182
  call void @llvm.va_end(i8* nonnull %4), !dbg !5226
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #9, !dbg !5227
  ret i32 %76, !dbg !5228
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { inlinehint nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nounwind readonly }
attributes #16 = { noreturn nounwind }
attributes #17 = { noreturn }
attributes #18 = { nounwind readnone }
attributes #19 = { cold }

!llvm.dbg.cu = !{!2, !580, !583, !86, !92, !101, !585, !603, !108, !115, !614, !627, !187, !635, !652, !654, !656, !658, !660, !662, !196, !664, !677, !682, !684, !686, !688, !690, !549}
!llvm.ident = !{!692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692}
!llvm.module.flags = !{!693, !694, !695, !696, !697}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 41, type: !74, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !42, globals: !51)
!3 = !DIFile(filename: "src/mkdir.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !19}
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !21, file: !20, line: 39, size: 32, elements: !35)
!20 = !DIFile(filename: "./lib/savewd.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !20, line: 36, size: 64, elements: !22)
!22 = !{!23, !24}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !21, file: !20, line: 66, baseType: !19, size: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !21, file: !20, line: 74, baseType: !25, size: 32, offset: 32)
!25 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !21, file: !20, line: 69, size: 32, elements: !26)
!26 = !{!27, !29, !30}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !25, file: !20, line: 71, baseType: !28, size: 32)
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !25, file: !20, line: 72, baseType: !28, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !25, file: !20, line: 73, baseType: !31, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !32, line: 98, baseType: !33)
!32 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !34, line: 142, baseType: !28)
!34 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!35 = !{!36, !37, !38, !39, !40, !41}
!36 = !DIEnumerator(name: "INITIAL_STATE", value: 0)
!37 = !DIEnumerator(name: "FD_STATE", value: 1)
!38 = !DIEnumerator(name: "FD_POST_CHDIR_STATE", value: 2)
!39 = !DIEnumerator(name: "FORKING_STATE", value: 3)
!40 = !DIEnumerator(name: "ERROR_STATE", value: 4)
!41 = !DIEnumerator(name: "FINAL_STATE", value: 5)
!42 = !{!43, !45, !46, !49}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !32, line: 80, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !34, line: 134, baseType: !48)
!48 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !32, line: 65, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !34, line: 135, baseType: !48)
!51 = !{!52, !0}
!52 = !DIGlobalVariableExpression(var: !53)
!53 = distinct !DIGlobalVariable(name: "infomap", scope: !54, file: !55, line: 632, type: !71, isLocal: true, isDefinition: true)
!54 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !55, file: !55, line: 630, type: !56, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !60)
!55 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!56 = !DISubroutineType(types: !57)
!57 = !{null, !58}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!60 = !{!61, !62, !63, !70}
!61 = !DILocalVariable(name: "program", arg: 1, scope: !54, file: !55, line: 630, type: !58)
!62 = !DILocalVariable(name: "node", scope: !54, file: !55, line: 642, type: !58)
!63 = !DILocalVariable(name: "map_prog", scope: !54, file: !55, line: 643, type: !64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !54, file: !55, line: 632, size: 128, elements: !67)
!67 = !{!68, !69}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !66, file: !55, line: 632, baseType: !58, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !66, file: !55, line: 632, baseType: !58, size: 64, offset: 64)
!70 = !DILocalVariable(name: "lc_messages", scope: !54, file: !55, line: 655, type: !58)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 896, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 7)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 1792, elements: !72)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !77, line: 50, size: 256, elements: !78)
!77 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!78 = !{!79, !80, !81, !83}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !76, file: !77, line: 52, baseType: !58, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !76, file: !77, line: 55, baseType: !28, size: 32, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !76, file: !77, line: 56, baseType: !82, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !76, file: !77, line: 57, baseType: !28, size: 32, offset: 192)
!84 = !DIGlobalVariableExpression(var: !85)
!85 = distinct !DIGlobalVariable(name: "Version", scope: !86, file: !87, line: 2, type: !58, isLocal: false, isDefinition: true)
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88, globals: !89)
!87 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!88 = !{}
!89 = !{!84}
!90 = !DIGlobalVariableExpression(var: !91)
!91 = distinct !DIGlobalVariable(name: "file_name", scope: !92, file: !97, line: 36, type: !58, isLocal: true, isDefinition: true)
!92 = distinct !DICompileUnit(language: DW_LANG_C99, file: !93, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88, globals: !94)
!93 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!94 = !{!90, !95}
!95 = !DIGlobalVariableExpression(var: !96)
!96 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !92, file: !97, line: 46, type: !98, isLocal: true, isDefinition: true)
!97 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!98 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!99 = !DIGlobalVariableExpression(var: !100)
!100 = distinct !DIGlobalVariable(name: "exit_failure", scope: !101, file: !104, line: 24, type: !105, isLocal: false, isDefinition: true)
!101 = distinct !DICompileUnit(language: DW_LANG_C99, file: !102, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88, globals: !103)
!102 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!103 = !{!99}
!104 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!105 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !28)
!106 = !DIGlobalVariableExpression(var: !107)
!107 = distinct !DIGlobalVariable(name: "program_name", scope: !108, file: !112, line: 33, type: !58, isLocal: false, isDefinition: true)
!108 = distinct !DICompileUnit(language: DW_LANG_C99, file: !109, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88, retainedTypes: !110, globals: !111)
!109 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!110 = !{!45, !43}
!111 = !{!106}
!112 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!113 = !DIGlobalVariableExpression(var: !114)
!114 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !115, file: !146, line: 77, type: !181, isLocal: false, isDefinition: true)
!115 = distinct !DICompileUnit(language: DW_LANG_C99, file: !116, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !117, retainedTypes: !138, globals: !143)
!116 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!117 = !{!5, !118, !123}
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !119)
!119 = !{!120, !121, !122}
!120 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!121 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!122 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !124, line: 46, size: 32, elements: !125)
!124 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!125 = !{!126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137}
!126 = !DIEnumerator(name: "_ISupper", value: 256)
!127 = !DIEnumerator(name: "_ISlower", value: 512)
!128 = !DIEnumerator(name: "_ISalpha", value: 1024)
!129 = !DIEnumerator(name: "_ISdigit", value: 2048)
!130 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!131 = !DIEnumerator(name: "_ISspace", value: 8192)
!132 = !DIEnumerator(name: "_ISprint", value: 16384)
!133 = !DIEnumerator(name: "_ISgraph", value: 32768)
!134 = !DIEnumerator(name: "_ISblank", value: 1)
!135 = !DIEnumerator(name: "_IScntrl", value: 2)
!136 = !DIEnumerator(name: "_ISpunct", value: 4)
!137 = !DIEnumerator(name: "_ISalnum", value: 8)
!138 = !{!28, !139, !140, !43}
!139 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !141, line: 62, baseType: !142)
!141 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!142 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!143 = !{!113, !144, !151, !163, !165, !170, !177, !179}
!144 = !DIGlobalVariableExpression(var: !145)
!145 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !115, file: !146, line: 93, type: !147, isLocal: false, isDefinition: true)
!146 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 320, elements: !149)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!149 = !{!150}
!150 = !DISubrange(count: 10)
!151 = !DIGlobalVariableExpression(var: !152)
!152 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !115, file: !146, line: 1043, type: !153, isLocal: false, isDefinition: true)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !146, line: 57, size: 448, elements: !154)
!154 = !{!155, !156, !157, !161, !162}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !153, file: !146, line: 60, baseType: !5, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !153, file: !146, line: 63, baseType: !28, size: 32, offset: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !153, file: !146, line: 67, baseType: !158, size: 256, offset: 64)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 256, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 8)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !153, file: !146, line: 70, baseType: !58, size: 64, offset: 320)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !153, file: !146, line: 73, baseType: !58, size: 64, offset: 384)
!163 = !DIGlobalVariableExpression(var: !164)
!164 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !115, file: !146, line: 108, type: !153, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166)
!166 = distinct !DIGlobalVariable(name: "slot0", scope: !115, file: !146, line: 834, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 2048, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 256)
!170 = !DIGlobalVariableExpression(var: !171)
!171 = distinct !DIGlobalVariable(name: "slotvec", scope: !115, file: !146, line: 837, type: !172, isLocal: true, isDefinition: true)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !146, line: 826, size: 128, elements: !174)
!174 = !{!175, !176}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !173, file: !146, line: 828, baseType: !140, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !173, file: !146, line: 829, baseType: !43, size: 64, offset: 64)
!177 = !DIGlobalVariableExpression(var: !178)
!178 = distinct !DIGlobalVariable(name: "nslots", scope: !115, file: !146, line: 835, type: !28, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180)
!180 = distinct !DIGlobalVariable(name: "slotvec0", scope: !115, file: !146, line: 836, type: !173, isLocal: true, isDefinition: true)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 704, elements: !183)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!183 = !{!184}
!184 = !DISubrange(count: 11)
!185 = !DIGlobalVariableExpression(var: !186)
!186 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !187, file: !190, line: 26, type: !191, isLocal: false, isDefinition: true)
!187 = distinct !DICompileUnit(language: DW_LANG_C99, file: !188, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88, globals: !189)
!188 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!189 = !{!185}
!190 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 376, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 47)
!194 = !DIGlobalVariableExpression(var: !195)
!195 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !196, file: !541, line: 120, type: !542, isLocal: true, isDefinition: true)
!196 = distinct !DICompileUnit(language: DW_LANG_C99, file: !197, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !198, retainedTypes: !537, globals: !540)
!197 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!198 = !{!199}
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !200, line: 41, size: 32, elements: !201)
!200 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!201 = !{!202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536}
!202 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!203 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!204 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!205 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!206 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!207 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!208 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!209 = !DIEnumerator(name: "DAY_1", value: 131079)
!210 = !DIEnumerator(name: "DAY_2", value: 131080)
!211 = !DIEnumerator(name: "DAY_3", value: 131081)
!212 = !DIEnumerator(name: "DAY_4", value: 131082)
!213 = !DIEnumerator(name: "DAY_5", value: 131083)
!214 = !DIEnumerator(name: "DAY_6", value: 131084)
!215 = !DIEnumerator(name: "DAY_7", value: 131085)
!216 = !DIEnumerator(name: "ABMON_1", value: 131086)
!217 = !DIEnumerator(name: "ABMON_2", value: 131087)
!218 = !DIEnumerator(name: "ABMON_3", value: 131088)
!219 = !DIEnumerator(name: "ABMON_4", value: 131089)
!220 = !DIEnumerator(name: "ABMON_5", value: 131090)
!221 = !DIEnumerator(name: "ABMON_6", value: 131091)
!222 = !DIEnumerator(name: "ABMON_7", value: 131092)
!223 = !DIEnumerator(name: "ABMON_8", value: 131093)
!224 = !DIEnumerator(name: "ABMON_9", value: 131094)
!225 = !DIEnumerator(name: "ABMON_10", value: 131095)
!226 = !DIEnumerator(name: "ABMON_11", value: 131096)
!227 = !DIEnumerator(name: "ABMON_12", value: 131097)
!228 = !DIEnumerator(name: "MON_1", value: 131098)
!229 = !DIEnumerator(name: "MON_2", value: 131099)
!230 = !DIEnumerator(name: "MON_3", value: 131100)
!231 = !DIEnumerator(name: "MON_4", value: 131101)
!232 = !DIEnumerator(name: "MON_5", value: 131102)
!233 = !DIEnumerator(name: "MON_6", value: 131103)
!234 = !DIEnumerator(name: "MON_7", value: 131104)
!235 = !DIEnumerator(name: "MON_8", value: 131105)
!236 = !DIEnumerator(name: "MON_9", value: 131106)
!237 = !DIEnumerator(name: "MON_10", value: 131107)
!238 = !DIEnumerator(name: "MON_11", value: 131108)
!239 = !DIEnumerator(name: "MON_12", value: 131109)
!240 = !DIEnumerator(name: "AM_STR", value: 131110)
!241 = !DIEnumerator(name: "PM_STR", value: 131111)
!242 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!243 = !DIEnumerator(name: "D_FMT", value: 131113)
!244 = !DIEnumerator(name: "T_FMT", value: 131114)
!245 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!246 = !DIEnumerator(name: "ERA", value: 131116)
!247 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!248 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!249 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!250 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!251 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!252 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!253 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!254 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!255 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!256 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!257 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!258 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!259 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!260 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!261 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!262 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!263 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!264 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!265 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!266 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!267 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!268 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!269 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!270 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!271 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!272 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!273 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!274 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!275 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!276 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!277 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!278 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!279 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!280 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!281 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!282 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!283 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!284 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!285 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!286 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!287 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!288 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!289 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!290 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!291 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!292 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!293 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!294 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!295 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!296 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!297 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!298 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!299 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!300 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!301 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!302 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!303 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!304 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!305 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!306 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!307 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!308 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!309 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!310 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!311 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!312 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!313 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!314 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!315 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!316 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!317 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!318 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!319 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!320 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!321 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!322 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!323 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!324 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!325 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!326 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!327 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!328 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!329 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!330 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!331 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!332 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!333 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!334 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!335 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!336 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!337 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!338 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!339 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!340 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!341 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!342 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!343 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!344 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!345 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!346 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!347 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!348 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!349 = !DIEnumerator(name: "CODESET", value: 14)
!350 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!351 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!352 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!353 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!354 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!355 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!356 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!357 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!358 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!359 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!360 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!361 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!362 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!363 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!364 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!365 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!366 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!367 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!368 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!369 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!370 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!371 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!372 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!373 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!374 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!375 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!376 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!377 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!378 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!379 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!380 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!381 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!382 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!383 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!384 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!385 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!386 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!387 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!388 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!389 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!390 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!391 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!392 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!393 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!394 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!395 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!396 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!397 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!398 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!399 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!400 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!401 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!402 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!403 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!404 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!405 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!406 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!407 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!408 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!409 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!410 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!411 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!412 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!413 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!414 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!415 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!416 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!417 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!418 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!419 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!420 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!421 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!422 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!423 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!424 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!425 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!426 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!427 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!428 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!429 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!430 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!431 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!432 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!433 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!434 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!435 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!436 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!437 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!438 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!439 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!440 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!441 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!442 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!443 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!444 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!445 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!446 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!447 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!448 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!449 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!450 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!451 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!452 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!453 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!454 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!455 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!456 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!457 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!458 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!459 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!460 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!461 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!462 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!463 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!464 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!465 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!466 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!467 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!468 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!469 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!470 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!471 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!472 = !DIEnumerator(name: "THOUSEP", value: 65537)
!473 = !DIEnumerator(name: "__GROUPING", value: 65538)
!474 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!475 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!476 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!477 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!478 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!479 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!480 = !DIEnumerator(name: "__YESSTR", value: 327682)
!481 = !DIEnumerator(name: "__NOSTR", value: 327683)
!482 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!483 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!484 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!485 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!486 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!487 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!488 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!489 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!490 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!491 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!492 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!493 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!494 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!495 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!496 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!497 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!498 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!499 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!500 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!501 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!502 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!503 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!504 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!505 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!506 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!507 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!508 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!509 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!510 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!511 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!512 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!513 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!514 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!515 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!516 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!517 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!518 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!519 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!520 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!521 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!522 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!523 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!524 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!525 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!526 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!527 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!528 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!529 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!530 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!531 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!532 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!533 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!534 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!535 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!536 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!537 = !{!45, !43, !538}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!540 = !{!194}
!541 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!542 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !58)
!543 = !DIGlobalVariableExpression(var: !544)
!544 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !545, file: !546, line: 335, type: !28, isLocal: true, isDefinition: true)
!545 = distinct !DISubprogram(name: "rpl_fcntl", scope: !546, file: !546, line: 272, type: !547, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !552)
!546 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!547 = !DISubroutineType(types: !548)
!548 = !{!28, !28, !28, null}
!549 = distinct !DICompileUnit(language: DW_LANG_C99, file: !550, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88, globals: !551)
!550 = !DIFile(filename: "./lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!551 = !{!543}
!552 = !{!553, !554, !555, !568, !569, !572, !575, !578}
!553 = !DILocalVariable(name: "fd", arg: 1, scope: !545, file: !546, line: 272, type: !28)
!554 = !DILocalVariable(name: "action", arg: 2, scope: !545, file: !546, line: 272, type: !28)
!555 = !DILocalVariable(name: "arg", scope: !545, file: !546, line: 274, type: !556)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !557, line: 30, baseType: !558)
!557 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !550, line: 274, baseType: !559)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 192, elements: !566)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !550, line: 274, size: 192, elements: !561)
!561 = !{!562, !563, !564, !565}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !560, file: !550, line: 274, baseType: !48, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !560, file: !550, line: 274, baseType: !48, size: 32, offset: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !560, file: !550, line: 274, baseType: !45, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !560, file: !550, line: 274, baseType: !45, size: 64, offset: 128)
!566 = !{!567}
!567 = !DISubrange(count: 1)
!568 = !DILocalVariable(name: "result", scope: !545, file: !546, line: 275, type: !28)
!569 = !DILocalVariable(name: "target", scope: !570, file: !546, line: 322, type: !28)
!570 = distinct !DILexicalBlock(scope: !571, file: !546, line: 321, column: 7)
!571 = distinct !DILexicalBlock(scope: !545, file: !546, line: 278, column: 5)
!572 = !DILocalVariable(name: "flags", scope: !573, file: !546, line: 359, type: !28)
!573 = distinct !DILexicalBlock(scope: !574, file: !546, line: 358, column: 11)
!574 = distinct !DILexicalBlock(scope: !570, file: !546, line: 357, column: 13)
!575 = !DILocalVariable(name: "saved_errno", scope: !576, file: !546, line: 362, type: !28)
!576 = distinct !DILexicalBlock(scope: !577, file: !546, line: 361, column: 15)
!577 = distinct !DILexicalBlock(scope: !573, file: !546, line: 360, column: 17)
!578 = !DILocalVariable(name: "p", scope: !579, file: !546, line: 404, type: !45)
!579 = distinct !DILexicalBlock(scope: !571, file: !546, line: 402, column: 7)
!580 = distinct !DICompileUnit(language: DW_LANG_C99, file: !581, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88, retainedTypes: !582)
!581 = !DIFile(filename: "src/prog-fprintf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!582 = !{!539}
!583 = distinct !DICompileUnit(language: DW_LANG_C99, file: !584, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88)
!584 = !DIFile(filename: "src/selinux.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!585 = distinct !DICompileUnit(language: DW_LANG_C99, file: !586, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !587, retainedTypes: !602)
!586 = !DIFile(filename: "./lib/mkdir-p.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!587 = !{!588, !598}
!588 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !589, file: !20, line: 39, size: 32, elements: !35)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !20, line: 36, size: 64, elements: !590)
!590 = !{!591, !592}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !589, file: !20, line: 66, baseType: !588, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !589, file: !20, line: 74, baseType: !593, size: 32, offset: 32)
!593 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !589, file: !20, line: 69, size: 32, elements: !594)
!594 = !{!595, !596, !597}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !593, file: !20, line: 71, baseType: !28, size: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !593, file: !20, line: 72, baseType: !28, size: 32)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !593, file: !20, line: 73, baseType: !31, size: 32)
!598 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 86, size: 32, elements: !599)
!599 = !{!600, !601}
!600 = !DIEnumerator(name: "SAVEWD_CHDIR_NOFOLLOW", value: 1)
!601 = !DIEnumerator(name: "SAVEWD_CHDIR_SKIP_READABLE", value: 2)
!602 = !{!46, !49}
!603 = distinct !DICompileUnit(language: DW_LANG_C99, file: !604, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !605, retainedTypes: !613)
!604 = !DIFile(filename: "./lib/modechange.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!605 = !{!606}
!606 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !607, line: 78, size: 32, elements: !608)
!607 = !DIFile(filename: "lib/modechange.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!608 = !{!609, !610, !611, !612}
!609 = !DIEnumerator(name: "MODE_DONE", value: 0)
!610 = !DIEnumerator(name: "MODE_ORDINARY_CHANGE", value: 1)
!611 = !DIEnumerator(name: "MODE_X_IF_ANY_X", value: 2)
!612 = !DIEnumerator(name: "MODE_COPY_EXISTING", value: 3)
!613 = !{!140}
!614 = distinct !DICompileUnit(language: DW_LANG_C99, file: !615, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !616)
!615 = !DIFile(filename: "./lib/savewd.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!616 = !{!617, !598}
!617 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !618, file: !20, line: 39, size: 32, elements: !35)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !20, line: 36, size: 64, elements: !619)
!619 = !{!620, !621}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !618, file: !20, line: 66, baseType: !617, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !618, file: !20, line: 74, baseType: !622, size: 32, offset: 32)
!622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !618, file: !20, line: 69, size: 32, elements: !623)
!623 = !{!624, !625, !626}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !622, file: !20, line: 71, baseType: !28, size: 32)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !622, file: !20, line: 72, baseType: !28, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !622, file: !20, line: 73, baseType: !31, size: 32)
!627 = distinct !DICompileUnit(language: DW_LANG_C99, file: !628, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !629, retainedTypes: !634)
!628 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!629 = !{!630}
!630 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !631, line: 41, size: 32, elements: !632)
!631 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!632 = !{!633}
!633 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!634 = !{!45}
!635 = distinct !DICompileUnit(language: DW_LANG_C99, file: !636, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !637, retainedTypes: !651)
!636 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!637 = !{!638}
!638 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !640, file: !639, line: 192, size: 32, elements: !649)
!639 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!640 = distinct !DISubprogram(name: "x2nrealloc", scope: !639, file: !639, line: 180, type: !641, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !635, variables: !644)
!641 = !DISubroutineType(types: !642)
!642 = !{!45, !45, !643, !140}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!644 = !{!645, !646, !647, !648}
!645 = !DILocalVariable(name: "p", arg: 1, scope: !640, file: !639, line: 180, type: !45)
!646 = !DILocalVariable(name: "pn", arg: 2, scope: !640, file: !639, line: 180, type: !643)
!647 = !DILocalVariable(name: "s", arg: 3, scope: !640, file: !639, line: 180, type: !140)
!648 = !DILocalVariable(name: "n", scope: !640, file: !639, line: 182, type: !140)
!649 = !{!650}
!650 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!651 = !{!140, !43, !45}
!652 = distinct !DICompileUnit(language: DW_LANG_C99, file: !653, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88)
!653 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!654 = distinct !DICompileUnit(language: DW_LANG_C99, file: !655, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88, retainedTypes: !634)
!655 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!656 = distinct !DICompileUnit(language: DW_LANG_C99, file: !657, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88, retainedTypes: !613)
!657 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!658 = distinct !DICompileUnit(language: DW_LANG_C99, file: !659, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88)
!659 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!660 = distinct !DICompileUnit(language: DW_LANG_C99, file: !661, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88)
!661 = !DIFile(filename: "./lib/open-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!662 = distinct !DICompileUnit(language: DW_LANG_C99, file: !663, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88)
!663 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!664 = distinct !DICompileUnit(language: DW_LANG_C99, file: !665, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !666)
!665 = !DIFile(filename: "./lib/mkancesdirs.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!666 = !{!667, !598}
!667 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !668, file: !20, line: 39, size: 32, elements: !35)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !20, line: 36, size: 64, elements: !669)
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !668, file: !20, line: 66, baseType: !667, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !668, file: !20, line: 74, baseType: !672, size: 32, offset: 32)
!672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !668, file: !20, line: 69, size: 32, elements: !673)
!673 = !{!674, !675, !676}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !672, file: !20, line: 71, baseType: !28, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !672, file: !20, line: 72, baseType: !28, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !672, file: !20, line: 73, baseType: !31, size: 32)
!677 = distinct !DICompileUnit(language: DW_LANG_C99, file: !678, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88, retainedTypes: !679)
!678 = !DIFile(filename: "./lib/dirchownmod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!679 = !{!46, !49, !680}
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !32, line: 70, baseType: !681)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !34, line: 138, baseType: !48)
!682 = distinct !DICompileUnit(language: DW_LANG_C99, file: !683, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88)
!683 = !DIFile(filename: "./lib/fd-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!684 = distinct !DICompileUnit(language: DW_LANG_C99, file: !685, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88)
!685 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!686 = distinct !DICompileUnit(language: DW_LANG_C99, file: !687, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88, retainedTypes: !634)
!687 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!688 = distinct !DICompileUnit(language: DW_LANG_C99, file: !689, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88, retainedTypes: !634)
!689 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!690 = distinct !DICompileUnit(language: DW_LANG_C99, file: !691, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !88)
!691 = !DIFile(filename: "./lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!692 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!693 = !{i32 2, !"Dwarf Version", i32 4}
!694 = !{i32 2, !"Debug Info Version", i32 3}
!695 = !{i32 1, !"wchar_size", i32 4}
!696 = !{i32 7, !"PIC Level", i32 2}
!697 = !{i32 7, !"PIE Level", i32 2}
!698 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 53, type: !699, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !701)
!699 = !DISubroutineType(types: !700)
!700 = !{null, !28}
!701 = !{!702}
!702 = !DILocalVariable(name: "status", arg: 1, scope: !698, file: !3, line: 53, type: !28)
!703 = !DIExpression()
!704 = !DILocation(line: 53, column: 12, scope: !698)
!705 = !DILocation(line: 55, column: 14, scope: !706)
!706 = distinct !DILexicalBlock(scope: !698, file: !3, line: 55, column: 7)
!707 = !DILocation(line: 55, column: 7, scope: !698)
!708 = !DILocation(line: 56, column: 5, scope: !709)
!709 = distinct !DILexicalBlock(scope: !706, file: !3, line: 56, column: 5)
!710 = !{!711, !711, i64 0}
!711 = !{!"any pointer", !712, i64 0}
!712 = !{!"omnipotent char", !713, i64 0}
!713 = !{!"Simple C/C++ TBAA"}
!714 = !DILocation(line: 59, column: 7, scope: !715)
!715 = distinct !DILexicalBlock(scope: !706, file: !3, line: 58, column: 5)
!716 = !DILocation(line: 60, column: 7, scope: !715)
!717 = !DILocation(line: 587, column: 3, scope: !718, inlinedAt: !721)
!718 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !55, file: !55, line: 585, type: !719, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !88)
!719 = !DISubroutineType(types: !720)
!720 = !{null}
!721 = distinct !DILocation(line: 64, column: 7, scope: !715)
!722 = !DILocation(line: 66, column: 7, scope: !715)
!723 = !DILocation(line: 71, column: 7, scope: !715)
!724 = !DILocation(line: 77, column: 7, scope: !715)
!725 = !DILocation(line: 78, column: 7, scope: !715)
!726 = !DILocation(line: 642, column: 15, scope: !54, inlinedAt: !727)
!727 = distinct !DILocation(line: 79, column: 7, scope: !715)
!728 = !DILocation(line: 651, column: 3, scope: !54, inlinedAt: !727)
!729 = !DILocation(line: 655, column: 29, scope: !54, inlinedAt: !727)
!730 = !DILocation(line: 655, column: 15, scope: !54, inlinedAt: !727)
!731 = !DILocation(line: 656, column: 7, scope: !732, inlinedAt: !727)
!732 = distinct !DILexicalBlock(scope: !54, file: !55, line: 656, column: 7)
!733 = !DILocation(line: 656, column: 19, scope: !732, inlinedAt: !727)
!734 = !DILocation(line: 656, column: 22, scope: !732, inlinedAt: !727)
!735 = !DILocation(line: 656, column: 7, scope: !54, inlinedAt: !727)
!736 = !DILocation(line: 662, column: 7, scope: !737, inlinedAt: !727)
!737 = distinct !DILexicalBlock(scope: !732, file: !55, line: 657, column: 5)
!738 = !DILocation(line: 664, column: 5, scope: !737, inlinedAt: !727)
!739 = !DILocation(line: 665, column: 3, scope: !54, inlinedAt: !727)
!740 = !DILocation(line: 667, column: 3, scope: !54, inlinedAt: !727)
!741 = !DILocation(line: 81, column: 3, scope: !698)
!742 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 189, type: !743, isLocal: false, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !746)
!743 = !DISubroutineType(types: !744)
!744 = !{!28, !28, !745}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!746 = !{!747, !748, !749, !750, !751, !752, !764, !767, !770}
!747 = !DILocalVariable(name: "argc", arg: 1, scope: !742, file: !3, line: 189, type: !28)
!748 = !DILocalVariable(name: "argv", arg: 2, scope: !742, file: !3, line: 189, type: !745)
!749 = !DILocalVariable(name: "specified_mode", scope: !742, file: !3, line: 191, type: !58)
!750 = !DILocalVariable(name: "optc", scope: !742, file: !3, line: 192, type: !28)
!751 = !DILocalVariable(name: "scontext", scope: !742, file: !3, line: 193, type: !58)
!752 = !DILocalVariable(name: "options", scope: !742, file: !3, line: 194, type: !753)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mkdir_options", file: !3, line: 85, size: 256, elements: !754)
!754 = !{!755, !759, !760, !761, !762, !763}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "make_ancestor_function", scope: !753, file: !3, line: 89, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!28, !58, !58, !45}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "umask_value", scope: !753, file: !3, line: 92, baseType: !680, size: 32, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !753, file: !3, line: 95, baseType: !680, size: 32, offset: 96)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "mode_bits", scope: !753, file: !3, line: 98, baseType: !680, size: 32, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "set_security_context", scope: !753, file: !3, line: 101, baseType: !98, size: 8, offset: 160)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "created_directory_format", scope: !753, file: !3, line: 104, baseType: !58, size: 64, offset: 192)
!764 = !DILocalVariable(name: "ret", scope: !765, file: !3, line: 261, type: !28)
!765 = distinct !DILexicalBlock(scope: !766, file: !3, line: 260, column: 5)
!766 = distinct !DILexicalBlock(scope: !742, file: !3, line: 259, column: 7)
!767 = !DILocalVariable(name: "umask_value", scope: !768, file: !3, line: 276, type: !680)
!768 = distinct !DILexicalBlock(scope: !769, file: !3, line: 275, column: 5)
!769 = distinct !DILexicalBlock(scope: !742, file: !3, line: 274, column: 7)
!770 = !DILocalVariable(name: "change", scope: !771, file: !3, line: 282, type: !773)
!771 = distinct !DILexicalBlock(scope: !772, file: !3, line: 281, column: 9)
!772 = distinct !DILexicalBlock(scope: !768, file: !3, line: 280, column: 11)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !775, line: 25, flags: DIFlagFwdDecl)
!775 = !DIFile(filename: "./lib/modechange.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!776 = !DILocation(line: 189, column: 11, scope: !742)
!777 = !DILocation(line: 189, column: 24, scope: !742)
!778 = !DILocation(line: 191, column: 15, scope: !742)
!779 = !DILocation(line: 193, column: 15, scope: !742)
!780 = !DILocation(line: 194, column: 3, scope: !742)
!781 = !DILocation(line: 196, column: 11, scope: !742)
!782 = !DILocation(line: 196, column: 34, scope: !742)
!783 = !{!784, !711, i64 0}
!784 = !{!"mkdir_options", !711, i64 0, !785, i64 8, !785, i64 12, !785, i64 16, !786, i64 20, !711, i64 24}
!785 = !{!"int", !712, i64 0}
!786 = !{!"_Bool", !712, i64 0}
!787 = !DILocation(line: 197, column: 11, scope: !742)
!788 = !DILocation(line: 197, column: 16, scope: !742)
!789 = !{!784, !785, i64 12}
!790 = !DILocation(line: 198, column: 11, scope: !742)
!791 = !DILocation(line: 198, column: 21, scope: !742)
!792 = !{!784, !785, i64 16}
!793 = !DILocation(line: 199, column: 11, scope: !742)
!794 = !DILocation(line: 199, column: 36, scope: !742)
!795 = !{!784, !711, i64 24}
!796 = !DILocation(line: 200, column: 11, scope: !742)
!797 = !DILocation(line: 200, column: 32, scope: !742)
!798 = !{!784, !786, i64 20}
!799 = !DILocation(line: 203, column: 21, scope: !742)
!800 = !DILocation(line: 203, column: 3, scope: !742)
!801 = !DILocation(line: 204, column: 3, scope: !742)
!802 = !DILocation(line: 205, column: 3, scope: !742)
!803 = !DILocation(line: 206, column: 3, scope: !742)
!804 = !DILocation(line: 208, column: 3, scope: !742)
!805 = !DILocation(line: 210, column: 3, scope: !742)
!806 = !DILocation(line: 210, column: 18, scope: !742)
!807 = !DILocation(line: 192, column: 7, scope: !742)
!808 = !DILocation(line: 215, column: 42, scope: !809)
!809 = distinct !DILexicalBlock(scope: !810, file: !3, line: 213, column: 9)
!810 = distinct !DILexicalBlock(scope: !742, file: !3, line: 211, column: 5)
!811 = !DILocation(line: 216, column: 11, scope: !809)
!812 = distinct !{!812, !805, !813}
!813 = !DILocation(line: 248, column: 5, scope: !742)
!814 = !DILocation(line: 218, column: 28, scope: !809)
!815 = !DILocation(line: 219, column: 11, scope: !809)
!816 = !DILocation(line: 221, column: 46, scope: !809)
!817 = !DILocation(line: 221, column: 44, scope: !809)
!818 = !DILocation(line: 222, column: 11, scope: !809)
!819 = !DILocation(line: 236, column: 20, scope: !820)
!820 = distinct !DILexicalBlock(scope: !821, file: !3, line: 236, column: 20)
!821 = distinct !DILexicalBlock(scope: !822, file: !3, line: 229, column: 20)
!822 = distinct !DILexicalBlock(scope: !809, file: !3, line: 224, column: 15)
!823 = !DILocation(line: 236, column: 20, scope: !821)
!824 = !DILocation(line: 239, column: 22, scope: !825)
!825 = distinct !DILexicalBlock(scope: !820, file: !3, line: 237, column: 13)
!826 = !DILocation(line: 238, column: 15, scope: !825)
!827 = !DILocation(line: 241, column: 13, scope: !825)
!828 = !DILocation(line: 243, column: 9, scope: !809)
!829 = !DILocation(line: 244, column: 9, scope: !809)
!830 = !DILocation(line: 246, column: 11, scope: !809)
!831 = !DILocation(line: 250, column: 7, scope: !832)
!832 = distinct !DILexicalBlock(scope: !742, file: !3, line: 250, column: 7)
!833 = !{!785, !785, i64 0}
!834 = !DILocation(line: 250, column: 14, scope: !832)
!835 = !DILocation(line: 250, column: 7, scope: !742)
!836 = !DILocation(line: 252, column: 20, scope: !837)
!837 = distinct !DILexicalBlock(scope: !832, file: !3, line: 251, column: 5)
!838 = !DILocation(line: 252, column: 7, scope: !837)
!839 = !DILocation(line: 253, column: 7, scope: !837)
!840 = !DILocation(line: 274, column: 7, scope: !769)
!841 = !DILocation(line: 274, column: 41, scope: !769)
!842 = !DILocation(line: 274, column: 38, scope: !769)
!843 = !DILocation(line: 276, column: 28, scope: !768)
!844 = !DILocation(line: 276, column: 14, scope: !768)
!845 = !DILocation(line: 277, column: 7, scope: !768)
!846 = !DILocation(line: 278, column: 15, scope: !768)
!847 = !DILocation(line: 278, column: 27, scope: !768)
!848 = !{!784, !785, i64 8}
!849 = !DILocation(line: 280, column: 11, scope: !768)
!850 = !DILocation(line: 282, column: 40, scope: !771)
!851 = !DILocation(line: 282, column: 31, scope: !771)
!852 = !DILocation(line: 283, column: 16, scope: !853)
!853 = distinct !DILexicalBlock(scope: !771, file: !3, line: 283, column: 15)
!854 = !DILocation(line: 283, column: 15, scope: !771)
!855 = !DILocation(line: 284, column: 13, scope: !853)
!856 = !DILocation(line: 286, column: 26, scope: !771)
!857 = !DILocation(line: 286, column: 24, scope: !771)
!858 = !DILocation(line: 288, column: 17, scope: !771)
!859 = !DILocation(line: 288, column: 11, scope: !771)
!860 = !DILocation(line: 289, column: 9, scope: !771)
!861 = !DILocation(line: 291, column: 22, scope: !772)
!862 = !DILocation(line: 294, column: 39, scope: !742)
!863 = !DILocation(line: 294, column: 37, scope: !742)
!864 = !DILocation(line: 294, column: 52, scope: !742)
!865 = !DILocation(line: 294, column: 10, scope: !742)
!866 = !DILocation(line: 296, column: 1, scope: !742)
!867 = !DILocation(line: 294, column: 3, scope: !742)
!868 = distinct !DISubprogram(name: "make_ancestor", scope: !3, file: !3, line: 122, type: !757, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !869)
!869 = !{!870, !871, !872, !873, !876, !877, !878, !879}
!870 = !DILocalVariable(name: "dir", arg: 1, scope: !868, file: !3, line: 122, type: !58)
!871 = !DILocalVariable(name: "component", arg: 2, scope: !868, file: !3, line: 122, type: !58)
!872 = !DILocalVariable(name: "options", arg: 3, scope: !868, file: !3, line: 122, type: !45)
!873 = !DILocalVariable(name: "o", scope: !868, file: !3, line: 124, type: !874)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !753)
!876 = !DILocalVariable(name: "user_wx", scope: !868, file: !3, line: 131, type: !680)
!877 = !DILocalVariable(name: "self_denying_umask", scope: !868, file: !3, line: 132, type: !98)
!878 = !DILocalVariable(name: "r", scope: !868, file: !3, line: 135, type: !28)
!879 = !DILocalVariable(name: "mkdir_errno", scope: !880, file: !3, line: 138, type: !28)
!880 = distinct !DILexicalBlock(scope: !881, file: !3, line: 137, column: 5)
!881 = distinct !DILexicalBlock(scope: !868, file: !3, line: 136, column: 7)
!882 = !DILocation(line: 122, column: 28, scope: !868)
!883 = !DILocation(line: 122, column: 45, scope: !868)
!884 = !DILocation(line: 122, column: 62, scope: !868)
!885 = !DILocation(line: 124, column: 31, scope: !868)
!886 = !DILocation(line: 126, column: 10, scope: !887)
!887 = distinct !DILexicalBlock(scope: !868, file: !3, line: 126, column: 7)
!888 = !{i8 0, i8 2}
!889 = !DILocation(line: 126, column: 31, scope: !887)
!890 = !DILocalVariable(name: "path", arg: 1, scope: !891, file: !892, line: 44, type: !58)
!891 = distinct !DISubprogram(name: "defaultcon", scope: !892, file: !892, line: 44, type: !893, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !895)
!892 = !DIFile(filename: "src/selinux.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!893 = !DISubroutineType(types: !894)
!894 = !{!28, !58, !680}
!895 = !{!890, !896}
!896 = !DILocalVariable(name: "mode", arg: 2, scope: !891, file: !892, line: 44, type: !680)
!897 = !DILocation(line: 44, column: 25, scope: !891, inlinedAt: !898)
!898 = distinct !DILocation(line: 126, column: 34, scope: !887)
!899 = !DILocation(line: 44, column: 38, scope: !891, inlinedAt: !898)
!900 = !DILocation(line: 45, column: 3, scope: !891, inlinedAt: !898)
!901 = !DILocation(line: 45, column: 9, scope: !891, inlinedAt: !898)
!902 = !DILocation(line: 126, column: 7, scope: !868)
!903 = !DILocation(line: 131, column: 10, scope: !868)
!904 = !DILocation(line: 132, column: 33, scope: !868)
!905 = !DILocation(line: 132, column: 45, scope: !868)
!906 = !DILocation(line: 132, column: 56, scope: !868)
!907 = !DILocation(line: 133, column: 7, scope: !868)
!908 = !DILocation(line: 135, column: 11, scope: !868)
!909 = !DILocation(line: 135, column: 7, scope: !868)
!910 = !DILocation(line: 134, column: 27, scope: !911)
!911 = distinct !DILexicalBlock(scope: !868, file: !3, line: 133, column: 7)
!912 = !DILocation(line: 134, column: 5, scope: !911)
!913 = !DILocation(line: 138, column: 25, scope: !880)
!914 = !DILocation(line: 138, column: 11, scope: !880)
!915 = !DILocation(line: 139, column: 17, scope: !880)
!916 = !DILocation(line: 139, column: 7, scope: !880)
!917 = !DILocation(line: 140, column: 13, scope: !880)
!918 = !DILocation(line: 141, column: 5, scope: !880)
!919 = !DILocation(line: 142, column: 9, scope: !920)
!920 = distinct !DILexicalBlock(scope: !868, file: !3, line: 142, column: 7)
!921 = !DILocation(line: 142, column: 7, scope: !868)
!922 = !DILocation(line: 144, column: 15, scope: !923)
!923 = distinct !DILexicalBlock(scope: !920, file: !3, line: 143, column: 5)
!924 = !DILocation(line: 144, column: 38, scope: !923)
!925 = !DILocalVariable(name: "dir", arg: 1, scope: !926, file: !3, line: 109, type: !58)
!926 = distinct !DISubprogram(name: "announce_mkdir", scope: !3, file: !3, line: 109, type: !927, isLocal: true, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !929)
!927 = !DISubroutineType(types: !928)
!928 = !{null, !58, !45}
!929 = !{!925, !930, !931}
!930 = !DILocalVariable(name: "options", arg: 2, scope: !926, file: !3, line: 109, type: !45)
!931 = !DILocalVariable(name: "o", scope: !926, file: !3, line: 111, type: !874)
!932 = !DILocation(line: 109, column: 29, scope: !926, inlinedAt: !933)
!933 = distinct !DILocation(line: 145, column: 7, scope: !923)
!934 = !DILocation(line: 109, column: 40, scope: !926, inlinedAt: !933)
!935 = !DILocation(line: 111, column: 31, scope: !926, inlinedAt: !933)
!936 = !DILocation(line: 112, column: 10, scope: !937, inlinedAt: !933)
!937 = distinct !DILexicalBlock(scope: !926, file: !3, line: 112, column: 7)
!938 = !DILocation(line: 112, column: 7, scope: !937, inlinedAt: !933)
!939 = !DILocation(line: 112, column: 7, scope: !926, inlinedAt: !933)
!940 = !DILocation(line: 113, column: 19, scope: !937, inlinedAt: !933)
!941 = !DILocation(line: 113, column: 56, scope: !937, inlinedAt: !933)
!942 = !DILocation(line: 113, column: 5, scope: !937, inlinedAt: !933)
!943 = !DILocation(line: 147, column: 3, scope: !868)
!944 = distinct !DISubprogram(name: "process_dir", scope: !3, file: !3, line: 152, type: !945, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !948)
!945 = !DISubroutineType(types: !946)
!946 = !{!28, !43, !947, !45}
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!948 = !{!949, !950, !951, !952, !953}
!949 = !DILocalVariable(name: "dir", arg: 1, scope: !944, file: !3, line: 152, type: !43)
!950 = !DILocalVariable(name: "wd", arg: 2, scope: !944, file: !3, line: 152, type: !947)
!951 = !DILocalVariable(name: "options", arg: 3, scope: !944, file: !3, line: 152, type: !45)
!952 = !DILocalVariable(name: "o", scope: !944, file: !3, line: 154, type: !874)
!953 = !DILocalVariable(name: "ret", scope: !944, file: !3, line: 165, type: !28)
!954 = !DILocation(line: 152, column: 20, scope: !944)
!955 = !DILocation(line: 152, column: 40, scope: !944)
!956 = !DILocation(line: 152, column: 50, scope: !944)
!957 = !DILocation(line: 154, column: 31, scope: !944)
!958 = !DILocation(line: 157, column: 10, scope: !959)
!959 = distinct !DILexicalBlock(scope: !944, file: !3, line: 157, column: 7)
!960 = !DILocation(line: 159, column: 13, scope: !961)
!961 = distinct !DILexicalBlock(scope: !962, file: !3, line: 159, column: 11)
!962 = distinct !DILexicalBlock(scope: !959, file: !3, line: 158, column: 5)
!963 = !DILocation(line: 157, column: 7, scope: !944)
!964 = !DILocation(line: 44, column: 25, scope: !891, inlinedAt: !965)
!965 = distinct !DILocation(line: 159, column: 42, scope: !961)
!966 = !DILocation(line: 44, column: 38, scope: !891, inlinedAt: !965)
!967 = !DILocation(line: 45, column: 3, scope: !891, inlinedAt: !965)
!968 = !DILocation(line: 45, column: 9, scope: !891, inlinedAt: !965)
!969 = !DILocation(line: 159, column: 11, scope: !962)
!970 = !DILocation(line: 165, column: 44, scope: !944)
!971 = !DILocation(line: 166, column: 35, scope: !944)
!972 = !DILocation(line: 167, column: 35, scope: !944)
!973 = !DILocation(line: 165, column: 14, scope: !944)
!974 = !DILocation(line: 165, column: 7, scope: !944)
!975 = !DILocation(line: 176, column: 27, scope: !976)
!976 = distinct !DILexicalBlock(scope: !944, file: !3, line: 176, column: 7)
!977 = !DILocation(line: 176, column: 33, scope: !976)
!978 = !DILocation(line: 177, column: 7, scope: !976)
!979 = !DILocation(line: 177, column: 13, scope: !976)
!980 = !DILocation(line: 177, column: 10, scope: !976)
!981 = !DILocation(line: 176, column: 7, scope: !944)
!982 = !DILocalVariable(name: "path", arg: 1, scope: !983, file: !892, line: 40, type: !58)
!983 = distinct !DISubprogram(name: "restorecon", scope: !892, file: !892, line: 40, type: !984, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !986)
!984 = !DISubroutineType(types: !985)
!985 = !{!98, !58, !98, !98}
!986 = !{!982, !987, !988}
!987 = !DILocalVariable(name: "recurse", arg: 2, scope: !983, file: !892, line: 40, type: !98)
!988 = !DILocalVariable(name: "preserve", arg: 3, scope: !983, file: !892, line: 40, type: !98)
!989 = !DILocation(line: 40, column: 25, scope: !983, inlinedAt: !990)
!990 = distinct !DILocation(line: 179, column: 13, scope: !991)
!991 = distinct !DILexicalBlock(scope: !992, file: !3, line: 179, column: 11)
!992 = distinct !DILexicalBlock(scope: !976, file: !3, line: 178, column: 5)
!993 = !DILocation(line: 40, column: 36, scope: !983, inlinedAt: !990)
!994 = !DILocation(line: 40, column: 50, scope: !983, inlinedAt: !990)
!995 = !DILocation(line: 41, column: 3, scope: !983, inlinedAt: !990)
!996 = !DILocation(line: 41, column: 9, scope: !983, inlinedAt: !990)
!997 = !DILocation(line: 179, column: 11, scope: !992)
!998 = !DILocation(line: 185, column: 3, scope: !944)
!999 = !DILocation(line: 109, column: 29, scope: !926)
!1000 = !DILocation(line: 109, column: 40, scope: !926)
!1001 = !DILocation(line: 111, column: 31, scope: !926)
!1002 = !DILocation(line: 112, column: 10, scope: !937)
!1003 = !DILocation(line: 112, column: 7, scope: !937)
!1004 = !DILocation(line: 112, column: 7, scope: !926)
!1005 = !DILocation(line: 113, column: 19, scope: !937)
!1006 = !DILocation(line: 113, column: 56, scope: !937)
!1007 = !DILocation(line: 113, column: 5, scope: !937)
!1008 = !DILocation(line: 114, column: 1, scope: !926)
!1009 = distinct !DISubprogram(name: "prog_fprintf", scope: !581, file: !581, line: 28, type: !1010, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !580, variables: !1064)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{null, !1012, !58, null}
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1014, line: 7, baseType: !1015)
!1014 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1016, line: 241, size: 1728, elements: !1017)
!1016 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1017 = !{!1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1038, !1039, !1040, !1041, !1044, !1045, !1047, !1049, !1052, !1054, !1055, !1056, !1057, !1058, !1059, !1060}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1015, file: !1016, line: 242, baseType: !28, size: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1015, file: !1016, line: 247, baseType: !43, size: 64, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1015, file: !1016, line: 248, baseType: !43, size: 64, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1015, file: !1016, line: 249, baseType: !43, size: 64, offset: 192)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1015, file: !1016, line: 250, baseType: !43, size: 64, offset: 256)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1015, file: !1016, line: 251, baseType: !43, size: 64, offset: 320)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1015, file: !1016, line: 252, baseType: !43, size: 64, offset: 384)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1015, file: !1016, line: 253, baseType: !43, size: 64, offset: 448)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1015, file: !1016, line: 254, baseType: !43, size: 64, offset: 512)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1015, file: !1016, line: 256, baseType: !43, size: 64, offset: 576)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1015, file: !1016, line: 257, baseType: !43, size: 64, offset: 640)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1015, file: !1016, line: 258, baseType: !43, size: 64, offset: 704)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1015, file: !1016, line: 260, baseType: !1031, size: 64, offset: 768)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1016, line: 156, size: 192, elements: !1033)
!1033 = !{!1034, !1035, !1037}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1032, file: !1016, line: 157, baseType: !1031, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1032, file: !1016, line: 158, baseType: !1036, size: 64, offset: 64)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1032, file: !1016, line: 162, baseType: !28, size: 32, offset: 128)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1015, file: !1016, line: 262, baseType: !1036, size: 64, offset: 832)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1015, file: !1016, line: 264, baseType: !28, size: 32, offset: 896)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1015, file: !1016, line: 268, baseType: !28, size: 32, offset: 928)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1015, file: !1016, line: 270, baseType: !1042, size: 64, offset: 960)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !34, line: 140, baseType: !1043)
!1043 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1015, file: !1016, line: 274, baseType: !139, size: 16, offset: 1024)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1015, file: !1016, line: 275, baseType: !1046, size: 8, offset: 1040)
!1046 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1015, file: !1016, line: 276, baseType: !1048, size: 8, offset: 1048)
!1048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 8, elements: !566)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1015, file: !1016, line: 280, baseType: !1050, size: 64, offset: 1088)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1016, line: 150, baseType: null)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1015, file: !1016, line: 289, baseType: !1053, size: 64, offset: 1152)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !34, line: 141, baseType: !1043)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1015, file: !1016, line: 297, baseType: !45, size: 64, offset: 1216)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1015, file: !1016, line: 298, baseType: !45, size: 64, offset: 1280)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1015, file: !1016, line: 299, baseType: !45, size: 64, offset: 1344)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1015, file: !1016, line: 300, baseType: !45, size: 64, offset: 1408)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1015, file: !1016, line: 302, baseType: !140, size: 64, offset: 1472)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1015, file: !1016, line: 303, baseType: !28, size: 32, offset: 1536)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1015, file: !1016, line: 305, baseType: !1061, size: 160, offset: 1568)
!1061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 160, elements: !1062)
!1062 = !{!1063}
!1063 = !DISubrange(count: 20)
!1064 = !{!1065, !1066, !1067}
!1065 = !DILocalVariable(name: "fp", arg: 1, scope: !1009, file: !581, line: 28, type: !1012)
!1066 = !DILocalVariable(name: "fmt", arg: 2, scope: !1009, file: !581, line: 28, type: !58)
!1067 = !DILocalVariable(name: "ap", scope: !1009, file: !581, line: 30, type: !1068)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1069, line: 46, baseType: !1070)
!1069 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !557, line: 48, baseType: !1071)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !581, line: 30, baseType: !1072)
!1072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1073, size: 192, elements: !566)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !581, line: 30, size: 192, elements: !1074)
!1074 = !{!1075, !1076, !1077, !1078}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1073, file: !581, line: 30, baseType: !48, size: 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1073, file: !581, line: 30, baseType: !48, size: 32, offset: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1073, file: !581, line: 30, baseType: !45, size: 64, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1073, file: !581, line: 30, baseType: !45, size: 64, offset: 128)
!1079 = !DILocation(line: 28, column: 21, scope: !1009)
!1080 = !DILocation(line: 28, column: 37, scope: !1009)
!1081 = !DILocation(line: 30, column: 3, scope: !1009)
!1082 = !DILocation(line: 30, column: 11, scope: !1009)
!1083 = !DILocation(line: 31, column: 3, scope: !1009)
!1084 = !DILocation(line: 32, column: 3, scope: !1009)
!1085 = !DILocation(line: 33, column: 3, scope: !1009)
!1086 = !DILocalVariable(name: "__stream", arg: 1, scope: !1087, file: !1088, line: 124, type: !1091)
!1087 = distinct !DISubprogram(name: "vfprintf", scope: !1088, file: !1088, line: 124, type: !1089, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !580, variables: !1094)
!1088 = !DIFile(filename: "/usr/include/bits/stdio2.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!28, !1091, !1092, !1093}
!1091 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1012)
!1092 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !58)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1094 = !{!1086, !1095, !1096}
!1095 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1087, file: !1088, line: 125, type: !1092)
!1096 = !DILocalVariable(name: "__ap", arg: 3, scope: !1087, file: !1088, line: 125, type: !1093)
!1097 = !DILocation(line: 124, column: 28, scope: !1087, inlinedAt: !1098)
!1098 = distinct !DILocation(line: 34, column: 3, scope: !1009)
!1099 = !DILocation(line: 125, column: 27, scope: !1087, inlinedAt: !1098)
!1100 = !DILocation(line: 125, column: 45, scope: !1087, inlinedAt: !1098)
!1101 = !DILocation(line: 127, column: 10, scope: !1087, inlinedAt: !1098)
!1102 = !DILocation(line: 35, column: 3, scope: !1009)
!1103 = !DILocalVariable(name: "__c", arg: 1, scope: !1104, file: !1105, line: 88, type: !28)
!1104 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1105, file: !1105, line: 88, type: !1106, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !580, variables: !1108)
!1105 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!28, !28, !1012}
!1108 = !{!1103, !1109}
!1109 = !DILocalVariable(name: "__stream", arg: 2, scope: !1104, file: !1105, line: 88, type: !1012)
!1110 = !DILocation(line: 88, column: 21, scope: !1104, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 36, column: 3, scope: !1009)
!1112 = !DILocation(line: 88, column: 32, scope: !1104, inlinedAt: !1111)
!1113 = !DILocation(line: 90, column: 10, scope: !1104, inlinedAt: !1111)
!1114 = !{!1115, !711, i64 40}
!1115 = !{!"_IO_FILE", !785, i64 0, !711, i64 8, !711, i64 16, !711, i64 24, !711, i64 32, !711, i64 40, !711, i64 48, !711, i64 56, !711, i64 64, !711, i64 72, !711, i64 80, !711, i64 88, !711, i64 96, !711, i64 104, !785, i64 112, !785, i64 116, !1116, i64 120, !1117, i64 128, !712, i64 130, !712, i64 131, !711, i64 136, !1116, i64 144, !711, i64 152, !711, i64 160, !711, i64 168, !711, i64 176, !1116, i64 184, !785, i64 192, !712, i64 196}
!1116 = !{!"long", !712, i64 0}
!1117 = !{!"short", !712, i64 0}
!1118 = !{!1115, !711, i64 48}
!1119 = !{!"branch_weights", i32 2000, i32 1}
!1120 = !{!712, !712, i64 0}
!1121 = !DILocation(line: 37, column: 1, scope: !1009)
!1122 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !97, file: !97, line: 41, type: !56, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !1123)
!1123 = !{!1124}
!1124 = !DILocalVariable(name: "file", arg: 1, scope: !1122, file: !97, line: 41, type: !58)
!1125 = !DILocation(line: 41, column: 41, scope: !1122)
!1126 = !DILocation(line: 43, column: 13, scope: !1122)
!1127 = !DILocation(line: 44, column: 1, scope: !1122)
!1128 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !97, file: !97, line: 78, type: !1129, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !1131)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{null, !98}
!1131 = !{!1132}
!1132 = !DILocalVariable(name: "ignore", arg: 1, scope: !1128, file: !97, line: 78, type: !98)
!1133 = !DILocation(line: 78, column: 37, scope: !1128)
!1134 = !DILocation(line: 80, column: 16, scope: !1128)
!1135 = !{!786, !786, i64 0}
!1136 = !DILocation(line: 81, column: 1, scope: !1128)
!1137 = distinct !DISubprogram(name: "close_stdout", scope: !97, file: !97, line: 107, type: !719, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !92, variables: !1138)
!1138 = !{!1139}
!1139 = !DILocalVariable(name: "write_error", scope: !1140, file: !97, line: 112, type: !58)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !97, line: 111, column: 5)
!1141 = distinct !DILexicalBlock(scope: !1137, file: !97, line: 109, column: 7)
!1142 = !DILocation(line: 109, column: 21, scope: !1141)
!1143 = !DILocation(line: 109, column: 7, scope: !1141)
!1144 = !DILocation(line: 109, column: 29, scope: !1141)
!1145 = !DILocation(line: 110, column: 7, scope: !1141)
!1146 = !DILocation(line: 110, column: 12, scope: !1141)
!1147 = !DILocation(line: 114, column: 19, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1140, file: !97, line: 113, column: 11)
!1149 = !DILocation(line: 110, column: 25, scope: !1141)
!1150 = !DILocation(line: 110, column: 28, scope: !1141)
!1151 = !DILocation(line: 110, column: 34, scope: !1141)
!1152 = !DILocation(line: 109, column: 7, scope: !1137)
!1153 = !DILocation(line: 112, column: 33, scope: !1140)
!1154 = !DILocation(line: 112, column: 19, scope: !1140)
!1155 = !DILocation(line: 113, column: 11, scope: !1148)
!1156 = !DILocation(line: 113, column: 11, scope: !1140)
!1157 = !DILocation(line: 114, column: 36, scope: !1148)
!1158 = !DILocation(line: 114, column: 9, scope: !1148)
!1159 = !DILocation(line: 117, column: 9, scope: !1148)
!1160 = !DILocation(line: 119, column: 14, scope: !1140)
!1161 = !DILocation(line: 119, column: 7, scope: !1140)
!1162 = !DILocation(line: 122, column: 22, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1137, file: !97, line: 122, column: 8)
!1164 = !DILocation(line: 122, column: 8, scope: !1163)
!1165 = !DILocation(line: 122, column: 30, scope: !1163)
!1166 = !DILocation(line: 122, column: 8, scope: !1137)
!1167 = !DILocation(line: 123, column: 13, scope: !1163)
!1168 = !DILocation(line: 123, column: 6, scope: !1163)
!1169 = !DILocation(line: 124, column: 1, scope: !1137)
!1170 = distinct !DISubprogram(name: "make_dir_parents", scope: !1171, file: !1171, line: 85, type: !1172, isLocal: false, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, unit: !585, variables: !1176)
!1171 = !DIFile(filename: "lib/mkdir-p.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!98, !43, !1174, !756, !45, !680, !1175, !680, !46, !49, !98}
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!1176 = !{!1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1192, !1193, !1196, !1197, !1198, !1201, !1237, !1242, !1243, !1246}
!1177 = !DILocalVariable(name: "dir", arg: 1, scope: !1170, file: !1171, line: 85, type: !43)
!1178 = !DILocalVariable(name: "wd", arg: 2, scope: !1170, file: !1171, line: 86, type: !1174)
!1179 = !DILocalVariable(name: "make_ancestor", arg: 3, scope: !1170, file: !1171, line: 87, type: !756)
!1180 = !DILocalVariable(name: "options", arg: 4, scope: !1170, file: !1171, line: 88, type: !45)
!1181 = !DILocalVariable(name: "mode", arg: 5, scope: !1170, file: !1171, line: 89, type: !680)
!1182 = !DILocalVariable(name: "announce", arg: 6, scope: !1170, file: !1171, line: 90, type: !1175)
!1183 = !DILocalVariable(name: "mode_bits", arg: 7, scope: !1170, file: !1171, line: 91, type: !680)
!1184 = !DILocalVariable(name: "owner", arg: 8, scope: !1170, file: !1171, line: 92, type: !46)
!1185 = !DILocalVariable(name: "group", arg: 9, scope: !1170, file: !1171, line: 93, type: !49)
!1186 = !DILocalVariable(name: "preserve_existing", arg: 10, scope: !1170, file: !1171, line: 94, type: !98)
!1187 = !DILocalVariable(name: "mkdir_errno", scope: !1170, file: !1171, line: 96, type: !28)
!1188 = !DILocalVariable(name: "prefix_len", scope: !1189, file: !1171, line: 100, type: !1191)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !1171, line: 99, column: 5)
!1190 = distinct !DILexicalBlock(scope: !1170, file: !1171, line: 98, column: 7)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !141, line: 51, baseType: !1043)
!1192 = !DILocalVariable(name: "savewd_chdir_options", scope: !1189, file: !1171, line: 101, type: !28)
!1193 = !DILocalVariable(name: "keep_owner", scope: !1194, file: !1171, line: 121, type: !98)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !1171, line: 115, column: 9)
!1195 = distinct !DILexicalBlock(scope: !1189, file: !1171, line: 114, column: 11)
!1196 = !DILocalVariable(name: "keep_special_mode_bits", scope: !1194, file: !1171, line: 122, type: !98)
!1197 = !DILocalVariable(name: "mkdir_mode", scope: !1194, file: !1171, line: 124, type: !680)
!1198 = !DILocalVariable(name: "umask_must_be_ok", scope: !1199, file: !1171, line: 134, type: !98)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !1171, line: 131, column: 13)
!1200 = distinct !DILexicalBlock(scope: !1194, file: !1171, line: 130, column: 15)
!1201 = !DILocalVariable(name: "st", scope: !1202, file: !1171, line: 149, type: !1204)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !1171, line: 148, column: 13)
!1203 = distinct !DILexicalBlock(scope: !1194, file: !1171, line: 147, column: 15)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1205, line: 46, size: 1152, elements: !1206)
!1205 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1206 = !{!1207, !1209, !1211, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1221, !1223, !1231, !1232, !1233}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1204, file: !1205, line: 48, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !34, line: 133, baseType: !142)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1204, file: !1205, line: 53, baseType: !1210, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !34, line: 136, baseType: !142)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1204, file: !1205, line: 61, baseType: !1212, size: 64, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !34, line: 139, baseType: !142)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1204, file: !1205, line: 62, baseType: !681, size: 32, offset: 192)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1204, file: !1205, line: 64, baseType: !47, size: 32, offset: 224)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1204, file: !1205, line: 65, baseType: !50, size: 32, offset: 256)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1204, file: !1205, line: 67, baseType: !28, size: 32, offset: 288)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1204, file: !1205, line: 69, baseType: !1208, size: 64, offset: 320)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1204, file: !1205, line: 74, baseType: !1042, size: 64, offset: 384)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1204, file: !1205, line: 78, baseType: !1220, size: 64, offset: 448)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !34, line: 162, baseType: !1043)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1204, file: !1205, line: 80, baseType: !1222, size: 64, offset: 512)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !34, line: 167, baseType: !1043)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1204, file: !1205, line: 91, baseType: !1224, size: 128, offset: 576)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1225, line: 8, size: 128, elements: !1226)
!1225 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1226 = !{!1227, !1229}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1224, file: !1225, line: 10, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !34, line: 148, baseType: !1043)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1224, file: !1225, line: 11, baseType: !1230, size: 64, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !34, line: 184, baseType: !1043)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1204, file: !1205, line: 92, baseType: !1224, size: 128, offset: 704)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1204, file: !1205, line: 93, baseType: !1224, size: 128, offset: 832)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1204, file: !1205, line: 106, baseType: !1234, size: 192, offset: 960)
!1234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1230, size: 192, elements: !1235)
!1235 = !{!1236}
!1236 = !DISubrange(count: 3)
!1237 = !DILocalVariable(name: "open_result", scope: !1238, file: !1171, line: 158, type: !1239)
!1238 = distinct !DILexicalBlock(scope: !1203, file: !1171, line: 157, column: 13)
!1239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 64, elements: !1240)
!1240 = !{!1241}
!1241 = !DISubrange(count: 2)
!1242 = !DILocalVariable(name: "chdir_result", scope: !1238, file: !1171, line: 159, type: !28)
!1243 = !DILocalVariable(name: "chdir_ok", scope: !1244, file: !1171, line: 166, type: !98)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !1171, line: 165, column: 17)
!1245 = distinct !DILexicalBlock(scope: !1238, file: !1171, line: 162, column: 19)
!1246 = !DILocalVariable(name: "subdir", scope: !1244, file: !1171, line: 167, type: !58)
!1247 = !DILocation(line: 85, column: 25, scope: !1170)
!1248 = !DILocation(line: 86, column: 34, scope: !1170)
!1249 = !DILocation(line: 87, column: 25, scope: !1170)
!1250 = !DILocation(line: 88, column: 25, scope: !1170)
!1251 = !DILocation(line: 89, column: 26, scope: !1170)
!1252 = !DILocation(line: 90, column: 26, scope: !1170)
!1253 = !DILocation(line: 91, column: 26, scope: !1170)
!1254 = !DILocation(line: 92, column: 25, scope: !1170)
!1255 = !DILocation(line: 93, column: 25, scope: !1170)
!1256 = !DILocation(line: 94, column: 24, scope: !1170)
!1257 = !DILocation(line: 96, column: 22, scope: !1170)
!1258 = !DILocalVariable(name: "wd", arg: 1, scope: !1259, file: !20, line: 124, type: !1262)
!1259 = distinct !DISubprogram(name: "savewd_errno", scope: !20, file: !20, line: 124, type: !1260, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !585, variables: !1264)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!28, !1262}
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !589)
!1264 = !{!1258}
!1265 = !DILocation(line: 124, column: 36, scope: !1259, inlinedAt: !1266)
!1266 = distinct !DILocation(line: 96, column: 56, scope: !1170)
!1267 = !DILocation(line: 126, column: 15, scope: !1259, inlinedAt: !1266)
!1268 = !{!1269, !712, i64 0}
!1269 = !{!"savewd", !712, i64 0, !712, i64 4}
!1270 = !DILocation(line: 126, column: 21, scope: !1259, inlinedAt: !1266)
!1271 = !DILocation(line: 126, column: 11, scope: !1259, inlinedAt: !1266)
!1272 = !DILocation(line: 126, column: 46, scope: !1259, inlinedAt: !1266)
!1273 = !DILocation(line: 96, column: 7, scope: !1170)
!1274 = !DILocation(line: 98, column: 19, scope: !1190)
!1275 = !DILocation(line: 98, column: 7, scope: !1170)
!1276 = !DILocation(line: 100, column: 17, scope: !1189)
!1277 = !DILocation(line: 101, column: 11, scope: !1189)
!1278 = !DILocation(line: 103, column: 11, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1189, file: !1171, line: 103, column: 11)
!1280 = !DILocation(line: 103, column: 11, scope: !1189)
!1281 = !DILocation(line: 105, column: 24, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1279, file: !1171, line: 104, column: 9)
!1283 = !DILocation(line: 106, column: 26, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1282, file: !1171, line: 106, column: 15)
!1285 = !DILocation(line: 106, column: 15, scope: !1282)
!1286 = !DILocation(line: 108, column: 30, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !1171, line: 108, column: 19)
!1288 = distinct !DILexicalBlock(scope: !1284, file: !1171, line: 107, column: 13)
!1289 = !DILocation(line: 108, column: 19, scope: !1288)
!1290 = !DILocation(line: 110, column: 29, scope: !1288)
!1291 = !DILocation(line: 121, column: 49, scope: !1194)
!1292 = !DILocation(line: 123, column: 25, scope: !1194)
!1293 = !DILocation(line: 123, column: 56, scope: !1194)
!1294 = !DILocation(line: 123, column: 48, scope: !1194)
!1295 = !DILocation(line: 124, column: 18, scope: !1194)
!1296 = !DILocation(line: 125, column: 15, scope: !1194)
!1297 = !DILocation(line: 126, column: 24, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1194, file: !1171, line: 125, column: 15)
!1299 = !DILocation(line: 126, column: 13, scope: !1298)
!1300 = !DILocation(line: 123, column: 68, scope: !1194)
!1301 = !DILocation(line: 128, column: 24, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1298, file: !1171, line: 127, column: 20)
!1303 = !DILocation(line: 127, column: 20, scope: !1298)
!1304 = !DILocation(line: 130, column: 26, scope: !1200)
!1305 = !DILocation(line: 130, column: 15, scope: !1200)
!1306 = !DILocation(line: 130, column: 52, scope: !1200)
!1307 = !DILocation(line: 130, column: 15, scope: !1194)
!1308 = !DILocation(line: 134, column: 45, scope: !1199)
!1309 = !DILocation(line: 134, column: 57, scope: !1199)
!1310 = !DILocation(line: 136, column: 15, scope: !1199)
!1311 = !DILocation(line: 138, column: 36, scope: !1199)
!1312 = !DILocation(line: 147, column: 15, scope: !1194)
!1313 = !DILocation(line: 149, column: 15, scope: !1202)
!1314 = !DILocation(line: 151, column: 19, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1202, file: !1171, line: 150, column: 19)
!1316 = !DILocation(line: 143, column: 29, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1200, file: !1171, line: 142, column: 13)
!1318 = !DILocation(line: 150, column: 31, scope: !1315)
!1319 = !DILocation(line: 151, column: 35, scope: !1315)
!1320 = !DILocation(line: 151, column: 45, scope: !1315)
!1321 = !DILocation(line: 149, column: 27, scope: !1202)
!1322 = !DILocalVariable(name: "__path", arg: 1, scope: !1323, file: !1324, line: 449, type: !58)
!1323 = distinct !DISubprogram(name: "stat", scope: !1324, file: !1324, line: 449, type: !1325, isLocal: false, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !585, variables: !1328)
!1324 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!28, !58, !1327}
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1328 = !{!1322, !1329}
!1329 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1323, file: !1324, line: 449, type: !1327)
!1330 = !DILocation(line: 449, column: 1, scope: !1323, inlinedAt: !1331)
!1331 = distinct !DILocation(line: 152, column: 26, scope: !1315)
!1332 = !DILocation(line: 451, column: 10, scope: !1323, inlinedAt: !1331)
!1333 = !DILocation(line: 152, column: 55, scope: !1315)
!1334 = !DILocation(line: 153, column: 23, scope: !1315)
!1335 = !DILocation(line: 153, column: 26, scope: !1315)
!1336 = !{!1337, !785, i64 24}
!1337 = !{!"stat", !1116, i64 0, !1116, i64 8, !1116, i64 16, !785, i64 24, !785, i64 28, !785, i64 32, !785, i64 36, !1116, i64 40, !1116, i64 48, !1116, i64 56, !1116, i64 64, !1338, i64 72, !1338, i64 88, !1338, i64 104, !712, i64 120}
!1338 = !{!"timespec", !1116, i64 0, !1116, i64 8}
!1339 = !DILocation(line: 150, column: 19, scope: !1202)
!1340 = !DILocation(line: 155, column: 13, scope: !1203)
!1341 = !DILocation(line: 158, column: 15, scope: !1238)
!1342 = !DILocation(line: 158, column: 19, scope: !1238)
!1343 = !DILocation(line: 161, column: 53, scope: !1238)
!1344 = !DILocation(line: 160, column: 17, scope: !1238)
!1345 = !DILocation(line: 159, column: 19, scope: !1238)
!1346 = !DILocation(line: 162, column: 32, scope: !1245)
!1347 = !DILocation(line: 162, column: 19, scope: !1238)
!1348 = !DILocation(line: 185, column: 13, scope: !1203)
!1349 = !DILocation(line: 166, column: 49, scope: !1244)
!1350 = !DILocation(line: 167, column: 41, scope: !1244)
!1351 = !DILocation(line: 167, column: 31, scope: !1244)
!1352 = !DILocation(line: 168, column: 36, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1244, file: !1171, line: 168, column: 23)
!1354 = !DILocation(line: 168, column: 23, scope: !1353)
!1355 = !DILocation(line: 170, column: 23, scope: !1353)
!1356 = !DILocation(line: 168, column: 23, scope: !1244)
!1357 = !DILocation(line: 173, column: 35, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1244, file: !1171, line: 173, column: 23)
!1359 = !DILocation(line: 174, column: 23, scope: !1358)
!1360 = !DILocation(line: 177, column: 33, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1358, file: !1171, line: 176, column: 21)
!1362 = !DILocation(line: 174, column: 39, scope: !1358)
!1363 = !DILocation(line: 174, column: 49, scope: !1358)
!1364 = !DILocation(line: 175, column: 30, scope: !1358)
!1365 = !DILocation(line: 175, column: 36, scope: !1358)
!1366 = !DILocation(line: 173, column: 23, scope: !1244)
!1367 = !DILocation(line: 178, column: 30, scope: !1361)
!1368 = !DILocation(line: 181, column: 30, scope: !1361)
!1369 = !DILocation(line: 177, column: 23, scope: !1361)
!1370 = !DILocation(line: 182, column: 23, scope: !1361)
!1371 = !DILocation(line: 189, column: 26, scope: !1170)
!1372 = !DILocation(line: 189, column: 59, scope: !1170)
!1373 = !DILocation(line: 189, column: 3, scope: !1170)
!1374 = !DILocation(line: 190, column: 3, scope: !1170)
!1375 = !DILocation(line: 191, column: 1, scope: !1170)
!1376 = distinct !DISubprogram(name: "mode_compile", scope: !607, file: !607, line: 134, type: !1377, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !603, variables: !1387)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!1379, !58}
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !607, line: 98, size: 128, elements: !1381)
!1381 = !{!1382, !1383, !1384, !1385, !1386}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1380, file: !607, line: 100, baseType: !44, size: 8)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !1380, file: !607, line: 101, baseType: !44, size: 8, offset: 8)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "affected", scope: !1380, file: !607, line: 102, baseType: !680, size: 32, offset: 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1380, file: !607, line: 103, baseType: !680, size: 32, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "mentioned", scope: !1380, file: !607, line: 104, baseType: !680, size: 32, offset: 96)
!1387 = !{!1388, !1389, !1390, !1391, !1392, !1395, !1396, !1397, !1399, !1403, !1405, !1406, !1407, !1408, !1409}
!1388 = !DILocalVariable(name: "mode_string", arg: 1, scope: !1376, file: !607, line: 134, type: !58)
!1389 = !DILocalVariable(name: "mc", scope: !1376, file: !607, line: 137, type: !1379)
!1390 = !DILocalVariable(name: "used", scope: !1376, file: !607, line: 138, type: !140)
!1391 = !DILocalVariable(name: "p", scope: !1376, file: !607, line: 139, type: !58)
!1392 = !DILocalVariable(name: "octal_mode", scope: !1393, file: !607, line: 143, type: !48)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !607, line: 142, column: 5)
!1394 = distinct !DILexicalBlock(scope: !1376, file: !607, line: 141, column: 7)
!1395 = !DILocalVariable(name: "mode", scope: !1393, file: !607, line: 144, type: !680)
!1396 = !DILocalVariable(name: "mentioned", scope: !1393, file: !607, line: 145, type: !680)
!1397 = !DILocalVariable(name: "needed", scope: !1398, file: !607, line: 168, type: !140)
!1398 = distinct !DILexicalBlock(scope: !1376, file: !607, line: 167, column: 3)
!1399 = !DILocalVariable(name: "affected", scope: !1400, file: !607, line: 179, type: !680)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !607, line: 177, column: 5)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !607, line: 176, column: 3)
!1402 = distinct !DILexicalBlock(scope: !1376, file: !607, line: 176, column: 3)
!1403 = !DILocalVariable(name: "op", scope: !1404, file: !607, line: 206, type: !44)
!1404 = distinct !DILexicalBlock(scope: !1400, file: !607, line: 205, column: 9)
!1405 = !DILocalVariable(name: "value", scope: !1404, file: !607, line: 207, type: !680)
!1406 = !DILocalVariable(name: "mentioned", scope: !1404, file: !607, line: 208, type: !680)
!1407 = !DILocalVariable(name: "flag", scope: !1404, file: !607, line: 209, type: !44)
!1408 = !DILocalVariable(name: "change", scope: !1404, file: !607, line: 210, type: !1379)
!1409 = !DILocalVariable(name: "octal_mode", scope: !1410, file: !607, line: 217, type: !48)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !607, line: 216, column: 15)
!1411 = distinct !DILexicalBlock(scope: !1404, file: !607, line: 213, column: 13)
!1412 = !DILocation(line: 134, column: 27, scope: !1376)
!1413 = !DILocation(line: 138, column: 10, scope: !1376)
!1414 = !DILocation(line: 141, column: 14, scope: !1394)
!1415 = !DILocation(line: 141, column: 27, scope: !1394)
!1416 = distinct !{!1416, !1417, !1418}
!1417 = !DILocation(line: 148, column: 7, scope: !1393)
!1418 = !DILocation(line: 154, column: 35, scope: !1393)
!1419 = !DILocation(line: 169, column: 5, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1398, file: !607, line: 169, column: 5)
!1421 = !DILocation(line: 150, column: 26, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1393, file: !607, line: 149, column: 9)
!1423 = !DILocation(line: 150, column: 41, scope: !1422)
!1424 = !DILocation(line: 139, column: 15, scope: !1376)
!1425 = !DILocation(line: 143, column: 20, scope: !1393)
!1426 = !DILocation(line: 150, column: 43, scope: !1422)
!1427 = !DILocation(line: 150, column: 39, scope: !1422)
!1428 = !DILocation(line: 150, column: 46, scope: !1422)
!1429 = !DILocation(line: 151, column: 20, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1422, file: !607, line: 151, column: 15)
!1431 = !DILocation(line: 151, column: 15, scope: !1422)
!1432 = !DILocation(line: 154, column: 21, scope: !1393)
!1433 = !DILocation(line: 154, column: 24, scope: !1393)
!1434 = !DILocation(line: 156, column: 11, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1393, file: !607, line: 156, column: 11)
!1436 = !DILocation(line: 156, column: 11, scope: !1393)
!1437 = !DILocation(line: 144, column: 14, scope: !1393)
!1438 = !DILocation(line: 160, column: 22, scope: !1393)
!1439 = !DILocation(line: 160, column: 36, scope: !1393)
!1440 = !DILocation(line: 161, column: 28, scope: !1393)
!1441 = !DILocation(line: 161, column: 61, scope: !1393)
!1442 = !DILocation(line: 160, column: 20, scope: !1393)
!1443 = !DILocation(line: 145, column: 14, scope: !1393)
!1444 = !DILocalVariable(name: "new_mode", arg: 1, scope: !1445, file: !607, line: 112, type: !680)
!1445 = distinct !DISubprogram(name: "make_node_op_equals", scope: !607, file: !607, line: 112, type: !1446, isLocal: true, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !603, variables: !1448)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!1379, !680, !680}
!1448 = !{!1444, !1449, !1450}
!1449 = !DILocalVariable(name: "mentioned", arg: 2, scope: !1445, file: !607, line: 112, type: !680)
!1450 = !DILocalVariable(name: "p", scope: !1445, file: !607, line: 114, type: !1379)
!1451 = !DILocation(line: 112, column: 29, scope: !1445, inlinedAt: !1452)
!1452 = distinct !DILocation(line: 163, column: 14, scope: !1393)
!1453 = !DILocation(line: 112, column: 46, scope: !1445, inlinedAt: !1452)
!1454 = !DILocation(line: 114, column: 27, scope: !1445, inlinedAt: !1452)
!1455 = !DILocation(line: 114, column: 23, scope: !1445, inlinedAt: !1452)
!1456 = !DILocation(line: 115, column: 9, scope: !1445, inlinedAt: !1452)
!1457 = !{!1458, !712, i64 0}
!1458 = !{!"mode_change", !712, i64 0, !712, i64 1, !785, i64 4, !785, i64 8, !785, i64 12}
!1459 = !DILocation(line: 116, column: 6, scope: !1445, inlinedAt: !1452)
!1460 = !DILocation(line: 116, column: 11, scope: !1445, inlinedAt: !1452)
!1461 = !{!1458, !712, i64 1}
!1462 = !DILocation(line: 117, column: 6, scope: !1445, inlinedAt: !1452)
!1463 = !DILocation(line: 117, column: 15, scope: !1445, inlinedAt: !1452)
!1464 = !{!1458, !785, i64 4}
!1465 = !DILocation(line: 118, column: 6, scope: !1445, inlinedAt: !1452)
!1466 = !DILocation(line: 118, column: 12, scope: !1445, inlinedAt: !1452)
!1467 = !{!1458, !785, i64 8}
!1468 = !DILocation(line: 119, column: 6, scope: !1445, inlinedAt: !1452)
!1469 = !DILocation(line: 119, column: 16, scope: !1445, inlinedAt: !1452)
!1470 = !{!1458, !785, i64 12}
!1471 = !DILocation(line: 120, column: 8, scope: !1445, inlinedAt: !1452)
!1472 = !DILocation(line: 120, column: 13, scope: !1445, inlinedAt: !1452)
!1473 = !DILocation(line: 163, column: 7, scope: !1393)
!1474 = !DILocation(line: 169, column: 27, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1420, file: !607, line: 169, column: 5)
!1476 = !DILocation(line: 168, column: 12, scope: !1398)
!1477 = !DILocation(line: 170, column: 41, scope: !1475)
!1478 = !DILocation(line: 170, column: 14, scope: !1475)
!1479 = !DILocation(line: 169, column: 32, scope: !1475)
!1480 = !DILocation(line: 169, column: 5, scope: !1475)
!1481 = distinct !{!1481, !1419, !1482}
!1482 = !DILocation(line: 170, column: 53, scope: !1420)
!1483 = !DILocalVariable(name: "n", arg: 1, scope: !1484, file: !639, line: 105, type: !140)
!1484 = distinct !DISubprogram(name: "xnmalloc", scope: !639, file: !639, line: 105, type: !1485, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !603, variables: !1487)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!45, !140, !140}
!1487 = !{!1483, !1488}
!1488 = !DILocalVariable(name: "s", arg: 2, scope: !1484, file: !639, line: 105, type: !140)
!1489 = !DILocation(line: 105, column: 18, scope: !1484, inlinedAt: !1490)
!1490 = distinct !DILocation(line: 171, column: 10, scope: !1398)
!1491 = !DILocation(line: 105, column: 28, scope: !1484, inlinedAt: !1490)
!1492 = !DILocation(line: 107, column: 7, scope: !1493, inlinedAt: !1490)
!1493 = distinct !DILexicalBlock(scope: !1484, file: !639, line: 107, column: 7)
!1494 = !DILocation(line: 107, column: 7, scope: !1484, inlinedAt: !1490)
!1495 = !DILocation(line: 108, column: 5, scope: !1493, inlinedAt: !1490)
!1496 = !DILocation(line: 109, column: 21, scope: !1484, inlinedAt: !1490)
!1497 = !DILocation(line: 109, column: 10, scope: !1484, inlinedAt: !1490)
!1498 = !DILocation(line: 171, column: 10, scope: !1398)
!1499 = !DILocation(line: 137, column: 23, scope: !1376)
!1500 = !DILocation(line: 176, column: 8, scope: !1402)
!1501 = !DILocation(line: 179, column: 14, scope: !1400)
!1502 = !DILocation(line: 182, column: 7, scope: !1400)
!1503 = !DILocation(line: 183, column: 17, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !607, line: 182, column: 7)
!1505 = distinct !DILexicalBlock(scope: !1400, file: !607, line: 182, column: 7)
!1506 = !DILocation(line: 183, column: 9, scope: !1504)
!1507 = distinct !{!1507, !1508, !1509}
!1508 = !DILocation(line: 204, column: 7, scope: !1400)
!1509 = !DILocation(line: 295, column: 49, scope: !1400)
!1510 = !DILocation(line: 206, column: 23, scope: !1404)
!1511 = !DILocation(line: 189, column: 13, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1504, file: !607, line: 184, column: 11)
!1513 = !DILocation(line: 195, column: 13, scope: !1512)
!1514 = !DILocation(line: 198, column: 13, scope: !1512)
!1515 = !DILocation(line: 182, column: 16, scope: !1504)
!1516 = !DILocation(line: 182, column: 7, scope: !1504)
!1517 = distinct !{!1517, !1518, !1519}
!1518 = !DILocation(line: 182, column: 7, scope: !1505)
!1519 = !DILocation(line: 201, column: 11, scope: !1505)
!1520 = !DILocation(line: 206, column: 21, scope: !1404)
!1521 = !DILocation(line: 206, column: 16, scope: !1404)
!1522 = !DILocation(line: 208, column: 18, scope: !1404)
!1523 = !DILocation(line: 209, column: 16, scope: !1404)
!1524 = !DILocation(line: 212, column: 19, scope: !1404)
!1525 = !DILocation(line: 212, column: 11, scope: !1404)
!1526 = distinct !{!1526, !1527, !1528}
!1527 = !DILocation(line: 219, column: 17, scope: !1410)
!1528 = !DILocation(line: 225, column: 45, scope: !1410)
!1529 = !DILocation(line: 221, column: 36, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1410, file: !607, line: 220, column: 19)
!1531 = !DILocation(line: 259, column: 25, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !607, line: 258, column: 15)
!1533 = distinct !DILexicalBlock(scope: !1411, file: !607, line: 258, column: 15)
!1534 = !DILocation(line: 221, column: 51, scope: !1530)
!1535 = !DILocation(line: 217, column: 30, scope: !1410)
!1536 = !DILocation(line: 221, column: 53, scope: !1530)
!1537 = !DILocation(line: 221, column: 49, scope: !1530)
!1538 = !DILocation(line: 221, column: 56, scope: !1530)
!1539 = !DILocation(line: 222, column: 30, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1530, file: !607, line: 222, column: 25)
!1541 = !DILocation(line: 222, column: 25, scope: !1530)
!1542 = !DILocation(line: 225, column: 31, scope: !1410)
!1543 = !DILocation(line: 225, column: 34, scope: !1410)
!1544 = !DILocation(line: 227, column: 21, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1410, file: !607, line: 227, column: 21)
!1546 = !DILocation(line: 227, column: 30, scope: !1545)
!1547 = !DILocation(line: 227, column: 37, scope: !1545)
!1548 = !DILocation(line: 207, column: 18, scope: !1404)
!1549 = !DILocation(line: 239, column: 16, scope: !1411)
!1550 = !DILocation(line: 240, column: 15, scope: !1411)
!1551 = !DILocation(line: 245, column: 16, scope: !1411)
!1552 = !DILocation(line: 246, column: 15, scope: !1411)
!1553 = !DILocation(line: 251, column: 16, scope: !1411)
!1554 = !DILocation(line: 252, column: 15, scope: !1411)
!1555 = !DILocation(line: 259, column: 17, scope: !1532)
!1556 = !DILocation(line: 262, column: 27, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1532, file: !607, line: 260, column: 19)
!1558 = !DILocation(line: 263, column: 21, scope: !1557)
!1559 = !DILocation(line: 265, column: 27, scope: !1557)
!1560 = !DILocation(line: 266, column: 21, scope: !1557)
!1561 = !DILocation(line: 268, column: 27, scope: !1557)
!1562 = !DILocation(line: 269, column: 21, scope: !1557)
!1563 = !DILocation(line: 275, column: 27, scope: !1557)
!1564 = !DILocation(line: 276, column: 21, scope: !1557)
!1565 = !DILocation(line: 279, column: 27, scope: !1557)
!1566 = !DILocation(line: 280, column: 21, scope: !1557)
!1567 = !DILocation(line: 258, column: 24, scope: !1532)
!1568 = !DILocation(line: 258, column: 15, scope: !1532)
!1569 = distinct !{!1569, !1570, !1571}
!1570 = !DILocation(line: 258, column: 15, scope: !1533)
!1571 = !DILocation(line: 283, column: 19, scope: !1533)
!1572 = !DILocation(line: 287, column: 28, scope: !1404)
!1573 = !DILocation(line: 288, column: 19, scope: !1404)
!1574 = !DILocation(line: 288, column: 22, scope: !1404)
!1575 = !DILocation(line: 289, column: 19, scope: !1404)
!1576 = !DILocation(line: 289, column: 24, scope: !1404)
!1577 = !DILocation(line: 290, column: 19, scope: !1404)
!1578 = !DILocation(line: 290, column: 28, scope: !1404)
!1579 = !DILocation(line: 291, column: 19, scope: !1404)
!1580 = !DILocation(line: 291, column: 25, scope: !1404)
!1581 = !DILocation(line: 293, column: 14, scope: !1404)
!1582 = !DILocation(line: 293, column: 38, scope: !1404)
!1583 = !DILocation(line: 292, column: 19, scope: !1404)
!1584 = !DILocation(line: 292, column: 29, scope: !1404)
!1585 = !DILocation(line: 295, column: 14, scope: !1400)
!1586 = !DILocation(line: 295, column: 24, scope: !1400)
!1587 = !DILocation(line: 176, column: 28, scope: !1401)
!1588 = !DILocation(line: 176, column: 3, scope: !1401)
!1589 = distinct !{!1589, !1590, !1591}
!1590 = !DILocation(line: 176, column: 3, scope: !1402)
!1591 = !DILocation(line: 299, column: 5, scope: !1402)
!1592 = !DILocation(line: 303, column: 16, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !607, line: 302, column: 5)
!1594 = distinct !DILexicalBlock(scope: !1376, file: !607, line: 301, column: 7)
!1595 = !DILocation(line: 303, column: 21, scope: !1593)
!1596 = !DILocation(line: 304, column: 7, scope: !1593)
!1597 = !DILocation(line: 308, column: 3, scope: !1376)
!1598 = !DILocation(line: 309, column: 3, scope: !1376)
!1599 = !DILocation(line: 310, column: 1, scope: !1376)
!1600 = distinct !DISubprogram(name: "mode_create_from_ref", scope: !607, file: !607, line: 316, type: !1377, isLocal: false, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, unit: !603, variables: !1601)
!1601 = !{!1602, !1603}
!1602 = !DILocalVariable(name: "ref_file", arg: 1, scope: !1600, file: !607, line: 316, type: !58)
!1603 = !DILocalVariable(name: "ref_stats", scope: !1600, file: !607, line: 318, type: !1604)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1205, line: 46, size: 1152, elements: !1605)
!1605 = !{!1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1622, !1623, !1624}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1604, file: !1205, line: 48, baseType: !1208, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1604, file: !1205, line: 53, baseType: !1210, size: 64, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1604, file: !1205, line: 61, baseType: !1212, size: 64, offset: 128)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1604, file: !1205, line: 62, baseType: !681, size: 32, offset: 192)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1604, file: !1205, line: 64, baseType: !47, size: 32, offset: 224)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1604, file: !1205, line: 65, baseType: !50, size: 32, offset: 256)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1604, file: !1205, line: 67, baseType: !28, size: 32, offset: 288)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1604, file: !1205, line: 69, baseType: !1208, size: 64, offset: 320)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1604, file: !1205, line: 74, baseType: !1042, size: 64, offset: 384)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1604, file: !1205, line: 78, baseType: !1220, size: 64, offset: 448)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1604, file: !1205, line: 80, baseType: !1222, size: 64, offset: 512)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1604, file: !1205, line: 91, baseType: !1618, size: 128, offset: 576)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1225, line: 8, size: 128, elements: !1619)
!1619 = !{!1620, !1621}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1618, file: !1225, line: 10, baseType: !1228, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1618, file: !1225, line: 11, baseType: !1230, size: 64, offset: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1604, file: !1205, line: 92, baseType: !1618, size: 128, offset: 704)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1604, file: !1205, line: 93, baseType: !1618, size: 128, offset: 832)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1604, file: !1205, line: 106, baseType: !1234, size: 192, offset: 960)
!1625 = !DILocation(line: 316, column: 35, scope: !1600)
!1626 = !DILocation(line: 318, column: 3, scope: !1600)
!1627 = !DILocation(line: 318, column: 15, scope: !1600)
!1628 = !DILocalVariable(name: "__path", arg: 1, scope: !1629, file: !1324, line: 449, type: !58)
!1629 = distinct !DISubprogram(name: "stat", scope: !1324, file: !1324, line: 449, type: !1630, isLocal: false, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !603, variables: !1633)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!28, !58, !1632}
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1633 = !{!1628, !1634}
!1634 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1629, file: !1324, line: 449, type: !1632)
!1635 = !DILocation(line: 449, column: 1, scope: !1629, inlinedAt: !1636)
!1636 = distinct !DILocation(line: 320, column: 7, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1600, file: !607, line: 320, column: 7)
!1638 = !DILocation(line: 451, column: 10, scope: !1629, inlinedAt: !1636)
!1639 = !DILocation(line: 320, column: 35, scope: !1637)
!1640 = !DILocation(line: 320, column: 7, scope: !1600)
!1641 = !DILocation(line: 322, column: 41, scope: !1600)
!1642 = !DILocation(line: 112, column: 29, scope: !1445, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 322, column: 10, scope: !1600)
!1644 = !DILocation(line: 112, column: 46, scope: !1445, inlinedAt: !1643)
!1645 = !DILocation(line: 114, column: 27, scope: !1445, inlinedAt: !1643)
!1646 = !DILocation(line: 114, column: 23, scope: !1445, inlinedAt: !1643)
!1647 = !DILocation(line: 115, column: 9, scope: !1445, inlinedAt: !1643)
!1648 = !DILocation(line: 116, column: 6, scope: !1445, inlinedAt: !1643)
!1649 = !DILocation(line: 116, column: 11, scope: !1445, inlinedAt: !1643)
!1650 = !DILocation(line: 117, column: 6, scope: !1445, inlinedAt: !1643)
!1651 = !DILocation(line: 117, column: 15, scope: !1445, inlinedAt: !1643)
!1652 = !DILocation(line: 118, column: 6, scope: !1445, inlinedAt: !1643)
!1653 = !DILocation(line: 118, column: 12, scope: !1445, inlinedAt: !1643)
!1654 = !DILocation(line: 119, column: 6, scope: !1445, inlinedAt: !1643)
!1655 = !DILocation(line: 119, column: 16, scope: !1445, inlinedAt: !1643)
!1656 = !DILocation(line: 120, column: 8, scope: !1445, inlinedAt: !1643)
!1657 = !DILocation(line: 120, column: 13, scope: !1445, inlinedAt: !1643)
!1658 = !DILocation(line: 322, column: 3, scope: !1600)
!1659 = !DILocation(line: 323, column: 1, scope: !1600)
!1660 = distinct !DISubprogram(name: "mode_adjust", scope: !607, file: !607, line: 339, type: !1661, isLocal: false, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true, unit: !603, variables: !1666)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!680, !680, !98, !680, !1663, !1665}
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1380)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!1666 = !{!1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1678, !1679, !1680}
!1667 = !DILocalVariable(name: "oldmode", arg: 1, scope: !1660, file: !607, line: 339, type: !680)
!1668 = !DILocalVariable(name: "dir", arg: 2, scope: !1660, file: !607, line: 339, type: !98)
!1669 = !DILocalVariable(name: "umask_value", arg: 3, scope: !1660, file: !607, line: 339, type: !680)
!1670 = !DILocalVariable(name: "changes", arg: 4, scope: !1660, file: !607, line: 340, type: !1663)
!1671 = !DILocalVariable(name: "pmode_bits", arg: 5, scope: !1660, file: !607, line: 340, type: !1665)
!1672 = !DILocalVariable(name: "newmode", scope: !1660, file: !607, line: 343, type: !680)
!1673 = !DILocalVariable(name: "mode_bits", scope: !1660, file: !607, line: 346, type: !680)
!1674 = !DILocalVariable(name: "affected", scope: !1675, file: !607, line: 350, type: !680)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !607, line: 349, column: 5)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !607, line: 348, column: 3)
!1677 = distinct !DILexicalBlock(scope: !1660, file: !607, line: 348, column: 3)
!1678 = !DILocalVariable(name: "omit_change", scope: !1675, file: !607, line: 351, type: !680)
!1679 = !DILocalVariable(name: "value", scope: !1675, file: !607, line: 353, type: !680)
!1680 = !DILocalVariable(name: "preserved", scope: !1681, file: !607, line: 393, type: !680)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !607, line: 392, column: 11)
!1682 = distinct !DILexicalBlock(scope: !1675, file: !607, line: 387, column: 9)
!1683 = !DILocation(line: 339, column: 21, scope: !1660)
!1684 = !DILocation(line: 339, column: 35, scope: !1660)
!1685 = !DILocation(line: 339, column: 47, scope: !1660)
!1686 = !DILocation(line: 340, column: 40, scope: !1660)
!1687 = !DILocation(line: 340, column: 57, scope: !1660)
!1688 = !DILocation(line: 343, column: 28, scope: !1660)
!1689 = !DILocation(line: 343, column: 10, scope: !1660)
!1690 = !DILocation(line: 346, column: 10, scope: !1660)
!1691 = !DILocation(line: 348, column: 19, scope: !1676)
!1692 = !DILocation(line: 348, column: 24, scope: !1676)
!1693 = !DILocation(line: 348, column: 3, scope: !1677)
!1694 = !DILocation(line: 348, column: 10, scope: !1676)
!1695 = !DILocation(line: 350, column: 34, scope: !1675)
!1696 = !DILocation(line: 350, column: 14, scope: !1675)
!1697 = !DILocation(line: 352, column: 52, scope: !1675)
!1698 = !DILocation(line: 352, column: 41, scope: !1675)
!1699 = !DILocation(line: 352, column: 39, scope: !1675)
!1700 = !DILocation(line: 351, column: 14, scope: !1675)
!1701 = !DILocation(line: 353, column: 31, scope: !1675)
!1702 = !DILocation(line: 353, column: 14, scope: !1675)
!1703 = !DILocation(line: 355, column: 7, scope: !1675)
!1704 = !DILocation(line: 362, column: 17, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1675, file: !607, line: 356, column: 9)
!1706 = !DILocation(line: 365, column: 28, scope: !1705)
!1707 = !DILocation(line: 365, column: 22, scope: !1705)
!1708 = !DILocation(line: 367, column: 30, scope: !1705)
!1709 = !DILocation(line: 367, column: 24, scope: !1705)
!1710 = !DILocation(line: 369, column: 30, scope: !1705)
!1711 = !DILocation(line: 369, column: 24, scope: !1705)
!1712 = !DILocation(line: 367, column: 21, scope: !1705)
!1713 = !DILocation(line: 369, column: 21, scope: !1705)
!1714 = !DILocation(line: 365, column: 17, scope: !1705)
!1715 = !DILocation(line: 371, column: 11, scope: !1705)
!1716 = !DILocation(line: 376, column: 24, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1705, file: !607, line: 376, column: 15)
!1718 = !DILocation(line: 376, column: 57, scope: !1717)
!1719 = !DILocation(line: 377, column: 19, scope: !1717)
!1720 = !DILocation(line: 376, column: 15, scope: !1705)
!1721 = !DILocation(line: 384, column: 17, scope: !1675)
!1722 = !DILocation(line: 384, column: 55, scope: !1675)
!1723 = !DILocation(line: 384, column: 53, scope: !1675)
!1724 = !DILocation(line: 384, column: 13, scope: !1675)
!1725 = !DILocation(line: 386, column: 24, scope: !1675)
!1726 = !DILocation(line: 386, column: 15, scope: !1675)
!1727 = !DILocation(line: 386, column: 7, scope: !1675)
!1728 = !DILocation(line: 393, column: 44, scope: !1681)
!1729 = !DILocation(line: 393, column: 33, scope: !1681)
!1730 = !DILocation(line: 393, column: 59, scope: !1681)
!1731 = !DILocation(line: 393, column: 20, scope: !1681)
!1732 = !DILocation(line: 394, column: 42, scope: !1681)
!1733 = !DILocation(line: 394, column: 23, scope: !1681)
!1734 = !DILocation(line: 395, column: 32, scope: !1681)
!1735 = !DILocation(line: 395, column: 45, scope: !1681)
!1736 = !DILocation(line: 400, column: 21, scope: !1682)
!1737 = !DILocation(line: 401, column: 19, scope: !1682)
!1738 = !DILocation(line: 402, column: 11, scope: !1682)
!1739 = !DILocation(line: 405, column: 21, scope: !1682)
!1740 = !DILocation(line: 406, column: 22, scope: !1682)
!1741 = !DILocation(line: 406, column: 19, scope: !1682)
!1742 = !DILocation(line: 407, column: 11, scope: !1682)
!1743 = !DILocation(line: 348, column: 45, scope: !1676)
!1744 = distinct !{!1744, !1693, !1745}
!1745 = !DILocation(line: 409, column: 5, scope: !1677)
!1746 = !DILocation(line: 411, column: 7, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1660, file: !607, line: 411, column: 7)
!1748 = !DILocation(line: 411, column: 7, scope: !1660)
!1749 = !DILocation(line: 412, column: 17, scope: !1747)
!1750 = !DILocation(line: 412, column: 5, scope: !1747)
!1751 = !DILocation(line: 413, column: 3, scope: !1660)
!1752 = distinct !DISubprogram(name: "set_program_name", scope: !112, file: !112, line: 39, type: !56, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !108, variables: !1753)
!1753 = !{!1754, !1755, !1756}
!1754 = !DILocalVariable(name: "argv0", arg: 1, scope: !1752, file: !112, line: 39, type: !58)
!1755 = !DILocalVariable(name: "slash", scope: !1752, file: !112, line: 46, type: !58)
!1756 = !DILocalVariable(name: "base", scope: !1752, file: !112, line: 47, type: !58)
!1757 = !DILocation(line: 39, column: 31, scope: !1752)
!1758 = !DILocation(line: 51, column: 13, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1752, file: !112, line: 51, column: 7)
!1760 = !DILocation(line: 51, column: 7, scope: !1752)
!1761 = !DILocation(line: 55, column: 14, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1759, file: !112, line: 52, column: 5)
!1763 = !DILocation(line: 54, column: 7, scope: !1762)
!1764 = !DILocation(line: 56, column: 7, scope: !1762)
!1765 = !DILocation(line: 59, column: 11, scope: !1752)
!1766 = !DILocation(line: 46, column: 15, scope: !1752)
!1767 = !DILocation(line: 60, column: 17, scope: !1752)
!1768 = !DILocation(line: 60, column: 33, scope: !1752)
!1769 = !DILocation(line: 60, column: 11, scope: !1752)
!1770 = !DILocation(line: 47, column: 15, scope: !1752)
!1771 = !DILocation(line: 61, column: 12, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1752, file: !112, line: 61, column: 7)
!1773 = !DILocation(line: 61, column: 20, scope: !1772)
!1774 = !DILocation(line: 61, column: 25, scope: !1772)
!1775 = !DILocation(line: 61, column: 42, scope: !1772)
!1776 = !DILocation(line: 61, column: 28, scope: !1772)
!1777 = !DILocation(line: 61, column: 61, scope: !1772)
!1778 = !DILocation(line: 61, column: 7, scope: !1752)
!1779 = !DILocation(line: 64, column: 11, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !112, line: 64, column: 11)
!1781 = distinct !DILexicalBlock(scope: !1772, file: !112, line: 62, column: 5)
!1782 = !DILocation(line: 64, column: 36, scope: !1780)
!1783 = !DILocation(line: 64, column: 11, scope: !1781)
!1784 = !DILocation(line: 66, column: 24, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1780, file: !112, line: 65, column: 9)
!1786 = !DILocation(line: 70, column: 41, scope: !1785)
!1787 = !DILocation(line: 72, column: 9, scope: !1785)
!1788 = !DILocation(line: 84, column: 16, scope: !1752)
!1789 = !DILocation(line: 90, column: 27, scope: !1752)
!1790 = !DILocation(line: 92, column: 1, scope: !1752)
!1791 = distinct !DISubprogram(name: "clone_quoting_options", scope: !146, file: !146, line: 114, type: !1792, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !1795)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!1794, !1794}
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!1795 = !{!1796, !1797, !1798}
!1796 = !DILocalVariable(name: "o", arg: 1, scope: !1791, file: !146, line: 114, type: !1794)
!1797 = !DILocalVariable(name: "e", scope: !1791, file: !146, line: 116, type: !28)
!1798 = !DILocalVariable(name: "p", scope: !1791, file: !146, line: 117, type: !1794)
!1799 = !DILocation(line: 114, column: 48, scope: !1791)
!1800 = !DILocation(line: 116, column: 11, scope: !1791)
!1801 = !DILocation(line: 116, column: 7, scope: !1791)
!1802 = !DILocation(line: 117, column: 40, scope: !1791)
!1803 = !DILocation(line: 117, column: 31, scope: !1791)
!1804 = !DILocation(line: 117, column: 27, scope: !1791)
!1805 = !DILocation(line: 119, column: 9, scope: !1791)
!1806 = !DILocation(line: 120, column: 3, scope: !1791)
!1807 = distinct !DISubprogram(name: "get_quoting_style", scope: !146, file: !146, line: 125, type: !1808, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !1812)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!5, !1810}
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!1812 = !{!1813}
!1813 = !DILocalVariable(name: "o", arg: 1, scope: !1807, file: !146, line: 125, type: !1810)
!1814 = !DILocation(line: 125, column: 50, scope: !1807)
!1815 = !DILocation(line: 127, column: 11, scope: !1807)
!1816 = !DILocation(line: 127, column: 46, scope: !1807)
!1817 = !{!1818, !712, i64 0}
!1818 = !{!"quoting_options", !712, i64 0, !785, i64 4, !712, i64 8, !711, i64 40, !711, i64 48}
!1819 = !DILocation(line: 127, column: 3, scope: !1807)
!1820 = distinct !DISubprogram(name: "set_quoting_style", scope: !146, file: !146, line: 133, type: !1821, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !1823)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{null, !1794, !5}
!1823 = !{!1824, !1825}
!1824 = !DILocalVariable(name: "o", arg: 1, scope: !1820, file: !146, line: 133, type: !1794)
!1825 = !DILocalVariable(name: "s", arg: 2, scope: !1820, file: !146, line: 133, type: !5)
!1826 = !DILocation(line: 133, column: 44, scope: !1820)
!1827 = !DILocation(line: 133, column: 66, scope: !1820)
!1828 = !DILocation(line: 135, column: 4, scope: !1820)
!1829 = !DILocation(line: 135, column: 39, scope: !1820)
!1830 = !DILocation(line: 135, column: 45, scope: !1820)
!1831 = !DILocation(line: 136, column: 1, scope: !1820)
!1832 = distinct !DISubprogram(name: "set_char_quoting", scope: !146, file: !146, line: 144, type: !1833, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !1835)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!28, !1794, !44, !28}
!1835 = !{!1836, !1837, !1838, !1839, !1840, !1842, !1843}
!1836 = !DILocalVariable(name: "o", arg: 1, scope: !1832, file: !146, line: 144, type: !1794)
!1837 = !DILocalVariable(name: "c", arg: 2, scope: !1832, file: !146, line: 144, type: !44)
!1838 = !DILocalVariable(name: "i", arg: 3, scope: !1832, file: !146, line: 144, type: !28)
!1839 = !DILocalVariable(name: "uc", scope: !1832, file: !146, line: 146, type: !539)
!1840 = !DILocalVariable(name: "p", scope: !1832, file: !146, line: 147, type: !1841)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!1842 = !DILocalVariable(name: "shift", scope: !1832, file: !146, line: 149, type: !28)
!1843 = !DILocalVariable(name: "r", scope: !1832, file: !146, line: 150, type: !28)
!1844 = !DILocation(line: 144, column: 43, scope: !1832)
!1845 = !DILocation(line: 144, column: 51, scope: !1832)
!1846 = !DILocation(line: 144, column: 58, scope: !1832)
!1847 = !DILocation(line: 146, column: 17, scope: !1832)
!1848 = !DILocation(line: 148, column: 6, scope: !1832)
!1849 = !DILocation(line: 148, column: 62, scope: !1832)
!1850 = !DILocation(line: 148, column: 57, scope: !1832)
!1851 = !DILocation(line: 147, column: 17, scope: !1832)
!1852 = !DILocation(line: 149, column: 18, scope: !1832)
!1853 = !DILocation(line: 149, column: 15, scope: !1832)
!1854 = !DILocation(line: 149, column: 7, scope: !1832)
!1855 = !DILocation(line: 150, column: 12, scope: !1832)
!1856 = !DILocation(line: 150, column: 15, scope: !1832)
!1857 = !DILocation(line: 150, column: 25, scope: !1832)
!1858 = !DILocation(line: 150, column: 7, scope: !1832)
!1859 = !DILocation(line: 151, column: 13, scope: !1832)
!1860 = !DILocation(line: 151, column: 18, scope: !1832)
!1861 = !DILocation(line: 151, column: 23, scope: !1832)
!1862 = !DILocation(line: 151, column: 6, scope: !1832)
!1863 = !DILocation(line: 152, column: 3, scope: !1832)
!1864 = distinct !DISubprogram(name: "set_quoting_flags", scope: !146, file: !146, line: 160, type: !1865, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !1867)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!28, !1794, !28}
!1867 = !{!1868, !1869, !1870}
!1868 = !DILocalVariable(name: "o", arg: 1, scope: !1864, file: !146, line: 160, type: !1794)
!1869 = !DILocalVariable(name: "i", arg: 2, scope: !1864, file: !146, line: 160, type: !28)
!1870 = !DILocalVariable(name: "r", scope: !1864, file: !146, line: 162, type: !28)
!1871 = !DILocation(line: 160, column: 44, scope: !1864)
!1872 = !DILocation(line: 160, column: 51, scope: !1864)
!1873 = !DILocation(line: 163, column: 8, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1864, file: !146, line: 163, column: 7)
!1875 = !DILocation(line: 163, column: 7, scope: !1864)
!1876 = !DILocation(line: 165, column: 10, scope: !1864)
!1877 = !{!1818, !785, i64 4}
!1878 = !DILocation(line: 162, column: 7, scope: !1864)
!1879 = !DILocation(line: 166, column: 12, scope: !1864)
!1880 = !DILocation(line: 167, column: 3, scope: !1864)
!1881 = distinct !DISubprogram(name: "set_custom_quoting", scope: !146, file: !146, line: 171, type: !1882, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !1884)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{null, !1794, !58, !58}
!1884 = !{!1885, !1886, !1887}
!1885 = !DILocalVariable(name: "o", arg: 1, scope: !1881, file: !146, line: 171, type: !1794)
!1886 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1881, file: !146, line: 172, type: !58)
!1887 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1881, file: !146, line: 172, type: !58)
!1888 = !DILocation(line: 171, column: 45, scope: !1881)
!1889 = !DILocation(line: 172, column: 33, scope: !1881)
!1890 = !DILocation(line: 172, column: 57, scope: !1881)
!1891 = !DILocation(line: 174, column: 8, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1881, file: !146, line: 174, column: 7)
!1893 = !DILocation(line: 174, column: 7, scope: !1881)
!1894 = !DILocation(line: 176, column: 6, scope: !1881)
!1895 = !DILocation(line: 176, column: 12, scope: !1881)
!1896 = !DILocation(line: 177, column: 8, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1881, file: !146, line: 177, column: 7)
!1898 = !DILocation(line: 177, column: 23, scope: !1897)
!1899 = !DILocation(line: 177, column: 19, scope: !1897)
!1900 = !DILocation(line: 178, column: 5, scope: !1897)
!1901 = !DILocation(line: 179, column: 6, scope: !1881)
!1902 = !DILocation(line: 179, column: 17, scope: !1881)
!1903 = !{!1818, !711, i64 40}
!1904 = !DILocation(line: 180, column: 6, scope: !1881)
!1905 = !DILocation(line: 180, column: 18, scope: !1881)
!1906 = !{!1818, !711, i64 48}
!1907 = !DILocation(line: 181, column: 1, scope: !1881)
!1908 = distinct !DISubprogram(name: "quotearg_buffer", scope: !146, file: !146, line: 776, type: !1909, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !1911)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!140, !43, !140, !58, !140, !1810}
!1911 = !{!1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919}
!1912 = !DILocalVariable(name: "buffer", arg: 1, scope: !1908, file: !146, line: 776, type: !43)
!1913 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1908, file: !146, line: 776, type: !140)
!1914 = !DILocalVariable(name: "arg", arg: 3, scope: !1908, file: !146, line: 777, type: !58)
!1915 = !DILocalVariable(name: "argsize", arg: 4, scope: !1908, file: !146, line: 777, type: !140)
!1916 = !DILocalVariable(name: "o", arg: 5, scope: !1908, file: !146, line: 778, type: !1810)
!1917 = !DILocalVariable(name: "p", scope: !1908, file: !146, line: 780, type: !1810)
!1918 = !DILocalVariable(name: "e", scope: !1908, file: !146, line: 781, type: !28)
!1919 = !DILocalVariable(name: "r", scope: !1908, file: !146, line: 782, type: !140)
!1920 = !DILocation(line: 776, column: 24, scope: !1908)
!1921 = !DILocation(line: 776, column: 39, scope: !1908)
!1922 = !DILocation(line: 777, column: 30, scope: !1908)
!1923 = !DILocation(line: 777, column: 42, scope: !1908)
!1924 = !DILocation(line: 778, column: 48, scope: !1908)
!1925 = !DILocation(line: 780, column: 37, scope: !1908)
!1926 = !DILocation(line: 780, column: 33, scope: !1908)
!1927 = !DILocation(line: 781, column: 11, scope: !1908)
!1928 = !DILocation(line: 781, column: 7, scope: !1908)
!1929 = !DILocation(line: 783, column: 43, scope: !1908)
!1930 = !DILocation(line: 783, column: 53, scope: !1908)
!1931 = !DILocation(line: 783, column: 60, scope: !1908)
!1932 = !DILocation(line: 784, column: 43, scope: !1908)
!1933 = !DILocation(line: 784, column: 58, scope: !1908)
!1934 = !DILocation(line: 782, column: 14, scope: !1908)
!1935 = !DILocation(line: 782, column: 10, scope: !1908)
!1936 = !DILocation(line: 785, column: 9, scope: !1908)
!1937 = !DILocation(line: 786, column: 3, scope: !1908)
!1938 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !146, file: !146, line: 248, type: !1939, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !1943)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!140, !43, !140, !58, !140, !5, !28, !1941, !58, !58}
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!1943 = !{!1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1968, !1969, !1970, !1971, !1972, !1975, !1976, !1994, !1997, !1998, !2005}
!1944 = !DILocalVariable(name: "buffer", arg: 1, scope: !1938, file: !146, line: 248, type: !43)
!1945 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1938, file: !146, line: 248, type: !140)
!1946 = !DILocalVariable(name: "arg", arg: 3, scope: !1938, file: !146, line: 249, type: !58)
!1947 = !DILocalVariable(name: "argsize", arg: 4, scope: !1938, file: !146, line: 249, type: !140)
!1948 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1938, file: !146, line: 250, type: !5)
!1949 = !DILocalVariable(name: "flags", arg: 6, scope: !1938, file: !146, line: 250, type: !28)
!1950 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1938, file: !146, line: 251, type: !1941)
!1951 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1938, file: !146, line: 252, type: !58)
!1952 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1938, file: !146, line: 253, type: !58)
!1953 = !DILocalVariable(name: "i", scope: !1938, file: !146, line: 255, type: !140)
!1954 = !DILocalVariable(name: "len", scope: !1938, file: !146, line: 256, type: !140)
!1955 = !DILocalVariable(name: "orig_buffersize", scope: !1938, file: !146, line: 257, type: !140)
!1956 = !DILocalVariable(name: "quote_string", scope: !1938, file: !146, line: 258, type: !58)
!1957 = !DILocalVariable(name: "quote_string_len", scope: !1938, file: !146, line: 259, type: !140)
!1958 = !DILocalVariable(name: "backslash_escapes", scope: !1938, file: !146, line: 260, type: !98)
!1959 = !DILocalVariable(name: "unibyte_locale", scope: !1938, file: !146, line: 261, type: !98)
!1960 = !DILocalVariable(name: "elide_outer_quotes", scope: !1938, file: !146, line: 262, type: !98)
!1961 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1938, file: !146, line: 263, type: !98)
!1962 = !DILocalVariable(name: "encountered_single_quote", scope: !1938, file: !146, line: 264, type: !98)
!1963 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1938, file: !146, line: 265, type: !98)
!1964 = !DILocalVariable(name: "c", scope: !1965, file: !146, line: 394, type: !539)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !146, line: 393, column: 5)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !146, line: 392, column: 3)
!1967 = distinct !DILexicalBlock(scope: !1938, file: !146, line: 392, column: 3)
!1968 = !DILocalVariable(name: "esc", scope: !1965, file: !146, line: 395, type: !539)
!1969 = !DILocalVariable(name: "is_right_quote", scope: !1965, file: !146, line: 396, type: !98)
!1970 = !DILocalVariable(name: "escaping", scope: !1965, file: !146, line: 397, type: !98)
!1971 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1965, file: !146, line: 398, type: !98)
!1972 = !DILocalVariable(name: "m", scope: !1973, file: !146, line: 602, type: !140)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !146, line: 600, column: 11)
!1974 = distinct !DILexicalBlock(scope: !1965, file: !146, line: 418, column: 9)
!1975 = !DILocalVariable(name: "printable", scope: !1973, file: !146, line: 604, type: !98)
!1976 = !DILocalVariable(name: "mbstate", scope: !1977, file: !146, line: 613, type: !1979)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !146, line: 612, column: 15)
!1978 = distinct !DILexicalBlock(scope: !1973, file: !146, line: 606, column: 17)
!1979 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1980, line: 6, baseType: !1981)
!1980 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1981 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1982, line: 21, baseType: !1983)
!1982 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1982, line: 13, size: 64, elements: !1984)
!1984 = !{!1985, !1986}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1983, file: !1982, line: 15, baseType: !28, size: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1983, file: !1982, line: 20, baseType: !1987, size: 32, offset: 32)
!1987 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1983, file: !1982, line: 16, size: 32, elements: !1988)
!1988 = !{!1989, !1990}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1987, file: !1982, line: 18, baseType: !48, size: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1987, file: !1982, line: 19, baseType: !1991, size: 32)
!1991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 32, elements: !1992)
!1992 = !{!1993}
!1993 = !DISubrange(count: 4)
!1994 = !DILocalVariable(name: "w", scope: !1995, file: !146, line: 623, type: !1996)
!1995 = distinct !DILexicalBlock(scope: !1977, file: !146, line: 622, column: 19)
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !141, line: 90, baseType: !28)
!1997 = !DILocalVariable(name: "bytes", scope: !1995, file: !146, line: 624, type: !140)
!1998 = !DILocalVariable(name: "j", scope: !1999, file: !146, line: 649, type: !140)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !146, line: 648, column: 27)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !146, line: 646, column: 29)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !146, line: 641, column: 23)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !146, line: 633, column: 30)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !146, line: 628, column: 30)
!2004 = distinct !DILexicalBlock(scope: !1995, file: !146, line: 626, column: 25)
!2005 = !DILocalVariable(name: "ilim", scope: !2006, file: !146, line: 676, type: !140)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !146, line: 673, column: 15)
!2007 = distinct !DILexicalBlock(scope: !1973, file: !146, line: 672, column: 17)
!2008 = !DILocation(line: 248, column: 33, scope: !1938)
!2009 = !DILocation(line: 248, column: 48, scope: !1938)
!2010 = !DILocation(line: 249, column: 39, scope: !1938)
!2011 = !DILocation(line: 249, column: 51, scope: !1938)
!2012 = !DILocation(line: 250, column: 46, scope: !1938)
!2013 = !DILocation(line: 250, column: 65, scope: !1938)
!2014 = !DILocation(line: 251, column: 47, scope: !1938)
!2015 = !DILocation(line: 252, column: 39, scope: !1938)
!2016 = !DILocation(line: 253, column: 39, scope: !1938)
!2017 = !DILocation(line: 256, column: 10, scope: !1938)
!2018 = !DILocation(line: 257, column: 10, scope: !1938)
!2019 = !DILocation(line: 258, column: 15, scope: !1938)
!2020 = !DILocation(line: 259, column: 10, scope: !1938)
!2021 = !DILocation(line: 260, column: 8, scope: !1938)
!2022 = !DILocation(line: 261, column: 25, scope: !1938)
!2023 = !DILocation(line: 261, column: 36, scope: !1938)
!2024 = !DILocation(line: 262, column: 8, scope: !1938)
!2025 = !DILocation(line: 263, column: 8, scope: !1938)
!2026 = !DILocation(line: 264, column: 8, scope: !1938)
!2027 = !DILocation(line: 265, column: 8, scope: !1938)
!2028 = !DILocation(line: 265, column: 3, scope: !1938)
!2029 = !DILocation(line: 308, column: 3, scope: !1938)
!2030 = !DILocation(line: 315, column: 11, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1938, file: !146, line: 309, column: 5)
!2032 = !DILocation(line: 315, column: 12, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2031, file: !146, line: 315, column: 11)
!2034 = !DILocation(line: 316, column: 9, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !146, line: 316, column: 9)
!2036 = distinct !DILexicalBlock(scope: !2033, file: !146, line: 316, column: 9)
!2037 = !DILocation(line: 316, column: 9, scope: !2036)
!2038 = !DILocation(line: 354, column: 26, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !146, line: 332, column: 11)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !146, line: 331, column: 13)
!2041 = distinct !DILexicalBlock(scope: !2031, file: !146, line: 330, column: 7)
!2042 = !DILocation(line: 355, column: 27, scope: !2039)
!2043 = !DILocation(line: 356, column: 11, scope: !2039)
!2044 = !DILocation(line: 357, column: 14, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2041, file: !146, line: 357, column: 13)
!2046 = !DILocation(line: 357, column: 13, scope: !2041)
!2047 = !DILocation(line: 358, column: 43, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !146, line: 358, column: 11)
!2049 = distinct !DILexicalBlock(scope: !2045, file: !146, line: 358, column: 11)
!2050 = !DILocation(line: 358, column: 11, scope: !2049)
!2051 = !DILocation(line: 359, column: 13, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !146, line: 359, column: 13)
!2053 = distinct !DILexicalBlock(scope: !2048, file: !146, line: 359, column: 13)
!2054 = !DILocation(line: 359, column: 13, scope: !2053)
!2055 = !DILocation(line: 358, column: 70, scope: !2048)
!2056 = distinct !{!2056, !2050, !2057}
!2057 = !DILocation(line: 359, column: 13, scope: !2049)
!2058 = !DILocation(line: 362, column: 28, scope: !2041)
!2059 = !DILocation(line: 364, column: 7, scope: !2031)
!2060 = !DILocation(line: 367, column: 7, scope: !2031)
!2061 = !DILocation(line: 370, column: 7, scope: !2031)
!2062 = !DILocation(line: 373, column: 12, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2031, file: !146, line: 373, column: 11)
!2064 = !DILocation(line: 373, column: 11, scope: !2031)
!2065 = !DILocation(line: 378, column: 12, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2031, file: !146, line: 378, column: 11)
!2067 = !DILocation(line: 378, column: 11, scope: !2031)
!2068 = !DILocation(line: 379, column: 9, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !146, line: 379, column: 9)
!2070 = distinct !DILexicalBlock(scope: !2066, file: !146, line: 379, column: 9)
!2071 = !DILocation(line: 379, column: 9, scope: !2070)
!2072 = !DILocation(line: 386, column: 7, scope: !2031)
!2073 = !DILocation(line: 389, column: 7, scope: !2031)
!2074 = !DILocation(line: 255, column: 10, scope: !1938)
!2075 = !DILocation(line: 392, column: 8, scope: !1967)
!2076 = !DILocation(line: 392, column: 27, scope: !1966)
!2077 = !DILocation(line: 392, column: 19, scope: !1966)
!2078 = !DILocation(line: 392, column: 60, scope: !1966)
!2079 = !DILocation(line: 392, column: 3, scope: !1967)
!2080 = !DILocation(line: 392, column: 41, scope: !1966)
!2081 = !DILocation(line: 392, column: 48, scope: !1966)
!2082 = !DILocation(line: 396, column: 12, scope: !1965)
!2083 = !DILocation(line: 397, column: 12, scope: !1965)
!2084 = !DILocation(line: 398, column: 12, scope: !1965)
!2085 = !DILocation(line: 401, column: 11, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !1965, file: !146, line: 400, column: 11)
!2087 = !DILocation(line: 403, column: 17, scope: !2086)
!2088 = !DILocation(line: 404, column: 39, scope: !2086)
!2089 = !DILocation(line: 408, column: 32, scope: !2086)
!2090 = !DILocation(line: 404, column: 19, scope: !2086)
!2091 = !DILocation(line: 404, column: 15, scope: !2086)
!2092 = !DILocation(line: 409, column: 11, scope: !2086)
!2093 = !DILocation(line: 409, column: 26, scope: !2086)
!2094 = !DILocation(line: 409, column: 14, scope: !2086)
!2095 = !DILocation(line: 409, column: 63, scope: !2086)
!2096 = !DILocation(line: 400, column: 11, scope: !1965)
!2097 = !DILocation(line: 416, column: 11, scope: !1965)
!2098 = !DILocation(line: 394, column: 21, scope: !1965)
!2099 = !DILocation(line: 417, column: 7, scope: !1965)
!2100 = !DILocation(line: 420, column: 15, scope: !1974)
!2101 = !DILocation(line: 422, column: 15, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !146, line: 422, column: 15)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !146, line: 421, column: 13)
!2104 = distinct !DILexicalBlock(scope: !1974, file: !146, line: 420, column: 15)
!2105 = !DILocation(line: 422, column: 15, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2102, file: !146, line: 422, column: 15)
!2107 = !DILocation(line: 422, column: 15, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !146, line: 422, column: 15)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !146, line: 422, column: 15)
!2110 = distinct !DILexicalBlock(scope: !2106, file: !146, line: 422, column: 15)
!2111 = !DILocation(line: 422, column: 15, scope: !2109)
!2112 = !DILocation(line: 422, column: 15, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !146, line: 422, column: 15)
!2114 = distinct !DILexicalBlock(scope: !2110, file: !146, line: 422, column: 15)
!2115 = !DILocation(line: 422, column: 15, scope: !2114)
!2116 = !DILocation(line: 422, column: 15, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !146, line: 422, column: 15)
!2118 = distinct !DILexicalBlock(scope: !2110, file: !146, line: 422, column: 15)
!2119 = !DILocation(line: 422, column: 15, scope: !2118)
!2120 = !DILocation(line: 422, column: 15, scope: !2110)
!2121 = !DILocation(line: 422, column: 15, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !146, line: 422, column: 15)
!2123 = distinct !DILexicalBlock(scope: !2102, file: !146, line: 422, column: 15)
!2124 = !DILocation(line: 422, column: 15, scope: !2123)
!2125 = !DILocation(line: 430, column: 19, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2103, file: !146, line: 429, column: 19)
!2127 = !DILocation(line: 430, column: 24, scope: !2126)
!2128 = !DILocation(line: 430, column: 28, scope: !2126)
!2129 = !DILocation(line: 430, column: 38, scope: !2126)
!2130 = !DILocation(line: 430, column: 48, scope: !2126)
!2131 = !DILocation(line: 430, column: 59, scope: !2126)
!2132 = !DILocation(line: 432, column: 19, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !146, line: 432, column: 19)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !146, line: 432, column: 19)
!2135 = distinct !DILexicalBlock(scope: !2126, file: !146, line: 431, column: 17)
!2136 = !DILocation(line: 432, column: 19, scope: !2134)
!2137 = !DILocation(line: 433, column: 19, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !146, line: 433, column: 19)
!2139 = distinct !DILexicalBlock(scope: !2135, file: !146, line: 433, column: 19)
!2140 = !DILocation(line: 433, column: 19, scope: !2139)
!2141 = !DILocation(line: 434, column: 17, scope: !2135)
!2142 = !DILocation(line: 441, column: 20, scope: !2104)
!2143 = !DILocation(line: 446, column: 11, scope: !1974)
!2144 = !DILocation(line: 449, column: 19, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !1974, file: !146, line: 447, column: 13)
!2146 = !DILocation(line: 455, column: 19, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2145, file: !146, line: 454, column: 19)
!2148 = !DILocation(line: 455, column: 24, scope: !2147)
!2149 = !DILocation(line: 455, column: 28, scope: !2147)
!2150 = !DILocation(line: 455, column: 38, scope: !2147)
!2151 = !DILocation(line: 455, column: 47, scope: !2147)
!2152 = !DILocation(line: 455, column: 41, scope: !2147)
!2153 = !DILocation(line: 455, column: 52, scope: !2147)
!2154 = !DILocation(line: 454, column: 19, scope: !2145)
!2155 = !DILocation(line: 456, column: 25, scope: !2147)
!2156 = !DILocation(line: 456, column: 17, scope: !2147)
!2157 = !DILocation(line: 463, column: 25, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2147, file: !146, line: 457, column: 19)
!2159 = !DILocation(line: 467, column: 21, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !146, line: 467, column: 21)
!2161 = distinct !DILexicalBlock(scope: !2158, file: !146, line: 467, column: 21)
!2162 = !DILocation(line: 467, column: 21, scope: !2161)
!2163 = !DILocation(line: 468, column: 21, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !146, line: 468, column: 21)
!2165 = distinct !DILexicalBlock(scope: !2158, file: !146, line: 468, column: 21)
!2166 = !DILocation(line: 468, column: 21, scope: !2165)
!2167 = !DILocation(line: 469, column: 21, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !146, line: 469, column: 21)
!2169 = distinct !DILexicalBlock(scope: !2158, file: !146, line: 469, column: 21)
!2170 = !DILocation(line: 469, column: 21, scope: !2169)
!2171 = !DILocation(line: 470, column: 21, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !146, line: 470, column: 21)
!2173 = distinct !DILexicalBlock(scope: !2158, file: !146, line: 470, column: 21)
!2174 = !DILocation(line: 470, column: 21, scope: !2173)
!2175 = !DILocation(line: 471, column: 21, scope: !2158)
!2176 = !DILocation(line: 395, column: 21, scope: !1965)
!2177 = !DILocation(line: 484, column: 31, scope: !1974)
!2178 = !DILocation(line: 485, column: 31, scope: !1974)
!2179 = !DILocation(line: 487, column: 31, scope: !1974)
!2180 = !DILocation(line: 488, column: 31, scope: !1974)
!2181 = !DILocation(line: 489, column: 31, scope: !1974)
!2182 = !DILocation(line: 492, column: 15, scope: !1974)
!2183 = !DILocation(line: 494, column: 19, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !146, line: 493, column: 13)
!2185 = distinct !DILexicalBlock(scope: !1974, file: !146, line: 492, column: 15)
!2186 = !DILocation(line: 501, column: 33, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !1974, file: !146, line: 501, column: 15)
!2188 = !DILocation(line: 506, column: 15, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !1974, file: !146, line: 505, column: 15)
!2190 = !DILocation(line: 510, column: 15, scope: !1974)
!2191 = !DILocation(line: 518, column: 26, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !1974, file: !146, line: 518, column: 15)
!2193 = !DILocation(line: 518, column: 15, scope: !1974)
!2194 = !DILocation(line: 518, column: 40, scope: !2192)
!2195 = !DILocation(line: 518, column: 47, scope: !2192)
!2196 = !DILocation(line: 522, column: 17, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !1974, file: !146, line: 522, column: 15)
!2198 = !DILocation(line: 518, column: 18, scope: !2192)
!2199 = !DILocation(line: 518, column: 65, scope: !2192)
!2200 = !DILocation(line: 522, column: 15, scope: !1974)
!2201 = !DILocation(line: 526, column: 11, scope: !1974)
!2202 = !DILocation(line: 541, column: 15, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !1974, file: !146, line: 540, column: 15)
!2204 = !DILocation(line: 548, column: 15, scope: !1974)
!2205 = !DILocation(line: 550, column: 19, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !146, line: 549, column: 13)
!2207 = distinct !DILexicalBlock(scope: !1974, file: !146, line: 548, column: 15)
!2208 = !DILocation(line: 553, column: 19, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2206, file: !146, line: 553, column: 19)
!2210 = !DILocation(line: 553, column: 35, scope: !2209)
!2211 = !DILocation(line: 553, column: 30, scope: !2209)
!2212 = !DILocation(line: 562, column: 15, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !146, line: 562, column: 15)
!2214 = distinct !DILexicalBlock(scope: !2206, file: !146, line: 562, column: 15)
!2215 = !DILocation(line: 562, column: 15, scope: !2214)
!2216 = !DILocation(line: 563, column: 15, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !146, line: 563, column: 15)
!2218 = distinct !DILexicalBlock(scope: !2206, file: !146, line: 563, column: 15)
!2219 = !DILocation(line: 563, column: 15, scope: !2218)
!2220 = !DILocation(line: 564, column: 15, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !146, line: 564, column: 15)
!2222 = distinct !DILexicalBlock(scope: !2206, file: !146, line: 564, column: 15)
!2223 = !DILocation(line: 564, column: 15, scope: !2222)
!2224 = !DILocation(line: 566, column: 13, scope: !2206)
!2225 = !DILocation(line: 606, column: 17, scope: !1973)
!2226 = !DILocation(line: 602, column: 20, scope: !1973)
!2227 = !DILocation(line: 609, column: 29, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !1978, file: !146, line: 607, column: 15)
!2229 = !{!1117, !1117, i64 0}
!2230 = !DILocation(line: 609, column: 27, scope: !2228)
!2231 = !DILocation(line: 604, column: 18, scope: !1973)
!2232 = !DILocation(line: 610, column: 15, scope: !2228)
!2233 = !DILocation(line: 613, column: 17, scope: !1977)
!2234 = !DILocation(line: 614, column: 17, scope: !1977)
!2235 = !DILocation(line: 618, column: 29, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !1977, file: !146, line: 618, column: 21)
!2237 = !DILocation(line: 618, column: 21, scope: !1977)
!2238 = !DILocation(line: 619, column: 29, scope: !2236)
!2239 = !DILocation(line: 619, column: 19, scope: !2236)
!2240 = !DILocation(line: 621, column: 17, scope: !1977)
!2241 = distinct !{!2241, !2240, !2242}
!2242 = !DILocation(line: 667, column: 44, scope: !1977)
!2243 = !DILocation(line: 623, column: 21, scope: !1995)
!2244 = !DILocation(line: 624, column: 56, scope: !1995)
!2245 = !DILocation(line: 624, column: 50, scope: !1995)
!2246 = !DILocation(line: 625, column: 53, scope: !1995)
!2247 = !DILocation(line: 613, column: 27, scope: !1977)
!2248 = !DILocation(line: 623, column: 29, scope: !1995)
!2249 = !DILocation(line: 624, column: 36, scope: !1995)
!2250 = !DILocation(line: 624, column: 28, scope: !1995)
!2251 = !DILocation(line: 626, column: 25, scope: !1995)
!2252 = !DILocation(line: 636, column: 38, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2002, file: !146, line: 634, column: 23)
!2254 = !DILocation(line: 636, column: 48, scope: !2253)
!2255 = !DILocation(line: 636, column: 51, scope: !2253)
!2256 = !DILocation(line: 636, column: 25, scope: !2253)
!2257 = !DILocation(line: 637, column: 28, scope: !2253)
!2258 = !DILocation(line: 636, column: 34, scope: !2253)
!2259 = distinct !{!2259, !2256, !2257}
!2260 = !DILocation(line: 650, column: 43, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !146, line: 650, column: 29)
!2262 = distinct !DILexicalBlock(scope: !1999, file: !146, line: 650, column: 29)
!2263 = !DILocation(line: 647, column: 29, scope: !2000)
!2264 = !DILocation(line: 649, column: 36, scope: !1999)
!2265 = !DILocation(line: 651, column: 49, scope: !2261)
!2266 = !DILocation(line: 651, column: 39, scope: !2261)
!2267 = !DILocation(line: 651, column: 31, scope: !2261)
!2268 = !DILocation(line: 650, column: 53, scope: !2261)
!2269 = !DILocation(line: 650, column: 29, scope: !2262)
!2270 = distinct !{!2270, !2269, !2271}
!2271 = !DILocation(line: 659, column: 33, scope: !2262)
!2272 = !DILocation(line: 666, column: 19, scope: !1977)
!2273 = !DILocation(line: 662, column: 41, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2001, file: !146, line: 662, column: 29)
!2275 = !DILocation(line: 662, column: 31, scope: !2274)
!2276 = !DILocation(line: 662, column: 29, scope: !2001)
!2277 = !DILocation(line: 664, column: 27, scope: !2001)
!2278 = !DILocation(line: 667, column: 26, scope: !1977)
!2279 = !DILocation(line: 667, column: 24, scope: !1977)
!2280 = !DILocation(line: 666, column: 19, scope: !1995)
!2281 = !DILocation(line: 668, column: 15, scope: !1978)
!2282 = !DILocation(line: 670, column: 40, scope: !1973)
!2283 = !DILocation(line: 672, column: 19, scope: !2007)
!2284 = !DILocation(line: 672, column: 45, scope: !2007)
!2285 = !DILocation(line: 672, column: 23, scope: !2007)
!2286 = !DILocation(line: 676, column: 33, scope: !2006)
!2287 = !DILocation(line: 676, column: 24, scope: !2006)
!2288 = !DILocation(line: 678, column: 17, scope: !2006)
!2289 = !DILocation(line: 680, column: 43, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !146, line: 680, column: 25)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !146, line: 679, column: 19)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !146, line: 678, column: 17)
!2293 = distinct !DILexicalBlock(scope: !2006, file: !146, line: 678, column: 17)
!2294 = !DILocation(line: 682, column: 25, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !146, line: 682, column: 25)
!2296 = distinct !DILexicalBlock(scope: !2290, file: !146, line: 681, column: 23)
!2297 = !DILocation(line: 682, column: 25, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2295, file: !146, line: 682, column: 25)
!2299 = !DILocation(line: 682, column: 25, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !146, line: 682, column: 25)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !146, line: 682, column: 25)
!2302 = distinct !DILexicalBlock(scope: !2298, file: !146, line: 682, column: 25)
!2303 = !DILocation(line: 682, column: 25, scope: !2301)
!2304 = !DILocation(line: 682, column: 25, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !146, line: 682, column: 25)
!2306 = distinct !DILexicalBlock(scope: !2302, file: !146, line: 682, column: 25)
!2307 = !DILocation(line: 682, column: 25, scope: !2306)
!2308 = !DILocation(line: 682, column: 25, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !146, line: 682, column: 25)
!2310 = distinct !DILexicalBlock(scope: !2302, file: !146, line: 682, column: 25)
!2311 = !DILocation(line: 682, column: 25, scope: !2310)
!2312 = !DILocation(line: 682, column: 25, scope: !2302)
!2313 = !DILocation(line: 682, column: 25, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !146, line: 682, column: 25)
!2315 = distinct !DILexicalBlock(scope: !2295, file: !146, line: 682, column: 25)
!2316 = !DILocation(line: 682, column: 25, scope: !2315)
!2317 = !DILocation(line: 683, column: 25, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !146, line: 683, column: 25)
!2319 = distinct !DILexicalBlock(scope: !2296, file: !146, line: 683, column: 25)
!2320 = !DILocation(line: 683, column: 25, scope: !2319)
!2321 = !DILocation(line: 684, column: 25, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !146, line: 684, column: 25)
!2323 = distinct !DILexicalBlock(scope: !2296, file: !146, line: 684, column: 25)
!2324 = !DILocation(line: 684, column: 25, scope: !2323)
!2325 = !DILocation(line: 685, column: 38, scope: !2296)
!2326 = !DILocation(line: 685, column: 33, scope: !2296)
!2327 = !DILocation(line: 686, column: 23, scope: !2296)
!2328 = !DILocation(line: 687, column: 30, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2290, file: !146, line: 687, column: 30)
!2330 = !DILocation(line: 687, column: 30, scope: !2290)
!2331 = !DILocation(line: 689, column: 25, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !146, line: 689, column: 25)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !146, line: 689, column: 25)
!2334 = distinct !DILexicalBlock(scope: !2329, file: !146, line: 688, column: 23)
!2335 = !DILocation(line: 689, column: 25, scope: !2333)
!2336 = !DILocation(line: 691, column: 23, scope: !2334)
!2337 = !DILocation(line: 692, column: 35, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2291, file: !146, line: 692, column: 25)
!2339 = !DILocation(line: 692, column: 30, scope: !2338)
!2340 = !DILocation(line: 692, column: 25, scope: !2291)
!2341 = !DILocation(line: 694, column: 21, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !146, line: 694, column: 21)
!2343 = distinct !DILexicalBlock(scope: !2291, file: !146, line: 694, column: 21)
!2344 = !DILocation(line: 694, column: 21, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !146, line: 694, column: 21)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !146, line: 694, column: 21)
!2347 = distinct !DILexicalBlock(scope: !2342, file: !146, line: 694, column: 21)
!2348 = !DILocation(line: 694, column: 21, scope: !2346)
!2349 = !DILocation(line: 694, column: 21, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !146, line: 694, column: 21)
!2351 = distinct !DILexicalBlock(scope: !2347, file: !146, line: 694, column: 21)
!2352 = !DILocation(line: 694, column: 21, scope: !2351)
!2353 = !DILocation(line: 694, column: 21, scope: !2347)
!2354 = !DILocation(line: 695, column: 21, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !146, line: 695, column: 21)
!2356 = distinct !DILexicalBlock(scope: !2291, file: !146, line: 695, column: 21)
!2357 = !DILocation(line: 695, column: 21, scope: !2356)
!2358 = !DILocation(line: 696, column: 25, scope: !2291)
!2359 = !DILocation(line: 678, column: 17, scope: !2292)
!2360 = distinct !{!2360, !2361, !2362}
!2361 = !DILocation(line: 678, column: 17, scope: !2293)
!2362 = !DILocation(line: 697, column: 19, scope: !2293)
!2363 = !DILocation(line: 704, column: 34, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !1965, file: !146, line: 704, column: 11)
!2365 = !DILocation(line: 706, column: 14, scope: !2364)
!2366 = !DILocation(line: 707, column: 14, scope: !2364)
!2367 = !DILocation(line: 707, column: 35, scope: !2364)
!2368 = !DILocation(line: 707, column: 17, scope: !2364)
!2369 = !DILocation(line: 707, column: 53, scope: !2364)
!2370 = !DILocation(line: 707, column: 47, scope: !2364)
!2371 = !DILocation(line: 707, column: 65, scope: !2364)
!2372 = !DILocation(line: 708, column: 15, scope: !2364)
!2373 = !DILocation(line: 708, column: 11, scope: !2364)
!2374 = !DILocation(line: 704, column: 11, scope: !1965)
!2375 = !DILocation(line: 712, column: 7, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !1965, file: !146, line: 712, column: 7)
!2377 = !DILocation(line: 712, column: 7, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2376, file: !146, line: 712, column: 7)
!2379 = !DILocation(line: 712, column: 7, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !146, line: 712, column: 7)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !146, line: 712, column: 7)
!2382 = distinct !DILexicalBlock(scope: !2378, file: !146, line: 712, column: 7)
!2383 = !DILocation(line: 712, column: 7, scope: !2381)
!2384 = !DILocation(line: 712, column: 7, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !146, line: 712, column: 7)
!2386 = distinct !DILexicalBlock(scope: !2382, file: !146, line: 712, column: 7)
!2387 = !DILocation(line: 712, column: 7, scope: !2386)
!2388 = !DILocation(line: 712, column: 7, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !146, line: 712, column: 7)
!2390 = distinct !DILexicalBlock(scope: !2382, file: !146, line: 712, column: 7)
!2391 = !DILocation(line: 712, column: 7, scope: !2390)
!2392 = !DILocation(line: 712, column: 7, scope: !2382)
!2393 = !DILocation(line: 712, column: 7, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !146, line: 712, column: 7)
!2395 = distinct !DILexicalBlock(scope: !2376, file: !146, line: 712, column: 7)
!2396 = !DILocation(line: 712, column: 7, scope: !2395)
!2397 = !DILocation(line: 715, column: 7, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !146, line: 715, column: 7)
!2399 = distinct !DILexicalBlock(scope: !1965, file: !146, line: 715, column: 7)
!2400 = !DILocation(line: 715, column: 7, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !146, line: 715, column: 7)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !146, line: 715, column: 7)
!2403 = distinct !DILexicalBlock(scope: !2398, file: !146, line: 715, column: 7)
!2404 = !DILocation(line: 715, column: 7, scope: !2402)
!2405 = !DILocation(line: 715, column: 7, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !146, line: 715, column: 7)
!2407 = distinct !DILexicalBlock(scope: !2403, file: !146, line: 715, column: 7)
!2408 = !DILocation(line: 715, column: 7, scope: !2407)
!2409 = !DILocation(line: 715, column: 7, scope: !2403)
!2410 = !DILocation(line: 716, column: 7, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !146, line: 716, column: 7)
!2412 = distinct !DILexicalBlock(scope: !1965, file: !146, line: 716, column: 7)
!2413 = !DILocation(line: 716, column: 7, scope: !2412)
!2414 = !DILocation(line: 718, column: 13, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !1965, file: !146, line: 718, column: 11)
!2416 = !DILocation(line: 718, column: 11, scope: !1965)
!2417 = !DILocation(line: 720, column: 5, scope: !1966)
!2418 = !DILocation(line: 392, column: 75, scope: !1966)
!2419 = !DILocation(line: 392, column: 3, scope: !1966)
!2420 = distinct !{!2420, !2079, !2421}
!2421 = !DILocation(line: 720, column: 5, scope: !1967)
!2422 = !DILocation(line: 722, column: 11, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !1938, file: !146, line: 722, column: 7)
!2424 = !DILocation(line: 722, column: 16, scope: !2423)
!2425 = !DILocation(line: 730, column: 51, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !1938, file: !146, line: 730, column: 7)
!2427 = !DILocation(line: 731, column: 10, scope: !2426)
!2428 = !DILocation(line: 733, column: 11, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !146, line: 733, column: 11)
!2430 = distinct !DILexicalBlock(scope: !2426, file: !146, line: 732, column: 5)
!2431 = !DILocation(line: 733, column: 11, scope: !2430)
!2432 = !DILocation(line: 734, column: 16, scope: !2429)
!2433 = !DILocation(line: 734, column: 9, scope: !2429)
!2434 = !DILocation(line: 738, column: 18, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2429, file: !146, line: 738, column: 16)
!2436 = !DILocation(line: 738, column: 32, scope: !2435)
!2437 = !DILocation(line: 738, column: 29, scope: !2435)
!2438 = !DILocation(line: 747, column: 7, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !1938, file: !146, line: 747, column: 7)
!2440 = !DILocation(line: 747, column: 20, scope: !2439)
!2441 = !DILocation(line: 748, column: 12, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !146, line: 748, column: 5)
!2443 = distinct !DILexicalBlock(scope: !2439, file: !146, line: 748, column: 5)
!2444 = !DILocation(line: 748, column: 5, scope: !2443)
!2445 = !DILocation(line: 749, column: 7, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !146, line: 749, column: 7)
!2447 = distinct !DILexicalBlock(scope: !2442, file: !146, line: 749, column: 7)
!2448 = !DILocation(line: 749, column: 7, scope: !2447)
!2449 = !DILocation(line: 748, column: 39, scope: !2442)
!2450 = distinct !{!2450, !2444, !2451}
!2451 = !DILocation(line: 749, column: 7, scope: !2443)
!2452 = !DILocation(line: 751, column: 11, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !1938, file: !146, line: 751, column: 7)
!2454 = !DILocation(line: 751, column: 7, scope: !1938)
!2455 = !DILocation(line: 752, column: 5, scope: !2453)
!2456 = !DILocation(line: 752, column: 17, scope: !2453)
!2457 = !DILocation(line: 758, column: 21, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !1938, file: !146, line: 758, column: 7)
!2459 = !DILocation(line: 758, column: 54, scope: !2458)
!2460 = !DILocation(line: 758, column: 51, scope: !2458)
!2461 = !DILocation(line: 762, column: 42, scope: !1938)
!2462 = !DILocation(line: 760, column: 10, scope: !1938)
!2463 = !DILocation(line: 760, column: 3, scope: !1938)
!2464 = !DILocation(line: 764, column: 1, scope: !1938)
!2465 = distinct !DISubprogram(name: "gettext_quote", scope: !146, file: !146, line: 199, type: !2466, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2468)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!58, !58, !5}
!2468 = !{!2469, !2470, !2471, !2472}
!2469 = !DILocalVariable(name: "msgid", arg: 1, scope: !2465, file: !146, line: 199, type: !58)
!2470 = !DILocalVariable(name: "s", arg: 2, scope: !2465, file: !146, line: 199, type: !5)
!2471 = !DILocalVariable(name: "translation", scope: !2465, file: !146, line: 201, type: !58)
!2472 = !DILocalVariable(name: "locale_code", scope: !2465, file: !146, line: 202, type: !58)
!2473 = !DILocation(line: 199, column: 28, scope: !2465)
!2474 = !DILocation(line: 199, column: 54, scope: !2465)
!2475 = !DILocation(line: 201, column: 29, scope: !2465)
!2476 = !DILocation(line: 201, column: 15, scope: !2465)
!2477 = !DILocation(line: 204, column: 19, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2465, file: !146, line: 204, column: 7)
!2479 = !DILocation(line: 204, column: 7, scope: !2465)
!2480 = !DILocation(line: 225, column: 17, scope: !2465)
!2481 = !DILocation(line: 202, column: 15, scope: !2465)
!2482 = !DILocalVariable(name: "s2", arg: 2, scope: !2483, file: !2484, line: 160, type: !58)
!2483 = distinct !DISubprogram(name: "strcaseeq0", scope: !2484, file: !2484, line: 160, type: !2485, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2487)
!2484 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!28, !58, !58, !44, !44, !44, !44, !44, !44, !44, !44, !44}
!2487 = !{!2488, !2482, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497}
!2488 = !DILocalVariable(name: "s1", arg: 1, scope: !2483, file: !2484, line: 160, type: !58)
!2489 = !DILocalVariable(name: "s20", arg: 3, scope: !2483, file: !2484, line: 160, type: !44)
!2490 = !DILocalVariable(name: "s21", arg: 4, scope: !2483, file: !2484, line: 160, type: !44)
!2491 = !DILocalVariable(name: "s22", arg: 5, scope: !2483, file: !2484, line: 160, type: !44)
!2492 = !DILocalVariable(name: "s23", arg: 6, scope: !2483, file: !2484, line: 160, type: !44)
!2493 = !DILocalVariable(name: "s24", arg: 7, scope: !2483, file: !2484, line: 160, type: !44)
!2494 = !DILocalVariable(name: "s25", arg: 8, scope: !2483, file: !2484, line: 160, type: !44)
!2495 = !DILocalVariable(name: "s26", arg: 9, scope: !2483, file: !2484, line: 160, type: !44)
!2496 = !DILocalVariable(name: "s27", arg: 10, scope: !2483, file: !2484, line: 160, type: !44)
!2497 = !DILocalVariable(name: "s28", arg: 11, scope: !2483, file: !2484, line: 160, type: !44)
!2498 = !DILocation(line: 160, column: 41, scope: !2483, inlinedAt: !2499)
!2499 = distinct !DILocation(line: 226, column: 7, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2465, file: !146, line: 226, column: 7)
!2501 = !DILocation(line: 160, column: 120, scope: !2483, inlinedAt: !2499)
!2502 = !DILocation(line: 160, column: 130, scope: !2483, inlinedAt: !2499)
!2503 = !DILocation(line: 162, column: 7, scope: !2504, inlinedAt: !2499)
!2504 = distinct !DILexicalBlock(scope: !2483, file: !2484, line: 162, column: 7)
!2505 = !DILocalVariable(name: "s2", arg: 2, scope: !2506, file: !2484, line: 146, type: !58)
!2506 = distinct !DISubprogram(name: "strcaseeq1", scope: !2484, file: !2484, line: 146, type: !2507, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2509)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!28, !58, !58, !44, !44, !44, !44, !44, !44, !44, !44}
!2509 = !{!2510, !2505, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518}
!2510 = !DILocalVariable(name: "s1", arg: 1, scope: !2506, file: !2484, line: 146, type: !58)
!2511 = !DILocalVariable(name: "s21", arg: 3, scope: !2506, file: !2484, line: 146, type: !44)
!2512 = !DILocalVariable(name: "s22", arg: 4, scope: !2506, file: !2484, line: 146, type: !44)
!2513 = !DILocalVariable(name: "s23", arg: 5, scope: !2506, file: !2484, line: 146, type: !44)
!2514 = !DILocalVariable(name: "s24", arg: 6, scope: !2506, file: !2484, line: 146, type: !44)
!2515 = !DILocalVariable(name: "s25", arg: 7, scope: !2506, file: !2484, line: 146, type: !44)
!2516 = !DILocalVariable(name: "s26", arg: 8, scope: !2506, file: !2484, line: 146, type: !44)
!2517 = !DILocalVariable(name: "s27", arg: 9, scope: !2506, file: !2484, line: 146, type: !44)
!2518 = !DILocalVariable(name: "s28", arg: 10, scope: !2506, file: !2484, line: 146, type: !44)
!2519 = !DILocation(line: 146, column: 41, scope: !2506, inlinedAt: !2520)
!2520 = distinct !DILocation(line: 167, column: 16, scope: !2521, inlinedAt: !2499)
!2521 = distinct !DILexicalBlock(scope: !2522, file: !2484, line: 164, column: 11)
!2522 = distinct !DILexicalBlock(scope: !2504, file: !2484, line: 163, column: 5)
!2523 = !DILocation(line: 146, column: 110, scope: !2506, inlinedAt: !2520)
!2524 = !DILocation(line: 146, column: 120, scope: !2506, inlinedAt: !2520)
!2525 = !DILocation(line: 148, column: 7, scope: !2526, inlinedAt: !2520)
!2526 = distinct !DILexicalBlock(scope: !2506, file: !2484, line: 148, column: 7)
!2527 = !DILocalVariable(name: "s2", arg: 2, scope: !2528, file: !2484, line: 132, type: !58)
!2528 = distinct !DISubprogram(name: "strcaseeq2", scope: !2484, file: !2484, line: 132, type: !2529, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2531)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!28, !58, !58, !44, !44, !44, !44, !44, !44, !44}
!2531 = !{!2532, !2527, !2533, !2534, !2535, !2536, !2537, !2538, !2539}
!2532 = !DILocalVariable(name: "s1", arg: 1, scope: !2528, file: !2484, line: 132, type: !58)
!2533 = !DILocalVariable(name: "s22", arg: 3, scope: !2528, file: !2484, line: 132, type: !44)
!2534 = !DILocalVariable(name: "s23", arg: 4, scope: !2528, file: !2484, line: 132, type: !44)
!2535 = !DILocalVariable(name: "s24", arg: 5, scope: !2528, file: !2484, line: 132, type: !44)
!2536 = !DILocalVariable(name: "s25", arg: 6, scope: !2528, file: !2484, line: 132, type: !44)
!2537 = !DILocalVariable(name: "s26", arg: 7, scope: !2528, file: !2484, line: 132, type: !44)
!2538 = !DILocalVariable(name: "s27", arg: 8, scope: !2528, file: !2484, line: 132, type: !44)
!2539 = !DILocalVariable(name: "s28", arg: 9, scope: !2528, file: !2484, line: 132, type: !44)
!2540 = !DILocation(line: 132, column: 41, scope: !2528, inlinedAt: !2541)
!2541 = distinct !DILocation(line: 153, column: 16, scope: !2542, inlinedAt: !2520)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !2484, line: 150, column: 11)
!2543 = distinct !DILexicalBlock(scope: !2526, file: !2484, line: 149, column: 5)
!2544 = !DILocation(line: 132, column: 100, scope: !2528, inlinedAt: !2541)
!2545 = !DILocation(line: 132, column: 110, scope: !2528, inlinedAt: !2541)
!2546 = !DILocation(line: 134, column: 7, scope: !2547, inlinedAt: !2541)
!2547 = distinct !DILexicalBlock(scope: !2528, file: !2484, line: 134, column: 7)
!2548 = !DILocalVariable(name: "s2", arg: 2, scope: !2549, file: !2484, line: 118, type: !58)
!2549 = distinct !DISubprogram(name: "strcaseeq3", scope: !2484, file: !2484, line: 118, type: !2550, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2552)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!28, !58, !58, !44, !44, !44, !44, !44, !44}
!2552 = !{!2553, !2548, !2554, !2555, !2556, !2557, !2558, !2559}
!2553 = !DILocalVariable(name: "s1", arg: 1, scope: !2549, file: !2484, line: 118, type: !58)
!2554 = !DILocalVariable(name: "s23", arg: 3, scope: !2549, file: !2484, line: 118, type: !44)
!2555 = !DILocalVariable(name: "s24", arg: 4, scope: !2549, file: !2484, line: 118, type: !44)
!2556 = !DILocalVariable(name: "s25", arg: 5, scope: !2549, file: !2484, line: 118, type: !44)
!2557 = !DILocalVariable(name: "s26", arg: 6, scope: !2549, file: !2484, line: 118, type: !44)
!2558 = !DILocalVariable(name: "s27", arg: 7, scope: !2549, file: !2484, line: 118, type: !44)
!2559 = !DILocalVariable(name: "s28", arg: 8, scope: !2549, file: !2484, line: 118, type: !44)
!2560 = !DILocation(line: 118, column: 41, scope: !2549, inlinedAt: !2561)
!2561 = distinct !DILocation(line: 139, column: 16, scope: !2562, inlinedAt: !2541)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !2484, line: 136, column: 11)
!2563 = distinct !DILexicalBlock(scope: !2547, file: !2484, line: 135, column: 5)
!2564 = !DILocation(line: 118, column: 90, scope: !2549, inlinedAt: !2561)
!2565 = !DILocation(line: 118, column: 100, scope: !2549, inlinedAt: !2561)
!2566 = !DILocation(line: 120, column: 7, scope: !2567, inlinedAt: !2561)
!2567 = distinct !DILexicalBlock(scope: !2549, file: !2484, line: 120, column: 7)
!2568 = !DILocation(line: 120, column: 7, scope: !2549, inlinedAt: !2561)
!2569 = !DILocalVariable(name: "s2", arg: 2, scope: !2570, file: !2484, line: 104, type: !58)
!2570 = distinct !DISubprogram(name: "strcaseeq4", scope: !2484, file: !2484, line: 104, type: !2571, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2573)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!28, !58, !58, !44, !44, !44, !44, !44}
!2573 = !{!2574, !2569, !2575, !2576, !2577, !2578, !2579}
!2574 = !DILocalVariable(name: "s1", arg: 1, scope: !2570, file: !2484, line: 104, type: !58)
!2575 = !DILocalVariable(name: "s24", arg: 3, scope: !2570, file: !2484, line: 104, type: !44)
!2576 = !DILocalVariable(name: "s25", arg: 4, scope: !2570, file: !2484, line: 104, type: !44)
!2577 = !DILocalVariable(name: "s26", arg: 5, scope: !2570, file: !2484, line: 104, type: !44)
!2578 = !DILocalVariable(name: "s27", arg: 6, scope: !2570, file: !2484, line: 104, type: !44)
!2579 = !DILocalVariable(name: "s28", arg: 7, scope: !2570, file: !2484, line: 104, type: !44)
!2580 = !DILocation(line: 104, column: 41, scope: !2570, inlinedAt: !2581)
!2581 = distinct !DILocation(line: 125, column: 16, scope: !2582, inlinedAt: !2561)
!2582 = distinct !DILexicalBlock(scope: !2583, file: !2484, line: 122, column: 11)
!2583 = distinct !DILexicalBlock(scope: !2567, file: !2484, line: 121, column: 5)
!2584 = !DILocation(line: 104, column: 80, scope: !2570, inlinedAt: !2581)
!2585 = !DILocation(line: 104, column: 90, scope: !2570, inlinedAt: !2581)
!2586 = !DILocation(line: 106, column: 7, scope: !2587, inlinedAt: !2581)
!2587 = distinct !DILexicalBlock(scope: !2570, file: !2484, line: 106, column: 7)
!2588 = !DILocation(line: 106, column: 7, scope: !2570, inlinedAt: !2581)
!2589 = !DILocalVariable(name: "s2", arg: 2, scope: !2590, file: !2484, line: 90, type: !58)
!2590 = distinct !DISubprogram(name: "strcaseeq5", scope: !2484, file: !2484, line: 90, type: !2591, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2593)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!28, !58, !58, !44, !44, !44, !44}
!2593 = !{!2594, !2589, !2595, !2596, !2597, !2598}
!2594 = !DILocalVariable(name: "s1", arg: 1, scope: !2590, file: !2484, line: 90, type: !58)
!2595 = !DILocalVariable(name: "s25", arg: 3, scope: !2590, file: !2484, line: 90, type: !44)
!2596 = !DILocalVariable(name: "s26", arg: 4, scope: !2590, file: !2484, line: 90, type: !44)
!2597 = !DILocalVariable(name: "s27", arg: 5, scope: !2590, file: !2484, line: 90, type: !44)
!2598 = !DILocalVariable(name: "s28", arg: 6, scope: !2590, file: !2484, line: 90, type: !44)
!2599 = !DILocation(line: 90, column: 41, scope: !2590, inlinedAt: !2600)
!2600 = distinct !DILocation(line: 111, column: 16, scope: !2601, inlinedAt: !2581)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !2484, line: 108, column: 11)
!2602 = distinct !DILexicalBlock(scope: !2587, file: !2484, line: 107, column: 5)
!2603 = !DILocation(line: 90, column: 70, scope: !2590, inlinedAt: !2600)
!2604 = !DILocation(line: 90, column: 80, scope: !2590, inlinedAt: !2600)
!2605 = !DILocation(line: 92, column: 7, scope: !2606, inlinedAt: !2600)
!2606 = distinct !DILexicalBlock(scope: !2590, file: !2484, line: 92, column: 7)
!2607 = !DILocation(line: 92, column: 7, scope: !2590, inlinedAt: !2600)
!2608 = !DILocation(line: 227, column: 12, scope: !2500)
!2609 = !DILocation(line: 227, column: 21, scope: !2500)
!2610 = !DILocation(line: 227, column: 5, scope: !2500)
!2611 = !DILocation(line: 146, column: 41, scope: !2506, inlinedAt: !2612)
!2612 = distinct !DILocation(line: 167, column: 16, scope: !2521, inlinedAt: !2613)
!2613 = distinct !DILocation(line: 228, column: 7, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2465, file: !146, line: 228, column: 7)
!2615 = !DILocation(line: 146, column: 110, scope: !2506, inlinedAt: !2612)
!2616 = !DILocation(line: 146, column: 120, scope: !2506, inlinedAt: !2612)
!2617 = !DILocation(line: 148, column: 7, scope: !2526, inlinedAt: !2612)
!2618 = !DILocation(line: 132, column: 41, scope: !2528, inlinedAt: !2619)
!2619 = distinct !DILocation(line: 153, column: 16, scope: !2542, inlinedAt: !2612)
!2620 = !DILocation(line: 132, column: 100, scope: !2528, inlinedAt: !2619)
!2621 = !DILocation(line: 132, column: 110, scope: !2528, inlinedAt: !2619)
!2622 = !DILocation(line: 134, column: 7, scope: !2547, inlinedAt: !2619)
!2623 = !DILocation(line: 134, column: 7, scope: !2528, inlinedAt: !2619)
!2624 = !DILocation(line: 118, column: 41, scope: !2549, inlinedAt: !2625)
!2625 = distinct !DILocation(line: 139, column: 16, scope: !2562, inlinedAt: !2619)
!2626 = !DILocation(line: 118, column: 90, scope: !2549, inlinedAt: !2625)
!2627 = !DILocation(line: 118, column: 100, scope: !2549, inlinedAt: !2625)
!2628 = !DILocation(line: 120, column: 7, scope: !2567, inlinedAt: !2625)
!2629 = !DILocation(line: 120, column: 7, scope: !2549, inlinedAt: !2625)
!2630 = !DILocation(line: 104, column: 41, scope: !2570, inlinedAt: !2631)
!2631 = distinct !DILocation(line: 125, column: 16, scope: !2582, inlinedAt: !2625)
!2632 = !DILocation(line: 104, column: 80, scope: !2570, inlinedAt: !2631)
!2633 = !DILocation(line: 104, column: 90, scope: !2570, inlinedAt: !2631)
!2634 = !DILocation(line: 106, column: 7, scope: !2587, inlinedAt: !2631)
!2635 = !DILocation(line: 106, column: 7, scope: !2570, inlinedAt: !2631)
!2636 = !DILocation(line: 90, column: 41, scope: !2590, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 111, column: 16, scope: !2601, inlinedAt: !2631)
!2638 = !DILocation(line: 90, column: 70, scope: !2590, inlinedAt: !2637)
!2639 = !DILocation(line: 90, column: 80, scope: !2590, inlinedAt: !2637)
!2640 = !DILocation(line: 92, column: 7, scope: !2606, inlinedAt: !2637)
!2641 = !DILocation(line: 92, column: 7, scope: !2590, inlinedAt: !2637)
!2642 = !DILocalVariable(name: "s2", arg: 2, scope: !2643, file: !2484, line: 76, type: !58)
!2643 = distinct !DISubprogram(name: "strcaseeq6", scope: !2484, file: !2484, line: 76, type: !2644, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2646)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!28, !58, !58, !44, !44, !44}
!2646 = !{!2647, !2642, !2648, !2649, !2650}
!2647 = !DILocalVariable(name: "s1", arg: 1, scope: !2643, file: !2484, line: 76, type: !58)
!2648 = !DILocalVariable(name: "s26", arg: 3, scope: !2643, file: !2484, line: 76, type: !44)
!2649 = !DILocalVariable(name: "s27", arg: 4, scope: !2643, file: !2484, line: 76, type: !44)
!2650 = !DILocalVariable(name: "s28", arg: 5, scope: !2643, file: !2484, line: 76, type: !44)
!2651 = !DILocation(line: 76, column: 41, scope: !2643, inlinedAt: !2652)
!2652 = distinct !DILocation(line: 97, column: 16, scope: !2653, inlinedAt: !2637)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !2484, line: 94, column: 11)
!2654 = distinct !DILexicalBlock(scope: !2606, file: !2484, line: 93, column: 5)
!2655 = !DILocation(line: 76, column: 60, scope: !2643, inlinedAt: !2652)
!2656 = !DILocation(line: 76, column: 70, scope: !2643, inlinedAt: !2652)
!2657 = !DILocation(line: 78, column: 7, scope: !2658, inlinedAt: !2652)
!2658 = distinct !DILexicalBlock(scope: !2643, file: !2484, line: 78, column: 7)
!2659 = !DILocation(line: 78, column: 7, scope: !2643, inlinedAt: !2652)
!2660 = !DILocalVariable(name: "s2", arg: 2, scope: !2661, file: !2484, line: 62, type: !58)
!2661 = distinct !DISubprogram(name: "strcaseeq7", scope: !2484, file: !2484, line: 62, type: !2662, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2664)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!28, !58, !58, !44, !44}
!2664 = !{!2665, !2660, !2666, !2667}
!2665 = !DILocalVariable(name: "s1", arg: 1, scope: !2661, file: !2484, line: 62, type: !58)
!2666 = !DILocalVariable(name: "s27", arg: 3, scope: !2661, file: !2484, line: 62, type: !44)
!2667 = !DILocalVariable(name: "s28", arg: 4, scope: !2661, file: !2484, line: 62, type: !44)
!2668 = !DILocation(line: 62, column: 41, scope: !2661, inlinedAt: !2669)
!2669 = distinct !DILocation(line: 83, column: 16, scope: !2670, inlinedAt: !2652)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !2484, line: 80, column: 11)
!2671 = distinct !DILexicalBlock(scope: !2658, file: !2484, line: 79, column: 5)
!2672 = !DILocation(line: 62, column: 50, scope: !2661, inlinedAt: !2669)
!2673 = !DILocation(line: 62, column: 60, scope: !2661, inlinedAt: !2669)
!2674 = !DILocation(line: 64, column: 7, scope: !2675, inlinedAt: !2669)
!2675 = distinct !DILexicalBlock(scope: !2661, file: !2484, line: 64, column: 7)
!2676 = !DILocation(line: 228, column: 7, scope: !2465)
!2677 = !DILocation(line: 229, column: 12, scope: !2614)
!2678 = !DILocation(line: 229, column: 21, scope: !2614)
!2679 = !DILocation(line: 229, column: 5, scope: !2614)
!2680 = !DILocation(line: 231, column: 13, scope: !2465)
!2681 = !DILocation(line: 231, column: 11, scope: !2465)
!2682 = !DILocation(line: 231, column: 3, scope: !2465)
!2683 = !DILocation(line: 232, column: 1, scope: !2465)
!2684 = distinct !DISubprogram(name: "quotearg_alloc", scope: !146, file: !146, line: 791, type: !2685, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2687)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!43, !58, !140, !1810}
!2687 = !{!2688, !2689, !2690}
!2688 = !DILocalVariable(name: "arg", arg: 1, scope: !2684, file: !146, line: 791, type: !58)
!2689 = !DILocalVariable(name: "argsize", arg: 2, scope: !2684, file: !146, line: 791, type: !140)
!2690 = !DILocalVariable(name: "o", arg: 3, scope: !2684, file: !146, line: 792, type: !1810)
!2691 = !DILocation(line: 791, column: 29, scope: !2684)
!2692 = !DILocation(line: 791, column: 41, scope: !2684)
!2693 = !DILocation(line: 792, column: 47, scope: !2684)
!2694 = !DILocalVariable(name: "arg", arg: 1, scope: !2695, file: !146, line: 804, type: !58)
!2695 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !146, file: !146, line: 804, type: !2696, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2698)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!43, !58, !140, !643, !1810}
!2698 = !{!2694, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706}
!2699 = !DILocalVariable(name: "argsize", arg: 2, scope: !2695, file: !146, line: 804, type: !140)
!2700 = !DILocalVariable(name: "size", arg: 3, scope: !2695, file: !146, line: 804, type: !643)
!2701 = !DILocalVariable(name: "o", arg: 4, scope: !2695, file: !146, line: 805, type: !1810)
!2702 = !DILocalVariable(name: "p", scope: !2695, file: !146, line: 807, type: !1810)
!2703 = !DILocalVariable(name: "e", scope: !2695, file: !146, line: 808, type: !28)
!2704 = !DILocalVariable(name: "flags", scope: !2695, file: !146, line: 810, type: !28)
!2705 = !DILocalVariable(name: "bufsize", scope: !2695, file: !146, line: 811, type: !140)
!2706 = !DILocalVariable(name: "buf", scope: !2695, file: !146, line: 815, type: !43)
!2707 = !DILocation(line: 804, column: 33, scope: !2695, inlinedAt: !2708)
!2708 = distinct !DILocation(line: 794, column: 10, scope: !2684)
!2709 = !DILocation(line: 804, column: 45, scope: !2695, inlinedAt: !2708)
!2710 = !DILocation(line: 804, column: 62, scope: !2695, inlinedAt: !2708)
!2711 = !DILocation(line: 805, column: 51, scope: !2695, inlinedAt: !2708)
!2712 = !DILocation(line: 807, column: 37, scope: !2695, inlinedAt: !2708)
!2713 = !DILocation(line: 807, column: 33, scope: !2695, inlinedAt: !2708)
!2714 = !DILocation(line: 808, column: 11, scope: !2695, inlinedAt: !2708)
!2715 = !DILocation(line: 808, column: 7, scope: !2695, inlinedAt: !2708)
!2716 = !DILocation(line: 810, column: 18, scope: !2695, inlinedAt: !2708)
!2717 = !DILocation(line: 810, column: 24, scope: !2695, inlinedAt: !2708)
!2718 = !DILocation(line: 810, column: 7, scope: !2695, inlinedAt: !2708)
!2719 = !DILocation(line: 811, column: 69, scope: !2695, inlinedAt: !2708)
!2720 = !DILocation(line: 812, column: 53, scope: !2695, inlinedAt: !2708)
!2721 = !DILocation(line: 813, column: 49, scope: !2695, inlinedAt: !2708)
!2722 = !DILocation(line: 814, column: 49, scope: !2695, inlinedAt: !2708)
!2723 = !DILocation(line: 811, column: 20, scope: !2695, inlinedAt: !2708)
!2724 = !DILocation(line: 814, column: 62, scope: !2695, inlinedAt: !2708)
!2725 = !DILocation(line: 811, column: 10, scope: !2695, inlinedAt: !2708)
!2726 = !DILocalVariable(name: "n", arg: 1, scope: !2727, file: !639, line: 220, type: !140)
!2727 = distinct !DISubprogram(name: "xcharalloc", scope: !639, file: !639, line: 220, type: !2728, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2730)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!43, !140}
!2730 = !{!2726}
!2731 = !DILocation(line: 220, column: 20, scope: !2727, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 815, column: 15, scope: !2695, inlinedAt: !2708)
!2733 = !DILocation(line: 222, column: 10, scope: !2727, inlinedAt: !2732)
!2734 = !DILocation(line: 815, column: 9, scope: !2695, inlinedAt: !2708)
!2735 = !DILocation(line: 816, column: 60, scope: !2695, inlinedAt: !2708)
!2736 = !DILocation(line: 818, column: 32, scope: !2695, inlinedAt: !2708)
!2737 = !DILocation(line: 818, column: 47, scope: !2695, inlinedAt: !2708)
!2738 = !DILocation(line: 816, column: 3, scope: !2695, inlinedAt: !2708)
!2739 = !DILocation(line: 819, column: 9, scope: !2695, inlinedAt: !2708)
!2740 = !DILocation(line: 794, column: 3, scope: !2684)
!2741 = !DILocation(line: 804, column: 33, scope: !2695)
!2742 = !DILocation(line: 804, column: 45, scope: !2695)
!2743 = !DILocation(line: 804, column: 62, scope: !2695)
!2744 = !DILocation(line: 805, column: 51, scope: !2695)
!2745 = !DILocation(line: 807, column: 37, scope: !2695)
!2746 = !DILocation(line: 807, column: 33, scope: !2695)
!2747 = !DILocation(line: 808, column: 11, scope: !2695)
!2748 = !DILocation(line: 808, column: 7, scope: !2695)
!2749 = !DILocation(line: 810, column: 18, scope: !2695)
!2750 = !DILocation(line: 810, column: 27, scope: !2695)
!2751 = !DILocation(line: 810, column: 24, scope: !2695)
!2752 = !DILocation(line: 810, column: 7, scope: !2695)
!2753 = !DILocation(line: 811, column: 69, scope: !2695)
!2754 = !DILocation(line: 812, column: 53, scope: !2695)
!2755 = !DILocation(line: 813, column: 49, scope: !2695)
!2756 = !DILocation(line: 814, column: 49, scope: !2695)
!2757 = !DILocation(line: 811, column: 20, scope: !2695)
!2758 = !DILocation(line: 814, column: 62, scope: !2695)
!2759 = !DILocation(line: 811, column: 10, scope: !2695)
!2760 = !DILocation(line: 220, column: 20, scope: !2727, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 815, column: 15, scope: !2695)
!2762 = !DILocation(line: 222, column: 10, scope: !2727, inlinedAt: !2761)
!2763 = !DILocation(line: 815, column: 9, scope: !2695)
!2764 = !DILocation(line: 816, column: 60, scope: !2695)
!2765 = !DILocation(line: 818, column: 32, scope: !2695)
!2766 = !DILocation(line: 818, column: 47, scope: !2695)
!2767 = !DILocation(line: 816, column: 3, scope: !2695)
!2768 = !DILocation(line: 819, column: 9, scope: !2695)
!2769 = !DILocation(line: 820, column: 7, scope: !2695)
!2770 = !DILocation(line: 821, column: 11, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2695, file: !146, line: 820, column: 7)
!2772 = !{!1116, !1116, i64 0}
!2773 = !DILocation(line: 821, column: 5, scope: !2771)
!2774 = !DILocation(line: 822, column: 3, scope: !2695)
!2775 = distinct !DISubprogram(name: "quotearg_free", scope: !146, file: !146, line: 840, type: !719, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2776)
!2776 = !{!2777, !2778}
!2777 = !DILocalVariable(name: "sv", scope: !2775, file: !146, line: 842, type: !172)
!2778 = !DILocalVariable(name: "i", scope: !2775, file: !146, line: 843, type: !28)
!2779 = !DILocation(line: 842, column: 24, scope: !2775)
!2780 = !DILocation(line: 842, column: 19, scope: !2775)
!2781 = !DILocation(line: 843, column: 7, scope: !2775)
!2782 = !DILocation(line: 844, column: 19, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !146, line: 844, column: 3)
!2784 = distinct !DILexicalBlock(scope: !2775, file: !146, line: 844, column: 3)
!2785 = !DILocation(line: 844, column: 17, scope: !2783)
!2786 = !DILocation(line: 844, column: 3, scope: !2784)
!2787 = !DILocation(line: 845, column: 17, scope: !2783)
!2788 = !{!2789, !711, i64 8}
!2789 = !{!"slotvec", !1116, i64 0, !711, i64 8}
!2790 = !DILocation(line: 845, column: 5, scope: !2783)
!2791 = !DILocation(line: 844, column: 28, scope: !2783)
!2792 = distinct !{!2792, !2786, !2793}
!2793 = !DILocation(line: 845, column: 20, scope: !2784)
!2794 = !DILocation(line: 846, column: 13, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2775, file: !146, line: 846, column: 7)
!2796 = !DILocation(line: 846, column: 17, scope: !2795)
!2797 = !DILocation(line: 846, column: 7, scope: !2775)
!2798 = !DILocation(line: 848, column: 7, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2795, file: !146, line: 847, column: 5)
!2800 = !DILocation(line: 849, column: 21, scope: !2799)
!2801 = !{!2789, !1116, i64 0}
!2802 = !DILocation(line: 850, column: 20, scope: !2799)
!2803 = !DILocation(line: 851, column: 5, scope: !2799)
!2804 = !DILocation(line: 852, column: 10, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2775, file: !146, line: 852, column: 7)
!2806 = !DILocation(line: 852, column: 7, scope: !2775)
!2807 = !DILocation(line: 854, column: 13, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2805, file: !146, line: 853, column: 5)
!2809 = !DILocation(line: 854, column: 7, scope: !2808)
!2810 = !DILocation(line: 855, column: 15, scope: !2808)
!2811 = !DILocation(line: 856, column: 5, scope: !2808)
!2812 = !DILocation(line: 857, column: 10, scope: !2775)
!2813 = !DILocation(line: 858, column: 1, scope: !2775)
!2814 = distinct !DISubprogram(name: "quotearg_n", scope: !146, file: !146, line: 922, type: !2815, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2817)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!43, !28, !58}
!2817 = !{!2818, !2819}
!2818 = !DILocalVariable(name: "n", arg: 1, scope: !2814, file: !146, line: 922, type: !28)
!2819 = !DILocalVariable(name: "arg", arg: 2, scope: !2814, file: !146, line: 922, type: !58)
!2820 = !DILocation(line: 922, column: 17, scope: !2814)
!2821 = !DILocation(line: 922, column: 32, scope: !2814)
!2822 = !DILocation(line: 924, column: 10, scope: !2814)
!2823 = !DILocation(line: 924, column: 3, scope: !2814)
!2824 = distinct !DISubprogram(name: "quotearg_n_options", scope: !146, file: !146, line: 869, type: !2825, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2827)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!43, !28, !58, !140, !1810}
!2827 = !{!2828, !2829, !2830, !2831, !2832, !2833, !2834, !2837, !2839, !2840, !2841}
!2828 = !DILocalVariable(name: "n", arg: 1, scope: !2824, file: !146, line: 869, type: !28)
!2829 = !DILocalVariable(name: "arg", arg: 2, scope: !2824, file: !146, line: 869, type: !58)
!2830 = !DILocalVariable(name: "argsize", arg: 3, scope: !2824, file: !146, line: 869, type: !140)
!2831 = !DILocalVariable(name: "options", arg: 4, scope: !2824, file: !146, line: 870, type: !1810)
!2832 = !DILocalVariable(name: "e", scope: !2824, file: !146, line: 872, type: !28)
!2833 = !DILocalVariable(name: "sv", scope: !2824, file: !146, line: 874, type: !172)
!2834 = !DILocalVariable(name: "preallocated", scope: !2835, file: !146, line: 881, type: !98)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !146, line: 880, column: 5)
!2836 = distinct !DILexicalBlock(scope: !2824, file: !146, line: 879, column: 7)
!2837 = !DILocalVariable(name: "size", scope: !2838, file: !146, line: 894, type: !140)
!2838 = distinct !DILexicalBlock(scope: !2824, file: !146, line: 893, column: 3)
!2839 = !DILocalVariable(name: "val", scope: !2838, file: !146, line: 895, type: !43)
!2840 = !DILocalVariable(name: "flags", scope: !2838, file: !146, line: 897, type: !28)
!2841 = !DILocalVariable(name: "qsize", scope: !2838, file: !146, line: 898, type: !140)
!2842 = !DILocation(line: 869, column: 25, scope: !2824)
!2843 = !DILocation(line: 869, column: 40, scope: !2824)
!2844 = !DILocation(line: 869, column: 52, scope: !2824)
!2845 = !DILocation(line: 870, column: 51, scope: !2824)
!2846 = !DILocation(line: 872, column: 11, scope: !2824)
!2847 = !DILocation(line: 872, column: 7, scope: !2824)
!2848 = !DILocation(line: 874, column: 24, scope: !2824)
!2849 = !DILocation(line: 874, column: 19, scope: !2824)
!2850 = !DILocation(line: 876, column: 9, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2824, file: !146, line: 876, column: 7)
!2852 = !DILocation(line: 876, column: 7, scope: !2824)
!2853 = !DILocation(line: 877, column: 5, scope: !2851)
!2854 = !DILocation(line: 879, column: 7, scope: !2836)
!2855 = !DILocation(line: 879, column: 14, scope: !2836)
!2856 = !DILocation(line: 879, column: 7, scope: !2824)
!2857 = !DILocation(line: 881, column: 31, scope: !2835)
!2858 = !DILocation(line: 883, column: 67, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2835, file: !146, line: 883, column: 11)
!2860 = !DILocation(line: 883, column: 11, scope: !2835)
!2861 = !DILocation(line: 884, column: 9, scope: !2859)
!2862 = !DILocation(line: 886, column: 32, scope: !2835)
!2863 = !DILocation(line: 886, column: 61, scope: !2835)
!2864 = !DILocation(line: 886, column: 58, scope: !2835)
!2865 = !DILocation(line: 886, column: 66, scope: !2835)
!2866 = !DILocation(line: 886, column: 22, scope: !2835)
!2867 = !DILocation(line: 886, column: 15, scope: !2835)
!2868 = !DILocation(line: 887, column: 11, scope: !2835)
!2869 = !DILocation(line: 888, column: 15, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2835, file: !146, line: 887, column: 11)
!2871 = !{i64 0, i64 8, !2772, i64 8, i64 8, !710}
!2872 = !DILocation(line: 888, column: 9, scope: !2870)
!2873 = !DILocation(line: 889, column: 20, scope: !2835)
!2874 = !DILocation(line: 889, column: 18, scope: !2835)
!2875 = !DILocation(line: 889, column: 7, scope: !2835)
!2876 = !DILocation(line: 889, column: 38, scope: !2835)
!2877 = !DILocation(line: 889, column: 31, scope: !2835)
!2878 = !DILocation(line: 889, column: 48, scope: !2835)
!2879 = !DILocation(line: 890, column: 14, scope: !2835)
!2880 = !DILocation(line: 891, column: 5, scope: !2835)
!2881 = !DILocation(line: 894, column: 19, scope: !2838)
!2882 = !DILocation(line: 894, column: 25, scope: !2838)
!2883 = !DILocation(line: 894, column: 12, scope: !2838)
!2884 = !DILocation(line: 895, column: 23, scope: !2838)
!2885 = !DILocation(line: 895, column: 11, scope: !2838)
!2886 = !DILocation(line: 897, column: 26, scope: !2838)
!2887 = !DILocation(line: 897, column: 32, scope: !2838)
!2888 = !DILocation(line: 897, column: 9, scope: !2838)
!2889 = !DILocation(line: 899, column: 55, scope: !2838)
!2890 = !DILocation(line: 900, column: 46, scope: !2838)
!2891 = !DILocation(line: 901, column: 55, scope: !2838)
!2892 = !DILocation(line: 902, column: 55, scope: !2838)
!2893 = !DILocation(line: 898, column: 20, scope: !2838)
!2894 = !DILocation(line: 898, column: 12, scope: !2838)
!2895 = !DILocation(line: 904, column: 14, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2838, file: !146, line: 904, column: 9)
!2897 = !DILocation(line: 904, column: 9, scope: !2838)
!2898 = !DILocation(line: 906, column: 35, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2896, file: !146, line: 905, column: 7)
!2900 = !DILocation(line: 906, column: 20, scope: !2899)
!2901 = !DILocation(line: 907, column: 17, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2899, file: !146, line: 907, column: 13)
!2903 = !DILocation(line: 907, column: 13, scope: !2899)
!2904 = !DILocation(line: 908, column: 11, scope: !2902)
!2905 = !DILocation(line: 220, column: 20, scope: !2727, inlinedAt: !2906)
!2906 = distinct !DILocation(line: 909, column: 27, scope: !2899)
!2907 = !DILocation(line: 222, column: 10, scope: !2727, inlinedAt: !2906)
!2908 = !DILocation(line: 909, column: 19, scope: !2899)
!2909 = !DILocation(line: 910, column: 69, scope: !2899)
!2910 = !DILocation(line: 912, column: 44, scope: !2899)
!2911 = !DILocation(line: 913, column: 44, scope: !2899)
!2912 = !DILocation(line: 910, column: 9, scope: !2899)
!2913 = !DILocation(line: 914, column: 7, scope: !2899)
!2914 = !DILocation(line: 916, column: 11, scope: !2838)
!2915 = !DILocation(line: 917, column: 5, scope: !2838)
!2916 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !146, file: !146, line: 928, type: !2917, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2919)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!43, !28, !58, !140}
!2919 = !{!2920, !2921, !2922}
!2920 = !DILocalVariable(name: "n", arg: 1, scope: !2916, file: !146, line: 928, type: !28)
!2921 = !DILocalVariable(name: "arg", arg: 2, scope: !2916, file: !146, line: 928, type: !58)
!2922 = !DILocalVariable(name: "argsize", arg: 3, scope: !2916, file: !146, line: 928, type: !140)
!2923 = !DILocation(line: 928, column: 21, scope: !2916)
!2924 = !DILocation(line: 928, column: 36, scope: !2916)
!2925 = !DILocation(line: 928, column: 48, scope: !2916)
!2926 = !DILocation(line: 930, column: 10, scope: !2916)
!2927 = !DILocation(line: 930, column: 3, scope: !2916)
!2928 = distinct !DISubprogram(name: "quotearg", scope: !146, file: !146, line: 934, type: !2929, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2931)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!43, !58}
!2931 = !{!2932}
!2932 = !DILocalVariable(name: "arg", arg: 1, scope: !2928, file: !146, line: 934, type: !58)
!2933 = !DILocation(line: 934, column: 23, scope: !2928)
!2934 = !DILocation(line: 922, column: 17, scope: !2814, inlinedAt: !2935)
!2935 = distinct !DILocation(line: 936, column: 10, scope: !2928)
!2936 = !DILocation(line: 922, column: 32, scope: !2814, inlinedAt: !2935)
!2937 = !DILocation(line: 924, column: 10, scope: !2814, inlinedAt: !2935)
!2938 = !DILocation(line: 936, column: 3, scope: !2928)
!2939 = distinct !DISubprogram(name: "quotearg_mem", scope: !146, file: !146, line: 940, type: !2940, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2942)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!43, !58, !140}
!2942 = !{!2943, !2944}
!2943 = !DILocalVariable(name: "arg", arg: 1, scope: !2939, file: !146, line: 940, type: !58)
!2944 = !DILocalVariable(name: "argsize", arg: 2, scope: !2939, file: !146, line: 940, type: !140)
!2945 = !DILocation(line: 940, column: 27, scope: !2939)
!2946 = !DILocation(line: 940, column: 39, scope: !2939)
!2947 = !DILocation(line: 928, column: 21, scope: !2916, inlinedAt: !2948)
!2948 = distinct !DILocation(line: 942, column: 10, scope: !2939)
!2949 = !DILocation(line: 928, column: 36, scope: !2916, inlinedAt: !2948)
!2950 = !DILocation(line: 928, column: 48, scope: !2916, inlinedAt: !2948)
!2951 = !DILocation(line: 930, column: 10, scope: !2916, inlinedAt: !2948)
!2952 = !DILocation(line: 942, column: 3, scope: !2939)
!2953 = distinct !DISubprogram(name: "quotearg_n_style", scope: !146, file: !146, line: 946, type: !2954, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2956)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!43, !28, !5, !58}
!2956 = !{!2957, !2958, !2959, !2960}
!2957 = !DILocalVariable(name: "n", arg: 1, scope: !2953, file: !146, line: 946, type: !28)
!2958 = !DILocalVariable(name: "s", arg: 2, scope: !2953, file: !146, line: 946, type: !5)
!2959 = !DILocalVariable(name: "arg", arg: 3, scope: !2953, file: !146, line: 946, type: !58)
!2960 = !DILocalVariable(name: "o", scope: !2953, file: !146, line: 948, type: !1811)
!2961 = !DILocalVariable(name: "o", scope: !2962, file: !146, line: 187, type: !153)
!2962 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !146, file: !146, line: 185, type: !2963, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2965)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!153, !5}
!2965 = !{!2966, !2961}
!2966 = !DILocalVariable(name: "style", arg: 1, scope: !2962, file: !146, line: 185, type: !5)
!2967 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2968 = !DILocation(line: 187, column: 26, scope: !2962, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 948, column: 36, scope: !2953)
!2970 = !DILocation(line: 946, column: 23, scope: !2953)
!2971 = !DILocation(line: 946, column: 45, scope: !2953)
!2972 = !DILocation(line: 946, column: 60, scope: !2953)
!2973 = !DILocation(line: 948, column: 3, scope: !2953)
!2974 = !DILocation(line: 948, column: 32, scope: !2953)
!2975 = !DILocation(line: 185, column: 48, scope: !2962, inlinedAt: !2969)
!2976 = !DILocation(line: 187, column: 3, scope: !2962, inlinedAt: !2969)
!2977 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2978 = !DILocation(line: 188, column: 13, scope: !2979, inlinedAt: !2969)
!2979 = distinct !DILexicalBlock(scope: !2962, file: !146, line: 188, column: 7)
!2980 = !DILocation(line: 188, column: 7, scope: !2962, inlinedAt: !2969)
!2981 = !DILocation(line: 189, column: 5, scope: !2979, inlinedAt: !2969)
!2982 = !{!2983}
!2983 = distinct !{!2983, !2984, !"quoting_options_from_style: argument 0"}
!2984 = distinct !{!2984, !"quoting_options_from_style"}
!2985 = !DILocation(line: 191, column: 10, scope: !2962, inlinedAt: !2969)
!2986 = !DILocation(line: 192, column: 1, scope: !2962, inlinedAt: !2969)
!2987 = !DILocation(line: 949, column: 10, scope: !2953)
!2988 = !DILocation(line: 950, column: 1, scope: !2953)
!2989 = !DILocation(line: 949, column: 3, scope: !2953)
!2990 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !146, file: !146, line: 953, type: !2991, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2993)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!43, !28, !5, !58, !140}
!2993 = !{!2994, !2995, !2996, !2997, !2998}
!2994 = !DILocalVariable(name: "n", arg: 1, scope: !2990, file: !146, line: 953, type: !28)
!2995 = !DILocalVariable(name: "s", arg: 2, scope: !2990, file: !146, line: 953, type: !5)
!2996 = !DILocalVariable(name: "arg", arg: 3, scope: !2990, file: !146, line: 954, type: !58)
!2997 = !DILocalVariable(name: "argsize", arg: 4, scope: !2990, file: !146, line: 954, type: !140)
!2998 = !DILocalVariable(name: "o", scope: !2990, file: !146, line: 956, type: !1811)
!2999 = !DILocation(line: 187, column: 26, scope: !2962, inlinedAt: !3000)
!3000 = distinct !DILocation(line: 956, column: 36, scope: !2990)
!3001 = !DILocation(line: 953, column: 27, scope: !2990)
!3002 = !DILocation(line: 953, column: 49, scope: !2990)
!3003 = !DILocation(line: 954, column: 35, scope: !2990)
!3004 = !DILocation(line: 954, column: 47, scope: !2990)
!3005 = !DILocation(line: 956, column: 3, scope: !2990)
!3006 = !DILocation(line: 956, column: 32, scope: !2990)
!3007 = !DILocation(line: 185, column: 48, scope: !2962, inlinedAt: !3000)
!3008 = !DILocation(line: 187, column: 3, scope: !2962, inlinedAt: !3000)
!3009 = !DILocation(line: 188, column: 13, scope: !2979, inlinedAt: !3000)
!3010 = !DILocation(line: 188, column: 7, scope: !2962, inlinedAt: !3000)
!3011 = !DILocation(line: 189, column: 5, scope: !2979, inlinedAt: !3000)
!3012 = !{!3013}
!3013 = distinct !{!3013, !3014, !"quoting_options_from_style: argument 0"}
!3014 = distinct !{!3014, !"quoting_options_from_style"}
!3015 = !DILocation(line: 191, column: 10, scope: !2962, inlinedAt: !3000)
!3016 = !DILocation(line: 192, column: 1, scope: !2962, inlinedAt: !3000)
!3017 = !DILocation(line: 957, column: 10, scope: !2990)
!3018 = !DILocation(line: 958, column: 1, scope: !2990)
!3019 = !DILocation(line: 957, column: 3, scope: !2990)
!3020 = distinct !DISubprogram(name: "quotearg_style", scope: !146, file: !146, line: 961, type: !3021, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !3023)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!43, !5, !58}
!3023 = !{!3024, !3025}
!3024 = !DILocalVariable(name: "s", arg: 1, scope: !3020, file: !146, line: 961, type: !5)
!3025 = !DILocalVariable(name: "arg", arg: 2, scope: !3020, file: !146, line: 961, type: !58)
!3026 = !DILocation(line: 187, column: 26, scope: !2962, inlinedAt: !3027)
!3027 = distinct !DILocation(line: 948, column: 36, scope: !2953, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 963, column: 10, scope: !3020)
!3029 = !DILocation(line: 961, column: 36, scope: !3020)
!3030 = !DILocation(line: 961, column: 51, scope: !3020)
!3031 = !DILocation(line: 946, column: 23, scope: !2953, inlinedAt: !3028)
!3032 = !DILocation(line: 946, column: 45, scope: !2953, inlinedAt: !3028)
!3033 = !DILocation(line: 946, column: 60, scope: !2953, inlinedAt: !3028)
!3034 = !DILocation(line: 948, column: 3, scope: !2953, inlinedAt: !3028)
!3035 = !DILocation(line: 948, column: 32, scope: !2953, inlinedAt: !3028)
!3036 = !DILocation(line: 185, column: 48, scope: !2962, inlinedAt: !3027)
!3037 = !DILocation(line: 187, column: 3, scope: !2962, inlinedAt: !3027)
!3038 = !DILocation(line: 188, column: 13, scope: !2979, inlinedAt: !3027)
!3039 = !DILocation(line: 188, column: 7, scope: !2962, inlinedAt: !3027)
!3040 = !DILocation(line: 189, column: 5, scope: !2979, inlinedAt: !3027)
!3041 = !{!3042}
!3042 = distinct !{!3042, !3043, !"quoting_options_from_style: argument 0"}
!3043 = distinct !{!3043, !"quoting_options_from_style"}
!3044 = !DILocation(line: 191, column: 10, scope: !2962, inlinedAt: !3027)
!3045 = !DILocation(line: 192, column: 1, scope: !2962, inlinedAt: !3027)
!3046 = !DILocation(line: 949, column: 10, scope: !2953, inlinedAt: !3028)
!3047 = !DILocation(line: 950, column: 1, scope: !2953, inlinedAt: !3028)
!3048 = !DILocation(line: 963, column: 3, scope: !3020)
!3049 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !146, file: !146, line: 967, type: !3050, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !3052)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!43, !5, !58, !140}
!3052 = !{!3053, !3054, !3055}
!3053 = !DILocalVariable(name: "s", arg: 1, scope: !3049, file: !146, line: 967, type: !5)
!3054 = !DILocalVariable(name: "arg", arg: 2, scope: !3049, file: !146, line: 967, type: !58)
!3055 = !DILocalVariable(name: "argsize", arg: 3, scope: !3049, file: !146, line: 967, type: !140)
!3056 = !DILocation(line: 187, column: 26, scope: !2962, inlinedAt: !3057)
!3057 = distinct !DILocation(line: 956, column: 36, scope: !2990, inlinedAt: !3058)
!3058 = distinct !DILocation(line: 969, column: 10, scope: !3049)
!3059 = !DILocation(line: 967, column: 40, scope: !3049)
!3060 = !DILocation(line: 967, column: 55, scope: !3049)
!3061 = !DILocation(line: 967, column: 67, scope: !3049)
!3062 = !DILocation(line: 953, column: 27, scope: !2990, inlinedAt: !3058)
!3063 = !DILocation(line: 953, column: 49, scope: !2990, inlinedAt: !3058)
!3064 = !DILocation(line: 954, column: 35, scope: !2990, inlinedAt: !3058)
!3065 = !DILocation(line: 954, column: 47, scope: !2990, inlinedAt: !3058)
!3066 = !DILocation(line: 956, column: 3, scope: !2990, inlinedAt: !3058)
!3067 = !DILocation(line: 956, column: 32, scope: !2990, inlinedAt: !3058)
!3068 = !DILocation(line: 185, column: 48, scope: !2962, inlinedAt: !3057)
!3069 = !DILocation(line: 187, column: 3, scope: !2962, inlinedAt: !3057)
!3070 = !DILocation(line: 188, column: 13, scope: !2979, inlinedAt: !3057)
!3071 = !DILocation(line: 188, column: 7, scope: !2962, inlinedAt: !3057)
!3072 = !DILocation(line: 189, column: 5, scope: !2979, inlinedAt: !3057)
!3073 = !{!3074}
!3074 = distinct !{!3074, !3075, !"quoting_options_from_style: argument 0"}
!3075 = distinct !{!3075, !"quoting_options_from_style"}
!3076 = !DILocation(line: 191, column: 10, scope: !2962, inlinedAt: !3057)
!3077 = !DILocation(line: 192, column: 1, scope: !2962, inlinedAt: !3057)
!3078 = !DILocation(line: 957, column: 10, scope: !2990, inlinedAt: !3058)
!3079 = !DILocation(line: 958, column: 1, scope: !2990, inlinedAt: !3058)
!3080 = !DILocation(line: 969, column: 3, scope: !3049)
!3081 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !146, file: !146, line: 973, type: !3082, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !3084)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!43, !58, !140, !44}
!3084 = !{!3085, !3086, !3087, !3088}
!3085 = !DILocalVariable(name: "arg", arg: 1, scope: !3081, file: !146, line: 973, type: !58)
!3086 = !DILocalVariable(name: "argsize", arg: 2, scope: !3081, file: !146, line: 973, type: !140)
!3087 = !DILocalVariable(name: "ch", arg: 3, scope: !3081, file: !146, line: 973, type: !44)
!3088 = !DILocalVariable(name: "options", scope: !3081, file: !146, line: 975, type: !153)
!3089 = !DILocation(line: 973, column: 32, scope: !3081)
!3090 = !DILocation(line: 973, column: 44, scope: !3081)
!3091 = !DILocation(line: 973, column: 58, scope: !3081)
!3092 = !DILocation(line: 975, column: 3, scope: !3081)
!3093 = !DILocation(line: 976, column: 13, scope: !3081)
!3094 = !{i64 0, i64 4, !1120, i64 4, i64 4, !833, i64 8, i64 32, !1120, i64 40, i64 8, !710, i64 48, i64 8, !710}
!3095 = !DILocation(line: 975, column: 26, scope: !3081)
!3096 = !DILocation(line: 144, column: 43, scope: !1832, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 977, column: 3, scope: !3081)
!3098 = !DILocation(line: 144, column: 51, scope: !1832, inlinedAt: !3097)
!3099 = !DILocation(line: 144, column: 58, scope: !1832, inlinedAt: !3097)
!3100 = !DILocation(line: 146, column: 17, scope: !1832, inlinedAt: !3097)
!3101 = !DILocation(line: 148, column: 62, scope: !1832, inlinedAt: !3097)
!3102 = !DILocation(line: 148, column: 57, scope: !1832, inlinedAt: !3097)
!3103 = !DILocation(line: 147, column: 17, scope: !1832, inlinedAt: !3097)
!3104 = !DILocation(line: 149, column: 18, scope: !1832, inlinedAt: !3097)
!3105 = !DILocation(line: 149, column: 15, scope: !1832, inlinedAt: !3097)
!3106 = !DILocation(line: 149, column: 7, scope: !1832, inlinedAt: !3097)
!3107 = !DILocation(line: 150, column: 12, scope: !1832, inlinedAt: !3097)
!3108 = !DILocation(line: 150, column: 15, scope: !1832, inlinedAt: !3097)
!3109 = !DILocation(line: 150, column: 25, scope: !1832, inlinedAt: !3097)
!3110 = !DILocation(line: 150, column: 7, scope: !1832, inlinedAt: !3097)
!3111 = !DILocation(line: 151, column: 18, scope: !1832, inlinedAt: !3097)
!3112 = !DILocation(line: 151, column: 23, scope: !1832, inlinedAt: !3097)
!3113 = !DILocation(line: 151, column: 6, scope: !1832, inlinedAt: !3097)
!3114 = !DILocation(line: 978, column: 10, scope: !3081)
!3115 = !DILocation(line: 979, column: 1, scope: !3081)
!3116 = !DILocation(line: 978, column: 3, scope: !3081)
!3117 = distinct !DISubprogram(name: "quotearg_char", scope: !146, file: !146, line: 982, type: !3118, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !3120)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!43, !58, !44}
!3120 = !{!3121, !3122}
!3121 = !DILocalVariable(name: "arg", arg: 1, scope: !3117, file: !146, line: 982, type: !58)
!3122 = !DILocalVariable(name: "ch", arg: 2, scope: !3117, file: !146, line: 982, type: !44)
!3123 = !DILocation(line: 982, column: 28, scope: !3117)
!3124 = !DILocation(line: 982, column: 38, scope: !3117)
!3125 = !DILocation(line: 973, column: 32, scope: !3081, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 984, column: 10, scope: !3117)
!3127 = !DILocation(line: 973, column: 44, scope: !3081, inlinedAt: !3126)
!3128 = !DILocation(line: 973, column: 58, scope: !3081, inlinedAt: !3126)
!3129 = !DILocation(line: 975, column: 3, scope: !3081, inlinedAt: !3126)
!3130 = !DILocation(line: 976, column: 13, scope: !3081, inlinedAt: !3126)
!3131 = !DILocation(line: 975, column: 26, scope: !3081, inlinedAt: !3126)
!3132 = !DILocation(line: 144, column: 43, scope: !1832, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 977, column: 3, scope: !3081, inlinedAt: !3126)
!3134 = !DILocation(line: 144, column: 51, scope: !1832, inlinedAt: !3133)
!3135 = !DILocation(line: 144, column: 58, scope: !1832, inlinedAt: !3133)
!3136 = !DILocation(line: 146, column: 17, scope: !1832, inlinedAt: !3133)
!3137 = !DILocation(line: 148, column: 62, scope: !1832, inlinedAt: !3133)
!3138 = !DILocation(line: 148, column: 57, scope: !1832, inlinedAt: !3133)
!3139 = !DILocation(line: 147, column: 17, scope: !1832, inlinedAt: !3133)
!3140 = !DILocation(line: 149, column: 18, scope: !1832, inlinedAt: !3133)
!3141 = !DILocation(line: 149, column: 15, scope: !1832, inlinedAt: !3133)
!3142 = !DILocation(line: 149, column: 7, scope: !1832, inlinedAt: !3133)
!3143 = !DILocation(line: 150, column: 12, scope: !1832, inlinedAt: !3133)
!3144 = !DILocation(line: 150, column: 15, scope: !1832, inlinedAt: !3133)
!3145 = !DILocation(line: 150, column: 25, scope: !1832, inlinedAt: !3133)
!3146 = !DILocation(line: 150, column: 7, scope: !1832, inlinedAt: !3133)
!3147 = !DILocation(line: 151, column: 18, scope: !1832, inlinedAt: !3133)
!3148 = !DILocation(line: 151, column: 23, scope: !1832, inlinedAt: !3133)
!3149 = !DILocation(line: 151, column: 6, scope: !1832, inlinedAt: !3133)
!3150 = !DILocation(line: 978, column: 10, scope: !3081, inlinedAt: !3126)
!3151 = !DILocation(line: 979, column: 1, scope: !3081, inlinedAt: !3126)
!3152 = !DILocation(line: 984, column: 3, scope: !3117)
!3153 = distinct !DISubprogram(name: "quotearg_colon", scope: !146, file: !146, line: 988, type: !2929, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !3154)
!3154 = !{!3155}
!3155 = !DILocalVariable(name: "arg", arg: 1, scope: !3153, file: !146, line: 988, type: !58)
!3156 = !DILocation(line: 988, column: 29, scope: !3153)
!3157 = !DILocation(line: 982, column: 28, scope: !3117, inlinedAt: !3158)
!3158 = distinct !DILocation(line: 990, column: 10, scope: !3153)
!3159 = !DILocation(line: 982, column: 38, scope: !3117, inlinedAt: !3158)
!3160 = !DILocation(line: 973, column: 32, scope: !3081, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 984, column: 10, scope: !3117, inlinedAt: !3158)
!3162 = !DILocation(line: 973, column: 44, scope: !3081, inlinedAt: !3161)
!3163 = !DILocation(line: 973, column: 58, scope: !3081, inlinedAt: !3161)
!3164 = !DILocation(line: 975, column: 3, scope: !3081, inlinedAt: !3161)
!3165 = !DILocation(line: 976, column: 13, scope: !3081, inlinedAt: !3161)
!3166 = !DILocation(line: 975, column: 26, scope: !3081, inlinedAt: !3161)
!3167 = !DILocation(line: 144, column: 43, scope: !1832, inlinedAt: !3168)
!3168 = distinct !DILocation(line: 977, column: 3, scope: !3081, inlinedAt: !3161)
!3169 = !DILocation(line: 144, column: 51, scope: !1832, inlinedAt: !3168)
!3170 = !DILocation(line: 144, column: 58, scope: !1832, inlinedAt: !3168)
!3171 = !DILocation(line: 146, column: 17, scope: !1832, inlinedAt: !3168)
!3172 = !DILocation(line: 148, column: 57, scope: !1832, inlinedAt: !3168)
!3173 = !DILocation(line: 147, column: 17, scope: !1832, inlinedAt: !3168)
!3174 = !DILocation(line: 149, column: 7, scope: !1832, inlinedAt: !3168)
!3175 = !DILocation(line: 150, column: 12, scope: !1832, inlinedAt: !3168)
!3176 = !DILocation(line: 151, column: 6, scope: !1832, inlinedAt: !3168)
!3177 = !DILocation(line: 978, column: 10, scope: !3081, inlinedAt: !3161)
!3178 = !DILocation(line: 979, column: 1, scope: !3081, inlinedAt: !3161)
!3179 = !DILocation(line: 990, column: 3, scope: !3153)
!3180 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !146, file: !146, line: 994, type: !2940, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !3181)
!3181 = !{!3182, !3183}
!3182 = !DILocalVariable(name: "arg", arg: 1, scope: !3180, file: !146, line: 994, type: !58)
!3183 = !DILocalVariable(name: "argsize", arg: 2, scope: !3180, file: !146, line: 994, type: !140)
!3184 = !DILocation(line: 994, column: 33, scope: !3180)
!3185 = !DILocation(line: 994, column: 45, scope: !3180)
!3186 = !DILocation(line: 973, column: 32, scope: !3081, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 996, column: 10, scope: !3180)
!3188 = !DILocation(line: 973, column: 44, scope: !3081, inlinedAt: !3187)
!3189 = !DILocation(line: 973, column: 58, scope: !3081, inlinedAt: !3187)
!3190 = !DILocation(line: 975, column: 3, scope: !3081, inlinedAt: !3187)
!3191 = !DILocation(line: 976, column: 13, scope: !3081, inlinedAt: !3187)
!3192 = !DILocation(line: 975, column: 26, scope: !3081, inlinedAt: !3187)
!3193 = !DILocation(line: 144, column: 43, scope: !1832, inlinedAt: !3194)
!3194 = distinct !DILocation(line: 977, column: 3, scope: !3081, inlinedAt: !3187)
!3195 = !DILocation(line: 144, column: 51, scope: !1832, inlinedAt: !3194)
!3196 = !DILocation(line: 144, column: 58, scope: !1832, inlinedAt: !3194)
!3197 = !DILocation(line: 146, column: 17, scope: !1832, inlinedAt: !3194)
!3198 = !DILocation(line: 148, column: 57, scope: !1832, inlinedAt: !3194)
!3199 = !DILocation(line: 147, column: 17, scope: !1832, inlinedAt: !3194)
!3200 = !DILocation(line: 149, column: 7, scope: !1832, inlinedAt: !3194)
!3201 = !DILocation(line: 150, column: 12, scope: !1832, inlinedAt: !3194)
!3202 = !DILocation(line: 151, column: 6, scope: !1832, inlinedAt: !3194)
!3203 = !DILocation(line: 978, column: 10, scope: !3081, inlinedAt: !3187)
!3204 = !DILocation(line: 979, column: 1, scope: !3081, inlinedAt: !3187)
!3205 = !DILocation(line: 996, column: 3, scope: !3180)
!3206 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !146, file: !146, line: 1000, type: !2954, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !3207)
!3207 = !{!3208, !3209, !3210, !3211}
!3208 = !DILocalVariable(name: "n", arg: 1, scope: !3206, file: !146, line: 1000, type: !28)
!3209 = !DILocalVariable(name: "s", arg: 2, scope: !3206, file: !146, line: 1000, type: !5)
!3210 = !DILocalVariable(name: "arg", arg: 3, scope: !3206, file: !146, line: 1000, type: !58)
!3211 = !DILocalVariable(name: "options", scope: !3206, file: !146, line: 1002, type: !153)
!3212 = !DILocation(line: 187, column: 26, scope: !2962, inlinedAt: !3213)
!3213 = distinct !DILocation(line: 1003, column: 13, scope: !3206)
!3214 = !DILocation(line: 1000, column: 29, scope: !3206)
!3215 = !DILocation(line: 1000, column: 51, scope: !3206)
!3216 = !DILocation(line: 1000, column: 66, scope: !3206)
!3217 = !DILocation(line: 1002, column: 3, scope: !3206)
!3218 = !DILocation(line: 185, column: 48, scope: !2962, inlinedAt: !3213)
!3219 = !DILocation(line: 187, column: 3, scope: !2962, inlinedAt: !3213)
!3220 = !DILocation(line: 188, column: 13, scope: !2979, inlinedAt: !3213)
!3221 = !DILocation(line: 188, column: 7, scope: !2962, inlinedAt: !3213)
!3222 = !DILocation(line: 189, column: 5, scope: !2979, inlinedAt: !3213)
!3223 = !{!3224}
!3224 = distinct !{!3224, !3225, !"quoting_options_from_style: argument 0"}
!3225 = distinct !{!3225, !"quoting_options_from_style"}
!3226 = !DILocation(line: 191, column: 10, scope: !2962, inlinedAt: !3213)
!3227 = !DILocation(line: 192, column: 1, scope: !2962, inlinedAt: !3213)
!3228 = !DILocation(line: 1003, column: 13, scope: !3206)
!3229 = !DILocation(line: 1002, column: 26, scope: !3206)
!3230 = !DILocation(line: 144, column: 43, scope: !1832, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 1004, column: 3, scope: !3206)
!3232 = !DILocation(line: 144, column: 51, scope: !1832, inlinedAt: !3231)
!3233 = !DILocation(line: 144, column: 58, scope: !1832, inlinedAt: !3231)
!3234 = !DILocation(line: 146, column: 17, scope: !1832, inlinedAt: !3231)
!3235 = !DILocation(line: 148, column: 57, scope: !1832, inlinedAt: !3231)
!3236 = !DILocation(line: 147, column: 17, scope: !1832, inlinedAt: !3231)
!3237 = !DILocation(line: 149, column: 7, scope: !1832, inlinedAt: !3231)
!3238 = !DILocation(line: 150, column: 12, scope: !1832, inlinedAt: !3231)
!3239 = !DILocation(line: 151, column: 6, scope: !1832, inlinedAt: !3231)
!3240 = !DILocation(line: 1005, column: 10, scope: !3206)
!3241 = !DILocation(line: 1006, column: 1, scope: !3206)
!3242 = !DILocation(line: 1005, column: 3, scope: !3206)
!3243 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !146, file: !146, line: 1009, type: !3244, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !3246)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!43, !28, !58, !58, !58}
!3246 = !{!3247, !3248, !3249, !3250}
!3247 = !DILocalVariable(name: "n", arg: 1, scope: !3243, file: !146, line: 1009, type: !28)
!3248 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3243, file: !146, line: 1009, type: !58)
!3249 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3243, file: !146, line: 1010, type: !58)
!3250 = !DILocalVariable(name: "arg", arg: 4, scope: !3243, file: !146, line: 1010, type: !58)
!3251 = !DILocation(line: 1009, column: 24, scope: !3243)
!3252 = !DILocation(line: 1009, column: 39, scope: !3243)
!3253 = !DILocation(line: 1010, column: 32, scope: !3243)
!3254 = !DILocation(line: 1010, column: 57, scope: !3243)
!3255 = !DILocalVariable(name: "n", arg: 1, scope: !3256, file: !146, line: 1017, type: !28)
!3256 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !146, file: !146, line: 1017, type: !3257, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !3259)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!43, !28, !58, !58, !58, !140}
!3259 = !{!3255, !3260, !3261, !3262, !3263, !3264}
!3260 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3256, file: !146, line: 1017, type: !58)
!3261 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3256, file: !146, line: 1018, type: !58)
!3262 = !DILocalVariable(name: "arg", arg: 4, scope: !3256, file: !146, line: 1019, type: !58)
!3263 = !DILocalVariable(name: "argsize", arg: 5, scope: !3256, file: !146, line: 1019, type: !140)
!3264 = !DILocalVariable(name: "o", scope: !3256, file: !146, line: 1021, type: !153)
!3265 = !DILocation(line: 1017, column: 28, scope: !3256, inlinedAt: !3266)
!3266 = distinct !DILocation(line: 1012, column: 10, scope: !3243)
!3267 = !DILocation(line: 1017, column: 43, scope: !3256, inlinedAt: !3266)
!3268 = !DILocation(line: 1018, column: 36, scope: !3256, inlinedAt: !3266)
!3269 = !DILocation(line: 1019, column: 36, scope: !3256, inlinedAt: !3266)
!3270 = !DILocation(line: 1019, column: 48, scope: !3256, inlinedAt: !3266)
!3271 = !DILocation(line: 1021, column: 3, scope: !3256, inlinedAt: !3266)
!3272 = !DILocation(line: 1021, column: 30, scope: !3256, inlinedAt: !3266)
!3273 = !DILocation(line: 1021, column: 26, scope: !3256, inlinedAt: !3266)
!3274 = !DILocation(line: 171, column: 45, scope: !1881, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 1022, column: 3, scope: !3256, inlinedAt: !3266)
!3276 = !DILocation(line: 172, column: 33, scope: !1881, inlinedAt: !3275)
!3277 = !DILocation(line: 172, column: 57, scope: !1881, inlinedAt: !3275)
!3278 = !DILocation(line: 176, column: 6, scope: !1881, inlinedAt: !3275)
!3279 = !DILocation(line: 176, column: 12, scope: !1881, inlinedAt: !3275)
!3280 = !DILocation(line: 177, column: 8, scope: !1897, inlinedAt: !3275)
!3281 = !DILocation(line: 177, column: 23, scope: !1897, inlinedAt: !3275)
!3282 = !DILocation(line: 177, column: 19, scope: !1897, inlinedAt: !3275)
!3283 = !DILocation(line: 178, column: 5, scope: !1897, inlinedAt: !3275)
!3284 = !DILocation(line: 179, column: 6, scope: !1881, inlinedAt: !3275)
!3285 = !DILocation(line: 179, column: 17, scope: !1881, inlinedAt: !3275)
!3286 = !DILocation(line: 180, column: 6, scope: !1881, inlinedAt: !3275)
!3287 = !DILocation(line: 180, column: 18, scope: !1881, inlinedAt: !3275)
!3288 = !DILocation(line: 1023, column: 10, scope: !3256, inlinedAt: !3266)
!3289 = !DILocation(line: 1024, column: 1, scope: !3256, inlinedAt: !3266)
!3290 = !DILocation(line: 1012, column: 3, scope: !3243)
!3291 = !DILocation(line: 1017, column: 28, scope: !3256)
!3292 = !DILocation(line: 1017, column: 43, scope: !3256)
!3293 = !DILocation(line: 1018, column: 36, scope: !3256)
!3294 = !DILocation(line: 1019, column: 36, scope: !3256)
!3295 = !DILocation(line: 1019, column: 48, scope: !3256)
!3296 = !DILocation(line: 1021, column: 3, scope: !3256)
!3297 = !DILocation(line: 1021, column: 30, scope: !3256)
!3298 = !DILocation(line: 1021, column: 26, scope: !3256)
!3299 = !DILocation(line: 171, column: 45, scope: !1881, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 1022, column: 3, scope: !3256)
!3301 = !DILocation(line: 172, column: 33, scope: !1881, inlinedAt: !3300)
!3302 = !DILocation(line: 172, column: 57, scope: !1881, inlinedAt: !3300)
!3303 = !DILocation(line: 176, column: 6, scope: !1881, inlinedAt: !3300)
!3304 = !DILocation(line: 176, column: 12, scope: !1881, inlinedAt: !3300)
!3305 = !DILocation(line: 177, column: 8, scope: !1897, inlinedAt: !3300)
!3306 = !DILocation(line: 177, column: 23, scope: !1897, inlinedAt: !3300)
!3307 = !DILocation(line: 177, column: 19, scope: !1897, inlinedAt: !3300)
!3308 = !DILocation(line: 178, column: 5, scope: !1897, inlinedAt: !3300)
!3309 = !DILocation(line: 179, column: 6, scope: !1881, inlinedAt: !3300)
!3310 = !DILocation(line: 179, column: 17, scope: !1881, inlinedAt: !3300)
!3311 = !DILocation(line: 180, column: 6, scope: !1881, inlinedAt: !3300)
!3312 = !DILocation(line: 180, column: 18, scope: !1881, inlinedAt: !3300)
!3313 = !DILocation(line: 1023, column: 10, scope: !3256)
!3314 = !DILocation(line: 1024, column: 1, scope: !3256)
!3315 = !DILocation(line: 1023, column: 3, scope: !3256)
!3316 = distinct !DISubprogram(name: "quotearg_custom", scope: !146, file: !146, line: 1027, type: !3317, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !3319)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!43, !58, !58, !58}
!3319 = !{!3320, !3321, !3322}
!3320 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3316, file: !146, line: 1027, type: !58)
!3321 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3316, file: !146, line: 1027, type: !58)
!3322 = !DILocalVariable(name: "arg", arg: 3, scope: !3316, file: !146, line: 1028, type: !58)
!3323 = !DILocation(line: 1027, column: 30, scope: !3316)
!3324 = !DILocation(line: 1027, column: 54, scope: !3316)
!3325 = !DILocation(line: 1028, column: 30, scope: !3316)
!3326 = !DILocation(line: 1009, column: 24, scope: !3243, inlinedAt: !3327)
!3327 = distinct !DILocation(line: 1030, column: 10, scope: !3316)
!3328 = !DILocation(line: 1009, column: 39, scope: !3243, inlinedAt: !3327)
!3329 = !DILocation(line: 1010, column: 32, scope: !3243, inlinedAt: !3327)
!3330 = !DILocation(line: 1010, column: 57, scope: !3243, inlinedAt: !3327)
!3331 = !DILocation(line: 1017, column: 28, scope: !3256, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 1012, column: 10, scope: !3243, inlinedAt: !3327)
!3333 = !DILocation(line: 1017, column: 43, scope: !3256, inlinedAt: !3332)
!3334 = !DILocation(line: 1018, column: 36, scope: !3256, inlinedAt: !3332)
!3335 = !DILocation(line: 1019, column: 36, scope: !3256, inlinedAt: !3332)
!3336 = !DILocation(line: 1019, column: 48, scope: !3256, inlinedAt: !3332)
!3337 = !DILocation(line: 1021, column: 3, scope: !3256, inlinedAt: !3332)
!3338 = !DILocation(line: 1021, column: 30, scope: !3256, inlinedAt: !3332)
!3339 = !DILocation(line: 1021, column: 26, scope: !3256, inlinedAt: !3332)
!3340 = !DILocation(line: 171, column: 45, scope: !1881, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 1022, column: 3, scope: !3256, inlinedAt: !3332)
!3342 = !DILocation(line: 172, column: 33, scope: !1881, inlinedAt: !3341)
!3343 = !DILocation(line: 172, column: 57, scope: !1881, inlinedAt: !3341)
!3344 = !DILocation(line: 176, column: 6, scope: !1881, inlinedAt: !3341)
!3345 = !DILocation(line: 176, column: 12, scope: !1881, inlinedAt: !3341)
!3346 = !DILocation(line: 177, column: 8, scope: !1897, inlinedAt: !3341)
!3347 = !DILocation(line: 177, column: 23, scope: !1897, inlinedAt: !3341)
!3348 = !DILocation(line: 177, column: 19, scope: !1897, inlinedAt: !3341)
!3349 = !DILocation(line: 178, column: 5, scope: !1897, inlinedAt: !3341)
!3350 = !DILocation(line: 179, column: 6, scope: !1881, inlinedAt: !3341)
!3351 = !DILocation(line: 179, column: 17, scope: !1881, inlinedAt: !3341)
!3352 = !DILocation(line: 180, column: 6, scope: !1881, inlinedAt: !3341)
!3353 = !DILocation(line: 180, column: 18, scope: !1881, inlinedAt: !3341)
!3354 = !DILocation(line: 1023, column: 10, scope: !3256, inlinedAt: !3332)
!3355 = !DILocation(line: 1024, column: 1, scope: !3256, inlinedAt: !3332)
!3356 = !DILocation(line: 1030, column: 3, scope: !3316)
!3357 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !146, file: !146, line: 1034, type: !3358, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !3360)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!43, !58, !58, !58, !140}
!3360 = !{!3361, !3362, !3363, !3364}
!3361 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3357, file: !146, line: 1034, type: !58)
!3362 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3357, file: !146, line: 1034, type: !58)
!3363 = !DILocalVariable(name: "arg", arg: 3, scope: !3357, file: !146, line: 1035, type: !58)
!3364 = !DILocalVariable(name: "argsize", arg: 4, scope: !3357, file: !146, line: 1035, type: !140)
!3365 = !DILocation(line: 1034, column: 34, scope: !3357)
!3366 = !DILocation(line: 1034, column: 58, scope: !3357)
!3367 = !DILocation(line: 1035, column: 34, scope: !3357)
!3368 = !DILocation(line: 1035, column: 46, scope: !3357)
!3369 = !DILocation(line: 1017, column: 28, scope: !3256, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 1037, column: 10, scope: !3357)
!3371 = !DILocation(line: 1017, column: 43, scope: !3256, inlinedAt: !3370)
!3372 = !DILocation(line: 1018, column: 36, scope: !3256, inlinedAt: !3370)
!3373 = !DILocation(line: 1019, column: 36, scope: !3256, inlinedAt: !3370)
!3374 = !DILocation(line: 1019, column: 48, scope: !3256, inlinedAt: !3370)
!3375 = !DILocation(line: 1021, column: 3, scope: !3256, inlinedAt: !3370)
!3376 = !DILocation(line: 1021, column: 30, scope: !3256, inlinedAt: !3370)
!3377 = !DILocation(line: 1021, column: 26, scope: !3256, inlinedAt: !3370)
!3378 = !DILocation(line: 171, column: 45, scope: !1881, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 1022, column: 3, scope: !3256, inlinedAt: !3370)
!3380 = !DILocation(line: 172, column: 33, scope: !1881, inlinedAt: !3379)
!3381 = !DILocation(line: 172, column: 57, scope: !1881, inlinedAt: !3379)
!3382 = !DILocation(line: 176, column: 6, scope: !1881, inlinedAt: !3379)
!3383 = !DILocation(line: 176, column: 12, scope: !1881, inlinedAt: !3379)
!3384 = !DILocation(line: 177, column: 8, scope: !1897, inlinedAt: !3379)
!3385 = !DILocation(line: 177, column: 23, scope: !1897, inlinedAt: !3379)
!3386 = !DILocation(line: 177, column: 19, scope: !1897, inlinedAt: !3379)
!3387 = !DILocation(line: 178, column: 5, scope: !1897, inlinedAt: !3379)
!3388 = !DILocation(line: 179, column: 6, scope: !1881, inlinedAt: !3379)
!3389 = !DILocation(line: 179, column: 17, scope: !1881, inlinedAt: !3379)
!3390 = !DILocation(line: 180, column: 6, scope: !1881, inlinedAt: !3379)
!3391 = !DILocation(line: 180, column: 18, scope: !1881, inlinedAt: !3379)
!3392 = !DILocation(line: 1023, column: 10, scope: !3256, inlinedAt: !3370)
!3393 = !DILocation(line: 1024, column: 1, scope: !3256, inlinedAt: !3370)
!3394 = !DILocation(line: 1037, column: 3, scope: !3357)
!3395 = distinct !DISubprogram(name: "quote_n_mem", scope: !146, file: !146, line: 1052, type: !3396, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !3398)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!58, !28, !58, !140}
!3398 = !{!3399, !3400, !3401}
!3399 = !DILocalVariable(name: "n", arg: 1, scope: !3395, file: !146, line: 1052, type: !28)
!3400 = !DILocalVariable(name: "arg", arg: 2, scope: !3395, file: !146, line: 1052, type: !58)
!3401 = !DILocalVariable(name: "argsize", arg: 3, scope: !3395, file: !146, line: 1052, type: !140)
!3402 = !DILocation(line: 1052, column: 18, scope: !3395)
!3403 = !DILocation(line: 1052, column: 33, scope: !3395)
!3404 = !DILocation(line: 1052, column: 45, scope: !3395)
!3405 = !DILocation(line: 1054, column: 10, scope: !3395)
!3406 = !DILocation(line: 1054, column: 3, scope: !3395)
!3407 = distinct !DISubprogram(name: "quote_mem", scope: !146, file: !146, line: 1058, type: !3408, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !3410)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!58, !58, !140}
!3410 = !{!3411, !3412}
!3411 = !DILocalVariable(name: "arg", arg: 1, scope: !3407, file: !146, line: 1058, type: !58)
!3412 = !DILocalVariable(name: "argsize", arg: 2, scope: !3407, file: !146, line: 1058, type: !140)
!3413 = !DILocation(line: 1058, column: 24, scope: !3407)
!3414 = !DILocation(line: 1058, column: 36, scope: !3407)
!3415 = !DILocation(line: 1052, column: 18, scope: !3395, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 1060, column: 10, scope: !3407)
!3417 = !DILocation(line: 1052, column: 33, scope: !3395, inlinedAt: !3416)
!3418 = !DILocation(line: 1052, column: 45, scope: !3395, inlinedAt: !3416)
!3419 = !DILocation(line: 1054, column: 10, scope: !3395, inlinedAt: !3416)
!3420 = !DILocation(line: 1060, column: 3, scope: !3407)
!3421 = distinct !DISubprogram(name: "quote_n", scope: !146, file: !146, line: 1064, type: !3422, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !3424)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!58, !28, !58}
!3424 = !{!3425, !3426}
!3425 = !DILocalVariable(name: "n", arg: 1, scope: !3421, file: !146, line: 1064, type: !28)
!3426 = !DILocalVariable(name: "arg", arg: 2, scope: !3421, file: !146, line: 1064, type: !58)
!3427 = !DILocation(line: 1064, column: 14, scope: !3421)
!3428 = !DILocation(line: 1064, column: 29, scope: !3421)
!3429 = !DILocation(line: 1052, column: 18, scope: !3395, inlinedAt: !3430)
!3430 = distinct !DILocation(line: 1066, column: 10, scope: !3421)
!3431 = !DILocation(line: 1052, column: 33, scope: !3395, inlinedAt: !3430)
!3432 = !DILocation(line: 1052, column: 45, scope: !3395, inlinedAt: !3430)
!3433 = !DILocation(line: 1054, column: 10, scope: !3395, inlinedAt: !3430)
!3434 = !DILocation(line: 1066, column: 3, scope: !3421)
!3435 = distinct !DISubprogram(name: "quote", scope: !146, file: !146, line: 1070, type: !3436, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !3438)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!58, !58}
!3438 = !{!3439}
!3439 = !DILocalVariable(name: "arg", arg: 1, scope: !3435, file: !146, line: 1070, type: !58)
!3440 = !DILocation(line: 1070, column: 20, scope: !3435)
!3441 = !DILocation(line: 1064, column: 14, scope: !3421, inlinedAt: !3442)
!3442 = distinct !DILocation(line: 1072, column: 10, scope: !3435)
!3443 = !DILocation(line: 1064, column: 29, scope: !3421, inlinedAt: !3442)
!3444 = !DILocation(line: 1052, column: 18, scope: !3395, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 1066, column: 10, scope: !3421, inlinedAt: !3442)
!3446 = !DILocation(line: 1052, column: 33, scope: !3395, inlinedAt: !3445)
!3447 = !DILocation(line: 1052, column: 45, scope: !3395, inlinedAt: !3445)
!3448 = !DILocation(line: 1054, column: 10, scope: !3395, inlinedAt: !3445)
!3449 = !DILocation(line: 1072, column: 3, scope: !3435)
!3450 = distinct !DISubprogram(name: "savewd_init", scope: !20, file: !20, line: 79, type: !3451, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !3454)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{null, !3453}
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!3454 = !{!3455}
!3455 = !DILocalVariable(name: "wd", arg: 1, scope: !3450, file: !20, line: 79, type: !3453)
!3456 = !DILocation(line: 79, column: 29, scope: !3450)
!3457 = !DILocation(line: 81, column: 7, scope: !3450)
!3458 = !DILocation(line: 81, column: 13, scope: !3450)
!3459 = !DILocation(line: 82, column: 1, scope: !3450)
!3460 = distinct !DISubprogram(name: "savewd_errno", scope: !20, file: !20, line: 124, type: !3461, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !3465)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!28, !3463}
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !618)
!3465 = !{!3466}
!3466 = !DILocalVariable(name: "wd", arg: 1, scope: !3460, file: !20, line: 124, type: !3463)
!3467 = !DILocation(line: 124, column: 36, scope: !3460)
!3468 = !DILocation(line: 126, column: 15, scope: !3460)
!3469 = !DILocation(line: 126, column: 21, scope: !3460)
!3470 = !DILocation(line: 126, column: 11, scope: !3460)
!3471 = !DILocation(line: 126, column: 46, scope: !3460)
!3472 = !DILocation(line: 126, column: 3, scope: !3460)
!3473 = distinct !DISubprogram(name: "savewd_chdir", scope: !3474, file: !3474, line: 98, type: !3475, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !3477)
!3474 = !DIFile(filename: "lib/savewd.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!28, !3453, !58, !28, !82}
!3477 = !{!3478, !3479, !3480, !3481, !3482, !3483, !3484}
!3478 = !DILocalVariable(name: "wd", arg: 1, scope: !3473, file: !3474, line: 98, type: !3453)
!3479 = !DILocalVariable(name: "dir", arg: 2, scope: !3473, file: !3474, line: 98, type: !58)
!3480 = !DILocalVariable(name: "options", arg: 3, scope: !3473, file: !3474, line: 98, type: !28)
!3481 = !DILocalVariable(name: "open_result", arg: 4, scope: !3473, file: !3474, line: 99, type: !82)
!3482 = !DILocalVariable(name: "fd", scope: !3473, file: !3474, line: 101, type: !28)
!3483 = !DILocalVariable(name: "result", scope: !3473, file: !3474, line: 102, type: !28)
!3484 = !DILocalVariable(name: "e", scope: !3485, file: !3474, line: 158, type: !28)
!3485 = distinct !DILexicalBlock(scope: !3486, file: !3474, line: 157, column: 5)
!3486 = distinct !DILexicalBlock(scope: !3473, file: !3474, line: 156, column: 7)
!3487 = !DILocation(line: 98, column: 30, scope: !3473)
!3488 = !DILocation(line: 98, column: 46, scope: !3473)
!3489 = !DILocation(line: 98, column: 55, scope: !3473)
!3490 = !DILocation(line: 99, column: 19, scope: !3473)
!3491 = !DILocation(line: 101, column: 7, scope: !3473)
!3492 = !DILocation(line: 102, column: 7, scope: !3473)
!3493 = !DILocation(line: 106, column: 7, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3473, file: !3474, line: 106, column: 7)
!3495 = !DILocation(line: 107, column: 7, scope: !3494)
!3496 = !DILocation(line: 107, column: 19, scope: !3494)
!3497 = !DILocation(line: 111, column: 22, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3494, file: !3474, line: 108, column: 5)
!3499 = !DILocation(line: 111, column: 19, scope: !3498)
!3500 = !DILocation(line: 109, column: 12, scope: !3498)
!3501 = !DILocation(line: 113, column: 11, scope: !3498)
!3502 = !DILocation(line: 115, column: 26, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3504, file: !3474, line: 114, column: 9)
!3504 = distinct !DILexicalBlock(scope: !3498, file: !3474, line: 113, column: 11)
!3505 = !DILocation(line: 116, column: 28, scope: !3503)
!3506 = !DILocation(line: 116, column: 11, scope: !3503)
!3507 = !DILocation(line: 116, column: 26, scope: !3503)
!3508 = !DILocation(line: 117, column: 9, scope: !3503)
!3509 = !DILocation(line: 119, column: 14, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3498, file: !3474, line: 119, column: 11)
!3511 = !DILocation(line: 119, column: 18, scope: !3510)
!3512 = !DILocation(line: 119, column: 21, scope: !3510)
!3513 = !DILocation(line: 119, column: 27, scope: !3510)
!3514 = !DILocation(line: 123, column: 44, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3473, file: !3474, line: 123, column: 7)
!3516 = !DILocation(line: 123, column: 33, scope: !3515)
!3517 = !DILocalVariable(name: "wd", arg: 1, scope: !3518, file: !3474, line: 43, type: !3453)
!3518 = distinct !DISubprogram(name: "savewd_save", scope: !3474, file: !3474, line: 43, type: !3519, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !3521)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!98, !3453}
!3521 = !{!3517, !3522}
!3522 = !DILocalVariable(name: "fd", scope: !3523, file: !3474, line: 50, type: !28)
!3523 = distinct !DILexicalBlock(scope: !3524, file: !3474, line: 49, column: 7)
!3524 = distinct !DILexicalBlock(scope: !3518, file: !3474, line: 46, column: 5)
!3525 = !DILocation(line: 43, column: 29, scope: !3518, inlinedAt: !3526)
!3526 = distinct !DILocation(line: 125, column: 11, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3528, file: !3474, line: 125, column: 11)
!3528 = distinct !DILexicalBlock(scope: !3515, file: !3474, line: 124, column: 5)
!3529 = !DILocation(line: 45, column: 15, scope: !3518, inlinedAt: !3526)
!3530 = !DILocation(line: 45, column: 3, scope: !3518, inlinedAt: !3526)
!3531 = !DILocation(line: 50, column: 18, scope: !3523, inlinedAt: !3526)
!3532 = !DILocation(line: 50, column: 13, scope: !3523, inlinedAt: !3526)
!3533 = !DILocation(line: 51, column: 15, scope: !3534, inlinedAt: !3526)
!3534 = distinct !DILexicalBlock(scope: !3523, file: !3474, line: 51, column: 13)
!3535 = !DILocation(line: 51, column: 13, scope: !3523, inlinedAt: !3526)
!3536 = !DILocation(line: 53, column: 23, scope: !3537, inlinedAt: !3526)
!3537 = distinct !DILexicalBlock(scope: !3534, file: !3474, line: 52, column: 11)
!3538 = !DILocation(line: 54, column: 21, scope: !3537, inlinedAt: !3526)
!3539 = !DILocation(line: 54, column: 24, scope: !3537, inlinedAt: !3526)
!3540 = !DILocation(line: 57, column: 13, scope: !3541, inlinedAt: !3526)
!3541 = distinct !DILexicalBlock(scope: !3523, file: !3474, line: 57, column: 13)
!3542 = !DILocation(line: 57, column: 29, scope: !3541, inlinedAt: !3526)
!3543 = !DILocation(line: 59, column: 23, scope: !3544, inlinedAt: !3526)
!3544 = distinct !DILexicalBlock(scope: !3541, file: !3474, line: 58, column: 11)
!3545 = !DILocation(line: 60, column: 21, scope: !3544, inlinedAt: !3526)
!3546 = !DILocation(line: 60, column: 28, scope: !3544, inlinedAt: !3526)
!3547 = !DILocation(line: 64, column: 17, scope: !3524, inlinedAt: !3526)
!3548 = !DILocation(line: 65, column: 15, scope: !3524, inlinedAt: !3526)
!3549 = !DILocation(line: 65, column: 21, scope: !3524, inlinedAt: !3526)
!3550 = !DILocation(line: 68, column: 11, scope: !3524, inlinedAt: !3526)
!3551 = !DILocation(line: 68, column: 19, scope: !3552, inlinedAt: !3526)
!3552 = distinct !DILexicalBlock(scope: !3524, file: !3474, line: 68, column: 11)
!3553 = !DILocation(line: 73, column: 27, scope: !3554, inlinedAt: !3526)
!3554 = distinct !DILexicalBlock(scope: !3552, file: !3474, line: 69, column: 9)
!3555 = !DILocation(line: 73, column: 25, scope: !3554, inlinedAt: !3526)
!3556 = !DILocation(line: 74, column: 29, scope: !3557, inlinedAt: !3526)
!3557 = distinct !DILexicalBlock(scope: !3554, file: !3474, line: 74, column: 15)
!3558 = !DILocation(line: 74, column: 15, scope: !3554, inlinedAt: !3526)
!3559 = !DILocation(line: 76, column: 21, scope: !3560, inlinedAt: !3526)
!3560 = distinct !DILexicalBlock(scope: !3561, file: !3474, line: 76, column: 19)
!3561 = distinct !DILexicalBlock(scope: !3557, file: !3474, line: 75, column: 13)
!3562 = !DILocation(line: 76, column: 19, scope: !3561, inlinedAt: !3526)
!3563 = !DILocation(line: 78, column: 25, scope: !3561, inlinedAt: !3526)
!3564 = !DILocation(line: 79, column: 32, scope: !3561, inlinedAt: !3526)
!3565 = !DILocation(line: 79, column: 30, scope: !3561, inlinedAt: !3526)
!3566 = !DILocation(line: 80, column: 13, scope: !3561, inlinedAt: !3526)
!3567 = !DILocation(line: 91, column: 7, scope: !3568, inlinedAt: !3526)
!3568 = distinct !DILexicalBlock(scope: !3569, file: !3474, line: 91, column: 7)
!3569 = distinct !DILexicalBlock(scope: !3524, file: !3474, line: 91, column: 7)
!3570 = !DILocation(line: 132, column: 24, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3527, file: !3474, line: 131, column: 9)
!3572 = !DILocation(line: 132, column: 21, scope: !3571)
!3573 = !DILocation(line: 132, column: 30, scope: !3571)
!3574 = !DILocation(line: 132, column: 44, scope: !3571)
!3575 = !DILocation(line: 134, column: 22, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3571, file: !3474, line: 134, column: 15)
!3577 = !DILocation(line: 134, column: 15, scope: !3571)
!3578 = !DILocation(line: 135, column: 25, scope: !3576)
!3579 = !DILocation(line: 135, column: 13, scope: !3576)
!3580 = !DILocation(line: 138, column: 27, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3576, file: !3474, line: 136, column: 15)
!3582 = !DILocation(line: 139, column: 17, scope: !3581)
!3583 = !DILocation(line: 147, column: 17, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3585, file: !3474, line: 147, column: 17)
!3585 = distinct !DILexicalBlock(scope: !3581, file: !3474, line: 147, column: 17)
!3586 = !DILocation(line: 147, column: 17, scope: !3585)
!3587 = !DILocation(line: 151, column: 17, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3589, file: !3474, line: 151, column: 17)
!3589 = distinct !DILexicalBlock(scope: !3581, file: !3474, line: 151, column: 17)
!3590 = !DILocation(line: 156, column: 9, scope: !3486)
!3591 = !DILocation(line: 156, column: 20, scope: !3486)
!3592 = !DILocation(line: 156, column: 15, scope: !3486)
!3593 = !DILocation(line: 158, column: 15, scope: !3485)
!3594 = !DILocation(line: 158, column: 11, scope: !3485)
!3595 = !DILocation(line: 159, column: 7, scope: !3485)
!3596 = !DILocation(line: 160, column: 13, scope: !3485)
!3597 = !DILocation(line: 161, column: 5, scope: !3485)
!3598 = !DILocation(line: 163, column: 3, scope: !3473)
!3599 = distinct !DISubprogram(name: "savewd_restore", scope: !3474, file: !3474, line: 167, type: !3600, isLocal: false, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !3602)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!28, !3453, !28}
!3602 = !{!3603, !3604, !3605, !3609, !3611}
!3603 = !DILocalVariable(name: "wd", arg: 1, scope: !3599, file: !3474, line: 167, type: !3453)
!3604 = !DILocalVariable(name: "status", arg: 2, scope: !3599, file: !3474, line: 167, type: !28)
!3605 = !DILocalVariable(name: "chdir_errno", scope: !3606, file: !3474, line: 186, type: !28)
!3606 = distinct !DILexicalBlock(scope: !3607, file: !3474, line: 185, column: 9)
!3607 = distinct !DILexicalBlock(scope: !3608, file: !3474, line: 179, column: 11)
!3608 = distinct !DILexicalBlock(scope: !3599, file: !3474, line: 170, column: 5)
!3609 = !DILocalVariable(name: "child", scope: !3610, file: !3474, line: 201, type: !31)
!3610 = distinct !DILexicalBlock(scope: !3608, file: !3474, line: 200, column: 7)
!3611 = !DILocalVariable(name: "child_status", scope: !3612, file: !3474, line: 206, type: !28)
!3612 = distinct !DILexicalBlock(scope: !3613, file: !3474, line: 205, column: 11)
!3613 = distinct !DILexicalBlock(scope: !3610, file: !3474, line: 204, column: 13)
!3614 = !DILocation(line: 167, column: 32, scope: !3599)
!3615 = !DILocation(line: 167, column: 40, scope: !3599)
!3616 = !DILocation(line: 169, column: 15, scope: !3599)
!3617 = !DILocation(line: 169, column: 3, scope: !3599)
!3618 = !DILocation(line: 194, column: 23, scope: !3608)
!3619 = !DILocation(line: 194, column: 7, scope: !3608)
!3620 = !DILocation(line: 179, column: 27, scope: !3607)
!3621 = !DILocation(line: 179, column: 11, scope: !3607)
!3622 = !DILocation(line: 179, column: 31, scope: !3607)
!3623 = !DILocation(line: 179, column: 11, scope: !3608)
!3624 = !DILocation(line: 181, column: 21, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3607, file: !3474, line: 180, column: 9)
!3626 = !DILocation(line: 182, column: 11, scope: !3625)
!3627 = !DILocation(line: 186, column: 29, scope: !3606)
!3628 = !DILocation(line: 186, column: 15, scope: !3606)
!3629 = !DILocation(line: 187, column: 26, scope: !3606)
!3630 = !DILocation(line: 187, column: 11, scope: !3606)
!3631 = !DILocation(line: 188, column: 21, scope: !3606)
!3632 = !DILocation(line: 189, column: 26, scope: !3606)
!3633 = !DILocation(line: 179, column: 34, scope: !3607)
!3634 = !DILocation(line: 194, column: 13, scope: !3608)
!3635 = !DILocation(line: 195, column: 7, scope: !3608)
!3636 = !DILocation(line: 201, column: 31, scope: !3610)
!3637 = !DILocation(line: 201, column: 15, scope: !3610)
!3638 = !DILocation(line: 202, column: 19, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3610, file: !3474, line: 202, column: 13)
!3640 = !DILocation(line: 202, column: 13, scope: !3610)
!3641 = !DILocation(line: 203, column: 11, scope: !3639)
!3642 = !DILocation(line: 204, column: 15, scope: !3613)
!3643 = !DILocation(line: 204, column: 13, scope: !3610)
!3644 = !DILocation(line: 206, column: 13, scope: !3612)
!3645 = !DILocation(line: 206, column: 17, scope: !3612)
!3646 = !DILocation(line: 207, column: 20, scope: !3612)
!3647 = !DILocation(line: 207, column: 54, scope: !3612)
!3648 = !DILocation(line: 207, column: 13, scope: !3612)
!3649 = !DILocation(line: 208, column: 15, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3651, file: !3474, line: 208, column: 15)
!3651 = distinct !DILexicalBlock(scope: !3612, file: !3474, line: 208, column: 15)
!3652 = distinct !{!3652, !3648, !3653}
!3653 = !DILocation(line: 208, column: 15, scope: !3612)
!3654 = !DILocation(line: 208, column: 15, scope: !3651)
!3655 = !DILocation(line: 209, column: 27, scope: !3612)
!3656 = !DILocation(line: 210, column: 19, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3612, file: !3474, line: 210, column: 17)
!3658 = !DILocation(line: 210, column: 17, scope: !3612)
!3659 = !DILocation(line: 211, column: 15, scope: !3657)
!3660 = !DILocation(line: 212, column: 20, scope: !3612)
!3661 = !DILocation(line: 213, column: 11, scope: !3613)
!3662 = !DILocation(line: 218, column: 7, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3664, file: !3474, line: 218, column: 7)
!3664 = distinct !DILexicalBlock(scope: !3608, file: !3474, line: 218, column: 7)
!3665 = !DILocation(line: 222, column: 1, scope: !3599)
!3666 = distinct !DISubprogram(name: "savewd_finish", scope: !3474, file: !3474, line: 225, type: !3451, isLocal: false, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !3667)
!3667 = !{!3668}
!3668 = !DILocalVariable(name: "wd", arg: 1, scope: !3666, file: !3474, line: 225, type: !3453)
!3669 = !DILocation(line: 225, column: 31, scope: !3666)
!3670 = !DILocation(line: 227, column: 15, scope: !3666)
!3671 = !DILocation(line: 227, column: 3, scope: !3666)
!3672 = !DILocation(line: 235, column: 22, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3666, file: !3474, line: 228, column: 5)
!3674 = !DILocation(line: 235, column: 7, scope: !3673)
!3675 = !DILocation(line: 236, column: 7, scope: !3673)
!3676 = !DILocation(line: 239, column: 7, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3678, file: !3474, line: 239, column: 7)
!3678 = distinct !DILexicalBlock(scope: !3673, file: !3474, line: 239, column: 7)
!3679 = !DILocation(line: 239, column: 7, scope: !3678)
!3680 = !DILocation(line: 243, column: 7, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3682, file: !3474, line: 243, column: 7)
!3682 = distinct !DILexicalBlock(scope: !3673, file: !3474, line: 243, column: 7)
!3683 = !DILocation(line: 246, column: 13, scope: !3666)
!3684 = !DILocation(line: 247, column: 1, scope: !3666)
!3685 = distinct !DISubprogram(name: "savewd_process_files", scope: !3474, file: !3474, line: 266, type: !3686, isLocal: false, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !3691)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!28, !28, !745, !3688, !45}
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!28, !43, !3453, !45}
!3691 = !{!3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3706, !3709}
!3692 = !DILocalVariable(name: "n_files", arg: 1, scope: !3685, file: !3474, line: 266, type: !28)
!3693 = !DILocalVariable(name: "file", arg: 2, scope: !3685, file: !3474, line: 266, type: !745)
!3694 = !DILocalVariable(name: "act", arg: 3, scope: !3685, file: !3474, line: 267, type: !3688)
!3695 = !DILocalVariable(name: "options", arg: 4, scope: !3685, file: !3474, line: 268, type: !45)
!3696 = !DILocalVariable(name: "i", scope: !3685, file: !3474, line: 270, type: !28)
!3697 = !DILocalVariable(name: "last_relative", scope: !3685, file: !3474, line: 271, type: !28)
!3698 = !DILocalVariable(name: "exit_status", scope: !3685, file: !3474, line: 272, type: !28)
!3699 = !DILocalVariable(name: "wd", scope: !3685, file: !3474, line: 273, type: !618)
!3700 = !DILocalVariable(name: "s", scope: !3701, file: !3474, line: 284, type: !28)
!3701 = distinct !DILexicalBlock(scope: !3702, file: !3474, line: 283, column: 9)
!3702 = distinct !DILexicalBlock(scope: !3703, file: !3474, line: 282, column: 11)
!3703 = distinct !DILexicalBlock(scope: !3704, file: !3474, line: 281, column: 5)
!3704 = distinct !DILexicalBlock(scope: !3705, file: !3474, line: 280, column: 3)
!3705 = distinct !DILexicalBlock(scope: !3685, file: !3474, line: 280, column: 3)
!3706 = !DILocalVariable(name: "r", scope: !3707, file: !3474, line: 291, type: !28)
!3707 = distinct !DILexicalBlock(scope: !3708, file: !3474, line: 290, column: 9)
!3708 = distinct !DILexicalBlock(scope: !3703, file: !3474, line: 289, column: 11)
!3709 = !DILocalVariable(name: "s", scope: !3710, file: !3474, line: 301, type: !28)
!3710 = distinct !DILexicalBlock(scope: !3711, file: !3474, line: 300, column: 5)
!3711 = distinct !DILexicalBlock(scope: !3712, file: !3474, line: 299, column: 3)
!3712 = distinct !DILexicalBlock(scope: !3685, file: !3474, line: 299, column: 3)
!3713 = !DILocation(line: 266, column: 27, scope: !3685)
!3714 = !DILocation(line: 266, column: 43, scope: !3685)
!3715 = !DILocation(line: 267, column: 29, scope: !3685)
!3716 = !DILocation(line: 268, column: 29, scope: !3685)
!3717 = !DILocation(line: 270, column: 7, scope: !3685)
!3718 = !DILocation(line: 272, column: 7, scope: !3685)
!3719 = !DILocation(line: 273, column: 3, scope: !3685)
!3720 = !DILocation(line: 273, column: 17, scope: !3685)
!3721 = !DILocation(line: 79, column: 29, scope: !3450, inlinedAt: !3722)
!3722 = distinct !DILocation(line: 274, column: 3, scope: !3685)
!3723 = !DILocation(line: 81, column: 7, scope: !3450, inlinedAt: !3722)
!3724 = !DILocation(line: 81, column: 13, scope: !3450, inlinedAt: !3722)
!3725 = !DILocation(line: 271, column: 7, scope: !3685)
!3726 = !DILocation(line: 276, column: 39, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3728, file: !3474, line: 276, column: 3)
!3728 = distinct !DILexicalBlock(scope: !3685, file: !3474, line: 276, column: 3)
!3729 = !DILocation(line: 276, column: 3, scope: !3728)
!3730 = distinct !{!3730, !3729, !3731}
!3731 = !DILocation(line: 278, column: 7, scope: !3728)
!3732 = !DILocation(line: 277, column: 11, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3727, file: !3474, line: 277, column: 9)
!3734 = !DILocation(line: 277, column: 9, scope: !3727)
!3735 = !DILocation(line: 280, column: 12, scope: !3704)
!3736 = !DILocation(line: 280, column: 3, scope: !3705)
!3737 = !DILocation(line: 262, column: 52, scope: !3738, inlinedAt: !3743)
!3738 = distinct !DISubprogram(name: "savewd_delegating", scope: !3474, file: !3474, line: 260, type: !3739, isLocal: true, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !3741)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!98, !3463}
!3741 = !{!3742}
!3742 = !DILocalVariable(name: "wd", arg: 1, scope: !3738, file: !3474, line: 260, type: !3463)
!3743 = distinct !DILocation(line: 282, column: 13, scope: !3702)
!3744 = !DILocation(line: 260, column: 41, scope: !3738, inlinedAt: !3743)
!3745 = !DILocation(line: 262, column: 20, scope: !3738, inlinedAt: !3743)
!3746 = !DILocation(line: 262, column: 42, scope: !3738, inlinedAt: !3743)
!3747 = !DILocation(line: 262, column: 37, scope: !3738, inlinedAt: !3743)
!3748 = !DILocation(line: 284, column: 24, scope: !3701)
!3749 = !DILocation(line: 284, column: 19, scope: !3701)
!3750 = !DILocation(line: 284, column: 15, scope: !3701)
!3751 = !DILocation(line: 285, column: 27, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3701, file: !3474, line: 285, column: 15)
!3753 = !DILocation(line: 285, column: 15, scope: !3701)
!3754 = !DILocation(line: 287, column: 9, scope: !3701)
!3755 = !DILocation(line: 289, column: 13, scope: !3708)
!3756 = !DILocation(line: 289, column: 11, scope: !3703)
!3757 = !DILocation(line: 291, column: 19, scope: !3707)
!3758 = !DILocation(line: 291, column: 15, scope: !3707)
!3759 = !DILocation(line: 292, column: 27, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3707, file: !3474, line: 292, column: 15)
!3761 = !DILocation(line: 292, column: 15, scope: !3707)
!3762 = !DILocation(line: 294, column: 9, scope: !3707)
!3763 = distinct !{!3763, !3736, !3764}
!3764 = !DILocation(line: 295, column: 5, scope: !3705)
!3765 = !DILocation(line: 225, column: 31, scope: !3666, inlinedAt: !3766)
!3766 = distinct !DILocation(line: 297, column: 3, scope: !3685)
!3767 = !DILocation(line: 227, column: 3, scope: !3666, inlinedAt: !3766)
!3768 = !DILocation(line: 235, column: 22, scope: !3673, inlinedAt: !3766)
!3769 = !DILocation(line: 235, column: 7, scope: !3673, inlinedAt: !3766)
!3770 = !DILocation(line: 236, column: 7, scope: !3673, inlinedAt: !3766)
!3771 = !DILocation(line: 239, column: 7, scope: !3677, inlinedAt: !3766)
!3772 = !DILocation(line: 239, column: 7, scope: !3678, inlinedAt: !3766)
!3773 = !DILocation(line: 243, column: 7, scope: !3681, inlinedAt: !3766)
!3774 = !DILocation(line: 246, column: 13, scope: !3666, inlinedAt: !3766)
!3775 = !DILocation(line: 299, column: 12, scope: !3711)
!3776 = !DILocation(line: 299, column: 3, scope: !3712)
!3777 = !DILocation(line: 301, column: 20, scope: !3710)
!3778 = !DILocation(line: 301, column: 15, scope: !3710)
!3779 = !DILocation(line: 301, column: 11, scope: !3710)
!3780 = !DILocation(line: 302, column: 23, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3710, file: !3474, line: 302, column: 11)
!3782 = !DILocation(line: 302, column: 11, scope: !3710)
!3783 = !DILocation(line: 299, column: 24, scope: !3711)
!3784 = distinct !{!3784, !3776, !3785}
!3785 = !DILocation(line: 304, column: 5, scope: !3712)
!3786 = !DILocation(line: 307, column: 1, scope: !3685)
!3787 = !DILocation(line: 306, column: 3, scope: !3685)
!3788 = distinct !DISubprogram(name: "version_etc_arn", scope: !631, file: !631, line: 62, type: !3789, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !627, variables: !3832)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{null, !3791, !58, !58, !58, !3831, !140}
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1014, line: 7, baseType: !3793)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1016, line: 241, size: 1728, elements: !3794)
!3794 = !{!3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3793, file: !1016, line: 242, baseType: !28, size: 32)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3793, file: !1016, line: 247, baseType: !43, size: 64, offset: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3793, file: !1016, line: 248, baseType: !43, size: 64, offset: 128)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3793, file: !1016, line: 249, baseType: !43, size: 64, offset: 192)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3793, file: !1016, line: 250, baseType: !43, size: 64, offset: 256)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3793, file: !1016, line: 251, baseType: !43, size: 64, offset: 320)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3793, file: !1016, line: 252, baseType: !43, size: 64, offset: 384)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3793, file: !1016, line: 253, baseType: !43, size: 64, offset: 448)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3793, file: !1016, line: 254, baseType: !43, size: 64, offset: 512)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3793, file: !1016, line: 256, baseType: !43, size: 64, offset: 576)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3793, file: !1016, line: 257, baseType: !43, size: 64, offset: 640)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3793, file: !1016, line: 258, baseType: !43, size: 64, offset: 704)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3793, file: !1016, line: 260, baseType: !3808, size: 64, offset: 768)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1016, line: 156, size: 192, elements: !3810)
!3810 = !{!3811, !3812, !3814}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3809, file: !1016, line: 157, baseType: !3808, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3809, file: !1016, line: 158, baseType: !3813, size: 64, offset: 64)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3809, file: !1016, line: 162, baseType: !28, size: 32, offset: 128)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3793, file: !1016, line: 262, baseType: !3813, size: 64, offset: 832)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3793, file: !1016, line: 264, baseType: !28, size: 32, offset: 896)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3793, file: !1016, line: 268, baseType: !28, size: 32, offset: 928)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3793, file: !1016, line: 270, baseType: !1042, size: 64, offset: 960)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3793, file: !1016, line: 274, baseType: !139, size: 16, offset: 1024)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3793, file: !1016, line: 275, baseType: !1046, size: 8, offset: 1040)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3793, file: !1016, line: 276, baseType: !1048, size: 8, offset: 1048)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3793, file: !1016, line: 280, baseType: !1050, size: 64, offset: 1088)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3793, file: !1016, line: 289, baseType: !1053, size: 64, offset: 1152)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3793, file: !1016, line: 297, baseType: !45, size: 64, offset: 1216)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3793, file: !1016, line: 298, baseType: !45, size: 64, offset: 1280)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3793, file: !1016, line: 299, baseType: !45, size: 64, offset: 1344)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3793, file: !1016, line: 300, baseType: !45, size: 64, offset: 1408)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3793, file: !1016, line: 302, baseType: !140, size: 64, offset: 1472)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3793, file: !1016, line: 303, baseType: !28, size: 32, offset: 1536)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3793, file: !1016, line: 305, baseType: !1061, size: 160, offset: 1568)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!3832 = !{!3833, !3834, !3835, !3836, !3837, !3838}
!3833 = !DILocalVariable(name: "stream", arg: 1, scope: !3788, file: !631, line: 62, type: !3791)
!3834 = !DILocalVariable(name: "command_name", arg: 2, scope: !3788, file: !631, line: 63, type: !58)
!3835 = !DILocalVariable(name: "package", arg: 3, scope: !3788, file: !631, line: 63, type: !58)
!3836 = !DILocalVariable(name: "version", arg: 4, scope: !3788, file: !631, line: 64, type: !58)
!3837 = !DILocalVariable(name: "authors", arg: 5, scope: !3788, file: !631, line: 65, type: !3831)
!3838 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3788, file: !631, line: 65, type: !140)
!3839 = !DILocation(line: 62, column: 24, scope: !3788)
!3840 = !DILocation(line: 63, column: 30, scope: !3788)
!3841 = !DILocation(line: 63, column: 56, scope: !3788)
!3842 = !DILocation(line: 64, column: 30, scope: !3788)
!3843 = !DILocation(line: 65, column: 39, scope: !3788)
!3844 = !DILocation(line: 65, column: 55, scope: !3788)
!3845 = !DILocation(line: 67, column: 7, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3788, file: !631, line: 67, column: 7)
!3847 = !DILocation(line: 67, column: 7, scope: !3788)
!3848 = !DILocation(line: 68, column: 5, scope: !3846)
!3849 = !DILocation(line: 70, column: 5, scope: !3846)
!3850 = !DILocation(line: 84, column: 3, scope: !3788)
!3851 = !DILocation(line: 86, column: 3, scope: !3788)
!3852 = !DILocation(line: 95, column: 3, scope: !3788)
!3853 = !DILocation(line: 99, column: 7, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !3788, file: !631, line: 96, column: 5)
!3855 = !DILocation(line: 102, column: 7, scope: !3854)
!3856 = !DILocation(line: 103, column: 7, scope: !3854)
!3857 = !DILocation(line: 106, column: 7, scope: !3854)
!3858 = !DILocation(line: 107, column: 7, scope: !3854)
!3859 = !DILocation(line: 110, column: 7, scope: !3854)
!3860 = !DILocation(line: 112, column: 7, scope: !3854)
!3861 = !DILocation(line: 117, column: 7, scope: !3854)
!3862 = !DILocation(line: 119, column: 7, scope: !3854)
!3863 = !DILocation(line: 124, column: 7, scope: !3854)
!3864 = !DILocation(line: 126, column: 7, scope: !3854)
!3865 = !DILocation(line: 131, column: 7, scope: !3854)
!3866 = !DILocation(line: 134, column: 7, scope: !3854)
!3867 = !DILocation(line: 139, column: 7, scope: !3854)
!3868 = !DILocation(line: 142, column: 7, scope: !3854)
!3869 = !DILocation(line: 147, column: 7, scope: !3854)
!3870 = !DILocation(line: 151, column: 7, scope: !3854)
!3871 = !DILocation(line: 156, column: 7, scope: !3854)
!3872 = !DILocation(line: 160, column: 7, scope: !3854)
!3873 = !DILocation(line: 167, column: 7, scope: !3854)
!3874 = !DILocation(line: 171, column: 7, scope: !3854)
!3875 = !DILocation(line: 173, column: 1, scope: !3788)
!3876 = distinct !DISubprogram(name: "version_etc_ar", scope: !631, file: !631, line: 180, type: !3877, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !627, variables: !3879)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{null, !3791, !58, !58, !58, !3831}
!3879 = !{!3880, !3881, !3882, !3883, !3884, !3885}
!3880 = !DILocalVariable(name: "stream", arg: 1, scope: !3876, file: !631, line: 180, type: !3791)
!3881 = !DILocalVariable(name: "command_name", arg: 2, scope: !3876, file: !631, line: 181, type: !58)
!3882 = !DILocalVariable(name: "package", arg: 3, scope: !3876, file: !631, line: 181, type: !58)
!3883 = !DILocalVariable(name: "version", arg: 4, scope: !3876, file: !631, line: 182, type: !58)
!3884 = !DILocalVariable(name: "authors", arg: 5, scope: !3876, file: !631, line: 182, type: !3831)
!3885 = !DILocalVariable(name: "n_authors", scope: !3876, file: !631, line: 184, type: !140)
!3886 = !DILocation(line: 180, column: 23, scope: !3876)
!3887 = !DILocation(line: 181, column: 29, scope: !3876)
!3888 = !DILocation(line: 181, column: 55, scope: !3876)
!3889 = !DILocation(line: 182, column: 29, scope: !3876)
!3890 = !DILocation(line: 182, column: 59, scope: !3876)
!3891 = !DILocation(line: 184, column: 10, scope: !3876)
!3892 = !DILocation(line: 186, column: 8, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3876, file: !631, line: 186, column: 3)
!3894 = !DILocation(line: 186, column: 23, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3893, file: !631, line: 186, column: 3)
!3896 = !DILocation(line: 186, column: 3, scope: !3893)
!3897 = !DILocation(line: 186, column: 52, scope: !3895)
!3898 = distinct !{!3898, !3896, !3899}
!3899 = !DILocation(line: 187, column: 5, scope: !3893)
!3900 = !DILocation(line: 188, column: 3, scope: !3876)
!3901 = !DILocation(line: 189, column: 1, scope: !3876)
!3902 = distinct !DISubprogram(name: "version_etc_va", scope: !631, file: !631, line: 196, type: !3903, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !627, variables: !3912)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{null, !3791, !58, !58, !58, !3905}
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !628, line: 189, size: 192, elements: !3907)
!3907 = !{!3908, !3909, !3910, !3911}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3906, file: !628, line: 189, baseType: !48, size: 32)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3906, file: !628, line: 189, baseType: !48, size: 32, offset: 32)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3906, file: !628, line: 189, baseType: !45, size: 64, offset: 64)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3906, file: !628, line: 189, baseType: !45, size: 64, offset: 128)
!3912 = !{!3913, !3914, !3915, !3916, !3917, !3918, !3919}
!3913 = !DILocalVariable(name: "stream", arg: 1, scope: !3902, file: !631, line: 196, type: !3791)
!3914 = !DILocalVariable(name: "command_name", arg: 2, scope: !3902, file: !631, line: 197, type: !58)
!3915 = !DILocalVariable(name: "package", arg: 3, scope: !3902, file: !631, line: 197, type: !58)
!3916 = !DILocalVariable(name: "version", arg: 4, scope: !3902, file: !631, line: 198, type: !58)
!3917 = !DILocalVariable(name: "authors", arg: 5, scope: !3902, file: !631, line: 198, type: !3905)
!3918 = !DILocalVariable(name: "n_authors", scope: !3902, file: !631, line: 200, type: !140)
!3919 = !DILocalVariable(name: "authtab", scope: !3902, file: !631, line: 201, type: !3920)
!3920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 640, elements: !149)
!3921 = !DILocation(line: 196, column: 23, scope: !3902)
!3922 = !DILocation(line: 197, column: 29, scope: !3902)
!3923 = !DILocation(line: 197, column: 55, scope: !3902)
!3924 = !DILocation(line: 198, column: 29, scope: !3902)
!3925 = !DILocation(line: 198, column: 46, scope: !3902)
!3926 = !DILocation(line: 201, column: 3, scope: !3902)
!3927 = !DILocation(line: 201, column: 15, scope: !3902)
!3928 = !DILocation(line: 200, column: 10, scope: !3902)
!3929 = !DILocation(line: 205, column: 35, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3931, file: !631, line: 203, column: 3)
!3931 = distinct !DILexicalBlock(scope: !3902, file: !631, line: 203, column: 3)
!3932 = !DILocation(line: 205, column: 14, scope: !3930)
!3933 = !DILocation(line: 205, column: 33, scope: !3930)
!3934 = !DILocation(line: 205, column: 67, scope: !3930)
!3935 = !DILocation(line: 203, column: 3, scope: !3931)
!3936 = !DILocation(line: 208, column: 3, scope: !3902)
!3937 = !DILocation(line: 210, column: 1, scope: !3902)
!3938 = distinct !DISubprogram(name: "version_etc", scope: !631, file: !631, line: 227, type: !3939, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !627, variables: !3941)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{null, !3791, !58, !58, !58, null}
!3941 = !{!3942, !3943, !3944, !3945, !3946}
!3942 = !DILocalVariable(name: "stream", arg: 1, scope: !3938, file: !631, line: 227, type: !3791)
!3943 = !DILocalVariable(name: "command_name", arg: 2, scope: !3938, file: !631, line: 228, type: !58)
!3944 = !DILocalVariable(name: "package", arg: 3, scope: !3938, file: !631, line: 228, type: !58)
!3945 = !DILocalVariable(name: "version", arg: 4, scope: !3938, file: !631, line: 229, type: !58)
!3946 = !DILocalVariable(name: "authors", scope: !3938, file: !631, line: 231, type: !3947)
!3947 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1069, line: 46, baseType: !3948)
!3948 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !557, line: 48, baseType: !3949)
!3949 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !628, line: 231, baseType: !3950)
!3950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3906, size: 192, elements: !566)
!3951 = !DILocation(line: 227, column: 20, scope: !3938)
!3952 = !DILocation(line: 228, column: 26, scope: !3938)
!3953 = !DILocation(line: 228, column: 52, scope: !3938)
!3954 = !DILocation(line: 229, column: 26, scope: !3938)
!3955 = !DILocation(line: 231, column: 3, scope: !3938)
!3956 = !DILocation(line: 231, column: 11, scope: !3938)
!3957 = !DILocation(line: 233, column: 3, scope: !3938)
!3958 = !DILocation(line: 234, column: 3, scope: !3938)
!3959 = !DILocation(line: 235, column: 3, scope: !3938)
!3960 = !DILocation(line: 236, column: 1, scope: !3938)
!3961 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !631, file: !631, line: 239, type: !719, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !627, variables: !88)
!3962 = !DILocation(line: 245, column: 3, scope: !3961)
!3963 = !DILocation(line: 251, column: 3, scope: !3961)
!3964 = !DILocation(line: 256, column: 3, scope: !3961)
!3965 = !DILocation(line: 258, column: 1, scope: !3961)
!3966 = distinct !DISubprogram(name: "xnmalloc", scope: !639, file: !639, line: 105, type: !1485, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !635, variables: !3967)
!3967 = !{!3968, !3969}
!3968 = !DILocalVariable(name: "n", arg: 1, scope: !3966, file: !639, line: 105, type: !140)
!3969 = !DILocalVariable(name: "s", arg: 2, scope: !3966, file: !639, line: 105, type: !140)
!3970 = !DILocation(line: 105, column: 18, scope: !3966)
!3971 = !DILocation(line: 105, column: 28, scope: !3966)
!3972 = !DILocation(line: 107, column: 7, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3966, file: !639, line: 107, column: 7)
!3974 = !DILocation(line: 107, column: 7, scope: !3966)
!3975 = !DILocation(line: 108, column: 5, scope: !3973)
!3976 = !DILocation(line: 109, column: 21, scope: !3966)
!3977 = !DILocalVariable(name: "n", arg: 1, scope: !3978, file: !3979, line: 39, type: !140)
!3978 = distinct !DISubprogram(name: "xmalloc", scope: !3979, file: !3979, line: 39, type: !3980, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !635, variables: !3982)
!3979 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!45, !140}
!3982 = !{!3977, !3983}
!3983 = !DILocalVariable(name: "p", scope: !3978, file: !3979, line: 41, type: !45)
!3984 = !DILocation(line: 39, column: 17, scope: !3978, inlinedAt: !3985)
!3985 = distinct !DILocation(line: 109, column: 10, scope: !3966)
!3986 = !DILocation(line: 41, column: 13, scope: !3978, inlinedAt: !3985)
!3987 = !DILocation(line: 41, column: 9, scope: !3978, inlinedAt: !3985)
!3988 = !DILocation(line: 42, column: 8, scope: !3989, inlinedAt: !3985)
!3989 = distinct !DILexicalBlock(scope: !3978, file: !3979, line: 42, column: 7)
!3990 = !DILocation(line: 42, column: 15, scope: !3989, inlinedAt: !3985)
!3991 = !DILocation(line: 42, column: 10, scope: !3989, inlinedAt: !3985)
!3992 = !DILocation(line: 43, column: 5, scope: !3989, inlinedAt: !3985)
!3993 = !DILocation(line: 109, column: 3, scope: !3966)
!3994 = !DILocation(line: 39, column: 17, scope: !3978)
!3995 = !DILocation(line: 41, column: 13, scope: !3978)
!3996 = !DILocation(line: 41, column: 9, scope: !3978)
!3997 = !DILocation(line: 42, column: 8, scope: !3989)
!3998 = !DILocation(line: 42, column: 15, scope: !3989)
!3999 = !DILocation(line: 42, column: 10, scope: !3989)
!4000 = !DILocation(line: 43, column: 5, scope: !3989)
!4001 = !DILocation(line: 44, column: 3, scope: !3978)
!4002 = distinct !DISubprogram(name: "xnrealloc", scope: !639, file: !639, line: 118, type: !4003, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !635, variables: !4005)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!45, !45, !140, !140}
!4005 = !{!4006, !4007, !4008}
!4006 = !DILocalVariable(name: "p", arg: 1, scope: !4002, file: !639, line: 118, type: !45)
!4007 = !DILocalVariable(name: "n", arg: 2, scope: !4002, file: !639, line: 118, type: !140)
!4008 = !DILocalVariable(name: "s", arg: 3, scope: !4002, file: !639, line: 118, type: !140)
!4009 = !DILocation(line: 118, column: 18, scope: !4002)
!4010 = !DILocation(line: 118, column: 28, scope: !4002)
!4011 = !DILocation(line: 118, column: 38, scope: !4002)
!4012 = !DILocation(line: 120, column: 7, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !4002, file: !639, line: 120, column: 7)
!4014 = !DILocation(line: 120, column: 7, scope: !4002)
!4015 = !DILocation(line: 121, column: 5, scope: !4013)
!4016 = !DILocation(line: 122, column: 25, scope: !4002)
!4017 = !DILocalVariable(name: "p", arg: 1, scope: !4018, file: !3979, line: 51, type: !45)
!4018 = distinct !DISubprogram(name: "xrealloc", scope: !3979, file: !3979, line: 51, type: !4019, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !635, variables: !4021)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!45, !45, !140}
!4021 = !{!4017, !4022}
!4022 = !DILocalVariable(name: "n", arg: 2, scope: !4018, file: !3979, line: 51, type: !140)
!4023 = !DILocation(line: 51, column: 17, scope: !4018, inlinedAt: !4024)
!4024 = distinct !DILocation(line: 122, column: 10, scope: !4002)
!4025 = !DILocation(line: 51, column: 27, scope: !4018, inlinedAt: !4024)
!4026 = !DILocation(line: 53, column: 8, scope: !4027, inlinedAt: !4024)
!4027 = distinct !DILexicalBlock(scope: !4018, file: !3979, line: 53, column: 7)
!4028 = !DILocation(line: 53, column: 13, scope: !4027, inlinedAt: !4024)
!4029 = !DILocation(line: 53, column: 10, scope: !4027, inlinedAt: !4024)
!4030 = !DILocation(line: 57, column: 7, scope: !4031, inlinedAt: !4024)
!4031 = distinct !DILexicalBlock(scope: !4027, file: !3979, line: 54, column: 5)
!4032 = !DILocation(line: 58, column: 7, scope: !4031, inlinedAt: !4024)
!4033 = !DILocation(line: 61, column: 7, scope: !4018, inlinedAt: !4024)
!4034 = !DILocation(line: 62, column: 8, scope: !4035, inlinedAt: !4024)
!4035 = distinct !DILexicalBlock(scope: !4018, file: !3979, line: 62, column: 7)
!4036 = !DILocation(line: 62, column: 13, scope: !4035, inlinedAt: !4024)
!4037 = !DILocation(line: 62, column: 10, scope: !4035, inlinedAt: !4024)
!4038 = !DILocation(line: 63, column: 5, scope: !4035, inlinedAt: !4024)
!4039 = !DILocation(line: 122, column: 3, scope: !4002)
!4040 = !DILocation(line: 51, column: 17, scope: !4018)
!4041 = !DILocation(line: 51, column: 27, scope: !4018)
!4042 = !DILocation(line: 53, column: 8, scope: !4027)
!4043 = !DILocation(line: 53, column: 13, scope: !4027)
!4044 = !DILocation(line: 53, column: 10, scope: !4027)
!4045 = !DILocation(line: 57, column: 7, scope: !4031)
!4046 = !DILocation(line: 58, column: 7, scope: !4031)
!4047 = !DILocation(line: 61, column: 7, scope: !4018)
!4048 = !DILocation(line: 62, column: 8, scope: !4035)
!4049 = !DILocation(line: 62, column: 13, scope: !4035)
!4050 = !DILocation(line: 62, column: 10, scope: !4035)
!4051 = !DILocation(line: 63, column: 5, scope: !4035)
!4052 = !DILocation(line: 65, column: 1, scope: !4018)
!4053 = !DILocation(line: 180, column: 19, scope: !640)
!4054 = !DILocation(line: 180, column: 30, scope: !640)
!4055 = !DILocation(line: 180, column: 41, scope: !640)
!4056 = !DILocation(line: 182, column: 14, scope: !640)
!4057 = !DILocation(line: 182, column: 10, scope: !640)
!4058 = !DILocation(line: 184, column: 9, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !640, file: !639, line: 184, column: 7)
!4060 = !DILocation(line: 184, column: 7, scope: !640)
!4061 = !DILocation(line: 186, column: 13, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4063, file: !639, line: 186, column: 11)
!4063 = distinct !DILexicalBlock(scope: !4059, file: !639, line: 185, column: 5)
!4064 = !DILocation(line: 186, column: 11, scope: !4063)
!4065 = !DILocation(line: 194, column: 30, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4062, file: !639, line: 187, column: 9)
!4067 = !DILocation(line: 195, column: 16, scope: !4066)
!4068 = !DILocation(line: 195, column: 13, scope: !4066)
!4069 = !DILocation(line: 196, column: 9, scope: !4066)
!4070 = !DILocation(line: 204, column: 69, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4072, file: !639, line: 204, column: 11)
!4072 = distinct !DILexicalBlock(scope: !4059, file: !639, line: 199, column: 5)
!4073 = !DILocation(line: 205, column: 11, scope: !4071)
!4074 = !DILocation(line: 204, column: 11, scope: !4072)
!4075 = !DILocation(line: 206, column: 9, scope: !4071)
!4076 = !DILocation(line: 210, column: 7, scope: !640)
!4077 = !DILocation(line: 211, column: 25, scope: !640)
!4078 = !DILocation(line: 51, column: 17, scope: !4018, inlinedAt: !4079)
!4079 = distinct !DILocation(line: 211, column: 10, scope: !640)
!4080 = !DILocation(line: 51, column: 27, scope: !4018, inlinedAt: !4079)
!4081 = !DILocation(line: 53, column: 10, scope: !4027, inlinedAt: !4079)
!4082 = !DILocation(line: 207, column: 14, scope: !4072)
!4083 = !DILocation(line: 207, column: 18, scope: !4072)
!4084 = !DILocation(line: 207, column: 9, scope: !4072)
!4085 = !DILocation(line: 53, column: 8, scope: !4027, inlinedAt: !4079)
!4086 = !DILocation(line: 57, column: 7, scope: !4031, inlinedAt: !4079)
!4087 = !DILocation(line: 58, column: 7, scope: !4031, inlinedAt: !4079)
!4088 = !DILocation(line: 61, column: 7, scope: !4018, inlinedAt: !4079)
!4089 = !DILocation(line: 62, column: 8, scope: !4035, inlinedAt: !4079)
!4090 = !DILocation(line: 62, column: 13, scope: !4035, inlinedAt: !4079)
!4091 = !DILocation(line: 62, column: 10, scope: !4035, inlinedAt: !4079)
!4092 = !DILocation(line: 63, column: 5, scope: !4035, inlinedAt: !4079)
!4093 = !DILocation(line: 211, column: 3, scope: !640)
!4094 = distinct !DISubprogram(name: "xcharalloc", scope: !639, file: !639, line: 220, type: !2728, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !635, variables: !4095)
!4095 = !{!4096}
!4096 = !DILocalVariable(name: "n", arg: 1, scope: !4094, file: !639, line: 220, type: !140)
!4097 = !DILocation(line: 220, column: 20, scope: !4094)
!4098 = !DILocation(line: 39, column: 17, scope: !3978, inlinedAt: !4099)
!4099 = distinct !DILocation(line: 222, column: 10, scope: !4094)
!4100 = !DILocation(line: 41, column: 13, scope: !3978, inlinedAt: !4099)
!4101 = !DILocation(line: 41, column: 9, scope: !3978, inlinedAt: !4099)
!4102 = !DILocation(line: 42, column: 8, scope: !3989, inlinedAt: !4099)
!4103 = !DILocation(line: 42, column: 15, scope: !3989, inlinedAt: !4099)
!4104 = !DILocation(line: 42, column: 10, scope: !3989, inlinedAt: !4099)
!4105 = !DILocation(line: 43, column: 5, scope: !3989, inlinedAt: !4099)
!4106 = !DILocation(line: 222, column: 3, scope: !4094)
!4107 = distinct !DISubprogram(name: "x2realloc", scope: !3979, file: !3979, line: 74, type: !4108, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !635, variables: !4110)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!45, !45, !643}
!4110 = !{!4111, !4112}
!4111 = !DILocalVariable(name: "p", arg: 1, scope: !4107, file: !3979, line: 74, type: !45)
!4112 = !DILocalVariable(name: "pn", arg: 2, scope: !4107, file: !3979, line: 74, type: !643)
!4113 = !DILocation(line: 74, column: 18, scope: !4107)
!4114 = !DILocation(line: 74, column: 29, scope: !4107)
!4115 = !DILocation(line: 180, column: 19, scope: !640, inlinedAt: !4116)
!4116 = distinct !DILocation(line: 76, column: 10, scope: !4107)
!4117 = !DILocation(line: 180, column: 30, scope: !640, inlinedAt: !4116)
!4118 = !DILocation(line: 180, column: 41, scope: !640, inlinedAt: !4116)
!4119 = !DILocation(line: 182, column: 14, scope: !640, inlinedAt: !4116)
!4120 = !DILocation(line: 182, column: 10, scope: !640, inlinedAt: !4116)
!4121 = !DILocation(line: 184, column: 9, scope: !4059, inlinedAt: !4116)
!4122 = !DILocation(line: 184, column: 7, scope: !640, inlinedAt: !4116)
!4123 = !DILocation(line: 186, column: 13, scope: !4062, inlinedAt: !4116)
!4124 = !DILocation(line: 186, column: 11, scope: !4063, inlinedAt: !4116)
!4125 = !DILocation(line: 210, column: 7, scope: !640, inlinedAt: !4116)
!4126 = !DILocation(line: 51, column: 17, scope: !4018, inlinedAt: !4127)
!4127 = distinct !DILocation(line: 211, column: 10, scope: !640, inlinedAt: !4116)
!4128 = !DILocation(line: 51, column: 27, scope: !4018, inlinedAt: !4127)
!4129 = !DILocation(line: 53, column: 10, scope: !4027, inlinedAt: !4127)
!4130 = !DILocation(line: 205, column: 11, scope: !4071, inlinedAt: !4116)
!4131 = !DILocation(line: 204, column: 11, scope: !4072, inlinedAt: !4116)
!4132 = !DILocation(line: 206, column: 9, scope: !4071, inlinedAt: !4116)
!4133 = !DILocation(line: 207, column: 14, scope: !4072, inlinedAt: !4116)
!4134 = !DILocation(line: 207, column: 18, scope: !4072, inlinedAt: !4116)
!4135 = !DILocation(line: 207, column: 9, scope: !4072, inlinedAt: !4116)
!4136 = !DILocation(line: 53, column: 8, scope: !4027, inlinedAt: !4127)
!4137 = !DILocation(line: 57, column: 7, scope: !4031, inlinedAt: !4127)
!4138 = !DILocation(line: 58, column: 7, scope: !4031, inlinedAt: !4127)
!4139 = !DILocation(line: 61, column: 7, scope: !4018, inlinedAt: !4127)
!4140 = !DILocation(line: 62, column: 8, scope: !4035, inlinedAt: !4127)
!4141 = !DILocation(line: 62, column: 13, scope: !4035, inlinedAt: !4127)
!4142 = !DILocation(line: 62, column: 10, scope: !4035, inlinedAt: !4127)
!4143 = !DILocation(line: 63, column: 5, scope: !4035, inlinedAt: !4127)
!4144 = !DILocation(line: 76, column: 3, scope: !4107)
!4145 = distinct !DISubprogram(name: "xzalloc", scope: !3979, file: !3979, line: 84, type: !3980, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !635, variables: !4146)
!4146 = !{!4147}
!4147 = !DILocalVariable(name: "s", arg: 1, scope: !4145, file: !3979, line: 84, type: !140)
!4148 = !DILocation(line: 84, column: 17, scope: !4145)
!4149 = !DILocation(line: 39, column: 17, scope: !3978, inlinedAt: !4150)
!4150 = distinct !DILocation(line: 86, column: 18, scope: !4145)
!4151 = !DILocation(line: 41, column: 13, scope: !3978, inlinedAt: !4150)
!4152 = !DILocation(line: 41, column: 9, scope: !3978, inlinedAt: !4150)
!4153 = !DILocation(line: 42, column: 8, scope: !3989, inlinedAt: !4150)
!4154 = !DILocation(line: 42, column: 15, scope: !3989, inlinedAt: !4150)
!4155 = !DILocation(line: 42, column: 10, scope: !3989, inlinedAt: !4150)
!4156 = !DILocation(line: 43, column: 5, scope: !3989, inlinedAt: !4150)
!4157 = !DILocation(line: 86, column: 10, scope: !4145)
!4158 = !DILocation(line: 86, column: 3, scope: !4145)
!4159 = distinct !DISubprogram(name: "xcalloc", scope: !3979, file: !3979, line: 93, type: !1485, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !635, variables: !4160)
!4160 = !{!4161, !4162, !4163}
!4161 = !DILocalVariable(name: "n", arg: 1, scope: !4159, file: !3979, line: 93, type: !140)
!4162 = !DILocalVariable(name: "s", arg: 2, scope: !4159, file: !3979, line: 93, type: !140)
!4163 = !DILocalVariable(name: "p", scope: !4159, file: !3979, line: 95, type: !45)
!4164 = !DILocation(line: 93, column: 17, scope: !4159)
!4165 = !DILocation(line: 93, column: 27, scope: !4159)
!4166 = !DILocation(line: 100, column: 7, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4159, file: !3979, line: 100, column: 7)
!4168 = !DILocation(line: 101, column: 7, scope: !4167)
!4169 = !DILocation(line: 101, column: 18, scope: !4167)
!4170 = !DILocation(line: 95, column: 9, scope: !4159)
!4171 = !DILocation(line: 101, column: 16, scope: !4167)
!4172 = !DILocation(line: 100, column: 7, scope: !4159)
!4173 = !DILocation(line: 102, column: 5, scope: !4167)
!4174 = !DILocation(line: 103, column: 3, scope: !4159)
!4175 = distinct !DISubprogram(name: "xmemdup", scope: !3979, file: !3979, line: 111, type: !4176, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !635, variables: !4180)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!45, !4178, !140}
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4180 = !{!4181, !4182}
!4181 = !DILocalVariable(name: "p", arg: 1, scope: !4175, file: !3979, line: 111, type: !4178)
!4182 = !DILocalVariable(name: "s", arg: 2, scope: !4175, file: !3979, line: 111, type: !140)
!4183 = !DILocation(line: 111, column: 22, scope: !4175)
!4184 = !DILocation(line: 111, column: 32, scope: !4175)
!4185 = !DILocation(line: 39, column: 17, scope: !3978, inlinedAt: !4186)
!4186 = distinct !DILocation(line: 113, column: 18, scope: !4175)
!4187 = !DILocation(line: 41, column: 13, scope: !3978, inlinedAt: !4186)
!4188 = !DILocation(line: 41, column: 9, scope: !3978, inlinedAt: !4186)
!4189 = !DILocation(line: 42, column: 8, scope: !3989, inlinedAt: !4186)
!4190 = !DILocation(line: 42, column: 15, scope: !3989, inlinedAt: !4186)
!4191 = !DILocation(line: 42, column: 10, scope: !3989, inlinedAt: !4186)
!4192 = !DILocation(line: 43, column: 5, scope: !3989, inlinedAt: !4186)
!4193 = !DILocation(line: 113, column: 10, scope: !4175)
!4194 = !DILocation(line: 113, column: 3, scope: !4175)
!4195 = distinct !DISubprogram(name: "xstrdup", scope: !3979, file: !3979, line: 119, type: !2929, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !635, variables: !4196)
!4196 = !{!4197}
!4197 = !DILocalVariable(name: "string", arg: 1, scope: !4195, file: !3979, line: 119, type: !58)
!4198 = !DILocation(line: 119, column: 22, scope: !4195)
!4199 = !DILocation(line: 121, column: 27, scope: !4195)
!4200 = !DILocation(line: 121, column: 43, scope: !4195)
!4201 = !DILocation(line: 111, column: 22, scope: !4175, inlinedAt: !4202)
!4202 = distinct !DILocation(line: 121, column: 10, scope: !4195)
!4203 = !DILocation(line: 111, column: 32, scope: !4175, inlinedAt: !4202)
!4204 = !DILocation(line: 39, column: 17, scope: !3978, inlinedAt: !4205)
!4205 = distinct !DILocation(line: 113, column: 18, scope: !4175, inlinedAt: !4202)
!4206 = !DILocation(line: 41, column: 13, scope: !3978, inlinedAt: !4205)
!4207 = !DILocation(line: 41, column: 9, scope: !3978, inlinedAt: !4205)
!4208 = !DILocation(line: 42, column: 8, scope: !3989, inlinedAt: !4205)
!4209 = !DILocation(line: 42, column: 15, scope: !3989, inlinedAt: !4205)
!4210 = !DILocation(line: 42, column: 10, scope: !3989, inlinedAt: !4205)
!4211 = !DILocation(line: 43, column: 5, scope: !3989, inlinedAt: !4205)
!4212 = !DILocation(line: 113, column: 10, scope: !4175, inlinedAt: !4202)
!4213 = !DILocation(line: 121, column: 3, scope: !4195)
!4214 = distinct !DISubprogram(name: "xalloc_die", scope: !4215, file: !4215, line: 32, type: !719, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !652, variables: !88)
!4215 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4216 = !DILocation(line: 34, column: 10, scope: !4214)
!4217 = !DILocation(line: 34, column: 33, scope: !4214)
!4218 = !DILocation(line: 34, column: 3, scope: !4214)
!4219 = !DILocation(line: 40, column: 3, scope: !4214)
!4220 = distinct !DISubprogram(name: "rpl_calloc", scope: !4221, file: !4221, line: 42, type: !1485, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !654, variables: !4222)
!4221 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4222 = !{!4223, !4224, !4225, !4226}
!4223 = !DILocalVariable(name: "n", arg: 1, scope: !4220, file: !4221, line: 42, type: !140)
!4224 = !DILocalVariable(name: "s", arg: 2, scope: !4220, file: !4221, line: 42, type: !140)
!4225 = !DILocalVariable(name: "result", scope: !4220, file: !4221, line: 44, type: !45)
!4226 = !DILocalVariable(name: "bytes", scope: !4227, file: !4221, line: 56, type: !140)
!4227 = distinct !DILexicalBlock(scope: !4228, file: !4221, line: 53, column: 5)
!4228 = distinct !DILexicalBlock(scope: !4220, file: !4221, line: 47, column: 7)
!4229 = !DILocation(line: 42, column: 20, scope: !4220)
!4230 = !DILocation(line: 42, column: 30, scope: !4220)
!4231 = !DILocation(line: 47, column: 9, scope: !4228)
!4232 = !DILocation(line: 47, column: 19, scope: !4228)
!4233 = !DILocation(line: 47, column: 14, scope: !4228)
!4234 = !DILocation(line: 56, column: 24, scope: !4227)
!4235 = !DILocation(line: 56, column: 14, scope: !4227)
!4236 = !DILocation(line: 57, column: 17, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4227, file: !4221, line: 57, column: 11)
!4238 = !DILocation(line: 57, column: 21, scope: !4237)
!4239 = !DILocation(line: 57, column: 11, scope: !4227)
!4240 = !DILocation(line: 59, column: 11, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4237, file: !4221, line: 58, column: 9)
!4242 = !DILocation(line: 59, column: 17, scope: !4241)
!4243 = !DILocation(line: 65, column: 12, scope: !4220)
!4244 = !DILocation(line: 44, column: 9, scope: !4220)
!4245 = !DILocation(line: 72, column: 3, scope: !4220)
!4246 = !DILocation(line: 73, column: 1, scope: !4220)
!4247 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4248, file: !4248, line: 334, type: !4249, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !656, variables: !4263)
!4248 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!140, !4251, !58, !140, !4252}
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1980, line: 6, baseType: !4254)
!4254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1982, line: 21, baseType: !4255)
!4255 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1982, line: 13, size: 64, elements: !4256)
!4256 = !{!4257, !4258}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4255, file: !1982, line: 15, baseType: !28, size: 32)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4255, file: !1982, line: 20, baseType: !4259, size: 32, offset: 32)
!4259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4255, file: !1982, line: 16, size: 32, elements: !4260)
!4260 = !{!4261, !4262}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4259, file: !1982, line: 18, baseType: !48, size: 32)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4259, file: !1982, line: 19, baseType: !1991, size: 32)
!4263 = !{!4264, !4265, !4266, !4267, !4268, !4269, !4270}
!4264 = !DILocalVariable(name: "pwc", arg: 1, scope: !4247, file: !4248, line: 334, type: !4251)
!4265 = !DILocalVariable(name: "s", arg: 2, scope: !4247, file: !4248, line: 334, type: !58)
!4266 = !DILocalVariable(name: "n", arg: 3, scope: !4247, file: !4248, line: 334, type: !140)
!4267 = !DILocalVariable(name: "ps", arg: 4, scope: !4247, file: !4248, line: 334, type: !4252)
!4268 = !DILocalVariable(name: "ret", scope: !4247, file: !4248, line: 336, type: !140)
!4269 = !DILocalVariable(name: "wc", scope: !4247, file: !4248, line: 337, type: !1996)
!4270 = !DILocalVariable(name: "uc", scope: !4271, file: !4248, line: 398, type: !539)
!4271 = distinct !DILexicalBlock(scope: !4272, file: !4248, line: 397, column: 5)
!4272 = distinct !DILexicalBlock(scope: !4247, file: !4248, line: 396, column: 7)
!4273 = !DILocation(line: 334, column: 23, scope: !4247)
!4274 = !DILocation(line: 334, column: 40, scope: !4247)
!4275 = !DILocation(line: 334, column: 50, scope: !4247)
!4276 = !DILocation(line: 334, column: 64, scope: !4247)
!4277 = !DILocation(line: 337, column: 3, scope: !4247)
!4278 = !DILocation(line: 353, column: 9, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4247, file: !4248, line: 353, column: 7)
!4280 = !DILocation(line: 353, column: 7, scope: !4247)
!4281 = !DILocation(line: 388, column: 9, scope: !4247)
!4282 = !DILocation(line: 336, column: 10, scope: !4247)
!4283 = !DILocation(line: 396, column: 19, scope: !4272)
!4284 = !DILocation(line: 396, column: 31, scope: !4272)
!4285 = !DILocation(line: 396, column: 26, scope: !4272)
!4286 = !DILocation(line: 396, column: 41, scope: !4272)
!4287 = !DILocation(line: 396, column: 7, scope: !4247)
!4288 = !DILocation(line: 398, column: 26, scope: !4271)
!4289 = !DILocation(line: 398, column: 21, scope: !4271)
!4290 = !DILocation(line: 399, column: 14, scope: !4271)
!4291 = !DILocation(line: 399, column: 12, scope: !4271)
!4292 = !DILocation(line: 405, column: 1, scope: !4247)
!4293 = distinct !DISubprogram(name: "close_stream", scope: !4294, file: !4294, line: 56, type: !4295, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !658, variables: !4337)
!4294 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!28, !4297}
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1014, line: 7, baseType: !4299)
!4299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1016, line: 241, size: 1728, elements: !4300)
!4300 = !{!4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4299, file: !1016, line: 242, baseType: !28, size: 32)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4299, file: !1016, line: 247, baseType: !43, size: 64, offset: 64)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4299, file: !1016, line: 248, baseType: !43, size: 64, offset: 128)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4299, file: !1016, line: 249, baseType: !43, size: 64, offset: 192)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4299, file: !1016, line: 250, baseType: !43, size: 64, offset: 256)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4299, file: !1016, line: 251, baseType: !43, size: 64, offset: 320)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4299, file: !1016, line: 252, baseType: !43, size: 64, offset: 384)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4299, file: !1016, line: 253, baseType: !43, size: 64, offset: 448)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4299, file: !1016, line: 254, baseType: !43, size: 64, offset: 512)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4299, file: !1016, line: 256, baseType: !43, size: 64, offset: 576)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4299, file: !1016, line: 257, baseType: !43, size: 64, offset: 640)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4299, file: !1016, line: 258, baseType: !43, size: 64, offset: 704)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4299, file: !1016, line: 260, baseType: !4314, size: 64, offset: 768)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1016, line: 156, size: 192, elements: !4316)
!4316 = !{!4317, !4318, !4320}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4315, file: !1016, line: 157, baseType: !4314, size: 64)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4315, file: !1016, line: 158, baseType: !4319, size: 64, offset: 64)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4315, file: !1016, line: 162, baseType: !28, size: 32, offset: 128)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4299, file: !1016, line: 262, baseType: !4319, size: 64, offset: 832)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4299, file: !1016, line: 264, baseType: !28, size: 32, offset: 896)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4299, file: !1016, line: 268, baseType: !28, size: 32, offset: 928)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4299, file: !1016, line: 270, baseType: !1042, size: 64, offset: 960)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4299, file: !1016, line: 274, baseType: !139, size: 16, offset: 1024)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4299, file: !1016, line: 275, baseType: !1046, size: 8, offset: 1040)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4299, file: !1016, line: 276, baseType: !1048, size: 8, offset: 1048)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4299, file: !1016, line: 280, baseType: !1050, size: 64, offset: 1088)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4299, file: !1016, line: 289, baseType: !1053, size: 64, offset: 1152)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4299, file: !1016, line: 297, baseType: !45, size: 64, offset: 1216)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4299, file: !1016, line: 298, baseType: !45, size: 64, offset: 1280)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4299, file: !1016, line: 299, baseType: !45, size: 64, offset: 1344)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4299, file: !1016, line: 300, baseType: !45, size: 64, offset: 1408)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4299, file: !1016, line: 302, baseType: !140, size: 64, offset: 1472)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4299, file: !1016, line: 303, baseType: !28, size: 32, offset: 1536)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4299, file: !1016, line: 305, baseType: !1061, size: 160, offset: 1568)
!4337 = !{!4338, !4339, !4341, !4342}
!4338 = !DILocalVariable(name: "stream", arg: 1, scope: !4293, file: !4294, line: 56, type: !4297)
!4339 = !DILocalVariable(name: "some_pending", scope: !4293, file: !4294, line: 58, type: !4340)
!4340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!4341 = !DILocalVariable(name: "prev_fail", scope: !4293, file: !4294, line: 59, type: !4340)
!4342 = !DILocalVariable(name: "fclose_fail", scope: !4293, file: !4294, line: 60, type: !4340)
!4343 = !DILocation(line: 56, column: 21, scope: !4293)
!4344 = !DILocation(line: 58, column: 30, scope: !4293)
!4345 = !DILocalVariable(name: "__stream", arg: 1, scope: !4346, file: !1105, line: 132, type: !4297)
!4346 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1105, file: !1105, line: 132, type: !4295, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !658, variables: !4347)
!4347 = !{!4345}
!4348 = !DILocation(line: 132, column: 1, scope: !4346, inlinedAt: !4349)
!4349 = distinct !DILocation(line: 59, column: 27, scope: !4293)
!4350 = !DILocation(line: 134, column: 10, scope: !4346, inlinedAt: !4349)
!4351 = !{!1115, !785, i64 0}
!4352 = !DILocation(line: 59, column: 43, scope: !4293)
!4353 = !DILocation(line: 60, column: 29, scope: !4293)
!4354 = !DILocation(line: 60, column: 45, scope: !4293)
!4355 = !DILocation(line: 70, column: 17, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4293, file: !4294, line: 70, column: 7)
!4357 = !DILocation(line: 58, column: 50, scope: !4293)
!4358 = !DILocation(line: 70, column: 33, scope: !4356)
!4359 = !DILocation(line: 70, column: 53, scope: !4356)
!4360 = !DILocation(line: 70, column: 59, scope: !4356)
!4361 = !DILocation(line: 70, column: 7, scope: !4293)
!4362 = !DILocation(line: 72, column: 11, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4356, file: !4294, line: 71, column: 5)
!4364 = !DILocation(line: 73, column: 9, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4363, file: !4294, line: 72, column: 11)
!4366 = !DILocation(line: 73, column: 15, scope: !4365)
!4367 = !DILocation(line: 78, column: 1, scope: !4293)
!4368 = distinct !DISubprogram(name: "open_safer", scope: !4369, file: !4369, line: 29, type: !4370, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !660, variables: !4372)
!4369 = !DIFile(filename: "lib/open-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4370 = !DISubroutineType(types: !4371)
!4371 = !{!28, !58, !28, null}
!4372 = !{!4373, !4374, !4375, !4376}
!4373 = !DILocalVariable(name: "file", arg: 1, scope: !4368, file: !4369, line: 29, type: !58)
!4374 = !DILocalVariable(name: "flags", arg: 2, scope: !4368, file: !4369, line: 29, type: !28)
!4375 = !DILocalVariable(name: "mode", scope: !4368, file: !4369, line: 31, type: !680)
!4376 = !DILocalVariable(name: "ap", scope: !4377, file: !4369, line: 35, type: !4379)
!4377 = distinct !DILexicalBlock(scope: !4378, file: !4369, line: 34, column: 5)
!4378 = distinct !DILexicalBlock(scope: !4368, file: !4369, line: 33, column: 7)
!4379 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !557, line: 30, baseType: !4380)
!4380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !661, line: 35, baseType: !4381)
!4381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4382, size: 192, elements: !566)
!4382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !661, line: 35, size: 192, elements: !4383)
!4383 = !{!4384, !4385, !4386, !4387}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4382, file: !661, line: 35, baseType: !48, size: 32)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4382, file: !661, line: 35, baseType: !48, size: 32, offset: 32)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4382, file: !661, line: 35, baseType: !45, size: 64, offset: 64)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4382, file: !661, line: 35, baseType: !45, size: 64, offset: 128)
!4388 = !DILocation(line: 29, column: 25, scope: !4368)
!4389 = !DILocation(line: 29, column: 35, scope: !4368)
!4390 = !DILocation(line: 31, column: 10, scope: !4368)
!4391 = !DILocation(line: 33, column: 13, scope: !4378)
!4392 = !DILocation(line: 33, column: 7, scope: !4368)
!4393 = !DILocation(line: 35, column: 7, scope: !4377)
!4394 = !DILocation(line: 35, column: 15, scope: !4377)
!4395 = !DILocation(line: 36, column: 7, scope: !4377)
!4396 = !DILocation(line: 40, column: 14, scope: !4377)
!4397 = !DILocation(line: 42, column: 7, scope: !4377)
!4398 = !DILocation(line: 43, column: 5, scope: !4378)
!4399 = !DILocation(line: 43, column: 5, scope: !4377)
!4400 = !DILocation(line: 45, column: 20, scope: !4368)
!4401 = !DILocation(line: 45, column: 10, scope: !4368)
!4402 = !DILocation(line: 45, column: 3, scope: !4368)
!4403 = distinct !DISubprogram(name: "hard_locale", scope: !4404, file: !4404, line: 38, type: !4405, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !662, variables: !4407)
!4404 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4405 = !DISubroutineType(types: !4406)
!4406 = !{!98, !28}
!4407 = !{!4408, !4409, !4410}
!4408 = !DILocalVariable(name: "category", arg: 1, scope: !4403, file: !4404, line: 38, type: !28)
!4409 = !DILocalVariable(name: "hard", scope: !4403, file: !4404, line: 40, type: !98)
!4410 = !DILocalVariable(name: "p", scope: !4403, file: !4404, line: 41, type: !58)
!4411 = !DILocation(line: 38, column: 18, scope: !4403)
!4412 = !DILocation(line: 40, column: 8, scope: !4403)
!4413 = !DILocation(line: 41, column: 19, scope: !4403)
!4414 = !DILocation(line: 41, column: 15, scope: !4403)
!4415 = !DILocation(line: 43, column: 7, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4403, file: !4404, line: 43, column: 7)
!4417 = !DILocation(line: 43, column: 7, scope: !4403)
!4418 = !DILocation(line: 47, column: 15, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4420, file: !4404, line: 47, column: 15)
!4420 = distinct !DILexicalBlock(scope: !4421, file: !4404, line: 46, column: 9)
!4421 = distinct !DILexicalBlock(scope: !4422, file: !4404, line: 45, column: 11)
!4422 = distinct !DILexicalBlock(scope: !4416, file: !4404, line: 44, column: 5)
!4423 = !DILocation(line: 47, column: 31, scope: !4419)
!4424 = !DILocation(line: 47, column: 36, scope: !4419)
!4425 = !DILocation(line: 47, column: 39, scope: !4419)
!4426 = !DILocation(line: 47, column: 59, scope: !4419)
!4427 = !DILocation(line: 47, column: 15, scope: !4420)
!4428 = !DILocation(line: 48, column: 13, scope: !4419)
!4429 = !DILocation(line: 71, column: 3, scope: !4403)
!4430 = distinct !DISubprogram(name: "locale_charset", scope: !541, file: !541, line: 393, type: !4431, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !196, variables: !4433)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!58}
!4433 = !{!4434, !4435}
!4434 = !DILocalVariable(name: "codeset", scope: !4430, file: !541, line: 395, type: !58)
!4435 = !DILocalVariable(name: "aliases", scope: !4430, file: !541, line: 396, type: !58)
!4436 = !DILocalVariable(name: "buf1", scope: !4437, file: !541, line: 196, type: !4504)
!4437 = distinct !DILexicalBlock(scope: !4438, file: !541, line: 194, column: 21)
!4438 = distinct !DILexicalBlock(scope: !4439, file: !541, line: 193, column: 19)
!4439 = distinct !DILexicalBlock(scope: !4440, file: !541, line: 193, column: 19)
!4440 = distinct !DILexicalBlock(scope: !4441, file: !541, line: 188, column: 17)
!4441 = distinct !DILexicalBlock(scope: !4442, file: !541, line: 181, column: 19)
!4442 = distinct !DILexicalBlock(scope: !4443, file: !541, line: 177, column: 13)
!4443 = distinct !DILexicalBlock(scope: !4444, file: !541, line: 173, column: 15)
!4444 = distinct !DILexicalBlock(scope: !4445, file: !541, line: 161, column: 9)
!4445 = distinct !DILexicalBlock(scope: !4446, file: !541, line: 157, column: 11)
!4446 = distinct !DILexicalBlock(scope: !4447, file: !541, line: 130, column: 5)
!4447 = distinct !DILexicalBlock(scope: !4448, file: !541, line: 129, column: 7)
!4448 = distinct !DISubprogram(name: "get_charset_aliases", scope: !541, file: !541, line: 124, type: !4431, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !196, variables: !4449)
!4449 = !{!4450, !4451, !4452, !4453, !4454, !4456, !4457, !4458, !4459, !4500, !4501, !4502, !4436, !4503, !4507, !4508, !4509}
!4450 = !DILocalVariable(name: "cp", scope: !4448, file: !541, line: 126, type: !58)
!4451 = !DILocalVariable(name: "dir", scope: !4446, file: !541, line: 132, type: !58)
!4452 = !DILocalVariable(name: "base", scope: !4446, file: !541, line: 133, type: !58)
!4453 = !DILocalVariable(name: "file_name", scope: !4446, file: !541, line: 134, type: !43)
!4454 = !DILocalVariable(name: "dir_len", scope: !4455, file: !541, line: 144, type: !140)
!4455 = distinct !DILexicalBlock(scope: !4446, file: !541, line: 143, column: 7)
!4456 = !DILocalVariable(name: "base_len", scope: !4455, file: !541, line: 145, type: !140)
!4457 = !DILocalVariable(name: "add_slash", scope: !4455, file: !541, line: 146, type: !28)
!4458 = !DILocalVariable(name: "fd", scope: !4444, file: !541, line: 162, type: !28)
!4459 = !DILocalVariable(name: "fp", scope: !4442, file: !541, line: 178, type: !4460)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1014, line: 7, baseType: !4462)
!4462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1016, line: 241, size: 1728, elements: !4463)
!4463 = !{!4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4462, file: !1016, line: 242, baseType: !28, size: 32)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4462, file: !1016, line: 247, baseType: !43, size: 64, offset: 64)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4462, file: !1016, line: 248, baseType: !43, size: 64, offset: 128)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4462, file: !1016, line: 249, baseType: !43, size: 64, offset: 192)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4462, file: !1016, line: 250, baseType: !43, size: 64, offset: 256)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4462, file: !1016, line: 251, baseType: !43, size: 64, offset: 320)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4462, file: !1016, line: 252, baseType: !43, size: 64, offset: 384)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4462, file: !1016, line: 253, baseType: !43, size: 64, offset: 448)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4462, file: !1016, line: 254, baseType: !43, size: 64, offset: 512)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4462, file: !1016, line: 256, baseType: !43, size: 64, offset: 576)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4462, file: !1016, line: 257, baseType: !43, size: 64, offset: 640)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4462, file: !1016, line: 258, baseType: !43, size: 64, offset: 704)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4462, file: !1016, line: 260, baseType: !4477, size: 64, offset: 768)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1016, line: 156, size: 192, elements: !4479)
!4479 = !{!4480, !4481, !4483}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4478, file: !1016, line: 157, baseType: !4477, size: 64)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4478, file: !1016, line: 158, baseType: !4482, size: 64, offset: 64)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4478, file: !1016, line: 162, baseType: !28, size: 32, offset: 128)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4462, file: !1016, line: 262, baseType: !4482, size: 64, offset: 832)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4462, file: !1016, line: 264, baseType: !28, size: 32, offset: 896)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4462, file: !1016, line: 268, baseType: !28, size: 32, offset: 928)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4462, file: !1016, line: 270, baseType: !1042, size: 64, offset: 960)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4462, file: !1016, line: 274, baseType: !139, size: 16, offset: 1024)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4462, file: !1016, line: 275, baseType: !1046, size: 8, offset: 1040)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4462, file: !1016, line: 276, baseType: !1048, size: 8, offset: 1048)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4462, file: !1016, line: 280, baseType: !1050, size: 64, offset: 1088)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4462, file: !1016, line: 289, baseType: !1053, size: 64, offset: 1152)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4462, file: !1016, line: 297, baseType: !45, size: 64, offset: 1216)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4462, file: !1016, line: 298, baseType: !45, size: 64, offset: 1280)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4462, file: !1016, line: 299, baseType: !45, size: 64, offset: 1344)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4462, file: !1016, line: 300, baseType: !45, size: 64, offset: 1408)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4462, file: !1016, line: 302, baseType: !140, size: 64, offset: 1472)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4462, file: !1016, line: 303, baseType: !28, size: 32, offset: 1536)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4462, file: !1016, line: 305, baseType: !1061, size: 160, offset: 1568)
!4500 = !DILocalVariable(name: "res_ptr", scope: !4440, file: !541, line: 190, type: !43)
!4501 = !DILocalVariable(name: "res_size", scope: !4440, file: !541, line: 191, type: !140)
!4502 = !DILocalVariable(name: "c", scope: !4437, file: !541, line: 195, type: !28)
!4503 = !DILocalVariable(name: "buf2", scope: !4437, file: !541, line: 197, type: !4504)
!4504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 408, elements: !4505)
!4505 = !{!4506}
!4506 = !DISubrange(count: 51)
!4507 = !DILocalVariable(name: "l1", scope: !4437, file: !541, line: 198, type: !140)
!4508 = !DILocalVariable(name: "l2", scope: !4437, file: !541, line: 198, type: !140)
!4509 = !DILocalVariable(name: "old_res_ptr", scope: !4437, file: !541, line: 199, type: !43)
!4510 = !DILocation(line: 196, column: 28, scope: !4437, inlinedAt: !4511)
!4511 = distinct !DILocation(line: 589, column: 18, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4430, file: !541, line: 589, column: 3)
!4513 = !DILocation(line: 197, column: 28, scope: !4437, inlinedAt: !4511)
!4514 = !DILocation(line: 403, column: 13, scope: !4430)
!4515 = !DILocation(line: 395, column: 15, scope: !4430)
!4516 = !DILocation(line: 584, column: 15, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4430, file: !541, line: 584, column: 7)
!4518 = !DILocation(line: 584, column: 7, scope: !4430)
!4519 = !DILocation(line: 128, column: 8, scope: !4448, inlinedAt: !4511)
!4520 = !DILocation(line: 126, column: 15, scope: !4448, inlinedAt: !4511)
!4521 = !DILocation(line: 129, column: 10, scope: !4447, inlinedAt: !4511)
!4522 = !DILocation(line: 129, column: 7, scope: !4448, inlinedAt: !4511)
!4523 = !DILocation(line: 138, column: 13, scope: !4446, inlinedAt: !4511)
!4524 = !DILocation(line: 132, column: 19, scope: !4446, inlinedAt: !4511)
!4525 = !DILocation(line: 139, column: 15, scope: !4526, inlinedAt: !4511)
!4526 = distinct !DILexicalBlock(scope: !4446, file: !541, line: 139, column: 11)
!4527 = !DILocation(line: 139, column: 23, scope: !4526, inlinedAt: !4511)
!4528 = !DILocation(line: 139, column: 26, scope: !4526, inlinedAt: !4511)
!4529 = !DILocation(line: 139, column: 33, scope: !4526, inlinedAt: !4511)
!4530 = !DILocation(line: 139, column: 11, scope: !4446, inlinedAt: !4511)
!4531 = !DILocation(line: 140, column: 9, scope: !4526, inlinedAt: !4511)
!4532 = !DILocation(line: 144, column: 26, scope: !4455, inlinedAt: !4511)
!4533 = !DILocation(line: 144, column: 16, scope: !4455, inlinedAt: !4511)
!4534 = !DILocation(line: 145, column: 16, scope: !4455, inlinedAt: !4511)
!4535 = !DILocation(line: 146, column: 34, scope: !4455, inlinedAt: !4511)
!4536 = !DILocation(line: 146, column: 38, scope: !4455, inlinedAt: !4511)
!4537 = !DILocation(line: 146, column: 42, scope: !4455, inlinedAt: !4511)
!4538 = !DILocation(line: 147, column: 48, scope: !4455, inlinedAt: !4511)
!4539 = !DILocation(line: 147, column: 46, scope: !4455, inlinedAt: !4511)
!4540 = !DILocation(line: 147, column: 69, scope: !4455, inlinedAt: !4511)
!4541 = !DILocation(line: 147, column: 30, scope: !4455, inlinedAt: !4511)
!4542 = !DILocation(line: 134, column: 13, scope: !4446, inlinedAt: !4511)
!4543 = !DILocation(line: 148, column: 13, scope: !4455, inlinedAt: !4511)
!4544 = !DILocation(line: 150, column: 13, scope: !4545, inlinedAt: !4511)
!4545 = distinct !DILexicalBlock(scope: !4546, file: !541, line: 149, column: 11)
!4546 = distinct !DILexicalBlock(scope: !4455, file: !541, line: 148, column: 13)
!4547 = !DILocation(line: 151, column: 17, scope: !4545, inlinedAt: !4511)
!4548 = !DILocation(line: 152, column: 34, scope: !4549, inlinedAt: !4511)
!4549 = distinct !DILexicalBlock(scope: !4545, file: !541, line: 151, column: 17)
!4550 = !DILocation(line: 153, column: 41, scope: !4545, inlinedAt: !4511)
!4551 = !DILocation(line: 153, column: 13, scope: !4545, inlinedAt: !4511)
!4552 = !DILocation(line: 157, column: 11, scope: !4446, inlinedAt: !4511)
!4553 = !DILocation(line: 171, column: 16, scope: !4444, inlinedAt: !4511)
!4554 = !DILocation(line: 162, column: 15, scope: !4444, inlinedAt: !4511)
!4555 = !DILocation(line: 173, column: 18, scope: !4443, inlinedAt: !4511)
!4556 = !DILocation(line: 173, column: 15, scope: !4444, inlinedAt: !4511)
!4557 = !DILocation(line: 180, column: 20, scope: !4442, inlinedAt: !4511)
!4558 = !DILocation(line: 178, column: 21, scope: !4442, inlinedAt: !4511)
!4559 = !DILocation(line: 181, column: 22, scope: !4441, inlinedAt: !4511)
!4560 = !DILocation(line: 181, column: 19, scope: !4442, inlinedAt: !4511)
!4561 = !DILocation(line: 184, column: 19, scope: !4562, inlinedAt: !4511)
!4562 = distinct !DILexicalBlock(scope: !4441, file: !541, line: 182, column: 17)
!4563 = !DILocation(line: 186, column: 17, scope: !4562, inlinedAt: !4511)
!4564 = !DILocation(line: 190, column: 25, scope: !4440, inlinedAt: !4511)
!4565 = !DILocation(line: 191, column: 26, scope: !4440, inlinedAt: !4511)
!4566 = !DILocation(line: 193, column: 19, scope: !4440, inlinedAt: !4511)
!4567 = !DILocation(line: 196, column: 23, scope: !4437, inlinedAt: !4511)
!4568 = !DILocation(line: 197, column: 23, scope: !4437, inlinedAt: !4511)
!4569 = !DILocalVariable(name: "__fp", arg: 1, scope: !4570, file: !1105, line: 63, type: !4460)
!4570 = distinct !DISubprogram(name: "getc_unlocked", scope: !1105, file: !1105, line: 63, type: !4571, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !196, variables: !4573)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!28, !4460}
!4573 = !{!4569}
!4574 = !DILocation(line: 63, column: 22, scope: !4570, inlinedAt: !4575)
!4575 = distinct !DILocation(line: 201, column: 27, scope: !4437, inlinedAt: !4511)
!4576 = !DILocation(line: 65, column: 10, scope: !4570, inlinedAt: !4575)
!4577 = !{!1115, !711, i64 8}
!4578 = !{!1115, !711, i64 16}
!4579 = !DILocation(line: 195, column: 27, scope: !4437, inlinedAt: !4511)
!4580 = !DILocation(line: 202, column: 27, scope: !4437, inlinedAt: !4511)
!4581 = distinct !{!4581, !4582, !4585}
!4582 = !DILocation(line: 209, column: 27, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4584, file: !541, line: 207, column: 25)
!4584 = distinct !DILexicalBlock(scope: !4437, file: !541, line: 206, column: 27)
!4585 = !DILocation(line: 211, column: 58, scope: !4583)
!4586 = !DILocation(line: 65, column: 10, scope: !4570, inlinedAt: !4587)
!4587 = distinct !DILocation(line: 210, column: 33, scope: !4583, inlinedAt: !4511)
!4588 = !DILocation(line: 63, column: 22, scope: !4570, inlinedAt: !4587)
!4589 = !DILocation(line: 210, column: 29, scope: !4583, inlinedAt: !4511)
!4590 = distinct !{!4590, !4591, !4592}
!4591 = !DILocation(line: 193, column: 19, scope: !4439)
!4592 = !DILocation(line: 241, column: 21, scope: !4439)
!4593 = !DILocation(line: 216, column: 23, scope: !4437, inlinedAt: !4511)
!4594 = !DILocation(line: 217, column: 27, scope: !4595, inlinedAt: !4511)
!4595 = distinct !DILexicalBlock(scope: !4437, file: !541, line: 217, column: 27)
!4596 = !DILocation(line: 217, column: 64, scope: !4595, inlinedAt: !4511)
!4597 = !DILocation(line: 217, column: 27, scope: !4437, inlinedAt: !4511)
!4598 = !DILocation(line: 219, column: 28, scope: !4437, inlinedAt: !4511)
!4599 = !DILocation(line: 198, column: 30, scope: !4437, inlinedAt: !4511)
!4600 = !DILocation(line: 220, column: 28, scope: !4437, inlinedAt: !4511)
!4601 = !DILocation(line: 198, column: 34, scope: !4437, inlinedAt: !4511)
!4602 = !DILocation(line: 199, column: 29, scope: !4437, inlinedAt: !4511)
!4603 = !DILocation(line: 222, column: 36, scope: !4604, inlinedAt: !4511)
!4604 = distinct !DILexicalBlock(scope: !4437, file: !541, line: 222, column: 27)
!4605 = !DILocation(line: 222, column: 27, scope: !4437, inlinedAt: !4511)
!4606 = !DILocation(line: 225, column: 63, scope: !4607, inlinedAt: !4511)
!4607 = distinct !DILexicalBlock(scope: !4604, file: !541, line: 223, column: 25)
!4608 = !DILocation(line: 225, column: 46, scope: !4607, inlinedAt: !4511)
!4609 = !DILocation(line: 226, column: 25, scope: !4607, inlinedAt: !4511)
!4610 = !DILocation(line: 229, column: 36, scope: !4611, inlinedAt: !4511)
!4611 = distinct !DILexicalBlock(scope: !4604, file: !541, line: 228, column: 25)
!4612 = !DILocation(line: 230, column: 73, scope: !4611, inlinedAt: !4511)
!4613 = !DILocation(line: 230, column: 46, scope: !4611, inlinedAt: !4511)
!4614 = !DILocation(line: 232, column: 35, scope: !4615, inlinedAt: !4511)
!4615 = distinct !DILexicalBlock(scope: !4437, file: !541, line: 232, column: 27)
!4616 = !DILocation(line: 232, column: 27, scope: !4437, inlinedAt: !4511)
!4617 = !DILocation(line: 236, column: 27, scope: !4618, inlinedAt: !4511)
!4618 = distinct !DILexicalBlock(scope: !4615, file: !541, line: 233, column: 25)
!4619 = !DILocation(line: 237, column: 27, scope: !4618, inlinedAt: !4511)
!4620 = !DILocation(line: 241, column: 21, scope: !4438, inlinedAt: !4511)
!4621 = !DILocation(line: 239, column: 39, scope: !4437, inlinedAt: !4511)
!4622 = !DILocation(line: 239, column: 50, scope: !4437, inlinedAt: !4511)
!4623 = !DILocation(line: 239, column: 61, scope: !4437, inlinedAt: !4511)
!4624 = !DILocalVariable(name: "__dest", arg: 1, scope: !4625, file: !4626, line: 88, type: !4629)
!4625 = distinct !DISubprogram(name: "strcpy", scope: !4626, file: !4626, line: 88, type: !4627, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !196, variables: !4630)
!4626 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4627 = !DISubroutineType(types: !4628)
!4628 = !{!43, !4629, !1092}
!4629 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !43)
!4630 = !{!4624, !4631}
!4631 = !DILocalVariable(name: "__src", arg: 2, scope: !4625, file: !4626, line: 88, type: !1092)
!4632 = !DILocation(line: 88, column: 1, scope: !4625, inlinedAt: !4633)
!4633 = distinct !DILocation(line: 239, column: 23, scope: !4437, inlinedAt: !4511)
!4634 = !DILocation(line: 90, column: 49, scope: !4625, inlinedAt: !4633)
!4635 = !DILocation(line: 90, column: 10, scope: !4625, inlinedAt: !4633)
!4636 = !DILocation(line: 88, column: 1, scope: !4625, inlinedAt: !4637)
!4637 = distinct !DILocation(line: 240, column: 23, scope: !4437, inlinedAt: !4511)
!4638 = !DILocation(line: 90, column: 49, scope: !4625, inlinedAt: !4637)
!4639 = !DILocation(line: 90, column: 10, scope: !4625, inlinedAt: !4637)
!4640 = !DILocation(line: 193, column: 19, scope: !4438, inlinedAt: !4511)
!4641 = !DILocation(line: 242, column: 19, scope: !4440, inlinedAt: !4511)
!4642 = !DILocation(line: 243, column: 32, scope: !4643, inlinedAt: !4511)
!4643 = distinct !DILexicalBlock(scope: !4440, file: !541, line: 243, column: 23)
!4644 = !DILocation(line: 243, column: 23, scope: !4440, inlinedAt: !4511)
!4645 = !DILocation(line: 247, column: 33, scope: !4646, inlinedAt: !4511)
!4646 = distinct !DILexicalBlock(scope: !4643, file: !541, line: 246, column: 21)
!4647 = !DILocation(line: 247, column: 45, scope: !4646, inlinedAt: !4511)
!4648 = !DILocation(line: 253, column: 11, scope: !4444, inlinedAt: !4511)
!4649 = !DILocation(line: 377, column: 23, scope: !4446, inlinedAt: !4511)
!4650 = !DILocation(line: 378, column: 5, scope: !4446, inlinedAt: !4511)
!4651 = !DILocation(line: 396, column: 15, scope: !4430)
!4652 = !DILocation(line: 590, column: 8, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4512, file: !541, line: 589, column: 3)
!4654 = !DILocation(line: 590, column: 17, scope: !4653)
!4655 = !DILocation(line: 589, column: 3, scope: !4512)
!4656 = !DILocation(line: 592, column: 9, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4653, file: !541, line: 592, column: 9)
!4658 = !DILocation(line: 592, column: 35, scope: !4657)
!4659 = !DILocation(line: 593, column: 9, scope: !4657)
!4660 = !DILocation(line: 593, column: 24, scope: !4657)
!4661 = !DILocation(line: 593, column: 31, scope: !4657)
!4662 = !DILocation(line: 593, column: 34, scope: !4657)
!4663 = !DILocation(line: 593, column: 45, scope: !4657)
!4664 = !DILocation(line: 592, column: 9, scope: !4653)
!4665 = !DILocation(line: 595, column: 29, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !4657, file: !541, line: 594, column: 7)
!4667 = !DILocation(line: 595, column: 27, scope: !4666)
!4668 = !DILocation(line: 595, column: 46, scope: !4666)
!4669 = !DILocation(line: 596, column: 9, scope: !4666)
!4670 = !DILocation(line: 591, column: 19, scope: !4653)
!4671 = !DILocation(line: 591, column: 36, scope: !4653)
!4672 = !DILocation(line: 591, column: 16, scope: !4653)
!4673 = !DILocation(line: 591, column: 52, scope: !4653)
!4674 = !DILocation(line: 591, column: 69, scope: !4653)
!4675 = !DILocation(line: 591, column: 49, scope: !4653)
!4676 = distinct !{!4676, !4655, !4677}
!4677 = !DILocation(line: 597, column: 7, scope: !4512)
!4678 = !DILocation(line: 602, column: 7, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4430, file: !541, line: 602, column: 7)
!4680 = !DILocation(line: 602, column: 18, scope: !4679)
!4681 = !DILocation(line: 602, column: 7, scope: !4430)
!4682 = !DILocation(line: 612, column: 3, scope: !4430)
!4683 = distinct !DISubprogram(name: "mkancesdirs", scope: !4684, file: !4684, line: 65, type: !4685, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, unit: !664, variables: !4688)
!4684 = !DIFile(filename: "lib/mkancesdirs.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4685 = !DISubroutineType(types: !4686)
!4686 = !{!1191, !43, !4687, !756, !45}
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!4688 = !{!4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4704, !4705}
!4689 = !DILocalVariable(name: "file", arg: 1, scope: !4683, file: !4684, line: 65, type: !43)
!4690 = !DILocalVariable(name: "wd", arg: 2, scope: !4683, file: !4684, line: 65, type: !4687)
!4691 = !DILocalVariable(name: "make_dir", arg: 3, scope: !4683, file: !4684, line: 66, type: !756)
!4692 = !DILocalVariable(name: "make_dir_arg", arg: 4, scope: !4683, file: !4684, line: 67, type: !45)
!4693 = !DILocalVariable(name: "sep", scope: !4683, file: !4684, line: 72, type: !43)
!4694 = !DILocalVariable(name: "component", scope: !4683, file: !4684, line: 76, type: !43)
!4695 = !DILocalVariable(name: "p", scope: !4683, file: !4684, line: 78, type: !43)
!4696 = !DILocalVariable(name: "c", scope: !4683, file: !4684, line: 79, type: !44)
!4697 = !DILocalVariable(name: "made_dir", scope: !4683, file: !4684, line: 80, type: !98)
!4698 = !DILocalVariable(name: "make_dir_errno", scope: !4699, file: !4684, line: 100, type: !28)
!4699 = distinct !DILexicalBlock(scope: !4700, file: !4684, line: 99, column: 11)
!4700 = distinct !DILexicalBlock(scope: !4701, file: !4684, line: 98, column: 13)
!4701 = distinct !DILexicalBlock(scope: !4702, file: !4684, line: 95, column: 7)
!4702 = distinct !DILexicalBlock(scope: !4703, file: !4684, line: 94, column: 14)
!4703 = distinct !DILexicalBlock(scope: !4683, file: !4684, line: 89, column: 9)
!4704 = !DILocalVariable(name: "savewd_chdir_options", scope: !4699, file: !4684, line: 101, type: !28)
!4705 = !DILocalVariable(name: "chdir_result", scope: !4699, file: !4684, line: 102, type: !28)
!4706 = !DILocation(line: 65, column: 20, scope: !4683)
!4707 = !DILocation(line: 65, column: 41, scope: !4683)
!4708 = !DILocation(line: 66, column: 20, scope: !4683)
!4709 = !DILocation(line: 67, column: 20, scope: !4683)
!4710 = !DILocation(line: 72, column: 9, scope: !4683)
!4711 = !DILocation(line: 76, column: 9, scope: !4683)
!4712 = !DILocation(line: 78, column: 9, scope: !4683)
!4713 = !DILocation(line: 80, column: 8, scope: !4683)
!4714 = !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)
!4715 = !DILocation(line: 88, column: 15, scope: !4683)
!4716 = !DILocation(line: 79, column: 8, scope: !4683)
!4717 = !DILocation(line: 88, column: 3, scope: !4683)
!4718 = !DILocation(line: 88, column: 17, scope: !4683)
!4719 = !DILocation(line: 89, column: 9, scope: !4703)
!4720 = !DILocation(line: 89, column: 9, scope: !4683)
!4721 = !DILocation(line: 91, column: 13, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4703, file: !4684, line: 90, column: 7)
!4723 = distinct !{!4723, !4724}
!4724 = !{!"llvm.loop.unroll.disable"}
!4725 = !DILocation(line: 94, column: 26, scope: !4702)
!4726 = !DILocation(line: 94, column: 29, scope: !4702)
!4727 = !DILocation(line: 94, column: 35, scope: !4702)
!4728 = !DILocation(line: 94, column: 32, scope: !4702)
!4729 = !DILocation(line: 98, column: 20, scope: !4700)
!4730 = !DILocation(line: 98, column: 32, scope: !4700)
!4731 = !DILocation(line: 98, column: 37, scope: !4700)
!4732 = !DILocation(line: 98, column: 40, scope: !4700)
!4733 = !DILocation(line: 98, column: 53, scope: !4700)
!4734 = !DILocation(line: 98, column: 13, scope: !4701)
!4735 = !DILocation(line: 100, column: 17, scope: !4699)
!4736 = !DILocation(line: 101, column: 17, scope: !4699)
!4737 = !DILocation(line: 106, column: 18, scope: !4699)
!4738 = !DILocation(line: 111, column: 17, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4699, file: !4684, line: 110, column: 17)
!4740 = !DILocation(line: 110, column: 33, scope: !4739)
!4741 = !DILocation(line: 111, column: 20, scope: !4739)
!4742 = !DILocation(line: 111, column: 33, scope: !4739)
!4743 = !DILocation(line: 111, column: 40, scope: !4739)
!4744 = !DILocation(line: 111, column: 43, scope: !4739)
!4745 = !DILocation(line: 111, column: 56, scope: !4739)
!4746 = !DILocation(line: 110, column: 17, scope: !4699)
!4747 = !DILocation(line: 113, column: 22, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4739, file: !4684, line: 113, column: 22)
!4749 = !DILocation(line: 113, column: 63, scope: !4748)
!4750 = !DILocation(line: 113, column: 22, scope: !4739)
!4751 = !DILocation(line: 114, column: 32, scope: !4748)
!4752 = !DILocation(line: 114, column: 15, scope: !4748)
!4753 = !DILocation(line: 118, column: 17, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4699, file: !4684, line: 118, column: 17)
!4755 = !DILocation(line: 118, column: 17, scope: !4699)
!4756 = !DILocation(line: 122, column: 15, scope: !4699)
!4757 = !DILocation(line: 102, column: 17, scope: !4699)
!4758 = !DILocation(line: 126, column: 17, scope: !4699)
!4759 = !DILocation(line: 127, column: 20, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4699, file: !4684, line: 126, column: 17)
!4761 = !DILocation(line: 129, column: 30, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4699, file: !4684, line: 129, column: 17)
!4763 = !DILocation(line: 129, column: 17, scope: !4699)
!4764 = !DILocation(line: 131, column: 36, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4766, file: !4684, line: 131, column: 21)
!4766 = distinct !DILexicalBlock(scope: !4762, file: !4684, line: 130, column: 15)
!4767 = !DILocation(line: 131, column: 41, scope: !4765)
!4768 = !DILocation(line: 131, column: 44, scope: !4765)
!4769 = !DILocation(line: 131, column: 50, scope: !4765)
!4770 = !DILocation(line: 131, column: 21, scope: !4766)
!4771 = !DILocation(line: 132, column: 25, scope: !4765)
!4772 = !DILocation(line: 132, column: 19, scope: !4765)
!4773 = !DILocation(line: 133, column: 24, scope: !4766)
!4774 = distinct !{!4774, !4717, !4775}
!4775 = !DILocation(line: 138, column: 7, scope: !4683)
!4776 = !DILocation(line: 140, column: 20, scope: !4683)
!4777 = !DILocation(line: 140, column: 3, scope: !4683)
!4778 = !DILocation(line: 141, column: 1, scope: !4683)
!4779 = distinct !DISubprogram(name: "dirchownmod", scope: !4780, file: !4780, line: 61, type: !4781, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !677, variables: !4783)
!4780 = !DIFile(filename: "lib/dirchownmod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4781 = !DISubroutineType(types: !4782)
!4782 = !{!28, !28, !58, !680, !46, !49, !680, !680}
!4783 = !{!4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4813, !4814, !4817, !4820, !4823}
!4784 = !DILocalVariable(name: "fd", arg: 1, scope: !4779, file: !4780, line: 61, type: !28)
!4785 = !DILocalVariable(name: "dir", arg: 2, scope: !4779, file: !4780, line: 61, type: !58)
!4786 = !DILocalVariable(name: "mkdir_mode", arg: 3, scope: !4779, file: !4780, line: 61, type: !680)
!4787 = !DILocalVariable(name: "owner", arg: 4, scope: !4779, file: !4780, line: 62, type: !46)
!4788 = !DILocalVariable(name: "group", arg: 5, scope: !4779, file: !4780, line: 62, type: !49)
!4789 = !DILocalVariable(name: "mode", arg: 6, scope: !4779, file: !4780, line: 63, type: !680)
!4790 = !DILocalVariable(name: "mode_bits", arg: 7, scope: !4779, file: !4780, line: 63, type: !680)
!4791 = !DILocalVariable(name: "st", scope: !4779, file: !4780, line: 65, type: !4792)
!4792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1205, line: 46, size: 1152, elements: !4793)
!4793 = !{!4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4810, !4811, !4812}
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !4792, file: !1205, line: 48, baseType: !1208, size: 64)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !4792, file: !1205, line: 53, baseType: !1210, size: 64, offset: 64)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !4792, file: !1205, line: 61, baseType: !1212, size: 64, offset: 128)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !4792, file: !1205, line: 62, baseType: !681, size: 32, offset: 192)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !4792, file: !1205, line: 64, baseType: !47, size: 32, offset: 224)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !4792, file: !1205, line: 65, baseType: !50, size: 32, offset: 256)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !4792, file: !1205, line: 67, baseType: !28, size: 32, offset: 288)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !4792, file: !1205, line: 69, baseType: !1208, size: 64, offset: 320)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4792, file: !1205, line: 74, baseType: !1042, size: 64, offset: 384)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !4792, file: !1205, line: 78, baseType: !1220, size: 64, offset: 448)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !4792, file: !1205, line: 80, baseType: !1222, size: 64, offset: 512)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !4792, file: !1205, line: 91, baseType: !4806, size: 128, offset: 576)
!4806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1225, line: 8, size: 128, elements: !4807)
!4807 = !{!4808, !4809}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4806, file: !1225, line: 10, baseType: !1228, size: 64)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4806, file: !1225, line: 11, baseType: !1230, size: 64, offset: 64)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !4792, file: !1205, line: 92, baseType: !4806, size: 128, offset: 704)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !4792, file: !1205, line: 93, baseType: !4806, size: 128, offset: 832)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !4792, file: !1205, line: 106, baseType: !1234, size: 192, offset: 960)
!4813 = !DILocalVariable(name: "result", scope: !4779, file: !4780, line: 66, type: !28)
!4814 = !DILocalVariable(name: "dir_mode", scope: !4815, file: !4780, line: 70, type: !680)
!4815 = distinct !DILexicalBlock(scope: !4816, file: !4780, line: 69, column: 5)
!4816 = distinct !DILexicalBlock(scope: !4779, file: !4780, line: 68, column: 7)
!4817 = !DILocalVariable(name: "indeterminate", scope: !4818, file: !4780, line: 87, type: !680)
!4818 = distinct !DILexicalBlock(scope: !4819, file: !4780, line: 82, column: 9)
!4819 = distinct !DILexicalBlock(scope: !4815, file: !4780, line: 76, column: 11)
!4820 = !DILocalVariable(name: "chmod_mode", scope: !4821, file: !4780, line: 117, type: !680)
!4821 = distinct !DILexicalBlock(scope: !4822, file: !4780, line: 116, column: 13)
!4822 = distinct !DILexicalBlock(scope: !4818, file: !4780, line: 115, column: 15)
!4823 = !DILocalVariable(name: "e", scope: !4824, file: !4780, line: 134, type: !28)
!4824 = distinct !DILexicalBlock(scope: !4825, file: !4780, line: 133, column: 9)
!4825 = distinct !DILexicalBlock(scope: !4826, file: !4780, line: 130, column: 11)
!4826 = distinct !DILexicalBlock(scope: !4827, file: !4780, line: 129, column: 5)
!4827 = distinct !DILexicalBlock(scope: !4779, file: !4780, line: 128, column: 7)
!4828 = !DILocation(line: 61, column: 18, scope: !4779)
!4829 = !DILocation(line: 61, column: 34, scope: !4779)
!4830 = !DILocation(line: 61, column: 46, scope: !4779)
!4831 = !DILocation(line: 62, column: 20, scope: !4779)
!4832 = !DILocation(line: 62, column: 33, scope: !4779)
!4833 = !DILocation(line: 63, column: 21, scope: !4779)
!4834 = !DILocation(line: 63, column: 34, scope: !4779)
!4835 = !DILocation(line: 65, column: 3, scope: !4779)
!4836 = !DILocation(line: 66, column: 20, scope: !4779)
!4837 = !DILocation(line: 65, column: 15, scope: !4779)
!4838 = !DILocation(line: 66, column: 17, scope: !4779)
!4839 = !DILocalVariable(name: "__path", arg: 1, scope: !4840, file: !1324, line: 449, type: !58)
!4840 = distinct !DISubprogram(name: "stat", scope: !1324, file: !1324, line: 449, type: !4841, isLocal: false, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !677, variables: !4844)
!4841 = !DISubroutineType(types: !4842)
!4842 = !{!28, !58, !4843}
!4843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4792, size: 64)
!4844 = !{!4839, !4845}
!4845 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !4840, file: !1324, line: 449, type: !4843)
!4846 = !DILocation(line: 449, column: 1, scope: !4840, inlinedAt: !4847)
!4847 = distinct !DILocation(line: 66, column: 26, scope: !4779)
!4848 = !DILocation(line: 451, column: 10, scope: !4840, inlinedAt: !4847)
!4849 = !DILocalVariable(name: "__fd", arg: 1, scope: !4850, file: !1324, line: 463, type: !28)
!4850 = distinct !DISubprogram(name: "fstat", scope: !1324, file: !1324, line: 463, type: !4851, isLocal: false, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true, unit: !677, variables: !4853)
!4851 = !DISubroutineType(types: !4852)
!4852 = !{!28, !28, !4843}
!4853 = !{!4849, !4854}
!4854 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !4850, file: !1324, line: 463, type: !4843)
!4855 = !DILocation(line: 463, column: 1, scope: !4850, inlinedAt: !4856)
!4856 = distinct !DILocation(line: 66, column: 44, scope: !4779)
!4857 = !DILocation(line: 465, column: 10, scope: !4850, inlinedAt: !4856)
!4858 = !DILocation(line: 66, column: 7, scope: !4779)
!4859 = !DILocation(line: 68, column: 14, scope: !4816)
!4860 = !DILocation(line: 68, column: 7, scope: !4779)
!4861 = !DILocation(line: 70, column: 28, scope: !4815)
!4862 = !DILocation(line: 70, column: 14, scope: !4815)
!4863 = !DILocation(line: 76, column: 13, scope: !4819)
!4864 = !DILocation(line: 76, column: 11, scope: !4815)
!4865 = !DILocation(line: 78, column: 11, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4819, file: !4780, line: 77, column: 9)
!4867 = !DILocation(line: 78, column: 17, scope: !4866)
!4868 = !DILocation(line: 80, column: 9, scope: !4866)
!4869 = !DILocation(line: 87, column: 18, scope: !4818)
!4870 = !DILocation(line: 94, column: 22, scope: !4871)
!4871 = distinct !DILexicalBlock(scope: !4818, file: !4780, line: 94, column: 15)
!4872 = !DILocation(line: 94, column: 36, scope: !4871)
!4873 = !DILocation(line: 94, column: 51, scope: !4871)
!4874 = !{!1337, !785, i64 28}
!4875 = !DILocation(line: 94, column: 45, scope: !4871)
!4876 = !DILocation(line: 95, column: 15, scope: !4871)
!4877 = !DILocation(line: 95, column: 25, scope: !4871)
!4878 = !DILocation(line: 95, column: 39, scope: !4871)
!4879 = !DILocation(line: 95, column: 54, scope: !4871)
!4880 = !{!1337, !785, i64 32}
!4881 = !DILocation(line: 95, column: 48, scope: !4871)
!4882 = !DILocation(line: 94, column: 15, scope: !4818)
!4883 = !DILocation(line: 97, column: 27, scope: !4884)
!4884 = distinct !DILexicalBlock(scope: !4871, file: !4780, line: 96, column: 13)
!4885 = !DILocation(line: 97, column: 25, scope: !4884)
!4886 = !DILocation(line: 98, column: 27, scope: !4884)
!4887 = !DILocation(line: 99, column: 38, scope: !4884)
!4888 = !DILocation(line: 99, column: 27, scope: !4884)
!4889 = !DILocation(line: 100, column: 27, scope: !4884)
!4890 = !DILocation(line: 101, column: 27, scope: !4884)
!4891 = !DILocation(line: 108, column: 26, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4884, file: !4780, line: 108, column: 19)
!4893 = !DILocation(line: 108, column: 44, scope: !4892)
!4894 = !DILocation(line: 108, column: 31, scope: !4892)
!4895 = !DILocation(line: 109, column: 42, scope: !4892)
!4896 = !DILocation(line: 115, column: 22, scope: !4822)
!4897 = !DILocation(line: 115, column: 27, scope: !4822)
!4898 = !DILocation(line: 115, column: 42, scope: !4822)
!4899 = !DILocation(line: 115, column: 50, scope: !4822)
!4900 = !DILocation(line: 115, column: 67, scope: !4822)
!4901 = !DILocation(line: 115, column: 15, scope: !4818)
!4902 = !DILocation(line: 118, column: 34, scope: !4821)
!4903 = !DILocation(line: 118, column: 52, scope: !4821)
!4904 = !DILocation(line: 118, column: 22, scope: !4821)
!4905 = !DILocation(line: 117, column: 22, scope: !4821)
!4906 = !DILocation(line: 119, column: 42, scope: !4821)
!4907 = !DILocation(line: 119, column: 25, scope: !4821)
!4908 = !DILocation(line: 120, column: 27, scope: !4821)
!4909 = !DILocation(line: 128, column: 7, scope: !4779)
!4910 = !DILocation(line: 122, column: 27, scope: !4821)
!4911 = !DILocation(line: 128, column: 9, scope: !4827)
!4912 = !DILocation(line: 130, column: 18, scope: !4825)
!4913 = !DILocation(line: 130, column: 11, scope: !4826)
!4914 = !DILocation(line: 131, column: 18, scope: !4825)
!4915 = !DILocation(line: 131, column: 9, scope: !4825)
!4916 = !DILocation(line: 134, column: 19, scope: !4824)
!4917 = !DILocation(line: 134, column: 15, scope: !4824)
!4918 = !DILocation(line: 135, column: 11, scope: !4824)
!4919 = !DILocation(line: 136, column: 17, scope: !4824)
!4920 = !DILocation(line: 141, column: 1, scope: !4779)
!4921 = !DILocation(line: 140, column: 3, scope: !4779)
!4922 = distinct !DISubprogram(name: "fd_safer", scope: !4923, file: !4923, line: 37, type: !4924, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !682, variables: !4926)
!4923 = !DIFile(filename: "lib/fd-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4924 = !DISubroutineType(types: !4925)
!4925 = !{!28, !28}
!4926 = !{!4927, !4928, !4931}
!4927 = !DILocalVariable(name: "fd", arg: 1, scope: !4922, file: !4923, line: 37, type: !28)
!4928 = !DILocalVariable(name: "f", scope: !4929, file: !4923, line: 41, type: !28)
!4929 = distinct !DILexicalBlock(scope: !4930, file: !4923, line: 40, column: 5)
!4930 = distinct !DILexicalBlock(scope: !4922, file: !4923, line: 39, column: 7)
!4931 = !DILocalVariable(name: "e", scope: !4929, file: !4923, line: 42, type: !28)
!4932 = !DILocation(line: 37, column: 15, scope: !4922)
!4933 = !DILocation(line: 39, column: 26, scope: !4930)
!4934 = !DILocation(line: 41, column: 15, scope: !4929)
!4935 = !DILocation(line: 41, column: 11, scope: !4929)
!4936 = !DILocation(line: 42, column: 15, scope: !4929)
!4937 = !DILocation(line: 42, column: 11, scope: !4929)
!4938 = !DILocation(line: 43, column: 7, scope: !4929)
!4939 = !DILocation(line: 44, column: 13, scope: !4929)
!4940 = !DILocation(line: 46, column: 5, scope: !4929)
!4941 = !DILocation(line: 48, column: 3, scope: !4922)
!4942 = distinct !DISubprogram(name: "rpl_fclose", scope: !4943, file: !4943, line: 56, type: !4944, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !684, variables: !4986)
!4943 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4944 = !DISubroutineType(types: !4945)
!4945 = !{!28, !4946}
!4946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4947, size: 64)
!4947 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1014, line: 7, baseType: !4948)
!4948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1016, line: 241, size: 1728, elements: !4949)
!4949 = !{!4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985}
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4948, file: !1016, line: 242, baseType: !28, size: 32)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4948, file: !1016, line: 247, baseType: !43, size: 64, offset: 64)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4948, file: !1016, line: 248, baseType: !43, size: 64, offset: 128)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4948, file: !1016, line: 249, baseType: !43, size: 64, offset: 192)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4948, file: !1016, line: 250, baseType: !43, size: 64, offset: 256)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4948, file: !1016, line: 251, baseType: !43, size: 64, offset: 320)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4948, file: !1016, line: 252, baseType: !43, size: 64, offset: 384)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4948, file: !1016, line: 253, baseType: !43, size: 64, offset: 448)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4948, file: !1016, line: 254, baseType: !43, size: 64, offset: 512)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4948, file: !1016, line: 256, baseType: !43, size: 64, offset: 576)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4948, file: !1016, line: 257, baseType: !43, size: 64, offset: 640)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4948, file: !1016, line: 258, baseType: !43, size: 64, offset: 704)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4948, file: !1016, line: 260, baseType: !4963, size: 64, offset: 768)
!4963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4964, size: 64)
!4964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1016, line: 156, size: 192, elements: !4965)
!4965 = !{!4966, !4967, !4969}
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4964, file: !1016, line: 157, baseType: !4963, size: 64)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4964, file: !1016, line: 158, baseType: !4968, size: 64, offset: 64)
!4968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4948, size: 64)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4964, file: !1016, line: 162, baseType: !28, size: 32, offset: 128)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4948, file: !1016, line: 262, baseType: !4968, size: 64, offset: 832)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4948, file: !1016, line: 264, baseType: !28, size: 32, offset: 896)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4948, file: !1016, line: 268, baseType: !28, size: 32, offset: 928)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4948, file: !1016, line: 270, baseType: !1042, size: 64, offset: 960)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4948, file: !1016, line: 274, baseType: !139, size: 16, offset: 1024)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4948, file: !1016, line: 275, baseType: !1046, size: 8, offset: 1040)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4948, file: !1016, line: 276, baseType: !1048, size: 8, offset: 1048)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4948, file: !1016, line: 280, baseType: !1050, size: 64, offset: 1088)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4948, file: !1016, line: 289, baseType: !1053, size: 64, offset: 1152)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4948, file: !1016, line: 297, baseType: !45, size: 64, offset: 1216)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4948, file: !1016, line: 298, baseType: !45, size: 64, offset: 1280)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4948, file: !1016, line: 299, baseType: !45, size: 64, offset: 1344)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4948, file: !1016, line: 300, baseType: !45, size: 64, offset: 1408)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4948, file: !1016, line: 302, baseType: !140, size: 64, offset: 1472)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4948, file: !1016, line: 303, baseType: !28, size: 32, offset: 1536)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4948, file: !1016, line: 305, baseType: !1061, size: 160, offset: 1568)
!4986 = !{!4987, !4988, !4989, !4990}
!4987 = !DILocalVariable(name: "fp", arg: 1, scope: !4942, file: !4943, line: 56, type: !4946)
!4988 = !DILocalVariable(name: "saved_errno", scope: !4942, file: !4943, line: 58, type: !28)
!4989 = !DILocalVariable(name: "fd", scope: !4942, file: !4943, line: 59, type: !28)
!4990 = !DILocalVariable(name: "result", scope: !4942, file: !4943, line: 60, type: !28)
!4991 = !DILocation(line: 56, column: 19, scope: !4942)
!4992 = !DILocation(line: 58, column: 7, scope: !4942)
!4993 = !DILocation(line: 60, column: 7, scope: !4942)
!4994 = !DILocation(line: 63, column: 8, scope: !4942)
!4995 = !DILocation(line: 59, column: 7, scope: !4942)
!4996 = !DILocation(line: 64, column: 10, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4942, file: !4943, line: 64, column: 7)
!4998 = !DILocation(line: 64, column: 7, scope: !4942)
!4999 = !DILocation(line: 65, column: 12, scope: !4997)
!5000 = !DILocation(line: 65, column: 5, scope: !4997)
!5001 = !DILocation(line: 70, column: 9, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !4942, file: !4943, line: 70, column: 7)
!5003 = !DILocation(line: 70, column: 23, scope: !5002)
!5004 = !DILocation(line: 70, column: 33, scope: !5002)
!5005 = !DILocation(line: 70, column: 26, scope: !5002)
!5006 = !DILocation(line: 70, column: 59, scope: !5002)
!5007 = !DILocation(line: 71, column: 7, scope: !5002)
!5008 = !DILocation(line: 71, column: 10, scope: !5002)
!5009 = !DILocation(line: 70, column: 7, scope: !4942)
!5010 = !DILocation(line: 98, column: 12, scope: !4942)
!5011 = !DILocation(line: 103, column: 7, scope: !4942)
!5012 = !DILocation(line: 72, column: 19, scope: !5002)
!5013 = !DILocation(line: 103, column: 19, scope: !5014)
!5014 = distinct !DILexicalBlock(scope: !4942, file: !4943, line: 103, column: 7)
!5015 = !DILocation(line: 105, column: 13, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !5014, file: !4943, line: 104, column: 5)
!5017 = !DILocation(line: 107, column: 5, scope: !5016)
!5018 = !DILocation(line: 110, column: 1, scope: !4942)
!5019 = distinct !DISubprogram(name: "rpl_fflush", scope: !5020, file: !5020, line: 127, type: !5021, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !686, variables: !5063)
!5020 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5021 = !DISubroutineType(types: !5022)
!5022 = !{!28, !5023}
!5023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5024, size: 64)
!5024 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1014, line: 7, baseType: !5025)
!5025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1016, line: 241, size: 1728, elements: !5026)
!5026 = !{!5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5047, !5048, !5049, !5050, !5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062}
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5025, file: !1016, line: 242, baseType: !28, size: 32)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5025, file: !1016, line: 247, baseType: !43, size: 64, offset: 64)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5025, file: !1016, line: 248, baseType: !43, size: 64, offset: 128)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5025, file: !1016, line: 249, baseType: !43, size: 64, offset: 192)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5025, file: !1016, line: 250, baseType: !43, size: 64, offset: 256)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5025, file: !1016, line: 251, baseType: !43, size: 64, offset: 320)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5025, file: !1016, line: 252, baseType: !43, size: 64, offset: 384)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5025, file: !1016, line: 253, baseType: !43, size: 64, offset: 448)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5025, file: !1016, line: 254, baseType: !43, size: 64, offset: 512)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5025, file: !1016, line: 256, baseType: !43, size: 64, offset: 576)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5025, file: !1016, line: 257, baseType: !43, size: 64, offset: 640)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5025, file: !1016, line: 258, baseType: !43, size: 64, offset: 704)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5025, file: !1016, line: 260, baseType: !5040, size: 64, offset: 768)
!5040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5041, size: 64)
!5041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1016, line: 156, size: 192, elements: !5042)
!5042 = !{!5043, !5044, !5046}
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5041, file: !1016, line: 157, baseType: !5040, size: 64)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5041, file: !1016, line: 158, baseType: !5045, size: 64, offset: 64)
!5045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5025, size: 64)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5041, file: !1016, line: 162, baseType: !28, size: 32, offset: 128)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5025, file: !1016, line: 262, baseType: !5045, size: 64, offset: 832)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5025, file: !1016, line: 264, baseType: !28, size: 32, offset: 896)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5025, file: !1016, line: 268, baseType: !28, size: 32, offset: 928)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5025, file: !1016, line: 270, baseType: !1042, size: 64, offset: 960)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5025, file: !1016, line: 274, baseType: !139, size: 16, offset: 1024)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5025, file: !1016, line: 275, baseType: !1046, size: 8, offset: 1040)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5025, file: !1016, line: 276, baseType: !1048, size: 8, offset: 1048)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5025, file: !1016, line: 280, baseType: !1050, size: 64, offset: 1088)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5025, file: !1016, line: 289, baseType: !1053, size: 64, offset: 1152)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5025, file: !1016, line: 297, baseType: !45, size: 64, offset: 1216)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5025, file: !1016, line: 298, baseType: !45, size: 64, offset: 1280)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5025, file: !1016, line: 299, baseType: !45, size: 64, offset: 1344)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5025, file: !1016, line: 300, baseType: !45, size: 64, offset: 1408)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5025, file: !1016, line: 302, baseType: !140, size: 64, offset: 1472)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5025, file: !1016, line: 303, baseType: !28, size: 32, offset: 1536)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5025, file: !1016, line: 305, baseType: !1061, size: 160, offset: 1568)
!5063 = !{!5064}
!5064 = !DILocalVariable(name: "stream", arg: 1, scope: !5019, file: !5020, line: 127, type: !5023)
!5065 = !DILocation(line: 127, column: 19, scope: !5019)
!5066 = !DILocation(line: 148, column: 14, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5019, file: !5020, line: 148, column: 7)
!5068 = !DILocation(line: 148, column: 22, scope: !5067)
!5069 = !DILocation(line: 148, column: 27, scope: !5067)
!5070 = !DILocation(line: 148, column: 7, scope: !5019)
!5071 = !DILocation(line: 149, column: 12, scope: !5067)
!5072 = !DILocation(line: 149, column: 5, scope: !5067)
!5073 = !DILocalVariable(name: "fp", arg: 1, scope: !5074, file: !5020, line: 40, type: !5023)
!5074 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !5020, file: !5020, line: 40, type: !5075, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !686, variables: !5077)
!5075 = !DISubroutineType(types: !5076)
!5076 = !{null, !5023}
!5077 = !{!5073}
!5078 = !DILocation(line: 40, column: 48, scope: !5074, inlinedAt: !5079)
!5079 = distinct !DILocation(line: 153, column: 3, scope: !5019)
!5080 = !DILocation(line: 42, column: 11, scope: !5081, inlinedAt: !5079)
!5081 = distinct !DILexicalBlock(scope: !5074, file: !5020, line: 42, column: 7)
!5082 = !DILocation(line: 42, column: 18, scope: !5081, inlinedAt: !5079)
!5083 = !DILocation(line: 42, column: 7, scope: !5074, inlinedAt: !5079)
!5084 = !DILocation(line: 44, column: 5, scope: !5081, inlinedAt: !5079)
!5085 = !DILocation(line: 155, column: 10, scope: !5019)
!5086 = !DILocation(line: 155, column: 3, scope: !5019)
!5087 = !DILocation(line: 229, column: 1, scope: !5019)
!5088 = distinct !DISubprogram(name: "rpl_fseeko", scope: !5089, file: !5089, line: 28, type: !5090, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !688, variables: !5133)
!5089 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5090 = !DISubroutineType(types: !5091)
!5091 = !{!28, !5092, !5132, !28}
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5093, size: 64)
!5093 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1014, line: 7, baseType: !5094)
!5094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1016, line: 241, size: 1728, elements: !5095)
!5095 = !{!5096, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5105, !5106, !5107, !5108, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5123, !5124, !5125, !5126, !5127, !5128, !5129, !5130, !5131}
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5094, file: !1016, line: 242, baseType: !28, size: 32)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5094, file: !1016, line: 247, baseType: !43, size: 64, offset: 64)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5094, file: !1016, line: 248, baseType: !43, size: 64, offset: 128)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5094, file: !1016, line: 249, baseType: !43, size: 64, offset: 192)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5094, file: !1016, line: 250, baseType: !43, size: 64, offset: 256)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5094, file: !1016, line: 251, baseType: !43, size: 64, offset: 320)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5094, file: !1016, line: 252, baseType: !43, size: 64, offset: 384)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5094, file: !1016, line: 253, baseType: !43, size: 64, offset: 448)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5094, file: !1016, line: 254, baseType: !43, size: 64, offset: 512)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5094, file: !1016, line: 256, baseType: !43, size: 64, offset: 576)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5094, file: !1016, line: 257, baseType: !43, size: 64, offset: 640)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5094, file: !1016, line: 258, baseType: !43, size: 64, offset: 704)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5094, file: !1016, line: 260, baseType: !5109, size: 64, offset: 768)
!5109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5110, size: 64)
!5110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1016, line: 156, size: 192, elements: !5111)
!5111 = !{!5112, !5113, !5115}
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5110, file: !1016, line: 157, baseType: !5109, size: 64)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5110, file: !1016, line: 158, baseType: !5114, size: 64, offset: 64)
!5114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5094, size: 64)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5110, file: !1016, line: 162, baseType: !28, size: 32, offset: 128)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5094, file: !1016, line: 262, baseType: !5114, size: 64, offset: 832)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5094, file: !1016, line: 264, baseType: !28, size: 32, offset: 896)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5094, file: !1016, line: 268, baseType: !28, size: 32, offset: 928)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5094, file: !1016, line: 270, baseType: !1042, size: 64, offset: 960)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5094, file: !1016, line: 274, baseType: !139, size: 16, offset: 1024)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5094, file: !1016, line: 275, baseType: !1046, size: 8, offset: 1040)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5094, file: !1016, line: 276, baseType: !1048, size: 8, offset: 1048)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5094, file: !1016, line: 280, baseType: !1050, size: 64, offset: 1088)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5094, file: !1016, line: 289, baseType: !1053, size: 64, offset: 1152)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5094, file: !1016, line: 297, baseType: !45, size: 64, offset: 1216)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5094, file: !1016, line: 298, baseType: !45, size: 64, offset: 1280)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5094, file: !1016, line: 299, baseType: !45, size: 64, offset: 1344)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5094, file: !1016, line: 300, baseType: !45, size: 64, offset: 1408)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5094, file: !1016, line: 302, baseType: !140, size: 64, offset: 1472)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5094, file: !1016, line: 303, baseType: !28, size: 32, offset: 1536)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5094, file: !1016, line: 305, baseType: !1061, size: 160, offset: 1568)
!5132 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1069, line: 57, baseType: !1042)
!5133 = !{!5134, !5135, !5136, !5137}
!5134 = !DILocalVariable(name: "fp", arg: 1, scope: !5088, file: !5089, line: 28, type: !5092)
!5135 = !DILocalVariable(name: "offset", arg: 2, scope: !5088, file: !5089, line: 28, type: !5132)
!5136 = !DILocalVariable(name: "whence", arg: 3, scope: !5088, file: !5089, line: 28, type: !28)
!5137 = !DILocalVariable(name: "pos", scope: !5138, file: !5089, line: 116, type: !5132)
!5138 = distinct !DILexicalBlock(scope: !5139, file: !5089, line: 112, column: 5)
!5139 = distinct !DILexicalBlock(scope: !5088, file: !5089, line: 51, column: 7)
!5140 = !DILocation(line: 28, column: 15, scope: !5088)
!5141 = !DILocation(line: 28, column: 25, scope: !5088)
!5142 = !DILocation(line: 28, column: 37, scope: !5088)
!5143 = !DILocation(line: 51, column: 11, scope: !5139)
!5144 = !DILocation(line: 51, column: 31, scope: !5139)
!5145 = !DILocation(line: 51, column: 24, scope: !5139)
!5146 = !DILocation(line: 52, column: 7, scope: !5139)
!5147 = !DILocation(line: 52, column: 14, scope: !5139)
!5148 = !DILocation(line: 52, column: 35, scope: !5139)
!5149 = !{!1115, !711, i64 32}
!5150 = !DILocation(line: 52, column: 28, scope: !5139)
!5151 = !DILocation(line: 53, column: 7, scope: !5139)
!5152 = !DILocation(line: 53, column: 14, scope: !5139)
!5153 = !{!1115, !711, i64 72}
!5154 = !DILocation(line: 53, column: 28, scope: !5139)
!5155 = !DILocation(line: 51, column: 7, scope: !5088)
!5156 = !DILocation(line: 116, column: 26, scope: !5138)
!5157 = !DILocation(line: 116, column: 19, scope: !5138)
!5158 = !DILocation(line: 116, column: 13, scope: !5138)
!5159 = !DILocation(line: 117, column: 15, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5138, file: !5089, line: 117, column: 11)
!5161 = !DILocation(line: 117, column: 11, scope: !5138)
!5162 = !DILocation(line: 127, column: 11, scope: !5138)
!5163 = !DILocation(line: 127, column: 18, scope: !5138)
!5164 = !DILocation(line: 128, column: 11, scope: !5138)
!5165 = !DILocation(line: 128, column: 19, scope: !5138)
!5166 = !{!1115, !1116, i64 144}
!5167 = !DILocation(line: 159, column: 7, scope: !5138)
!5168 = !DILocation(line: 161, column: 10, scope: !5088)
!5169 = !DILocation(line: 161, column: 3, scope: !5088)
!5170 = !DILocation(line: 162, column: 1, scope: !5088)
!5171 = distinct !DISubprogram(name: "dup_safer", scope: !5172, file: !5172, line: 31, type: !4924, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !690, variables: !5173)
!5172 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5173 = !{!5174}
!5174 = !DILocalVariable(name: "fd", arg: 1, scope: !5171, file: !5172, line: 31, type: !28)
!5175 = !DILocation(line: 31, column: 16, scope: !5171)
!5176 = !DILocation(line: 33, column: 10, scope: !5171)
!5177 = !DILocation(line: 33, column: 3, scope: !5171)
!5178 = !DILocation(line: 272, column: 16, scope: !545)
!5179 = !DILocation(line: 272, column: 24, scope: !545)
!5180 = !DILocation(line: 274, column: 3, scope: !545)
!5181 = !DILocation(line: 274, column: 11, scope: !545)
!5182 = !DILocation(line: 275, column: 7, scope: !545)
!5183 = !DILocation(line: 276, column: 3, scope: !545)
!5184 = !DILocation(line: 277, column: 3, scope: !545)
!5185 = !DILocation(line: 322, column: 22, scope: !570)
!5186 = !DILocation(line: 322, column: 13, scope: !570)
!5187 = !DILocation(line: 336, column: 18, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !570, file: !546, line: 336, column: 13)
!5189 = !DILocation(line: 336, column: 15, scope: !5188)
!5190 = !DILocation(line: 336, column: 13, scope: !570)
!5191 = !DILocation(line: 338, column: 22, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5188, file: !546, line: 337, column: 11)
!5193 = !DILocation(line: 339, column: 19, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5192, file: !546, line: 339, column: 17)
!5195 = !DILocation(line: 339, column: 29, scope: !5194)
!5196 = !DILocation(line: 339, column: 32, scope: !5194)
!5197 = !DILocation(line: 339, column: 38, scope: !5194)
!5198 = !DILocation(line: 339, column: 17, scope: !5192)
!5199 = !DILocation(line: 349, column: 26, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5194, file: !546, line: 348, column: 15)
!5201 = !DILocation(line: 350, column: 28, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !5200, file: !546, line: 350, column: 21)
!5203 = !DILocation(line: 350, column: 21, scope: !5200)
!5204 = !DILocation(line: 354, column: 11, scope: !5192)
!5205 = !DILocation(line: 356, column: 20, scope: !5188)
!5206 = !DILocation(line: 357, column: 28, scope: !574)
!5207 = !DILocation(line: 357, column: 15, scope: !574)
!5208 = !DILocation(line: 357, column: 47, scope: !574)
!5209 = !DILocation(line: 357, column: 25, scope: !574)
!5210 = !DILocation(line: 359, column: 25, scope: !573)
!5211 = !DILocation(line: 359, column: 17, scope: !573)
!5212 = !DILocation(line: 360, column: 23, scope: !577)
!5213 = !DILocation(line: 360, column: 27, scope: !577)
!5214 = !DILocation(line: 360, column: 60, scope: !577)
!5215 = !DILocation(line: 360, column: 30, scope: !577)
!5216 = !DILocation(line: 360, column: 74, scope: !577)
!5217 = !DILocation(line: 360, column: 17, scope: !573)
!5218 = !DILocation(line: 362, column: 35, scope: !576)
!5219 = !DILocation(line: 362, column: 21, scope: !576)
!5220 = !DILocation(line: 363, column: 17, scope: !576)
!5221 = !DILocation(line: 364, column: 23, scope: !576)
!5222 = !DILocation(line: 366, column: 15, scope: !576)
!5223 = !DILocation(line: 404, column: 19, scope: !579)
!5224 = !DILocation(line: 404, column: 15, scope: !579)
!5225 = !DILocation(line: 405, column: 18, scope: !579)
!5226 = !DILocation(line: 412, column: 3, scope: !545)
!5227 = !DILocation(line: 414, column: 1, scope: !545)
!5228 = !DILocation(line: 413, column: 3, scope: !545)
