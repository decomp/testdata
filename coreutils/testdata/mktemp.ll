; ModuleID = 'coreutils-8.27/src/mktemp.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.randint_source = type { %struct.randread_source*, i64, i64 }
%struct.randread_source = type { %struct._IO_FILE*, void (i8*)*, i8*, %union.anon.21 }
%union.anon.21 = type { %struct.isaac }
%struct.isaac = type { i64, %struct.isaac_state, %union.anon.0 }
%struct.isaac_state = type { [256 x i64], i64, i64, i64 }
%union.anon.0 = type { [256 x i64] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.timezone = type { i32, i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Usage: %s [OPTION]... [TEMPLATE]\0A\00", align 1
@.str.2 = private unnamed_addr constant [211 x i8] c"Create a temporary file or directory, safely, and print its name.\0ATEMPLATE must contain at least 3 consecutive 'X's in last component.\0AIf TEMPLATE is not specified, use tmp.XXXXXXXXXX, and --tmpdir is implied.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [74 x i8] c"Files are created u+rw, and directories u+rwx, minus umask restrictions.\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [204 x i8] c"  -d, --directory     create a directory, not a file\0A  -u, --dry-run       do not create anything; merely print a name (unsafe)\0A  -q, --quiet         suppress diagnostics about file/dir-creation failure\0A\00", align 1
@.str.6 = private unnamed_addr constant [156 x i8] c"      --suffix=SUFF   append SUFF to TEMPLATE; SUFF must not contain a slash.\0A                        This option is implied if TEMPLATE does not end in X\0A\00", align 1
@.str.7 = private unnamed_addr constant [363 x i8] c"  -p DIR, --tmpdir[=DIR]  interpret TEMPLATE relative to DIR; if DIR is not\0A                        specified, use $TMPDIR if set, else /tmp.  With\0A                        this option, TEMPLATE must not be an absolute name;\0A                        unlike with -t, TEMPLATE may contain slashes, but\0A                        mktemp creates only the final component\0A\00", align 1
@.str.8 = private unnamed_addr constant [225 x i8] c"  -t                  interpret TEMPLATE as a single file name component,\0A                        relative to a directory: $TMPDIR, if set; else the\0A                        directory specified via -p; else /tmp [deprecated]\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"mktemp\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.41 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.43 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"dp:qtuV\00", align 1
@longopts = internal constant [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 1, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 2, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.17 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"Eric Blake\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [19 x i8] c"too many templates\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"tmp.XXXXXXXXXX\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"with --suffix, template %s must end in X\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c"invalid suffix %s, contains directory separator\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"too few X's in template %s\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.25 = private unnamed_addr constant [51 x i8] c"invalid template, %s, contains directory separator\00", align 1
@.str.26 = private unnamed_addr constant [60 x i8] c"invalid template, %s; with --tmpdir, it may not be absolute\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"failed to create directory via template %s\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"failed to create file via template %s\00", align 1
@stdout_closed = internal unnamed_addr global i1 false, align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"dry-run\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"suffix\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"tmpdir\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), align 8, !dbg !50
@.str.30 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !55
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !60
@.str.35 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.36 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.37 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !63
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !70
@.str.53 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.54 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.55 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.57, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.58, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.59, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.60, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.63, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.64, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.65, i32 0, i32 0), i8* null], align 16, !dbg !77
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !122
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !129
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !140
@.str.11.66 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.67 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.68 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.69 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.70 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.71 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.72 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !147
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !154
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !142
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !156
@.str.2.77 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@letters = internal unnamed_addr constant [63 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789\00", align 16, !dbg !162
@.str.80 = private unnamed_addr constant [35 x i8] c"! \22invalid KIND in __gen_tempname\22\00", align 1
@.str.1.81 = private unnamed_addr constant [15 x i8] c"lib/tempname.c\00", align 1
@__PRETTY_FUNCTION__.gen_tempname_len = private unnamed_addr constant [52 x i8] c"int gen_tempname_len(char *, int, int, int, size_t)\00", align 1
@switch.table.gen_tempname = private unnamed_addr constant [3 x i32 (i8*, i8*)*] [i32 (i8*, i8*)* @try_file, i32 (i8*, i8*)* @try_dir, i32 (i8*, i8*)* @try_nocreate]
@.str.82 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.83 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.84 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.85 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.86 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.87 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.88 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.89 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.90 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.91 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.92 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.93 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.94 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.95 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.98 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.99 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.100 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.101 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.102 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.103 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !171
@.str.1.116 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.117 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.130 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.131 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.134 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !180
@.str.3.135 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.136 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.137 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.138 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.139 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.140 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@.str.149 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3.150 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.1.151 = private unnamed_addr constant [16 x i8] c"%s: end of file\00", align 1
@.str.2.152 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !529

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !686 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !690, metadata !691), !dbg !692
  %2 = icmp eq i32 %0, 0, !dbg !693
  br i1 %2, label %8, label %3, !dbg !695

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !696, !tbaa !698
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !696
  %6 = load i8*, i8** @program_name, align 8, !dbg !696, !tbaa !698
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #12, !dbg !696
  br label %53, !dbg !696

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !702
  %10 = load i8*, i8** @program_name, align 8, !dbg !702, !tbaa !698
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #12, !dbg !702
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([211 x i8], [211 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !704
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !704, !tbaa !698
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #12, !dbg !704
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !705
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !705, !tbaa !698
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #12, !dbg !705
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !706, !tbaa !698
  %19 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %struct._IO_FILE* %18) #12, !dbg !706
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.5, i64 0, i64 0), i32 5) #12, !dbg !707
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !707, !tbaa !698
  %22 = tail call i32 @fputs_unlocked(i8* %20, %struct._IO_FILE* %21) #12, !dbg !707
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.6, i64 0, i64 0), i32 5) #12, !dbg !708
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !708, !tbaa !698
  %25 = tail call i32 @fputs_unlocked(i8* %23, %struct._IO_FILE* %24) #12, !dbg !708
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([363 x i8], [363 x i8]* @.str.7, i64 0, i64 0), i32 5) #12, !dbg !709
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !709, !tbaa !698
  %28 = tail call i32 @fputs_unlocked(i8* %26, %struct._IO_FILE* %27) #12, !dbg !709
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([225 x i8], [225 x i8]* @.str.8, i64 0, i64 0), i32 5) #12, !dbg !710
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !710, !tbaa !698
  %31 = tail call i32 @fputs_unlocked(i8* %29, %struct._IO_FILE* %30) #12, !dbg !710
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 5) #12, !dbg !711
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !711, !tbaa !698
  %34 = tail call i32 @fputs_unlocked(i8* %32, %struct._IO_FILE* %33) #12, !dbg !711
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i32 5) #12, !dbg !712
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !712, !tbaa !698
  %37 = tail call i32 @fputs_unlocked(i8* %35, %struct._IO_FILE* %36) #12, !dbg !712
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !23, metadata !691) #12, !dbg !713
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i64 0, metadata !23, metadata !691) #12, !dbg !713
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i64 0, i64 0), i32 5) #12, !dbg !715
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0)) #12, !dbg !715
  %40 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !716
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !31, metadata !691) #12, !dbg !717
  %41 = icmp eq i8* %40, null, !dbg !718
  br i1 %41, label %48, label %42, !dbg !720

; <label>:42:                                     ; preds = %8
  %43 = tail call i32 @strncmp(i8* nonnull %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i64 3) #14, !dbg !721
  %44 = icmp eq i32 %43, 0, !dbg !721
  br i1 %44, label %48, label %45, !dbg !722

; <label>:45:                                     ; preds = %42
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.41, i64 0, i64 0), i32 5) #12, !dbg !723
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)) #12, !dbg !723
  br label %48, !dbg !725

; <label>:48:                                     ; preds = %8, %42, %45
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i64 0, i64 0), i32 5) #12, !dbg !726
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)) #12, !dbg !726
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.43, i64 0, i64 0), i32 5) #12, !dbg !727
  %52 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0)) #12, !dbg !727
  br label %53

; <label>:53:                                     ; preds = %48, %3
  tail call void @exit(i32 %0) #15, !dbg !728
  unreachable, !dbg !728
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !729 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !734, metadata !691), !dbg !773
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !735, metadata !691), !dbg !774
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !737, metadata !691), !dbg !775
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !738, metadata !691), !dbg !776
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !742, metadata !691), !dbg !777
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !743, metadata !691), !dbg !778
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !744, metadata !691), !dbg !779
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !745, metadata !691), !dbg !780
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !746, metadata !691), !dbg !781
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !747, metadata !691), !dbg !782
  %3 = load i8*, i8** %1, align 8, !dbg !783, !tbaa !698
  tail call void @set_program_name(i8* %3) #12, !dbg !784
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)) #12, !dbg !785
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #12, !dbg !786
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0)) #12, !dbg !787
  %7 = tail call i32 @atexit(void ()* nonnull @maybe_close_stdout) #12, !dbg !788
  br label %8, !dbg !789

; <label>:8:                                      ; preds = %43, %2
  %9 = phi i8 [ 1, %43 ], [ 0, %2 ]
  %10 = phi i8 [ %17, %43 ], [ 0, %2 ]
  %11 = phi i8 [ %24, %43 ], [ 0, %2 ]
  %12 = phi i8* [ %35, %43 ], [ null, %2 ]
  %13 = phi i8 [ %38, %43 ], [ 0, %2 ]
  %14 = phi i8* [ %33, %43 ], [ null, %2 ]
  br label %16, !dbg !790

; <label>:15:                                     ; preds = %37
  br label %16, !dbg !790

; <label>:16:                                     ; preds = %15, %8
  %17 = phi i8 [ %10, %8 ], [ 1, %15 ]
  %18 = phi i8 [ %11, %8 ], [ %24, %15 ]
  %19 = phi i8 [ %9, %8 ], [ %30, %15 ]
  %20 = phi i8* [ %12, %8 ], [ %35, %15 ]
  %21 = phi i8 [ %13, %8 ], [ %38, %15 ]
  %22 = phi i8* [ %14, %8 ], [ %33, %15 ]
  br label %23, !dbg !790

; <label>:23:                                     ; preds = %16, %44
  %24 = phi i8 [ %18, %16 ], [ 1, %44 ]
  %25 = phi i8 [ %19, %16 ], [ %30, %44 ]
  %26 = phi i8* [ %20, %16 ], [ %35, %44 ]
  %27 = phi i8 [ %21, %16 ], [ %38, %44 ]
  %28 = phi i8* [ %22, %16 ], [ %33, %44 ]
  br label %29, !dbg !790

; <label>:29:                                     ; preds = %23, %40
  %30 = phi i8 [ %25, %23 ], [ 1, %40 ]
  %31 = phi i8* [ %26, %23 ], [ %35, %40 ]
  %32 = phi i8 [ %27, %23 ], [ %38, %40 ]
  %33 = phi i8* [ %28, %23 ], [ %41, %40 ]
  br label %34, !dbg !790

; <label>:34:                                     ; preds = %29, %45
  %35 = phi i8* [ %31, %29 ], [ %46, %45 ]
  %36 = phi i8 [ %32, %29 ], [ %38, %45 ]
  br label %37, !dbg !790

; <label>:37:                                     ; preds = %34, %42
  %38 = phi i8 [ 1, %42 ], [ %36, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !737, metadata !691), !dbg !775
  tail call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !738, metadata !691), !dbg !776
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !742, metadata !691), !dbg !777
  tail call void @llvm.dbg.value(metadata i8 %30, i64 0, metadata !743, metadata !691), !dbg !778
  tail call void @llvm.dbg.value(metadata i8 %24, i64 0, metadata !746, metadata !691), !dbg !781
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !745, metadata !691), !dbg !780
  tail call void @llvm.dbg.value(metadata i8 %9, i64 0, metadata !744, metadata !691), !dbg !779
  %39 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #12, !dbg !790
  tail call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !739, metadata !691), !dbg !791
  switch i32 %39, label %51 [
    i32 -1, label %52
    i32 100, label %15
    i32 112, label %40
    i32 113, label %42
    i32 116, label %43
    i32 117, label %44
    i32 128, label %45
    i32 -130, label %47
    i32 86, label %48
    i32 -131, label %48
  ], !dbg !789, !llvm.loop !792

; <label>:40:                                     ; preds = %37
  %41 = load i8*, i8** @optarg, align 8, !dbg !794, !tbaa !698
  tail call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !737, metadata !691), !dbg !775
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !743, metadata !691), !dbg !778
  br label %29, !dbg !797, !llvm.loop !792

; <label>:42:                                     ; preds = %37
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !738, metadata !691), !dbg !776
  br label %37, !dbg !798, !llvm.loop !792

; <label>:43:                                     ; preds = %37
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !743, metadata !691), !dbg !778
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !744, metadata !691), !dbg !779
  br label %8, !dbg !799, !llvm.loop !792

; <label>:44:                                     ; preds = %37
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !746, metadata !691), !dbg !781
  br label %23, !dbg !800, !llvm.loop !792

; <label>:45:                                     ; preds = %37
  %46 = load i8*, i8** @optarg, align 8, !dbg !801, !tbaa !698
  tail call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !742, metadata !691), !dbg !777
  br label %34, !dbg !802, !llvm.loop !792

; <label>:47:                                     ; preds = %37
  tail call void @usage(i32 0) #16, !dbg !803
  unreachable, !dbg !803

; <label>:48:                                     ; preds = %37, %37
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !804, !tbaa !698
  %50 = load i8*, i8** @Version, align 8, !dbg !804, !tbaa !698
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8* null) #12, !dbg !804
  tail call void @exit(i32 0) #15, !dbg !804
  unreachable, !dbg !804

; <label>:51:                                     ; preds = %37
  tail call void @usage(i32 1) #16, !dbg !805
  unreachable, !dbg !805

; <label>:52:                                     ; preds = %37
  %53 = load i32, i32* @optind, align 4, !dbg !806, !tbaa !807
  %54 = sub nsw i32 %0, %53, !dbg !809
  tail call void @llvm.dbg.value(metadata i32 %54, i64 0, metadata !740, metadata !691), !dbg !810
  %55 = icmp ugt i32 %54, 1, !dbg !811
  br i1 %55, label %56, label %58, !dbg !813

; <label>:56:                                     ; preds = %52
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0), i32 5) #12, !dbg !814
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %57) #12, !dbg !816
  tail call void @usage(i32 1) #16, !dbg !817
  unreachable, !dbg !817

; <label>:58:                                     ; preds = %52
  %59 = icmp eq i32 %54, 0, !dbg !818
  br i1 %59, label %64, label %60, !dbg !820

; <label>:60:                                     ; preds = %58
  %61 = sext i32 %53 to i64, !dbg !821
  %62 = getelementptr inbounds i8*, i8** %1, i64 %61, !dbg !821
  %63 = load i8*, i8** %62, align 8, !dbg !821, !tbaa !698
  tail call void @llvm.dbg.value(metadata i8* %63, i64 0, metadata !741, metadata !691), !dbg !823
  br label %64

; <label>:64:                                     ; preds = %58, %60
  %65 = phi i8 [ %30, %60 ], [ 1, %58 ]
  %66 = phi i8* [ %63, %60 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i64 0, i64 0), %58 ]
  tail call void @llvm.dbg.value(metadata i8* %66, i64 0, metadata !741, metadata !691), !dbg !823
  tail call void @llvm.dbg.value(metadata i8 %65, i64 0, metadata !743, metadata !691), !dbg !778
  %67 = icmp eq i8* %35, null, !dbg !824
  br i1 %67, label %86, label %68, !dbg !825

; <label>:68:                                     ; preds = %64
  %69 = tail call i64 @strlen(i8* %66) #14, !dbg !826
  tail call void @llvm.dbg.value(metadata i64 %69, i64 0, metadata !751, metadata !691), !dbg !827
  %70 = icmp eq i64 %69, 0, !dbg !828
  br i1 %70, label %76, label %71, !dbg !830

; <label>:71:                                     ; preds = %68
  %72 = add i64 %69, -1, !dbg !831
  %73 = getelementptr inbounds i8, i8* %66, i64 %72, !dbg !832
  %74 = load i8, i8* %73, align 1, !dbg !832, !tbaa !833
  %75 = icmp eq i8 %74, 88, !dbg !834
  br i1 %75, label %79, label %76, !dbg !835

; <label>:76:                                     ; preds = %71, %68
  %77 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0), i32 5) #12, !dbg !836
  %78 = tail call i8* @quote(i8* %66) #12, !dbg !836
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %77, i8* %78) #12, !dbg !836
  unreachable, !dbg !836

; <label>:79:                                     ; preds = %71
  %80 = tail call i64 @strlen(i8* nonnull %35) #14, !dbg !838
  tail call void @llvm.dbg.value(metadata i64 %80, i64 0, metadata !749, metadata !691), !dbg !839
  %81 = add i64 %69, 1, !dbg !840
  %82 = add i64 %81, %80, !dbg !841
  tail call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !842, metadata !691) #12, !dbg !847
  %83 = tail call noalias i8* @xmalloc(i64 %82) #12, !dbg !849
  tail call void @llvm.dbg.value(metadata i8* %83, i64 0, metadata !750, metadata !691), !dbg !850
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* nonnull %66, i64 %69, i32 1, i1 false), !dbg !851
  %84 = getelementptr inbounds i8, i8* %83, i64 %69, !dbg !852
  %85 = add i64 %80, 1, !dbg !853
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* nonnull %35, i64 %85, i32 1, i1 false), !dbg !854
  tail call void @llvm.dbg.value(metadata i8* %83, i64 0, metadata !741, metadata !691), !dbg !823
  tail call void @llvm.dbg.value(metadata i8* %84, i64 0, metadata !742, metadata !691), !dbg !777
  br label %98, !dbg !855

; <label>:86:                                     ; preds = %64
  %87 = tail call noalias i8* @xstrdup(i8* %66) #12, !dbg !856
  tail call void @llvm.dbg.value(metadata i8* %87, i64 0, metadata !741, metadata !691), !dbg !823
  %88 = tail call i8* @strrchr(i8* %87, i32 88) #14, !dbg !858
  tail call void @llvm.dbg.value(metadata i8* %88, i64 0, metadata !742, metadata !691), !dbg !777
  %89 = icmp eq i8* %88, null, !dbg !859
  br i1 %89, label %90, label %93, !dbg !861

; <label>:90:                                     ; preds = %86
  %91 = tail call i64 @strlen(i8* %87), !dbg !862
  %92 = getelementptr i8, i8* %87, i64 %91, !dbg !862
  tail call void @llvm.dbg.value(metadata i8* %92, i64 0, metadata !742, metadata !691), !dbg !777
  br label %95, !dbg !863

; <label>:93:                                     ; preds = %86
  %94 = getelementptr inbounds i8, i8* %88, i64 1, !dbg !864
  tail call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !742, metadata !691), !dbg !777
  br label %95

; <label>:95:                                     ; preds = %93, %90
  %96 = phi i8* [ %94, %93 ], [ %92, %90 ]
  tail call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !742, metadata !691), !dbg !777
  %97 = tail call i64 @strlen(i8* %96) #14, !dbg !865
  tail call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !749, metadata !691), !dbg !839
  br label %98

; <label>:98:                                     ; preds = %95, %79
  %99 = phi i64 [ %80, %79 ], [ %97, %95 ]
  %100 = phi i8* [ %84, %79 ], [ %96, %95 ]
  %101 = phi i8* [ %83, %79 ], [ %87, %95 ]
  tail call void @llvm.dbg.value(metadata i8* %101, i64 0, metadata !741, metadata !691), !dbg !823
  tail call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !742, metadata !691), !dbg !777
  tail call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !749, metadata !691), !dbg !839
  %102 = icmp eq i64 %99, 0, !dbg !866
  br i1 %102, label %109, label %103, !dbg !868

; <label>:103:                                    ; preds = %98
  %104 = tail call i8* @last_component(i8* %100) #14, !dbg !869
  %105 = icmp eq i8* %104, %100, !dbg !870
  br i1 %105, label %109, label %106, !dbg !871

; <label>:106:                                    ; preds = %103
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.21, i64 0, i64 0), i32 5) #12, !dbg !872
  %108 = tail call i8* @quote(i8* %100) #12, !dbg !872
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %107, i8* %108) #12, !dbg !872
  unreachable, !dbg !872

; <label>:109:                                    ; preds = %103, %98
  %110 = ptrtoint i8* %100 to i64, !dbg !874
  %111 = ptrtoint i8* %101 to i64, !dbg !874
  %112 = sub i64 %110, %111, !dbg !874
  tail call void @llvm.dbg.value(metadata i8* %101, i64 0, metadata !875, metadata !691), !dbg !882
  tail call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !880, metadata !691), !dbg !884
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !881, metadata !691), !dbg !885
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !881, metadata !691), !dbg !885
  tail call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !880, metadata !691), !dbg !884
  %113 = icmp eq i64 %112, 0, !dbg !886
  br i1 %113, label %128, label %114, !dbg !889

; <label>:114:                                    ; preds = %109
  br label %115, !dbg !890

; <label>:115:                                    ; preds = %114, %122
  %116 = phi i64 [ %123, %122 ], [ 0, %114 ]
  %117 = phi i64 [ %118, %122 ], [ %112, %114 ]
  tail call void @llvm.dbg.value(metadata i64 %117, i64 0, metadata !880, metadata !691), !dbg !884
  tail call void @llvm.dbg.value(metadata i64 %116, i64 0, metadata !881, metadata !691), !dbg !885
  %118 = add i64 %117, -1, !dbg !890
  %119 = getelementptr inbounds i8, i8* %101, i64 %118, !dbg !891
  %120 = load i8, i8* %119, align 1, !dbg !891, !tbaa !833
  %121 = icmp eq i8 %120, 88, !dbg !892
  br i1 %121, label %122, label %125, !dbg !893

; <label>:122:                                    ; preds = %115
  %123 = add nuw i64 %116, 1, !dbg !894
  tail call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !881, metadata !691), !dbg !885
  tail call void @llvm.dbg.value(metadata i64 %118, i64 0, metadata !880, metadata !691), !dbg !884
  tail call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !881, metadata !691), !dbg !885
  tail call void @llvm.dbg.value(metadata i64 %118, i64 0, metadata !880, metadata !691), !dbg !884
  %124 = icmp eq i64 %118, 0, !dbg !886
  br i1 %124, label %125, label %115, !dbg !889, !llvm.loop !895

; <label>:125:                                    ; preds = %115, %122
  %126 = phi i64 [ %123, %122 ], [ %116, %115 ]
  tail call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !748, metadata !691), !dbg !898
  %127 = icmp ult i64 %126, 3, !dbg !899
  br i1 %127, label %128, label %131, !dbg !901

; <label>:128:                                    ; preds = %109, %125
  %129 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i32 5) #12, !dbg !902
  %130 = tail call i8* @quote(i8* %101) #12, !dbg !902
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %129, i8* %130) #12, !dbg !902
  unreachable, !dbg !902

; <label>:131:                                    ; preds = %125
  %132 = and i8 %65, 1, !dbg !903
  %133 = icmp eq i8 %132, 0, !dbg !903
  br i1 %133, label %177, label %134, !dbg !904

; <label>:134:                                    ; preds = %131
  %135 = icmp eq i8 %9, 0, !dbg !905
  br i1 %135, label %155, label %136, !dbg !906

; <label>:136:                                    ; preds = %134
  %137 = tail call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #12, !dbg !907
  tail call void @llvm.dbg.value(metadata i8* %137, i64 0, metadata !754, metadata !691), !dbg !908
  %138 = icmp eq i8* %137, null, !dbg !909
  br i1 %138, label %142, label %139, !dbg !911

; <label>:139:                                    ; preds = %136
  %140 = load i8, i8* %137, align 1, !dbg !912, !tbaa !833
  %141 = icmp eq i8 %140, 0, !dbg !912
  br i1 %141, label %142, label %148, !dbg !913

; <label>:142:                                    ; preds = %139, %136
  %143 = icmp eq i8* %33, null, !dbg !914
  br i1 %143, label %147, label %144, !dbg !916

; <label>:144:                                    ; preds = %142
  %145 = load i8, i8* %33, align 1, !dbg !917, !tbaa !833
  %146 = icmp eq i8 %145, 0, !dbg !917
  br i1 %146, label %147, label %148, !dbg !918

; <label>:147:                                    ; preds = %144, %142
  br label %148

; <label>:148:                                    ; preds = %144, %139, %147
  %149 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), %147 ], [ %137, %139 ], [ %33, %144 ]
  tail call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !736, metadata !691), !dbg !919
  %150 = tail call i8* @last_component(i8* %101) #14, !dbg !920
  %151 = icmp eq i8* %150, %101, !dbg !922
  br i1 %151, label %174, label %152, !dbg !923

; <label>:152:                                    ; preds = %148
  %153 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.25, i64 0, i64 0), i32 5) #12, !dbg !924
  %154 = tail call i8* @quote(i8* %101) #12, !dbg !924
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %153, i8* %154) #12, !dbg !924
  unreachable, !dbg !924

; <label>:155:                                    ; preds = %134
  %156 = icmp eq i8* %33, null, !dbg !925
  br i1 %156, label %160, label %157, !dbg !926

; <label>:157:                                    ; preds = %155
  %158 = load i8, i8* %33, align 1, !dbg !927, !tbaa !833
  %159 = icmp eq i8 %158, 0, !dbg !927
  br i1 %159, label %160, label %167, !dbg !928

; <label>:160:                                    ; preds = %157, %155
  %161 = tail call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #12, !dbg !929
  tail call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !759, metadata !691), !dbg !930
  %162 = icmp eq i8* %161, null, !dbg !931
  br i1 %162, label %167, label %163, !dbg !932

; <label>:163:                                    ; preds = %160
  %164 = load i8, i8* %161, align 1, !dbg !933, !tbaa !833
  %165 = icmp eq i8 %164, 0, !dbg !933
  %166 = select i1 %165, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* %161, !dbg !931
  br label %167, !dbg !931

; <label>:167:                                    ; preds = %163, %160, %157
  %168 = phi i8* [ %33, %157 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), %160 ], [ %166, %163 ]
  tail call void @llvm.dbg.value(metadata i8* %168, i64 0, metadata !736, metadata !691), !dbg !919
  %169 = load i8, i8* %101, align 1, !dbg !934, !tbaa !833
  %170 = icmp eq i8 %169, 47, !dbg !934
  br i1 %170, label %171, label %174, !dbg !936

; <label>:171:                                    ; preds = %167
  %172 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.26, i64 0, i64 0), i32 5) #12, !dbg !937
  %173 = tail call i8* @quote(i8* nonnull %101) #12, !dbg !937
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %172, i8* %173) #12, !dbg !937
  unreachable, !dbg !937

; <label>:174:                                    ; preds = %148, %167
  %175 = phi i8* [ %168, %167 ], [ %149, %148 ]
  tail call void @llvm.dbg.value(metadata i8* %175, i64 0, metadata !736, metadata !691), !dbg !919
  %176 = tail call i8* @file_name_concat(i8* %175, i8* %101, i8** null) #12, !dbg !938
  tail call void @llvm.dbg.value(metadata i8* %176, i64 0, metadata !750, metadata !691), !dbg !850
  tail call void @free(i8* %101) #12, !dbg !939
  tail call void @llvm.dbg.value(metadata i8* %176, i64 0, metadata !741, metadata !691), !dbg !823
  br label %177, !dbg !940

; <label>:177:                                    ; preds = %131, %174
  %178 = phi i8* [ %176, %174 ], [ %101, %131 ]
  tail call void @llvm.dbg.value(metadata i8* %178, i64 0, metadata !741, metadata !691), !dbg !823
  %179 = tail call noalias i8* @xstrdup(i8* %178) #12, !dbg !941
  tail call void @llvm.dbg.value(metadata i8* %179, i64 0, metadata !750, metadata !691), !dbg !850
  %180 = icmp eq i8 %17, 0, !dbg !942
  %181 = icmp eq i8 %24, 0
  %182 = trunc i64 %99 to i32
  br i1 %180, label %195, label %183, !dbg !943

; <label>:183:                                    ; preds = %177
  tail call void @llvm.dbg.value(metadata i8* %179, i64 0, metadata !944, metadata !691) #12, !dbg !952
  tail call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !949, metadata !691) #12, !dbg !954
  tail call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !950, metadata !691) #12, !dbg !955
  tail call void @llvm.dbg.value(metadata i1 %181, i64 0, metadata !951, metadata !691) #12, !dbg !956
  %184 = add nuw nsw i8 %24, 1, !dbg !957
  %185 = zext i8 %184 to i32, !dbg !957
  %186 = tail call i32 @gen_tempname_len(i8* %179, i32 %182, i32 0, i32 %185, i64 %126) #12, !dbg !958
  tail call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !763, metadata !691), !dbg !959
  %187 = icmp eq i32 %186, 0, !dbg !960
  br i1 %187, label %215, label %188, !dbg !962

; <label>:188:                                    ; preds = %183
  %189 = icmp eq i8 %38, 0, !dbg !963
  br i1 %189, label %190, label %228, !dbg !966

; <label>:190:                                    ; preds = %188
  %191 = tail call i32* @__errno_location() #17, !dbg !967
  %192 = load i32, i32* %191, align 4, !dbg !967, !tbaa !807
  %193 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i64 0, i64 0), i32 5) #12, !dbg !968
  %194 = tail call i8* @quote(i8* %178) #12, !dbg !969
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %192, i8* %193, i8* %194) #12, !dbg !970
  br label %228, !dbg !970

; <label>:195:                                    ; preds = %177
  tail call void @llvm.dbg.value(metadata i8* %179, i64 0, metadata !971, metadata !691) #12, !dbg !977
  tail call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !974, metadata !691) #12, !dbg !979
  tail call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !975, metadata !691) #12, !dbg !980
  tail call void @llvm.dbg.value(metadata i1 %181, i64 0, metadata !976, metadata !691) #12, !dbg !981
  %196 = shl nuw nsw i8 %24, 1, !dbg !982
  %197 = zext i8 %196 to i32, !dbg !982
  %198 = tail call i32 @gen_tempname_len(i8* %179, i32 %182, i32 0, i32 %197, i64 %126) #12, !dbg !983
  tail call void @llvm.dbg.value(metadata i32 %198, i64 0, metadata !766, metadata !691), !dbg !984
  %199 = icmp slt i32 %198, 0, !dbg !985
  br i1 %199, label %208, label %200, !dbg !987

; <label>:200:                                    ; preds = %195
  br i1 %181, label %203, label %201, !dbg !988

; <label>:201:                                    ; preds = %200
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !747, metadata !691), !dbg !782
  %202 = tail call i32 @puts(i8* %179), !dbg !989
  br label %228, !dbg !990

; <label>:203:                                    ; preds = %200
  %204 = tail call i32 @close(i32 %198) #12, !dbg !991
  %205 = icmp eq i32 %204, 0, !dbg !992
  br i1 %205, label %206, label %208, !dbg !993

; <label>:206:                                    ; preds = %203
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !747, metadata !691), !dbg !782
  %207 = tail call i32 @puts(i8* %179), !dbg !989
  br label %217, !dbg !990

; <label>:208:                                    ; preds = %203, %195
  %209 = icmp eq i8 %38, 0, !dbg !994
  br i1 %209, label %210, label %228, !dbg !997

; <label>:210:                                    ; preds = %208
  %211 = tail call i32* @__errno_location() #17, !dbg !998
  %212 = load i32, i32* %211, align 4, !dbg !998, !tbaa !807
  %213 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.28, i64 0, i64 0), i32 5) #12, !dbg !999
  %214 = tail call i8* @quote(i8* %178) #12, !dbg !1000
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %212, i8* %213, i8* %214) #12, !dbg !1001
  br label %228, !dbg !1001

; <label>:215:                                    ; preds = %183
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !747, metadata !691), !dbg !782
  %216 = tail call i32 @puts(i8* %179), !dbg !989
  br i1 %181, label %217, label %228, !dbg !990

; <label>:217:                                    ; preds = %206, %215
  store i1 true, i1* @stdout_closed, align 1
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1002, !tbaa !698
  %219 = tail call i32 @close_stream(%struct._IO_FILE* %218) #12, !dbg !1003
  %220 = icmp eq i32 %219, 0, !dbg !1004
  br i1 %220, label %228, label %221, !dbg !1005

; <label>:221:                                    ; preds = %217
  %222 = tail call i32* @__errno_location() #17, !dbg !1006
  %223 = load i32, i32* %222, align 4, !dbg !1006, !tbaa !807
  tail call void @llvm.dbg.value(metadata i32 %223, i64 0, metadata !768, metadata !691), !dbg !1007
  %224 = tail call i32 @remove(i8* %179) #12, !dbg !1008
  %225 = icmp eq i8 %38, 0, !dbg !1009
  br i1 %225, label %226, label %228, !dbg !1011

; <label>:226:                                    ; preds = %221
  %227 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i32 5) #12, !dbg !1012
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %223, i8* %227) #12, !dbg !1013
  br label %228, !dbg !1013

; <label>:228:                                    ; preds = %210, %208, %190, %188, %201, %226, %221, %217, %215
  %229 = phi i32 [ 0, %215 ], [ 0, %217 ], [ 1, %221 ], [ 1, %226 ], [ 0, %201 ], [ 1, %188 ], [ 1, %190 ], [ 1, %208 ], [ 1, %210 ]
  tail call void @llvm.dbg.value(metadata i32 %229, i64 0, metadata !747, metadata !691), !dbg !782
  ret i32 %229, !dbg !1014
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @maybe_close_stdout() #6 !dbg !1015 {
  %1 = load i1, i1* @stdout_closed, align 1
  br i1 %1, label %3, label %2, !dbg !1018

; <label>:2:                                      ; preds = %0
  tail call void @close_stdout() #12, !dbg !1019
  br label %8, !dbg !1019

; <label>:3:                                      ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1021, !tbaa !698
  %5 = tail call i32 @close_stream(%struct._IO_FILE* %4) #12, !dbg !1023
  %6 = icmp eq i32 %5, 0, !dbg !1024
  br i1 %6, label %8, label %7, !dbg !1025

; <label>:7:                                      ; preds = %3
  tail call void @_exit(i32 1) #15, !dbg !1026
  unreachable, !dbg !1026

; <label>:8:                                      ; preds = %3, %2
  ret void, !dbg !1027
}

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @remove(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !1028 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1086, metadata !691), !dbg !1091
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !1092
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1093, metadata !691), !dbg !1097
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1099
  %4 = load i32, i32* %3, align 8, !dbg !1099, !tbaa !1100
  %5 = and i32 %4, 32, !dbg !1099
  %6 = icmp eq i32 %5, 0, !dbg !1104
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !1105
  %8 = icmp ne i32 %7, 0, !dbg !1106
  br i1 %6, label %9, label %19, !dbg !1107

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !1109
  %11 = xor i1 %8, true, !dbg !1110
  %12 = or i1 %10, %11, !dbg !1110
  %13 = sext i1 %8 to i32, !dbg !1110
  br i1 %12, label %22, label %14, !dbg !1110

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !1111
  %16 = load i32, i32* %15, align 4, !dbg !1111, !tbaa !807
  %17 = icmp ne i32 %16, 9, !dbg !1112
  %18 = sext i1 %17 to i32, !dbg !1113
  br label %22, !dbg !1113

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !1114

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !1116
  store i32 0, i32* %21, align 4, !dbg !1118, !tbaa !807
  br label %22, !dbg !1116

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !1119
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1120 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1122, metadata !691), !dbg !1123
  store i8* %0, i8** @file_name, align 8, !dbg !1124, !tbaa !698
  ret void, !dbg !1125
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1126 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1130, metadata !691), !dbg !1131
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1132, !tbaa !1133
  ret void, !dbg !1135
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() local_unnamed_addr #6 !dbg !1136 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1141, !tbaa !698
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !1142
  %3 = icmp eq i32 %2, 0, !dbg !1143
  br i1 %3, label %21, label %4, !dbg !1144

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1145, !tbaa !1133, !range !1146
  %6 = icmp eq i8 %5, 0, !dbg !1145
  %7 = tail call i32* @__errno_location() #17, !dbg !1147
  br i1 %6, label %11, label %8, !dbg !1149

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1150, !tbaa !807
  %10 = icmp eq i32 %9, 32, !dbg !1151
  br i1 %10, label %21, label %11, !dbg !1152

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i32 5) #12, !dbg !1153
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1138, metadata !691), !dbg !1154
  %13 = load i8*, i8** @file_name, align 8, !dbg !1155, !tbaa !698
  %14 = icmp eq i8* %13, null, !dbg !1155
  %15 = load i32, i32* %7, align 4, !tbaa !807
  br i1 %14, label %18, label %16, !dbg !1156

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !1157
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.36, i64 0, i64 0), i8* %17, i8* %12) #12, !dbg !1158
  br label %19, !dbg !1158

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.37, i64 0, i64 0), i8* %12) #12, !dbg !1159
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1160, !tbaa !807
  tail call void @_exit(i32 %20) #15, !dbg !1161
  unreachable, !dbg !1161

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1162, !tbaa !698
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #12, !dbg !1164
  %24 = icmp eq i32 %23, 0, !dbg !1165
  br i1 %24, label %27, label %25, !dbg !1166

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1167, !tbaa !807
  tail call void @_exit(i32 %26) #15, !dbg !1168
  unreachable, !dbg !1168

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1169
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @last_component(i8* readonly) local_unnamed_addr #11 !dbg !1170 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1175, metadata !691), !dbg !1179
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1176, metadata !691), !dbg !1180
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1178, metadata !691), !dbg !1181
  br label %2, !dbg !1182

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ]
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1176, metadata !691), !dbg !1180
  %4 = load i8, i8* %3, align 1, !dbg !1183, !tbaa !833
  %5 = icmp eq i8 %4, 47, !dbg !1183
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1184
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1176, metadata !691), !dbg !1180
  br i1 %5, label %2, label %7, !dbg !1182, !llvm.loop !1185

; <label>:7:                                      ; preds = %2
  br label %8, !dbg !1186

; <label>:8:                                      ; preds = %7, %18
  %9 = phi i8 [ %22, %18 ], [ %4, %7 ], !dbg !1188
  %10 = phi i8* [ %19, %18 ], [ %3, %7 ]
  %11 = phi i8* [ %21, %18 ], [ %3, %7 ]
  %12 = phi i8 [ %20, %18 ], [ 0, %7 ]
  tail call void @llvm.dbg.value(metadata i8 %12, i64 0, metadata !1178, metadata !691), !dbg !1181
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !1177, metadata !691), !dbg !1190
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1176, metadata !691), !dbg !1180
  switch i8 %9, label %13 [
    i8 0, label %23
    i8 47, label %18
  ], !dbg !1186

; <label>:13:                                     ; preds = %8
  %14 = and i8 %12, 1, !dbg !1191
  %15 = icmp eq i8 %14, 0, !dbg !1191
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !1176, metadata !691), !dbg !1180
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1178, metadata !691), !dbg !1181
  %16 = select i1 %15, i8* %10, i8* %11, !dbg !1195
  %17 = select i1 %15, i8 %12, i8 0, !dbg !1195
  br label %18, !dbg !1195

; <label>:18:                                     ; preds = %13, %8
  %19 = phi i8* [ %10, %8 ], [ %16, %13 ]
  %20 = phi i8 [ 1, %8 ], [ %17, %13 ]
  tail call void @llvm.dbg.value(metadata i8 %20, i64 0, metadata !1178, metadata !691), !dbg !1181
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !1176, metadata !691), !dbg !1180
  %21 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1196
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !1177, metadata !691), !dbg !1190
  %22 = load i8, i8* %21, align 1, !dbg !1188, !tbaa !833
  br label %8, !dbg !1197, !llvm.loop !1198

; <label>:23:                                     ; preds = %8
  ret i8* %10, !dbg !1200
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @base_len(i8* nocapture readonly) local_unnamed_addr #11 !dbg !1201 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1205, metadata !691), !dbg !1208
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1207, metadata !691), !dbg !1209
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !1210
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1206, metadata !691), !dbg !1212
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1206, metadata !691), !dbg !1212
  %3 = icmp ugt i64 %2, 1, !dbg !1213
  br i1 %3, label %4, label %13, !dbg !1215

; <label>:4:                                      ; preds = %1
  br label %7, !dbg !1216

; <label>:5:                                      ; preds = %7
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !1206, metadata !691), !dbg !1212
  %6 = icmp ugt i64 %9, 1, !dbg !1213
  br i1 %6, label %7, label %13, !dbg !1215, !llvm.loop !1217

; <label>:7:                                      ; preds = %4, %5
  %8 = phi i64 [ %9, %5 ], [ %2, %4 ]
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !1206, metadata !691), !dbg !1212
  %9 = add i64 %8, -1, !dbg !1216
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !1216
  %11 = load i8, i8* %10, align 1, !dbg !1216, !tbaa !833
  %12 = icmp eq i8 %11, 47, !dbg !1216
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !1206, metadata !691), !dbg !1212
  br i1 %12, label %5, label %13, !dbg !1218

; <label>:13:                                     ; preds = %7, %5, %1
  %14 = phi i64 [ %2, %1 ], [ 1, %5 ], [ %8, %7 ]
  ret i64 %14, !dbg !1220
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @file_name_concat(i8*, i8*, i8**) local_unnamed_addr #6 !dbg !1221 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1226, metadata !691), !dbg !1230
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1227, metadata !691), !dbg !1231
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !1228, metadata !691), !dbg !1232
  %4 = tail call i8* @mfile_name_concat(i8* %0, i8* %1, i8** %2) #12, !dbg !1233
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !1229, metadata !691), !dbg !1234
  %5 = icmp eq i8* %4, null, !dbg !1235
  br i1 %5, label %6, label %7, !dbg !1237

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !1238
  unreachable, !dbg !1238

; <label>:7:                                      ; preds = %3
  ret i8* %4, !dbg !1239
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @mfile_name_concat(i8*, i8*, i8**) local_unnamed_addr #6 !dbg !1240 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1243, metadata !691), !dbg !1254
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1244, metadata !691), !dbg !1255
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !1245, metadata !691), !dbg !1256
  %4 = tail call i8* @last_component(i8* %0) #14, !dbg !1257
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !1246, metadata !691), !dbg !1258
  %5 = tail call i64 @base_len(i8* %4) #14, !dbg !1259
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !1247, metadata !691), !dbg !1260
  %6 = ptrtoint i8* %4 to i64, !dbg !1261
  %7 = ptrtoint i8* %0 to i64, !dbg !1261
  %8 = sub i64 %6, %7, !dbg !1261
  %9 = add i64 %8, %5, !dbg !1262
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !1248, metadata !691), !dbg !1263
  %10 = icmp eq i64 %5, 0, !dbg !1264
  br i1 %10, label %17, label %11, !dbg !1265

; <label>:11:                                     ; preds = %3
  %12 = add i64 %5, -1, !dbg !1266
  %13 = getelementptr inbounds i8, i8* %4, i64 %12, !dbg !1266
  %14 = load i8, i8* %13, align 1, !dbg !1266, !tbaa !833
  %15 = icmp ne i8 %14, 47, !dbg !1266
  %16 = zext i1 %15 to i64
  br label %17

; <label>:17:                                     ; preds = %3, %11
  %18 = phi i64 [ 0, %3 ], [ %16, %11 ]
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !1249, metadata !691), !dbg !1267
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1268, metadata !691), !dbg !1273
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1268, metadata !691), !dbg !1273
  br label %19, !dbg !1275

; <label>:19:                                     ; preds = %19, %17
  %20 = phi i8* [ %1, %17 ], [ %23, %19 ]
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1268, metadata !691), !dbg !1273
  %21 = load i8, i8* %20, align 1, !dbg !1277, !tbaa !833
  %22 = icmp eq i8 %21, 47, !dbg !1277
  %23 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !1279
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1268, metadata !691), !dbg !1273
  br i1 %22, label %19, label %24, !dbg !1280, !llvm.loop !1281

; <label>:24:                                     ; preds = %19
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1250, metadata !691), !dbg !1284
  %25 = tail call i64 @strlen(i8* %20) #14, !dbg !1285
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !1251, metadata !691), !dbg !1286
  %26 = add i64 %9, 1, !dbg !1287
  %27 = add i64 %26, %18, !dbg !1288
  %28 = add i64 %27, %25, !dbg !1289
  %29 = tail call noalias i8* @malloc(i64 %28) #12, !dbg !1290
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1252, metadata !691), !dbg !1291
  %30 = icmp eq i8* %29, null, !dbg !1292
  br i1 %30, label %44, label %31, !dbg !1294

; <label>:31:                                     ; preds = %24
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1295, metadata !691) #12, !dbg !1307
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1305, metadata !691) #12, !dbg !1307
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !1306, metadata !691) #12, !dbg !1307
  %32 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %29, i1 false, i1 true) #12, !dbg !1309
  %33 = tail call i8* @__mempcpy_chk(i8* nonnull %29, i8* nonnull %0, i64 %9, i64 %32) #12, !dbg !1310
  tail call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !1253, metadata !691), !dbg !1311
  store i8 47, i8* %33, align 1, !dbg !1312, !tbaa !833
  %34 = getelementptr inbounds i8, i8* %33, i64 %18, !dbg !1313
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !1253, metadata !691), !dbg !1311
  %35 = icmp eq i8** %2, null, !dbg !1314
  br i1 %35, label %41, label %36, !dbg !1316

; <label>:36:                                     ; preds = %31
  %37 = load i8, i8* %1, align 1, !dbg !1317, !tbaa !833
  %38 = icmp eq i8 %37, 47, !dbg !1317
  %39 = sext i1 %38 to i64, !dbg !1318
  %40 = getelementptr inbounds i8, i8* %34, i64 %39, !dbg !1318
  store i8* %40, i8** %2, align 8, !dbg !1319, !tbaa !698
  br label %41, !dbg !1320

; <label>:41:                                     ; preds = %31, %36
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !1295, metadata !691) #12, !dbg !1321
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1305, metadata !691) #12, !dbg !1321
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !1306, metadata !691) #12, !dbg !1321
  %42 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %34, i1 false, i1 true) #12, !dbg !1323
  %43 = tail call i8* @__mempcpy_chk(i8* nonnull %34, i8* nonnull %20, i64 %25, i64 %42) #12, !dbg !1324
  tail call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !1253, metadata !691), !dbg !1311
  store i8 0, i8* %43, align 1, !dbg !1325, !tbaa !833
  br label %44, !dbg !1326

; <label>:44:                                     ; preds = %24, %41
  %45 = phi i8* [ %29, %41 ], [ null, %24 ]
  ret i8* %45, !dbg !1327
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__mempcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1328 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1330, metadata !691), !dbg !1333
  %2 = icmp eq i8* %0, null, !dbg !1334
  br i1 %2, label %3, label %6, !dbg !1336

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1337, !tbaa !698
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.53, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1339
  tail call void @abort() #15, !dbg !1340
  unreachable, !dbg !1340

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1341
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1331, metadata !691), !dbg !1342
  %8 = icmp eq i8* %7, null, !dbg !1343
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1344
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1345
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1332, metadata !691), !dbg !1346
  %11 = ptrtoint i8* %10 to i64, !dbg !1347
  %12 = ptrtoint i8* %0 to i64, !dbg !1347
  %13 = sub i64 %11, %12, !dbg !1347
  %14 = icmp sgt i64 %13, 6, !dbg !1349
  br i1 %14, label %15, label %24, !dbg !1350

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1351
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.54, i64 0, i64 0), i64 7) #14, !dbg !1352
  %18 = icmp eq i32 %17, 0, !dbg !1353
  br i1 %18, label %19, label %24, !dbg !1354

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1330, metadata !691), !dbg !1333
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.55, i64 0, i64 0), i64 3) #14, !dbg !1355
  %21 = icmp eq i32 %20, 0, !dbg !1358
  br i1 %21, label %22, label %24, !dbg !1359

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1360
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1330, metadata !691), !dbg !1333
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1362, !tbaa !698
  br label %24, !dbg !1363

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1330, metadata !691), !dbg !1333
  store i8* %25, i8** @program_name, align 8, !dbg !1364, !tbaa !698
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1365, !tbaa !698
  ret void, !dbg !1366
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1367 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1372, metadata !691), !dbg !1375
  %2 = tail call i32* @__errno_location() #17, !dbg !1376
  %3 = load i32, i32* %2, align 4, !dbg !1376, !tbaa !807
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1373, metadata !691), !dbg !1377
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1378
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1378
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1378
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !1379
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1379
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1374, metadata !691), !dbg !1380
  store i32 %3, i32* %2, align 4, !dbg !1381, !tbaa !807
  ret %struct.quoting_options* %8, !dbg !1382
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1383 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1389, metadata !691), !dbg !1390
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1391
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1391
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1392
  %5 = load i32, i32* %4, align 8, !dbg !1392, !tbaa !1393
  ret i32 %5, !dbg !1395
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1396 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1400, metadata !691), !dbg !1402
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1401, metadata !691), !dbg !1403
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1404
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1404
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1405
  store i32 %1, i32* %5, align 8, !dbg !1406, !tbaa !1393
  ret void, !dbg !1407
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1408 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1412, metadata !691), !dbg !1420
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1413, metadata !691), !dbg !1421
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1414, metadata !691), !dbg !1422
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1415, metadata !691), !dbg !1423
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1424
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1424
  %6 = lshr i8 %1, 5, !dbg !1425
  %7 = zext i8 %6 to i64, !dbg !1425
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1426
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1416, metadata !691), !dbg !1427
  %9 = and i8 %1, 31, !dbg !1428
  %10 = zext i8 %9 to i32, !dbg !1429
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1418, metadata !691), !dbg !1430
  %11 = load i32, i32* %8, align 4, !dbg !1431, !tbaa !807
  %12 = lshr i32 %11, %10, !dbg !1432
  %13 = and i32 %12, 1, !dbg !1433
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1419, metadata !691), !dbg !1434
  %14 = and i32 %2, 1, !dbg !1435
  %15 = xor i32 %13, %14, !dbg !1436
  %16 = shl i32 %15, %10, !dbg !1437
  %17 = xor i32 %16, %11, !dbg !1438
  store i32 %17, i32* %8, align 4, !dbg !1438, !tbaa !807
  ret i32 %13, !dbg !1439
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1440 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1444, metadata !691), !dbg !1447
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1445, metadata !691), !dbg !1448
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1449
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1444, metadata !691), !dbg !1447
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1451
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1444, metadata !691), !dbg !1447
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1452
  %6 = load i32, i32* %5, align 4, !dbg !1452, !tbaa !1453
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1446, metadata !691), !dbg !1454
  store i32 %1, i32* %5, align 4, !dbg !1455, !tbaa !1453
  ret i32 %6, !dbg !1456
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1457 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1461, metadata !691), !dbg !1464
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1462, metadata !691), !dbg !1465
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1463, metadata !691), !dbg !1466
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1467
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1461, metadata !691), !dbg !1464
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1469
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1461, metadata !691), !dbg !1464
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1470
  store i32 10, i32* %6, align 8, !dbg !1471, !tbaa !1393
  %7 = icmp ne i8* %1, null, !dbg !1472
  %8 = icmp ne i8* %2, null, !dbg !1474
  %9 = and i1 %7, %8, !dbg !1475
  br i1 %9, label %11, label %10, !dbg !1475

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1476
  unreachable, !dbg !1476

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1477
  store i8* %1, i8** %12, align 8, !dbg !1478, !tbaa !1479
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1480
  store i8* %2, i8** %13, align 8, !dbg !1481, !tbaa !1482
  ret void, !dbg !1483
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1484 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1488, metadata !691), !dbg !1496
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1489, metadata !691), !dbg !1497
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1490, metadata !691), !dbg !1498
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1491, metadata !691), !dbg !1499
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1492, metadata !691), !dbg !1500
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1501
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1501
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1493, metadata !691), !dbg !1502
  %8 = tail call i32* @__errno_location() #17, !dbg !1503
  %9 = load i32, i32* %8, align 4, !dbg !1503, !tbaa !807
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1494, metadata !691), !dbg !1504
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1505
  %11 = load i32, i32* %10, align 8, !dbg !1505, !tbaa !1393
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1506
  %13 = load i32, i32* %12, align 4, !dbg !1506, !tbaa !1453
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1507
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1508
  %16 = load i8*, i8** %15, align 8, !dbg !1508, !tbaa !1479
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1509
  %18 = load i8*, i8** %17, align 8, !dbg !1509, !tbaa !1482
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1510
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1495, metadata !691), !dbg !1511
  store i32 %9, i32* %8, align 4, !dbg !1512, !tbaa !807
  ret i64 %19, !dbg !1513
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1514 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1520, metadata !691), !dbg !1584
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1521, metadata !691), !dbg !1585
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1522, metadata !691), !dbg !1586
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1523, metadata !691), !dbg !1587
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1524, metadata !691), !dbg !1588
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1525, metadata !691), !dbg !1589
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1526, metadata !691), !dbg !1590
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1527, metadata !691), !dbg !1591
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1528, metadata !691), !dbg !1592
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1530, metadata !691), !dbg !1593
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1531, metadata !691), !dbg !1594
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1532, metadata !691), !dbg !1595
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1533, metadata !691), !dbg !1596
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1534, metadata !691), !dbg !1597
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !1598
  %14 = icmp eq i64 %13, 1, !dbg !1599
  %15 = lshr i32 %5, 1, !dbg !1600
  %16 = trunc i32 %15 to i8, !dbg !1600
  %17 = and i8 %16, 1, !dbg !1600
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1536, metadata !691), !dbg !1600
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1537, metadata !691), !dbg !1601
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1538, metadata !691), !dbg !1602
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1539, metadata !691), !dbg !1603
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1604

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1521, metadata !691), !dbg !1585
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1539, metadata !691), !dbg !1603
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1538, metadata !691), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1537, metadata !691), !dbg !1601
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1536, metadata !691), !dbg !1600
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1523, metadata !691), !dbg !1587
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1534, metadata !691), !dbg !1597
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1533, metadata !691), !dbg !1596
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1532, metadata !691), !dbg !1595
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1531, metadata !691), !dbg !1594
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1530, metadata !691), !dbg !1593
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1528, metadata !691), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1527, metadata !691), !dbg !1591
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1524, metadata !691), !dbg !1588
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
  ], !dbg !1605

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1524, metadata !691), !dbg !1588
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1536, metadata !691), !dbg !1600
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1536, metadata !691), !dbg !1600
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1524, metadata !691), !dbg !1588
  br label %94, !dbg !1606

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1536, metadata !691), !dbg !1600
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1524, metadata !691), !dbg !1588
  %43 = and i8 %36, 1, !dbg !1608
  %44 = icmp eq i8 %43, 0, !dbg !1608
  br i1 %44, label %45, label %94, !dbg !1606

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1610
  br i1 %46, label %94, label %47, !dbg !1613

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1610, !tbaa !833
  br label %94, !dbg !1610

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.66, i64 0, i64 0), i32 %28), !dbg !1614
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1527, metadata !691), !dbg !1591
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), i32 %28), !dbg !1618
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1528, metadata !691), !dbg !1592
  br label %51, !dbg !1619

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1528, metadata !691), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1527, metadata !691), !dbg !1591
  %54 = and i8 %36, 1, !dbg !1620
  %55 = icmp eq i8 %54, 0, !dbg !1620
  br i1 %55, label %56, label %72, !dbg !1622

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1532, metadata !691), !dbg !1595
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1532, metadata !691), !dbg !1595
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1530, metadata !691), !dbg !1593
  %57 = load i8, i8* %52, align 1, !dbg !1623, !tbaa !833
  %58 = icmp eq i8 %57, 0, !dbg !1626
  br i1 %58, label %72, label %59, !dbg !1626

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1627

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1530, metadata !691), !dbg !1593
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1532, metadata !691), !dbg !1595
  %64 = icmp ult i64 %63, %40, !dbg !1627
  br i1 %64, label %65, label %67, !dbg !1630

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1627
  store i8 %61, i8* %66, align 1, !dbg !1627, !tbaa !833
  br label %67, !dbg !1627

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1630
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1530, metadata !691), !dbg !1593
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1631
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1532, metadata !691), !dbg !1595
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1532, metadata !691), !dbg !1595
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1530, metadata !691), !dbg !1593
  %70 = load i8, i8* %69, align 1, !dbg !1623, !tbaa !833
  %71 = icmp eq i8 %70, 0, !dbg !1626
  br i1 %71, label %72, label %60, !dbg !1626, !llvm.loop !1632

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1530, metadata !691), !dbg !1593
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1534, metadata !691), !dbg !1597
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1532, metadata !691), !dbg !1595
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1533, metadata !691), !dbg !1596
  br label %94, !dbg !1635

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1534, metadata !691), !dbg !1597
  br label %76, !dbg !1636

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1534, metadata !691), !dbg !1597
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1536, metadata !691), !dbg !1600
  br label %78, !dbg !1637

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1536, metadata !691), !dbg !1600
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1534, metadata !691), !dbg !1597
  %81 = and i8 %80, 1, !dbg !1638
  %82 = icmp eq i8 %81, 0, !dbg !1638
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1534, metadata !691), !dbg !1597
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1640
  br label %84, !dbg !1640

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1536, metadata !691), !dbg !1600
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1534, metadata !691), !dbg !1597
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1524, metadata !691), !dbg !1588
  %87 = and i8 %86, 1, !dbg !1641
  %88 = icmp eq i8 %87, 0, !dbg !1641
  br i1 %88, label %89, label %94, !dbg !1643

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1644
  br i1 %90, label %94, label %91, !dbg !1647

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1644, !tbaa !833
  br label %94, !dbg !1644

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1536, metadata !691), !dbg !1600
  br label %94, !dbg !1648

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1649
  unreachable, !dbg !1649

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1536, metadata !691), !dbg !1600
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1534, metadata !691), !dbg !1597
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1533, metadata !691), !dbg !1596
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1532, metadata !691), !dbg !1595
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1530, metadata !691), !dbg !1593
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1528, metadata !691), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1527, metadata !691), !dbg !1591
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1524, metadata !691), !dbg !1588
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1529, metadata !691), !dbg !1650
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
  br label %122, !dbg !1651

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1521, metadata !691), !dbg !1585
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1539, metadata !691), !dbg !1603
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1538, metadata !691), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1537, metadata !691), !dbg !1601
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1523, metadata !691), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1531, metadata !691), !dbg !1594
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1530, metadata !691), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1529, metadata !691), !dbg !1650
  %131 = icmp eq i64 %126, -1, !dbg !1652
  br i1 %131, label %134, label %132, !dbg !1653

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1654
  br i1 %133, label %590, label %138, !dbg !1655

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1656
  %136 = load i8, i8* %135, align 1, !dbg !1656, !tbaa !833
  %137 = icmp eq i8 %136, 0, !dbg !1657
  br i1 %137, label %590, label %138, !dbg !1655

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1545, metadata !691), !dbg !1658
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1546, metadata !691), !dbg !1659
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1547, metadata !691), !dbg !1660
  br i1 %108, label %139, label %154, !dbg !1661

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1663
  %141 = and i1 %109, %131, !dbg !1664
  br i1 %141, label %142, label %144, !dbg !1664

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1665
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1523, metadata !691), !dbg !1587
  br label %144, !dbg !1666

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1523, metadata !691), !dbg !1587
  %146 = icmp ugt i64 %140, %145, !dbg !1667
  br i1 %146, label %154, label %147, !dbg !1668

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1669
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1670
  %150 = icmp ne i32 %149, 0, !dbg !1671
  %151 = or i1 %150, %111, !dbg !1672
  %152 = xor i1 %150, true, !dbg !1672
  %153 = zext i1 %152 to i8, !dbg !1672
  br i1 %151, label %154, label %635, !dbg !1672

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1545, metadata !691), !dbg !1658
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1523, metadata !691), !dbg !1587
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1673
  %158 = load i8, i8* %157, align 1, !dbg !1673, !tbaa !833
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1540, metadata !691), !dbg !1674
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
  ], !dbg !1675

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1676

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1677

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1546, metadata !691), !dbg !1659
  %162 = and i8 %127, 1, !dbg !1681
  %163 = icmp eq i8 %162, 0, !dbg !1681
  %164 = and i1 %113, %163, !dbg !1681
  br i1 %164, label %165, label %181, !dbg !1681

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1683
  br i1 %166, label %167, label %169, !dbg !1687

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1683
  store i8 39, i8* %168, align 1, !dbg !1683, !tbaa !833
  br label %169, !dbg !1683

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1687
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1530, metadata !691), !dbg !1593
  %171 = icmp ult i64 %170, %130, !dbg !1688
  br i1 %171, label %172, label %174, !dbg !1691

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1688
  store i8 36, i8* %173, align 1, !dbg !1688, !tbaa !833
  br label %174, !dbg !1688

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1691
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1530, metadata !691), !dbg !1593
  %176 = icmp ult i64 %175, %130, !dbg !1692
  br i1 %176, label %177, label %179, !dbg !1695

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1692
  store i8 39, i8* %178, align 1, !dbg !1692, !tbaa !833
  br label %179, !dbg !1692

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1695
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1530, metadata !691), !dbg !1593
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1537, metadata !691), !dbg !1601
  br label %181, !dbg !1696

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1537, metadata !691), !dbg !1601
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1530, metadata !691), !dbg !1593
  %184 = icmp ult i64 %182, %130, !dbg !1697
  br i1 %184, label %185, label %187, !dbg !1700

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1697
  store i8 92, i8* %186, align 1, !dbg !1697, !tbaa !833
  br label %187, !dbg !1697

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1700
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1530, metadata !691), !dbg !1593
  br i1 %105, label %189, label %470, !dbg !1701

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1703
  %191 = icmp ult i64 %190, %155, !dbg !1704
  br i1 %191, label %192, label %470, !dbg !1705

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1706
  %194 = load i8, i8* %193, align 1, !dbg !1706, !tbaa !833
  %195 = add i8 %194, -48, !dbg !1707
  %196 = icmp ult i8 %195, 10, !dbg !1707
  br i1 %196, label %197, label %470, !dbg !1707

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1708
  br i1 %198, label %199, label %201, !dbg !1712

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1708
  store i8 48, i8* %200, align 1, !dbg !1708, !tbaa !833
  br label %201, !dbg !1708

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1712
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1530, metadata !691), !dbg !1593
  %203 = icmp ult i64 %202, %130, !dbg !1713
  br i1 %203, label %204, label %206, !dbg !1716

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1713
  store i8 48, i8* %205, align 1, !dbg !1713, !tbaa !833
  br label %206, !dbg !1713

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1530, metadata !691), !dbg !1593
  br label %470, !dbg !1717

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1718

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1719

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1720

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1722

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1724
  %214 = icmp ult i64 %213, %155, !dbg !1725
  br i1 %214, label %215, label %470, !dbg !1726

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1727
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1728
  %218 = load i8, i8* %217, align 1, !dbg !1728, !tbaa !833
  %219 = icmp eq i8 %218, 63, !dbg !1729
  br i1 %219, label %220, label %470, !dbg !1730

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1731
  %222 = load i8, i8* %221, align 1, !dbg !1731, !tbaa !833
  %223 = sext i8 %222 to i32, !dbg !1731
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
  ], !dbg !1732

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1733

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1540, metadata !691), !dbg !1674
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1529, metadata !691), !dbg !1650
  %226 = icmp ult i64 %124, %130, !dbg !1735
  br i1 %226, label %227, label %229, !dbg !1738

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1735
  store i8 63, i8* %228, align 1, !dbg !1735, !tbaa !833
  br label %229, !dbg !1735

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1738
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1530, metadata !691), !dbg !1593
  %231 = icmp ult i64 %230, %130, !dbg !1739
  br i1 %231, label %232, label %234, !dbg !1742

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1739
  store i8 34, i8* %233, align 1, !dbg !1739, !tbaa !833
  br label %234, !dbg !1739

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1742
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1530, metadata !691), !dbg !1593
  %236 = icmp ult i64 %235, %130, !dbg !1743
  br i1 %236, label %237, label %239, !dbg !1746

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1743
  store i8 34, i8* %238, align 1, !dbg !1743, !tbaa !833
  br label %239, !dbg !1743

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1746
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1530, metadata !691), !dbg !1593
  %241 = icmp ult i64 %240, %130, !dbg !1747
  br i1 %241, label %242, label %244, !dbg !1750

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1747
  store i8 63, i8* %243, align 1, !dbg !1747, !tbaa !833
  br label %244, !dbg !1747

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1750
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1530, metadata !691), !dbg !1593
  br label %470, !dbg !1751

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1544, metadata !691), !dbg !1752
  br label %256, !dbg !1753

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1544, metadata !691), !dbg !1752
  br label %256, !dbg !1754

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1544, metadata !691), !dbg !1752
  br label %254, !dbg !1755

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1544, metadata !691), !dbg !1752
  br label %254, !dbg !1756

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1544, metadata !691), !dbg !1752
  br label %256, !dbg !1757

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1544, metadata !691), !dbg !1752
  br i1 %113, label %252, label %253, !dbg !1758

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1759

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1762

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1544, metadata !691), !dbg !1752
  br i1 %117, label %256, label %635, !dbg !1764

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1544, metadata !691), !dbg !1752
  br i1 %104, label %497, label %470, !dbg !1766

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1767
  br i1 %259, label %260, label %265, !dbg !1769

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1770, !tbaa !833
  %262 = icmp ne i8 %261, 0, !dbg !1771
  %263 = icmp ne i64 %123, 0, !dbg !1772
  %264 = or i1 %263, %262, !dbg !1774
  br i1 %264, label %470, label %271, !dbg !1774

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1775
  %267 = icmp ne i64 %123, 0, !dbg !1772
  %268 = or i1 %267, %266, !dbg !1769
  br i1 %268, label %470, label %271, !dbg !1769

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1772
  br i1 %270, label %271, label %470, !dbg !1776

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1547, metadata !691), !dbg !1660
  br label %272, !dbg !1777

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1547, metadata !691), !dbg !1660
  br i1 %117, label %470, label %635, !dbg !1778

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1538, metadata !691), !dbg !1602
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1547, metadata !691), !dbg !1660
  br i1 %113, label %275, label %470, !dbg !1780

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1781

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1784
  %278 = icmp ne i64 %125, 0, !dbg !1786
  %279 = or i1 %278, %277, !dbg !1787
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1531, metadata !691), !dbg !1594
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1521, metadata !691), !dbg !1585
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1787
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1787
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1521, metadata !691), !dbg !1585
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1531, metadata !691), !dbg !1594
  %282 = icmp ult i64 %124, %281, !dbg !1788
  br i1 %282, label %283, label %285, !dbg !1791

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1788
  store i8 39, i8* %284, align 1, !dbg !1788, !tbaa !833
  br label %285, !dbg !1788

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1791
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1530, metadata !691), !dbg !1593
  %287 = icmp ult i64 %286, %281, !dbg !1792
  br i1 %287, label %288, label %290, !dbg !1795

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1792
  store i8 92, i8* %289, align 1, !dbg !1792, !tbaa !833
  br label %290, !dbg !1792

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1795
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1530, metadata !691), !dbg !1593
  %292 = icmp ult i64 %291, %281, !dbg !1796
  br i1 %292, label %293, label %295, !dbg !1799

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1796
  store i8 39, i8* %294, align 1, !dbg !1796, !tbaa !833
  br label %295, !dbg !1796

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1799
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1530, metadata !691), !dbg !1593
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1537, metadata !691), !dbg !1601
  br label %470, !dbg !1800

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1801

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1548, metadata !691), !dbg !1802
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1803
  %300 = load i16*, i16** %299, align 8, !dbg !1803, !tbaa !698
  %301 = zext i8 %158 to i64, !dbg !1803
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1803
  %303 = load i16, i16* %302, align 2, !dbg !1803, !tbaa !1805
  %304 = lshr i16 %303, 14, !dbg !1806
  %305 = trunc i16 %304 to i8, !dbg !1806
  %306 = and i8 %305, 1, !dbg !1806
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1551, metadata !691), !dbg !1807
  br label %362, !dbg !1808

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #12, !dbg !1809
  store i64 0, i64* %10, align 8, !dbg !1810
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1548, metadata !691), !dbg !1802
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1551, metadata !691), !dbg !1807
  %308 = icmp eq i64 %155, -1, !dbg !1811
  br i1 %308, label %309, label %311, !dbg !1813

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1523, metadata !691), !dbg !1587
  br label %311, !dbg !1815

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1523, metadata !691), !dbg !1587
  br label %313, !dbg !1816, !llvm.loop !1817

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1551, metadata !691), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1548, metadata !691), !dbg !1802
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #12, !dbg !1819
  %316 = add i64 %314, %123, !dbg !1820
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1821
  %318 = sub i64 %312, %316, !dbg !1822
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1552, metadata !691), !dbg !1823
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1570, metadata !691), !dbg !1824
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #12, !dbg !1825
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1573, metadata !691), !dbg !1826
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1827

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1551, metadata !691), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1548, metadata !691), !dbg !1802
  %321 = icmp ugt i64 %312, %316, !dbg !1828
  br i1 %321, label %322, label %347, !dbg !1830

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1831

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1548, metadata !691), !dbg !1802
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1831
  %327 = load i8, i8* %326, align 1, !dbg !1831, !tbaa !833
  %328 = icmp eq i8 %327, 0, !dbg !1830
  br i1 %328, label %347, label %329, !dbg !1832

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1833
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1548, metadata !691), !dbg !1802
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1548, metadata !691), !dbg !1802
  %331 = add i64 %330, %123, !dbg !1834
  %332 = icmp ult i64 %331, %312, !dbg !1828
  br i1 %332, label %323, label %347, !dbg !1830, !llvm.loop !1835

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1836
  %335 = and i1 %115, %334, !dbg !1839
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1574, metadata !691), !dbg !1840
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1574, metadata !691), !dbg !1840
  br i1 %335, label %336, label %350, !dbg !1839

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1841

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1574, metadata !691), !dbg !1840
  %339 = add i64 %338, %316, !dbg !1841
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1842
  %341 = load i8, i8* %340, align 1, !dbg !1842, !tbaa !833
  %342 = sext i8 %341 to i32, !dbg !1842
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1843

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1844
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1574, metadata !691), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1574, metadata !691), !dbg !1840
  %345 = icmp ult i64 %344, %319, !dbg !1836
  br i1 %345, label %337, label %350, !dbg !1845, !llvm.loop !1846

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1848

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1551, metadata !691), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1548, metadata !691), !dbg !1802
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !1848
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1849, !tbaa !807
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1570, metadata !691), !dbg !1824
  %352 = call i32 @iswprint(i32 %351) #12, !dbg !1851
  %353 = icmp eq i32 %352, 0, !dbg !1851
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1551, metadata !691), !dbg !1807
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1852
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1551, metadata !691), !dbg !1807
  %355 = add i64 %319, %314, !dbg !1853
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1548, metadata !691), !dbg !1802
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1551, metadata !691), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1548, metadata !691), !dbg !1802
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !1848
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1552, metadata !691), !dbg !1823
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1854
  %357 = icmp eq i32 %356, 0, !dbg !1855
  br i1 %357, label %313, label %358, !dbg !1856, !llvm.loop !1817

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #12, !dbg !1857
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1551, metadata !691), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1548, metadata !691), !dbg !1802
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !1848
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #12, !dbg !1857
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1551, metadata !691), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1548, metadata !691), !dbg !1802
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1523, metadata !691), !dbg !1587
  %366 = and i8 %365, 1, !dbg !1858
  %367 = icmp ne i8 %366, 0, !dbg !1858
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1547, metadata !691), !dbg !1660
  %368 = icmp ult i64 %364, 2, !dbg !1859
  %369 = or i1 %367, %112, !dbg !1860
  %370 = and i1 %368, %369, !dbg !1861
  br i1 %370, label %470, label %371, !dbg !1861

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1862
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1581, metadata !691), !dbg !1863
  br label %373, !dbg !1864

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1546, metadata !691), !dbg !1659
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1545, metadata !691), !dbg !1658
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1540, metadata !691), !dbg !1674
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1537, metadata !691), !dbg !1601
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1530, metadata !691), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1529, metadata !691), !dbg !1650
  br i1 %369, label %426, label %380, !dbg !1865

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1870

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1546, metadata !691), !dbg !1659
  %382 = and i8 %376, 1, !dbg !1873
  %383 = icmp eq i8 %382, 0, !dbg !1873
  %384 = and i1 %113, %383, !dbg !1873
  br i1 %384, label %385, label %401, !dbg !1873

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1875
  br i1 %386, label %387, label %389, !dbg !1879

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1875
  store i8 39, i8* %388, align 1, !dbg !1875, !tbaa !833
  br label %389, !dbg !1875

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1879
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1530, metadata !691), !dbg !1593
  %391 = icmp ult i64 %390, %130, !dbg !1880
  br i1 %391, label %392, label %394, !dbg !1883

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1880
  store i8 36, i8* %393, align 1, !dbg !1880, !tbaa !833
  br label %394, !dbg !1880

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1883
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1530, metadata !691), !dbg !1593
  %396 = icmp ult i64 %395, %130, !dbg !1884
  br i1 %396, label %397, label %399, !dbg !1887

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1884
  store i8 39, i8* %398, align 1, !dbg !1884, !tbaa !833
  br label %399, !dbg !1884

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1887
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1530, metadata !691), !dbg !1593
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1537, metadata !691), !dbg !1601
  br label %401, !dbg !1888

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1537, metadata !691), !dbg !1601
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1530, metadata !691), !dbg !1593
  %404 = icmp ult i64 %402, %130, !dbg !1889
  br i1 %404, label %405, label %407, !dbg !1892

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1889
  store i8 92, i8* %406, align 1, !dbg !1889, !tbaa !833
  br label %407, !dbg !1889

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1892
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1530, metadata !691), !dbg !1593
  %409 = icmp ult i64 %408, %130, !dbg !1893
  br i1 %409, label %410, label %414, !dbg !1896

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1893
  %412 = or i8 %411, 48, !dbg !1893
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1893
  store i8 %412, i8* %413, align 1, !dbg !1893, !tbaa !833
  br label %414, !dbg !1893

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1896
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1530, metadata !691), !dbg !1593
  %416 = icmp ult i64 %415, %130, !dbg !1897
  br i1 %416, label %417, label %422, !dbg !1900

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1897
  %419 = and i8 %418, 7, !dbg !1897
  %420 = or i8 %419, 48, !dbg !1897
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1897
  store i8 %420, i8* %421, align 1, !dbg !1897, !tbaa !833
  br label %422, !dbg !1897

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1900
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1530, metadata !691), !dbg !1593
  %424 = and i8 %377, 7, !dbg !1901
  %425 = or i8 %424, 48, !dbg !1902
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1540, metadata !691), !dbg !1674
  br label %435, !dbg !1903

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1904
  %428 = icmp eq i8 %427, 0, !dbg !1904
  br i1 %428, label %435, label %429, !dbg !1906

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1907
  br i1 %430, label %431, label %433, !dbg !1911

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1907
  store i8 92, i8* %432, align 1, !dbg !1907, !tbaa !833
  br label %433, !dbg !1907

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1911
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1530, metadata !691), !dbg !1593
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1545, metadata !691), !dbg !1658
  br label %435, !dbg !1912

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1546, metadata !691), !dbg !1659
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1545, metadata !691), !dbg !1658
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1540, metadata !691), !dbg !1674
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1537, metadata !691), !dbg !1601
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1530, metadata !691), !dbg !1593
  %441 = add i64 %374, 1, !dbg !1913
  %442 = icmp ugt i64 %372, %441, !dbg !1915
  br i1 %442, label %443, label %535, !dbg !1916

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1917
  %445 = icmp ne i8 %444, 0, !dbg !1917
  %446 = and i8 %440, 1, !dbg !1917
  %447 = icmp eq i8 %446, 0, !dbg !1917
  %448 = and i1 %445, %447, !dbg !1917
  br i1 %448, label %449, label %460, !dbg !1917

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1920
  br i1 %450, label %451, label %453, !dbg !1924

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1920
  store i8 39, i8* %452, align 1, !dbg !1920, !tbaa !833
  br label %453, !dbg !1920

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1924
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1530, metadata !691), !dbg !1593
  %455 = icmp ult i64 %454, %130, !dbg !1925
  br i1 %455, label %456, label %458, !dbg !1928

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1925
  store i8 39, i8* %457, align 1, !dbg !1925, !tbaa !833
  br label %458, !dbg !1925

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1928
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1530, metadata !691), !dbg !1593
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1537, metadata !691), !dbg !1601
  br label %460, !dbg !1929

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1537, metadata !691), !dbg !1601
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1530, metadata !691), !dbg !1593
  %463 = icmp ult i64 %461, %130, !dbg !1930
  br i1 %463, label %464, label %466, !dbg !1933

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1930
  store i8 %438, i8* %465, align 1, !dbg !1930, !tbaa !833
  br label %466, !dbg !1930

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1933
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1530, metadata !691), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1529, metadata !691), !dbg !1650
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1934
  %469 = load i8, i8* %468, align 1, !dbg !1934, !tbaa !833
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1540, metadata !691), !dbg !1674
  br label %373, !dbg !1935, !llvm.loop !1936

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1521, metadata !691), !dbg !1585
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1547, metadata !691), !dbg !1660
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1546, metadata !691), !dbg !1659
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1545, metadata !691), !dbg !1658
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1540, metadata !691), !dbg !1674
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1538, metadata !691), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1537, metadata !691), !dbg !1601
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1523, metadata !691), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1531, metadata !691), !dbg !1594
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1530, metadata !691), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1529, metadata !691), !dbg !1650
  br i1 %106, label %482, label %481, !dbg !1939

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1941

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1942

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1943
  %485 = zext i8 %484 to i64, !dbg !1943
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1944
  %487 = load i32, i32* %486, align 4, !dbg !1944, !tbaa !807
  %488 = and i8 %477, 31, !dbg !1945
  %489 = zext i8 %488 to i32, !dbg !1946
  %490 = shl i32 1, %489, !dbg !1947
  %491 = and i32 %487, %490, !dbg !1947
  %492 = icmp eq i32 %491, 0, !dbg !1947
  %493 = icmp eq i8 %156, 0, !dbg !1948
  %494 = and i1 %493, %492, !dbg !1949
  br i1 %494, label %535, label %497, !dbg !1949

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1948
  br i1 %496, label %535, label %497, !dbg !1950

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1521, metadata !691), !dbg !1585
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1547, metadata !691), !dbg !1660
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1540, metadata !691), !dbg !1674
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1538, metadata !691), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1537, metadata !691), !dbg !1601
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1523, metadata !691), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1531, metadata !691), !dbg !1594
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1530, metadata !691), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1529, metadata !691), !dbg !1650
  br i1 %111, label %507, label %635, !dbg !1951

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1546, metadata !691), !dbg !1659
  %508 = and i8 %502, 1, !dbg !1953
  %509 = icmp eq i8 %508, 0, !dbg !1953
  %510 = and i1 %113, %509, !dbg !1953
  br i1 %510, label %511, label %527, !dbg !1953

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1955
  br i1 %512, label %513, label %515, !dbg !1959

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1955
  store i8 39, i8* %514, align 1, !dbg !1955, !tbaa !833
  br label %515, !dbg !1955

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1959
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1530, metadata !691), !dbg !1593
  %517 = icmp ult i64 %516, %506, !dbg !1960
  br i1 %517, label %518, label %520, !dbg !1963

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1960
  store i8 36, i8* %519, align 1, !dbg !1960, !tbaa !833
  br label %520, !dbg !1960

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1963
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1530, metadata !691), !dbg !1593
  %522 = icmp ult i64 %521, %506, !dbg !1964
  br i1 %522, label %523, label %525, !dbg !1967

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1964
  store i8 39, i8* %524, align 1, !dbg !1964, !tbaa !833
  br label %525, !dbg !1964

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1967
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1530, metadata !691), !dbg !1593
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1537, metadata !691), !dbg !1601
  br label %527, !dbg !1968

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1537, metadata !691), !dbg !1601
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1530, metadata !691), !dbg !1593
  %530 = icmp ult i64 %528, %506, !dbg !1969
  br i1 %530, label %531, label %533, !dbg !1972

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1969
  store i8 92, i8* %532, align 1, !dbg !1969, !tbaa !833
  br label %533, !dbg !1969

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1972
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1530, metadata !691), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1521, metadata !691), !dbg !1585
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1547, metadata !691), !dbg !1660
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1546, metadata !691), !dbg !1659
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1540, metadata !691), !dbg !1674
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1538, metadata !691), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1537, metadata !691), !dbg !1601
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1523, metadata !691), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1531, metadata !691), !dbg !1594
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1530, metadata !691), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1529, metadata !691), !dbg !1650
  br label %562, !dbg !1973

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1521, metadata !691), !dbg !1585
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1547, metadata !691), !dbg !1660
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1546, metadata !691), !dbg !1659
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1540, metadata !691), !dbg !1674
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1538, metadata !691), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1537, metadata !691), !dbg !1601
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1523, metadata !691), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1531, metadata !691), !dbg !1594
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1530, metadata !691), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1529, metadata !691), !dbg !1650
  %546 = and i8 %540, 1, !dbg !1973
  %547 = icmp ne i8 %546, 0, !dbg !1973
  %548 = and i8 %543, 1, !dbg !1973
  %549 = icmp eq i8 %548, 0, !dbg !1973
  %550 = and i1 %547, %549, !dbg !1973
  br i1 %550, label %551, label %562, !dbg !1973

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !1976
  br i1 %552, label %553, label %555, !dbg !1980

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !1976
  store i8 39, i8* %554, align 1, !dbg !1976, !tbaa !833
  br label %555, !dbg !1976

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1530, metadata !691), !dbg !1593
  %557 = icmp ult i64 %556, %545, !dbg !1981
  br i1 %557, label %558, label %560, !dbg !1984

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1981
  store i8 39, i8* %559, align 1, !dbg !1981, !tbaa !833
  br label %560, !dbg !1981

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1984
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1530, metadata !691), !dbg !1593
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1537, metadata !691), !dbg !1601
  br label %562, !dbg !1985

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1537, metadata !691), !dbg !1601
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1530, metadata !691), !dbg !1593
  %572 = icmp ult i64 %570, %563, !dbg !1986
  br i1 %572, label %573, label %575, !dbg !1989

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1986
  store i8 %565, i8* %574, align 1, !dbg !1986, !tbaa !833
  br label %575, !dbg !1986

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1989
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1530, metadata !691), !dbg !1593
  %577 = and i8 %564, 1, !dbg !1990
  %578 = icmp eq i8 %577, 0, !dbg !1990
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1539, metadata !691), !dbg !1603
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1992
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1539, metadata !691), !dbg !1603
  br label %580, !dbg !1993

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1521, metadata !691), !dbg !1585
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1539, metadata !691), !dbg !1603
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1538, metadata !691), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1537, metadata !691), !dbg !1601
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1523, metadata !691), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1531, metadata !691), !dbg !1594
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1530, metadata !691), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1529, metadata !691), !dbg !1650
  %589 = add i64 %581, 1, !dbg !1994
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1529, metadata !691), !dbg !1650
  br label %122, !dbg !1995, !llvm.loop !1996

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !1998
  %593 = and i1 %113, %592, !dbg !2000
  %594 = xor i1 %593, true, !dbg !2000
  %595 = or i1 %111, %594, !dbg !2000
  br i1 %595, label %596, label %635, !dbg !2000

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !2001
  %598 = xor i1 %597, true, !dbg !2001
  %599 = and i8 %128, 1, !dbg !2003
  %600 = icmp eq i8 %599, 0, !dbg !2003
  %601 = or i1 %600, %598, !dbg !2001
  br i1 %601, label %611, label %602, !dbg !2001

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !2004
  %604 = icmp eq i8 %603, 0, !dbg !2004
  br i1 %604, label %607, label %605, !dbg !2007

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !2008
  br label %645, !dbg !2009

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !2010
  %609 = icmp ne i64 %125, 0, !dbg !2012
  %610 = and i1 %609, %608, !dbg !2013
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1521, metadata !691), !dbg !1585
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1530, metadata !691), !dbg !1593
  br i1 %610, label %27, label %611, !dbg !2013

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !2014
  %613 = and i1 %612, %111, !dbg !2016
  br i1 %613, label %614, label %630, !dbg !2016

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1532, metadata !691), !dbg !1595
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1530, metadata !691), !dbg !1593
  %615 = load i8, i8* %99, align 1, !dbg !2017, !tbaa !833
  %616 = icmp eq i8 %615, 0, !dbg !2020
  br i1 %616, label %630, label %617, !dbg !2020

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !2021

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1530, metadata !691), !dbg !1593
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1532, metadata !691), !dbg !1595
  %622 = icmp ult i64 %621, %130, !dbg !2021
  br i1 %622, label %623, label %625, !dbg !2024

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2021
  store i8 %619, i8* %624, align 1, !dbg !2021, !tbaa !833
  br label %625, !dbg !2021

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !2024
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1530, metadata !691), !dbg !1593
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !2025
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1532, metadata !691), !dbg !1595
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1532, metadata !691), !dbg !1595
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1530, metadata !691), !dbg !1593
  %628 = load i8, i8* %627, align 1, !dbg !2017, !tbaa !833
  %629 = icmp eq i8 %628, 0, !dbg !2020
  br i1 %629, label %630, label %618, !dbg !2020, !llvm.loop !2026

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1530, metadata !691), !dbg !1593
  %632 = icmp ult i64 %631, %130, !dbg !2028
  br i1 %632, label %633, label %645, !dbg !2030

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !2031
  store i8 0, i8* %634, align 1, !dbg !2032, !tbaa !833
  br label %645, !dbg !2031

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1521, metadata !691), !dbg !1585
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1523, metadata !691), !dbg !1587
  %639 = icmp ne i32 %636, 2, !dbg !2033
  %640 = icmp eq i8 %103, 0, !dbg !2035
  %641 = or i1 %639, %640, !dbg !2036
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1524, metadata !691), !dbg !1588
  %642 = select i1 %641, i32 %636, i32 4, !dbg !2036
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1524, metadata !691), !dbg !1588
  %643 = and i32 %5, -3, !dbg !2037
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !2038
  br label %645, !dbg !2039

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !2040
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2041 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2045, metadata !691), !dbg !2049
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2046, metadata !691), !dbg !2050
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !2051
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2047, metadata !691), !dbg !2052
  %4 = icmp eq i8* %3, %0, !dbg !2053
  br i1 %4, label %5, label %75, !dbg !2055

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !2056
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2048, metadata !691), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2058, metadata !691), !dbg !2074
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2072, metadata !691), !dbg !2077
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2073, metadata !691), !dbg !2078
  %7 = load i8, i8* %6, align 1, !dbg !2079, !tbaa !833
  %8 = sext i8 %7 to i32, !dbg !2079
  %9 = and i32 %8, -33, !dbg !2079
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2079

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2081, metadata !691), !dbg !2095
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2093, metadata !691), !dbg !2099
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2094, metadata !691), !dbg !2100
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2101
  %12 = load i8, i8* %11, align 1, !dbg !2101, !tbaa !833
  %13 = sext i8 %12 to i32, !dbg !2101
  %14 = and i32 %13, -33, !dbg !2101
  %15 = icmp eq i32 %14, 84, !dbg !2101
  br i1 %15, label %16, label %72, !dbg !2101

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2103, metadata !691), !dbg !2116
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2114, metadata !691), !dbg !2120
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2115, metadata !691), !dbg !2121
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2122
  %18 = load i8, i8* %17, align 1, !dbg !2122, !tbaa !833
  %19 = sext i8 %18 to i32, !dbg !2122
  %20 = and i32 %19, -33, !dbg !2122
  %21 = icmp eq i32 %20, 70, !dbg !2122
  br i1 %21, label %22, label %72, !dbg !2122

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2124, metadata !691), !dbg !2136
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2134, metadata !691), !dbg !2140
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2135, metadata !691), !dbg !2141
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2142
  %24 = load i8, i8* %23, align 1, !dbg !2142, !tbaa !833
  %25 = icmp eq i8 %24, 45, !dbg !2142
  br i1 %25, label %26, label %72, !dbg !2144

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2145, metadata !691), !dbg !2156
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2154, metadata !691), !dbg !2160
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2155, metadata !691), !dbg !2161
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2162
  %28 = load i8, i8* %27, align 1, !dbg !2162, !tbaa !833
  %29 = icmp eq i8 %28, 56, !dbg !2162
  br i1 %29, label %30, label %72, !dbg !2164

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2165, metadata !691), !dbg !2175
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2173, metadata !691), !dbg !2179
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2174, metadata !691), !dbg !2180
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2181
  %32 = load i8, i8* %31, align 1, !dbg !2181, !tbaa !833
  %33 = icmp eq i8 %32, 0, !dbg !2181
  br i1 %33, label %34, label %72, !dbg !2183

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2184, !tbaa !833
  %36 = icmp eq i8 %35, 96, !dbg !2185
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.69, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.70, i64 0, i64 0), !dbg !2184
  br label %75, !dbg !2186

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2081, metadata !691), !dbg !2187
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2093, metadata !691), !dbg !2191
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2094, metadata !691), !dbg !2192
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2193
  %40 = load i8, i8* %39, align 1, !dbg !2193, !tbaa !833
  %41 = sext i8 %40 to i32, !dbg !2193
  %42 = and i32 %41, -33, !dbg !2193
  %43 = icmp eq i32 %42, 66, !dbg !2193
  br i1 %43, label %44, label %72, !dbg !2193

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2103, metadata !691), !dbg !2194
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2114, metadata !691), !dbg !2196
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2115, metadata !691), !dbg !2197
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2198
  %46 = load i8, i8* %45, align 1, !dbg !2198, !tbaa !833
  %47 = icmp eq i8 %46, 49, !dbg !2198
  br i1 %47, label %48, label %72, !dbg !2199

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2124, metadata !691), !dbg !2200
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2134, metadata !691), !dbg !2202
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2135, metadata !691), !dbg !2203
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2204
  %50 = load i8, i8* %49, align 1, !dbg !2204, !tbaa !833
  %51 = icmp eq i8 %50, 56, !dbg !2204
  br i1 %51, label %52, label %72, !dbg !2205

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2145, metadata !691), !dbg !2206
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2154, metadata !691), !dbg !2208
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2155, metadata !691), !dbg !2209
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2210
  %54 = load i8, i8* %53, align 1, !dbg !2210, !tbaa !833
  %55 = icmp eq i8 %54, 48, !dbg !2210
  br i1 %55, label %56, label %72, !dbg !2211

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2165, metadata !691), !dbg !2212
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2173, metadata !691), !dbg !2214
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2174, metadata !691), !dbg !2215
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2216
  %58 = load i8, i8* %57, align 1, !dbg !2216, !tbaa !833
  %59 = icmp eq i8 %58, 51, !dbg !2216
  br i1 %59, label %60, label %72, !dbg !2217

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2218, metadata !691), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2225, metadata !691), !dbg !2231
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2226, metadata !691), !dbg !2232
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2233
  %62 = load i8, i8* %61, align 1, !dbg !2233, !tbaa !833
  %63 = icmp eq i8 %62, 48, !dbg !2233
  br i1 %63, label %64, label %72, !dbg !2235

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2236, metadata !691), !dbg !2244
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2242, metadata !691), !dbg !2248
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2243, metadata !691), !dbg !2249
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2250
  %66 = load i8, i8* %65, align 1, !dbg !2250, !tbaa !833
  %67 = icmp eq i8 %66, 0, !dbg !2250
  br i1 %67, label %68, label %72, !dbg !2252

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2253, !tbaa !833
  %70 = icmp eq i8 %69, 96, !dbg !2254
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.71, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.72, i64 0, i64 0), !dbg !2253
  br label %75, !dbg !2255

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2256
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), !dbg !2257
  br label %75, !dbg !2258

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2259
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2260 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2264, metadata !691), !dbg !2267
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2265, metadata !691), !dbg !2268
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2266, metadata !691), !dbg !2269
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2270, metadata !691) #12, !dbg !2283
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2275, metadata !691) #12, !dbg !2285
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2276, metadata !691) #12, !dbg !2286
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2277, metadata !691) #12, !dbg !2287
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2288
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2288
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2278, metadata !691) #12, !dbg !2289
  %6 = tail call i32* @__errno_location() #17, !dbg !2290
  %7 = load i32, i32* %6, align 4, !dbg !2290, !tbaa !807
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2279, metadata !691) #12, !dbg !2291
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2292
  %9 = load i32, i32* %8, align 4, !dbg !2292, !tbaa !1453
  %10 = or i32 %9, 1, !dbg !2293
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2280, metadata !691) #12, !dbg !2294
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2295
  %12 = load i32, i32* %11, align 8, !dbg !2295, !tbaa !1393
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2296
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2297
  %15 = load i8*, i8** %14, align 8, !dbg !2297, !tbaa !1479
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2298
  %17 = load i8*, i8** %16, align 8, !dbg !2298, !tbaa !1482
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #12, !dbg !2299
  %19 = add i64 %18, 1, !dbg !2300
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2281, metadata !691) #12, !dbg !2301
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2302, metadata !691) #12, !dbg !2305
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !2307
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2282, metadata !691) #12, !dbg !2308
  %21 = load i32, i32* %11, align 8, !dbg !2309, !tbaa !1393
  %22 = load i8*, i8** %14, align 8, !dbg !2310, !tbaa !1479
  %23 = load i8*, i8** %16, align 8, !dbg !2311, !tbaa !1482
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #12, !dbg !2312
  store i32 %7, i32* %6, align 4, !dbg !2313, !tbaa !807
  ret i8* %20, !dbg !2314
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2271 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2270, metadata !691), !dbg !2315
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2275, metadata !691), !dbg !2316
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2276, metadata !691), !dbg !2317
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2277, metadata !691), !dbg !2318
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2319
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2319
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2278, metadata !691), !dbg !2320
  %7 = tail call i32* @__errno_location() #17, !dbg !2321
  %8 = load i32, i32* %7, align 4, !dbg !2321, !tbaa !807
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2279, metadata !691), !dbg !2322
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2323
  %10 = load i32, i32* %9, align 4, !dbg !2323, !tbaa !1453
  %11 = icmp ne i64* %2, null, !dbg !2324
  %12 = xor i1 %11, true, !dbg !2324
  %13 = zext i1 %12 to i32, !dbg !2324
  %14 = or i32 %10, %13, !dbg !2325
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2280, metadata !691), !dbg !2326
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2327
  %16 = load i32, i32* %15, align 8, !dbg !2327, !tbaa !1393
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2328
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2329
  %19 = load i8*, i8** %18, align 8, !dbg !2329, !tbaa !1479
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2330
  %21 = load i8*, i8** %20, align 8, !dbg !2330, !tbaa !1482
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2331
  %23 = add i64 %22, 1, !dbg !2332
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2281, metadata !691), !dbg !2333
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2302, metadata !691) #12, !dbg !2334
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !2336
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2282, metadata !691), !dbg !2337
  %25 = load i32, i32* %15, align 8, !dbg !2338, !tbaa !1393
  %26 = load i8*, i8** %18, align 8, !dbg !2339, !tbaa !1479
  %27 = load i8*, i8** %20, align 8, !dbg !2340, !tbaa !1482
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2341
  store i32 %8, i32* %7, align 4, !dbg !2342, !tbaa !807
  br i1 %11, label %29, label %30, !dbg !2343

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2344, !tbaa !2346
  br label %30, !dbg !2347

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2348
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2349 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2353, !tbaa !698
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2351, metadata !691), !dbg !2354
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2352, metadata !691), !dbg !2355
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2352, metadata !691), !dbg !2355
  %2 = load i32, i32* @nslots, align 4, !dbg !2356, !tbaa !807
  %3 = icmp sgt i32 %2, 1, !dbg !2359
  br i1 %3, label %4, label %13, !dbg !2360

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2361

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2352, metadata !691), !dbg !2355
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2361
  %8 = load i8*, i8** %7, align 8, !dbg !2361, !tbaa !2362
  tail call void @free(i8* %8) #12, !dbg !2364
  %9 = add nuw i64 %6, 1, !dbg !2365
  %10 = load i32, i32* @nslots, align 4, !dbg !2356, !tbaa !807
  %11 = sext i32 %10 to i64, !dbg !2359
  %12 = icmp slt i64 %9, %11, !dbg !2359
  br i1 %12, label %5, label %13, !dbg !2360, !llvm.loop !2366

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2368
  %15 = load i8*, i8** %14, align 8, !dbg !2368, !tbaa !2362
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2370
  br i1 %16, label %18, label %17, !dbg !2371

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #12, !dbg !2372
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2374, !tbaa !2375
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2376, !tbaa !2362
  br label %18, !dbg !2377

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2378
  br i1 %19, label %22, label %20, !dbg !2380

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2381
  tail call void @free(i8* %21) #12, !dbg !2383
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2384, !tbaa !698
  br label %22, !dbg !2385

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2386, !tbaa !807
  ret void, !dbg !2387
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2388 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2392, metadata !691), !dbg !2394
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2393, metadata !691), !dbg !2395
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2396
  ret i8* %3, !dbg !2397
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2398 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2402, metadata !691), !dbg !2416
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2403, metadata !691), !dbg !2417
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2404, metadata !691), !dbg !2418
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2405, metadata !691), !dbg !2419
  %5 = tail call i32* @__errno_location() #17, !dbg !2420
  %6 = load i32, i32* %5, align 4, !dbg !2420, !tbaa !807
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2406, metadata !691), !dbg !2421
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2422, !tbaa !698
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2407, metadata !691), !dbg !2423
  %8 = icmp slt i32 %0, 0, !dbg !2424
  br i1 %8, label %9, label %10, !dbg !2426

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2427
  unreachable, !dbg !2427

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2428, !tbaa !807
  %12 = icmp sgt i32 %11, %0, !dbg !2429
  br i1 %12, label %34, label %13, !dbg !2430

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2431
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2432
  br i1 %15, label %16, label %17, !dbg !2434

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2435
  unreachable, !dbg !2435

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2436
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2436
  %20 = add nsw i32 %0, 1, !dbg !2437
  %21 = sext i32 %20 to i64, !dbg !2438
  %22 = shl nsw i64 %21, 4, !dbg !2439
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !2440
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2440
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2407, metadata !691), !dbg !2423
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2441, !tbaa !698
  br i1 %14, label %25, label %26, !dbg !2442

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2443, !tbaa.struct !2445
  br label %26, !dbg !2446

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2447, !tbaa !807
  %28 = sext i32 %27 to i64, !dbg !2448
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2448
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2449
  %31 = sub nsw i32 %20, %27, !dbg !2450
  %32 = sext i32 %31 to i64, !dbg !2451
  %33 = shl nsw i64 %32, 4, !dbg !2452
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2449
  store i32 %20, i32* @nslots, align 4, !dbg !2453, !tbaa !807
  br label %34, !dbg !2454

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2407, metadata !691), !dbg !2423
  %36 = sext i32 %0 to i64, !dbg !2455
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2456
  %38 = load i64, i64* %37, align 8, !dbg !2456, !tbaa !2375
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2411, metadata !691), !dbg !2457
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2458
  %40 = load i8*, i8** %39, align 8, !dbg !2458, !tbaa !2362
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2413, metadata !691), !dbg !2459
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2460
  %42 = load i32, i32* %41, align 4, !dbg !2460, !tbaa !1453
  %43 = or i32 %42, 1, !dbg !2461
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2414, metadata !691), !dbg !2462
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2463
  %45 = load i32, i32* %44, align 8, !dbg !2463, !tbaa !1393
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2464
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2465
  %48 = load i8*, i8** %47, align 8, !dbg !2465, !tbaa !1479
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2466
  %50 = load i8*, i8** %49, align 8, !dbg !2466, !tbaa !1482
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2467
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2415, metadata !691), !dbg !2468
  %52 = icmp ugt i64 %38, %51, !dbg !2469
  br i1 %52, label %63, label %53, !dbg !2471

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2472
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2411, metadata !691), !dbg !2457
  store i64 %54, i64* %37, align 8, !dbg !2474, !tbaa !2375
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2475
  br i1 %55, label %57, label %56, !dbg !2477

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !2478
  br label %57, !dbg !2478

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2302, metadata !691) #12, !dbg !2479
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !2481
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2413, metadata !691), !dbg !2459
  store i8* %58, i8** %39, align 8, !dbg !2482, !tbaa !2362
  %59 = load i32, i32* %44, align 8, !dbg !2483, !tbaa !1393
  %60 = load i8*, i8** %47, align 8, !dbg !2484, !tbaa !1479
  %61 = load i8*, i8** %49, align 8, !dbg !2485, !tbaa !1482
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2486
  br label %63, !dbg !2487

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2413, metadata !691), !dbg !2459
  store i32 %6, i32* %5, align 4, !dbg !2488, !tbaa !807
  ret i8* %64, !dbg !2489
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2490 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2494, metadata !691), !dbg !2497
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2495, metadata !691), !dbg !2498
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2496, metadata !691), !dbg !2499
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2500
  ret i8* %4, !dbg !2501
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2502 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2504, metadata !691), !dbg !2505
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2392, metadata !691) #12, !dbg !2506
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2393, metadata !691) #12, !dbg !2508
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2509
  ret i8* %2, !dbg !2510
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2511 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2515, metadata !691), !dbg !2517
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2516, metadata !691), !dbg !2518
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2494, metadata !691) #12, !dbg !2519
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2495, metadata !691) #12, !dbg !2521
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2496, metadata !691) #12, !dbg !2522
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2523
  ret i8* %3, !dbg !2524
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2525 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2533, metadata !2539), !dbg !2540
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2529, metadata !691), !dbg !2542
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2530, metadata !691), !dbg !2543
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2531, metadata !691), !dbg !2544
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2545
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2545
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2532, metadata !691), !dbg !2546
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2538, metadata !691) #12, !dbg !2547
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2548
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2548
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2533, metadata !691) #12, !dbg !2540
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2533, metadata !2549) #12, !dbg !2540
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2540
  %8 = icmp eq i32 %1, 10, !dbg !2550
  br i1 %8, label %9, label %10, !dbg !2552

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2553, !noalias !2554
  unreachable, !dbg !2553

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2533, metadata !2549) #12, !dbg !2540
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2557
  store i32 %1, i32* %11, align 8, !dbg !2557, !alias.scope !2554
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2557
  %13 = bitcast i32* %12 to i8*, !dbg !2557
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #12, !dbg !2557
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2558
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2532, metadata !691), !dbg !2546
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2559
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2560
  ret i8* %14, !dbg !2561
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2562 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2533, metadata !2539), !dbg !2571
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2566, metadata !691), !dbg !2573
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2567, metadata !691), !dbg !2574
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2568, metadata !691), !dbg !2575
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2569, metadata !691), !dbg !2576
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2577
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2577
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2570, metadata !691), !dbg !2578
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2538, metadata !691) #12, !dbg !2579
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2580
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2580
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2533, metadata !691) #12, !dbg !2571
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2533, metadata !2549) #12, !dbg !2571
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2571
  %9 = icmp eq i32 %1, 10, !dbg !2581
  br i1 %9, label %10, label %11, !dbg !2582

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2583, !noalias !2584
  unreachable, !dbg !2583

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2533, metadata !2549) #12, !dbg !2571
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2587
  store i32 %1, i32* %12, align 8, !dbg !2587, !alias.scope !2584
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2587
  %14 = bitcast i32* %13 to i8*, !dbg !2587
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #12, !dbg !2587
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2588
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2570, metadata !691), !dbg !2578
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2589
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2590
  ret i8* %15, !dbg !2591
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2592 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2533, metadata !2539), !dbg !2598
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2596, metadata !691), !dbg !2601
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2597, metadata !691), !dbg !2602
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2529, metadata !691) #12, !dbg !2603
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2530, metadata !691) #12, !dbg !2604
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2531, metadata !691) #12, !dbg !2605
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2606
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2606
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2532, metadata !691) #12, !dbg !2607
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2538, metadata !691) #12, !dbg !2608
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2609
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2609
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2533, metadata !691) #12, !dbg !2598
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2533, metadata !2549) #12, !dbg !2598
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2598
  %7 = icmp eq i32 %0, 10, !dbg !2610
  br i1 %7, label %8, label %9, !dbg !2611

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2612, !noalias !2613
  unreachable, !dbg !2612

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2533, metadata !2549) #12, !dbg !2598
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2616
  store i32 %0, i32* %10, align 8, !dbg !2616, !alias.scope !2613
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2616
  %12 = bitcast i32* %11 to i8*, !dbg !2616
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #12, !dbg !2616
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2617
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2532, metadata !691) #12, !dbg !2607
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !2618
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2619
  ret i8* %13, !dbg !2620
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2621 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2533, metadata !2539), !dbg !2628
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2625, metadata !691), !dbg !2631
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2626, metadata !691), !dbg !2632
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2627, metadata !691), !dbg !2633
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2566, metadata !691) #12, !dbg !2634
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2567, metadata !691) #12, !dbg !2635
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2568, metadata !691) #12, !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2569, metadata !691) #12, !dbg !2637
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2638
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2638
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2570, metadata !691) #12, !dbg !2639
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2538, metadata !691) #12, !dbg !2640
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2641
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2641
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2533, metadata !691) #12, !dbg !2628
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2533, metadata !2549) #12, !dbg !2628
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2628
  %8 = icmp eq i32 %0, 10, !dbg !2642
  br i1 %8, label %9, label %10, !dbg !2643

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2644, !noalias !2645
  unreachable, !dbg !2644

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2533, metadata !2549) #12, !dbg !2628
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2648
  store i32 %0, i32* %11, align 8, !dbg !2648, !alias.scope !2645
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2648
  %13 = bitcast i32* %12 to i8*, !dbg !2648
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #12, !dbg !2648
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2649
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2570, metadata !691) #12, !dbg !2639
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #12, !dbg !2650
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2651
  ret i8* %14, !dbg !2652
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2653 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2657, metadata !691), !dbg !2661
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2658, metadata !691), !dbg !2662
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2659, metadata !691), !dbg !2663
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2664
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2664
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2665, !tbaa.struct !2666
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2660, metadata !691), !dbg !2667
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1412, metadata !691), !dbg !2668
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1413, metadata !691), !dbg !2670
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1414, metadata !691), !dbg !2671
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1415, metadata !691), !dbg !2672
  %6 = lshr i8 %2, 5, !dbg !2673
  %7 = zext i8 %6 to i64, !dbg !2673
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2674
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1416, metadata !691), !dbg !2675
  %9 = and i8 %2, 31, !dbg !2676
  %10 = zext i8 %9 to i32, !dbg !2677
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1418, metadata !691), !dbg !2678
  %11 = load i32, i32* %8, align 4, !dbg !2679, !tbaa !807
  %12 = lshr i32 %11, %10, !dbg !2680
  %13 = and i32 %12, 1, !dbg !2681
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1419, metadata !691), !dbg !2682
  %14 = xor i32 %13, 1, !dbg !2683
  %15 = shl i32 %14, %10, !dbg !2684
  %16 = xor i32 %15, %11, !dbg !2685
  store i32 %16, i32* %8, align 4, !dbg !2685, !tbaa !807
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2660, metadata !691), !dbg !2667
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2686
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2687
  ret i8* %17, !dbg !2688
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2689 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2693, metadata !691), !dbg !2695
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2694, metadata !691), !dbg !2696
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2657, metadata !691) #12, !dbg !2697
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2658, metadata !691) #12, !dbg !2699
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2659, metadata !691) #12, !dbg !2700
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2701
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2701
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !2702, !tbaa.struct !2666
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2660, metadata !691) #12, !dbg !2703
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1412, metadata !691) #12, !dbg !2704
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1413, metadata !691) #12, !dbg !2706
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1414, metadata !691) #12, !dbg !2707
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1415, metadata !691) #12, !dbg !2708
  %5 = lshr i8 %1, 5, !dbg !2709
  %6 = zext i8 %5 to i64, !dbg !2709
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2710
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1416, metadata !691) #12, !dbg !2711
  %8 = and i8 %1, 31, !dbg !2712
  %9 = zext i8 %8 to i32, !dbg !2713
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1418, metadata !691) #12, !dbg !2714
  %10 = load i32, i32* %7, align 4, !dbg !2715, !tbaa !807
  %11 = lshr i32 %10, %9, !dbg !2716
  %12 = and i32 %11, 1, !dbg !2717
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1419, metadata !691) #12, !dbg !2718
  %13 = xor i32 %12, 1, !dbg !2719
  %14 = shl i32 %13, %9, !dbg !2720
  %15 = xor i32 %14, %10, !dbg !2721
  store i32 %15, i32* %7, align 4, !dbg !2721, !tbaa !807
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2660, metadata !691) #12, !dbg !2703
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2722
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2723
  ret i8* %16, !dbg !2724
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2725 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2727, metadata !691), !dbg !2728
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2693, metadata !691) #12, !dbg !2729
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2694, metadata !691) #12, !dbg !2731
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2657, metadata !691) #12, !dbg !2732
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2658, metadata !691) #12, !dbg !2734
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2659, metadata !691) #12, !dbg !2735
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2736
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2736
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !2737, !tbaa.struct !2666
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2660, metadata !691) #12, !dbg !2738
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1412, metadata !691) #12, !dbg !2739
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1413, metadata !691) #12, !dbg !2741
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1414, metadata !691) #12, !dbg !2742
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1415, metadata !691) #12, !dbg !2743
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2744
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1416, metadata !691) #12, !dbg !2745
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1418, metadata !691) #12, !dbg !2746
  %5 = load i32, i32* %4, align 4, !dbg !2747, !tbaa !807
  %6 = or i32 %5, 67108864, !dbg !2748
  store i32 %6, i32* %4, align 4, !dbg !2748, !tbaa !807
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2660, metadata !691) #12, !dbg !2738
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !2749
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2750
  ret i8* %7, !dbg !2751
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2752 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2754, metadata !691), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2755, metadata !691), !dbg !2757
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2657, metadata !691) #12, !dbg !2758
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2658, metadata !691) #12, !dbg !2760
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2659, metadata !691) #12, !dbg !2761
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2762
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2762
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !2763, !tbaa.struct !2666
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2660, metadata !691) #12, !dbg !2764
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1412, metadata !691) #12, !dbg !2765
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1413, metadata !691) #12, !dbg !2767
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1414, metadata !691) #12, !dbg !2768
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1415, metadata !691) #12, !dbg !2769
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2770
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1416, metadata !691) #12, !dbg !2771
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1418, metadata !691) #12, !dbg !2772
  %6 = load i32, i32* %5, align 4, !dbg !2773, !tbaa !807
  %7 = or i32 %6, 67108864, !dbg !2774
  store i32 %7, i32* %5, align 4, !dbg !2774, !tbaa !807
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2660, metadata !691) #12, !dbg !2764
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !2775
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2776
  ret i8* %8, !dbg !2777
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2778 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2533, metadata !2539), !dbg !2784
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2780, metadata !691), !dbg !2786
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2781, metadata !691), !dbg !2787
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2782, metadata !691), !dbg !2788
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2789
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2789
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2538, metadata !691) #12, !dbg !2790
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2791
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2791
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2533, metadata !691) #12, !dbg !2784
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2533, metadata !2549) #12, !dbg !2784
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2784
  %9 = icmp eq i32 %1, 10, !dbg !2792
  br i1 %9, label %10, label %11, !dbg !2793

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2794, !noalias !2795
  unreachable, !dbg !2794

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2533, metadata !2549) #12, !dbg !2784
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2798
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2798
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2799
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2800
  store i32 %1, i32* %13, align 8, !dbg !2800
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2800
  %15 = bitcast i32* %14 to i8*, !dbg !2800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2800
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2783, metadata !691), !dbg !2801
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1412, metadata !691), !dbg !2802
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1413, metadata !691), !dbg !2804
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1414, metadata !691), !dbg !2805
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1415, metadata !691), !dbg !2806
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2807
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1416, metadata !691), !dbg !2808
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1418, metadata !691), !dbg !2809
  %17 = load i32, i32* %16, align 4, !dbg !2810, !tbaa !807
  %18 = or i32 %17, 67108864, !dbg !2811
  store i32 %18, i32* %16, align 4, !dbg !2811, !tbaa !807
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2783, metadata !691), !dbg !2801
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2812
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2813
  ret i8* %19, !dbg !2814
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2815 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2819, metadata !691), !dbg !2823
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2820, metadata !691), !dbg !2824
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2821, metadata !691), !dbg !2825
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2822, metadata !691), !dbg !2826
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2827, metadata !691) #12, !dbg !2837
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2832, metadata !691) #12, !dbg !2839
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2833, metadata !691) #12, !dbg !2840
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2834, metadata !691) #12, !dbg !2841
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2835, metadata !691) #12, !dbg !2842
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2843
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2843
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !2844, !tbaa.struct !2666
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2836, metadata !691) #12, !dbg !2845
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1461, metadata !691) #12, !dbg !2846
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1462, metadata !691) #12, !dbg !2848
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1463, metadata !691) #12, !dbg !2849
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1461, metadata !691) #12, !dbg !2846
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1461, metadata !691) #12, !dbg !2846
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2850
  store i32 10, i32* %7, align 8, !dbg !2851, !tbaa !1393
  %8 = icmp ne i8* %1, null, !dbg !2852
  %9 = icmp ne i8* %2, null, !dbg !2853
  %10 = and i1 %8, %9, !dbg !2854
  br i1 %10, label %12, label %11, !dbg !2854

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2855
  unreachable, !dbg !2855

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2856
  store i8* %1, i8** %13, align 8, !dbg !2857, !tbaa !1479
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2858
  store i8* %2, i8** %14, align 8, !dbg !2859, !tbaa !1482
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2836, metadata !691) #12, !dbg !2845
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !2860
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2861
  ret i8* %15, !dbg !2862
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2828 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2827, metadata !691), !dbg !2863
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2832, metadata !691), !dbg !2864
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2833, metadata !691), !dbg !2865
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2834, metadata !691), !dbg !2866
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2835, metadata !691), !dbg !2867
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2868
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2868
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2869, !tbaa.struct !2666
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2836, metadata !691), !dbg !2870
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1461, metadata !691) #12, !dbg !2871
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1462, metadata !691) #12, !dbg !2873
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1463, metadata !691) #12, !dbg !2874
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1461, metadata !691) #12, !dbg !2871
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1461, metadata !691) #12, !dbg !2871
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2875
  store i32 10, i32* %8, align 8, !dbg !2876, !tbaa !1393
  %9 = icmp ne i8* %1, null, !dbg !2877
  %10 = icmp ne i8* %2, null, !dbg !2878
  %11 = and i1 %9, %10, !dbg !2879
  br i1 %11, label %13, label %12, !dbg !2879

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2880
  unreachable, !dbg !2880

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2881
  store i8* %1, i8** %14, align 8, !dbg !2882, !tbaa !1479
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2883
  store i8* %2, i8** %15, align 8, !dbg !2884, !tbaa !1482
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2836, metadata !691), !dbg !2870
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2885
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2886
  ret i8* %16, !dbg !2887
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2888 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2892, metadata !691), !dbg !2895
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2893, metadata !691), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2894, metadata !691), !dbg !2897
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2819, metadata !691) #12, !dbg !2898
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2820, metadata !691) #12, !dbg !2900
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2821, metadata !691) #12, !dbg !2901
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2822, metadata !691) #12, !dbg !2902
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2827, metadata !691) #12, !dbg !2903
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2832, metadata !691) #12, !dbg !2905
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2833, metadata !691) #12, !dbg !2906
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2834, metadata !691) #12, !dbg !2907
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2835, metadata !691) #12, !dbg !2908
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2909
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2909
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !2910, !tbaa.struct !2666
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2836, metadata !691) #12, !dbg !2911
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1461, metadata !691) #12, !dbg !2912
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1462, metadata !691) #12, !dbg !2914
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1463, metadata !691) #12, !dbg !2915
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1461, metadata !691) #12, !dbg !2912
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1461, metadata !691) #12, !dbg !2912
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2916
  store i32 10, i32* %6, align 8, !dbg !2917, !tbaa !1393
  %7 = icmp ne i8* %0, null, !dbg !2918
  %8 = icmp ne i8* %1, null, !dbg !2919
  %9 = and i1 %7, %8, !dbg !2920
  br i1 %9, label %11, label %10, !dbg !2920

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2921
  unreachable, !dbg !2921

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2922
  store i8* %0, i8** %12, align 8, !dbg !2923, !tbaa !1479
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2924
  store i8* %1, i8** %13, align 8, !dbg !2925, !tbaa !1482
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2836, metadata !691) #12, !dbg !2911
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !2926
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2927
  ret i8* %14, !dbg !2928
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2929 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2933, metadata !691), !dbg !2937
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2934, metadata !691), !dbg !2938
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2935, metadata !691), !dbg !2939
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2936, metadata !691), !dbg !2940
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2827, metadata !691) #12, !dbg !2941
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2832, metadata !691) #12, !dbg !2943
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2833, metadata !691) #12, !dbg !2944
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2834, metadata !691) #12, !dbg !2945
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2835, metadata !691) #12, !dbg !2946
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2947
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2947
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !2948, !tbaa.struct !2666
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2836, metadata !691) #12, !dbg !2949
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1461, metadata !691) #12, !dbg !2950
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1462, metadata !691) #12, !dbg !2952
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1463, metadata !691) #12, !dbg !2953
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1461, metadata !691) #12, !dbg !2950
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1461, metadata !691) #12, !dbg !2950
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2954
  store i32 10, i32* %7, align 8, !dbg !2955, !tbaa !1393
  %8 = icmp ne i8* %0, null, !dbg !2956
  %9 = icmp ne i8* %1, null, !dbg !2957
  %10 = and i1 %8, %9, !dbg !2958
  br i1 %10, label %12, label %11, !dbg !2958

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2959
  unreachable, !dbg !2959

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2960
  store i8* %0, i8** %13, align 8, !dbg !2961, !tbaa !1479
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2962
  store i8* %1, i8** %14, align 8, !dbg !2963, !tbaa !1482
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2836, metadata !691) #12, !dbg !2949
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !2964
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2965
  ret i8* %15, !dbg !2966
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2967 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2971, metadata !691), !dbg !2974
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2972, metadata !691), !dbg !2975
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2973, metadata !691), !dbg !2976
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2977
  ret i8* %4, !dbg !2978
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2979 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2983, metadata !691), !dbg !2985
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2984, metadata !691), !dbg !2986
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2971, metadata !691) #12, !dbg !2987
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2972, metadata !691) #12, !dbg !2989
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2973, metadata !691) #12, !dbg !2990
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !2991
  ret i8* %3, !dbg !2992
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2993 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2997, metadata !691), !dbg !2999
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2998, metadata !691), !dbg !3000
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2971, metadata !691) #12, !dbg !3001
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2972, metadata !691) #12, !dbg !3003
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2973, metadata !691) #12, !dbg !3004
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3005
  ret i8* %3, !dbg !3006
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3007 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3009, metadata !691), !dbg !3010
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2997, metadata !691) #12, !dbg !3011
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2998, metadata !691) #12, !dbg !3013
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2971, metadata !691) #12, !dbg !3014
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2972, metadata !691) #12, !dbg !3016
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2973, metadata !691) #12, !dbg !3017
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3018
  ret i8* %2, !dbg !3019
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @try_tempname_len(i8*, i32, i8*, i32 (i8*, i8*)* nocapture, i64) local_unnamed_addr #6 !dbg !3020 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3027, metadata !691), !dbg !3048
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3028, metadata !691), !dbg !3049
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3029, metadata !691), !dbg !3050
  tail call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %3, i64 0, metadata !3030, metadata !691), !dbg !3051
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3031, metadata !691), !dbg !3052
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3035, metadata !691), !dbg !3053
  %6 = tail call i32* @__errno_location() #17, !dbg !3054
  %7 = load i32, i32* %6, align 4, !dbg !3054, !tbaa !807
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3036, metadata !691), !dbg !3055
  tail call void @llvm.dbg.value(metadata i32 238328, i64 0, metadata !3041, metadata !691), !dbg !3056
  %8 = tail call i64 @strlen(i8* %0) #14, !dbg !3057
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3032, metadata !691), !dbg !3058
  %9 = sext i32 %1 to i64, !dbg !3059
  %10 = add i64 %9, %4, !dbg !3061
  %11 = icmp ult i64 %8, %10, !dbg !3062
  br i1 %11, label %49, label %12, !dbg !3063

; <label>:12:                                     ; preds = %5
  %13 = sub i64 %8, %10, !dbg !3064
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !3065
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3066, metadata !691) #12, !dbg !3072
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3071, metadata !691) #12, !dbg !3074
  %15 = tail call i64 @strspn(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.77, i64 0, i64 0)) #14, !dbg !3075
  %16 = icmp ult i64 %15, %4, !dbg !3076
  br i1 %16, label %49, label %17, !dbg !3077

; <label>:17:                                     ; preds = %12
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3033, metadata !691), !dbg !3078
  %18 = tail call %struct.randint_source* @randint_all_new(i8* null, i64 %4) #12, !dbg !3079
  tail call void @llvm.dbg.value(metadata %struct.randint_source* %18, i64 0, metadata !3037, metadata !691), !dbg !3080
  %19 = icmp eq %struct.randint_source* %18, null, !dbg !3081
  br i1 %19, label %52, label %20, !dbg !3083

; <label>:20:                                     ; preds = %17
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3034, metadata !691), !dbg !3084
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3034, metadata !691), !dbg !3084
  %21 = icmp eq i64 %4, 0
  br label %24, !dbg !3085

; <label>:22:                                     ; preds = %39
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !3034, metadata !691), !dbg !3084
  %23 = icmp ult i32 %42, 238328, !dbg !3086
  br i1 %23, label %24, label %43, !dbg !3085, !llvm.loop !3087

; <label>:24:                                     ; preds = %20, %22
  %25 = phi i32 [ 0, %20 ], [ %42, %22 ]
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3042, metadata !691), !dbg !3089
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3042, metadata !691), !dbg !3089
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !3034, metadata !691), !dbg !3084
  br i1 %21, label %35, label %26, !dbg !3090

; <label>:26:                                     ; preds = %24
  br label %27, !dbg !3092

; <label>:27:                                     ; preds = %26, %27
  %28 = phi i64 [ %33, %27 ], [ 0, %26 ]
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3042, metadata !691), !dbg !3089
  %29 = tail call i64 @randint_genmax(%struct.randint_source* nonnull %18, i64 61) #12, !dbg !3092
  %30 = getelementptr inbounds [63 x i8], [63 x i8]* @letters, i64 0, i64 %29, !dbg !3094
  %31 = load i8, i8* %30, align 1, !dbg !3094, !tbaa !833
  %32 = getelementptr inbounds i8, i8* %14, i64 %28, !dbg !3095
  store i8 %31, i8* %32, align 1, !dbg !3096, !tbaa !833
  %33 = add nuw i64 %28, 1, !dbg !3097
  tail call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !3042, metadata !691), !dbg !3089
  tail call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !3042, metadata !691), !dbg !3089
  %34 = icmp eq i64 %33, %4, !dbg !3098
  br i1 %34, label %35, label %27, !dbg !3090, !llvm.loop !3099

; <label>:35:                                     ; preds = %27, %24
  %36 = tail call i32 %3(i8* %0, i8* %2) #12, !dbg !3101
  tail call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !3035, metadata !691), !dbg !3053
  %37 = icmp sgt i32 %36, -1, !dbg !3102
  br i1 %37, label %38, label %39, !dbg !3104

; <label>:38:                                     ; preds = %35
  store i32 %7, i32* %6, align 4, !dbg !3105, !tbaa !807
  br label %45, !dbg !3107

; <label>:39:                                     ; preds = %35
  %40 = load i32, i32* %6, align 4, !dbg !3108, !tbaa !807
  %41 = icmp eq i32 %40, 17, !dbg !3110
  %42 = add nuw nsw i32 %25, 1, !dbg !3111
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !3034, metadata !691), !dbg !3084
  br i1 %41, label %22, label %45

; <label>:43:                                     ; preds = %22
  %44 = tail call i32 @randint_all_free(%struct.randint_source* nonnull %18) #12, !dbg !3112
  br label %49, !dbg !3113

; <label>:45:                                     ; preds = %39, %38
  %46 = phi i32 [ %7, %38 ], [ %40, %39 ], !dbg !3114
  %47 = phi i32 [ %36, %38 ], [ -1, %39 ]
  tail call void @llvm.dbg.value(metadata i32 %46, i64 0, metadata !3046, metadata !691), !dbg !3115
  %48 = tail call i32 @randint_all_free(%struct.randint_source* nonnull %18) #12, !dbg !3116
  br label %49, !dbg !3117

; <label>:49:                                     ; preds = %12, %5, %43, %45
  %50 = phi i32 [ %46, %45 ], [ 17, %43 ], [ 22, %12 ], [ 22, %5 ]
  %51 = phi i32 [ %47, %45 ], [ -1, %43 ], [ -1, %12 ], [ -1, %5 ]
  store i32 %50, i32* %6, align 4, !tbaa !807
  br label %52, !dbg !3118

; <label>:52:                                     ; preds = %49, %17
  %53 = phi i32 [ -1, %17 ], [ %51, %49 ]
  ret i32 %53, !dbg !3118
}

; Function Attrs: nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i32 @gen_tempname_len(i8*, i32, i32, i32, i64) local_unnamed_addr #6 !dbg !3119 {
  %6 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3123, metadata !691), !dbg !3129
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3124, metadata !691), !dbg !3130
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3125, metadata !691), !dbg !3131
  store i32 %2, i32* %6, align 4, !tbaa !807
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !3126, metadata !691), !dbg !3132
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3127, metadata !691), !dbg !3133
  %7 = icmp ult i32 %3, 3, !dbg !3134
  br i1 %7, label %9, label %8, !dbg !3134

; <label>:8:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.80, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.81, i64 0, i64 0), i32 328, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.gen_tempname_len, i64 0, i64 0)) #15, !dbg !3135
  unreachable, !dbg !3135

; <label>:9:                                      ; preds = %5
  %10 = sext i32 %3 to i64, !dbg !3134
  %11 = getelementptr inbounds [3 x i32 (i8*, i8*)*], [3 x i32 (i8*, i8*)*]* @switch.table.gen_tempname, i64 0, i64 %10, !dbg !3134
  %12 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %11, align 8, !dbg !3134
  tail call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %12, i64 0, metadata !3128, metadata !691), !dbg !3139
  %13 = bitcast i32* %6 to i8*, !dbg !3140
  %14 = call i32 @try_tempname_len(i8* %0, i32 %1, i8* nonnull %13, i32 (i8*, i8*)* nonnull %12, i64 %4), !dbg !3141
  ret i32 %14, !dbg !3142
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @try_file(i8* nocapture readonly, i8* nocapture readonly) #6 !dbg !3143 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3145, metadata !691), !dbg !3148
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3146, metadata !691), !dbg !3149
  %3 = bitcast i8* %1 to i32*, !dbg !3150
  tail call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !3147, metadata !691), !dbg !3151
  %4 = load i32, i32* %3, align 4, !dbg !3152, !tbaa !807
  %5 = and i32 %4, -196, !dbg !3153
  %6 = or i32 %5, 194, !dbg !3154
  %7 = tail call i32 (i8*, i32, ...) @open(i8* %0, i32 %6, i32 384) #12, !dbg !3155
  ret i32 %7, !dbg !3156
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @try_dir(i8* nocapture readonly, i8* nocapture readnone) #6 !dbg !3157 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3159, metadata !691), !dbg !3161
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3160, metadata !691), !dbg !3162
  %3 = tail call i32 @mkdir(i8* %0, i32 448) #12, !dbg !3163
  ret i32 %3, !dbg !3164
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @try_nocreate(i8*, i8* nocapture readnone) #6 !dbg !3165 {
  %3 = alloca %struct.stat, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3167, metadata !691), !dbg !3206
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3168, metadata !691), !dbg !3207
  %4 = bitcast %struct.stat* %3 to i8*, !dbg !3208
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %4) #12, !dbg !3208
  tail call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !3169, metadata !691), !dbg !3209
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3210, metadata !691) #12, !dbg !3218
  tail call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !3217, metadata !691) #12, !dbg !3218
  %5 = call i32 @__lxstat(i32 1, i8* nonnull %0, %struct.stat* nonnull %3) #12, !dbg !3221
  %6 = icmp eq i32 %5, 0, !dbg !3222
  %7 = tail call i32* @__errno_location() #17, !dbg !3223
  br i1 %6, label %8, label %9, !dbg !3224

; <label>:8:                                      ; preds = %2
  store i32 17, i32* %7, align 4, !dbg !3223, !tbaa !807
  br label %9, !dbg !3223

; <label>:9:                                      ; preds = %2, %8
  %10 = load i32, i32* %7, align 4, !dbg !3225, !tbaa !807
  %11 = icmp ne i32 %10, 2, !dbg !3226
  %12 = sext i1 %11 to i32, !dbg !3225
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %4) #12, !dbg !3227
  ret i32 %12, !dbg !3228
}

; Function Attrs: nounwind
declare i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @mkdir(i8* nocapture readonly, i32) local_unnamed_addr #2

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @gen_tempname(i8*, i32, i32, i32) local_unnamed_addr #6 !dbg !3229 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3233, metadata !691), !dbg !3237
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3234, metadata !691), !dbg !3238
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3235, metadata !691), !dbg !3239
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !3236, metadata !691), !dbg !3240
  %6 = bitcast i32* %5 to i8*, !dbg !3241
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6), !dbg !3241
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3123, metadata !691) #12, !dbg !3241
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3124, metadata !691) #12, !dbg !3243
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3125, metadata !691) #12, !dbg !3244
  store i32 %2, i32* %5, align 4, !tbaa !807
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !3126, metadata !691) #12, !dbg !3245
  tail call void @llvm.dbg.value(metadata i64 6, i64 0, metadata !3127, metadata !691) #12, !dbg !3246
  %7 = icmp ult i32 %3, 3, !dbg !3247
  br i1 %7, label %9, label %8, !dbg !3247

; <label>:8:                                      ; preds = %4
  tail call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.80, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.81, i64 0, i64 0), i32 328, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.gen_tempname_len, i64 0, i64 0)) #15, !dbg !3248
  unreachable, !dbg !3248

; <label>:9:                                      ; preds = %4
  %10 = sext i32 %3 to i64, !dbg !3247
  %11 = getelementptr inbounds [3 x i32 (i8*, i8*)*], [3 x i32 (i8*, i8*)*]* @switch.table.gen_tempname, i64 0, i64 %10, !dbg !3247
  %12 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %11, align 8, !dbg !3247
  tail call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %12, i64 0, metadata !3128, metadata !691) #12, !dbg !3249
  %13 = call i32 @try_tempname_len(i8* %0, i32 %1, i8* nonnull %6, i32 (i8*, i8*)* nonnull %12, i64 6) #12, !dbg !3250
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6), !dbg !3251
  ret i32 %13, !dbg !3252
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @try_tempname(i8*, i32, i8*, i32 (i8*, i8*)* nocapture) local_unnamed_addr #6 !dbg !3253 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3257, metadata !691), !dbg !3261
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3258, metadata !691), !dbg !3262
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3259, metadata !691), !dbg !3263
  tail call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %3, i64 0, metadata !3260, metadata !691), !dbg !3264
  %5 = tail call i32 @try_tempname_len(i8* %0, i32 %1, i8* %2, i32 (i8*, i8*)* %3, i64 6), !dbg !3265
  ret i32 %5, !dbg !3266
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3267 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3312, metadata !691), !dbg !3318
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3313, metadata !691), !dbg !3319
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3314, metadata !691), !dbg !3320
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3315, metadata !691), !dbg !3321
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3316, metadata !691), !dbg !3322
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3317, metadata !691), !dbg !3323
  %7 = icmp eq i8* %1, null, !dbg !3324
  br i1 %7, label %10, label %8, !dbg !3326

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !3327
  br label %12, !dbg !3327

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.83, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !3328
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.84, i64 0, i64 0), i32 5) #12, !dbg !3329
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #12, !dbg !3329
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.85, i64 0, i64 0), i32 5) #12, !dbg !3330
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #12, !dbg !3330
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
  ], !dbg !3331

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3332
  unreachable, !dbg !3332

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.86, i64 0, i64 0), i32 5) #12, !dbg !3334
  %20 = load i8*, i8** %4, align 8, !dbg !3334, !tbaa !698
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12, !dbg !3334
  br label %146, !dbg !3335

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.87, i64 0, i64 0), i32 5) #12, !dbg !3336
  %24 = load i8*, i8** %4, align 8, !dbg !3336, !tbaa !698
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3336
  %26 = load i8*, i8** %25, align 8, !dbg !3336, !tbaa !698
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12, !dbg !3336
  br label %146, !dbg !3337

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.88, i64 0, i64 0), i32 5) #12, !dbg !3338
  %30 = load i8*, i8** %4, align 8, !dbg !3338, !tbaa !698
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3338
  %32 = load i8*, i8** %31, align 8, !dbg !3338, !tbaa !698
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3338
  %34 = load i8*, i8** %33, align 8, !dbg !3338, !tbaa !698
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12, !dbg !3338
  br label %146, !dbg !3339

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.89, i64 0, i64 0), i32 5) #12, !dbg !3340
  %38 = load i8*, i8** %4, align 8, !dbg !3340, !tbaa !698
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3340
  %40 = load i8*, i8** %39, align 8, !dbg !3340, !tbaa !698
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3340
  %42 = load i8*, i8** %41, align 8, !dbg !3340, !tbaa !698
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3340
  %44 = load i8*, i8** %43, align 8, !dbg !3340, !tbaa !698
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #12, !dbg !3340
  br label %146, !dbg !3341

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.90, i64 0, i64 0), i32 5) #12, !dbg !3342
  %48 = load i8*, i8** %4, align 8, !dbg !3342, !tbaa !698
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3342
  %50 = load i8*, i8** %49, align 8, !dbg !3342, !tbaa !698
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3342
  %52 = load i8*, i8** %51, align 8, !dbg !3342, !tbaa !698
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3342
  %54 = load i8*, i8** %53, align 8, !dbg !3342, !tbaa !698
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3342
  %56 = load i8*, i8** %55, align 8, !dbg !3342, !tbaa !698
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #12, !dbg !3342
  br label %146, !dbg !3343

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.91, i64 0, i64 0), i32 5) #12, !dbg !3344
  %60 = load i8*, i8** %4, align 8, !dbg !3344, !tbaa !698
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3344
  %62 = load i8*, i8** %61, align 8, !dbg !3344, !tbaa !698
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3344
  %64 = load i8*, i8** %63, align 8, !dbg !3344, !tbaa !698
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3344
  %66 = load i8*, i8** %65, align 8, !dbg !3344, !tbaa !698
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3344
  %68 = load i8*, i8** %67, align 8, !dbg !3344, !tbaa !698
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3344
  %70 = load i8*, i8** %69, align 8, !dbg !3344, !tbaa !698
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #12, !dbg !3344
  br label %146, !dbg !3345

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.92, i64 0, i64 0), i32 5) #12, !dbg !3346
  %74 = load i8*, i8** %4, align 8, !dbg !3346, !tbaa !698
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3346
  %76 = load i8*, i8** %75, align 8, !dbg !3346, !tbaa !698
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3346
  %78 = load i8*, i8** %77, align 8, !dbg !3346, !tbaa !698
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3346
  %80 = load i8*, i8** %79, align 8, !dbg !3346, !tbaa !698
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3346
  %82 = load i8*, i8** %81, align 8, !dbg !3346, !tbaa !698
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3346
  %84 = load i8*, i8** %83, align 8, !dbg !3346, !tbaa !698
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3346
  %86 = load i8*, i8** %85, align 8, !dbg !3346, !tbaa !698
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #12, !dbg !3346
  br label %146, !dbg !3347

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.93, i64 0, i64 0), i32 5) #12, !dbg !3348
  %90 = load i8*, i8** %4, align 8, !dbg !3348, !tbaa !698
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3348
  %92 = load i8*, i8** %91, align 8, !dbg !3348, !tbaa !698
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3348
  %94 = load i8*, i8** %93, align 8, !dbg !3348, !tbaa !698
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3348
  %96 = load i8*, i8** %95, align 8, !dbg !3348, !tbaa !698
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3348
  %98 = load i8*, i8** %97, align 8, !dbg !3348, !tbaa !698
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3348
  %100 = load i8*, i8** %99, align 8, !dbg !3348, !tbaa !698
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3348
  %102 = load i8*, i8** %101, align 8, !dbg !3348, !tbaa !698
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3348
  %104 = load i8*, i8** %103, align 8, !dbg !3348, !tbaa !698
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #12, !dbg !3348
  br label %146, !dbg !3349

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.94, i64 0, i64 0), i32 5) #12, !dbg !3350
  %108 = load i8*, i8** %4, align 8, !dbg !3350, !tbaa !698
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3350
  %110 = load i8*, i8** %109, align 8, !dbg !3350, !tbaa !698
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3350
  %112 = load i8*, i8** %111, align 8, !dbg !3350, !tbaa !698
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3350
  %114 = load i8*, i8** %113, align 8, !dbg !3350, !tbaa !698
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3350
  %116 = load i8*, i8** %115, align 8, !dbg !3350, !tbaa !698
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3350
  %118 = load i8*, i8** %117, align 8, !dbg !3350, !tbaa !698
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3350
  %120 = load i8*, i8** %119, align 8, !dbg !3350, !tbaa !698
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3350
  %122 = load i8*, i8** %121, align 8, !dbg !3350, !tbaa !698
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3350
  %124 = load i8*, i8** %123, align 8, !dbg !3350, !tbaa !698
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #12, !dbg !3350
  br label %146, !dbg !3351

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.95, i64 0, i64 0), i32 5) #12, !dbg !3352
  %128 = load i8*, i8** %4, align 8, !dbg !3352, !tbaa !698
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3352
  %130 = load i8*, i8** %129, align 8, !dbg !3352, !tbaa !698
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3352
  %132 = load i8*, i8** %131, align 8, !dbg !3352, !tbaa !698
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3352
  %134 = load i8*, i8** %133, align 8, !dbg !3352, !tbaa !698
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3352
  %136 = load i8*, i8** %135, align 8, !dbg !3352, !tbaa !698
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3352
  %138 = load i8*, i8** %137, align 8, !dbg !3352, !tbaa !698
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3352
  %140 = load i8*, i8** %139, align 8, !dbg !3352, !tbaa !698
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3352
  %142 = load i8*, i8** %141, align 8, !dbg !3352, !tbaa !698
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3352
  %144 = load i8*, i8** %143, align 8, !dbg !3352, !tbaa !698
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #12, !dbg !3352
  br label %146, !dbg !3353

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3354
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3355 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3359, metadata !691), !dbg !3365
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3360, metadata !691), !dbg !3366
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3361, metadata !691), !dbg !3367
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3362, metadata !691), !dbg !3368
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3363, metadata !691), !dbg !3369
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3364, metadata !691), !dbg !3370
  br label %6, !dbg !3371

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3364, metadata !691), !dbg !3370
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3373
  %9 = load i8*, i8** %8, align 8, !dbg !3373, !tbaa !698
  %10 = icmp eq i8* %9, null, !dbg !3375
  %11 = add i64 %7, 1, !dbg !3376
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3364, metadata !691), !dbg !3370
  br i1 %10, label %12, label %6, !dbg !3375, !llvm.loop !3377

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3379
  ret void, !dbg !3380
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3381 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3392, metadata !691), !dbg !3400
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3393, metadata !691), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3394, metadata !691), !dbg !3402
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3395, metadata !691), !dbg !3403
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3396, metadata !691), !dbg !3404
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3405
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3405
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3398, metadata !691), !dbg !3406
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3397, metadata !691), !dbg !3407
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3397, metadata !691), !dbg !3407
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3397, metadata !691), !dbg !3407
  %11 = load i32, i32* %8, align 8, !dbg !3408
  %12 = icmp ult i32 %11, 41, !dbg !3408
  br i1 %12, label %13, label %18, !dbg !3408

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3408
  %15 = sext i32 %11 to i64, !dbg !3408
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3408
  %17 = add i32 %11, 8, !dbg !3408
  store i32 %17, i32* %8, align 8, !dbg !3408
  br label %21, !dbg !3408

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3408
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3408
  store i8* %20, i8** %10, align 8, !dbg !3408
  br label %21, !dbg !3408

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3408
  %25 = load i8*, i8** %24, align 8, !dbg !3408
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3411
  store i8* %25, i8** %26, align 16, !dbg !3412, !tbaa !698
  %27 = icmp eq i8* %25, null, !dbg !3413
  br i1 %27, label %30, label %28, !dbg !3414

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3397, metadata !691), !dbg !3407
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3397, metadata !691), !dbg !3407
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3397, metadata !691), !dbg !3407
  %29 = icmp ult i32 %22, 41, !dbg !3408
  br i1 %29, label %35, label %32, !dbg !3408

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3415
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3416
  ret void, !dbg !3416

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3408
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3408
  store i8* %34, i8** %10, align 8, !dbg !3408
  br label %40, !dbg !3408

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3408
  %37 = sext i32 %22 to i64, !dbg !3408
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3408
  %39 = add i32 %22, 8, !dbg !3408
  store i32 %39, i32* %8, align 8, !dbg !3408
  br label %40, !dbg !3408

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3408
  %44 = load i8*, i8** %43, align 8, !dbg !3408
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3411
  store i8* %44, i8** %45, align 8, !dbg !3412, !tbaa !698
  %46 = icmp eq i8* %44, null, !dbg !3413
  br i1 %46, label %30, label %47, !dbg !3414

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3397, metadata !691), !dbg !3407
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3397, metadata !691), !dbg !3407
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3397, metadata !691), !dbg !3407
  %48 = icmp ult i32 %41, 41, !dbg !3408
  br i1 %48, label %52, label %49, !dbg !3408

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3408
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3408
  store i8* %51, i8** %10, align 8, !dbg !3408
  br label %57, !dbg !3408

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3408
  %54 = sext i32 %41 to i64, !dbg !3408
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3408
  %56 = add i32 %41, 8, !dbg !3408
  store i32 %56, i32* %8, align 8, !dbg !3408
  br label %57, !dbg !3408

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3408
  %61 = load i8*, i8** %60, align 8, !dbg !3408
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3411
  store i8* %61, i8** %62, align 16, !dbg !3412, !tbaa !698
  %63 = icmp eq i8* %61, null, !dbg !3413
  br i1 %63, label %30, label %64, !dbg !3414

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3397, metadata !691), !dbg !3407
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3397, metadata !691), !dbg !3407
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3397, metadata !691), !dbg !3407
  %65 = icmp ult i32 %58, 41, !dbg !3408
  br i1 %65, label %69, label %66, !dbg !3408

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3408
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3408
  store i8* %68, i8** %10, align 8, !dbg !3408
  br label %74, !dbg !3408

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3408
  %71 = sext i32 %58 to i64, !dbg !3408
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3408
  %73 = add i32 %58, 8, !dbg !3408
  store i32 %73, i32* %8, align 8, !dbg !3408
  br label %74, !dbg !3408

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3408
  %78 = load i8*, i8** %77, align 8, !dbg !3408
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3411
  store i8* %78, i8** %79, align 8, !dbg !3412, !tbaa !698
  %80 = icmp eq i8* %78, null, !dbg !3413
  br i1 %80, label %30, label %81, !dbg !3414

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3397, metadata !691), !dbg !3407
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3397, metadata !691), !dbg !3407
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3397, metadata !691), !dbg !3407
  %82 = icmp ult i32 %75, 41, !dbg !3408
  br i1 %82, label %86, label %83, !dbg !3408

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3408
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3408
  store i8* %85, i8** %10, align 8, !dbg !3408
  br label %91, !dbg !3408

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3408
  %88 = sext i32 %75 to i64, !dbg !3408
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3408
  %90 = add i32 %75, 8, !dbg !3408
  store i32 %90, i32* %8, align 8, !dbg !3408
  br label %91, !dbg !3408

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3408
  %95 = load i8*, i8** %94, align 8, !dbg !3408
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3411
  store i8* %95, i8** %96, align 16, !dbg !3412, !tbaa !698
  %97 = icmp eq i8* %95, null, !dbg !3413
  br i1 %97, label %30, label %98, !dbg !3414

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3397, metadata !691), !dbg !3407
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3397, metadata !691), !dbg !3407
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3397, metadata !691), !dbg !3407
  %99 = icmp ult i32 %92, 41, !dbg !3408
  br i1 %99, label %103, label %100, !dbg !3408

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3408
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3408
  store i8* %102, i8** %10, align 8, !dbg !3408
  br label %108, !dbg !3408

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3408
  %105 = sext i32 %92 to i64, !dbg !3408
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3408
  %107 = add i32 %92, 8, !dbg !3408
  store i32 %107, i32* %8, align 8, !dbg !3408
  br label %108, !dbg !3408

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3408
  %111 = load i8*, i8** %110, align 8, !dbg !3408
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3411
  store i8* %111, i8** %112, align 8, !dbg !3412, !tbaa !698
  %113 = icmp eq i8* %111, null, !dbg !3413
  br i1 %113, label %30, label %114, !dbg !3414

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3397, metadata !691), !dbg !3407
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3397, metadata !691), !dbg !3407
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3397, metadata !691), !dbg !3407
  %115 = load i8*, i8** %10, align 8, !dbg !3408
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3408
  store i8* %116, i8** %10, align 8, !dbg !3408
  %117 = bitcast i8* %115 to i8**, !dbg !3408
  %118 = load i8*, i8** %117, align 8, !dbg !3408
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3411
  store i8* %118, i8** %119, align 16, !dbg !3412, !tbaa !698
  %120 = icmp eq i8* %118, null, !dbg !3413
  br i1 %120, label %30, label %121, !dbg !3414

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3397, metadata !691), !dbg !3407
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3397, metadata !691), !dbg !3407
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3397, metadata !691), !dbg !3407
  %122 = load i8*, i8** %10, align 8, !dbg !3408
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3408
  store i8* %123, i8** %10, align 8, !dbg !3408
  %124 = bitcast i8* %122 to i8**, !dbg !3408
  %125 = load i8*, i8** %124, align 8, !dbg !3408
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3411
  store i8* %125, i8** %126, align 8, !dbg !3412, !tbaa !698
  %127 = icmp eq i8* %125, null, !dbg !3413
  br i1 %127, label %30, label %128, !dbg !3414

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3397, metadata !691), !dbg !3407
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3397, metadata !691), !dbg !3407
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3397, metadata !691), !dbg !3407
  %129 = load i8*, i8** %10, align 8, !dbg !3408
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3408
  store i8* %130, i8** %10, align 8, !dbg !3408
  %131 = bitcast i8* %129 to i8**, !dbg !3408
  %132 = load i8*, i8** %131, align 8, !dbg !3408
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3411
  store i8* %132, i8** %133, align 16, !dbg !3412, !tbaa !698
  %134 = icmp eq i8* %132, null, !dbg !3413
  br i1 %134, label %30, label %135, !dbg !3414

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3397, metadata !691), !dbg !3407
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3397, metadata !691), !dbg !3407
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3397, metadata !691), !dbg !3407
  %136 = load i8*, i8** %10, align 8, !dbg !3408
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3408
  store i8* %137, i8** %10, align 8, !dbg !3408
  %138 = bitcast i8* %136 to i8**, !dbg !3408
  %139 = load i8*, i8** %138, align 8, !dbg !3408
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3411
  store i8* %139, i8** %140, align 8, !dbg !3412, !tbaa !698
  %141 = icmp eq i8* %139, null, !dbg !3413
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3397, metadata !691), !dbg !3407
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3397, metadata !691), !dbg !3407
  %142 = select i1 %141, i64 9, i64 10, !dbg !3414
  br label %30, !dbg !3414
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3417 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3421, metadata !691), !dbg !3431
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3422, metadata !691), !dbg !3432
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3423, metadata !691), !dbg !3433
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3424, metadata !691), !dbg !3434
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3435
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3435
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3425, metadata !691), !dbg !3436
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3437
  call void @llvm.va_start(i8* nonnull %6), !dbg !3437
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3438
  call void @llvm.va_end(i8* nonnull %6), !dbg !3439
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3440
  ret void, !dbg !3440
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3441 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.98, i64 0, i64 0), i32 5) #12, !dbg !3442
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.99, i64 0, i64 0)) #12, !dbg !3442
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.100, i64 0, i64 0), i32 5) #12, !dbg !3443
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.101, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.102, i64 0, i64 0)) #12, !dbg !3443
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.103, i64 0, i64 0), i32 5) #12, !dbg !3444
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3444, !tbaa !698
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #12, !dbg !3444
  ret void, !dbg !3445
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3446 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3450, metadata !691), !dbg !3452
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3451, metadata !691), !dbg !3453
  %3 = udiv i64 9223372036854775807, %1, !dbg !3454
  %4 = icmp ult i64 %3, %0, !dbg !3454
  br i1 %4, label %5, label %6, !dbg !3456

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3457
  unreachable, !dbg !3457

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3458
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3459, metadata !691) #12, !dbg !3466
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !3468
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3465, metadata !691) #12, !dbg !3469
  %9 = icmp eq i8* %8, null, !dbg !3470
  %10 = icmp ne i64 %7, 0, !dbg !3472
  %11 = and i1 %10, %9, !dbg !3473
  br i1 %11, label %12, label %13, !dbg !3473

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3474
  unreachable, !dbg !3474

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3475
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3460 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3459, metadata !691), !dbg !3476
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3477
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3465, metadata !691), !dbg !3478
  %3 = icmp eq i8* %2, null, !dbg !3479
  %4 = icmp ne i64 %0, 0, !dbg !3480
  %5 = and i1 %4, %3, !dbg !3481
  br i1 %5, label %6, label %7, !dbg !3481

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3482
  unreachable, !dbg !3482

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3483
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3484 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3488, metadata !691), !dbg !3491
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3489, metadata !691), !dbg !3492
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3490, metadata !691), !dbg !3493
  %4 = udiv i64 9223372036854775807, %2, !dbg !3494
  %5 = icmp ult i64 %4, %1, !dbg !3494
  br i1 %5, label %6, label %7, !dbg !3496

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3497
  unreachable, !dbg !3497

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3498
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3499, metadata !691) #12, !dbg !3505
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3504, metadata !691) #12, !dbg !3507
  %9 = icmp eq i64 %8, 0, !dbg !3508
  %10 = icmp ne i8* %0, null, !dbg !3510
  %11 = and i1 %10, %9, !dbg !3511
  br i1 %11, label %12, label %13, !dbg !3511

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !3512
  br label %19, !dbg !3514

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !3515
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3499, metadata !691) #12, !dbg !3505
  %15 = icmp eq i8* %14, null, !dbg !3516
  %16 = icmp ne i64 %8, 0, !dbg !3518
  %17 = and i1 %16, %15, !dbg !3519
  br i1 %17, label %18, label %19, !dbg !3519

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3520
  unreachable, !dbg !3520

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3521
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3500 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3499, metadata !691), !dbg !3522
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3504, metadata !691), !dbg !3523
  %3 = icmp eq i64 %1, 0, !dbg !3524
  %4 = icmp ne i8* %0, null, !dbg !3525
  %5 = and i1 %4, %3, !dbg !3526
  br i1 %5, label %6, label %7, !dbg !3526

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !3527
  br label %13, !dbg !3528

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !3529
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3499, metadata !691), !dbg !3522
  %9 = icmp eq i8* %8, null, !dbg !3530
  %10 = icmp ne i64 %1, 0, !dbg !3531
  %11 = and i1 %10, %9, !dbg !3532
  br i1 %11, label %12, label %13, !dbg !3532

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3533
  unreachable, !dbg !3533

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3534
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !588 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !593, metadata !691), !dbg !3535
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !594, metadata !691), !dbg !3536
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !595, metadata !691), !dbg !3537
  %4 = load i64, i64* %1, align 8, !dbg !3538, !tbaa !2346
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !596, metadata !691), !dbg !3539
  %5 = icmp eq i8* %0, null, !dbg !3540
  br i1 %5, label %6, label %13, !dbg !3542

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3543
  br i1 %7, label %8, label %17, !dbg !3546

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3547
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !596, metadata !691), !dbg !3539
  %10 = icmp ugt i64 %2, 128, !dbg !3549
  %11 = zext i1 %10 to i64, !dbg !3549
  %12 = add nuw nsw i64 %9, %11, !dbg !3550
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !596, metadata !691), !dbg !3539
  br label %17, !dbg !3551

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3552
  %15 = icmp ugt i64 %14, %4, !dbg !3555
  br i1 %15, label %20, label %16, !dbg !3556

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3557
  unreachable, !dbg !3557

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !596, metadata !691), !dbg !3539
  store i64 %18, i64* %1, align 8, !dbg !3558, !tbaa !2346
  %19 = mul i64 %18, %2, !dbg !3559
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3499, metadata !691) #12, !dbg !3560
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3504, metadata !691) #12, !dbg !3562
  br label %27, !dbg !3563

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3564
  %22 = add i64 %4, 1, !dbg !3565
  %23 = add i64 %22, %21, !dbg !3566
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !596, metadata !691), !dbg !3539
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !596, metadata !691), !dbg !3539
  store i64 %23, i64* %1, align 8, !dbg !3558, !tbaa !2346
  %24 = mul i64 %23, %2, !dbg !3559
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3499, metadata !691) #12, !dbg !3560
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3504, metadata !691) #12, !dbg !3562
  %25 = icmp eq i64 %24, 0, !dbg !3567
  br i1 %25, label %26, label %27, !dbg !3563

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #12, !dbg !3568
  br label %34, !dbg !3569

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #12, !dbg !3570
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3499, metadata !691) #12, !dbg !3560
  %30 = icmp eq i8* %29, null, !dbg !3571
  %31 = icmp ne i64 %28, 0, !dbg !3572
  %32 = and i1 %31, %30, !dbg !3573
  br i1 %32, label %33, label %34, !dbg !3573

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3574
  unreachable, !dbg !3574

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3575
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3576 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3578, metadata !691), !dbg !3579
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3459, metadata !691) #12, !dbg !3580
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3582
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3465, metadata !691) #12, !dbg !3583
  %3 = icmp eq i8* %2, null, !dbg !3584
  %4 = icmp ne i64 %0, 0, !dbg !3585
  %5 = and i1 %4, %3, !dbg !3586
  br i1 %5, label %6, label %7, !dbg !3586

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3587
  unreachable, !dbg !3587

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3588
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3589 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3593, metadata !691), !dbg !3595
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3594, metadata !691), !dbg !3596
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !593, metadata !691) #12, !dbg !3597
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !594, metadata !691) #12, !dbg !3599
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !595, metadata !691) #12, !dbg !3600
  %3 = load i64, i64* %1, align 8, !dbg !3601, !tbaa !2346
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !596, metadata !691) #12, !dbg !3602
  %4 = icmp eq i8* %0, null, !dbg !3603
  br i1 %4, label %5, label %8, !dbg !3604

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3605
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !596, metadata !691) #12, !dbg !3602
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !596, metadata !691) #12, !dbg !3602
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3606
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !596, metadata !691) #12, !dbg !3602
  store i64 %7, i64* %1, align 8, !dbg !3607, !tbaa !2346
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3499, metadata !691) #12, !dbg !3608
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3504, metadata !691) #12, !dbg !3610
  br label %17, !dbg !3611

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3612
  br i1 %9, label %11, label %10, !dbg !3613

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3614
  unreachable, !dbg !3614

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3615
  %13 = add i64 %3, 1, !dbg !3616
  %14 = add i64 %13, %12, !dbg !3617
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !596, metadata !691) #12, !dbg !3602
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !596, metadata !691) #12, !dbg !3602
  store i64 %14, i64* %1, align 8, !dbg !3607, !tbaa !2346
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3499, metadata !691) #12, !dbg !3608
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3504, metadata !691) #12, !dbg !3610
  %15 = icmp eq i64 %14, 0, !dbg !3618
  br i1 %15, label %16, label %17, !dbg !3611

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #12, !dbg !3619
  br label %24, !dbg !3620

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #12, !dbg !3621
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3499, metadata !691) #12, !dbg !3608
  %20 = icmp eq i8* %19, null, !dbg !3622
  %21 = icmp ne i64 %18, 0, !dbg !3623
  %22 = and i1 %21, %20, !dbg !3624
  br i1 %22, label %23, label %24, !dbg !3624

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3625
  unreachable, !dbg !3625

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3626
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3627 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3629, metadata !691), !dbg !3630
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3459, metadata !691) #12, !dbg !3631
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3633
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3465, metadata !691) #12, !dbg !3634
  %3 = icmp eq i8* %2, null, !dbg !3635
  %4 = icmp ne i64 %0, 0, !dbg !3636
  %5 = and i1 %4, %3, !dbg !3637
  br i1 %5, label %6, label %7, !dbg !3637

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3638
  unreachable, !dbg !3638

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3639
  ret i8* %2, !dbg !3640
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3641 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3643, metadata !691), !dbg !3646
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3644, metadata !691), !dbg !3647
  %3 = udiv i64 9223372036854775807, %1, !dbg !3648
  %4 = icmp ult i64 %3, %0, !dbg !3648
  br i1 %4, label %8, label %5, !dbg !3650

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !3651
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3645, metadata !691), !dbg !3652
  %7 = icmp eq i8* %6, null, !dbg !3653
  br i1 %7, label %8, label %9, !dbg !3654

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3655
  unreachable, !dbg !3655

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3656
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3657 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3661, metadata !691), !dbg !3663
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3662, metadata !691), !dbg !3664
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3459, metadata !691) #12, !dbg !3665
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !3667
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3465, metadata !691) #12, !dbg !3668
  %4 = icmp eq i8* %3, null, !dbg !3669
  %5 = icmp ne i64 %1, 0, !dbg !3670
  %6 = and i1 %5, %4, !dbg !3671
  br i1 %6, label %7, label %8, !dbg !3671

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3672
  unreachable, !dbg !3672

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3673
  ret i8* %3, !dbg !3674
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3675 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3677, metadata !691), !dbg !3678
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3679
  %3 = add i64 %2, 1, !dbg !3680
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3661, metadata !691) #12, !dbg !3681
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3662, metadata !691) #12, !dbg !3683
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3459, metadata !691) #12, !dbg !3684
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !3686
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3465, metadata !691) #12, !dbg !3687
  %5 = icmp eq i8* %4, null, !dbg !3688
  %6 = icmp ne i64 %3, 0, !dbg !3689
  %7 = and i1 %6, %5, !dbg !3690
  br i1 %7, label %8, label %9, !dbg !3690

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3691
  unreachable, !dbg !3691

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #12, !dbg !3692
  ret i8* %4, !dbg !3693
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3694 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3696, !tbaa !807
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.116, i64 0, i64 0), i32 5) #12, !dbg !3697
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i64 0, i64 0), i8* %2) #12, !dbg !3698
  tail call void @abort() #15, !dbg !3699
  unreachable, !dbg !3699
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3700 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3703, metadata !691), !dbg !3709
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3704, metadata !691), !dbg !3710
  %3 = icmp eq i64 %0, 0, !dbg !3711
  %4 = icmp eq i64 %1, 0, !dbg !3712
  %5 = or i1 %3, %4, !dbg !3713
  br i1 %5, label %12, label %6, !dbg !3713

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3714
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3706, metadata !691), !dbg !3715
  %8 = udiv i64 %7, %1, !dbg !3716
  %9 = icmp eq i64 %8, %0, !dbg !3718
  br i1 %9, label %12, label %10, !dbg !3719

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3720
  store i32 12, i32* %11, align 4, !dbg !3722, !tbaa !807
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3703, metadata !691), !dbg !3709
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3704, metadata !691), !dbg !3710
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #12, !dbg !3723
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3705, metadata !691), !dbg !3724
  br label %16, !dbg !3725

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3726
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3727 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3772, metadata !691), !dbg !3776
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3773, metadata !691), !dbg !3777
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3775, metadata !691), !dbg !3778
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3779
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3774, metadata !691), !dbg !3780
  %3 = icmp slt i32 %2, 0, !dbg !3781
  br i1 %3, label %4, label %6, !dbg !3783

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3784
  br label %24, !dbg !3785

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3786
  %8 = icmp eq i32 %7, 0, !dbg !3786
  br i1 %8, label %13, label %9, !dbg !3788

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3789
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !3790
  %12 = icmp eq i64 %11, -1, !dbg !3791
  br i1 %12, label %16, label %13, !dbg !3792

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !3793
  %15 = icmp eq i32 %14, 0, !dbg !3793
  br i1 %15, label %16, label %18, !dbg !3794

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3773, metadata !691), !dbg !3777
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3795
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3775, metadata !691), !dbg !3778
  br label %24, !dbg !3796

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3797
  %20 = load i32, i32* %19, align 4, !dbg !3797, !tbaa !807
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3773, metadata !691), !dbg !3777
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3773, metadata !691), !dbg !3777
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3795
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3775, metadata !691), !dbg !3778
  %22 = icmp eq i32 %20, 0, !dbg !3798
  br i1 %22, label %24, label %23, !dbg !3796

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3800, !tbaa !807
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3775, metadata !691), !dbg !3778
  br label %24, !dbg !3802

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3803
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3804 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3849, metadata !691), !dbg !3850
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3851
  br i1 %2, label %6, label %3, !dbg !3853

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3854
  %5 = icmp eq i32 %4, 0, !dbg !3854
  br i1 %5, label %6, label %8, !dbg !3855

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3856
  br label %17, !dbg !3857

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3858, metadata !691) #12, !dbg !3863
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3865
  %10 = load i32, i32* %9, align 8, !dbg !3865, !tbaa !1100
  %11 = and i32 %10, 256, !dbg !3867
  %12 = icmp eq i32 %11, 0, !dbg !3867
  br i1 %12, label %15, label %13, !dbg !3868

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !3869
  br label %15, !dbg !3869

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3870
  br label %17, !dbg !3871

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3872
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3873 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3919, metadata !691), !dbg !3925
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3920, metadata !691), !dbg !3926
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3921, metadata !691), !dbg !3927
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3928
  %5 = load i8*, i8** %4, align 8, !dbg !3928, !tbaa !3929
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3930
  %7 = load i8*, i8** %6, align 8, !dbg !3930, !tbaa !3931
  %8 = icmp eq i8* %5, %7, !dbg !3932
  br i1 %8, label %9, label %28, !dbg !3933

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3934
  %11 = load i8*, i8** %10, align 8, !dbg !3934, !tbaa !3935
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3936
  %13 = load i8*, i8** %12, align 8, !dbg !3936, !tbaa !3937
  %14 = icmp eq i8* %11, %13, !dbg !3938
  br i1 %14, label %15, label %28, !dbg !3939

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3940
  %17 = load i8*, i8** %16, align 8, !dbg !3940, !tbaa !3941
  %18 = icmp eq i8* %17, null, !dbg !3942
  br i1 %18, label %19, label %28, !dbg !3943

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3944
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !3945
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3922, metadata !691), !dbg !3946
  %22 = icmp eq i64 %21, -1, !dbg !3947
  br i1 %22, label %30, label %23, !dbg !3949

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3950
  %25 = load i32, i32* %24, align 8, !dbg !3951, !tbaa !1100
  %26 = and i32 %25, -17, !dbg !3951
  store i32 %26, i32* %24, align 8, !dbg !3951, !tbaa !1100
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3952
  store i64 %21, i64* %27, align 8, !dbg !3953, !tbaa !3954
  br label %30, !dbg !3955

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3956
  br label %30, !dbg !3957

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3958
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3959 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3976, metadata !691), !dbg !3985
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3977, metadata !691), !dbg !3986
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3978, metadata !691), !dbg !3987
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3979, metadata !691), !dbg !3988
  %6 = bitcast i32* %5 to i8*, !dbg !3989
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3989
  %7 = icmp eq i32* %0, null, !dbg !3990
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3976, metadata !691), !dbg !3985
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3992
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3976, metadata !691), !dbg !3985
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !3993
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3980, metadata !691), !dbg !3994
  %10 = icmp ugt i64 %9, -3, !dbg !3995
  %11 = icmp ne i64 %2, 0, !dbg !3996
  %12 = and i1 %11, %10, !dbg !3997
  br i1 %12, label %13, label %18, !dbg !3997

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !3998
  br i1 %14, label %18, label %15, !dbg !3999

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4000, !tbaa !833
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3982, metadata !691), !dbg !4001
  %17 = zext i8 %16 to i32, !dbg !4002
  store i32 %17, i32* %8, align 4, !dbg !4003, !tbaa !807
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12, !dbg !4004
  ret i64 %19, !dbg !4004
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4005 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4010, metadata !691), !dbg !4013
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4011, metadata !691), !dbg !4014
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !4015
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4012, metadata !691), !dbg !4016
  %3 = icmp eq i8* %2, null, !dbg !4017
  br i1 %3, label %11, label %4, !dbg !4019

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.130, i64 0, i64 0)) #14, !dbg !4020
  %6 = icmp eq i32 %5, 0, !dbg !4025
  br i1 %6, label %10, label %7, !dbg !4026

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.131, i64 0, i64 0)) #14, !dbg !4027
  %9 = icmp eq i32 %8, 0, !dbg !4028
  br i1 %9, label %10, label %11, !dbg !4029

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4011, metadata !691), !dbg !4014
  br label %11, !dbg !4030

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4031
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4032 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4038, metadata !691), !dbg !4112
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4105, metadata !691), !dbg !4115
  %3 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !4116
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4036, metadata !691), !dbg !4117
  %4 = icmp eq i8* %3, null, !dbg !4118
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.134, i64 0, i64 0), i8* %3, !dbg !4120
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4036, metadata !691), !dbg !4117
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4121, !tbaa !698
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4052, metadata !691) #12, !dbg !4122
  %7 = icmp eq i8* %6, null, !dbg !4123
  br i1 %7, label %8, label %123, !dbg !4124

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.135, i64 0, i64 0)) #12, !dbg !4125
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4053, metadata !691) #12, !dbg !4126
  %10 = icmp eq i8* %9, null, !dbg !4127
  br i1 %10, label %14, label %11, !dbg !4129

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4130, !tbaa !833
  %13 = icmp eq i8 %12, 0, !dbg !4131
  br i1 %13, label %14, label %15, !dbg !4132

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4133

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.136, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4053, metadata !691) #12, !dbg !4126
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !4134
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4056, metadata !691) #12, !dbg !4135
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4058, metadata !691) #12, !dbg !4136
  %18 = icmp eq i64 %17, 0, !dbg !4137
  br i1 %18, label %24, label %19, !dbg !4138

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4139
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4139
  %22 = load i8, i8* %21, align 1, !dbg !4139, !tbaa !833
  %23 = icmp ne i8 %22, 47, !dbg !4139
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4140
  %27 = add i64 %17, 14, !dbg !4141
  %28 = add i64 %27, %26, !dbg !4142
  %29 = tail call noalias i8* @malloc(i64 %28) #12, !dbg !4143
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4055, metadata !691) #12, !dbg !4144
  %30 = icmp eq i8* %29, null, !dbg !4145
  br i1 %30, label %121, label %31, !dbg !4145

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #12, !dbg !4146
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4149

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4150, !tbaa !833
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4152
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.137, i64 0, i64 0), i64 14, i32 1, i1 false) #12, !dbg !4153
  br label %37, !dbg !4154

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4152
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.137, i64 0, i64 0), i64 14, i32 1, i1 false) #12, !dbg !4153
  br label %37, !dbg !4154

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #12, !dbg !4155
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4060, metadata !691) #12, !dbg !4156
  %39 = icmp slt i32 %38, 0, !dbg !4157
  br i1 %39, label %119, label %40, !dbg !4158

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.138, i64 0, i64 0)) #12, !dbg !4159
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4061, metadata !691) #12, !dbg !4160
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4161
  br i1 %42, label %43, label %45, !dbg !4162

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #12, !dbg !4163
  br label %119, !dbg !4165

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4102, metadata !691) #12, !dbg !4166
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4103, metadata !691) #12, !dbg !4167
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4168

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !4169

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4102, metadata !691) #12, !dbg !4166
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4103, metadata !691) #12, !dbg !4167
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #12, !dbg !4169
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #12, !dbg !4170
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4171, metadata !691) #12, !dbg !4176
  %54 = load i8*, i8** %48, align 8, !dbg !4178, !tbaa !3931
  %55 = load i8*, i8** %49, align 8, !dbg !4178, !tbaa !3929
  %56 = icmp ult i8* %54, %55, !dbg !4178
  br i1 %56, label %59, label %57, !dbg !4178, !prof !4179

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #12, !dbg !4178
  br label %63, !dbg !4178

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !4178
  store i8* %60, i8** %48, align 8, !dbg !4178, !tbaa !3931
  %61 = load i8, i8* %54, align 1, !dbg !4178, !tbaa !833
  %62 = zext i8 %61 to i32, !dbg !4178
  br label %63, !dbg !4178

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !4178
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !4104, metadata !691) #12, !dbg !4180
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !4181, !llvm.loop !4182

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !4187

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4171, metadata !691) #12, !dbg !4189
  %67 = load i8*, i8** %48, align 8, !dbg !4187, !tbaa !3931
  %68 = load i8*, i8** %49, align 8, !dbg !4187, !tbaa !3929
  %69 = icmp ult i8* %67, %68, !dbg !4187
  br i1 %69, label %72, label %70, !dbg !4187, !prof !4179

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #12, !dbg !4187
  br label %76, !dbg !4187

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !4187
  store i8* %73, i8** %48, align 8, !dbg !4187, !tbaa !3931
  %74 = load i8, i8* %67, align 1, !dbg !4187, !tbaa !833
  %75 = zext i8 %74 to i32, !dbg !4187
  br label %76, !dbg !4187

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !4187
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !4104, metadata !691) #12, !dbg !4180
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !4190, !llvm.loop !4191

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #12, !dbg !4194
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.139, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #12, !dbg !4195
  %81 = icmp slt i32 %80, 2, !dbg !4197
  br i1 %81, label %112, label %82, !dbg !4198

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !4199
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4109, metadata !691) #12, !dbg !4200
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !4201
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !4110, metadata !691) #12, !dbg !4202
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4111, metadata !691) #12, !dbg !4203
  %85 = icmp eq i64 %51, 0, !dbg !4204
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !4206

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !4103, metadata !691) #12, !dbg !4167
  %90 = add i64 %87, 2, !dbg !4207
  %91 = call noalias i8* @malloc(i64 %90) #12, !dbg !4209
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !4102, metadata !691) #12, !dbg !4166
  br label %96, !dbg !4210

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !4211
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !4103, metadata !691) #12, !dbg !4167
  %94 = add i64 %93, 1, !dbg !4213
  %95 = call i8* @realloc(i8* %52, i64 %94) #12, !dbg !4214
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !4102, metadata !691) #12, !dbg !4166
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4102, metadata !691) #12, !dbg !4166
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4103, metadata !691) #12, !dbg !4167
  %99 = icmp eq i8* %98, null, !dbg !4215
  br i1 %99, label %100, label %102, !dbg !4217

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4103, metadata !691) #12, !dbg !4167
  call void @free(i8* %52) #12, !dbg !4218
  br label %112, !dbg !4220

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !4221
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !4221
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !4222
  %104 = xor i64 %84, -1, !dbg !4223
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4223
  %106 = xor i64 %83, -1, !dbg !4224
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !4224
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !4225, metadata !691) #12, !dbg !4233
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !4232, metadata !691) #12, !dbg !4233
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #12, !dbg !4235
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #12, !dbg !4236
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4225, metadata !691) #12, !dbg !4237
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4232, metadata !691) #12, !dbg !4237
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #12, !dbg !4239
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #12, !dbg !4240
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4102, metadata !691) #12, !dbg !4166
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4103, metadata !691) #12, !dbg !4167
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !4221
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !4221
  br label %50, !dbg !4241, !llvm.loop !4191

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !4221
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !4221
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #12, !dbg !4242
  %116 = icmp eq i64 %113, 0, !dbg !4243
  br i1 %116, label %119, label %117, !dbg !4245

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !4246
  store i8 0, i8* %118, align 1, !dbg !4248, !tbaa !833
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.134, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.134, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.134, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !4052, metadata !691) #12, !dbg !4122
  call void @free(i8* %29) #12, !dbg !4249
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.134, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !4052, metadata !691) #12, !dbg !4122
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !4250, !tbaa !698
  br label %123, !dbg !4251

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4052, metadata !691) #12, !dbg !4122
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4037, metadata !691), !dbg !4252
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4037, metadata !691), !dbg !4252
  %125 = load i8, i8* %124, align 1, !dbg !4253, !tbaa !833
  %126 = icmp eq i8 %125, 0, !dbg !4255
  br i1 %126, label %152, label %127, !dbg !4256

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !4257

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !4037, metadata !691), !dbg !4252
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !4257
  %132 = icmp eq i32 %131, 0, !dbg !4259
  br i1 %132, label %139, label %133, !dbg !4260

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !4261
  br i1 %134, label %135, label %143, !dbg !4262

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !4263
  %137 = load i8, i8* %136, align 1, !dbg !4263, !tbaa !833
  %138 = icmp eq i8 %137, 0, !dbg !4264
  br i1 %138, label %139, label %143, !dbg !4265

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !4266
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !4268
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !4269
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !4036, metadata !691), !dbg !4117
  br label %152, !dbg !4270

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !4271
  %145 = add i64 %144, 1, !dbg !4272
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !4273
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4037, metadata !691), !dbg !4252
  %147 = call i64 @strlen(i8* %146) #14, !dbg !4274
  %148 = add i64 %147, 1, !dbg !4275
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !4276
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4037, metadata !691), !dbg !4252
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4037, metadata !691), !dbg !4252
  %150 = load i8, i8* %149, align 1, !dbg !4253, !tbaa !833
  %151 = icmp eq i8 %150, 0, !dbg !4255
  br i1 %151, label %152, label %128, !dbg !4256, !llvm.loop !4277

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4036, metadata !691), !dbg !4117
  %154 = load i8, i8* %153, align 1, !dbg !4279, !tbaa !833
  %155 = icmp eq i8 %154, 0, !dbg !4281
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.140, i64 0, i64 0), i8* %153, !dbg !4282
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !4036, metadata !691), !dbg !4117
  ret i8* %156, !dbg !4283
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.randint_source* @randint_new(%struct.randread_source*) local_unnamed_addr #6 !dbg !4284 {
  tail call void @llvm.dbg.value(metadata %struct.randread_source* %0, i64 0, metadata !4301, metadata !691), !dbg !4303
  %2 = tail call noalias i8* @xmalloc(i64 24) #12, !dbg !4304
  %3 = bitcast i8* %2 to %struct.randint_source*, !dbg !4304
  tail call void @llvm.dbg.value(metadata %struct.randint_source* %3, i64 0, metadata !4302, metadata !691), !dbg !4305
  %4 = bitcast i8* %2 to %struct.randread_source**, !dbg !4306
  store %struct.randread_source* %0, %struct.randread_source** %4, align 8, !dbg !4307, !tbaa !4308
  %5 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !4310
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 16, i32 8, i1 false), !dbg !4311
  ret %struct.randint_source* %3, !dbg !4312
}

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.randint_source* @randint_all_new(i8*, i64) local_unnamed_addr #6 !dbg !4313 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4317, metadata !691), !dbg !4320
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4318, metadata !691), !dbg !4321
  %3 = tail call %struct.randread_source* @randread_new(i8* %0, i64 %1) #12, !dbg !4322
  tail call void @llvm.dbg.value(metadata %struct.randread_source* %3, i64 0, metadata !4319, metadata !691), !dbg !4323
  %4 = icmp eq %struct.randread_source* %3, null, !dbg !4324
  br i1 %4, label %10, label %5, !dbg !4324

; <label>:5:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata %struct.randread_source* %3, i64 0, metadata !4301, metadata !691) #12, !dbg !4325
  %6 = tail call noalias i8* @xmalloc(i64 24) #12, !dbg !4327
  %7 = bitcast i8* %6 to %struct.randint_source*, !dbg !4327
  tail call void @llvm.dbg.value(metadata %struct.randint_source* %7, i64 0, metadata !4302, metadata !691) #12, !dbg !4328
  %8 = bitcast i8* %6 to %struct.randread_source**, !dbg !4329
  store %struct.randread_source* %3, %struct.randread_source** %8, align 8, !dbg !4330, !tbaa !4308
  %9 = getelementptr inbounds i8, i8* %6, i64 8, !dbg !4331
  tail call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 16, i32 8, i1 false) #12, !dbg !4332
  br label %10, !dbg !4324

; <label>:10:                                     ; preds = %2, %5
  %11 = phi %struct.randint_source* [ %7, %5 ], [ null, %2 ], !dbg !4324
  ret %struct.randint_source* %11, !dbg !4333
}

; Function Attrs: nounwind readonly sspstrong uwtable
define %struct.randread_source* @randint_get_source(%struct.randint_source* nocapture readonly) local_unnamed_addr #11 !dbg !4334 {
  tail call void @llvm.dbg.value(metadata %struct.randint_source* %0, i64 0, metadata !4340, metadata !691), !dbg !4341
  %2 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 0, !dbg !4342
  %3 = load %struct.randread_source*, %struct.randread_source** %2, align 8, !dbg !4342, !tbaa !4308
  ret %struct.randread_source* %3, !dbg !4343
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @randint_genmax(%struct.randint_source* nocapture, i64) local_unnamed_addr #6 !dbg !4344 {
  %3 = alloca [8 x i8], align 1
  tail call void @llvm.dbg.value(metadata %struct.randint_source* %0, i64 0, metadata !4348, metadata !691), !dbg !4367
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4349, metadata !691), !dbg !4368
  %4 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 0, !dbg !4369
  %5 = load %struct.randread_source*, %struct.randread_source** %4, align 8, !dbg !4369, !tbaa !4308
  tail call void @llvm.dbg.value(metadata %struct.randread_source* %5, i64 0, metadata !4350, metadata !691), !dbg !4370
  %6 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 1, !dbg !4371
  %7 = load i64, i64* %6, align 8, !dbg !4371, !tbaa !4372
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4351, metadata !691), !dbg !4373
  %8 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 2, !dbg !4374
  %9 = load i64, i64* %8, align 8, !dbg !4374, !tbaa !4375
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4352, metadata !691), !dbg !4376
  %10 = add i64 %1, 1, !dbg !4377
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !4353, metadata !691), !dbg !4378
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  br label %12, !dbg !4379

; <label>:12:                                     ; preds = %45, %2
  %13 = phi i64 [ %9, %2 ], [ %51, %45 ]
  %14 = phi i64 [ %7, %2 ], [ %49, %45 ]
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4351, metadata !691), !dbg !4373
  call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4352, metadata !691), !dbg !4376
  %15 = icmp ult i64 %13, %1, !dbg !4380
  br i1 %15, label %16, label %39, !dbg !4381

; <label>:16:                                     ; preds = %12
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4354, metadata !691), !dbg !4382
  call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4358, metadata !691), !dbg !4383
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #12, !dbg !4384
  call void @llvm.dbg.declare(metadata [8 x i8]* %3, metadata !4359, metadata !691), !dbg !4385
  br label %17, !dbg !4386, !llvm.loop !4387

; <label>:17:                                     ; preds = %17, %16
  %18 = phi i64 [ %13, %16 ], [ %21, %17 ]
  %19 = phi i64 [ 0, %16 ], [ %22, %17 ]
  call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !4354, metadata !691), !dbg !4382
  call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !4358, metadata !691), !dbg !4383
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !4389, metadata !691), !dbg !4394
  %20 = shl i64 %18, 8, !dbg !4397
  %21 = or i64 %20, 255, !dbg !4398
  call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4358, metadata !691), !dbg !4383
  %22 = add i64 %19, 1, !dbg !4399
  call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !4354, metadata !691), !dbg !4382
  %23 = icmp ult i64 %21, %1, !dbg !4400
  br i1 %23, label %17, label %24, !dbg !4401, !llvm.loop !4387

; <label>:24:                                     ; preds = %17
  call void @randread(%struct.randread_source* %5, i8* nonnull %11, i64 %22) #12, !dbg !4402
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4354, metadata !691), !dbg !4382
  br label %25, !dbg !4403, !llvm.loop !4404

; <label>:25:                                     ; preds = %25, %24
  %26 = phi i64 [ 0, %24 ], [ %36, %25 ]
  %27 = phi i64 [ %13, %24 ], [ %35, %25 ]
  %28 = phi i64 [ %14, %24 ], [ %33, %25 ]
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4351, metadata !691), !dbg !4373
  call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !4352, metadata !691), !dbg !4376
  call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !4354, metadata !691), !dbg !4382
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4389, metadata !691), !dbg !4406
  %29 = shl i64 %28, 8, !dbg !4409
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 %26, !dbg !4410
  %31 = load i8, i8* %30, align 1, !dbg !4410, !tbaa !833
  %32 = zext i8 %31 to i64, !dbg !4410
  %33 = or i64 %29, %32, !dbg !4411
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !4351, metadata !691), !dbg !4373
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !4389, metadata !691), !dbg !4412
  %34 = shl i64 %27, 8, !dbg !4414
  %35 = or i64 %34, 255, !dbg !4415
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !4352, metadata !691), !dbg !4376
  %36 = add i64 %26, 1, !dbg !4416
  call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !4354, metadata !691), !dbg !4382
  %37 = icmp ult i64 %35, %1, !dbg !4417
  br i1 %37, label %25, label %38, !dbg !4418, !llvm.loop !4404

; <label>:38:                                     ; preds = %25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #12, !dbg !4419
  br label %39, !dbg !4420

; <label>:39:                                     ; preds = %38, %12
  %40 = phi i64 [ %35, %38 ], [ %13, %12 ]
  %41 = phi i64 [ %33, %38 ], [ %14, %12 ]
  call void @llvm.dbg.value(metadata i64 %41, i64 0, metadata !4351, metadata !691), !dbg !4373
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !4352, metadata !691), !dbg !4376
  %42 = icmp eq i64 %40, %1, !dbg !4421
  br i1 %42, label %43, label %45, !dbg !4422

; <label>:43:                                     ; preds = %39
  %44 = bitcast i64* %6 to i8*, !dbg !4423
  call void @llvm.memset.p0i8.i64(i8* %44, i8 0, i64 16, i32 8, i1 false), !dbg !4425
  br label %55, !dbg !4423

; <label>:45:                                     ; preds = %39
  %46 = sub i64 %40, %1, !dbg !4426
  call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !4361, metadata !691), !dbg !4427
  %47 = urem i64 %46, %10, !dbg !4428
  call void @llvm.dbg.value(metadata i64 %47, i64 0, metadata !4364, metadata !691), !dbg !4429
  %48 = sub i64 %40, %47, !dbg !4430
  call void @llvm.dbg.value(metadata i64 %48, i64 0, metadata !4365, metadata !691), !dbg !4431
  %49 = urem i64 %41, %10, !dbg !4432
  call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !4366, metadata !691), !dbg !4433
  %50 = icmp ugt i64 %41, %48, !dbg !4434
  call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !4351, metadata !691), !dbg !4373
  %51 = add i64 %47, -1, !dbg !4436
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4352, metadata !691), !dbg !4376
  call void @llvm.dbg.value(metadata i64 %41, i64 0, metadata !4351, metadata !691), !dbg !4373
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !4352, metadata !691), !dbg !4376
  br i1 %50, label %12, label %52, !dbg !4437, !llvm.loop !4438

; <label>:52:                                     ; preds = %45
  %53 = udiv i64 %41, %10, !dbg !4440
  store i64 %53, i64* %6, align 8, !dbg !4442, !tbaa !4372
  %54 = udiv i64 %46, %10, !dbg !4443
  store i64 %54, i64* %8, align 8, !dbg !4444, !tbaa !4375
  call void @llvm.dbg.value(metadata i64 %41, i64 0, metadata !4351, metadata !691), !dbg !4373
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !4352, metadata !691), !dbg !4376
  br label %55

; <label>:55:                                     ; preds = %52, %43
  %56 = phi i64 [ %41, %43 ], [ %49, %52 ]
  ret i64 %56, !dbg !4445
}

; Function Attrs: nounwind sspstrong uwtable
define void @randint_free(%struct.randint_source* nocapture) local_unnamed_addr #6 !dbg !4446 {
  tail call void @llvm.dbg.value(metadata %struct.randint_source* %0, i64 0, metadata !4450, metadata !691), !dbg !4451
  %2 = bitcast %struct.randint_source* %0 to i8*, !dbg !4452
  tail call void @free(i8* %2) #12, !dbg !4453
  ret void, !dbg !4454
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @randint_all_free(%struct.randint_source* nocapture) local_unnamed_addr #6 !dbg !4455 {
  tail call void @llvm.dbg.value(metadata %struct.randint_source* %0, i64 0, metadata !4459, metadata !691), !dbg !4462
  %2 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 0, !dbg !4463
  %3 = load %struct.randread_source*, %struct.randread_source** %2, align 8, !dbg !4463, !tbaa !4308
  %4 = tail call i32 @randread_free(%struct.randread_source* %3) #12, !dbg !4464
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !4460, metadata !691), !dbg !4465
  %5 = tail call i32* @__errno_location() #17, !dbg !4466
  %6 = load i32, i32* %5, align 4, !dbg !4466, !tbaa !807
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !4461, metadata !691), !dbg !4467
  tail call void @llvm.dbg.value(metadata %struct.randint_source* %0, i64 0, metadata !4450, metadata !691) #12, !dbg !4468
  %7 = bitcast %struct.randint_source* %0 to i8*, !dbg !4470
  tail call void @free(i8* %7) #12, !dbg !4471
  store i32 %6, i32* %5, align 4, !dbg !4472, !tbaa !807
  ret i32 %4, !dbg !4473
}

; Function Attrs: nounwind sspstrong uwtable
define %struct.randread_source* @randread_new(i8*, i64) local_unnamed_addr #6 !dbg !4474 {
  %3 = alloca %struct.timespec, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4554, metadata !691), !dbg !4560
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4555, metadata !691), !dbg !4561
  %8 = icmp eq i64 %1, 0, !dbg !4562
  br i1 %8, label %9, label %17, !dbg !4563

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* null, i64 0, metadata !4564, metadata !691) #12, !dbg !4571
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4569, metadata !691) #12, !dbg !4573
  %10 = tail call noalias i8* @xmalloc(i64 4152) #12, !dbg !4574
  %11 = bitcast i8* %10 to %struct.randread_source*, !dbg !4574
  tail call void @llvm.dbg.value(metadata %struct.randread_source* %11, i64 0, metadata !4570, metadata !691) #12, !dbg !4575
  %12 = bitcast i8* %10 to %struct._IO_FILE**, !dbg !4576
  store %struct._IO_FILE* null, %struct._IO_FILE** %12, align 8, !dbg !4577, !tbaa !4578
  %13 = getelementptr inbounds i8, i8* %10, i64 8, !dbg !4580
  %14 = bitcast i8* %13 to void (i8*)**, !dbg !4580
  store void (i8*)* @randread_error, void (i8*)** %14, align 8, !dbg !4581, !tbaa !4582
  %15 = getelementptr inbounds i8, i8* %10, i64 16, !dbg !4583
  %16 = bitcast i8* %15 to i8**, !dbg !4583
  store i8* null, i8** %16, align 8, !dbg !4584, !tbaa !4585
  br label %96, !dbg !4586

; <label>:17:                                     ; preds = %2
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* null, i64 0, metadata !4556, metadata !691), !dbg !4587
  %18 = icmp eq i8* %0, null, !dbg !4588
  br i1 %18, label %22, label %19, !dbg !4590

; <label>:19:                                     ; preds = %17
  %20 = tail call %struct._IO_FILE* @fopen_safer(i8* nonnull %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.149, i64 0, i64 0)) #12, !dbg !4591
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %20, i64 0, metadata !4556, metadata !691), !dbg !4587
  %21 = icmp eq %struct._IO_FILE* %20, null, !dbg !4593
  br i1 %21, label %96, label %22, !dbg !4594

; <label>:22:                                     ; preds = %19, %17
  %23 = phi %struct._IO_FILE* [ %20, %19 ], [ null, %17 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, i64 0, metadata !4556, metadata !691), !dbg !4587
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, i64 0, metadata !4564, metadata !691) #12, !dbg !4595
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4569, metadata !691) #12, !dbg !4597
  %24 = tail call noalias i8* @xmalloc(i64 4152) #12, !dbg !4598
  %25 = bitcast i8* %24 to %struct.randread_source*, !dbg !4598
  tail call void @llvm.dbg.value(metadata %struct.randread_source* %25, i64 0, metadata !4570, metadata !691) #12, !dbg !4599
  %26 = bitcast i8* %24 to %struct._IO_FILE**, !dbg !4600
  store %struct._IO_FILE* %23, %struct._IO_FILE** %26, align 8, !dbg !4601, !tbaa !4578
  %27 = getelementptr inbounds i8, i8* %24, i64 8, !dbg !4602
  %28 = bitcast i8* %27 to void (i8*)**, !dbg !4602
  store void (i8*)* @randread_error, void (i8*)** %28, align 8, !dbg !4603, !tbaa !4582
  %29 = getelementptr inbounds i8, i8* %24, i64 16, !dbg !4604
  %30 = bitcast i8* %29 to i8**, !dbg !4604
  store i8* %0, i8** %30, align 8, !dbg !4605, !tbaa !4585
  tail call void @llvm.dbg.value(metadata %struct.randread_source* %25, i64 0, metadata !4559, metadata !691), !dbg !4606
  %31 = icmp eq %struct._IO_FILE* %23, null, !dbg !4607
  %32 = getelementptr inbounds i8, i8* %24, i64 24
  br i1 %31, label %37, label %33, !dbg !4609

; <label>:33:                                     ; preds = %22
  %34 = icmp ult i64 %1, 4096, !dbg !4610
  %35 = select i1 %34, i64 %1, i64 4096, !dbg !4610
  %36 = tail call i32 @setvbuf(%struct._IO_FILE* nonnull %23, i8* %32, i32 0, i64 %35) #12, !dbg !4611
  br label %96, !dbg !4611

; <label>:37:                                     ; preds = %22
  %38 = bitcast i8* %32 to i64*, !dbg !4612
  store i64 0, i64* %38, align 8, !dbg !4614, !tbaa !833
  %39 = getelementptr inbounds i8, i8* %24, i64 32, !dbg !4615
  %40 = bitcast i8* %39 to %struct.isaac_state*, !dbg !4615
  tail call void @llvm.dbg.value(metadata i64 2048, i64 0, metadata !4616, metadata !691) #12, !dbg !4658
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4624, metadata !691) #12, !dbg !4660
  %41 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.150, i64 0, i64 0), i32 0) #12, !dbg !4661
  tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !4628, metadata !691) #12, !dbg !4662
  %42 = icmp sgt i32 %41, -1, !dbg !4663
  br i1 %42, label %43, label %51, !dbg !4665

; <label>:43:                                     ; preds = %37
  %44 = icmp ult i64 %1, 2048, !dbg !4666
  %45 = select i1 %44, i64 %1, i64 2048, !dbg !4666
  %46 = tail call i64 @read(i32 %41, i8* %39, i64 %45) #12, !dbg !4668
  tail call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !4624, metadata !691) #12, !dbg !4660
  %47 = icmp sgt i64 %46, 0, !dbg !4669
  %48 = tail call i32 @close(i32 %41) #12, !dbg !4670
  br i1 %47, label %49, label %51

; <label>:49:                                     ; preds = %43
  tail call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !4624, metadata !691) #12, !dbg !4660
  %50 = icmp ult i64 %46, 2048, !dbg !4671
  br i1 %50, label %51, label %95, !dbg !4672

; <label>:51:                                     ; preds = %49, %43, %37
  %52 = phi i64 [ %46, %49 ], [ 0, %43 ], [ 0, %37 ]
  %53 = bitcast %struct.timespec* %3 to i8*, !dbg !4673
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %53) #12, !dbg !4673
  %54 = sub nsw i64 2048, %52, !dbg !4673
  %55 = icmp ult i64 %54, 16, !dbg !4673
  %56 = select i1 %55, i64 %54, i64 16, !dbg !4673
  tail call void @llvm.dbg.value(metadata i64 %56, i64 0, metadata !4638, metadata !691) #12, !dbg !4673
  tail call void @llvm.dbg.value(metadata %struct.timespec* %3, i64 0, metadata !4629, metadata !691) #12, !dbg !4673
  %57 = call i32 @gettimeofday(%struct.timespec* nonnull %3, %struct.timezone* null) #12, !dbg !4673
  %58 = getelementptr inbounds i8, i8* %39, i64 %52, !dbg !4673
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* nonnull %53, i64 %56, i32 1, i1 false) #12, !dbg !4673
  %59 = add i64 %56, %52, !dbg !4673
  tail call void @llvm.dbg.value(metadata i64 %59, i64 0, metadata !4624, metadata !691) #12, !dbg !4660
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %53) #12, !dbg !4671
  tail call void @llvm.dbg.value(metadata i64 %59, i64 0, metadata !4624, metadata !691) #12, !dbg !4660
  %60 = icmp ult i64 %59, 2048, !dbg !4674
  br i1 %60, label %61, label %95, !dbg !4675

; <label>:61:                                     ; preds = %51
  %62 = bitcast i32* %4 to i8*, !dbg !4676
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %62), !dbg !4676
  %63 = sub i64 2048, %59, !dbg !4676
  %64 = icmp ult i64 %63, 4, !dbg !4676
  %65 = select i1 %64, i64 %63, i64 4, !dbg !4676
  tail call void @llvm.dbg.value(metadata i64 %65, i64 0, metadata !4644, metadata !691) #12, !dbg !4676
  %66 = tail call i32 @getpid() #12, !dbg !4676
  tail call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !4639, metadata !691) #12, !dbg !4676
  store i32 %66, i32* %4, align 4, !dbg !4676
  %67 = getelementptr inbounds i8, i8* %39, i64 %59, !dbg !4676
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* nonnull %62, i64 %65, i32 1, i1 false) #12, !dbg !4676
  %68 = add i64 %65, %59, !dbg !4676
  tail call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !4624, metadata !691) #12, !dbg !4660
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %62), !dbg !4674
  tail call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !4624, metadata !691) #12, !dbg !4660
  %69 = icmp ult i64 %68, 2048, !dbg !4677
  br i1 %69, label %70, label %95, !dbg !4678

; <label>:70:                                     ; preds = %61
  %71 = bitcast i32* %5 to i8*, !dbg !4679
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %71), !dbg !4679
  %72 = sub i64 2048, %68, !dbg !4679
  %73 = icmp ult i64 %72, 4, !dbg !4679
  %74 = select i1 %73, i64 %72, i64 4, !dbg !4679
  tail call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !4648, metadata !691) #12, !dbg !4679
  %75 = tail call i32 @getppid() #12, !dbg !4679
  tail call void @llvm.dbg.value(metadata i32 %75, i64 0, metadata !4645, metadata !691) #12, !dbg !4679
  store i32 %75, i32* %5, align 4, !dbg !4679
  %76 = getelementptr inbounds i8, i8* %39, i64 %68, !dbg !4679
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* nonnull %71, i64 %74, i32 1, i1 false) #12, !dbg !4679
  %77 = add i64 %74, %68, !dbg !4679
  tail call void @llvm.dbg.value(metadata i64 %77, i64 0, metadata !4624, metadata !691) #12, !dbg !4660
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %71), !dbg !4677
  tail call void @llvm.dbg.value(metadata i64 %77, i64 0, metadata !4624, metadata !691) #12, !dbg !4660
  %78 = icmp ult i64 %77, 2048, !dbg !4680
  br i1 %78, label %79, label %95, !dbg !4681

; <label>:79:                                     ; preds = %70
  %80 = bitcast i32* %6 to i8*, !dbg !4682
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %80), !dbg !4682
  %81 = sub i64 2048, %77, !dbg !4682
  %82 = icmp ult i64 %81, 4, !dbg !4682
  %83 = select i1 %82, i64 %81, i64 4, !dbg !4682
  tail call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4653, metadata !691) #12, !dbg !4682
  %84 = tail call i32 @getuid() #12, !dbg !4682
  tail call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !4649, metadata !691) #12, !dbg !4682
  store i32 %84, i32* %6, align 4, !dbg !4682
  %85 = getelementptr inbounds i8, i8* %39, i64 %77, !dbg !4682
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* nonnull %80, i64 %83, i32 1, i1 false) #12, !dbg !4682
  %86 = add i64 %83, %77, !dbg !4682
  tail call void @llvm.dbg.value(metadata i64 %86, i64 0, metadata !4624, metadata !691) #12, !dbg !4660
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %80), !dbg !4680
  tail call void @llvm.dbg.value(metadata i64 %86, i64 0, metadata !4624, metadata !691) #12, !dbg !4660
  %87 = icmp ult i64 %86, 2048, !dbg !4683
  br i1 %87, label %88, label %95, !dbg !4684

; <label>:88:                                     ; preds = %79
  %89 = bitcast i32* %7 to i8*, !dbg !4685
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %89), !dbg !4685
  %90 = sub i64 2048, %86, !dbg !4685
  %91 = icmp ult i64 %90, 4, !dbg !4685
  %92 = select i1 %91, i64 %90, i64 4, !dbg !4685
  tail call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !4657, metadata !691) #12, !dbg !4685
  %93 = tail call i32 @getgid() #12, !dbg !4685
  tail call void @llvm.dbg.value(metadata i32 %93, i64 0, metadata !4654, metadata !691) #12, !dbg !4685
  store i32 %93, i32* %7, align 4, !dbg !4685
  %94 = getelementptr inbounds i8, i8* %39, i64 %86, !dbg !4685
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* nonnull %89, i64 %92, i32 1, i1 false) #12, !dbg !4685
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %89), !dbg !4683
  br label %95, !dbg !4685

; <label>:95:                                     ; preds = %49, %51, %61, %70, %79, %88
  tail call void @isaac_seed(%struct.isaac_state* %40) #12, !dbg !4686
  br label %96

; <label>:96:                                     ; preds = %19, %95, %33, %9
  %97 = phi %struct.randread_source* [ %11, %9 ], [ null, %19 ], [ %25, %95 ], [ %25, %33 ]
  ret %struct.randread_source* %97, !dbg !4687
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal void @randread_error(i8*) #0 !dbg !4688 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4690, metadata !691), !dbg !4691
  %2 = icmp eq i8* %0, null, !dbg !4692
  br i1 %2, label %11, label %3, !dbg !4694

; <label>:3:                                      ; preds = %1
  %4 = load volatile i32, i32* @exit_failure, align 4, !dbg !4695, !tbaa !807
  %5 = tail call i32* @__errno_location() #17, !dbg !4696
  %6 = load i32, i32* %5, align 4, !dbg !4696, !tbaa !807
  %7 = icmp eq i32 %6, 0, !dbg !4697
  %8 = select i1 %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.151, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2.152, i64 0, i64 0), !dbg !4698
  %9 = tail call i8* @dcgettext(i8* null, i8* %8, i32 5) #12, !dbg !4699
  %10 = tail call i8* @quote(i8* nonnull %0) #12, !dbg !4700
  tail call void (i32, i32, i8*, ...) @error(i32 %4, i32 %6, i8* %9, i8* %10) #12, !dbg !4701
  br label %11, !dbg !4701

; <label>:11:                                     ; preds = %1, %3
  tail call void @abort() #15, !dbg !4702
  unreachable, !dbg !4702
}

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE* nocapture, i8*, i32, i64) local_unnamed_addr #2

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timespec* nocapture, %struct.timezone* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getppid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getgid() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @randread_set_handler(%struct.randread_source* nocapture, void (i8*)*) local_unnamed_addr #6 !dbg !4703 {
  tail call void @llvm.dbg.value(metadata %struct.randread_source* %0, i64 0, metadata !4707, metadata !691), !dbg !4709
  tail call void @llvm.dbg.value(metadata void (i8*)* %1, i64 0, metadata !4708, metadata !691), !dbg !4710
  %3 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 1, !dbg !4711
  store void (i8*)* %1, void (i8*)** %3, align 8, !dbg !4712, !tbaa !4582
  ret void, !dbg !4713
}

; Function Attrs: nounwind sspstrong uwtable
define void @randread_set_handler_arg(%struct.randread_source* nocapture, i8*) local_unnamed_addr #6 !dbg !4714 {
  tail call void @llvm.dbg.value(metadata %struct.randread_source* %0, i64 0, metadata !4718, metadata !691), !dbg !4720
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4719, metadata !691), !dbg !4721
  %3 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 2, !dbg !4722
  store i8* %1, i8** %3, align 8, !dbg !4723, !tbaa !4585
  ret void, !dbg !4724
}

; Function Attrs: nounwind sspstrong uwtable
define void @randread(%struct.randread_source*, i8*, i64) local_unnamed_addr #6 !dbg !4725 {
  tail call void @llvm.dbg.value(metadata %struct.randread_source* %0, i64 0, metadata !4729, metadata !691), !dbg !4732
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4730, metadata !691), !dbg !4733
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4731, metadata !691), !dbg !4734
  %4 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 0, !dbg !4735
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !4735, !tbaa !4578
  %6 = icmp eq %struct._IO_FILE* %5, null, !dbg !4737
  br i1 %6, label %33, label %7, !dbg !4738

; <label>:7:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct.randread_source* %0, i64 0, metadata !4739, metadata !691) #12, !dbg !4749
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4744, metadata !691) #12, !dbg !4751
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4745, metadata !691) #12, !dbg !4752
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4744, metadata !691) #12, !dbg !4751
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4745, metadata !691) #12, !dbg !4752
  %8 = tail call i64 @fread_unlocked(i8* %1, i64 1, i64 %2, %struct._IO_FILE* nonnull %5) #12, !dbg !4753
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4746, metadata !691) #12, !dbg !4754
  %9 = tail call i32* @__errno_location() #17, !dbg !4755
  %10 = sub i64 %2, %8, !dbg !4756
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !4745, metadata !691) #12, !dbg !4752
  %11 = icmp eq i64 %10, 0, !dbg !4757
  br i1 %11, label %82, label %12, !dbg !4759

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 1
  %14 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 2
  br label %15, !dbg !4759

; <label>:15:                                     ; preds = %15, %12
  %16 = phi i64 [ %10, %12 ], [ %31, %15 ]
  %17 = phi i64 [ %8, %12 ], [ %30, %15 ]
  %18 = phi i8* [ %1, %12 ], [ %19, %15 ]
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !4744, metadata !691) #12, !dbg !4751
  %19 = getelementptr inbounds i8, i8* %18, i64 %17, !dbg !4760
  %20 = load i32, i32* %9, align 4, !dbg !4755, !tbaa !807
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !4761, !tbaa !4578
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %21, i64 0, metadata !4762, metadata !691) #12, !dbg !4767
  %22 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %21, i64 0, i32 0, !dbg !4769
  %23 = load i32, i32* %22, align 8, !dbg !4769, !tbaa !1100
  %24 = and i32 %23, 32, !dbg !4769
  %25 = icmp eq i32 %24, 0, !dbg !4761
  %26 = select i1 %25, i32 0, i32 %20, !dbg !4761
  store i32 %26, i32* %9, align 4, !dbg !4770, !tbaa !807
  %27 = load void (i8*)*, void (i8*)** %13, align 8, !dbg !4771, !tbaa !4582
  %28 = load i8*, i8** %14, align 8, !dbg !4772, !tbaa !4585
  tail call void %27(i8* %28) #12, !dbg !4773
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4744, metadata !691) #12, !dbg !4751
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !4745, metadata !691) #12, !dbg !4752
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !4753, !tbaa !4578
  %30 = tail call i64 @fread_unlocked(i8* %19, i64 1, i64 %16, %struct._IO_FILE* %29) #12, !dbg !4753
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !4746, metadata !691) #12, !dbg !4754
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4748, metadata !691) #12, !dbg !4774
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4744, metadata !691) #12, !dbg !4751
  %31 = sub i64 %16, %30, !dbg !4756
  tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !4745, metadata !691) #12, !dbg !4752
  %32 = icmp eq i64 %31, 0, !dbg !4757
  br i1 %32, label %82, label %15, !dbg !4759, !llvm.loop !4775

; <label>:33:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct.randread_source* %0, i64 0, metadata !4778, metadata !4792) #12, !dbg !4793
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4784, metadata !691) #12, !dbg !4795
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4785, metadata !691) #12, !dbg !4796
  %34 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 3, i32 0, i32 0, !dbg !4797
  %35 = load i64, i64* %34, align 8, !dbg !4797, !tbaa !4798
  tail call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !4786, metadata !691) #12, !dbg !4801
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4784, metadata !691) #12, !dbg !4795
  tail call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !4786, metadata !691) #12, !dbg !4801
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4785, metadata !691) #12, !dbg !4796
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4787, metadata !691) #12, !dbg !4802
  %36 = icmp ult i64 %35, %2, !dbg !4803
  %37 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 3, i32 0, i32 2
  %38 = getelementptr inbounds %union.anon.0, %union.anon.0* %37, i64 1
  %39 = bitcast %union.anon.0* %38 to i8*
  %40 = sub i64 0, %35
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  br i1 %36, label %42, label %46, !dbg !4805

; <label>:42:                                     ; preds = %33
  %43 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 3, i32 0, i32 1
  %44 = getelementptr inbounds %union.anon.0, %union.anon.0* %37, i64 0, i32 0, i64 0
  %45 = bitcast %union.anon.0* %37 to i8*
  br label %52, !dbg !4805

; <label>:46:                                     ; preds = %78, %74, %33
  %47 = phi i64 [ %2, %33 ], [ %75, %74 ], [ %58, %78 ]
  %48 = phi i64 [ %35, %33 ], [ 2048, %74 ], [ 2048, %78 ]
  %49 = phi i8* [ %1, %33 ], [ %77, %74 ], [ %57, %78 ]
  %50 = phi i8* [ %41, %33 ], [ %45, %74 ], [ %45, %78 ]
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 %47, i32 1, i1 false) #12, !dbg !4806
  %51 = sub i64 %48, %47, !dbg !4808
  br label %80, !dbg !4809

; <label>:52:                                     ; preds = %78, %42
  %53 = phi i8* [ %41, %42 ], [ %45, %78 ]
  %54 = phi i8* [ %1, %42 ], [ %57, %78 ]
  %55 = phi i64 [ %35, %42 ], [ 2048, %78 ]
  %56 = phi i64 [ %2, %42 ], [ %58, %78 ]
  tail call void @llvm.dbg.value(metadata i64 %56, i64 0, metadata !4785, metadata !691) #12, !dbg !4796
  tail call void @llvm.dbg.value(metadata i64 %55, i64 0, metadata !4786, metadata !691) #12, !dbg !4801
  tail call void @llvm.dbg.value(metadata i8* %54, i64 0, metadata !4784, metadata !691) #12, !dbg !4795
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %53, i64 %55, i32 1, i1 false) #12, !dbg !4810
  %57 = getelementptr inbounds i8, i8* %54, i64 %55, !dbg !4811
  tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !4784, metadata !691) #12, !dbg !4795
  %58 = sub i64 %56, %55, !dbg !4812
  tail call void @llvm.dbg.value(metadata i64 %58, i64 0, metadata !4785, metadata !691) #12, !dbg !4796
  %59 = ptrtoint i8* %57 to i64, !dbg !4813
  %60 = and i64 %59, 7, !dbg !4813
  %61 = icmp eq i64 %60, 0, !dbg !4813
  br i1 %61, label %62, label %78, !dbg !4814

; <label>:62:                                     ; preds = %52
  %63 = bitcast i8* %57 to i64*, !dbg !4815
  tail call void @llvm.dbg.value(metadata i64* %63, i64 0, metadata !4789, metadata !691) #12, !dbg !4816
  tail call void @llvm.dbg.value(metadata i64* %63, i64 0, metadata !4789, metadata !691) #12, !dbg !4816
  tail call void @llvm.dbg.value(metadata i64 %58, i64 0, metadata !4785, metadata !691) #12, !dbg !4796
  %64 = icmp ugt i64 %58, 2047, !dbg !4817
  br i1 %64, label %65, label %74, !dbg !4818

; <label>:65:                                     ; preds = %62
  br label %66, !dbg !4819

; <label>:66:                                     ; preds = %65, %71
  %67 = phi i64* [ %72, %71 ], [ %63, %65 ]
  %68 = phi i64 [ %69, %71 ], [ %58, %65 ]
  tail call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !4785, metadata !691) #12, !dbg !4796
  tail call void @llvm.dbg.value(metadata i64* %67, i64 0, metadata !4789, metadata !691) #12, !dbg !4816
  tail call void @isaac_refill(%struct.isaac_state* %43, i64* %67) #12, !dbg !4819
  %69 = add i64 %68, -2048, !dbg !4821
  tail call void @llvm.dbg.value(metadata i64 %69, i64 0, metadata !4785, metadata !691) #12, !dbg !4796
  %70 = icmp eq i64 %69, 0, !dbg !4822
  br i1 %70, label %80, label %71, !dbg !4824

; <label>:71:                                     ; preds = %66
  %72 = getelementptr inbounds i64, i64* %67, i64 256, !dbg !4825
  tail call void @llvm.dbg.value(metadata i64* %72, i64 0, metadata !4789, metadata !691) #12, !dbg !4816
  tail call void @llvm.dbg.value(metadata i64 %69, i64 0, metadata !4785, metadata !691) #12, !dbg !4796
  %73 = icmp ugt i64 %69, 2047, !dbg !4817
  br i1 %73, label %66, label %74, !dbg !4818, !llvm.loop !4826

; <label>:74:                                     ; preds = %71, %62
  %75 = phi i64 [ %58, %62 ], [ %69, %71 ]
  %76 = phi i64* [ %63, %62 ], [ %72, %71 ]
  %77 = bitcast i64* %76 to i8*, !dbg !4829
  tail call void @llvm.dbg.value(metadata i8* %77, i64 0, metadata !4784, metadata !691) #12, !dbg !4795
  tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !4784, metadata !691) #12, !dbg !4795
  tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !4784, metadata !691) #12, !dbg !4795
  tail call void @llvm.dbg.value(metadata i64 %58, i64 0, metadata !4785, metadata !691) #12, !dbg !4796
  tail call void @isaac_refill(%struct.isaac_state* %43, i64* %44) #12, !dbg !4830
  tail call void @llvm.dbg.value(metadata i64 2048, i64 0, metadata !4786, metadata !691) #12, !dbg !4801
  tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !4784, metadata !691) #12, !dbg !4795
  tail call void @llvm.dbg.value(metadata i64 2048, i64 0, metadata !4786, metadata !691) #12, !dbg !4801
  tail call void @llvm.dbg.value(metadata i64 %58, i64 0, metadata !4785, metadata !691) #12, !dbg !4796
  tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !4784, metadata !691) #12, !dbg !4795
  tail call void @llvm.dbg.value(metadata i64 2048, i64 0, metadata !4786, metadata !691) #12, !dbg !4801
  tail call void @llvm.dbg.value(metadata i64 %58, i64 0, metadata !4785, metadata !691) #12, !dbg !4796
  tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !4787, metadata !691) #12, !dbg !4802
  br label %46, !dbg !4805

; <label>:78:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !4784, metadata !691) #12, !dbg !4795
  tail call void @llvm.dbg.value(metadata i64 %58, i64 0, metadata !4785, metadata !691) #12, !dbg !4796
  tail call void @isaac_refill(%struct.isaac_state* %43, i64* %44) #12, !dbg !4830
  tail call void @llvm.dbg.value(metadata i64 2048, i64 0, metadata !4786, metadata !691) #12, !dbg !4801
  tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !4784, metadata !691) #12, !dbg !4795
  tail call void @llvm.dbg.value(metadata i64 2048, i64 0, metadata !4786, metadata !691) #12, !dbg !4801
  tail call void @llvm.dbg.value(metadata i64 %58, i64 0, metadata !4785, metadata !691) #12, !dbg !4796
  tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !4784, metadata !691) #12, !dbg !4795
  tail call void @llvm.dbg.value(metadata i64 2048, i64 0, metadata !4786, metadata !691) #12, !dbg !4801
  tail call void @llvm.dbg.value(metadata i64 %58, i64 0, metadata !4785, metadata !691) #12, !dbg !4796
  tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !4787, metadata !691) #12, !dbg !4802
  %79 = icmp ugt i64 %58, 2048, !dbg !4803
  br i1 %79, label %52, label %46, !dbg !4805, !llvm.loop !4831

; <label>:80:                                     ; preds = %66, %46
  %81 = phi i64 [ %51, %46 ], [ 0, %66 ]
  store i64 %81, i64* %34, align 8, !tbaa !4798
  tail call void @llvm.dbg.value(metadata i64 2048, i64 0, metadata !4786, metadata !691) #12, !dbg !4801
  br label %82

; <label>:82:                                     ; preds = %15, %7, %80
  ret void, !dbg !4834
}

declare i64 @fread_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @randread_free(%struct.randread_source* nocapture) local_unnamed_addr #6 !dbg !4835 {
  tail call void @llvm.dbg.value(metadata %struct.randread_source* %0, i64 0, metadata !4839, metadata !691), !dbg !4841
  %2 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 0, !dbg !4842
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4842, !tbaa !4578
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, i64 0, metadata !4840, metadata !691), !dbg !4843
  %4 = bitcast %struct.randread_source* %0 to i8*, !dbg !4844
  tail call void @free(i8* %4) #12, !dbg !4845
  %5 = icmp eq %struct._IO_FILE* %3, null, !dbg !4846
  br i1 %5, label %8, label %6, !dbg !4846

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #12, !dbg !4847
  br label %8, !dbg !4846

; <label>:8:                                      ; preds = %1, %6
  %9 = phi i32 [ %7, %6 ], [ 0, %1 ], !dbg !4846
  ret i32 %9, !dbg !4848
}

; Function Attrs: nounwind sspstrong uwtable
define void @isaac_refill(%struct.isaac_state*, i64* nocapture) local_unnamed_addr #6 !dbg !624 {
  tail call void @llvm.dbg.value(metadata %struct.isaac_state* %0, i64 0, metadata !641, metadata !691), !dbg !4849
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !642, metadata !691), !dbg !4850
  %3 = ptrtoint %struct.isaac_state* %0 to i64
  %4 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 1, !dbg !4851
  %5 = load i64, i64* %4, align 8, !dbg !4851, !tbaa !4852
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !643, metadata !691), !dbg !4853
  %6 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 2, !dbg !4854
  %7 = load i64, i64* %6, align 8, !dbg !4854, !tbaa !4855
  %8 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 3, !dbg !4856
  %9 = load i64, i64* %8, align 8, !dbg !4857, !tbaa !4858
  %10 = add i64 %9, 1, !dbg !4857
  store i64 %10, i64* %8, align 8, !dbg !4857, !tbaa !4858
  %11 = add i64 %10, %7, !dbg !4859
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !644, metadata !691), !dbg !4860
  %12 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 0, !dbg !4861
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !645, metadata !691), !dbg !4862
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !646, metadata !691), !dbg !4863
  %13 = bitcast %struct.isaac_state* %0 to i8*
  %14 = getelementptr %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 128
  %15 = ptrtoint i64* %14 to i64
  %16 = getelementptr %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 4, !dbg !4864
  %17 = ptrtoint i64* %16 to i64
  %18 = icmp ugt i64 %15, %17, !dbg !4864
  %19 = select i1 %18, i64 %15, i64 %17, !dbg !4864
  %20 = inttoptr i64 %19 to i8*
  %21 = xor i64 %3, -1, !dbg !4864
  %22 = getelementptr i8, i8* %20, i64 %21, !dbg !4864
  %23 = ptrtoint i8* %22 to i64
  %24 = lshr i64 %23, 5, !dbg !4864
  %25 = shl nuw nsw i64 %24, 2, !dbg !4864
  %26 = add nuw nsw i64 %25, 4, !dbg !4864
  %27 = getelementptr i64, i64* %1, i64 %26, !dbg !4864
  br label %28, !dbg !4864, !llvm.loop !4865

; <label>:28:                                     ; preds = %28, %2
  %29 = phi i64* [ %1, %2 ], [ %112, %28 ]
  %30 = phi i64* [ %12, %2 ], [ %113, %28 ]
  %31 = phi i64 [ %11, %2 ], [ %110, %28 ]
  %32 = phi i64 [ %5, %2 ], [ %96, %28 ]
  tail call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !643, metadata !691), !dbg !4853
  tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !644, metadata !691), !dbg !4860
  tail call void @llvm.dbg.value(metadata i64* %30, i64 0, metadata !645, metadata !691), !dbg !4862
  tail call void @llvm.dbg.value(metadata i64* %29, i64 0, metadata !646, metadata !691), !dbg !4863
  %33 = shl i64 %32, 21, !dbg !4867
  %34 = xor i64 %32, -1, !dbg !4867
  %35 = xor i64 %33, %34, !dbg !4867
  %36 = getelementptr inbounds i64, i64* %30, i64 128, !dbg !4867
  %37 = load i64, i64* %36, align 8, !dbg !4867, !tbaa !2346
  %38 = add i64 %35, %37, !dbg !4867
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !643, metadata !691), !dbg !4853
  %39 = load i64, i64* %30, align 8, !dbg !4867, !tbaa !2346
  tail call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !647, metadata !691), !dbg !4867
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !4868, metadata !691), !dbg !4882
  tail call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !4875, metadata !691), !dbg !4884
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4876, metadata !691), !dbg !4885
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4879, metadata !691), !dbg !4886
  %40 = and i64 %39, 2040, !dbg !4887
  %41 = getelementptr inbounds i8, i8* %13, i64 %40, !dbg !4888
  tail call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !4880, metadata !691), !dbg !4889
  %42 = bitcast i8* %41 to i64*, !dbg !4890
  tail call void @llvm.dbg.value(metadata i64* %42, i64 0, metadata !4881, metadata !691), !dbg !4891
  %43 = load i64, i64* %42, align 8, !dbg !4892, !tbaa !2346
  %44 = add i64 %43, %31, !dbg !4867
  %45 = add i64 %44, %38, !dbg !4867
  tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !650, metadata !691), !dbg !4867
  store i64 %45, i64* %30, align 8, !dbg !4867, !tbaa !2346
  %46 = lshr i64 %45, 8, !dbg !4867
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !4868, metadata !691), !dbg !4893
  tail call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !4875, metadata !691), !dbg !4895
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4876, metadata !691), !dbg !4896
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4879, metadata !691), !dbg !4897
  %47 = and i64 %46, 2040, !dbg !4898
  %48 = getelementptr inbounds i8, i8* %13, i64 %47, !dbg !4899
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !4880, metadata !691), !dbg !4900
  %49 = bitcast i8* %48 to i64*, !dbg !4901
  tail call void @llvm.dbg.value(metadata i64* %49, i64 0, metadata !4881, metadata !691), !dbg !4902
  %50 = load i64, i64* %49, align 8, !dbg !4903, !tbaa !2346
  %51 = add i64 %50, %39, !dbg !4867
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !644, metadata !691), !dbg !4860
  store i64 %51, i64* %29, align 8, !dbg !4867, !tbaa !2346
  %52 = lshr i64 %38, 5, !dbg !4904
  %53 = xor i64 %52, %38, !dbg !4904
  %54 = getelementptr inbounds i64, i64* %30, i64 129, !dbg !4904
  %55 = load i64, i64* %54, align 8, !dbg !4904, !tbaa !2346
  %56 = add i64 %55, %53, !dbg !4904
  tail call void @llvm.dbg.value(metadata i64 %56, i64 0, metadata !643, metadata !691), !dbg !4853
  %57 = getelementptr inbounds i64, i64* %30, i64 1, !dbg !4904
  %58 = load i64, i64* %57, align 8, !dbg !4904, !tbaa !2346
  tail call void @llvm.dbg.value(metadata i64 %58, i64 0, metadata !651, metadata !691), !dbg !4904
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !4868, metadata !691), !dbg !4905
  tail call void @llvm.dbg.value(metadata i64 %58, i64 0, metadata !4875, metadata !691), !dbg !4907
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4876, metadata !691), !dbg !4908
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4879, metadata !691), !dbg !4909
  %59 = and i64 %58, 2040, !dbg !4910
  %60 = getelementptr inbounds i8, i8* %13, i64 %59, !dbg !4911
  tail call void @llvm.dbg.value(metadata i8* %60, i64 0, metadata !4880, metadata !691), !dbg !4912
  %61 = bitcast i8* %60 to i64*, !dbg !4913
  tail call void @llvm.dbg.value(metadata i64* %61, i64 0, metadata !4881, metadata !691), !dbg !4914
  %62 = load i64, i64* %61, align 8, !dbg !4915, !tbaa !2346
  %63 = add i64 %56, %51, !dbg !4904
  %64 = add i64 %63, %62, !dbg !4904
  tail call void @llvm.dbg.value(metadata i64 %64, i64 0, metadata !653, metadata !691), !dbg !4904
  store i64 %64, i64* %57, align 8, !dbg !4904, !tbaa !2346
  %65 = lshr i64 %64, 8, !dbg !4904
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !4868, metadata !691), !dbg !4916
  tail call void @llvm.dbg.value(metadata i64 %65, i64 0, metadata !4875, metadata !691), !dbg !4918
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4876, metadata !691), !dbg !4919
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4879, metadata !691), !dbg !4920
  %66 = and i64 %65, 2040, !dbg !4921
  %67 = getelementptr inbounds i8, i8* %13, i64 %66, !dbg !4922
  tail call void @llvm.dbg.value(metadata i8* %67, i64 0, metadata !4880, metadata !691), !dbg !4923
  %68 = bitcast i8* %67 to i64*, !dbg !4924
  tail call void @llvm.dbg.value(metadata i64* %68, i64 0, metadata !4881, metadata !691), !dbg !4925
  %69 = load i64, i64* %68, align 8, !dbg !4926, !tbaa !2346
  %70 = add i64 %69, %58, !dbg !4904
  tail call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !644, metadata !691), !dbg !4860
  %71 = getelementptr inbounds i64, i64* %29, i64 1, !dbg !4904
  store i64 %70, i64* %71, align 8, !dbg !4904, !tbaa !2346
  %72 = shl i64 %56, 12, !dbg !4927
  %73 = xor i64 %72, %56, !dbg !4927
  %74 = getelementptr inbounds i64, i64* %30, i64 130, !dbg !4927
  %75 = load i64, i64* %74, align 8, !dbg !4927, !tbaa !2346
  %76 = add i64 %75, %73, !dbg !4927
  tail call void @llvm.dbg.value(metadata i64 %76, i64 0, metadata !643, metadata !691), !dbg !4853
  %77 = getelementptr inbounds i64, i64* %30, i64 2, !dbg !4927
  %78 = load i64, i64* %77, align 8, !dbg !4927, !tbaa !2346
  tail call void @llvm.dbg.value(metadata i64 %78, i64 0, metadata !654, metadata !691), !dbg !4927
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !4868, metadata !691), !dbg !4928
  tail call void @llvm.dbg.value(metadata i64 %78, i64 0, metadata !4875, metadata !691), !dbg !4930
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4876, metadata !691), !dbg !4931
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4879, metadata !691), !dbg !4932
  %79 = and i64 %78, 2040, !dbg !4933
  %80 = getelementptr inbounds i8, i8* %13, i64 %79, !dbg !4934
  tail call void @llvm.dbg.value(metadata i8* %80, i64 0, metadata !4880, metadata !691), !dbg !4935
  %81 = bitcast i8* %80 to i64*, !dbg !4936
  tail call void @llvm.dbg.value(metadata i64* %81, i64 0, metadata !4881, metadata !691), !dbg !4937
  %82 = load i64, i64* %81, align 8, !dbg !4938, !tbaa !2346
  %83 = add i64 %76, %70, !dbg !4927
  %84 = add i64 %83, %82, !dbg !4927
  tail call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !656, metadata !691), !dbg !4927
  store i64 %84, i64* %77, align 8, !dbg !4927, !tbaa !2346
  %85 = lshr i64 %84, 8, !dbg !4927
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !4868, metadata !691), !dbg !4939
  tail call void @llvm.dbg.value(metadata i64 %85, i64 0, metadata !4875, metadata !691), !dbg !4941
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4876, metadata !691), !dbg !4942
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4879, metadata !691), !dbg !4943
  %86 = and i64 %85, 2040, !dbg !4944
  %87 = getelementptr inbounds i8, i8* %13, i64 %86, !dbg !4945
  tail call void @llvm.dbg.value(metadata i8* %87, i64 0, metadata !4880, metadata !691), !dbg !4946
  %88 = bitcast i8* %87 to i64*, !dbg !4947
  tail call void @llvm.dbg.value(metadata i64* %88, i64 0, metadata !4881, metadata !691), !dbg !4948
  %89 = load i64, i64* %88, align 8, !dbg !4949, !tbaa !2346
  %90 = add i64 %89, %78, !dbg !4927
  tail call void @llvm.dbg.value(metadata i64 %90, i64 0, metadata !644, metadata !691), !dbg !4860
  %91 = getelementptr inbounds i64, i64* %29, i64 2, !dbg !4927
  store i64 %90, i64* %91, align 8, !dbg !4927, !tbaa !2346
  %92 = lshr i64 %76, 33, !dbg !4950
  %93 = xor i64 %92, %76, !dbg !4950
  %94 = getelementptr inbounds i64, i64* %30, i64 131, !dbg !4950
  %95 = load i64, i64* %94, align 8, !dbg !4950, !tbaa !2346
  %96 = add i64 %95, %93, !dbg !4950
  tail call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !643, metadata !691), !dbg !4853
  %97 = getelementptr inbounds i64, i64* %30, i64 3, !dbg !4950
  %98 = load i64, i64* %97, align 8, !dbg !4950, !tbaa !2346
  tail call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !657, metadata !691), !dbg !4950
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !4868, metadata !691), !dbg !4951
  tail call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !4875, metadata !691), !dbg !4953
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4876, metadata !691), !dbg !4954
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4879, metadata !691), !dbg !4955
  %99 = and i64 %98, 2040, !dbg !4956
  %100 = getelementptr inbounds i8, i8* %13, i64 %99, !dbg !4957
  tail call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !4880, metadata !691), !dbg !4958
  %101 = bitcast i8* %100 to i64*, !dbg !4959
  tail call void @llvm.dbg.value(metadata i64* %101, i64 0, metadata !4881, metadata !691), !dbg !4960
  %102 = load i64, i64* %101, align 8, !dbg !4961, !tbaa !2346
  %103 = add i64 %96, %90, !dbg !4950
  %104 = add i64 %103, %102, !dbg !4950
  tail call void @llvm.dbg.value(metadata i64 %104, i64 0, metadata !659, metadata !691), !dbg !4950
  store i64 %104, i64* %97, align 8, !dbg !4950, !tbaa !2346
  %105 = lshr i64 %104, 8, !dbg !4950
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !4868, metadata !691), !dbg !4962
  tail call void @llvm.dbg.value(metadata i64 %105, i64 0, metadata !4875, metadata !691), !dbg !4964
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4876, metadata !691), !dbg !4965
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4879, metadata !691), !dbg !4966
  %106 = and i64 %105, 2040, !dbg !4967
  %107 = getelementptr inbounds i8, i8* %13, i64 %106, !dbg !4968
  tail call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !4880, metadata !691), !dbg !4969
  %108 = bitcast i8* %107 to i64*, !dbg !4970
  tail call void @llvm.dbg.value(metadata i64* %108, i64 0, metadata !4881, metadata !691), !dbg !4971
  %109 = load i64, i64* %108, align 8, !dbg !4972, !tbaa !2346
  %110 = add i64 %109, %98, !dbg !4950
  tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !644, metadata !691), !dbg !4860
  %111 = getelementptr inbounds i64, i64* %29, i64 3, !dbg !4950
  store i64 %110, i64* %111, align 8, !dbg !4950, !tbaa !2346
  %112 = getelementptr inbounds i64, i64* %29, i64 4, !dbg !4973
  tail call void @llvm.dbg.value(metadata i64* %112, i64 0, metadata !646, metadata !691), !dbg !4863
  %113 = getelementptr inbounds i64, i64* %30, i64 4, !dbg !4974
  tail call void @llvm.dbg.value(metadata i64* %113, i64 0, metadata !645, metadata !691), !dbg !4862
  %114 = icmp ult i64* %113, %14, !dbg !4975
  br i1 %114, label %28, label %115, !dbg !4976, !llvm.loop !4865

; <label>:115:                                    ; preds = %28
  %116 = getelementptr %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %26, !dbg !4864
  %117 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 256
  br label %118, !dbg !4977, !llvm.loop !4978

; <label>:118:                                    ; preds = %118, %115
  %119 = phi i64* [ %27, %115 ], [ %202, %118 ]
  %120 = phi i64* [ %116, %115 ], [ %203, %118 ]
  %121 = phi i64 [ %110, %115 ], [ %200, %118 ]
  %122 = phi i64 [ %96, %115 ], [ %186, %118 ]
  tail call void @llvm.dbg.value(metadata i64 %122, i64 0, metadata !643, metadata !691), !dbg !4853
  tail call void @llvm.dbg.value(metadata i64 %121, i64 0, metadata !644, metadata !691), !dbg !4860
  tail call void @llvm.dbg.value(metadata i64* %120, i64 0, metadata !645, metadata !691), !dbg !4862
  tail call void @llvm.dbg.value(metadata i64* %119, i64 0, metadata !646, metadata !691), !dbg !4863
  %123 = shl i64 %122, 21, !dbg !4980
  %124 = xor i64 %122, -1, !dbg !4980
  %125 = xor i64 %123, %124, !dbg !4980
  %126 = getelementptr inbounds i64, i64* %120, i64 -128, !dbg !4980
  %127 = load i64, i64* %126, align 8, !dbg !4980, !tbaa !2346
  %128 = add i64 %125, %127, !dbg !4980
  tail call void @llvm.dbg.value(metadata i64 %128, i64 0, metadata !643, metadata !691), !dbg !4853
  %129 = load i64, i64* %120, align 8, !dbg !4980, !tbaa !2346
  tail call void @llvm.dbg.value(metadata i64 %129, i64 0, metadata !660, metadata !691), !dbg !4980
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !4868, metadata !691), !dbg !4981
  tail call void @llvm.dbg.value(metadata i64 %129, i64 0, metadata !4875, metadata !691), !dbg !4983
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4876, metadata !691), !dbg !4984
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4879, metadata !691), !dbg !4985
  %130 = and i64 %129, 2040, !dbg !4986
  %131 = getelementptr inbounds i8, i8* %13, i64 %130, !dbg !4987
  tail call void @llvm.dbg.value(metadata i8* %131, i64 0, metadata !4880, metadata !691), !dbg !4988
  %132 = bitcast i8* %131 to i64*, !dbg !4989
  tail call void @llvm.dbg.value(metadata i64* %132, i64 0, metadata !4881, metadata !691), !dbg !4990
  %133 = load i64, i64* %132, align 8, !dbg !4991, !tbaa !2346
  %134 = add i64 %133, %121, !dbg !4980
  %135 = add i64 %134, %128, !dbg !4980
  tail call void @llvm.dbg.value(metadata i64 %135, i64 0, metadata !663, metadata !691), !dbg !4980
  store i64 %135, i64* %120, align 8, !dbg !4980, !tbaa !2346
  %136 = lshr i64 %135, 8, !dbg !4980
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !4868, metadata !691), !dbg !4992
  tail call void @llvm.dbg.value(metadata i64 %136, i64 0, metadata !4875, metadata !691), !dbg !4994
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4876, metadata !691), !dbg !4995
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4879, metadata !691), !dbg !4996
  %137 = and i64 %136, 2040, !dbg !4997
  %138 = getelementptr inbounds i8, i8* %13, i64 %137, !dbg !4998
  tail call void @llvm.dbg.value(metadata i8* %138, i64 0, metadata !4880, metadata !691), !dbg !4999
  %139 = bitcast i8* %138 to i64*, !dbg !5000
  tail call void @llvm.dbg.value(metadata i64* %139, i64 0, metadata !4881, metadata !691), !dbg !5001
  %140 = load i64, i64* %139, align 8, !dbg !5002, !tbaa !2346
  %141 = add i64 %140, %129, !dbg !4980
  tail call void @llvm.dbg.value(metadata i64 %141, i64 0, metadata !644, metadata !691), !dbg !4860
  store i64 %141, i64* %119, align 8, !dbg !4980, !tbaa !2346
  %142 = lshr i64 %128, 5, !dbg !5003
  %143 = xor i64 %142, %128, !dbg !5003
  %144 = getelementptr inbounds i64, i64* %120, i64 -127, !dbg !5003
  %145 = load i64, i64* %144, align 8, !dbg !5003, !tbaa !2346
  %146 = add i64 %145, %143, !dbg !5003
  tail call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !643, metadata !691), !dbg !4853
  %147 = getelementptr inbounds i64, i64* %120, i64 1, !dbg !5003
  %148 = load i64, i64* %147, align 8, !dbg !5003, !tbaa !2346
  tail call void @llvm.dbg.value(metadata i64 %148, i64 0, metadata !664, metadata !691), !dbg !5003
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !4868, metadata !691), !dbg !5004
  tail call void @llvm.dbg.value(metadata i64 %148, i64 0, metadata !4875, metadata !691), !dbg !5006
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4876, metadata !691), !dbg !5007
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4879, metadata !691), !dbg !5008
  %149 = and i64 %148, 2040, !dbg !5009
  %150 = getelementptr inbounds i8, i8* %13, i64 %149, !dbg !5010
  tail call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !4880, metadata !691), !dbg !5011
  %151 = bitcast i8* %150 to i64*, !dbg !5012
  tail call void @llvm.dbg.value(metadata i64* %151, i64 0, metadata !4881, metadata !691), !dbg !5013
  %152 = load i64, i64* %151, align 8, !dbg !5014, !tbaa !2346
  %153 = add i64 %146, %141, !dbg !5003
  %154 = add i64 %153, %152, !dbg !5003
  tail call void @llvm.dbg.value(metadata i64 %154, i64 0, metadata !666, metadata !691), !dbg !5003
  store i64 %154, i64* %147, align 8, !dbg !5003, !tbaa !2346
  %155 = lshr i64 %154, 8, !dbg !5003
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !4868, metadata !691), !dbg !5015
  tail call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !4875, metadata !691), !dbg !5017
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4876, metadata !691), !dbg !5018
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4879, metadata !691), !dbg !5019
  %156 = and i64 %155, 2040, !dbg !5020
  %157 = getelementptr inbounds i8, i8* %13, i64 %156, !dbg !5021
  tail call void @llvm.dbg.value(metadata i8* %157, i64 0, metadata !4880, metadata !691), !dbg !5022
  %158 = bitcast i8* %157 to i64*, !dbg !5023
  tail call void @llvm.dbg.value(metadata i64* %158, i64 0, metadata !4881, metadata !691), !dbg !5024
  %159 = load i64, i64* %158, align 8, !dbg !5025, !tbaa !2346
  %160 = add i64 %159, %148, !dbg !5003
  tail call void @llvm.dbg.value(metadata i64 %160, i64 0, metadata !644, metadata !691), !dbg !4860
  %161 = getelementptr inbounds i64, i64* %119, i64 1, !dbg !5003
  store i64 %160, i64* %161, align 8, !dbg !5003, !tbaa !2346
  %162 = shl i64 %146, 12, !dbg !5026
  %163 = xor i64 %162, %146, !dbg !5026
  %164 = getelementptr inbounds i64, i64* %120, i64 -126, !dbg !5026
  %165 = load i64, i64* %164, align 8, !dbg !5026, !tbaa !2346
  %166 = add i64 %165, %163, !dbg !5026
  tail call void @llvm.dbg.value(metadata i64 %166, i64 0, metadata !643, metadata !691), !dbg !4853
  %167 = getelementptr inbounds i64, i64* %120, i64 2, !dbg !5026
  %168 = load i64, i64* %167, align 8, !dbg !5026, !tbaa !2346
  tail call void @llvm.dbg.value(metadata i64 %168, i64 0, metadata !667, metadata !691), !dbg !5026
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !4868, metadata !691), !dbg !5027
  tail call void @llvm.dbg.value(metadata i64 %168, i64 0, metadata !4875, metadata !691), !dbg !5029
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4876, metadata !691), !dbg !5030
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4879, metadata !691), !dbg !5031
  %169 = and i64 %168, 2040, !dbg !5032
  %170 = getelementptr inbounds i8, i8* %13, i64 %169, !dbg !5033
  tail call void @llvm.dbg.value(metadata i8* %170, i64 0, metadata !4880, metadata !691), !dbg !5034
  %171 = bitcast i8* %170 to i64*, !dbg !5035
  tail call void @llvm.dbg.value(metadata i64* %171, i64 0, metadata !4881, metadata !691), !dbg !5036
  %172 = load i64, i64* %171, align 8, !dbg !5037, !tbaa !2346
  %173 = add i64 %166, %160, !dbg !5026
  %174 = add i64 %173, %172, !dbg !5026
  tail call void @llvm.dbg.value(metadata i64 %174, i64 0, metadata !669, metadata !691), !dbg !5026
  store i64 %174, i64* %167, align 8, !dbg !5026, !tbaa !2346
  %175 = lshr i64 %174, 8, !dbg !5026
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !4868, metadata !691), !dbg !5038
  tail call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !4875, metadata !691), !dbg !5040
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4876, metadata !691), !dbg !5041
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4879, metadata !691), !dbg !5042
  %176 = and i64 %175, 2040, !dbg !5043
  %177 = getelementptr inbounds i8, i8* %13, i64 %176, !dbg !5044
  tail call void @llvm.dbg.value(metadata i8* %177, i64 0, metadata !4880, metadata !691), !dbg !5045
  %178 = bitcast i8* %177 to i64*, !dbg !5046
  tail call void @llvm.dbg.value(metadata i64* %178, i64 0, metadata !4881, metadata !691), !dbg !5047
  %179 = load i64, i64* %178, align 8, !dbg !5048, !tbaa !2346
  %180 = add i64 %179, %168, !dbg !5026
  tail call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !644, metadata !691), !dbg !4860
  %181 = getelementptr inbounds i64, i64* %119, i64 2, !dbg !5026
  store i64 %180, i64* %181, align 8, !dbg !5026, !tbaa !2346
  %182 = lshr i64 %166, 33, !dbg !5049
  %183 = xor i64 %182, %166, !dbg !5049
  %184 = getelementptr inbounds i64, i64* %120, i64 -125, !dbg !5049
  %185 = load i64, i64* %184, align 8, !dbg !5049, !tbaa !2346
  %186 = add i64 %185, %183, !dbg !5049
  tail call void @llvm.dbg.value(metadata i64 %186, i64 0, metadata !643, metadata !691), !dbg !4853
  %187 = getelementptr inbounds i64, i64* %120, i64 3, !dbg !5049
  %188 = load i64, i64* %187, align 8, !dbg !5049, !tbaa !2346
  tail call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !670, metadata !691), !dbg !5049
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !4868, metadata !691), !dbg !5050
  tail call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !4875, metadata !691), !dbg !5052
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4876, metadata !691), !dbg !5053
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4879, metadata !691), !dbg !5054
  %189 = and i64 %188, 2040, !dbg !5055
  %190 = getelementptr inbounds i8, i8* %13, i64 %189, !dbg !5056
  tail call void @llvm.dbg.value(metadata i8* %190, i64 0, metadata !4880, metadata !691), !dbg !5057
  %191 = bitcast i8* %190 to i64*, !dbg !5058
  tail call void @llvm.dbg.value(metadata i64* %191, i64 0, metadata !4881, metadata !691), !dbg !5059
  %192 = load i64, i64* %191, align 8, !dbg !5060, !tbaa !2346
  %193 = add i64 %186, %180, !dbg !5049
  %194 = add i64 %193, %192, !dbg !5049
  tail call void @llvm.dbg.value(metadata i64 %194, i64 0, metadata !672, metadata !691), !dbg !5049
  store i64 %194, i64* %187, align 8, !dbg !5049, !tbaa !2346
  %195 = lshr i64 %194, 8, !dbg !5049
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !4868, metadata !691), !dbg !5061
  tail call void @llvm.dbg.value(metadata i64 %195, i64 0, metadata !4875, metadata !691), !dbg !5063
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4876, metadata !691), !dbg !5064
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !4879, metadata !691), !dbg !5065
  %196 = and i64 %195, 2040, !dbg !5066
  %197 = getelementptr inbounds i8, i8* %13, i64 %196, !dbg !5067
  tail call void @llvm.dbg.value(metadata i8* %197, i64 0, metadata !4880, metadata !691), !dbg !5068
  %198 = bitcast i8* %197 to i64*, !dbg !5069
  tail call void @llvm.dbg.value(metadata i64* %198, i64 0, metadata !4881, metadata !691), !dbg !5070
  %199 = load i64, i64* %198, align 8, !dbg !5071, !tbaa !2346
  %200 = add i64 %199, %188, !dbg !5049
  tail call void @llvm.dbg.value(metadata i64 %200, i64 0, metadata !644, metadata !691), !dbg !4860
  %201 = getelementptr inbounds i64, i64* %119, i64 3, !dbg !5049
  store i64 %200, i64* %201, align 8, !dbg !5049, !tbaa !2346
  %202 = getelementptr inbounds i64, i64* %119, i64 4, !dbg !5072
  tail call void @llvm.dbg.value(metadata i64* %202, i64 0, metadata !646, metadata !691), !dbg !4863
  %203 = getelementptr inbounds i64, i64* %120, i64 4, !dbg !5073
  tail call void @llvm.dbg.value(metadata i64* %203, i64 0, metadata !645, metadata !691), !dbg !4862
  %204 = icmp ult i64* %203, %117, !dbg !5074
  br i1 %204, label %118, label %205, !dbg !5075, !llvm.loop !4978

; <label>:205:                                    ; preds = %118
  store i64 %186, i64* %4, align 8, !dbg !5076, !tbaa !4852
  store i64 %200, i64* %6, align 8, !dbg !5077, !tbaa !4855
  ret void, !dbg !5078
}

; Function Attrs: nounwind sspstrong uwtable
define void @isaac_seed(%struct.isaac_state* nocapture) local_unnamed_addr #6 !dbg !5079 {
  tail call void @llvm.dbg.value(metadata %struct.isaac_state* %0, i64 0, metadata !5083, metadata !691), !dbg !5096
  tail call void @llvm.dbg.value(metadata i64 7240739780546808700, i64 0, metadata !5084, metadata !691), !dbg !5097
  tail call void @llvm.dbg.value(metadata i64 -5046086420515862430, i64 0, metadata !5085, metadata !691), !dbg !5098
  tail call void @llvm.dbg.value(metadata i64 -8354558816804203872, i64 0, metadata !5086, metadata !691), !dbg !5099
  tail call void @llvm.dbg.value(metadata i64 -5576812576440232668, i64 0, metadata !5087, metadata !691), !dbg !5100
  tail call void @llvm.dbg.value(metadata i64 -9011610652101975858, i64 0, metadata !5088, metadata !691), !dbg !5101
  tail call void @llvm.dbg.value(metadata i64 5259722845879046933, i64 0, metadata !5089, metadata !691), !dbg !5102
  tail call void @llvm.dbg.value(metadata i64 -5865837416287532563, i64 0, metadata !5090, metadata !691), !dbg !5103
  tail call void @llvm.dbg.value(metadata i64 -7424904924229222229, i64 0, metadata !5091, metadata !691), !dbg !5104
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5092, metadata !691), !dbg !5105
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5092, metadata !691), !dbg !5105
  tail call void @llvm.dbg.value(metadata i64 -7424904924229222229, i64 0, metadata !5091, metadata !691), !dbg !5104
  tail call void @llvm.dbg.value(metadata i64 -5865837416287532563, i64 0, metadata !5090, metadata !691), !dbg !5103
  tail call void @llvm.dbg.value(metadata i64 5259722845879046933, i64 0, metadata !5089, metadata !691), !dbg !5102
  tail call void @llvm.dbg.value(metadata i64 -9011610652101975858, i64 0, metadata !5088, metadata !691), !dbg !5101
  tail call void @llvm.dbg.value(metadata i64 -5576812576440232668, i64 0, metadata !5087, metadata !691), !dbg !5100
  tail call void @llvm.dbg.value(metadata i64 -8354558816804203872, i64 0, metadata !5086, metadata !691), !dbg !5099
  tail call void @llvm.dbg.value(metadata i64 -5046086420515862430, i64 0, metadata !5085, metadata !691), !dbg !5098
  tail call void @llvm.dbg.value(metadata i64 7240739780546808700, i64 0, metadata !5084, metadata !691), !dbg !5097
  br label %2, !dbg !5106

; <label>:2:                                      ; preds = %1, %2
  %3 = phi i64 [ 0, %1 ], [ %75, %2 ]
  %4 = phi i64 [ -7424904924229222229, %1 ], [ %71, %2 ]
  %5 = phi i64 [ -5865837416287532563, %1 ], [ %74, %2 ]
  %6 = phi i64 [ 5259722845879046933, %1 ], [ %70, %2 ]
  %7 = phi i64 [ -9011610652101975858, %1 ], [ %73, %2 ]
  %8 = phi i64 [ -5576812576440232668, %1 ], [ %69, %2 ]
  %9 = phi i64 [ -8354558816804203872, %1 ], [ %65, %2 ]
  %10 = phi i64 [ -5046086420515862430, %1 ], [ %61, %2 ]
  %11 = phi i64 [ 7240739780546808700, %1 ], [ %57, %2 ]
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !5084, metadata !691), !dbg !5097
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !5085, metadata !691), !dbg !5098
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !5086, metadata !691), !dbg !5099
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !5087, metadata !691), !dbg !5100
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5088, metadata !691), !dbg !5101
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !5089, metadata !691), !dbg !5102
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !5090, metadata !691), !dbg !5103
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !5091, metadata !691), !dbg !5104
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !5092, metadata !691), !dbg !5105
  %12 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %3, !dbg !5108
  %13 = load i64, i64* %12, align 8, !dbg !5108, !tbaa !2346
  %14 = add i64 %13, %11, !dbg !5108
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5084, metadata !691), !dbg !5097
  %15 = or i64 %3, 1, !dbg !5108
  %16 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %15, !dbg !5108
  %17 = load i64, i64* %16, align 8, !dbg !5108, !tbaa !2346
  %18 = add i64 %17, %10, !dbg !5108
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !5085, metadata !691), !dbg !5098
  %19 = or i64 %3, 2, !dbg !5108
  %20 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %19, !dbg !5108
  %21 = load i64, i64* %20, align 8, !dbg !5108, !tbaa !2346
  %22 = add i64 %21, %9, !dbg !5108
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !5086, metadata !691), !dbg !5099
  %23 = or i64 %3, 3, !dbg !5108
  %24 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %23, !dbg !5108
  %25 = load i64, i64* %24, align 8, !dbg !5108, !tbaa !2346
  %26 = add i64 %25, %8, !dbg !5108
  tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !5087, metadata !691), !dbg !5100
  %27 = or i64 %3, 4, !dbg !5108
  %28 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %27, !dbg !5108
  %29 = load i64, i64* %28, align 8, !dbg !5108, !tbaa !2346
  %30 = add i64 %29, %7, !dbg !5108
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !5088, metadata !691), !dbg !5101
  %31 = or i64 %3, 5, !dbg !5108
  %32 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %31, !dbg !5108
  %33 = load i64, i64* %32, align 8, !dbg !5108, !tbaa !2346
  %34 = add i64 %33, %6, !dbg !5108
  tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !5089, metadata !691), !dbg !5102
  %35 = or i64 %3, 6, !dbg !5108
  %36 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %35, !dbg !5108
  %37 = load i64, i64* %36, align 8, !dbg !5108, !tbaa !2346
  %38 = add i64 %37, %5, !dbg !5108
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !5090, metadata !691), !dbg !5103
  %39 = or i64 %3, 7, !dbg !5108
  %40 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %39, !dbg !5108
  %41 = load i64, i64* %40, align 8, !dbg !5108, !tbaa !2346
  %42 = add i64 %41, %4, !dbg !5108
  tail call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !5091, metadata !691), !dbg !5104
  %43 = sub i64 %14, %30, !dbg !5111
  tail call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !5084, metadata !691), !dbg !5097
  %44 = lshr i64 %42, 9, !dbg !5111
  %45 = xor i64 %44, %34, !dbg !5111
  tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !5089, metadata !691), !dbg !5102
  %46 = add i64 %42, %43, !dbg !5111
  tail call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !5091, metadata !691), !dbg !5104
  %47 = sub i64 %18, %45, !dbg !5111
  tail call void @llvm.dbg.value(metadata i64 %47, i64 0, metadata !5085, metadata !691), !dbg !5098
  %48 = shl i64 %43, 9, !dbg !5111
  %49 = xor i64 %38, %48, !dbg !5111
  tail call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !5090, metadata !691), !dbg !5103
  %50 = add i64 %47, %43, !dbg !5111
  tail call void @llvm.dbg.value(metadata i64 %50, i64 0, metadata !5084, metadata !691), !dbg !5097
  %51 = sub i64 %22, %49, !dbg !5111
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !5086, metadata !691), !dbg !5099
  %52 = lshr i64 %47, 23, !dbg !5111
  %53 = xor i64 %52, %46, !dbg !5111
  tail call void @llvm.dbg.value(metadata i64 %53, i64 0, metadata !5091, metadata !691), !dbg !5104
  %54 = add i64 %47, %51, !dbg !5111
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !5085, metadata !691), !dbg !5098
  %55 = sub i64 %26, %53, !dbg !5111
  tail call void @llvm.dbg.value(metadata i64 %55, i64 0, metadata !5087, metadata !691), !dbg !5100
  %56 = shl i64 %51, 15, !dbg !5111
  %57 = xor i64 %50, %56, !dbg !5111
  tail call void @llvm.dbg.value(metadata i64 %57, i64 0, metadata !5084, metadata !691), !dbg !5097
  %58 = add i64 %55, %51, !dbg !5111
  tail call void @llvm.dbg.value(metadata i64 %58, i64 0, metadata !5086, metadata !691), !dbg !5099
  %59 = sub i64 %30, %57, !dbg !5111
  tail call void @llvm.dbg.value(metadata i64 %59, i64 0, metadata !5088, metadata !691), !dbg !5101
  %60 = lshr i64 %55, 14, !dbg !5111
  %61 = xor i64 %60, %54, !dbg !5111
  tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !5085, metadata !691), !dbg !5098
  %62 = add i64 %55, %59, !dbg !5111
  tail call void @llvm.dbg.value(metadata i64 %62, i64 0, metadata !5087, metadata !691), !dbg !5100
  %63 = sub i64 %45, %61, !dbg !5111
  tail call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !5089, metadata !691), !dbg !5102
  %64 = shl i64 %59, 20, !dbg !5111
  %65 = xor i64 %58, %64, !dbg !5111
  tail call void @llvm.dbg.value(metadata i64 %65, i64 0, metadata !5086, metadata !691), !dbg !5099
  %66 = add i64 %63, %59, !dbg !5111
  tail call void @llvm.dbg.value(metadata i64 %66, i64 0, metadata !5088, metadata !691), !dbg !5101
  %67 = sub i64 %49, %65, !dbg !5111
  tail call void @llvm.dbg.value(metadata i64 %67, i64 0, metadata !5090, metadata !691), !dbg !5103
  %68 = lshr i64 %63, 17, !dbg !5111
  %69 = xor i64 %68, %62, !dbg !5111
  tail call void @llvm.dbg.value(metadata i64 %69, i64 0, metadata !5087, metadata !691), !dbg !5100
  %70 = add i64 %63, %67, !dbg !5111
  tail call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !5089, metadata !691), !dbg !5102
  %71 = sub i64 %53, %69, !dbg !5111
  tail call void @llvm.dbg.value(metadata i64 %71, i64 0, metadata !5091, metadata !691), !dbg !5104
  %72 = shl i64 %67, 14, !dbg !5111
  %73 = xor i64 %66, %72, !dbg !5111
  tail call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !5088, metadata !691), !dbg !5101
  %74 = add i64 %71, %67, !dbg !5111
  tail call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !5090, metadata !691), !dbg !5103
  store i64 %57, i64* %12, align 8, !dbg !5108, !tbaa !2346
  store i64 %61, i64* %16, align 8, !dbg !5108, !tbaa !2346
  store i64 %65, i64* %20, align 8, !dbg !5108, !tbaa !2346
  store i64 %69, i64* %24, align 8, !dbg !5108, !tbaa !2346
  store i64 %73, i64* %28, align 8, !dbg !5108, !tbaa !2346
  store i64 %70, i64* %32, align 8, !dbg !5108, !tbaa !2346
  store i64 %74, i64* %36, align 8, !dbg !5108, !tbaa !2346
  store i64 %71, i64* %40, align 8, !dbg !5108, !tbaa !2346
  %75 = add nuw nsw i64 %3, 8, !dbg !5113
  tail call void @llvm.dbg.value(metadata i64 %71, i64 0, metadata !5091, metadata !691), !dbg !5104
  tail call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !5090, metadata !691), !dbg !5103
  tail call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !5089, metadata !691), !dbg !5102
  tail call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !5088, metadata !691), !dbg !5101
  tail call void @llvm.dbg.value(metadata i64 %69, i64 0, metadata !5087, metadata !691), !dbg !5100
  tail call void @llvm.dbg.value(metadata i64 %65, i64 0, metadata !5086, metadata !691), !dbg !5099
  tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !5085, metadata !691), !dbg !5098
  tail call void @llvm.dbg.value(metadata i64 %57, i64 0, metadata !5084, metadata !691), !dbg !5097
  %76 = icmp ult i64 %3, 248, !dbg !5113
  br i1 %76, label %2, label %77, !dbg !5106, !llvm.loop !5114

; <label>:77:                                     ; preds = %2
  br label %78, !dbg !5115

; <label>:78:                                     ; preds = %77, %78
  %79 = phi i64 [ %151, %78 ], [ 0, %77 ]
  %80 = phi i64 [ %147, %78 ], [ %71, %77 ]
  %81 = phi i64 [ %150, %78 ], [ %74, %77 ]
  %82 = phi i64 [ %146, %78 ], [ %70, %77 ]
  %83 = phi i64 [ %149, %78 ], [ %73, %77 ]
  %84 = phi i64 [ %145, %78 ], [ %69, %77 ]
  %85 = phi i64 [ %141, %78 ], [ %65, %77 ]
  %86 = phi i64 [ %137, %78 ], [ %61, %77 ]
  %87 = phi i64 [ %133, %78 ], [ %57, %77 ]
  tail call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !5084, metadata !691), !dbg !5097
  tail call void @llvm.dbg.value(metadata i64 %86, i64 0, metadata !5085, metadata !691), !dbg !5098
  tail call void @llvm.dbg.value(metadata i64 %85, i64 0, metadata !5086, metadata !691), !dbg !5099
  tail call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !5087, metadata !691), !dbg !5100
  tail call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !5088, metadata !691), !dbg !5101
  tail call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !5089, metadata !691), !dbg !5102
  tail call void @llvm.dbg.value(metadata i64 %81, i64 0, metadata !5090, metadata !691), !dbg !5103
  tail call void @llvm.dbg.value(metadata i64 %80, i64 0, metadata !5091, metadata !691), !dbg !5104
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !5094, metadata !691), !dbg !5119
  %88 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %79, !dbg !5115
  %89 = load i64, i64* %88, align 8, !dbg !5115, !tbaa !2346
  %90 = add i64 %89, %87, !dbg !5115
  tail call void @llvm.dbg.value(metadata i64 %90, i64 0, metadata !5084, metadata !691), !dbg !5097
  %91 = or i64 %79, 1, !dbg !5115
  %92 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %91, !dbg !5115
  %93 = load i64, i64* %92, align 8, !dbg !5115, !tbaa !2346
  %94 = add i64 %93, %86, !dbg !5115
  tail call void @llvm.dbg.value(metadata i64 %94, i64 0, metadata !5085, metadata !691), !dbg !5098
  %95 = or i64 %79, 2, !dbg !5115
  %96 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %95, !dbg !5115
  %97 = load i64, i64* %96, align 8, !dbg !5115, !tbaa !2346
  %98 = add i64 %97, %85, !dbg !5115
  tail call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !5086, metadata !691), !dbg !5099
  %99 = or i64 %79, 3, !dbg !5115
  %100 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %99, !dbg !5115
  %101 = load i64, i64* %100, align 8, !dbg !5115, !tbaa !2346
  %102 = add i64 %101, %84, !dbg !5115
  tail call void @llvm.dbg.value(metadata i64 %102, i64 0, metadata !5087, metadata !691), !dbg !5100
  %103 = or i64 %79, 4, !dbg !5115
  %104 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %103, !dbg !5115
  %105 = load i64, i64* %104, align 8, !dbg !5115, !tbaa !2346
  %106 = add i64 %105, %83, !dbg !5115
  tail call void @llvm.dbg.value(metadata i64 %106, i64 0, metadata !5088, metadata !691), !dbg !5101
  %107 = or i64 %79, 5, !dbg !5115
  %108 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %107, !dbg !5115
  %109 = load i64, i64* %108, align 8, !dbg !5115, !tbaa !2346
  %110 = add i64 %109, %82, !dbg !5115
  tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !5089, metadata !691), !dbg !5102
  %111 = or i64 %79, 6, !dbg !5115
  %112 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %111, !dbg !5115
  %113 = load i64, i64* %112, align 8, !dbg !5115, !tbaa !2346
  %114 = add i64 %113, %81, !dbg !5115
  tail call void @llvm.dbg.value(metadata i64 %114, i64 0, metadata !5090, metadata !691), !dbg !5103
  %115 = or i64 %79, 7, !dbg !5115
  %116 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %115, !dbg !5115
  %117 = load i64, i64* %116, align 8, !dbg !5115, !tbaa !2346
  %118 = add i64 %117, %80, !dbg !5115
  tail call void @llvm.dbg.value(metadata i64 %118, i64 0, metadata !5091, metadata !691), !dbg !5104
  %119 = sub i64 %90, %106, !dbg !5120
  tail call void @llvm.dbg.value(metadata i64 %119, i64 0, metadata !5084, metadata !691), !dbg !5097
  %120 = lshr i64 %118, 9, !dbg !5120
  %121 = xor i64 %120, %110, !dbg !5120
  tail call void @llvm.dbg.value(metadata i64 %121, i64 0, metadata !5089, metadata !691), !dbg !5102
  %122 = add i64 %118, %119, !dbg !5120
  tail call void @llvm.dbg.value(metadata i64 %122, i64 0, metadata !5091, metadata !691), !dbg !5104
  %123 = sub i64 %94, %121, !dbg !5120
  tail call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !5085, metadata !691), !dbg !5098
  %124 = shl i64 %119, 9, !dbg !5120
  %125 = xor i64 %114, %124, !dbg !5120
  tail call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !5090, metadata !691), !dbg !5103
  %126 = add i64 %123, %119, !dbg !5120
  tail call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !5084, metadata !691), !dbg !5097
  %127 = sub i64 %98, %125, !dbg !5120
  tail call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !5086, metadata !691), !dbg !5099
  %128 = lshr i64 %123, 23, !dbg !5120
  %129 = xor i64 %128, %122, !dbg !5120
  tail call void @llvm.dbg.value(metadata i64 %129, i64 0, metadata !5091, metadata !691), !dbg !5104
  %130 = add i64 %123, %127, !dbg !5120
  tail call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !5085, metadata !691), !dbg !5098
  %131 = sub i64 %102, %129, !dbg !5120
  tail call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !5087, metadata !691), !dbg !5100
  %132 = shl i64 %127, 15, !dbg !5120
  %133 = xor i64 %126, %132, !dbg !5120
  tail call void @llvm.dbg.value(metadata i64 %133, i64 0, metadata !5084, metadata !691), !dbg !5097
  %134 = add i64 %131, %127, !dbg !5120
  tail call void @llvm.dbg.value(metadata i64 %134, i64 0, metadata !5086, metadata !691), !dbg !5099
  %135 = sub i64 %106, %133, !dbg !5120
  tail call void @llvm.dbg.value(metadata i64 %135, i64 0, metadata !5088, metadata !691), !dbg !5101
  %136 = lshr i64 %131, 14, !dbg !5120
  %137 = xor i64 %136, %130, !dbg !5120
  tail call void @llvm.dbg.value(metadata i64 %137, i64 0, metadata !5085, metadata !691), !dbg !5098
  %138 = add i64 %131, %135, !dbg !5120
  tail call void @llvm.dbg.value(metadata i64 %138, i64 0, metadata !5087, metadata !691), !dbg !5100
  %139 = sub i64 %121, %137, !dbg !5120
  tail call void @llvm.dbg.value(metadata i64 %139, i64 0, metadata !5089, metadata !691), !dbg !5102
  %140 = shl i64 %135, 20, !dbg !5120
  %141 = xor i64 %134, %140, !dbg !5120
  tail call void @llvm.dbg.value(metadata i64 %141, i64 0, metadata !5086, metadata !691), !dbg !5099
  %142 = add i64 %139, %135, !dbg !5120
  tail call void @llvm.dbg.value(metadata i64 %142, i64 0, metadata !5088, metadata !691), !dbg !5101
  %143 = sub i64 %125, %141, !dbg !5120
  tail call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !5090, metadata !691), !dbg !5103
  %144 = lshr i64 %139, 17, !dbg !5120
  %145 = xor i64 %144, %138, !dbg !5120
  tail call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !5087, metadata !691), !dbg !5100
  %146 = add i64 %139, %143, !dbg !5120
  tail call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !5089, metadata !691), !dbg !5102
  %147 = sub i64 %129, %145, !dbg !5120
  tail call void @llvm.dbg.value(metadata i64 %147, i64 0, metadata !5091, metadata !691), !dbg !5104
  %148 = shl i64 %143, 14, !dbg !5120
  %149 = xor i64 %142, %148, !dbg !5120
  tail call void @llvm.dbg.value(metadata i64 %149, i64 0, metadata !5088, metadata !691), !dbg !5101
  %150 = add i64 %147, %143, !dbg !5120
  tail call void @llvm.dbg.value(metadata i64 %150, i64 0, metadata !5090, metadata !691), !dbg !5103
  store i64 %133, i64* %88, align 8, !dbg !5115, !tbaa !2346
  store i64 %137, i64* %92, align 8, !dbg !5115, !tbaa !2346
  store i64 %141, i64* %96, align 8, !dbg !5115, !tbaa !2346
  store i64 %145, i64* %100, align 8, !dbg !5115, !tbaa !2346
  store i64 %149, i64* %104, align 8, !dbg !5115, !tbaa !2346
  store i64 %146, i64* %108, align 8, !dbg !5115, !tbaa !2346
  store i64 %150, i64* %112, align 8, !dbg !5115, !tbaa !2346
  store i64 %147, i64* %116, align 8, !dbg !5115, !tbaa !2346
  %151 = add nuw nsw i64 %79, 8, !dbg !5122
  tail call void @llvm.dbg.value(metadata i64 %147, i64 0, metadata !5091, metadata !691), !dbg !5104
  tail call void @llvm.dbg.value(metadata i64 %150, i64 0, metadata !5090, metadata !691), !dbg !5103
  tail call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !5089, metadata !691), !dbg !5102
  tail call void @llvm.dbg.value(metadata i64 %149, i64 0, metadata !5088, metadata !691), !dbg !5101
  tail call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !5087, metadata !691), !dbg !5100
  tail call void @llvm.dbg.value(metadata i64 %141, i64 0, metadata !5086, metadata !691), !dbg !5099
  tail call void @llvm.dbg.value(metadata i64 %137, i64 0, metadata !5085, metadata !691), !dbg !5098
  tail call void @llvm.dbg.value(metadata i64 %133, i64 0, metadata !5084, metadata !691), !dbg !5097
  %152 = icmp ult i64 %79, 248, !dbg !5122
  br i1 %152, label %78, label %153, !dbg !5123, !llvm.loop !5124

; <label>:153:                                    ; preds = %78
  %154 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 1, !dbg !5125
  %155 = bitcast i64* %154 to i8*, !dbg !5126
  call void @llvm.memset.p0i8.i64(i8* %155, i8 0, i64 24, i32 8, i1 false), !dbg !5127
  ret void, !dbg !5126
}

; Function Attrs: nounwind sspstrong uwtable
define %struct._IO_FILE* @fopen_safer(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #6 !dbg !5128 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5173, metadata !691), !dbg !5188
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5174, metadata !691), !dbg !5189
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1), !dbg !5190
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, i64 0, metadata !5175, metadata !691), !dbg !5191
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !5192
  br i1 %4, label %25, label %5, !dbg !5193

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @fileno(%struct._IO_FILE* nonnull %3) #12, !dbg !5194
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !5176, metadata !691), !dbg !5195
  %7 = icmp ult i32 %6, 3, !dbg !5196
  br i1 %7, label %8, label %25, !dbg !5196

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @dup_safer(i32 %6) #12, !dbg !5197
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !5179, metadata !691), !dbg !5198
  %10 = icmp slt i32 %9, 0, !dbg !5199
  br i1 %10, label %11, label %15, !dbg !5200

; <label>:11:                                     ; preds = %8
  %12 = tail call i32* @__errno_location() #17, !dbg !5201
  %13 = load i32, i32* %12, align 4, !dbg !5201, !tbaa !807
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !5182, metadata !691), !dbg !5202
  %14 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #12, !dbg !5203
  store i32 %13, i32* %12, align 4, !dbg !5204, !tbaa !807
  br label %25

; <label>:15:                                     ; preds = %8
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #12, !dbg !5205
  %17 = icmp eq i32 %16, 0, !dbg !5206
  br i1 %17, label %18, label %21, !dbg !5207

; <label>:18:                                     ; preds = %15
  %19 = tail call %struct._IO_FILE* @fdopen(i32 %9, i8* %1) #12, !dbg !5208
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, i64 0, metadata !5175, metadata !691), !dbg !5191
  %20 = icmp eq %struct._IO_FILE* %19, null, !dbg !5209
  br i1 %20, label %21, label %25, !dbg !5210

; <label>:21:                                     ; preds = %18, %15
  %22 = tail call i32* @__errno_location() #17, !dbg !5211
  %23 = load i32, i32* %22, align 4, !dbg !5211, !tbaa !807
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !5185, metadata !691), !dbg !5212
  %24 = tail call i32 @close(i32 %9) #12, !dbg !5213
  store i32 %23, i32* %22, align 4, !dbg !5214, !tbaa !807
  br label %25

; <label>:25:                                     ; preds = %5, %18, %2, %21, %11
  %26 = phi %struct._IO_FILE* [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ]
  ret %struct._IO_FILE* %26, !dbg !5215
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_safer(i32) local_unnamed_addr #6 !dbg !5216 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5221, metadata !691), !dbg !5222
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #12, !dbg !5223
  ret i32 %2, !dbg !5224
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #6 !dbg !531 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !539, metadata !691), !dbg !5225
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !540, metadata !691), !dbg !5226
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !5227
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #12, !dbg !5227
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !541, metadata !691), !dbg !5228
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !554, metadata !691), !dbg !5229
  call void @llvm.va_start(i8* nonnull %4), !dbg !5230
  %5 = icmp eq i32 %1, 1030, !dbg !5231
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %7 = load i32, i32* %6, align 16
  %8 = icmp ult i32 %7, 41
  br i1 %5, label %9, label %59, !dbg !5231

; <label>:9:                                      ; preds = %2
  br i1 %8, label %10, label %16, !dbg !5232

; <label>:10:                                     ; preds = %9
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !5232
  %12 = load i8*, i8** %11, align 16, !dbg !5232
  %13 = sext i32 %7 to i64, !dbg !5232
  %14 = getelementptr i8, i8* %12, i64 %13, !dbg !5232
  %15 = add i32 %7, 8, !dbg !5232
  store i32 %15, i32* %6, align 16, !dbg !5232
  br label %20, !dbg !5232

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !5232
  %18 = load i8*, i8** %17, align 8, !dbg !5232
  %19 = getelementptr i8, i8* %18, i64 8, !dbg !5232
  store i8* %19, i8** %17, align 8, !dbg !5232
  br label %20, !dbg !5232

; <label>:20:                                     ; preds = %16, %10
  %21 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %22 = bitcast i8* %21 to i32*, !dbg !5232
  %23 = load i32, i32* %22, align 4, !dbg !5232
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !555, metadata !691), !dbg !5233
  %24 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !5234, !tbaa !807
  %25 = icmp sgt i32 %24, -1, !dbg !5236
  br i1 %25, label %26, label %39, !dbg !5237

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #12, !dbg !5238
  call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !554, metadata !691), !dbg !5229
  %28 = icmp sgt i32 %27, -1, !dbg !5240
  br i1 %28, label %36, label %29, !dbg !5242

; <label>:29:                                     ; preds = %26
  %30 = tail call i32* @__errno_location() #17, !dbg !5243
  %31 = load i32, i32* %30, align 4, !dbg !5243, !tbaa !807
  %32 = icmp eq i32 %31, 22, !dbg !5244
  br i1 %32, label %33, label %36, !dbg !5245

; <label>:33:                                     ; preds = %29
  %34 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !5246
  call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !554, metadata !691), !dbg !5229
  %35 = icmp slt i32 %34, 0, !dbg !5248
  br i1 %35, label %75, label %36, !dbg !5250

; <label>:36:                                     ; preds = %29, %26, %33
  %37 = phi i32 [ %27, %26 ], [ %27, %29 ], [ %34, %33 ]
  %38 = phi i32 [ 1, %26 ], [ 1, %29 ], [ -1, %33 ]
  call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !554, metadata !691), !dbg !5229
  store i32 %38, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !tbaa !807
  br label %42, !dbg !5251

; <label>:39:                                     ; preds = %20
  %40 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !5252
  call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !554, metadata !691), !dbg !5229
  %41 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !5253
  br label %42

; <label>:42:                                     ; preds = %39, %36
  %43 = phi i32 [ %38, %36 ], [ %41, %39 ], !dbg !5253
  %44 = phi i32 [ %37, %36 ], [ %40, %39 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !554, metadata !691), !dbg !5229
  %45 = icmp sgt i32 %44, -1, !dbg !5254
  %46 = icmp eq i32 %43, -1, !dbg !5255
  %47 = and i1 %45, %46, !dbg !5256
  br i1 %47, label %48, label %75, !dbg !5256

; <label>:48:                                     ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #12, !dbg !5257
  call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !558, metadata !691), !dbg !5258
  %50 = icmp slt i32 %49, 0, !dbg !5259
  br i1 %50, label %55, label %51, !dbg !5260

; <label>:51:                                     ; preds = %48
  %52 = or i32 %49, 1, !dbg !5261
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %52) #12, !dbg !5262
  %54 = icmp eq i32 %53, -1, !dbg !5263
  br i1 %54, label %55, label %75, !dbg !5264

; <label>:55:                                     ; preds = %51, %48
  %56 = tail call i32* @__errno_location() #17, !dbg !5265
  %57 = load i32, i32* %56, align 4, !dbg !5265, !tbaa !807
  call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !561, metadata !691), !dbg !5266
  %58 = call i32 @close(i32 %44) #12, !dbg !5267
  store i32 %57, i32* %56, align 4, !dbg !5268, !tbaa !807
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !554, metadata !691), !dbg !5229
  br label %75, !dbg !5269

; <label>:59:                                     ; preds = %2
  br i1 %8, label %60, label %66, !dbg !5270

; <label>:60:                                     ; preds = %59
  %61 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !5270
  %62 = load i8*, i8** %61, align 16, !dbg !5270
  %63 = sext i32 %7 to i64, !dbg !5270
  %64 = getelementptr i8, i8* %62, i64 %63, !dbg !5270
  %65 = add i32 %7, 8, !dbg !5270
  store i32 %65, i32* %6, align 16, !dbg !5270
  br label %70, !dbg !5270

; <label>:66:                                     ; preds = %59
  %67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !5270
  %68 = load i8*, i8** %67, align 8, !dbg !5270
  %69 = getelementptr i8, i8* %68, i64 8, !dbg !5270
  store i8* %69, i8** %67, align 8, !dbg !5270
  br label %70, !dbg !5270

; <label>:70:                                     ; preds = %66, %60
  %71 = phi i8* [ %64, %60 ], [ %68, %66 ]
  %72 = bitcast i8* %71 to i8**, !dbg !5270
  %73 = load i8*, i8** %72, align 8, !dbg !5270
  call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !564, metadata !691), !dbg !5271
  %74 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %73) #12, !dbg !5272
  call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !554, metadata !691), !dbg !5229
  br label %75

; <label>:75:                                     ; preds = %33, %51, %55, %42, %70
  %76 = phi i32 [ %74, %70 ], [ %34, %33 ], [ %44, %42 ], [ -1, %55 ], [ %44, %51 ]
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !554, metadata !691), !dbg !5229
  call void @llvm.va_end(i8* nonnull %4), !dbg !5273
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #12, !dbg !5274
  ret i32 %76, !dbg !5275
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !52, !566, !57, !568, !65, !571, !574, !72, !79, !164, !576, !173, !583, !600, !602, !604, !606, !608, !610, !613, !182, !615, !617, !619, !676, !678, !535}
!llvm.ident = !{!680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680}
!llvm.module.flags = !{!681, !682, !683, !684, !685}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 48, type: !37, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !9)
!3 = !DIFile(filename: "src/mktemp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{}
!5 = !{!6, !8}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !{!10, !13, !0, !35}
!10 = !DIGlobalVariableExpression(var: !11)
!11 = distinct !DIGlobalVariable(name: "stdout_closed", scope: !2, file: !3, line: 130, type: !12, isLocal: true, isDefinition: true)
!12 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!13 = !DIGlobalVariableExpression(var: !14)
!14 = distinct !DIGlobalVariable(name: "infomap", scope: !15, file: !16, line: 632, type: !32, isLocal: true, isDefinition: true)
!15 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !16, file: !16, line: 630, type: !17, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !21)
!16 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!17 = !DISubroutineType(types: !18)
!18 = !{null, !19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!21 = !{!22, !23, !24, !31}
!22 = !DILocalVariable(name: "program", arg: 1, scope: !15, file: !16, line: 630, type: !19)
!23 = !DILocalVariable(name: "node", scope: !15, file: !16, line: 642, type: !19)
!24 = !DILocalVariable(name: "map_prog", scope: !15, file: !16, line: 643, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !15, file: !16, line: 632, size: 128, elements: !28)
!28 = !{!29, !30}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !27, file: !16, line: 632, baseType: !19, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !27, file: !16, line: 632, baseType: !19, size: 64, offset: 64)
!31 = !DILocalVariable(name: "lc_messages", scope: !15, file: !16, line: 655, type: !19)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 896, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 7)
!35 = !DIGlobalVariableExpression(var: !36)
!36 = distinct !DIGlobalVariable(name: "default_template", scope: !2, file: !3, line: 39, type: !19, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 2048, elements: !48)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !40, line: 50, size: 256, elements: !41)
!40 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!41 = !{!42, !43, !45, !47}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !39, file: !40, line: 52, baseType: !19, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !39, file: !40, line: 55, baseType: !44, size: 32, offset: 64)
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !39, file: !40, line: 56, baseType: !46, size: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !39, file: !40, line: 57, baseType: !44, size: 32, offset: 192)
!48 = !{!49}
!49 = !DISubrange(count: 8)
!50 = !DIGlobalVariableExpression(var: !51)
!51 = distinct !DIGlobalVariable(name: "Version", scope: !52, file: !53, line: 2, type: !19, isLocal: false, isDefinition: true)
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !54)
!53 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!54 = !{!50}
!55 = !DIGlobalVariableExpression(var: !56)
!56 = distinct !DIGlobalVariable(name: "file_name", scope: !57, file: !62, line: 36, type: !19, isLocal: true, isDefinition: true)
!57 = distinct !DICompileUnit(language: DW_LANG_C99, file: !58, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !59)
!58 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!59 = !{!55, !60}
!60 = !DIGlobalVariableExpression(var: !61)
!61 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !57, file: !62, line: 46, type: !12, isLocal: true, isDefinition: true)
!62 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!63 = !DIGlobalVariableExpression(var: !64)
!64 = distinct !DIGlobalVariable(name: "exit_failure", scope: !65, file: !68, line: 24, type: !69, isLocal: false, isDefinition: true)
!65 = distinct !DICompileUnit(language: DW_LANG_C99, file: !66, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !67)
!66 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!67 = !{!63}
!68 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!69 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !44)
!70 = !DIGlobalVariableExpression(var: !71)
!71 = distinct !DIGlobalVariable(name: "program_name", scope: !72, file: !76, line: 33, type: !19, isLocal: false, isDefinition: true)
!72 = distinct !DICompileUnit(language: DW_LANG_C99, file: !73, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !74, globals: !75)
!73 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!74 = !{!8, !6}
!75 = !{!70}
!76 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!77 = !DIGlobalVariableExpression(var: !78)
!78 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !79, file: !124, line: 77, type: !158, isLocal: false, isDefinition: true)
!79 = distinct !DICompileUnit(language: DW_LANG_C99, file: !80, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !81, retainedTypes: !116, globals: !121)
!80 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!81 = !{!82, !96, !101}
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !83, line: 32, size: 32, elements: !84)
!83 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95}
!85 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!86 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!87 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!88 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!89 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!90 = !DIEnumerator(name: "c_quoting_style", value: 5)
!91 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!92 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!93 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!94 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!95 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !83, line: 242, size: 32, elements: !97)
!97 = !{!98, !99, !100}
!98 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!99 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!100 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !102, line: 46, size: 32, elements: !103)
!102 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!103 = !{!104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115}
!104 = !DIEnumerator(name: "_ISupper", value: 256)
!105 = !DIEnumerator(name: "_ISlower", value: 512)
!106 = !DIEnumerator(name: "_ISalpha", value: 1024)
!107 = !DIEnumerator(name: "_ISdigit", value: 2048)
!108 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!109 = !DIEnumerator(name: "_ISspace", value: 8192)
!110 = !DIEnumerator(name: "_ISprint", value: 16384)
!111 = !DIEnumerator(name: "_ISgraph", value: 32768)
!112 = !DIEnumerator(name: "_ISblank", value: 1)
!113 = !DIEnumerator(name: "_IScntrl", value: 2)
!114 = !DIEnumerator(name: "_ISpunct", value: 4)
!115 = !DIEnumerator(name: "_ISalnum", value: 8)
!116 = !{!44, !117, !118, !6}
!117 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !119, line: 62, baseType: !120)
!119 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!120 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!121 = !{!77, !122, !129, !140, !142, !147, !154, !156}
!122 = !DIGlobalVariableExpression(var: !123)
!123 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !79, file: !124, line: 93, type: !125, isLocal: false, isDefinition: true)
!124 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 320, elements: !127)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!127 = !{!128}
!128 = !DISubrange(count: 10)
!129 = !DIGlobalVariableExpression(var: !130)
!130 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !79, file: !124, line: 1043, type: !131, isLocal: false, isDefinition: true)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !124, line: 57, size: 448, elements: !132)
!132 = !{!133, !134, !135, !138, !139}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !131, file: !124, line: 60, baseType: !82, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !131, file: !124, line: 63, baseType: !44, size: 32, offset: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !131, file: !124, line: 67, baseType: !136, size: 256, offset: 64)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 256, elements: !48)
!137 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !131, file: !124, line: 70, baseType: !19, size: 64, offset: 320)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !131, file: !124, line: 73, baseType: !19, size: 64, offset: 384)
!140 = !DIGlobalVariableExpression(var: !141)
!141 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !79, file: !124, line: 108, type: !131, isLocal: true, isDefinition: true)
!142 = !DIGlobalVariableExpression(var: !143)
!143 = distinct !DIGlobalVariable(name: "slot0", scope: !79, file: !124, line: 834, type: !144, isLocal: true, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 256)
!147 = !DIGlobalVariableExpression(var: !148)
!148 = distinct !DIGlobalVariable(name: "slotvec", scope: !79, file: !124, line: 837, type: !149, isLocal: true, isDefinition: true)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !124, line: 826, size: 128, elements: !151)
!151 = !{!152, !153}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !150, file: !124, line: 828, baseType: !118, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !150, file: !124, line: 829, baseType: !6, size: 64, offset: 64)
!154 = !DIGlobalVariableExpression(var: !155)
!155 = distinct !DIGlobalVariable(name: "nslots", scope: !79, file: !124, line: 835, type: !44, isLocal: true, isDefinition: true)
!156 = !DIGlobalVariableExpression(var: !157)
!157 = distinct !DIGlobalVariable(name: "slotvec0", scope: !79, file: !124, line: 836, type: !150, isLocal: true, isDefinition: true)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 704, elements: !160)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!160 = !{!161}
!161 = !DISubrange(count: 11)
!162 = !DIGlobalVariableExpression(var: !163)
!163 = distinct !DIGlobalVariable(name: "letters", scope: !164, file: !167, line: 185, type: !168, isLocal: true, isDefinition: true)
!164 = distinct !DICompileUnit(language: DW_LANG_C99, file: !165, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !166)
!165 = !DIFile(filename: "./lib/tempname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!166 = !{!162}
!167 = !DIFile(filename: "lib/tempname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 504, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 63)
!171 = !DIGlobalVariableExpression(var: !172)
!172 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !173, file: !176, line: 26, type: !177, isLocal: false, isDefinition: true)
!173 = distinct !DICompileUnit(language: DW_LANG_C99, file: !174, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !175)
!174 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!175 = !{!171}
!176 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 376, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 47)
!180 = !DIGlobalVariableExpression(var: !181)
!181 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !182, file: !527, line: 120, type: !528, isLocal: true, isDefinition: true)
!182 = distinct !DICompileUnit(language: DW_LANG_C99, file: !183, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !184, retainedTypes: !523, globals: !526)
!183 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!184 = !{!185}
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !186, line: 41, size: 32, elements: !187)
!186 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!187 = !{!188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522}
!188 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!189 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!190 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!191 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!192 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!193 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!194 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!195 = !DIEnumerator(name: "DAY_1", value: 131079)
!196 = !DIEnumerator(name: "DAY_2", value: 131080)
!197 = !DIEnumerator(name: "DAY_3", value: 131081)
!198 = !DIEnumerator(name: "DAY_4", value: 131082)
!199 = !DIEnumerator(name: "DAY_5", value: 131083)
!200 = !DIEnumerator(name: "DAY_6", value: 131084)
!201 = !DIEnumerator(name: "DAY_7", value: 131085)
!202 = !DIEnumerator(name: "ABMON_1", value: 131086)
!203 = !DIEnumerator(name: "ABMON_2", value: 131087)
!204 = !DIEnumerator(name: "ABMON_3", value: 131088)
!205 = !DIEnumerator(name: "ABMON_4", value: 131089)
!206 = !DIEnumerator(name: "ABMON_5", value: 131090)
!207 = !DIEnumerator(name: "ABMON_6", value: 131091)
!208 = !DIEnumerator(name: "ABMON_7", value: 131092)
!209 = !DIEnumerator(name: "ABMON_8", value: 131093)
!210 = !DIEnumerator(name: "ABMON_9", value: 131094)
!211 = !DIEnumerator(name: "ABMON_10", value: 131095)
!212 = !DIEnumerator(name: "ABMON_11", value: 131096)
!213 = !DIEnumerator(name: "ABMON_12", value: 131097)
!214 = !DIEnumerator(name: "MON_1", value: 131098)
!215 = !DIEnumerator(name: "MON_2", value: 131099)
!216 = !DIEnumerator(name: "MON_3", value: 131100)
!217 = !DIEnumerator(name: "MON_4", value: 131101)
!218 = !DIEnumerator(name: "MON_5", value: 131102)
!219 = !DIEnumerator(name: "MON_6", value: 131103)
!220 = !DIEnumerator(name: "MON_7", value: 131104)
!221 = !DIEnumerator(name: "MON_8", value: 131105)
!222 = !DIEnumerator(name: "MON_9", value: 131106)
!223 = !DIEnumerator(name: "MON_10", value: 131107)
!224 = !DIEnumerator(name: "MON_11", value: 131108)
!225 = !DIEnumerator(name: "MON_12", value: 131109)
!226 = !DIEnumerator(name: "AM_STR", value: 131110)
!227 = !DIEnumerator(name: "PM_STR", value: 131111)
!228 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!229 = !DIEnumerator(name: "D_FMT", value: 131113)
!230 = !DIEnumerator(name: "T_FMT", value: 131114)
!231 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!232 = !DIEnumerator(name: "ERA", value: 131116)
!233 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!234 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!235 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!236 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!237 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!238 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!239 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!240 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!241 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!242 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!243 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!244 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!245 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!246 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!247 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!248 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!249 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!250 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!251 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!252 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!253 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!254 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!255 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!256 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!257 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!258 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!259 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!260 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!261 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!262 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!263 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!264 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!265 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!266 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!267 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!268 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!269 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!270 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!271 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!272 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!273 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!274 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!275 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!276 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!277 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!278 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!279 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!280 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!281 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!282 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!283 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!284 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!285 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!286 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!287 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!288 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!289 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!290 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!291 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!292 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!293 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!294 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!295 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!296 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!297 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!298 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!299 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!300 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!301 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!302 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!303 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!304 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!305 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!306 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!307 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!308 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!309 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!310 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!311 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!312 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!313 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!314 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!315 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!316 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!317 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!318 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!319 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!320 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!321 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!322 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!323 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!324 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!325 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!326 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!327 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!328 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!329 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!330 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!331 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!332 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!333 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!334 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!335 = !DIEnumerator(name: "CODESET", value: 14)
!336 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!337 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!338 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!339 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!340 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!341 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!342 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!343 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!344 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!345 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!346 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!347 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!348 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!349 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!350 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!351 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!352 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!353 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!354 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!355 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!356 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!357 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!358 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!359 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!360 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!361 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!362 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!363 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!364 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!365 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!366 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!367 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!368 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!369 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!370 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!371 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!372 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!373 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!374 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!375 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!376 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!377 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!378 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!379 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!380 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!381 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!382 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!383 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!384 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!385 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!386 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!387 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!388 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!389 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!390 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!391 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!392 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!393 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!394 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!395 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!396 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!397 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!398 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!399 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!400 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!401 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!402 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!403 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!404 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!405 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!406 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!407 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!408 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!409 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!410 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!411 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!412 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!413 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!414 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!415 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!416 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!417 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!418 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!419 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!420 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!421 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!422 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!423 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!424 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!425 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!426 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!427 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!428 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!429 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!430 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!431 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!432 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!433 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!434 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!435 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!436 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!437 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!438 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!439 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!440 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!441 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!442 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!443 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!444 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!445 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!446 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!447 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!448 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!449 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!450 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!451 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!452 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!453 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!454 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!455 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!456 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!457 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!458 = !DIEnumerator(name: "THOUSEP", value: 65537)
!459 = !DIEnumerator(name: "__GROUPING", value: 65538)
!460 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!461 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!462 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!463 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!464 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!465 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!466 = !DIEnumerator(name: "__YESSTR", value: 327682)
!467 = !DIEnumerator(name: "__NOSTR", value: 327683)
!468 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!469 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!470 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!471 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!472 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!473 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!474 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!475 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!476 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!477 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!478 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!479 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!480 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!481 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!482 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!483 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!484 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!485 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!486 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!487 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!488 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!489 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!490 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!491 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!492 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!493 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!494 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!495 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!496 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!497 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!498 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!499 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!500 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!501 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!502 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!503 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!504 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!505 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!506 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!507 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!508 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!509 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!510 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!511 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!512 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!513 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!514 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!515 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!516 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!517 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!518 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!519 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!520 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!521 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!522 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!523 = !{!8, !6, !524}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!526 = !{!180}
!527 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!528 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !19)
!529 = !DIGlobalVariableExpression(var: !530)
!530 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !531, file: !532, line: 335, type: !44, isLocal: true, isDefinition: true)
!531 = distinct !DISubprogram(name: "rpl_fcntl", scope: !532, file: !532, line: 272, type: !533, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !535, variables: !538)
!532 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!533 = !DISubroutineType(types: !534)
!534 = !{!44, !44, !44, null}
!535 = distinct !DICompileUnit(language: DW_LANG_C99, file: !536, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !537)
!536 = !DIFile(filename: "./lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!537 = !{!529}
!538 = !{!539, !540, !541, !554, !555, !558, !561, !564}
!539 = !DILocalVariable(name: "fd", arg: 1, scope: !531, file: !532, line: 272, type: !44)
!540 = !DILocalVariable(name: "action", arg: 2, scope: !531, file: !532, line: 272, type: !44)
!541 = !DILocalVariable(name: "arg", scope: !531, file: !532, line: 274, type: !542)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !543, line: 30, baseType: !544)
!543 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !536, line: 274, baseType: !545)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, size: 192, elements: !552)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !536, line: 274, size: 192, elements: !547)
!547 = !{!548, !549, !550, !551}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !546, file: !536, line: 274, baseType: !137, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !546, file: !536, line: 274, baseType: !137, size: 32, offset: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !546, file: !536, line: 274, baseType: !8, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !546, file: !536, line: 274, baseType: !8, size: 64, offset: 128)
!552 = !{!553}
!553 = !DISubrange(count: 1)
!554 = !DILocalVariable(name: "result", scope: !531, file: !532, line: 275, type: !44)
!555 = !DILocalVariable(name: "target", scope: !556, file: !532, line: 322, type: !44)
!556 = distinct !DILexicalBlock(scope: !557, file: !532, line: 321, column: 7)
!557 = distinct !DILexicalBlock(scope: !531, file: !532, line: 278, column: 5)
!558 = !DILocalVariable(name: "flags", scope: !559, file: !532, line: 359, type: !44)
!559 = distinct !DILexicalBlock(scope: !560, file: !532, line: 358, column: 11)
!560 = distinct !DILexicalBlock(scope: !556, file: !532, line: 357, column: 13)
!561 = !DILocalVariable(name: "saved_errno", scope: !562, file: !532, line: 362, type: !44)
!562 = distinct !DILexicalBlock(scope: !563, file: !532, line: 361, column: 15)
!563 = distinct !DILexicalBlock(scope: !559, file: !532, line: 360, column: 17)
!564 = !DILocalVariable(name: "p", scope: !565, file: !532, line: 404, type: !8)
!565 = distinct !DILexicalBlock(scope: !557, file: !532, line: 402, column: 7)
!566 = distinct !DICompileUnit(language: DW_LANG_C99, file: !567, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!567 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!568 = distinct !DICompileUnit(language: DW_LANG_C99, file: !569, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !570)
!569 = !DIFile(filename: "./lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!570 = !{!6}
!571 = distinct !DICompileUnit(language: DW_LANG_C99, file: !572, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !573)
!572 = !DIFile(filename: "./lib/filenamecat.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!573 = !{!8}
!574 = distinct !DICompileUnit(language: DW_LANG_C99, file: !575, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !573)
!575 = !DIFile(filename: "./lib/filenamecat-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!576 = distinct !DICompileUnit(language: DW_LANG_C99, file: !577, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !578, retainedTypes: !573)
!577 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!578 = !{!579}
!579 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !580, line: 41, size: 32, elements: !581)
!580 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!581 = !{!582}
!582 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!583 = distinct !DICompileUnit(language: DW_LANG_C99, file: !584, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !585, retainedTypes: !599)
!584 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!585 = !{!586}
!586 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !588, file: !587, line: 192, size: 32, elements: !597)
!587 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!588 = distinct !DISubprogram(name: "x2nrealloc", scope: !587, file: !587, line: 180, type: !589, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !592)
!589 = !DISubroutineType(types: !590)
!590 = !{!8, !8, !591, !118}
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!592 = !{!593, !594, !595, !596}
!593 = !DILocalVariable(name: "p", arg: 1, scope: !588, file: !587, line: 180, type: !8)
!594 = !DILocalVariable(name: "pn", arg: 2, scope: !588, file: !587, line: 180, type: !591)
!595 = !DILocalVariable(name: "s", arg: 3, scope: !588, file: !587, line: 180, type: !118)
!596 = !DILocalVariable(name: "n", scope: !588, file: !587, line: 182, type: !118)
!597 = !{!598}
!598 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!599 = !{!118, !6, !8}
!600 = distinct !DICompileUnit(language: DW_LANG_C99, file: !601, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!601 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!602 = distinct !DICompileUnit(language: DW_LANG_C99, file: !603, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !573)
!603 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!604 = distinct !DICompileUnit(language: DW_LANG_C99, file: !605, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!605 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!606 = distinct !DICompileUnit(language: DW_LANG_C99, file: !607, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !573)
!607 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!608 = distinct !DICompileUnit(language: DW_LANG_C99, file: !609, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !573)
!609 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!610 = distinct !DICompileUnit(language: DW_LANG_C99, file: !611, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !612)
!611 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!612 = !{!118}
!613 = distinct !DICompileUnit(language: DW_LANG_C99, file: !614, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!614 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!615 = distinct !DICompileUnit(language: DW_LANG_C99, file: !616, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!616 = !DIFile(filename: "./lib/randint.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!617 = distinct !DICompileUnit(language: DW_LANG_C99, file: !618, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !612)
!618 = !DIFile(filename: "./lib/randread.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!619 = distinct !DICompileUnit(language: DW_LANG_C99, file: !620, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !621, retainedTypes: !675)
!620 = !DIFile(filename: "./lib/rand-isaac.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!621 = !{!622}
!622 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !624, file: !623, line: 107, size: 32, elements: !673)
!623 = !DIFile(filename: "lib/rand-isaac.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!624 = distinct !DISubprogram(name: "isaac_refill", scope: !623, file: !623, line: 97, type: !625, isLocal: false, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, unit: !619, variables: !640)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !627, !639}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isaac_state", file: !629, line: 56, size: 16576, elements: !630)
!629 = !DIFile(filename: "./lib/rand-isaac.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!630 = !{!631, !636, !637, !638}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !628, file: !629, line: 58, baseType: !632, size: 16384)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !633, size: 16384, elements: !145)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "isaac_word", file: !629, line: 44, baseType: !634)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !635, line: 58, baseType: !120)
!635 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!636 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !628, file: !629, line: 59, baseType: !633, size: 64, offset: 16384)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !628, file: !629, line: 59, baseType: !633, size: 64, offset: 16448)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !628, file: !629, line: 59, baseType: !633, size: 64, offset: 16512)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!640 = !{!641, !642, !643, !644, !645, !646, !647, !650, !651, !653, !654, !656, !657, !659, !660, !663, !664, !666, !667, !669, !670, !672}
!641 = !DILocalVariable(name: "s", arg: 1, scope: !624, file: !623, line: 97, type: !627)
!642 = !DILocalVariable(name: "result", arg: 2, scope: !624, file: !623, line: 97, type: !639)
!643 = !DILocalVariable(name: "a", scope: !624, file: !623, line: 100, type: !633)
!644 = !DILocalVariable(name: "b", scope: !624, file: !623, line: 101, type: !633)
!645 = !DILocalVariable(name: "m", scope: !624, file: !623, line: 104, type: !639)
!646 = !DILocalVariable(name: "r", scope: !624, file: !623, line: 105, type: !639)
!647 = !DILocalVariable(name: "x", scope: !648, file: !623, line: 125, type: !633)
!648 = distinct !DILexicalBlock(scope: !649, file: !623, line: 125, column: 7)
!649 = distinct !DILexicalBlock(scope: !624, file: !623, line: 124, column: 5)
!650 = !DILocalVariable(name: "y", scope: !648, file: !623, line: 125, type: !633)
!651 = !DILocalVariable(name: "x", scope: !652, file: !623, line: 126, type: !633)
!652 = distinct !DILexicalBlock(scope: !649, file: !623, line: 126, column: 7)
!653 = !DILocalVariable(name: "y", scope: !652, file: !623, line: 126, type: !633)
!654 = !DILocalVariable(name: "x", scope: !655, file: !623, line: 127, type: !633)
!655 = distinct !DILexicalBlock(scope: !649, file: !623, line: 127, column: 7)
!656 = !DILocalVariable(name: "y", scope: !655, file: !623, line: 127, type: !633)
!657 = !DILocalVariable(name: "x", scope: !658, file: !623, line: 128, type: !633)
!658 = distinct !DILexicalBlock(scope: !649, file: !623, line: 128, column: 7)
!659 = !DILocalVariable(name: "y", scope: !658, file: !623, line: 128, type: !633)
!660 = !DILocalVariable(name: "x", scope: !661, file: !623, line: 135, type: !633)
!661 = distinct !DILexicalBlock(scope: !662, file: !623, line: 135, column: 7)
!662 = distinct !DILexicalBlock(scope: !624, file: !623, line: 134, column: 5)
!663 = !DILocalVariable(name: "y", scope: !661, file: !623, line: 135, type: !633)
!664 = !DILocalVariable(name: "x", scope: !665, file: !623, line: 136, type: !633)
!665 = distinct !DILexicalBlock(scope: !662, file: !623, line: 136, column: 7)
!666 = !DILocalVariable(name: "y", scope: !665, file: !623, line: 136, type: !633)
!667 = !DILocalVariable(name: "x", scope: !668, file: !623, line: 137, type: !633)
!668 = distinct !DILexicalBlock(scope: !662, file: !623, line: 137, column: 7)
!669 = !DILocalVariable(name: "y", scope: !668, file: !623, line: 137, type: !633)
!670 = !DILocalVariable(name: "x", scope: !671, file: !623, line: 138, type: !633)
!671 = distinct !DILexicalBlock(scope: !662, file: !623, line: 138, column: 7)
!672 = !DILocalVariable(name: "y", scope: !671, file: !623, line: 138, type: !633)
!673 = !{!674}
!674 = !DIEnumerator(name: "HALF", value: 128)
!675 = !{!633}
!676 = distinct !DICompileUnit(language: DW_LANG_C99, file: !677, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!677 = !DIFile(filename: "./lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!678 = distinct !DICompileUnit(language: DW_LANG_C99, file: !679, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!679 = !DIFile(filename: "./lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!680 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!681 = !{i32 2, !"Dwarf Version", i32 4}
!682 = !{i32 2, !"Debug Info Version", i32 3}
!683 = !{i32 1, !"wchar_size", i32 4}
!684 = !{i32 7, !"PIC Level", i32 2}
!685 = !{i32 7, !"PIE Level", i32 2}
!686 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 61, type: !687, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !689)
!687 = !DISubroutineType(types: !688)
!688 = !{null, !44}
!689 = !{!690}
!690 = !DILocalVariable(name: "status", arg: 1, scope: !686, file: !3, line: 61, type: !44)
!691 = !DIExpression()
!692 = !DILocation(line: 61, column: 12, scope: !686)
!693 = !DILocation(line: 63, column: 14, scope: !694)
!694 = distinct !DILexicalBlock(scope: !686, file: !3, line: 63, column: 7)
!695 = !DILocation(line: 63, column: 7, scope: !686)
!696 = !DILocation(line: 64, column: 5, scope: !697)
!697 = distinct !DILexicalBlock(scope: !694, file: !3, line: 64, column: 5)
!698 = !{!699, !699, i64 0}
!699 = !{!"any pointer", !700, i64 0}
!700 = !{!"omnipotent char", !701, i64 0}
!701 = !{!"Simple C/C++ TBAA"}
!702 = !DILocation(line: 67, column: 7, scope: !703)
!703 = distinct !DILexicalBlock(scope: !694, file: !3, line: 66, column: 5)
!704 = !DILocation(line: 68, column: 7, scope: !703)
!705 = !DILocation(line: 73, column: 7, scope: !703)
!706 = !DILocation(line: 76, column: 7, scope: !703)
!707 = !DILocation(line: 77, column: 7, scope: !703)
!708 = !DILocation(line: 82, column: 7, scope: !703)
!709 = !DILocation(line: 86, column: 7, scope: !703)
!710 = !DILocation(line: 93, column: 7, scope: !703)
!711 = !DILocation(line: 98, column: 7, scope: !703)
!712 = !DILocation(line: 99, column: 7, scope: !703)
!713 = !DILocation(line: 642, column: 15, scope: !15, inlinedAt: !714)
!714 = distinct !DILocation(line: 100, column: 7, scope: !703)
!715 = !DILocation(line: 651, column: 3, scope: !15, inlinedAt: !714)
!716 = !DILocation(line: 655, column: 29, scope: !15, inlinedAt: !714)
!717 = !DILocation(line: 655, column: 15, scope: !15, inlinedAt: !714)
!718 = !DILocation(line: 656, column: 7, scope: !719, inlinedAt: !714)
!719 = distinct !DILexicalBlock(scope: !15, file: !16, line: 656, column: 7)
!720 = !DILocation(line: 656, column: 19, scope: !719, inlinedAt: !714)
!721 = !DILocation(line: 656, column: 22, scope: !719, inlinedAt: !714)
!722 = !DILocation(line: 656, column: 7, scope: !15, inlinedAt: !714)
!723 = !DILocation(line: 662, column: 7, scope: !724, inlinedAt: !714)
!724 = distinct !DILexicalBlock(scope: !719, file: !16, line: 657, column: 5)
!725 = !DILocation(line: 664, column: 5, scope: !724, inlinedAt: !714)
!726 = !DILocation(line: 665, column: 3, scope: !15, inlinedAt: !714)
!727 = !DILocation(line: 667, column: 3, scope: !15, inlinedAt: !714)
!728 = !DILocation(line: 103, column: 3, scope: !686)
!729 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 146, type: !730, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !733)
!730 = !DISubroutineType(types: !731)
!731 = !{!44, !44, !732}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!733 = !{!734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !754, !759, !763, !766, !768}
!734 = !DILocalVariable(name: "argc", arg: 1, scope: !729, file: !3, line: 146, type: !44)
!735 = !DILocalVariable(name: "argv", arg: 2, scope: !729, file: !3, line: 146, type: !732)
!736 = !DILocalVariable(name: "dest_dir", scope: !729, file: !3, line: 148, type: !19)
!737 = !DILocalVariable(name: "dest_dir_arg", scope: !729, file: !3, line: 149, type: !19)
!738 = !DILocalVariable(name: "suppress_file_err", scope: !729, file: !3, line: 150, type: !12)
!739 = !DILocalVariable(name: "c", scope: !729, file: !3, line: 151, type: !44)
!740 = !DILocalVariable(name: "n_args", scope: !729, file: !3, line: 152, type: !137)
!741 = !DILocalVariable(name: "template", scope: !729, file: !3, line: 153, type: !6)
!742 = !DILocalVariable(name: "suffix", scope: !729, file: !3, line: 154, type: !6)
!743 = !DILocalVariable(name: "use_dest_dir", scope: !729, file: !3, line: 155, type: !12)
!744 = !DILocalVariable(name: "deprecated_t_option", scope: !729, file: !3, line: 156, type: !12)
!745 = !DILocalVariable(name: "create_directory", scope: !729, file: !3, line: 157, type: !12)
!746 = !DILocalVariable(name: "dry_run", scope: !729, file: !3, line: 158, type: !12)
!747 = !DILocalVariable(name: "status", scope: !729, file: !3, line: 159, type: !44)
!748 = !DILocalVariable(name: "x_count", scope: !729, file: !3, line: 160, type: !118)
!749 = !DILocalVariable(name: "suffix_len", scope: !729, file: !3, line: 161, type: !118)
!750 = !DILocalVariable(name: "dest_name", scope: !729, file: !3, line: 162, type: !6)
!751 = !DILocalVariable(name: "len", scope: !752, file: !3, line: 227, type: !118)
!752 = distinct !DILexicalBlock(scope: !753, file: !3, line: 226, column: 5)
!753 = distinct !DILexicalBlock(scope: !729, file: !3, line: 225, column: 7)
!754 = !DILocalVariable(name: "env", scope: !755, file: !3, line: 267, type: !6)
!755 = distinct !DILexicalBlock(scope: !756, file: !3, line: 266, column: 9)
!756 = distinct !DILexicalBlock(scope: !757, file: !3, line: 265, column: 11)
!757 = distinct !DILexicalBlock(scope: !758, file: !3, line: 264, column: 5)
!758 = distinct !DILexicalBlock(scope: !729, file: !3, line: 263, column: 7)
!759 = !DILocalVariable(name: "env", scope: !760, file: !3, line: 286, type: !6)
!760 = distinct !DILexicalBlock(scope: !761, file: !3, line: 285, column: 13)
!761 = distinct !DILexicalBlock(scope: !762, file: !3, line: 282, column: 15)
!762 = distinct !DILexicalBlock(scope: !756, file: !3, line: 281, column: 9)
!763 = !DILocalVariable(name: "err", scope: !764, file: !3, line: 308, type: !44)
!764 = distinct !DILexicalBlock(scope: !765, file: !3, line: 307, column: 5)
!765 = distinct !DILexicalBlock(scope: !729, file: !3, line: 306, column: 7)
!766 = !DILocalVariable(name: "fd", scope: !767, file: !3, line: 319, type: !44)
!767 = distinct !DILexicalBlock(scope: !765, file: !3, line: 318, column: 5)
!768 = !DILocalVariable(name: "saved_errno", scope: !769, file: !3, line: 336, type: !44)
!769 = distinct !DILexicalBlock(scope: !770, file: !3, line: 335, column: 9)
!770 = distinct !DILexicalBlock(scope: !771, file: !3, line: 334, column: 11)
!771 = distinct !DILexicalBlock(scope: !772, file: !3, line: 330, column: 5)
!772 = distinct !DILexicalBlock(scope: !729, file: !3, line: 329, column: 7)
!773 = !DILocation(line: 146, column: 11, scope: !729)
!774 = !DILocation(line: 146, column: 24, scope: !729)
!775 = !DILocation(line: 149, column: 15, scope: !729)
!776 = !DILocation(line: 150, column: 8, scope: !729)
!777 = !DILocation(line: 154, column: 9, scope: !729)
!778 = !DILocation(line: 155, column: 8, scope: !729)
!779 = !DILocation(line: 156, column: 8, scope: !729)
!780 = !DILocation(line: 157, column: 8, scope: !729)
!781 = !DILocation(line: 158, column: 8, scope: !729)
!782 = !DILocation(line: 159, column: 7, scope: !729)
!783 = !DILocation(line: 165, column: 21, scope: !729)
!784 = !DILocation(line: 165, column: 3, scope: !729)
!785 = !DILocation(line: 166, column: 3, scope: !729)
!786 = !DILocation(line: 167, column: 3, scope: !729)
!787 = !DILocation(line: 168, column: 3, scope: !729)
!788 = !DILocation(line: 170, column: 3, scope: !729)
!789 = !DILocation(line: 172, column: 3, scope: !729)
!790 = !DILocation(line: 172, column: 15, scope: !729)
!791 = !DILocation(line: 151, column: 7, scope: !729)
!792 = distinct !{!792, !789, !793}
!793 = !DILocation(line: 206, column: 5, scope: !729)
!794 = !DILocation(line: 180, column: 26, scope: !795)
!795 = distinct !DILexicalBlock(scope: !796, file: !3, line: 175, column: 9)
!796 = distinct !DILexicalBlock(scope: !729, file: !3, line: 173, column: 5)
!797 = !DILocation(line: 182, column: 11, scope: !795)
!798 = !DILocation(line: 185, column: 11, scope: !795)
!799 = !DILocation(line: 189, column: 11, scope: !795)
!800 = !DILocation(line: 192, column: 11, scope: !795)
!801 = !DILocation(line: 195, column: 20, scope: !795)
!802 = !DILocation(line: 196, column: 11, scope: !795)
!803 = !DILocation(line: 198, column: 9, scope: !795)
!804 = !DILocation(line: 202, column: 9, scope: !795)
!805 = !DILocation(line: 204, column: 11, scope: !795)
!806 = !DILocation(line: 208, column: 19, scope: !729)
!807 = !{!808, !808, i64 0}
!808 = !{!"int", !700, i64 0}
!809 = !DILocation(line: 208, column: 17, scope: !729)
!810 = !DILocation(line: 152, column: 16, scope: !729)
!811 = !DILocation(line: 209, column: 9, scope: !812)
!812 = distinct !DILexicalBlock(scope: !729, file: !3, line: 209, column: 7)
!813 = !DILocation(line: 209, column: 7, scope: !729)
!814 = !DILocation(line: 211, column: 20, scope: !815)
!815 = distinct !DILexicalBlock(scope: !812, file: !3, line: 210, column: 5)
!816 = !DILocation(line: 211, column: 7, scope: !815)
!817 = !DILocation(line: 212, column: 7, scope: !815)
!818 = !DILocation(line: 215, column: 14, scope: !819)
!819 = distinct !DILexicalBlock(scope: !729, file: !3, line: 215, column: 7)
!820 = !DILocation(line: 215, column: 7, scope: !729)
!821 = !DILocation(line: 222, column: 18, scope: !822)
!822 = distinct !DILexicalBlock(scope: !819, file: !3, line: 221, column: 5)
!823 = !DILocation(line: 153, column: 9, scope: !729)
!824 = !DILocation(line: 225, column: 7, scope: !753)
!825 = !DILocation(line: 225, column: 7, scope: !729)
!826 = !DILocation(line: 227, column: 20, scope: !752)
!827 = !DILocation(line: 227, column: 14, scope: !752)
!828 = !DILocation(line: 228, column: 12, scope: !829)
!829 = distinct !DILexicalBlock(scope: !752, file: !3, line: 228, column: 11)
!830 = !DILocation(line: 228, column: 16, scope: !829)
!831 = !DILocation(line: 228, column: 32, scope: !829)
!832 = !DILocation(line: 228, column: 19, scope: !829)
!833 = !{!700, !700, i64 0}
!834 = !DILocation(line: 228, column: 37, scope: !829)
!835 = !DILocation(line: 228, column: 11, scope: !752)
!836 = !DILocation(line: 230, column: 11, scope: !837)
!837 = distinct !DILexicalBlock(scope: !829, file: !3, line: 229, column: 9)
!838 = !DILocation(line: 234, column: 20, scope: !752)
!839 = !DILocation(line: 161, column: 10, scope: !729)
!840 = !DILocation(line: 235, column: 35, scope: !752)
!841 = !DILocation(line: 235, column: 48, scope: !752)
!842 = !DILocalVariable(name: "n", arg: 1, scope: !843, file: !587, line: 220, type: !118)
!843 = distinct !DISubprogram(name: "xcharalloc", scope: !587, file: !587, line: 220, type: !844, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !846)
!844 = !DISubroutineType(types: !845)
!845 = !{!6, !118}
!846 = !{!842}
!847 = !DILocation(line: 220, column: 20, scope: !843, inlinedAt: !848)
!848 = distinct !DILocation(line: 235, column: 19, scope: !752)
!849 = !DILocation(line: 222, column: 10, scope: !843, inlinedAt: !848)
!850 = !DILocation(line: 162, column: 9, scope: !729)
!851 = !DILocation(line: 236, column: 7, scope: !752)
!852 = !DILocation(line: 237, column: 25, scope: !752)
!853 = !DILocation(line: 237, column: 51, scope: !752)
!854 = !DILocation(line: 237, column: 7, scope: !752)
!855 = !DILocation(line: 240, column: 5, scope: !752)
!856 = !DILocation(line: 243, column: 18, scope: !857)
!857 = distinct !DILexicalBlock(scope: !753, file: !3, line: 242, column: 5)
!858 = !DILocation(line: 244, column: 16, scope: !857)
!859 = !DILocation(line: 245, column: 12, scope: !860)
!860 = distinct !DILexicalBlock(scope: !857, file: !3, line: 245, column: 11)
!861 = !DILocation(line: 245, column: 11, scope: !857)
!862 = !DILocation(line: 246, column: 18, scope: !860)
!863 = !DILocation(line: 246, column: 9, scope: !860)
!864 = !DILocation(line: 248, column: 15, scope: !860)
!865 = !DILocation(line: 249, column: 20, scope: !857)
!866 = !DILocation(line: 253, column: 7, scope: !867)
!867 = distinct !DILexicalBlock(scope: !729, file: !3, line: 253, column: 7)
!868 = !DILocation(line: 253, column: 18, scope: !867)
!869 = !DILocation(line: 253, column: 21, scope: !867)
!870 = !DILocation(line: 253, column: 45, scope: !867)
!871 = !DILocation(line: 253, column: 7, scope: !729)
!872 = !DILocation(line: 255, column: 7, scope: !873)
!873 = distinct !DILexicalBlock(scope: !867, file: !3, line: 254, column: 5)
!874 = !DILocation(line: 259, column: 53, scope: !729)
!875 = !DILocalVariable(name: "s", arg: 1, scope: !876, file: !3, line: 107, type: !19)
!876 = distinct !DISubprogram(name: "count_consecutive_X_s", scope: !3, file: !3, line: 107, type: !877, isLocal: true, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !879)
!877 = !DISubroutineType(types: !878)
!878 = !{!118, !19, !118}
!879 = !{!875, !880, !881}
!880 = !DILocalVariable(name: "len", arg: 2, scope: !876, file: !3, line: 107, type: !118)
!881 = !DILocalVariable(name: "n", scope: !876, file: !3, line: 109, type: !118)
!882 = !DILocation(line: 107, column: 36, scope: !876, inlinedAt: !883)
!883 = distinct !DILocation(line: 259, column: 13, scope: !729)
!884 = !DILocation(line: 107, column: 46, scope: !876, inlinedAt: !883)
!885 = !DILocation(line: 109, column: 10, scope: !876, inlinedAt: !883)
!886 = !DILocation(line: 110, column: 11, scope: !887, inlinedAt: !883)
!887 = distinct !DILexicalBlock(scope: !888, file: !3, line: 110, column: 3)
!888 = distinct !DILexicalBlock(scope: !876, file: !3, line: 110, column: 3)
!889 = !DILocation(line: 110, column: 15, scope: !887, inlinedAt: !883)
!890 = !DILocation(line: 110, column: 23, scope: !887, inlinedAt: !883)
!891 = !DILocation(line: 110, column: 18, scope: !887, inlinedAt: !883)
!892 = !DILocation(line: 110, column: 27, scope: !887, inlinedAt: !883)
!893 = !DILocation(line: 110, column: 3, scope: !888, inlinedAt: !883)
!894 = !DILocation(line: 111, column: 5, scope: !887, inlinedAt: !883)
!895 = distinct !{!895, !896, !897}
!896 = !DILocation(line: 110, column: 3, scope: !888)
!897 = !DILocation(line: 111, column: 7, scope: !888)
!898 = !DILocation(line: 160, column: 10, scope: !729)
!899 = !DILocation(line: 260, column: 15, scope: !900)
!900 = distinct !DILexicalBlock(scope: !729, file: !3, line: 260, column: 7)
!901 = !DILocation(line: 260, column: 7, scope: !729)
!902 = !DILocation(line: 261, column: 5, scope: !900)
!903 = !DILocation(line: 263, column: 7, scope: !758)
!904 = !DILocation(line: 263, column: 7, scope: !729)
!905 = !DILocation(line: 265, column: 11, scope: !756)
!906 = !DILocation(line: 265, column: 11, scope: !757)
!907 = !DILocation(line: 267, column: 23, scope: !755)
!908 = !DILocation(line: 267, column: 17, scope: !755)
!909 = !DILocation(line: 268, column: 15, scope: !910)
!910 = distinct !DILexicalBlock(scope: !755, file: !3, line: 268, column: 15)
!911 = !DILocation(line: 268, column: 19, scope: !910)
!912 = !DILocation(line: 268, column: 22, scope: !910)
!913 = !DILocation(line: 268, column: 15, scope: !755)
!914 = !DILocation(line: 270, column: 20, scope: !915)
!915 = distinct !DILexicalBlock(scope: !910, file: !3, line: 270, column: 20)
!916 = !DILocation(line: 270, column: 33, scope: !915)
!917 = !DILocation(line: 270, column: 36, scope: !915)
!918 = !DILocation(line: 270, column: 20, scope: !910)
!919 = !DILocation(line: 148, column: 15, scope: !729)
!920 = !DILocation(line: 275, column: 15, scope: !921)
!921 = distinct !DILexicalBlock(scope: !755, file: !3, line: 275, column: 15)
!922 = !DILocation(line: 275, column: 41, scope: !921)
!923 = !DILocation(line: 275, column: 15, scope: !755)
!924 = !DILocation(line: 276, column: 13, scope: !921)
!925 = !DILocation(line: 282, column: 15, scope: !761)
!926 = !DILocation(line: 282, column: 28, scope: !761)
!927 = !DILocation(line: 282, column: 31, scope: !761)
!928 = !DILocation(line: 282, column: 15, scope: !762)
!929 = !DILocation(line: 286, column: 27, scope: !760)
!930 = !DILocation(line: 286, column: 21, scope: !760)
!931 = !DILocation(line: 287, column: 27, scope: !760)
!932 = !DILocation(line: 287, column: 31, scope: !760)
!933 = !DILocation(line: 287, column: 34, scope: !760)
!934 = !DILocation(line: 289, column: 15, scope: !935)
!935 = distinct !DILexicalBlock(scope: !762, file: !3, line: 289, column: 15)
!936 = !DILocation(line: 289, column: 15, scope: !762)
!937 = !DILocation(line: 290, column: 13, scope: !935)
!938 = !DILocation(line: 296, column: 19, scope: !757)
!939 = !DILocation(line: 297, column: 7, scope: !757)
!940 = !DILocation(line: 300, column: 5, scope: !757)
!941 = !DILocation(line: 304, column: 15, scope: !729)
!942 = !DILocation(line: 306, column: 7, scope: !765)
!943 = !DILocation(line: 306, column: 7, scope: !729)
!944 = !DILocalVariable(name: "tmpl", arg: 1, scope: !945, file: !3, line: 123, type: !6)
!945 = distinct !DISubprogram(name: "mkdtemp_len", scope: !3, file: !3, line: 123, type: !946, isLocal: true, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !948)
!946 = !DISubroutineType(types: !947)
!947 = !{!44, !6, !118, !118, !12}
!948 = !{!944, !949, !950, !951}
!949 = !DILocalVariable(name: "suff_len", arg: 2, scope: !945, file: !3, line: 123, type: !118)
!950 = !DILocalVariable(name: "x_len", arg: 3, scope: !945, file: !3, line: 123, type: !118)
!951 = !DILocalVariable(name: "dry_run", arg: 4, scope: !945, file: !3, line: 123, type: !12)
!952 = !DILocation(line: 123, column: 20, scope: !945, inlinedAt: !953)
!953 = distinct !DILocation(line: 308, column: 17, scope: !764)
!954 = !DILocation(line: 123, column: 33, scope: !945, inlinedAt: !953)
!955 = !DILocation(line: 123, column: 50, scope: !945, inlinedAt: !953)
!956 = !DILocation(line: 123, column: 62, scope: !945, inlinedAt: !953)
!957 = !DILocation(line: 125, column: 47, scope: !945, inlinedAt: !953)
!958 = !DILocation(line: 125, column: 10, scope: !945, inlinedAt: !953)
!959 = !DILocation(line: 308, column: 11, scope: !764)
!960 = !DILocation(line: 309, column: 15, scope: !961)
!961 = distinct !DILexicalBlock(scope: !764, file: !3, line: 309, column: 11)
!962 = !DILocation(line: 309, column: 11, scope: !764)
!963 = !DILocation(line: 311, column: 16, scope: !964)
!964 = distinct !DILexicalBlock(scope: !965, file: !3, line: 311, column: 15)
!965 = distinct !DILexicalBlock(scope: !961, file: !3, line: 310, column: 9)
!966 = !DILocation(line: 311, column: 15, scope: !965)
!967 = !DILocation(line: 312, column: 23, scope: !964)
!968 = !DILocation(line: 312, column: 30, scope: !964)
!969 = !DILocation(line: 313, column: 20, scope: !964)
!970 = !DILocation(line: 312, column: 13, scope: !964)
!971 = !DILocalVariable(name: "tmpl", arg: 1, scope: !972, file: !3, line: 116, type: !6)
!972 = distinct !DISubprogram(name: "mkstemp_len", scope: !3, file: !3, line: 116, type: !946, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !973)
!973 = !{!971, !974, !975, !976}
!974 = !DILocalVariable(name: "suff_len", arg: 2, scope: !972, file: !3, line: 116, type: !118)
!975 = !DILocalVariable(name: "x_len", arg: 3, scope: !972, file: !3, line: 116, type: !118)
!976 = !DILocalVariable(name: "dry_run", arg: 4, scope: !972, file: !3, line: 116, type: !12)
!977 = !DILocation(line: 116, column: 20, scope: !972, inlinedAt: !978)
!978 = distinct !DILocation(line: 319, column: 16, scope: !767)
!979 = !DILocation(line: 116, column: 33, scope: !972, inlinedAt: !978)
!980 = !DILocation(line: 116, column: 50, scope: !972, inlinedAt: !978)
!981 = !DILocation(line: 116, column: 62, scope: !972, inlinedAt: !978)
!982 = !DILocation(line: 118, column: 47, scope: !972, inlinedAt: !978)
!983 = !DILocation(line: 118, column: 10, scope: !972, inlinedAt: !978)
!984 = !DILocation(line: 319, column: 11, scope: !767)
!985 = !DILocation(line: 320, column: 14, scope: !986)
!986 = distinct !DILexicalBlock(scope: !767, file: !3, line: 320, column: 11)
!987 = !DILocation(line: 320, column: 18, scope: !986)
!988 = !DILocation(line: 320, column: 31, scope: !986)
!989 = !DILocation(line: 331, column: 7, scope: !771)
!990 = !DILocation(line: 334, column: 20, scope: !770)
!991 = !DILocation(line: 320, column: 34, scope: !986)
!992 = !DILocation(line: 320, column: 45, scope: !986)
!993 = !DILocation(line: 320, column: 11, scope: !767)
!994 = !DILocation(line: 322, column: 16, scope: !995)
!995 = distinct !DILexicalBlock(scope: !996, file: !3, line: 322, column: 15)
!996 = distinct !DILexicalBlock(scope: !986, file: !3, line: 321, column: 9)
!997 = !DILocation(line: 322, column: 15, scope: !996)
!998 = !DILocation(line: 323, column: 23, scope: !995)
!999 = !DILocation(line: 323, column: 30, scope: !995)
!1000 = !DILocation(line: 324, column: 20, scope: !995)
!1001 = !DILocation(line: 323, column: 13, scope: !995)
!1002 = !DILocation(line: 334, column: 62, scope: !770)
!1003 = !DILocation(line: 334, column: 48, scope: !770)
!1004 = !DILocation(line: 334, column: 70, scope: !770)
!1005 = !DILocation(line: 334, column: 11, scope: !771)
!1006 = !DILocation(line: 336, column: 29, scope: !769)
!1007 = !DILocation(line: 336, column: 15, scope: !769)
!1008 = !DILocation(line: 337, column: 11, scope: !769)
!1009 = !DILocation(line: 338, column: 16, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !769, file: !3, line: 338, column: 15)
!1011 = !DILocation(line: 338, column: 15, scope: !769)
!1012 = !DILocation(line: 339, column: 36, scope: !1010)
!1013 = !DILocation(line: 339, column: 13, scope: !1010)
!1014 = !DILocation(line: 350, column: 1, scope: !729)
!1015 = distinct !DISubprogram(name: "maybe_close_stdout", scope: !3, file: !3, line: 137, type: !1016, isLocal: true, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{null}
!1018 = !DILocation(line: 139, column: 7, scope: !1015)
!1019 = !DILocation(line: 140, column: 5, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 139, column: 7)
!1021 = !DILocation(line: 141, column: 26, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 141, column: 12)
!1023 = !DILocation(line: 141, column: 12, scope: !1022)
!1024 = !DILocation(line: 141, column: 34, scope: !1022)
!1025 = !DILocation(line: 141, column: 12, scope: !1020)
!1026 = !DILocation(line: 142, column: 5, scope: !1022)
!1027 = !DILocation(line: 143, column: 1, scope: !1015)
!1028 = distinct !DISubprogram(name: "close_stream", scope: !1029, file: !1029, line: 56, type: !1030, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !1085)
!1029 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!44, !1032}
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1034, line: 7, baseType: !1035)
!1034 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1036, line: 241, size: 1728, elements: !1037)
!1036 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1037 = !{!1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1058, !1059, !1060, !1061, !1065, !1066, !1068, !1070, !1073, !1075, !1076, !1077, !1078, !1079, !1080, !1081}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1035, file: !1036, line: 242, baseType: !44, size: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1035, file: !1036, line: 247, baseType: !6, size: 64, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1035, file: !1036, line: 248, baseType: !6, size: 64, offset: 128)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1035, file: !1036, line: 249, baseType: !6, size: 64, offset: 192)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1035, file: !1036, line: 250, baseType: !6, size: 64, offset: 256)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1035, file: !1036, line: 251, baseType: !6, size: 64, offset: 320)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1035, file: !1036, line: 252, baseType: !6, size: 64, offset: 384)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1035, file: !1036, line: 253, baseType: !6, size: 64, offset: 448)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1035, file: !1036, line: 254, baseType: !6, size: 64, offset: 512)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1035, file: !1036, line: 256, baseType: !6, size: 64, offset: 576)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1035, file: !1036, line: 257, baseType: !6, size: 64, offset: 640)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1035, file: !1036, line: 258, baseType: !6, size: 64, offset: 704)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1035, file: !1036, line: 260, baseType: !1051, size: 64, offset: 768)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1036, line: 156, size: 192, elements: !1053)
!1053 = !{!1054, !1055, !1057}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1052, file: !1036, line: 157, baseType: !1051, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1052, file: !1036, line: 158, baseType: !1056, size: 64, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1052, file: !1036, line: 162, baseType: !44, size: 32, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1035, file: !1036, line: 262, baseType: !1056, size: 64, offset: 832)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1035, file: !1036, line: 264, baseType: !44, size: 32, offset: 896)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1035, file: !1036, line: 268, baseType: !44, size: 32, offset: 928)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1035, file: !1036, line: 270, baseType: !1062, size: 64, offset: 960)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1063, line: 140, baseType: !1064)
!1063 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1064 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1035, file: !1036, line: 274, baseType: !117, size: 16, offset: 1024)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1035, file: !1036, line: 275, baseType: !1067, size: 8, offset: 1040)
!1067 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1035, file: !1036, line: 276, baseType: !1069, size: 8, offset: 1048)
!1069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !552)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1035, file: !1036, line: 280, baseType: !1071, size: 64, offset: 1088)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1036, line: 150, baseType: null)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1035, file: !1036, line: 289, baseType: !1074, size: 64, offset: 1152)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1063, line: 141, baseType: !1064)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1035, file: !1036, line: 297, baseType: !8, size: 64, offset: 1216)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1035, file: !1036, line: 298, baseType: !8, size: 64, offset: 1280)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1035, file: !1036, line: 299, baseType: !8, size: 64, offset: 1344)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1035, file: !1036, line: 300, baseType: !8, size: 64, offset: 1408)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1035, file: !1036, line: 302, baseType: !118, size: 64, offset: 1472)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1035, file: !1036, line: 303, baseType: !44, size: 32, offset: 1536)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1035, file: !1036, line: 305, baseType: !1082, size: 160, offset: 1568)
!1082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !1083)
!1083 = !{!1084}
!1084 = !DISubrange(count: 20)
!1085 = !{!1086, !1087, !1089, !1090}
!1086 = !DILocalVariable(name: "stream", arg: 1, scope: !1028, file: !1029, line: 56, type: !1032)
!1087 = !DILocalVariable(name: "some_pending", scope: !1028, file: !1029, line: 58, type: !1088)
!1088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!1089 = !DILocalVariable(name: "prev_fail", scope: !1028, file: !1029, line: 59, type: !1088)
!1090 = !DILocalVariable(name: "fclose_fail", scope: !1028, file: !1029, line: 60, type: !1088)
!1091 = !DILocation(line: 56, column: 21, scope: !1028)
!1092 = !DILocation(line: 58, column: 30, scope: !1028)
!1093 = !DILocalVariable(name: "__stream", arg: 1, scope: !1094, file: !1095, line: 132, type: !1032)
!1094 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1095, file: !1095, line: 132, type: !1030, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !1096)
!1095 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1096 = !{!1093}
!1097 = !DILocation(line: 132, column: 1, scope: !1094, inlinedAt: !1098)
!1098 = distinct !DILocation(line: 59, column: 27, scope: !1028)
!1099 = !DILocation(line: 134, column: 10, scope: !1094, inlinedAt: !1098)
!1100 = !{!1101, !808, i64 0}
!1101 = !{!"_IO_FILE", !808, i64 0, !699, i64 8, !699, i64 16, !699, i64 24, !699, i64 32, !699, i64 40, !699, i64 48, !699, i64 56, !699, i64 64, !699, i64 72, !699, i64 80, !699, i64 88, !699, i64 96, !699, i64 104, !808, i64 112, !808, i64 116, !1102, i64 120, !1103, i64 128, !700, i64 130, !700, i64 131, !699, i64 136, !1102, i64 144, !699, i64 152, !699, i64 160, !699, i64 168, !699, i64 176, !1102, i64 184, !808, i64 192, !700, i64 196}
!1102 = !{!"long", !700, i64 0}
!1103 = !{!"short", !700, i64 0}
!1104 = !DILocation(line: 59, column: 43, scope: !1028)
!1105 = !DILocation(line: 60, column: 29, scope: !1028)
!1106 = !DILocation(line: 60, column: 45, scope: !1028)
!1107 = !DILocation(line: 70, column: 17, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1028, file: !1029, line: 70, column: 7)
!1109 = !DILocation(line: 58, column: 50, scope: !1028)
!1110 = !DILocation(line: 70, column: 33, scope: !1108)
!1111 = !DILocation(line: 70, column: 53, scope: !1108)
!1112 = !DILocation(line: 70, column: 59, scope: !1108)
!1113 = !DILocation(line: 70, column: 7, scope: !1028)
!1114 = !DILocation(line: 72, column: 11, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1108, file: !1029, line: 71, column: 5)
!1116 = !DILocation(line: 73, column: 9, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1115, file: !1029, line: 72, column: 11)
!1118 = !DILocation(line: 73, column: 15, scope: !1117)
!1119 = !DILocation(line: 78, column: 1, scope: !1028)
!1120 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !62, file: !62, line: 41, type: !17, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !57, variables: !1121)
!1121 = !{!1122}
!1122 = !DILocalVariable(name: "file", arg: 1, scope: !1120, file: !62, line: 41, type: !19)
!1123 = !DILocation(line: 41, column: 41, scope: !1120)
!1124 = !DILocation(line: 43, column: 13, scope: !1120)
!1125 = !DILocation(line: 44, column: 1, scope: !1120)
!1126 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !62, file: !62, line: 78, type: !1127, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !57, variables: !1129)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{null, !12}
!1129 = !{!1130}
!1130 = !DILocalVariable(name: "ignore", arg: 1, scope: !1126, file: !62, line: 78, type: !12)
!1131 = !DILocation(line: 78, column: 37, scope: !1126)
!1132 = !DILocation(line: 80, column: 16, scope: !1126)
!1133 = !{!1134, !1134, i64 0}
!1134 = !{!"_Bool", !700, i64 0}
!1135 = !DILocation(line: 81, column: 1, scope: !1126)
!1136 = distinct !DISubprogram(name: "close_stdout", scope: !62, file: !62, line: 107, type: !1016, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !57, variables: !1137)
!1137 = !{!1138}
!1138 = !DILocalVariable(name: "write_error", scope: !1139, file: !62, line: 112, type: !19)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !62, line: 111, column: 5)
!1140 = distinct !DILexicalBlock(scope: !1136, file: !62, line: 109, column: 7)
!1141 = !DILocation(line: 109, column: 21, scope: !1140)
!1142 = !DILocation(line: 109, column: 7, scope: !1140)
!1143 = !DILocation(line: 109, column: 29, scope: !1140)
!1144 = !DILocation(line: 110, column: 7, scope: !1140)
!1145 = !DILocation(line: 110, column: 12, scope: !1140)
!1146 = !{i8 0, i8 2}
!1147 = !DILocation(line: 114, column: 19, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1139, file: !62, line: 113, column: 11)
!1149 = !DILocation(line: 110, column: 25, scope: !1140)
!1150 = !DILocation(line: 110, column: 28, scope: !1140)
!1151 = !DILocation(line: 110, column: 34, scope: !1140)
!1152 = !DILocation(line: 109, column: 7, scope: !1136)
!1153 = !DILocation(line: 112, column: 33, scope: !1139)
!1154 = !DILocation(line: 112, column: 19, scope: !1139)
!1155 = !DILocation(line: 113, column: 11, scope: !1148)
!1156 = !DILocation(line: 113, column: 11, scope: !1139)
!1157 = !DILocation(line: 114, column: 36, scope: !1148)
!1158 = !DILocation(line: 114, column: 9, scope: !1148)
!1159 = !DILocation(line: 117, column: 9, scope: !1148)
!1160 = !DILocation(line: 119, column: 14, scope: !1139)
!1161 = !DILocation(line: 119, column: 7, scope: !1139)
!1162 = !DILocation(line: 122, column: 22, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1136, file: !62, line: 122, column: 8)
!1164 = !DILocation(line: 122, column: 8, scope: !1163)
!1165 = !DILocation(line: 122, column: 30, scope: !1163)
!1166 = !DILocation(line: 122, column: 8, scope: !1136)
!1167 = !DILocation(line: 123, column: 13, scope: !1163)
!1168 = !DILocation(line: 123, column: 6, scope: !1163)
!1169 = !DILocation(line: 124, column: 1, scope: !1136)
!1170 = distinct !DISubprogram(name: "last_component", scope: !1171, file: !1171, line: 30, type: !1172, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !568, variables: !1174)
!1171 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!6, !19}
!1174 = !{!1175, !1176, !1177, !1178}
!1175 = !DILocalVariable(name: "name", arg: 1, scope: !1170, file: !1171, line: 30, type: !19)
!1176 = !DILocalVariable(name: "base", scope: !1170, file: !1171, line: 32, type: !19)
!1177 = !DILocalVariable(name: "p", scope: !1170, file: !1171, line: 33, type: !19)
!1178 = !DILocalVariable(name: "saw_slash", scope: !1170, file: !1171, line: 34, type: !12)
!1179 = !DILocation(line: 30, column: 29, scope: !1170)
!1180 = !DILocation(line: 32, column: 15, scope: !1170)
!1181 = !DILocation(line: 34, column: 8, scope: !1170)
!1182 = !DILocation(line: 36, column: 3, scope: !1170)
!1183 = !DILocation(line: 36, column: 10, scope: !1170)
!1184 = !DILocation(line: 37, column: 9, scope: !1170)
!1185 = distinct !{!1185, !1182, !1184}
!1186 = !DILocation(line: 39, column: 3, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1170, file: !1171, line: 39, column: 3)
!1188 = !DILocation(line: 39, column: 18, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1187, file: !1171, line: 39, column: 3)
!1190 = !DILocation(line: 33, column: 15, scope: !1170)
!1191 = !DILocation(line: 43, column: 16, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !1171, line: 43, column: 16)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !1171, line: 41, column: 11)
!1194 = distinct !DILexicalBlock(scope: !1189, file: !1171, line: 40, column: 5)
!1195 = !DILocation(line: 43, column: 16, scope: !1193)
!1196 = !DILocation(line: 39, column: 23, scope: !1189)
!1197 = !DILocation(line: 39, column: 3, scope: !1189)
!1198 = distinct !{!1198, !1186, !1199}
!1199 = !DILocation(line: 48, column: 5, scope: !1187)
!1200 = !DILocation(line: 50, column: 3, scope: !1170)
!1201 = distinct !DISubprogram(name: "base_len", scope: !1171, file: !1171, line: 58, type: !1202, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !568, variables: !1204)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!118, !19}
!1204 = !{!1205, !1206, !1207}
!1205 = !DILocalVariable(name: "name", arg: 1, scope: !1201, file: !1171, line: 58, type: !19)
!1206 = !DILocalVariable(name: "len", scope: !1201, file: !1171, line: 60, type: !118)
!1207 = !DILocalVariable(name: "prefix_len", scope: !1201, file: !1171, line: 61, type: !118)
!1208 = !DILocation(line: 58, column: 23, scope: !1201)
!1209 = !DILocation(line: 61, column: 10, scope: !1201)
!1210 = !DILocation(line: 63, column: 14, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1201, file: !1171, line: 63, column: 3)
!1212 = !DILocation(line: 60, column: 10, scope: !1201)
!1213 = !DILocation(line: 63, column: 32, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1211, file: !1171, line: 63, column: 3)
!1215 = !DILocation(line: 63, column: 38, scope: !1214)
!1216 = !DILocation(line: 63, column: 41, scope: !1214)
!1217 = distinct !{!1217, !1218, !1219}
!1218 = !DILocation(line: 63, column: 3, scope: !1211)
!1219 = !DILocation(line: 64, column: 5, scope: !1211)
!1220 = !DILocation(line: 74, column: 3, scope: !1201)
!1221 = distinct !DISubprogram(name: "file_name_concat", scope: !1222, file: !1222, line: 35, type: !1223, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !571, variables: !1225)
!1222 = !DIFile(filename: "lib/filenamecat.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!6, !19, !19, !732}
!1225 = !{!1226, !1227, !1228, !1229}
!1226 = !DILocalVariable(name: "dir", arg: 1, scope: !1221, file: !1222, line: 35, type: !19)
!1227 = !DILocalVariable(name: "abase", arg: 2, scope: !1221, file: !1222, line: 35, type: !19)
!1228 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1221, file: !1222, line: 35, type: !732)
!1229 = !DILocalVariable(name: "p", scope: !1221, file: !1222, line: 37, type: !6)
!1230 = !DILocation(line: 35, column: 31, scope: !1221)
!1231 = !DILocation(line: 35, column: 48, scope: !1221)
!1232 = !DILocation(line: 35, column: 62, scope: !1221)
!1233 = !DILocation(line: 37, column: 13, scope: !1221)
!1234 = !DILocation(line: 37, column: 9, scope: !1221)
!1235 = !DILocation(line: 38, column: 9, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1221, file: !1222, line: 38, column: 7)
!1237 = !DILocation(line: 38, column: 7, scope: !1221)
!1238 = !DILocation(line: 39, column: 5, scope: !1236)
!1239 = !DILocation(line: 40, column: 3, scope: !1221)
!1240 = distinct !DISubprogram(name: "mfile_name_concat", scope: !1241, file: !1241, line: 61, type: !1223, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, unit: !574, variables: !1242)
!1241 = !DIFile(filename: "lib/filenamecat-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1242 = !{!1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253}
!1243 = !DILocalVariable(name: "dir", arg: 1, scope: !1240, file: !1241, line: 61, type: !19)
!1244 = !DILocalVariable(name: "abase", arg: 2, scope: !1240, file: !1241, line: 61, type: !19)
!1245 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1240, file: !1241, line: 61, type: !732)
!1246 = !DILocalVariable(name: "dirbase", scope: !1240, file: !1241, line: 63, type: !19)
!1247 = !DILocalVariable(name: "dirbaselen", scope: !1240, file: !1241, line: 64, type: !118)
!1248 = !DILocalVariable(name: "dirlen", scope: !1240, file: !1241, line: 65, type: !118)
!1249 = !DILocalVariable(name: "needs_separator", scope: !1240, file: !1241, line: 66, type: !118)
!1250 = !DILocalVariable(name: "base", scope: !1240, file: !1241, line: 68, type: !19)
!1251 = !DILocalVariable(name: "baselen", scope: !1240, file: !1241, line: 69, type: !118)
!1252 = !DILocalVariable(name: "p_concat", scope: !1240, file: !1241, line: 71, type: !6)
!1253 = !DILocalVariable(name: "p", scope: !1240, file: !1241, line: 72, type: !6)
!1254 = !DILocation(line: 61, column: 32, scope: !1240)
!1255 = !DILocation(line: 61, column: 49, scope: !1240)
!1256 = !DILocation(line: 61, column: 63, scope: !1240)
!1257 = !DILocation(line: 63, column: 25, scope: !1240)
!1258 = !DILocation(line: 63, column: 15, scope: !1240)
!1259 = !DILocation(line: 64, column: 23, scope: !1240)
!1260 = !DILocation(line: 64, column: 10, scope: !1240)
!1261 = !DILocation(line: 65, column: 27, scope: !1240)
!1262 = !DILocation(line: 65, column: 33, scope: !1240)
!1263 = !DILocation(line: 65, column: 10, scope: !1240)
!1264 = !DILocation(line: 66, column: 29, scope: !1240)
!1265 = !DILocation(line: 66, column: 40, scope: !1240)
!1266 = !DILocation(line: 66, column: 45, scope: !1240)
!1267 = !DILocation(line: 66, column: 10, scope: !1240)
!1268 = !DILocalVariable(name: "f", arg: 1, scope: !1269, file: !1241, line: 38, type: !19)
!1269 = distinct !DISubprogram(name: "longest_relative_suffix", scope: !1241, file: !1241, line: 38, type: !1270, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !574, variables: !1272)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!19, !19}
!1272 = !{!1268}
!1273 = !DILocation(line: 38, column: 38, scope: !1269, inlinedAt: !1274)
!1274 = distinct !DILocation(line: 68, column: 22, scope: !1240)
!1275 = !DILocation(line: 40, column: 8, scope: !1276, inlinedAt: !1274)
!1276 = distinct !DILexicalBlock(scope: !1269, file: !1241, line: 40, column: 3)
!1277 = !DILocation(line: 40, column: 41, scope: !1278, inlinedAt: !1274)
!1278 = distinct !DILexicalBlock(scope: !1276, file: !1241, line: 40, column: 3)
!1279 = !DILocation(line: 40, column: 56, scope: !1278, inlinedAt: !1274)
!1280 = !DILocation(line: 40, column: 3, scope: !1276, inlinedAt: !1274)
!1281 = distinct !{!1281, !1282, !1283}
!1282 = !DILocation(line: 40, column: 3, scope: !1276)
!1283 = !DILocation(line: 41, column: 5, scope: !1276)
!1284 = !DILocation(line: 68, column: 15, scope: !1240)
!1285 = !DILocation(line: 69, column: 20, scope: !1240)
!1286 = !DILocation(line: 69, column: 10, scope: !1240)
!1287 = !DILocation(line: 71, column: 35, scope: !1240)
!1288 = !DILocation(line: 71, column: 53, scope: !1240)
!1289 = !DILocation(line: 71, column: 63, scope: !1240)
!1290 = !DILocation(line: 71, column: 20, scope: !1240)
!1291 = !DILocation(line: 71, column: 9, scope: !1240)
!1292 = !DILocation(line: 74, column: 16, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1240, file: !1241, line: 74, column: 7)
!1294 = !DILocation(line: 74, column: 7, scope: !1240)
!1295 = !DILocalVariable(name: "__dest", arg: 1, scope: !1296, file: !1297, line: 45, type: !1300)
!1296 = distinct !DISubprogram(name: "mempcpy", scope: !1297, file: !1297, line: 45, type: !1298, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !574, variables: !1304)
!1297 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!8, !1300, !1301, !118}
!1300 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!1301 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1302)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1304 = !{!1295, !1305, !1306}
!1305 = !DILocalVariable(name: "__src", arg: 2, scope: !1296, file: !1297, line: 45, type: !1301)
!1306 = !DILocalVariable(name: "__len", arg: 3, scope: !1296, file: !1297, line: 45, type: !118)
!1307 = !DILocation(line: 45, column: 1, scope: !1296, inlinedAt: !1308)
!1308 = distinct !DILocation(line: 77, column: 7, scope: !1240)
!1309 = !DILocation(line: 48, column: 57, scope: !1296, inlinedAt: !1308)
!1310 = !DILocation(line: 48, column: 10, scope: !1296, inlinedAt: !1308)
!1311 = !DILocation(line: 72, column: 9, scope: !1240)
!1312 = !DILocation(line: 78, column: 6, scope: !1240)
!1313 = !DILocation(line: 79, column: 5, scope: !1240)
!1314 = !DILocation(line: 81, column: 7, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1240, file: !1241, line: 81, column: 7)
!1316 = !DILocation(line: 81, column: 7, scope: !1240)
!1317 = !DILocation(line: 82, column: 27, scope: !1315)
!1318 = !DILocation(line: 82, column: 25, scope: !1315)
!1319 = !DILocation(line: 82, column: 21, scope: !1315)
!1320 = !DILocation(line: 82, column: 5, scope: !1315)
!1321 = !DILocation(line: 45, column: 1, scope: !1296, inlinedAt: !1322)
!1322 = distinct !DILocation(line: 84, column: 7, scope: !1240)
!1323 = !DILocation(line: 48, column: 57, scope: !1296, inlinedAt: !1322)
!1324 = !DILocation(line: 48, column: 10, scope: !1296, inlinedAt: !1322)
!1325 = !DILocation(line: 85, column: 6, scope: !1240)
!1326 = !DILocation(line: 87, column: 3, scope: !1240)
!1327 = !DILocation(line: 88, column: 1, scope: !1240)
!1328 = distinct !DISubprogram(name: "set_program_name", scope: !76, file: !76, line: 39, type: !17, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !72, variables: !1329)
!1329 = !{!1330, !1331, !1332}
!1330 = !DILocalVariable(name: "argv0", arg: 1, scope: !1328, file: !76, line: 39, type: !19)
!1331 = !DILocalVariable(name: "slash", scope: !1328, file: !76, line: 46, type: !19)
!1332 = !DILocalVariable(name: "base", scope: !1328, file: !76, line: 47, type: !19)
!1333 = !DILocation(line: 39, column: 31, scope: !1328)
!1334 = !DILocation(line: 51, column: 13, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1328, file: !76, line: 51, column: 7)
!1336 = !DILocation(line: 51, column: 7, scope: !1328)
!1337 = !DILocation(line: 55, column: 14, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1335, file: !76, line: 52, column: 5)
!1339 = !DILocation(line: 54, column: 7, scope: !1338)
!1340 = !DILocation(line: 56, column: 7, scope: !1338)
!1341 = !DILocation(line: 59, column: 11, scope: !1328)
!1342 = !DILocation(line: 46, column: 15, scope: !1328)
!1343 = !DILocation(line: 60, column: 17, scope: !1328)
!1344 = !DILocation(line: 60, column: 33, scope: !1328)
!1345 = !DILocation(line: 60, column: 11, scope: !1328)
!1346 = !DILocation(line: 47, column: 15, scope: !1328)
!1347 = !DILocation(line: 61, column: 12, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1328, file: !76, line: 61, column: 7)
!1349 = !DILocation(line: 61, column: 20, scope: !1348)
!1350 = !DILocation(line: 61, column: 25, scope: !1348)
!1351 = !DILocation(line: 61, column: 42, scope: !1348)
!1352 = !DILocation(line: 61, column: 28, scope: !1348)
!1353 = !DILocation(line: 61, column: 61, scope: !1348)
!1354 = !DILocation(line: 61, column: 7, scope: !1328)
!1355 = !DILocation(line: 64, column: 11, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !76, line: 64, column: 11)
!1357 = distinct !DILexicalBlock(scope: !1348, file: !76, line: 62, column: 5)
!1358 = !DILocation(line: 64, column: 36, scope: !1356)
!1359 = !DILocation(line: 64, column: 11, scope: !1357)
!1360 = !DILocation(line: 66, column: 24, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1356, file: !76, line: 65, column: 9)
!1362 = !DILocation(line: 70, column: 41, scope: !1361)
!1363 = !DILocation(line: 72, column: 9, scope: !1361)
!1364 = !DILocation(line: 84, column: 16, scope: !1328)
!1365 = !DILocation(line: 90, column: 27, scope: !1328)
!1366 = !DILocation(line: 92, column: 1, scope: !1328)
!1367 = distinct !DISubprogram(name: "clone_quoting_options", scope: !124, file: !124, line: 114, type: !1368, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !1371)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!1370, !1370}
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!1371 = !{!1372, !1373, !1374}
!1372 = !DILocalVariable(name: "o", arg: 1, scope: !1367, file: !124, line: 114, type: !1370)
!1373 = !DILocalVariable(name: "e", scope: !1367, file: !124, line: 116, type: !44)
!1374 = !DILocalVariable(name: "p", scope: !1367, file: !124, line: 117, type: !1370)
!1375 = !DILocation(line: 114, column: 48, scope: !1367)
!1376 = !DILocation(line: 116, column: 11, scope: !1367)
!1377 = !DILocation(line: 116, column: 7, scope: !1367)
!1378 = !DILocation(line: 117, column: 40, scope: !1367)
!1379 = !DILocation(line: 117, column: 31, scope: !1367)
!1380 = !DILocation(line: 117, column: 27, scope: !1367)
!1381 = !DILocation(line: 119, column: 9, scope: !1367)
!1382 = !DILocation(line: 120, column: 3, scope: !1367)
!1383 = distinct !DISubprogram(name: "get_quoting_style", scope: !124, file: !124, line: 125, type: !1384, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !1388)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!82, !1386}
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!1388 = !{!1389}
!1389 = !DILocalVariable(name: "o", arg: 1, scope: !1383, file: !124, line: 125, type: !1386)
!1390 = !DILocation(line: 125, column: 50, scope: !1383)
!1391 = !DILocation(line: 127, column: 11, scope: !1383)
!1392 = !DILocation(line: 127, column: 46, scope: !1383)
!1393 = !{!1394, !700, i64 0}
!1394 = !{!"quoting_options", !700, i64 0, !808, i64 4, !700, i64 8, !699, i64 40, !699, i64 48}
!1395 = !DILocation(line: 127, column: 3, scope: !1383)
!1396 = distinct !DISubprogram(name: "set_quoting_style", scope: !124, file: !124, line: 133, type: !1397, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !1399)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{null, !1370, !82}
!1399 = !{!1400, !1401}
!1400 = !DILocalVariable(name: "o", arg: 1, scope: !1396, file: !124, line: 133, type: !1370)
!1401 = !DILocalVariable(name: "s", arg: 2, scope: !1396, file: !124, line: 133, type: !82)
!1402 = !DILocation(line: 133, column: 44, scope: !1396)
!1403 = !DILocation(line: 133, column: 66, scope: !1396)
!1404 = !DILocation(line: 135, column: 4, scope: !1396)
!1405 = !DILocation(line: 135, column: 39, scope: !1396)
!1406 = !DILocation(line: 135, column: 45, scope: !1396)
!1407 = !DILocation(line: 136, column: 1, scope: !1396)
!1408 = distinct !DISubprogram(name: "set_char_quoting", scope: !124, file: !124, line: 144, type: !1409, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !1411)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!44, !1370, !7, !44}
!1411 = !{!1412, !1413, !1414, !1415, !1416, !1418, !1419}
!1412 = !DILocalVariable(name: "o", arg: 1, scope: !1408, file: !124, line: 144, type: !1370)
!1413 = !DILocalVariable(name: "c", arg: 2, scope: !1408, file: !124, line: 144, type: !7)
!1414 = !DILocalVariable(name: "i", arg: 3, scope: !1408, file: !124, line: 144, type: !44)
!1415 = !DILocalVariable(name: "uc", scope: !1408, file: !124, line: 146, type: !525)
!1416 = !DILocalVariable(name: "p", scope: !1408, file: !124, line: 147, type: !1417)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!1418 = !DILocalVariable(name: "shift", scope: !1408, file: !124, line: 149, type: !44)
!1419 = !DILocalVariable(name: "r", scope: !1408, file: !124, line: 150, type: !44)
!1420 = !DILocation(line: 144, column: 43, scope: !1408)
!1421 = !DILocation(line: 144, column: 51, scope: !1408)
!1422 = !DILocation(line: 144, column: 58, scope: !1408)
!1423 = !DILocation(line: 146, column: 17, scope: !1408)
!1424 = !DILocation(line: 148, column: 6, scope: !1408)
!1425 = !DILocation(line: 148, column: 62, scope: !1408)
!1426 = !DILocation(line: 148, column: 57, scope: !1408)
!1427 = !DILocation(line: 147, column: 17, scope: !1408)
!1428 = !DILocation(line: 149, column: 18, scope: !1408)
!1429 = !DILocation(line: 149, column: 15, scope: !1408)
!1430 = !DILocation(line: 149, column: 7, scope: !1408)
!1431 = !DILocation(line: 150, column: 12, scope: !1408)
!1432 = !DILocation(line: 150, column: 15, scope: !1408)
!1433 = !DILocation(line: 150, column: 25, scope: !1408)
!1434 = !DILocation(line: 150, column: 7, scope: !1408)
!1435 = !DILocation(line: 151, column: 13, scope: !1408)
!1436 = !DILocation(line: 151, column: 18, scope: !1408)
!1437 = !DILocation(line: 151, column: 23, scope: !1408)
!1438 = !DILocation(line: 151, column: 6, scope: !1408)
!1439 = !DILocation(line: 152, column: 3, scope: !1408)
!1440 = distinct !DISubprogram(name: "set_quoting_flags", scope: !124, file: !124, line: 160, type: !1441, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !1443)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!44, !1370, !44}
!1443 = !{!1444, !1445, !1446}
!1444 = !DILocalVariable(name: "o", arg: 1, scope: !1440, file: !124, line: 160, type: !1370)
!1445 = !DILocalVariable(name: "i", arg: 2, scope: !1440, file: !124, line: 160, type: !44)
!1446 = !DILocalVariable(name: "r", scope: !1440, file: !124, line: 162, type: !44)
!1447 = !DILocation(line: 160, column: 44, scope: !1440)
!1448 = !DILocation(line: 160, column: 51, scope: !1440)
!1449 = !DILocation(line: 163, column: 8, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1440, file: !124, line: 163, column: 7)
!1451 = !DILocation(line: 163, column: 7, scope: !1440)
!1452 = !DILocation(line: 165, column: 10, scope: !1440)
!1453 = !{!1394, !808, i64 4}
!1454 = !DILocation(line: 162, column: 7, scope: !1440)
!1455 = !DILocation(line: 166, column: 12, scope: !1440)
!1456 = !DILocation(line: 167, column: 3, scope: !1440)
!1457 = distinct !DISubprogram(name: "set_custom_quoting", scope: !124, file: !124, line: 171, type: !1458, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !1460)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{null, !1370, !19, !19}
!1460 = !{!1461, !1462, !1463}
!1461 = !DILocalVariable(name: "o", arg: 1, scope: !1457, file: !124, line: 171, type: !1370)
!1462 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1457, file: !124, line: 172, type: !19)
!1463 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1457, file: !124, line: 172, type: !19)
!1464 = !DILocation(line: 171, column: 45, scope: !1457)
!1465 = !DILocation(line: 172, column: 33, scope: !1457)
!1466 = !DILocation(line: 172, column: 57, scope: !1457)
!1467 = !DILocation(line: 174, column: 8, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1457, file: !124, line: 174, column: 7)
!1469 = !DILocation(line: 174, column: 7, scope: !1457)
!1470 = !DILocation(line: 176, column: 6, scope: !1457)
!1471 = !DILocation(line: 176, column: 12, scope: !1457)
!1472 = !DILocation(line: 177, column: 8, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1457, file: !124, line: 177, column: 7)
!1474 = !DILocation(line: 177, column: 23, scope: !1473)
!1475 = !DILocation(line: 177, column: 19, scope: !1473)
!1476 = !DILocation(line: 178, column: 5, scope: !1473)
!1477 = !DILocation(line: 179, column: 6, scope: !1457)
!1478 = !DILocation(line: 179, column: 17, scope: !1457)
!1479 = !{!1394, !699, i64 40}
!1480 = !DILocation(line: 180, column: 6, scope: !1457)
!1481 = !DILocation(line: 180, column: 18, scope: !1457)
!1482 = !{!1394, !699, i64 48}
!1483 = !DILocation(line: 181, column: 1, scope: !1457)
!1484 = distinct !DISubprogram(name: "quotearg_buffer", scope: !124, file: !124, line: 776, type: !1485, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !1487)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!118, !6, !118, !19, !118, !1386}
!1487 = !{!1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495}
!1488 = !DILocalVariable(name: "buffer", arg: 1, scope: !1484, file: !124, line: 776, type: !6)
!1489 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1484, file: !124, line: 776, type: !118)
!1490 = !DILocalVariable(name: "arg", arg: 3, scope: !1484, file: !124, line: 777, type: !19)
!1491 = !DILocalVariable(name: "argsize", arg: 4, scope: !1484, file: !124, line: 777, type: !118)
!1492 = !DILocalVariable(name: "o", arg: 5, scope: !1484, file: !124, line: 778, type: !1386)
!1493 = !DILocalVariable(name: "p", scope: !1484, file: !124, line: 780, type: !1386)
!1494 = !DILocalVariable(name: "e", scope: !1484, file: !124, line: 781, type: !44)
!1495 = !DILocalVariable(name: "r", scope: !1484, file: !124, line: 782, type: !118)
!1496 = !DILocation(line: 776, column: 24, scope: !1484)
!1497 = !DILocation(line: 776, column: 39, scope: !1484)
!1498 = !DILocation(line: 777, column: 30, scope: !1484)
!1499 = !DILocation(line: 777, column: 42, scope: !1484)
!1500 = !DILocation(line: 778, column: 48, scope: !1484)
!1501 = !DILocation(line: 780, column: 37, scope: !1484)
!1502 = !DILocation(line: 780, column: 33, scope: !1484)
!1503 = !DILocation(line: 781, column: 11, scope: !1484)
!1504 = !DILocation(line: 781, column: 7, scope: !1484)
!1505 = !DILocation(line: 783, column: 43, scope: !1484)
!1506 = !DILocation(line: 783, column: 53, scope: !1484)
!1507 = !DILocation(line: 783, column: 60, scope: !1484)
!1508 = !DILocation(line: 784, column: 43, scope: !1484)
!1509 = !DILocation(line: 784, column: 58, scope: !1484)
!1510 = !DILocation(line: 782, column: 14, scope: !1484)
!1511 = !DILocation(line: 782, column: 10, scope: !1484)
!1512 = !DILocation(line: 785, column: 9, scope: !1484)
!1513 = !DILocation(line: 786, column: 3, scope: !1484)
!1514 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !124, file: !124, line: 248, type: !1515, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !1519)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!118, !6, !118, !19, !118, !82, !44, !1517, !19, !19}
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!1519 = !{!1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1544, !1545, !1546, !1547, !1548, !1551, !1552, !1570, !1573, !1574, !1581}
!1520 = !DILocalVariable(name: "buffer", arg: 1, scope: !1514, file: !124, line: 248, type: !6)
!1521 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1514, file: !124, line: 248, type: !118)
!1522 = !DILocalVariable(name: "arg", arg: 3, scope: !1514, file: !124, line: 249, type: !19)
!1523 = !DILocalVariable(name: "argsize", arg: 4, scope: !1514, file: !124, line: 249, type: !118)
!1524 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1514, file: !124, line: 250, type: !82)
!1525 = !DILocalVariable(name: "flags", arg: 6, scope: !1514, file: !124, line: 250, type: !44)
!1526 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1514, file: !124, line: 251, type: !1517)
!1527 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1514, file: !124, line: 252, type: !19)
!1528 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1514, file: !124, line: 253, type: !19)
!1529 = !DILocalVariable(name: "i", scope: !1514, file: !124, line: 255, type: !118)
!1530 = !DILocalVariable(name: "len", scope: !1514, file: !124, line: 256, type: !118)
!1531 = !DILocalVariable(name: "orig_buffersize", scope: !1514, file: !124, line: 257, type: !118)
!1532 = !DILocalVariable(name: "quote_string", scope: !1514, file: !124, line: 258, type: !19)
!1533 = !DILocalVariable(name: "quote_string_len", scope: !1514, file: !124, line: 259, type: !118)
!1534 = !DILocalVariable(name: "backslash_escapes", scope: !1514, file: !124, line: 260, type: !12)
!1535 = !DILocalVariable(name: "unibyte_locale", scope: !1514, file: !124, line: 261, type: !12)
!1536 = !DILocalVariable(name: "elide_outer_quotes", scope: !1514, file: !124, line: 262, type: !12)
!1537 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1514, file: !124, line: 263, type: !12)
!1538 = !DILocalVariable(name: "encountered_single_quote", scope: !1514, file: !124, line: 264, type: !12)
!1539 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1514, file: !124, line: 265, type: !12)
!1540 = !DILocalVariable(name: "c", scope: !1541, file: !124, line: 394, type: !525)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !124, line: 393, column: 5)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !124, line: 392, column: 3)
!1543 = distinct !DILexicalBlock(scope: !1514, file: !124, line: 392, column: 3)
!1544 = !DILocalVariable(name: "esc", scope: !1541, file: !124, line: 395, type: !525)
!1545 = !DILocalVariable(name: "is_right_quote", scope: !1541, file: !124, line: 396, type: !12)
!1546 = !DILocalVariable(name: "escaping", scope: !1541, file: !124, line: 397, type: !12)
!1547 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1541, file: !124, line: 398, type: !12)
!1548 = !DILocalVariable(name: "m", scope: !1549, file: !124, line: 602, type: !118)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !124, line: 600, column: 11)
!1550 = distinct !DILexicalBlock(scope: !1541, file: !124, line: 418, column: 9)
!1551 = !DILocalVariable(name: "printable", scope: !1549, file: !124, line: 604, type: !12)
!1552 = !DILocalVariable(name: "mbstate", scope: !1553, file: !124, line: 613, type: !1555)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !124, line: 612, column: 15)
!1554 = distinct !DILexicalBlock(scope: !1549, file: !124, line: 606, column: 17)
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1556, line: 6, baseType: !1557)
!1556 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1558, line: 21, baseType: !1559)
!1558 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1558, line: 13, size: 64, elements: !1560)
!1560 = !{!1561, !1562}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1559, file: !1558, line: 15, baseType: !44, size: 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1559, file: !1558, line: 20, baseType: !1563, size: 32, offset: 32)
!1563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1559, file: !1558, line: 16, size: 32, elements: !1564)
!1564 = !{!1565, !1566}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1563, file: !1558, line: 18, baseType: !137, size: 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1563, file: !1558, line: 19, baseType: !1567, size: 32)
!1567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !1568)
!1568 = !{!1569}
!1569 = !DISubrange(count: 4)
!1570 = !DILocalVariable(name: "w", scope: !1571, file: !124, line: 623, type: !1572)
!1571 = distinct !DILexicalBlock(scope: !1553, file: !124, line: 622, column: 19)
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !119, line: 90, baseType: !44)
!1573 = !DILocalVariable(name: "bytes", scope: !1571, file: !124, line: 624, type: !118)
!1574 = !DILocalVariable(name: "j", scope: !1575, file: !124, line: 649, type: !118)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !124, line: 648, column: 27)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !124, line: 646, column: 29)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !124, line: 641, column: 23)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !124, line: 633, column: 30)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !124, line: 628, column: 30)
!1580 = distinct !DILexicalBlock(scope: !1571, file: !124, line: 626, column: 25)
!1581 = !DILocalVariable(name: "ilim", scope: !1582, file: !124, line: 676, type: !118)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !124, line: 673, column: 15)
!1583 = distinct !DILexicalBlock(scope: !1549, file: !124, line: 672, column: 17)
!1584 = !DILocation(line: 248, column: 33, scope: !1514)
!1585 = !DILocation(line: 248, column: 48, scope: !1514)
!1586 = !DILocation(line: 249, column: 39, scope: !1514)
!1587 = !DILocation(line: 249, column: 51, scope: !1514)
!1588 = !DILocation(line: 250, column: 46, scope: !1514)
!1589 = !DILocation(line: 250, column: 65, scope: !1514)
!1590 = !DILocation(line: 251, column: 47, scope: !1514)
!1591 = !DILocation(line: 252, column: 39, scope: !1514)
!1592 = !DILocation(line: 253, column: 39, scope: !1514)
!1593 = !DILocation(line: 256, column: 10, scope: !1514)
!1594 = !DILocation(line: 257, column: 10, scope: !1514)
!1595 = !DILocation(line: 258, column: 15, scope: !1514)
!1596 = !DILocation(line: 259, column: 10, scope: !1514)
!1597 = !DILocation(line: 260, column: 8, scope: !1514)
!1598 = !DILocation(line: 261, column: 25, scope: !1514)
!1599 = !DILocation(line: 261, column: 36, scope: !1514)
!1600 = !DILocation(line: 262, column: 8, scope: !1514)
!1601 = !DILocation(line: 263, column: 8, scope: !1514)
!1602 = !DILocation(line: 264, column: 8, scope: !1514)
!1603 = !DILocation(line: 265, column: 8, scope: !1514)
!1604 = !DILocation(line: 265, column: 3, scope: !1514)
!1605 = !DILocation(line: 308, column: 3, scope: !1514)
!1606 = !DILocation(line: 315, column: 11, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1514, file: !124, line: 309, column: 5)
!1608 = !DILocation(line: 315, column: 12, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1607, file: !124, line: 315, column: 11)
!1610 = !DILocation(line: 316, column: 9, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !124, line: 316, column: 9)
!1612 = distinct !DILexicalBlock(scope: !1609, file: !124, line: 316, column: 9)
!1613 = !DILocation(line: 316, column: 9, scope: !1612)
!1614 = !DILocation(line: 354, column: 26, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !124, line: 332, column: 11)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !124, line: 331, column: 13)
!1617 = distinct !DILexicalBlock(scope: !1607, file: !124, line: 330, column: 7)
!1618 = !DILocation(line: 355, column: 27, scope: !1615)
!1619 = !DILocation(line: 356, column: 11, scope: !1615)
!1620 = !DILocation(line: 357, column: 14, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1617, file: !124, line: 357, column: 13)
!1622 = !DILocation(line: 357, column: 13, scope: !1617)
!1623 = !DILocation(line: 358, column: 43, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !124, line: 358, column: 11)
!1625 = distinct !DILexicalBlock(scope: !1621, file: !124, line: 358, column: 11)
!1626 = !DILocation(line: 358, column: 11, scope: !1625)
!1627 = !DILocation(line: 359, column: 13, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !124, line: 359, column: 13)
!1629 = distinct !DILexicalBlock(scope: !1624, file: !124, line: 359, column: 13)
!1630 = !DILocation(line: 359, column: 13, scope: !1629)
!1631 = !DILocation(line: 358, column: 70, scope: !1624)
!1632 = distinct !{!1632, !1626, !1633}
!1633 = !DILocation(line: 359, column: 13, scope: !1625)
!1634 = !DILocation(line: 362, column: 28, scope: !1617)
!1635 = !DILocation(line: 364, column: 7, scope: !1607)
!1636 = !DILocation(line: 367, column: 7, scope: !1607)
!1637 = !DILocation(line: 370, column: 7, scope: !1607)
!1638 = !DILocation(line: 373, column: 12, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1607, file: !124, line: 373, column: 11)
!1640 = !DILocation(line: 373, column: 11, scope: !1607)
!1641 = !DILocation(line: 378, column: 12, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1607, file: !124, line: 378, column: 11)
!1643 = !DILocation(line: 378, column: 11, scope: !1607)
!1644 = !DILocation(line: 379, column: 9, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !124, line: 379, column: 9)
!1646 = distinct !DILexicalBlock(scope: !1642, file: !124, line: 379, column: 9)
!1647 = !DILocation(line: 379, column: 9, scope: !1646)
!1648 = !DILocation(line: 386, column: 7, scope: !1607)
!1649 = !DILocation(line: 389, column: 7, scope: !1607)
!1650 = !DILocation(line: 255, column: 10, scope: !1514)
!1651 = !DILocation(line: 392, column: 8, scope: !1543)
!1652 = !DILocation(line: 392, column: 27, scope: !1542)
!1653 = !DILocation(line: 392, column: 19, scope: !1542)
!1654 = !DILocation(line: 392, column: 60, scope: !1542)
!1655 = !DILocation(line: 392, column: 3, scope: !1543)
!1656 = !DILocation(line: 392, column: 41, scope: !1542)
!1657 = !DILocation(line: 392, column: 48, scope: !1542)
!1658 = !DILocation(line: 396, column: 12, scope: !1541)
!1659 = !DILocation(line: 397, column: 12, scope: !1541)
!1660 = !DILocation(line: 398, column: 12, scope: !1541)
!1661 = !DILocation(line: 401, column: 11, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1541, file: !124, line: 400, column: 11)
!1663 = !DILocation(line: 403, column: 17, scope: !1662)
!1664 = !DILocation(line: 404, column: 39, scope: !1662)
!1665 = !DILocation(line: 408, column: 32, scope: !1662)
!1666 = !DILocation(line: 404, column: 19, scope: !1662)
!1667 = !DILocation(line: 404, column: 15, scope: !1662)
!1668 = !DILocation(line: 409, column: 11, scope: !1662)
!1669 = !DILocation(line: 409, column: 26, scope: !1662)
!1670 = !DILocation(line: 409, column: 14, scope: !1662)
!1671 = !DILocation(line: 409, column: 63, scope: !1662)
!1672 = !DILocation(line: 400, column: 11, scope: !1541)
!1673 = !DILocation(line: 416, column: 11, scope: !1541)
!1674 = !DILocation(line: 394, column: 21, scope: !1541)
!1675 = !DILocation(line: 417, column: 7, scope: !1541)
!1676 = !DILocation(line: 420, column: 15, scope: !1550)
!1677 = !DILocation(line: 422, column: 15, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !124, line: 422, column: 15)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !124, line: 421, column: 13)
!1680 = distinct !DILexicalBlock(scope: !1550, file: !124, line: 420, column: 15)
!1681 = !DILocation(line: 422, column: 15, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1678, file: !124, line: 422, column: 15)
!1683 = !DILocation(line: 422, column: 15, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !124, line: 422, column: 15)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !124, line: 422, column: 15)
!1686 = distinct !DILexicalBlock(scope: !1682, file: !124, line: 422, column: 15)
!1687 = !DILocation(line: 422, column: 15, scope: !1685)
!1688 = !DILocation(line: 422, column: 15, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !124, line: 422, column: 15)
!1690 = distinct !DILexicalBlock(scope: !1686, file: !124, line: 422, column: 15)
!1691 = !DILocation(line: 422, column: 15, scope: !1690)
!1692 = !DILocation(line: 422, column: 15, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !124, line: 422, column: 15)
!1694 = distinct !DILexicalBlock(scope: !1686, file: !124, line: 422, column: 15)
!1695 = !DILocation(line: 422, column: 15, scope: !1694)
!1696 = !DILocation(line: 422, column: 15, scope: !1686)
!1697 = !DILocation(line: 422, column: 15, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !124, line: 422, column: 15)
!1699 = distinct !DILexicalBlock(scope: !1678, file: !124, line: 422, column: 15)
!1700 = !DILocation(line: 422, column: 15, scope: !1699)
!1701 = !DILocation(line: 430, column: 19, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1679, file: !124, line: 429, column: 19)
!1703 = !DILocation(line: 430, column: 24, scope: !1702)
!1704 = !DILocation(line: 430, column: 28, scope: !1702)
!1705 = !DILocation(line: 430, column: 38, scope: !1702)
!1706 = !DILocation(line: 430, column: 48, scope: !1702)
!1707 = !DILocation(line: 430, column: 59, scope: !1702)
!1708 = !DILocation(line: 432, column: 19, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !124, line: 432, column: 19)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !124, line: 432, column: 19)
!1711 = distinct !DILexicalBlock(scope: !1702, file: !124, line: 431, column: 17)
!1712 = !DILocation(line: 432, column: 19, scope: !1710)
!1713 = !DILocation(line: 433, column: 19, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1715, file: !124, line: 433, column: 19)
!1715 = distinct !DILexicalBlock(scope: !1711, file: !124, line: 433, column: 19)
!1716 = !DILocation(line: 433, column: 19, scope: !1715)
!1717 = !DILocation(line: 434, column: 17, scope: !1711)
!1718 = !DILocation(line: 441, column: 20, scope: !1680)
!1719 = !DILocation(line: 446, column: 11, scope: !1550)
!1720 = !DILocation(line: 449, column: 19, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1550, file: !124, line: 447, column: 13)
!1722 = !DILocation(line: 455, column: 19, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1721, file: !124, line: 454, column: 19)
!1724 = !DILocation(line: 455, column: 24, scope: !1723)
!1725 = !DILocation(line: 455, column: 28, scope: !1723)
!1726 = !DILocation(line: 455, column: 38, scope: !1723)
!1727 = !DILocation(line: 455, column: 47, scope: !1723)
!1728 = !DILocation(line: 455, column: 41, scope: !1723)
!1729 = !DILocation(line: 455, column: 52, scope: !1723)
!1730 = !DILocation(line: 454, column: 19, scope: !1721)
!1731 = !DILocation(line: 456, column: 25, scope: !1723)
!1732 = !DILocation(line: 456, column: 17, scope: !1723)
!1733 = !DILocation(line: 463, column: 25, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1723, file: !124, line: 457, column: 19)
!1735 = !DILocation(line: 467, column: 21, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !124, line: 467, column: 21)
!1737 = distinct !DILexicalBlock(scope: !1734, file: !124, line: 467, column: 21)
!1738 = !DILocation(line: 467, column: 21, scope: !1737)
!1739 = !DILocation(line: 468, column: 21, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !124, line: 468, column: 21)
!1741 = distinct !DILexicalBlock(scope: !1734, file: !124, line: 468, column: 21)
!1742 = !DILocation(line: 468, column: 21, scope: !1741)
!1743 = !DILocation(line: 469, column: 21, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !124, line: 469, column: 21)
!1745 = distinct !DILexicalBlock(scope: !1734, file: !124, line: 469, column: 21)
!1746 = !DILocation(line: 469, column: 21, scope: !1745)
!1747 = !DILocation(line: 470, column: 21, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !124, line: 470, column: 21)
!1749 = distinct !DILexicalBlock(scope: !1734, file: !124, line: 470, column: 21)
!1750 = !DILocation(line: 470, column: 21, scope: !1749)
!1751 = !DILocation(line: 471, column: 21, scope: !1734)
!1752 = !DILocation(line: 395, column: 21, scope: !1541)
!1753 = !DILocation(line: 484, column: 31, scope: !1550)
!1754 = !DILocation(line: 485, column: 31, scope: !1550)
!1755 = !DILocation(line: 487, column: 31, scope: !1550)
!1756 = !DILocation(line: 488, column: 31, scope: !1550)
!1757 = !DILocation(line: 489, column: 31, scope: !1550)
!1758 = !DILocation(line: 492, column: 15, scope: !1550)
!1759 = !DILocation(line: 494, column: 19, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !124, line: 493, column: 13)
!1761 = distinct !DILexicalBlock(scope: !1550, file: !124, line: 492, column: 15)
!1762 = !DILocation(line: 501, column: 33, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1550, file: !124, line: 501, column: 15)
!1764 = !DILocation(line: 506, column: 15, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1550, file: !124, line: 505, column: 15)
!1766 = !DILocation(line: 510, column: 15, scope: !1550)
!1767 = !DILocation(line: 518, column: 26, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1550, file: !124, line: 518, column: 15)
!1769 = !DILocation(line: 518, column: 15, scope: !1550)
!1770 = !DILocation(line: 518, column: 40, scope: !1768)
!1771 = !DILocation(line: 518, column: 47, scope: !1768)
!1772 = !DILocation(line: 522, column: 17, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1550, file: !124, line: 522, column: 15)
!1774 = !DILocation(line: 518, column: 18, scope: !1768)
!1775 = !DILocation(line: 518, column: 65, scope: !1768)
!1776 = !DILocation(line: 522, column: 15, scope: !1550)
!1777 = !DILocation(line: 526, column: 11, scope: !1550)
!1778 = !DILocation(line: 541, column: 15, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1550, file: !124, line: 540, column: 15)
!1780 = !DILocation(line: 548, column: 15, scope: !1550)
!1781 = !DILocation(line: 550, column: 19, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !124, line: 549, column: 13)
!1783 = distinct !DILexicalBlock(scope: !1550, file: !124, line: 548, column: 15)
!1784 = !DILocation(line: 553, column: 19, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1782, file: !124, line: 553, column: 19)
!1786 = !DILocation(line: 553, column: 35, scope: !1785)
!1787 = !DILocation(line: 553, column: 30, scope: !1785)
!1788 = !DILocation(line: 562, column: 15, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !124, line: 562, column: 15)
!1790 = distinct !DILexicalBlock(scope: !1782, file: !124, line: 562, column: 15)
!1791 = !DILocation(line: 562, column: 15, scope: !1790)
!1792 = !DILocation(line: 563, column: 15, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !124, line: 563, column: 15)
!1794 = distinct !DILexicalBlock(scope: !1782, file: !124, line: 563, column: 15)
!1795 = !DILocation(line: 563, column: 15, scope: !1794)
!1796 = !DILocation(line: 564, column: 15, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !124, line: 564, column: 15)
!1798 = distinct !DILexicalBlock(scope: !1782, file: !124, line: 564, column: 15)
!1799 = !DILocation(line: 564, column: 15, scope: !1798)
!1800 = !DILocation(line: 566, column: 13, scope: !1782)
!1801 = !DILocation(line: 606, column: 17, scope: !1549)
!1802 = !DILocation(line: 602, column: 20, scope: !1549)
!1803 = !DILocation(line: 609, column: 29, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1554, file: !124, line: 607, column: 15)
!1805 = !{!1103, !1103, i64 0}
!1806 = !DILocation(line: 609, column: 27, scope: !1804)
!1807 = !DILocation(line: 604, column: 18, scope: !1549)
!1808 = !DILocation(line: 610, column: 15, scope: !1804)
!1809 = !DILocation(line: 613, column: 17, scope: !1553)
!1810 = !DILocation(line: 614, column: 17, scope: !1553)
!1811 = !DILocation(line: 618, column: 29, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1553, file: !124, line: 618, column: 21)
!1813 = !DILocation(line: 618, column: 21, scope: !1553)
!1814 = !DILocation(line: 619, column: 29, scope: !1812)
!1815 = !DILocation(line: 619, column: 19, scope: !1812)
!1816 = !DILocation(line: 621, column: 17, scope: !1553)
!1817 = distinct !{!1817, !1816, !1818}
!1818 = !DILocation(line: 667, column: 44, scope: !1553)
!1819 = !DILocation(line: 623, column: 21, scope: !1571)
!1820 = !DILocation(line: 624, column: 56, scope: !1571)
!1821 = !DILocation(line: 624, column: 50, scope: !1571)
!1822 = !DILocation(line: 625, column: 53, scope: !1571)
!1823 = !DILocation(line: 613, column: 27, scope: !1553)
!1824 = !DILocation(line: 623, column: 29, scope: !1571)
!1825 = !DILocation(line: 624, column: 36, scope: !1571)
!1826 = !DILocation(line: 624, column: 28, scope: !1571)
!1827 = !DILocation(line: 626, column: 25, scope: !1571)
!1828 = !DILocation(line: 636, column: 38, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1578, file: !124, line: 634, column: 23)
!1830 = !DILocation(line: 636, column: 48, scope: !1829)
!1831 = !DILocation(line: 636, column: 51, scope: !1829)
!1832 = !DILocation(line: 636, column: 25, scope: !1829)
!1833 = !DILocation(line: 637, column: 28, scope: !1829)
!1834 = !DILocation(line: 636, column: 34, scope: !1829)
!1835 = distinct !{!1835, !1832, !1833}
!1836 = !DILocation(line: 650, column: 43, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !124, line: 650, column: 29)
!1838 = distinct !DILexicalBlock(scope: !1575, file: !124, line: 650, column: 29)
!1839 = !DILocation(line: 647, column: 29, scope: !1576)
!1840 = !DILocation(line: 649, column: 36, scope: !1575)
!1841 = !DILocation(line: 651, column: 49, scope: !1837)
!1842 = !DILocation(line: 651, column: 39, scope: !1837)
!1843 = !DILocation(line: 651, column: 31, scope: !1837)
!1844 = !DILocation(line: 650, column: 53, scope: !1837)
!1845 = !DILocation(line: 650, column: 29, scope: !1838)
!1846 = distinct !{!1846, !1845, !1847}
!1847 = !DILocation(line: 659, column: 33, scope: !1838)
!1848 = !DILocation(line: 666, column: 19, scope: !1553)
!1849 = !DILocation(line: 662, column: 41, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1577, file: !124, line: 662, column: 29)
!1851 = !DILocation(line: 662, column: 31, scope: !1850)
!1852 = !DILocation(line: 662, column: 29, scope: !1577)
!1853 = !DILocation(line: 664, column: 27, scope: !1577)
!1854 = !DILocation(line: 667, column: 26, scope: !1553)
!1855 = !DILocation(line: 667, column: 24, scope: !1553)
!1856 = !DILocation(line: 666, column: 19, scope: !1571)
!1857 = !DILocation(line: 668, column: 15, scope: !1554)
!1858 = !DILocation(line: 670, column: 40, scope: !1549)
!1859 = !DILocation(line: 672, column: 19, scope: !1583)
!1860 = !DILocation(line: 672, column: 45, scope: !1583)
!1861 = !DILocation(line: 672, column: 23, scope: !1583)
!1862 = !DILocation(line: 676, column: 33, scope: !1582)
!1863 = !DILocation(line: 676, column: 24, scope: !1582)
!1864 = !DILocation(line: 678, column: 17, scope: !1582)
!1865 = !DILocation(line: 680, column: 43, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !124, line: 680, column: 25)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !124, line: 679, column: 19)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !124, line: 678, column: 17)
!1869 = distinct !DILexicalBlock(scope: !1582, file: !124, line: 678, column: 17)
!1870 = !DILocation(line: 682, column: 25, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !124, line: 682, column: 25)
!1872 = distinct !DILexicalBlock(scope: !1866, file: !124, line: 681, column: 23)
!1873 = !DILocation(line: 682, column: 25, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1871, file: !124, line: 682, column: 25)
!1875 = !DILocation(line: 682, column: 25, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !124, line: 682, column: 25)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !124, line: 682, column: 25)
!1878 = distinct !DILexicalBlock(scope: !1874, file: !124, line: 682, column: 25)
!1879 = !DILocation(line: 682, column: 25, scope: !1877)
!1880 = !DILocation(line: 682, column: 25, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !124, line: 682, column: 25)
!1882 = distinct !DILexicalBlock(scope: !1878, file: !124, line: 682, column: 25)
!1883 = !DILocation(line: 682, column: 25, scope: !1882)
!1884 = !DILocation(line: 682, column: 25, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !124, line: 682, column: 25)
!1886 = distinct !DILexicalBlock(scope: !1878, file: !124, line: 682, column: 25)
!1887 = !DILocation(line: 682, column: 25, scope: !1886)
!1888 = !DILocation(line: 682, column: 25, scope: !1878)
!1889 = !DILocation(line: 682, column: 25, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !124, line: 682, column: 25)
!1891 = distinct !DILexicalBlock(scope: !1871, file: !124, line: 682, column: 25)
!1892 = !DILocation(line: 682, column: 25, scope: !1891)
!1893 = !DILocation(line: 683, column: 25, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !124, line: 683, column: 25)
!1895 = distinct !DILexicalBlock(scope: !1872, file: !124, line: 683, column: 25)
!1896 = !DILocation(line: 683, column: 25, scope: !1895)
!1897 = !DILocation(line: 684, column: 25, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !124, line: 684, column: 25)
!1899 = distinct !DILexicalBlock(scope: !1872, file: !124, line: 684, column: 25)
!1900 = !DILocation(line: 684, column: 25, scope: !1899)
!1901 = !DILocation(line: 685, column: 38, scope: !1872)
!1902 = !DILocation(line: 685, column: 33, scope: !1872)
!1903 = !DILocation(line: 686, column: 23, scope: !1872)
!1904 = !DILocation(line: 687, column: 30, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1866, file: !124, line: 687, column: 30)
!1906 = !DILocation(line: 687, column: 30, scope: !1866)
!1907 = !DILocation(line: 689, column: 25, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !124, line: 689, column: 25)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !124, line: 689, column: 25)
!1910 = distinct !DILexicalBlock(scope: !1905, file: !124, line: 688, column: 23)
!1911 = !DILocation(line: 689, column: 25, scope: !1909)
!1912 = !DILocation(line: 691, column: 23, scope: !1910)
!1913 = !DILocation(line: 692, column: 35, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1867, file: !124, line: 692, column: 25)
!1915 = !DILocation(line: 692, column: 30, scope: !1914)
!1916 = !DILocation(line: 692, column: 25, scope: !1867)
!1917 = !DILocation(line: 694, column: 21, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !124, line: 694, column: 21)
!1919 = distinct !DILexicalBlock(scope: !1867, file: !124, line: 694, column: 21)
!1920 = !DILocation(line: 694, column: 21, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !124, line: 694, column: 21)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !124, line: 694, column: 21)
!1923 = distinct !DILexicalBlock(scope: !1918, file: !124, line: 694, column: 21)
!1924 = !DILocation(line: 694, column: 21, scope: !1922)
!1925 = !DILocation(line: 694, column: 21, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !124, line: 694, column: 21)
!1927 = distinct !DILexicalBlock(scope: !1923, file: !124, line: 694, column: 21)
!1928 = !DILocation(line: 694, column: 21, scope: !1927)
!1929 = !DILocation(line: 694, column: 21, scope: !1923)
!1930 = !DILocation(line: 695, column: 21, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !124, line: 695, column: 21)
!1932 = distinct !DILexicalBlock(scope: !1867, file: !124, line: 695, column: 21)
!1933 = !DILocation(line: 695, column: 21, scope: !1932)
!1934 = !DILocation(line: 696, column: 25, scope: !1867)
!1935 = !DILocation(line: 678, column: 17, scope: !1868)
!1936 = distinct !{!1936, !1937, !1938}
!1937 = !DILocation(line: 678, column: 17, scope: !1869)
!1938 = !DILocation(line: 697, column: 19, scope: !1869)
!1939 = !DILocation(line: 704, column: 34, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1541, file: !124, line: 704, column: 11)
!1941 = !DILocation(line: 706, column: 14, scope: !1940)
!1942 = !DILocation(line: 707, column: 14, scope: !1940)
!1943 = !DILocation(line: 707, column: 35, scope: !1940)
!1944 = !DILocation(line: 707, column: 17, scope: !1940)
!1945 = !DILocation(line: 707, column: 53, scope: !1940)
!1946 = !DILocation(line: 707, column: 47, scope: !1940)
!1947 = !DILocation(line: 707, column: 65, scope: !1940)
!1948 = !DILocation(line: 708, column: 15, scope: !1940)
!1949 = !DILocation(line: 708, column: 11, scope: !1940)
!1950 = !DILocation(line: 704, column: 11, scope: !1541)
!1951 = !DILocation(line: 712, column: 7, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1541, file: !124, line: 712, column: 7)
!1953 = !DILocation(line: 712, column: 7, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1952, file: !124, line: 712, column: 7)
!1955 = !DILocation(line: 712, column: 7, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !124, line: 712, column: 7)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !124, line: 712, column: 7)
!1958 = distinct !DILexicalBlock(scope: !1954, file: !124, line: 712, column: 7)
!1959 = !DILocation(line: 712, column: 7, scope: !1957)
!1960 = !DILocation(line: 712, column: 7, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !124, line: 712, column: 7)
!1962 = distinct !DILexicalBlock(scope: !1958, file: !124, line: 712, column: 7)
!1963 = !DILocation(line: 712, column: 7, scope: !1962)
!1964 = !DILocation(line: 712, column: 7, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !124, line: 712, column: 7)
!1966 = distinct !DILexicalBlock(scope: !1958, file: !124, line: 712, column: 7)
!1967 = !DILocation(line: 712, column: 7, scope: !1966)
!1968 = !DILocation(line: 712, column: 7, scope: !1958)
!1969 = !DILocation(line: 712, column: 7, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !124, line: 712, column: 7)
!1971 = distinct !DILexicalBlock(scope: !1952, file: !124, line: 712, column: 7)
!1972 = !DILocation(line: 712, column: 7, scope: !1971)
!1973 = !DILocation(line: 715, column: 7, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !124, line: 715, column: 7)
!1975 = distinct !DILexicalBlock(scope: !1541, file: !124, line: 715, column: 7)
!1976 = !DILocation(line: 715, column: 7, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !124, line: 715, column: 7)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !124, line: 715, column: 7)
!1979 = distinct !DILexicalBlock(scope: !1974, file: !124, line: 715, column: 7)
!1980 = !DILocation(line: 715, column: 7, scope: !1978)
!1981 = !DILocation(line: 715, column: 7, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !124, line: 715, column: 7)
!1983 = distinct !DILexicalBlock(scope: !1979, file: !124, line: 715, column: 7)
!1984 = !DILocation(line: 715, column: 7, scope: !1983)
!1985 = !DILocation(line: 715, column: 7, scope: !1979)
!1986 = !DILocation(line: 716, column: 7, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !124, line: 716, column: 7)
!1988 = distinct !DILexicalBlock(scope: !1541, file: !124, line: 716, column: 7)
!1989 = !DILocation(line: 716, column: 7, scope: !1988)
!1990 = !DILocation(line: 718, column: 13, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1541, file: !124, line: 718, column: 11)
!1992 = !DILocation(line: 718, column: 11, scope: !1541)
!1993 = !DILocation(line: 720, column: 5, scope: !1542)
!1994 = !DILocation(line: 392, column: 75, scope: !1542)
!1995 = !DILocation(line: 392, column: 3, scope: !1542)
!1996 = distinct !{!1996, !1655, !1997}
!1997 = !DILocation(line: 720, column: 5, scope: !1543)
!1998 = !DILocation(line: 722, column: 11, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1514, file: !124, line: 722, column: 7)
!2000 = !DILocation(line: 722, column: 16, scope: !1999)
!2001 = !DILocation(line: 730, column: 51, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1514, file: !124, line: 730, column: 7)
!2003 = !DILocation(line: 731, column: 10, scope: !2002)
!2004 = !DILocation(line: 733, column: 11, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !124, line: 733, column: 11)
!2006 = distinct !DILexicalBlock(scope: !2002, file: !124, line: 732, column: 5)
!2007 = !DILocation(line: 733, column: 11, scope: !2006)
!2008 = !DILocation(line: 734, column: 16, scope: !2005)
!2009 = !DILocation(line: 734, column: 9, scope: !2005)
!2010 = !DILocation(line: 738, column: 18, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2005, file: !124, line: 738, column: 16)
!2012 = !DILocation(line: 738, column: 32, scope: !2011)
!2013 = !DILocation(line: 738, column: 29, scope: !2011)
!2014 = !DILocation(line: 747, column: 7, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1514, file: !124, line: 747, column: 7)
!2016 = !DILocation(line: 747, column: 20, scope: !2015)
!2017 = !DILocation(line: 748, column: 12, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !124, line: 748, column: 5)
!2019 = distinct !DILexicalBlock(scope: !2015, file: !124, line: 748, column: 5)
!2020 = !DILocation(line: 748, column: 5, scope: !2019)
!2021 = !DILocation(line: 749, column: 7, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !124, line: 749, column: 7)
!2023 = distinct !DILexicalBlock(scope: !2018, file: !124, line: 749, column: 7)
!2024 = !DILocation(line: 749, column: 7, scope: !2023)
!2025 = !DILocation(line: 748, column: 39, scope: !2018)
!2026 = distinct !{!2026, !2020, !2027}
!2027 = !DILocation(line: 749, column: 7, scope: !2019)
!2028 = !DILocation(line: 751, column: 11, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !1514, file: !124, line: 751, column: 7)
!2030 = !DILocation(line: 751, column: 7, scope: !1514)
!2031 = !DILocation(line: 752, column: 5, scope: !2029)
!2032 = !DILocation(line: 752, column: 17, scope: !2029)
!2033 = !DILocation(line: 758, column: 21, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !1514, file: !124, line: 758, column: 7)
!2035 = !DILocation(line: 758, column: 54, scope: !2034)
!2036 = !DILocation(line: 758, column: 51, scope: !2034)
!2037 = !DILocation(line: 762, column: 42, scope: !1514)
!2038 = !DILocation(line: 760, column: 10, scope: !1514)
!2039 = !DILocation(line: 760, column: 3, scope: !1514)
!2040 = !DILocation(line: 764, column: 1, scope: !1514)
!2041 = distinct !DISubprogram(name: "gettext_quote", scope: !124, file: !124, line: 199, type: !2042, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2044)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!19, !19, !82}
!2044 = !{!2045, !2046, !2047, !2048}
!2045 = !DILocalVariable(name: "msgid", arg: 1, scope: !2041, file: !124, line: 199, type: !19)
!2046 = !DILocalVariable(name: "s", arg: 2, scope: !2041, file: !124, line: 199, type: !82)
!2047 = !DILocalVariable(name: "translation", scope: !2041, file: !124, line: 201, type: !19)
!2048 = !DILocalVariable(name: "locale_code", scope: !2041, file: !124, line: 202, type: !19)
!2049 = !DILocation(line: 199, column: 28, scope: !2041)
!2050 = !DILocation(line: 199, column: 54, scope: !2041)
!2051 = !DILocation(line: 201, column: 29, scope: !2041)
!2052 = !DILocation(line: 201, column: 15, scope: !2041)
!2053 = !DILocation(line: 204, column: 19, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2041, file: !124, line: 204, column: 7)
!2055 = !DILocation(line: 204, column: 7, scope: !2041)
!2056 = !DILocation(line: 225, column: 17, scope: !2041)
!2057 = !DILocation(line: 202, column: 15, scope: !2041)
!2058 = !DILocalVariable(name: "s2", arg: 2, scope: !2059, file: !2060, line: 160, type: !19)
!2059 = distinct !DISubprogram(name: "strcaseeq0", scope: !2060, file: !2060, line: 160, type: !2061, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2063)
!2060 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!44, !19, !19, !7, !7, !7, !7, !7, !7, !7, !7, !7}
!2063 = !{!2064, !2058, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073}
!2064 = !DILocalVariable(name: "s1", arg: 1, scope: !2059, file: !2060, line: 160, type: !19)
!2065 = !DILocalVariable(name: "s20", arg: 3, scope: !2059, file: !2060, line: 160, type: !7)
!2066 = !DILocalVariable(name: "s21", arg: 4, scope: !2059, file: !2060, line: 160, type: !7)
!2067 = !DILocalVariable(name: "s22", arg: 5, scope: !2059, file: !2060, line: 160, type: !7)
!2068 = !DILocalVariable(name: "s23", arg: 6, scope: !2059, file: !2060, line: 160, type: !7)
!2069 = !DILocalVariable(name: "s24", arg: 7, scope: !2059, file: !2060, line: 160, type: !7)
!2070 = !DILocalVariable(name: "s25", arg: 8, scope: !2059, file: !2060, line: 160, type: !7)
!2071 = !DILocalVariable(name: "s26", arg: 9, scope: !2059, file: !2060, line: 160, type: !7)
!2072 = !DILocalVariable(name: "s27", arg: 10, scope: !2059, file: !2060, line: 160, type: !7)
!2073 = !DILocalVariable(name: "s28", arg: 11, scope: !2059, file: !2060, line: 160, type: !7)
!2074 = !DILocation(line: 160, column: 41, scope: !2059, inlinedAt: !2075)
!2075 = distinct !DILocation(line: 226, column: 7, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2041, file: !124, line: 226, column: 7)
!2077 = !DILocation(line: 160, column: 120, scope: !2059, inlinedAt: !2075)
!2078 = !DILocation(line: 160, column: 130, scope: !2059, inlinedAt: !2075)
!2079 = !DILocation(line: 162, column: 7, scope: !2080, inlinedAt: !2075)
!2080 = distinct !DILexicalBlock(scope: !2059, file: !2060, line: 162, column: 7)
!2081 = !DILocalVariable(name: "s2", arg: 2, scope: !2082, file: !2060, line: 146, type: !19)
!2082 = distinct !DISubprogram(name: "strcaseeq1", scope: !2060, file: !2060, line: 146, type: !2083, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2085)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!44, !19, !19, !7, !7, !7, !7, !7, !7, !7, !7}
!2085 = !{!2086, !2081, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094}
!2086 = !DILocalVariable(name: "s1", arg: 1, scope: !2082, file: !2060, line: 146, type: !19)
!2087 = !DILocalVariable(name: "s21", arg: 3, scope: !2082, file: !2060, line: 146, type: !7)
!2088 = !DILocalVariable(name: "s22", arg: 4, scope: !2082, file: !2060, line: 146, type: !7)
!2089 = !DILocalVariable(name: "s23", arg: 5, scope: !2082, file: !2060, line: 146, type: !7)
!2090 = !DILocalVariable(name: "s24", arg: 6, scope: !2082, file: !2060, line: 146, type: !7)
!2091 = !DILocalVariable(name: "s25", arg: 7, scope: !2082, file: !2060, line: 146, type: !7)
!2092 = !DILocalVariable(name: "s26", arg: 8, scope: !2082, file: !2060, line: 146, type: !7)
!2093 = !DILocalVariable(name: "s27", arg: 9, scope: !2082, file: !2060, line: 146, type: !7)
!2094 = !DILocalVariable(name: "s28", arg: 10, scope: !2082, file: !2060, line: 146, type: !7)
!2095 = !DILocation(line: 146, column: 41, scope: !2082, inlinedAt: !2096)
!2096 = distinct !DILocation(line: 167, column: 16, scope: !2097, inlinedAt: !2075)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !2060, line: 164, column: 11)
!2098 = distinct !DILexicalBlock(scope: !2080, file: !2060, line: 163, column: 5)
!2099 = !DILocation(line: 146, column: 110, scope: !2082, inlinedAt: !2096)
!2100 = !DILocation(line: 146, column: 120, scope: !2082, inlinedAt: !2096)
!2101 = !DILocation(line: 148, column: 7, scope: !2102, inlinedAt: !2096)
!2102 = distinct !DILexicalBlock(scope: !2082, file: !2060, line: 148, column: 7)
!2103 = !DILocalVariable(name: "s2", arg: 2, scope: !2104, file: !2060, line: 132, type: !19)
!2104 = distinct !DISubprogram(name: "strcaseeq2", scope: !2060, file: !2060, line: 132, type: !2105, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2107)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!44, !19, !19, !7, !7, !7, !7, !7, !7, !7}
!2107 = !{!2108, !2103, !2109, !2110, !2111, !2112, !2113, !2114, !2115}
!2108 = !DILocalVariable(name: "s1", arg: 1, scope: !2104, file: !2060, line: 132, type: !19)
!2109 = !DILocalVariable(name: "s22", arg: 3, scope: !2104, file: !2060, line: 132, type: !7)
!2110 = !DILocalVariable(name: "s23", arg: 4, scope: !2104, file: !2060, line: 132, type: !7)
!2111 = !DILocalVariable(name: "s24", arg: 5, scope: !2104, file: !2060, line: 132, type: !7)
!2112 = !DILocalVariable(name: "s25", arg: 6, scope: !2104, file: !2060, line: 132, type: !7)
!2113 = !DILocalVariable(name: "s26", arg: 7, scope: !2104, file: !2060, line: 132, type: !7)
!2114 = !DILocalVariable(name: "s27", arg: 8, scope: !2104, file: !2060, line: 132, type: !7)
!2115 = !DILocalVariable(name: "s28", arg: 9, scope: !2104, file: !2060, line: 132, type: !7)
!2116 = !DILocation(line: 132, column: 41, scope: !2104, inlinedAt: !2117)
!2117 = distinct !DILocation(line: 153, column: 16, scope: !2118, inlinedAt: !2096)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !2060, line: 150, column: 11)
!2119 = distinct !DILexicalBlock(scope: !2102, file: !2060, line: 149, column: 5)
!2120 = !DILocation(line: 132, column: 100, scope: !2104, inlinedAt: !2117)
!2121 = !DILocation(line: 132, column: 110, scope: !2104, inlinedAt: !2117)
!2122 = !DILocation(line: 134, column: 7, scope: !2123, inlinedAt: !2117)
!2123 = distinct !DILexicalBlock(scope: !2104, file: !2060, line: 134, column: 7)
!2124 = !DILocalVariable(name: "s2", arg: 2, scope: !2125, file: !2060, line: 118, type: !19)
!2125 = distinct !DISubprogram(name: "strcaseeq3", scope: !2060, file: !2060, line: 118, type: !2126, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2128)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!44, !19, !19, !7, !7, !7, !7, !7, !7}
!2128 = !{!2129, !2124, !2130, !2131, !2132, !2133, !2134, !2135}
!2129 = !DILocalVariable(name: "s1", arg: 1, scope: !2125, file: !2060, line: 118, type: !19)
!2130 = !DILocalVariable(name: "s23", arg: 3, scope: !2125, file: !2060, line: 118, type: !7)
!2131 = !DILocalVariable(name: "s24", arg: 4, scope: !2125, file: !2060, line: 118, type: !7)
!2132 = !DILocalVariable(name: "s25", arg: 5, scope: !2125, file: !2060, line: 118, type: !7)
!2133 = !DILocalVariable(name: "s26", arg: 6, scope: !2125, file: !2060, line: 118, type: !7)
!2134 = !DILocalVariable(name: "s27", arg: 7, scope: !2125, file: !2060, line: 118, type: !7)
!2135 = !DILocalVariable(name: "s28", arg: 8, scope: !2125, file: !2060, line: 118, type: !7)
!2136 = !DILocation(line: 118, column: 41, scope: !2125, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 139, column: 16, scope: !2138, inlinedAt: !2117)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !2060, line: 136, column: 11)
!2139 = distinct !DILexicalBlock(scope: !2123, file: !2060, line: 135, column: 5)
!2140 = !DILocation(line: 118, column: 90, scope: !2125, inlinedAt: !2137)
!2141 = !DILocation(line: 118, column: 100, scope: !2125, inlinedAt: !2137)
!2142 = !DILocation(line: 120, column: 7, scope: !2143, inlinedAt: !2137)
!2143 = distinct !DILexicalBlock(scope: !2125, file: !2060, line: 120, column: 7)
!2144 = !DILocation(line: 120, column: 7, scope: !2125, inlinedAt: !2137)
!2145 = !DILocalVariable(name: "s2", arg: 2, scope: !2146, file: !2060, line: 104, type: !19)
!2146 = distinct !DISubprogram(name: "strcaseeq4", scope: !2060, file: !2060, line: 104, type: !2147, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2149)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!44, !19, !19, !7, !7, !7, !7, !7}
!2149 = !{!2150, !2145, !2151, !2152, !2153, !2154, !2155}
!2150 = !DILocalVariable(name: "s1", arg: 1, scope: !2146, file: !2060, line: 104, type: !19)
!2151 = !DILocalVariable(name: "s24", arg: 3, scope: !2146, file: !2060, line: 104, type: !7)
!2152 = !DILocalVariable(name: "s25", arg: 4, scope: !2146, file: !2060, line: 104, type: !7)
!2153 = !DILocalVariable(name: "s26", arg: 5, scope: !2146, file: !2060, line: 104, type: !7)
!2154 = !DILocalVariable(name: "s27", arg: 6, scope: !2146, file: !2060, line: 104, type: !7)
!2155 = !DILocalVariable(name: "s28", arg: 7, scope: !2146, file: !2060, line: 104, type: !7)
!2156 = !DILocation(line: 104, column: 41, scope: !2146, inlinedAt: !2157)
!2157 = distinct !DILocation(line: 125, column: 16, scope: !2158, inlinedAt: !2137)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !2060, line: 122, column: 11)
!2159 = distinct !DILexicalBlock(scope: !2143, file: !2060, line: 121, column: 5)
!2160 = !DILocation(line: 104, column: 80, scope: !2146, inlinedAt: !2157)
!2161 = !DILocation(line: 104, column: 90, scope: !2146, inlinedAt: !2157)
!2162 = !DILocation(line: 106, column: 7, scope: !2163, inlinedAt: !2157)
!2163 = distinct !DILexicalBlock(scope: !2146, file: !2060, line: 106, column: 7)
!2164 = !DILocation(line: 106, column: 7, scope: !2146, inlinedAt: !2157)
!2165 = !DILocalVariable(name: "s2", arg: 2, scope: !2166, file: !2060, line: 90, type: !19)
!2166 = distinct !DISubprogram(name: "strcaseeq5", scope: !2060, file: !2060, line: 90, type: !2167, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2169)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!44, !19, !19, !7, !7, !7, !7}
!2169 = !{!2170, !2165, !2171, !2172, !2173, !2174}
!2170 = !DILocalVariable(name: "s1", arg: 1, scope: !2166, file: !2060, line: 90, type: !19)
!2171 = !DILocalVariable(name: "s25", arg: 3, scope: !2166, file: !2060, line: 90, type: !7)
!2172 = !DILocalVariable(name: "s26", arg: 4, scope: !2166, file: !2060, line: 90, type: !7)
!2173 = !DILocalVariable(name: "s27", arg: 5, scope: !2166, file: !2060, line: 90, type: !7)
!2174 = !DILocalVariable(name: "s28", arg: 6, scope: !2166, file: !2060, line: 90, type: !7)
!2175 = !DILocation(line: 90, column: 41, scope: !2166, inlinedAt: !2176)
!2176 = distinct !DILocation(line: 111, column: 16, scope: !2177, inlinedAt: !2157)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !2060, line: 108, column: 11)
!2178 = distinct !DILexicalBlock(scope: !2163, file: !2060, line: 107, column: 5)
!2179 = !DILocation(line: 90, column: 70, scope: !2166, inlinedAt: !2176)
!2180 = !DILocation(line: 90, column: 80, scope: !2166, inlinedAt: !2176)
!2181 = !DILocation(line: 92, column: 7, scope: !2182, inlinedAt: !2176)
!2182 = distinct !DILexicalBlock(scope: !2166, file: !2060, line: 92, column: 7)
!2183 = !DILocation(line: 92, column: 7, scope: !2166, inlinedAt: !2176)
!2184 = !DILocation(line: 227, column: 12, scope: !2076)
!2185 = !DILocation(line: 227, column: 21, scope: !2076)
!2186 = !DILocation(line: 227, column: 5, scope: !2076)
!2187 = !DILocation(line: 146, column: 41, scope: !2082, inlinedAt: !2188)
!2188 = distinct !DILocation(line: 167, column: 16, scope: !2097, inlinedAt: !2189)
!2189 = distinct !DILocation(line: 228, column: 7, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2041, file: !124, line: 228, column: 7)
!2191 = !DILocation(line: 146, column: 110, scope: !2082, inlinedAt: !2188)
!2192 = !DILocation(line: 146, column: 120, scope: !2082, inlinedAt: !2188)
!2193 = !DILocation(line: 148, column: 7, scope: !2102, inlinedAt: !2188)
!2194 = !DILocation(line: 132, column: 41, scope: !2104, inlinedAt: !2195)
!2195 = distinct !DILocation(line: 153, column: 16, scope: !2118, inlinedAt: !2188)
!2196 = !DILocation(line: 132, column: 100, scope: !2104, inlinedAt: !2195)
!2197 = !DILocation(line: 132, column: 110, scope: !2104, inlinedAt: !2195)
!2198 = !DILocation(line: 134, column: 7, scope: !2123, inlinedAt: !2195)
!2199 = !DILocation(line: 134, column: 7, scope: !2104, inlinedAt: !2195)
!2200 = !DILocation(line: 118, column: 41, scope: !2125, inlinedAt: !2201)
!2201 = distinct !DILocation(line: 139, column: 16, scope: !2138, inlinedAt: !2195)
!2202 = !DILocation(line: 118, column: 90, scope: !2125, inlinedAt: !2201)
!2203 = !DILocation(line: 118, column: 100, scope: !2125, inlinedAt: !2201)
!2204 = !DILocation(line: 120, column: 7, scope: !2143, inlinedAt: !2201)
!2205 = !DILocation(line: 120, column: 7, scope: !2125, inlinedAt: !2201)
!2206 = !DILocation(line: 104, column: 41, scope: !2146, inlinedAt: !2207)
!2207 = distinct !DILocation(line: 125, column: 16, scope: !2158, inlinedAt: !2201)
!2208 = !DILocation(line: 104, column: 80, scope: !2146, inlinedAt: !2207)
!2209 = !DILocation(line: 104, column: 90, scope: !2146, inlinedAt: !2207)
!2210 = !DILocation(line: 106, column: 7, scope: !2163, inlinedAt: !2207)
!2211 = !DILocation(line: 106, column: 7, scope: !2146, inlinedAt: !2207)
!2212 = !DILocation(line: 90, column: 41, scope: !2166, inlinedAt: !2213)
!2213 = distinct !DILocation(line: 111, column: 16, scope: !2177, inlinedAt: !2207)
!2214 = !DILocation(line: 90, column: 70, scope: !2166, inlinedAt: !2213)
!2215 = !DILocation(line: 90, column: 80, scope: !2166, inlinedAt: !2213)
!2216 = !DILocation(line: 92, column: 7, scope: !2182, inlinedAt: !2213)
!2217 = !DILocation(line: 92, column: 7, scope: !2166, inlinedAt: !2213)
!2218 = !DILocalVariable(name: "s2", arg: 2, scope: !2219, file: !2060, line: 76, type: !19)
!2219 = distinct !DISubprogram(name: "strcaseeq6", scope: !2060, file: !2060, line: 76, type: !2220, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2222)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!44, !19, !19, !7, !7, !7}
!2222 = !{!2223, !2218, !2224, !2225, !2226}
!2223 = !DILocalVariable(name: "s1", arg: 1, scope: !2219, file: !2060, line: 76, type: !19)
!2224 = !DILocalVariable(name: "s26", arg: 3, scope: !2219, file: !2060, line: 76, type: !7)
!2225 = !DILocalVariable(name: "s27", arg: 4, scope: !2219, file: !2060, line: 76, type: !7)
!2226 = !DILocalVariable(name: "s28", arg: 5, scope: !2219, file: !2060, line: 76, type: !7)
!2227 = !DILocation(line: 76, column: 41, scope: !2219, inlinedAt: !2228)
!2228 = distinct !DILocation(line: 97, column: 16, scope: !2229, inlinedAt: !2213)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !2060, line: 94, column: 11)
!2230 = distinct !DILexicalBlock(scope: !2182, file: !2060, line: 93, column: 5)
!2231 = !DILocation(line: 76, column: 60, scope: !2219, inlinedAt: !2228)
!2232 = !DILocation(line: 76, column: 70, scope: !2219, inlinedAt: !2228)
!2233 = !DILocation(line: 78, column: 7, scope: !2234, inlinedAt: !2228)
!2234 = distinct !DILexicalBlock(scope: !2219, file: !2060, line: 78, column: 7)
!2235 = !DILocation(line: 78, column: 7, scope: !2219, inlinedAt: !2228)
!2236 = !DILocalVariable(name: "s2", arg: 2, scope: !2237, file: !2060, line: 62, type: !19)
!2237 = distinct !DISubprogram(name: "strcaseeq7", scope: !2060, file: !2060, line: 62, type: !2238, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2240)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!44, !19, !19, !7, !7}
!2240 = !{!2241, !2236, !2242, !2243}
!2241 = !DILocalVariable(name: "s1", arg: 1, scope: !2237, file: !2060, line: 62, type: !19)
!2242 = !DILocalVariable(name: "s27", arg: 3, scope: !2237, file: !2060, line: 62, type: !7)
!2243 = !DILocalVariable(name: "s28", arg: 4, scope: !2237, file: !2060, line: 62, type: !7)
!2244 = !DILocation(line: 62, column: 41, scope: !2237, inlinedAt: !2245)
!2245 = distinct !DILocation(line: 83, column: 16, scope: !2246, inlinedAt: !2228)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !2060, line: 80, column: 11)
!2247 = distinct !DILexicalBlock(scope: !2234, file: !2060, line: 79, column: 5)
!2248 = !DILocation(line: 62, column: 50, scope: !2237, inlinedAt: !2245)
!2249 = !DILocation(line: 62, column: 60, scope: !2237, inlinedAt: !2245)
!2250 = !DILocation(line: 64, column: 7, scope: !2251, inlinedAt: !2245)
!2251 = distinct !DILexicalBlock(scope: !2237, file: !2060, line: 64, column: 7)
!2252 = !DILocation(line: 228, column: 7, scope: !2041)
!2253 = !DILocation(line: 229, column: 12, scope: !2190)
!2254 = !DILocation(line: 229, column: 21, scope: !2190)
!2255 = !DILocation(line: 229, column: 5, scope: !2190)
!2256 = !DILocation(line: 231, column: 13, scope: !2041)
!2257 = !DILocation(line: 231, column: 11, scope: !2041)
!2258 = !DILocation(line: 231, column: 3, scope: !2041)
!2259 = !DILocation(line: 232, column: 1, scope: !2041)
!2260 = distinct !DISubprogram(name: "quotearg_alloc", scope: !124, file: !124, line: 791, type: !2261, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2263)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!6, !19, !118, !1386}
!2263 = !{!2264, !2265, !2266}
!2264 = !DILocalVariable(name: "arg", arg: 1, scope: !2260, file: !124, line: 791, type: !19)
!2265 = !DILocalVariable(name: "argsize", arg: 2, scope: !2260, file: !124, line: 791, type: !118)
!2266 = !DILocalVariable(name: "o", arg: 3, scope: !2260, file: !124, line: 792, type: !1386)
!2267 = !DILocation(line: 791, column: 29, scope: !2260)
!2268 = !DILocation(line: 791, column: 41, scope: !2260)
!2269 = !DILocation(line: 792, column: 47, scope: !2260)
!2270 = !DILocalVariable(name: "arg", arg: 1, scope: !2271, file: !124, line: 804, type: !19)
!2271 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !124, file: !124, line: 804, type: !2272, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2274)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!6, !19, !118, !591, !1386}
!2274 = !{!2270, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282}
!2275 = !DILocalVariable(name: "argsize", arg: 2, scope: !2271, file: !124, line: 804, type: !118)
!2276 = !DILocalVariable(name: "size", arg: 3, scope: !2271, file: !124, line: 804, type: !591)
!2277 = !DILocalVariable(name: "o", arg: 4, scope: !2271, file: !124, line: 805, type: !1386)
!2278 = !DILocalVariable(name: "p", scope: !2271, file: !124, line: 807, type: !1386)
!2279 = !DILocalVariable(name: "e", scope: !2271, file: !124, line: 808, type: !44)
!2280 = !DILocalVariable(name: "flags", scope: !2271, file: !124, line: 810, type: !44)
!2281 = !DILocalVariable(name: "bufsize", scope: !2271, file: !124, line: 811, type: !118)
!2282 = !DILocalVariable(name: "buf", scope: !2271, file: !124, line: 815, type: !6)
!2283 = !DILocation(line: 804, column: 33, scope: !2271, inlinedAt: !2284)
!2284 = distinct !DILocation(line: 794, column: 10, scope: !2260)
!2285 = !DILocation(line: 804, column: 45, scope: !2271, inlinedAt: !2284)
!2286 = !DILocation(line: 804, column: 62, scope: !2271, inlinedAt: !2284)
!2287 = !DILocation(line: 805, column: 51, scope: !2271, inlinedAt: !2284)
!2288 = !DILocation(line: 807, column: 37, scope: !2271, inlinedAt: !2284)
!2289 = !DILocation(line: 807, column: 33, scope: !2271, inlinedAt: !2284)
!2290 = !DILocation(line: 808, column: 11, scope: !2271, inlinedAt: !2284)
!2291 = !DILocation(line: 808, column: 7, scope: !2271, inlinedAt: !2284)
!2292 = !DILocation(line: 810, column: 18, scope: !2271, inlinedAt: !2284)
!2293 = !DILocation(line: 810, column: 24, scope: !2271, inlinedAt: !2284)
!2294 = !DILocation(line: 810, column: 7, scope: !2271, inlinedAt: !2284)
!2295 = !DILocation(line: 811, column: 69, scope: !2271, inlinedAt: !2284)
!2296 = !DILocation(line: 812, column: 53, scope: !2271, inlinedAt: !2284)
!2297 = !DILocation(line: 813, column: 49, scope: !2271, inlinedAt: !2284)
!2298 = !DILocation(line: 814, column: 49, scope: !2271, inlinedAt: !2284)
!2299 = !DILocation(line: 811, column: 20, scope: !2271, inlinedAt: !2284)
!2300 = !DILocation(line: 814, column: 62, scope: !2271, inlinedAt: !2284)
!2301 = !DILocation(line: 811, column: 10, scope: !2271, inlinedAt: !2284)
!2302 = !DILocalVariable(name: "n", arg: 1, scope: !2303, file: !587, line: 220, type: !118)
!2303 = distinct !DISubprogram(name: "xcharalloc", scope: !587, file: !587, line: 220, type: !844, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2304)
!2304 = !{!2302}
!2305 = !DILocation(line: 220, column: 20, scope: !2303, inlinedAt: !2306)
!2306 = distinct !DILocation(line: 815, column: 15, scope: !2271, inlinedAt: !2284)
!2307 = !DILocation(line: 222, column: 10, scope: !2303, inlinedAt: !2306)
!2308 = !DILocation(line: 815, column: 9, scope: !2271, inlinedAt: !2284)
!2309 = !DILocation(line: 816, column: 60, scope: !2271, inlinedAt: !2284)
!2310 = !DILocation(line: 818, column: 32, scope: !2271, inlinedAt: !2284)
!2311 = !DILocation(line: 818, column: 47, scope: !2271, inlinedAt: !2284)
!2312 = !DILocation(line: 816, column: 3, scope: !2271, inlinedAt: !2284)
!2313 = !DILocation(line: 819, column: 9, scope: !2271, inlinedAt: !2284)
!2314 = !DILocation(line: 794, column: 3, scope: !2260)
!2315 = !DILocation(line: 804, column: 33, scope: !2271)
!2316 = !DILocation(line: 804, column: 45, scope: !2271)
!2317 = !DILocation(line: 804, column: 62, scope: !2271)
!2318 = !DILocation(line: 805, column: 51, scope: !2271)
!2319 = !DILocation(line: 807, column: 37, scope: !2271)
!2320 = !DILocation(line: 807, column: 33, scope: !2271)
!2321 = !DILocation(line: 808, column: 11, scope: !2271)
!2322 = !DILocation(line: 808, column: 7, scope: !2271)
!2323 = !DILocation(line: 810, column: 18, scope: !2271)
!2324 = !DILocation(line: 810, column: 27, scope: !2271)
!2325 = !DILocation(line: 810, column: 24, scope: !2271)
!2326 = !DILocation(line: 810, column: 7, scope: !2271)
!2327 = !DILocation(line: 811, column: 69, scope: !2271)
!2328 = !DILocation(line: 812, column: 53, scope: !2271)
!2329 = !DILocation(line: 813, column: 49, scope: !2271)
!2330 = !DILocation(line: 814, column: 49, scope: !2271)
!2331 = !DILocation(line: 811, column: 20, scope: !2271)
!2332 = !DILocation(line: 814, column: 62, scope: !2271)
!2333 = !DILocation(line: 811, column: 10, scope: !2271)
!2334 = !DILocation(line: 220, column: 20, scope: !2303, inlinedAt: !2335)
!2335 = distinct !DILocation(line: 815, column: 15, scope: !2271)
!2336 = !DILocation(line: 222, column: 10, scope: !2303, inlinedAt: !2335)
!2337 = !DILocation(line: 815, column: 9, scope: !2271)
!2338 = !DILocation(line: 816, column: 60, scope: !2271)
!2339 = !DILocation(line: 818, column: 32, scope: !2271)
!2340 = !DILocation(line: 818, column: 47, scope: !2271)
!2341 = !DILocation(line: 816, column: 3, scope: !2271)
!2342 = !DILocation(line: 819, column: 9, scope: !2271)
!2343 = !DILocation(line: 820, column: 7, scope: !2271)
!2344 = !DILocation(line: 821, column: 11, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2271, file: !124, line: 820, column: 7)
!2346 = !{!1102, !1102, i64 0}
!2347 = !DILocation(line: 821, column: 5, scope: !2345)
!2348 = !DILocation(line: 822, column: 3, scope: !2271)
!2349 = distinct !DISubprogram(name: "quotearg_free", scope: !124, file: !124, line: 840, type: !1016, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2350)
!2350 = !{!2351, !2352}
!2351 = !DILocalVariable(name: "sv", scope: !2349, file: !124, line: 842, type: !149)
!2352 = !DILocalVariable(name: "i", scope: !2349, file: !124, line: 843, type: !44)
!2353 = !DILocation(line: 842, column: 24, scope: !2349)
!2354 = !DILocation(line: 842, column: 19, scope: !2349)
!2355 = !DILocation(line: 843, column: 7, scope: !2349)
!2356 = !DILocation(line: 844, column: 19, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !124, line: 844, column: 3)
!2358 = distinct !DILexicalBlock(scope: !2349, file: !124, line: 844, column: 3)
!2359 = !DILocation(line: 844, column: 17, scope: !2357)
!2360 = !DILocation(line: 844, column: 3, scope: !2358)
!2361 = !DILocation(line: 845, column: 17, scope: !2357)
!2362 = !{!2363, !699, i64 8}
!2363 = !{!"slotvec", !1102, i64 0, !699, i64 8}
!2364 = !DILocation(line: 845, column: 5, scope: !2357)
!2365 = !DILocation(line: 844, column: 28, scope: !2357)
!2366 = distinct !{!2366, !2360, !2367}
!2367 = !DILocation(line: 845, column: 20, scope: !2358)
!2368 = !DILocation(line: 846, column: 13, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2349, file: !124, line: 846, column: 7)
!2370 = !DILocation(line: 846, column: 17, scope: !2369)
!2371 = !DILocation(line: 846, column: 7, scope: !2349)
!2372 = !DILocation(line: 848, column: 7, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2369, file: !124, line: 847, column: 5)
!2374 = !DILocation(line: 849, column: 21, scope: !2373)
!2375 = !{!2363, !1102, i64 0}
!2376 = !DILocation(line: 850, column: 20, scope: !2373)
!2377 = !DILocation(line: 851, column: 5, scope: !2373)
!2378 = !DILocation(line: 852, column: 10, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2349, file: !124, line: 852, column: 7)
!2380 = !DILocation(line: 852, column: 7, scope: !2349)
!2381 = !DILocation(line: 854, column: 13, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2379, file: !124, line: 853, column: 5)
!2383 = !DILocation(line: 854, column: 7, scope: !2382)
!2384 = !DILocation(line: 855, column: 15, scope: !2382)
!2385 = !DILocation(line: 856, column: 5, scope: !2382)
!2386 = !DILocation(line: 857, column: 10, scope: !2349)
!2387 = !DILocation(line: 858, column: 1, scope: !2349)
!2388 = distinct !DISubprogram(name: "quotearg_n", scope: !124, file: !124, line: 922, type: !2389, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2391)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!6, !44, !19}
!2391 = !{!2392, !2393}
!2392 = !DILocalVariable(name: "n", arg: 1, scope: !2388, file: !124, line: 922, type: !44)
!2393 = !DILocalVariable(name: "arg", arg: 2, scope: !2388, file: !124, line: 922, type: !19)
!2394 = !DILocation(line: 922, column: 17, scope: !2388)
!2395 = !DILocation(line: 922, column: 32, scope: !2388)
!2396 = !DILocation(line: 924, column: 10, scope: !2388)
!2397 = !DILocation(line: 924, column: 3, scope: !2388)
!2398 = distinct !DISubprogram(name: "quotearg_n_options", scope: !124, file: !124, line: 869, type: !2399, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2401)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!6, !44, !19, !118, !1386}
!2401 = !{!2402, !2403, !2404, !2405, !2406, !2407, !2408, !2411, !2413, !2414, !2415}
!2402 = !DILocalVariable(name: "n", arg: 1, scope: !2398, file: !124, line: 869, type: !44)
!2403 = !DILocalVariable(name: "arg", arg: 2, scope: !2398, file: !124, line: 869, type: !19)
!2404 = !DILocalVariable(name: "argsize", arg: 3, scope: !2398, file: !124, line: 869, type: !118)
!2405 = !DILocalVariable(name: "options", arg: 4, scope: !2398, file: !124, line: 870, type: !1386)
!2406 = !DILocalVariable(name: "e", scope: !2398, file: !124, line: 872, type: !44)
!2407 = !DILocalVariable(name: "sv", scope: !2398, file: !124, line: 874, type: !149)
!2408 = !DILocalVariable(name: "preallocated", scope: !2409, file: !124, line: 881, type: !12)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !124, line: 880, column: 5)
!2410 = distinct !DILexicalBlock(scope: !2398, file: !124, line: 879, column: 7)
!2411 = !DILocalVariable(name: "size", scope: !2412, file: !124, line: 894, type: !118)
!2412 = distinct !DILexicalBlock(scope: !2398, file: !124, line: 893, column: 3)
!2413 = !DILocalVariable(name: "val", scope: !2412, file: !124, line: 895, type: !6)
!2414 = !DILocalVariable(name: "flags", scope: !2412, file: !124, line: 897, type: !44)
!2415 = !DILocalVariable(name: "qsize", scope: !2412, file: !124, line: 898, type: !118)
!2416 = !DILocation(line: 869, column: 25, scope: !2398)
!2417 = !DILocation(line: 869, column: 40, scope: !2398)
!2418 = !DILocation(line: 869, column: 52, scope: !2398)
!2419 = !DILocation(line: 870, column: 51, scope: !2398)
!2420 = !DILocation(line: 872, column: 11, scope: !2398)
!2421 = !DILocation(line: 872, column: 7, scope: !2398)
!2422 = !DILocation(line: 874, column: 24, scope: !2398)
!2423 = !DILocation(line: 874, column: 19, scope: !2398)
!2424 = !DILocation(line: 876, column: 9, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2398, file: !124, line: 876, column: 7)
!2426 = !DILocation(line: 876, column: 7, scope: !2398)
!2427 = !DILocation(line: 877, column: 5, scope: !2425)
!2428 = !DILocation(line: 879, column: 7, scope: !2410)
!2429 = !DILocation(line: 879, column: 14, scope: !2410)
!2430 = !DILocation(line: 879, column: 7, scope: !2398)
!2431 = !DILocation(line: 881, column: 31, scope: !2409)
!2432 = !DILocation(line: 883, column: 67, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2409, file: !124, line: 883, column: 11)
!2434 = !DILocation(line: 883, column: 11, scope: !2409)
!2435 = !DILocation(line: 884, column: 9, scope: !2433)
!2436 = !DILocation(line: 886, column: 32, scope: !2409)
!2437 = !DILocation(line: 886, column: 61, scope: !2409)
!2438 = !DILocation(line: 886, column: 58, scope: !2409)
!2439 = !DILocation(line: 886, column: 66, scope: !2409)
!2440 = !DILocation(line: 886, column: 22, scope: !2409)
!2441 = !DILocation(line: 886, column: 15, scope: !2409)
!2442 = !DILocation(line: 887, column: 11, scope: !2409)
!2443 = !DILocation(line: 888, column: 15, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2409, file: !124, line: 887, column: 11)
!2445 = !{i64 0, i64 8, !2346, i64 8, i64 8, !698}
!2446 = !DILocation(line: 888, column: 9, scope: !2444)
!2447 = !DILocation(line: 889, column: 20, scope: !2409)
!2448 = !DILocation(line: 889, column: 18, scope: !2409)
!2449 = !DILocation(line: 889, column: 7, scope: !2409)
!2450 = !DILocation(line: 889, column: 38, scope: !2409)
!2451 = !DILocation(line: 889, column: 31, scope: !2409)
!2452 = !DILocation(line: 889, column: 48, scope: !2409)
!2453 = !DILocation(line: 890, column: 14, scope: !2409)
!2454 = !DILocation(line: 891, column: 5, scope: !2409)
!2455 = !DILocation(line: 894, column: 19, scope: !2412)
!2456 = !DILocation(line: 894, column: 25, scope: !2412)
!2457 = !DILocation(line: 894, column: 12, scope: !2412)
!2458 = !DILocation(line: 895, column: 23, scope: !2412)
!2459 = !DILocation(line: 895, column: 11, scope: !2412)
!2460 = !DILocation(line: 897, column: 26, scope: !2412)
!2461 = !DILocation(line: 897, column: 32, scope: !2412)
!2462 = !DILocation(line: 897, column: 9, scope: !2412)
!2463 = !DILocation(line: 899, column: 55, scope: !2412)
!2464 = !DILocation(line: 900, column: 46, scope: !2412)
!2465 = !DILocation(line: 901, column: 55, scope: !2412)
!2466 = !DILocation(line: 902, column: 55, scope: !2412)
!2467 = !DILocation(line: 898, column: 20, scope: !2412)
!2468 = !DILocation(line: 898, column: 12, scope: !2412)
!2469 = !DILocation(line: 904, column: 14, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2412, file: !124, line: 904, column: 9)
!2471 = !DILocation(line: 904, column: 9, scope: !2412)
!2472 = !DILocation(line: 906, column: 35, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2470, file: !124, line: 905, column: 7)
!2474 = !DILocation(line: 906, column: 20, scope: !2473)
!2475 = !DILocation(line: 907, column: 17, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2473, file: !124, line: 907, column: 13)
!2477 = !DILocation(line: 907, column: 13, scope: !2473)
!2478 = !DILocation(line: 908, column: 11, scope: !2476)
!2479 = !DILocation(line: 220, column: 20, scope: !2303, inlinedAt: !2480)
!2480 = distinct !DILocation(line: 909, column: 27, scope: !2473)
!2481 = !DILocation(line: 222, column: 10, scope: !2303, inlinedAt: !2480)
!2482 = !DILocation(line: 909, column: 19, scope: !2473)
!2483 = !DILocation(line: 910, column: 69, scope: !2473)
!2484 = !DILocation(line: 912, column: 44, scope: !2473)
!2485 = !DILocation(line: 913, column: 44, scope: !2473)
!2486 = !DILocation(line: 910, column: 9, scope: !2473)
!2487 = !DILocation(line: 914, column: 7, scope: !2473)
!2488 = !DILocation(line: 916, column: 11, scope: !2412)
!2489 = !DILocation(line: 917, column: 5, scope: !2412)
!2490 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !124, file: !124, line: 928, type: !2491, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2493)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!6, !44, !19, !118}
!2493 = !{!2494, !2495, !2496}
!2494 = !DILocalVariable(name: "n", arg: 1, scope: !2490, file: !124, line: 928, type: !44)
!2495 = !DILocalVariable(name: "arg", arg: 2, scope: !2490, file: !124, line: 928, type: !19)
!2496 = !DILocalVariable(name: "argsize", arg: 3, scope: !2490, file: !124, line: 928, type: !118)
!2497 = !DILocation(line: 928, column: 21, scope: !2490)
!2498 = !DILocation(line: 928, column: 36, scope: !2490)
!2499 = !DILocation(line: 928, column: 48, scope: !2490)
!2500 = !DILocation(line: 930, column: 10, scope: !2490)
!2501 = !DILocation(line: 930, column: 3, scope: !2490)
!2502 = distinct !DISubprogram(name: "quotearg", scope: !124, file: !124, line: 934, type: !1172, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2503)
!2503 = !{!2504}
!2504 = !DILocalVariable(name: "arg", arg: 1, scope: !2502, file: !124, line: 934, type: !19)
!2505 = !DILocation(line: 934, column: 23, scope: !2502)
!2506 = !DILocation(line: 922, column: 17, scope: !2388, inlinedAt: !2507)
!2507 = distinct !DILocation(line: 936, column: 10, scope: !2502)
!2508 = !DILocation(line: 922, column: 32, scope: !2388, inlinedAt: !2507)
!2509 = !DILocation(line: 924, column: 10, scope: !2388, inlinedAt: !2507)
!2510 = !DILocation(line: 936, column: 3, scope: !2502)
!2511 = distinct !DISubprogram(name: "quotearg_mem", scope: !124, file: !124, line: 940, type: !2512, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2514)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!6, !19, !118}
!2514 = !{!2515, !2516}
!2515 = !DILocalVariable(name: "arg", arg: 1, scope: !2511, file: !124, line: 940, type: !19)
!2516 = !DILocalVariable(name: "argsize", arg: 2, scope: !2511, file: !124, line: 940, type: !118)
!2517 = !DILocation(line: 940, column: 27, scope: !2511)
!2518 = !DILocation(line: 940, column: 39, scope: !2511)
!2519 = !DILocation(line: 928, column: 21, scope: !2490, inlinedAt: !2520)
!2520 = distinct !DILocation(line: 942, column: 10, scope: !2511)
!2521 = !DILocation(line: 928, column: 36, scope: !2490, inlinedAt: !2520)
!2522 = !DILocation(line: 928, column: 48, scope: !2490, inlinedAt: !2520)
!2523 = !DILocation(line: 930, column: 10, scope: !2490, inlinedAt: !2520)
!2524 = !DILocation(line: 942, column: 3, scope: !2511)
!2525 = distinct !DISubprogram(name: "quotearg_n_style", scope: !124, file: !124, line: 946, type: !2526, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2528)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!6, !44, !82, !19}
!2528 = !{!2529, !2530, !2531, !2532}
!2529 = !DILocalVariable(name: "n", arg: 1, scope: !2525, file: !124, line: 946, type: !44)
!2530 = !DILocalVariable(name: "s", arg: 2, scope: !2525, file: !124, line: 946, type: !82)
!2531 = !DILocalVariable(name: "arg", arg: 3, scope: !2525, file: !124, line: 946, type: !19)
!2532 = !DILocalVariable(name: "o", scope: !2525, file: !124, line: 948, type: !1387)
!2533 = !DILocalVariable(name: "o", scope: !2534, file: !124, line: 187, type: !131)
!2534 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !124, file: !124, line: 185, type: !2535, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2537)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!131, !82}
!2537 = !{!2538, !2533}
!2538 = !DILocalVariable(name: "style", arg: 1, scope: !2534, file: !124, line: 185, type: !82)
!2539 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2540 = !DILocation(line: 187, column: 26, scope: !2534, inlinedAt: !2541)
!2541 = distinct !DILocation(line: 948, column: 36, scope: !2525)
!2542 = !DILocation(line: 946, column: 23, scope: !2525)
!2543 = !DILocation(line: 946, column: 45, scope: !2525)
!2544 = !DILocation(line: 946, column: 60, scope: !2525)
!2545 = !DILocation(line: 948, column: 3, scope: !2525)
!2546 = !DILocation(line: 948, column: 32, scope: !2525)
!2547 = !DILocation(line: 185, column: 48, scope: !2534, inlinedAt: !2541)
!2548 = !DILocation(line: 187, column: 3, scope: !2534, inlinedAt: !2541)
!2549 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2550 = !DILocation(line: 188, column: 13, scope: !2551, inlinedAt: !2541)
!2551 = distinct !DILexicalBlock(scope: !2534, file: !124, line: 188, column: 7)
!2552 = !DILocation(line: 188, column: 7, scope: !2534, inlinedAt: !2541)
!2553 = !DILocation(line: 189, column: 5, scope: !2551, inlinedAt: !2541)
!2554 = !{!2555}
!2555 = distinct !{!2555, !2556, !"quoting_options_from_style: argument 0"}
!2556 = distinct !{!2556, !"quoting_options_from_style"}
!2557 = !DILocation(line: 191, column: 10, scope: !2534, inlinedAt: !2541)
!2558 = !DILocation(line: 192, column: 1, scope: !2534, inlinedAt: !2541)
!2559 = !DILocation(line: 949, column: 10, scope: !2525)
!2560 = !DILocation(line: 950, column: 1, scope: !2525)
!2561 = !DILocation(line: 949, column: 3, scope: !2525)
!2562 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !124, file: !124, line: 953, type: !2563, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2565)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!6, !44, !82, !19, !118}
!2565 = !{!2566, !2567, !2568, !2569, !2570}
!2566 = !DILocalVariable(name: "n", arg: 1, scope: !2562, file: !124, line: 953, type: !44)
!2567 = !DILocalVariable(name: "s", arg: 2, scope: !2562, file: !124, line: 953, type: !82)
!2568 = !DILocalVariable(name: "arg", arg: 3, scope: !2562, file: !124, line: 954, type: !19)
!2569 = !DILocalVariable(name: "argsize", arg: 4, scope: !2562, file: !124, line: 954, type: !118)
!2570 = !DILocalVariable(name: "o", scope: !2562, file: !124, line: 956, type: !1387)
!2571 = !DILocation(line: 187, column: 26, scope: !2534, inlinedAt: !2572)
!2572 = distinct !DILocation(line: 956, column: 36, scope: !2562)
!2573 = !DILocation(line: 953, column: 27, scope: !2562)
!2574 = !DILocation(line: 953, column: 49, scope: !2562)
!2575 = !DILocation(line: 954, column: 35, scope: !2562)
!2576 = !DILocation(line: 954, column: 47, scope: !2562)
!2577 = !DILocation(line: 956, column: 3, scope: !2562)
!2578 = !DILocation(line: 956, column: 32, scope: !2562)
!2579 = !DILocation(line: 185, column: 48, scope: !2534, inlinedAt: !2572)
!2580 = !DILocation(line: 187, column: 3, scope: !2534, inlinedAt: !2572)
!2581 = !DILocation(line: 188, column: 13, scope: !2551, inlinedAt: !2572)
!2582 = !DILocation(line: 188, column: 7, scope: !2534, inlinedAt: !2572)
!2583 = !DILocation(line: 189, column: 5, scope: !2551, inlinedAt: !2572)
!2584 = !{!2585}
!2585 = distinct !{!2585, !2586, !"quoting_options_from_style: argument 0"}
!2586 = distinct !{!2586, !"quoting_options_from_style"}
!2587 = !DILocation(line: 191, column: 10, scope: !2534, inlinedAt: !2572)
!2588 = !DILocation(line: 192, column: 1, scope: !2534, inlinedAt: !2572)
!2589 = !DILocation(line: 957, column: 10, scope: !2562)
!2590 = !DILocation(line: 958, column: 1, scope: !2562)
!2591 = !DILocation(line: 957, column: 3, scope: !2562)
!2592 = distinct !DISubprogram(name: "quotearg_style", scope: !124, file: !124, line: 961, type: !2593, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2595)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!6, !82, !19}
!2595 = !{!2596, !2597}
!2596 = !DILocalVariable(name: "s", arg: 1, scope: !2592, file: !124, line: 961, type: !82)
!2597 = !DILocalVariable(name: "arg", arg: 2, scope: !2592, file: !124, line: 961, type: !19)
!2598 = !DILocation(line: 187, column: 26, scope: !2534, inlinedAt: !2599)
!2599 = distinct !DILocation(line: 948, column: 36, scope: !2525, inlinedAt: !2600)
!2600 = distinct !DILocation(line: 963, column: 10, scope: !2592)
!2601 = !DILocation(line: 961, column: 36, scope: !2592)
!2602 = !DILocation(line: 961, column: 51, scope: !2592)
!2603 = !DILocation(line: 946, column: 23, scope: !2525, inlinedAt: !2600)
!2604 = !DILocation(line: 946, column: 45, scope: !2525, inlinedAt: !2600)
!2605 = !DILocation(line: 946, column: 60, scope: !2525, inlinedAt: !2600)
!2606 = !DILocation(line: 948, column: 3, scope: !2525, inlinedAt: !2600)
!2607 = !DILocation(line: 948, column: 32, scope: !2525, inlinedAt: !2600)
!2608 = !DILocation(line: 185, column: 48, scope: !2534, inlinedAt: !2599)
!2609 = !DILocation(line: 187, column: 3, scope: !2534, inlinedAt: !2599)
!2610 = !DILocation(line: 188, column: 13, scope: !2551, inlinedAt: !2599)
!2611 = !DILocation(line: 188, column: 7, scope: !2534, inlinedAt: !2599)
!2612 = !DILocation(line: 189, column: 5, scope: !2551, inlinedAt: !2599)
!2613 = !{!2614}
!2614 = distinct !{!2614, !2615, !"quoting_options_from_style: argument 0"}
!2615 = distinct !{!2615, !"quoting_options_from_style"}
!2616 = !DILocation(line: 191, column: 10, scope: !2534, inlinedAt: !2599)
!2617 = !DILocation(line: 192, column: 1, scope: !2534, inlinedAt: !2599)
!2618 = !DILocation(line: 949, column: 10, scope: !2525, inlinedAt: !2600)
!2619 = !DILocation(line: 950, column: 1, scope: !2525, inlinedAt: !2600)
!2620 = !DILocation(line: 963, column: 3, scope: !2592)
!2621 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !124, file: !124, line: 967, type: !2622, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2624)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!6, !82, !19, !118}
!2624 = !{!2625, !2626, !2627}
!2625 = !DILocalVariable(name: "s", arg: 1, scope: !2621, file: !124, line: 967, type: !82)
!2626 = !DILocalVariable(name: "arg", arg: 2, scope: !2621, file: !124, line: 967, type: !19)
!2627 = !DILocalVariable(name: "argsize", arg: 3, scope: !2621, file: !124, line: 967, type: !118)
!2628 = !DILocation(line: 187, column: 26, scope: !2534, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 956, column: 36, scope: !2562, inlinedAt: !2630)
!2630 = distinct !DILocation(line: 969, column: 10, scope: !2621)
!2631 = !DILocation(line: 967, column: 40, scope: !2621)
!2632 = !DILocation(line: 967, column: 55, scope: !2621)
!2633 = !DILocation(line: 967, column: 67, scope: !2621)
!2634 = !DILocation(line: 953, column: 27, scope: !2562, inlinedAt: !2630)
!2635 = !DILocation(line: 953, column: 49, scope: !2562, inlinedAt: !2630)
!2636 = !DILocation(line: 954, column: 35, scope: !2562, inlinedAt: !2630)
!2637 = !DILocation(line: 954, column: 47, scope: !2562, inlinedAt: !2630)
!2638 = !DILocation(line: 956, column: 3, scope: !2562, inlinedAt: !2630)
!2639 = !DILocation(line: 956, column: 32, scope: !2562, inlinedAt: !2630)
!2640 = !DILocation(line: 185, column: 48, scope: !2534, inlinedAt: !2629)
!2641 = !DILocation(line: 187, column: 3, scope: !2534, inlinedAt: !2629)
!2642 = !DILocation(line: 188, column: 13, scope: !2551, inlinedAt: !2629)
!2643 = !DILocation(line: 188, column: 7, scope: !2534, inlinedAt: !2629)
!2644 = !DILocation(line: 189, column: 5, scope: !2551, inlinedAt: !2629)
!2645 = !{!2646}
!2646 = distinct !{!2646, !2647, !"quoting_options_from_style: argument 0"}
!2647 = distinct !{!2647, !"quoting_options_from_style"}
!2648 = !DILocation(line: 191, column: 10, scope: !2534, inlinedAt: !2629)
!2649 = !DILocation(line: 192, column: 1, scope: !2534, inlinedAt: !2629)
!2650 = !DILocation(line: 957, column: 10, scope: !2562, inlinedAt: !2630)
!2651 = !DILocation(line: 958, column: 1, scope: !2562, inlinedAt: !2630)
!2652 = !DILocation(line: 969, column: 3, scope: !2621)
!2653 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !124, file: !124, line: 973, type: !2654, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2656)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!6, !19, !118, !7}
!2656 = !{!2657, !2658, !2659, !2660}
!2657 = !DILocalVariable(name: "arg", arg: 1, scope: !2653, file: !124, line: 973, type: !19)
!2658 = !DILocalVariable(name: "argsize", arg: 2, scope: !2653, file: !124, line: 973, type: !118)
!2659 = !DILocalVariable(name: "ch", arg: 3, scope: !2653, file: !124, line: 973, type: !7)
!2660 = !DILocalVariable(name: "options", scope: !2653, file: !124, line: 975, type: !131)
!2661 = !DILocation(line: 973, column: 32, scope: !2653)
!2662 = !DILocation(line: 973, column: 44, scope: !2653)
!2663 = !DILocation(line: 973, column: 58, scope: !2653)
!2664 = !DILocation(line: 975, column: 3, scope: !2653)
!2665 = !DILocation(line: 976, column: 13, scope: !2653)
!2666 = !{i64 0, i64 4, !833, i64 4, i64 4, !807, i64 8, i64 32, !833, i64 40, i64 8, !698, i64 48, i64 8, !698}
!2667 = !DILocation(line: 975, column: 26, scope: !2653)
!2668 = !DILocation(line: 144, column: 43, scope: !1408, inlinedAt: !2669)
!2669 = distinct !DILocation(line: 977, column: 3, scope: !2653)
!2670 = !DILocation(line: 144, column: 51, scope: !1408, inlinedAt: !2669)
!2671 = !DILocation(line: 144, column: 58, scope: !1408, inlinedAt: !2669)
!2672 = !DILocation(line: 146, column: 17, scope: !1408, inlinedAt: !2669)
!2673 = !DILocation(line: 148, column: 62, scope: !1408, inlinedAt: !2669)
!2674 = !DILocation(line: 148, column: 57, scope: !1408, inlinedAt: !2669)
!2675 = !DILocation(line: 147, column: 17, scope: !1408, inlinedAt: !2669)
!2676 = !DILocation(line: 149, column: 18, scope: !1408, inlinedAt: !2669)
!2677 = !DILocation(line: 149, column: 15, scope: !1408, inlinedAt: !2669)
!2678 = !DILocation(line: 149, column: 7, scope: !1408, inlinedAt: !2669)
!2679 = !DILocation(line: 150, column: 12, scope: !1408, inlinedAt: !2669)
!2680 = !DILocation(line: 150, column: 15, scope: !1408, inlinedAt: !2669)
!2681 = !DILocation(line: 150, column: 25, scope: !1408, inlinedAt: !2669)
!2682 = !DILocation(line: 150, column: 7, scope: !1408, inlinedAt: !2669)
!2683 = !DILocation(line: 151, column: 18, scope: !1408, inlinedAt: !2669)
!2684 = !DILocation(line: 151, column: 23, scope: !1408, inlinedAt: !2669)
!2685 = !DILocation(line: 151, column: 6, scope: !1408, inlinedAt: !2669)
!2686 = !DILocation(line: 978, column: 10, scope: !2653)
!2687 = !DILocation(line: 979, column: 1, scope: !2653)
!2688 = !DILocation(line: 978, column: 3, scope: !2653)
!2689 = distinct !DISubprogram(name: "quotearg_char", scope: !124, file: !124, line: 982, type: !2690, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2692)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!6, !19, !7}
!2692 = !{!2693, !2694}
!2693 = !DILocalVariable(name: "arg", arg: 1, scope: !2689, file: !124, line: 982, type: !19)
!2694 = !DILocalVariable(name: "ch", arg: 2, scope: !2689, file: !124, line: 982, type: !7)
!2695 = !DILocation(line: 982, column: 28, scope: !2689)
!2696 = !DILocation(line: 982, column: 38, scope: !2689)
!2697 = !DILocation(line: 973, column: 32, scope: !2653, inlinedAt: !2698)
!2698 = distinct !DILocation(line: 984, column: 10, scope: !2689)
!2699 = !DILocation(line: 973, column: 44, scope: !2653, inlinedAt: !2698)
!2700 = !DILocation(line: 973, column: 58, scope: !2653, inlinedAt: !2698)
!2701 = !DILocation(line: 975, column: 3, scope: !2653, inlinedAt: !2698)
!2702 = !DILocation(line: 976, column: 13, scope: !2653, inlinedAt: !2698)
!2703 = !DILocation(line: 975, column: 26, scope: !2653, inlinedAt: !2698)
!2704 = !DILocation(line: 144, column: 43, scope: !1408, inlinedAt: !2705)
!2705 = distinct !DILocation(line: 977, column: 3, scope: !2653, inlinedAt: !2698)
!2706 = !DILocation(line: 144, column: 51, scope: !1408, inlinedAt: !2705)
!2707 = !DILocation(line: 144, column: 58, scope: !1408, inlinedAt: !2705)
!2708 = !DILocation(line: 146, column: 17, scope: !1408, inlinedAt: !2705)
!2709 = !DILocation(line: 148, column: 62, scope: !1408, inlinedAt: !2705)
!2710 = !DILocation(line: 148, column: 57, scope: !1408, inlinedAt: !2705)
!2711 = !DILocation(line: 147, column: 17, scope: !1408, inlinedAt: !2705)
!2712 = !DILocation(line: 149, column: 18, scope: !1408, inlinedAt: !2705)
!2713 = !DILocation(line: 149, column: 15, scope: !1408, inlinedAt: !2705)
!2714 = !DILocation(line: 149, column: 7, scope: !1408, inlinedAt: !2705)
!2715 = !DILocation(line: 150, column: 12, scope: !1408, inlinedAt: !2705)
!2716 = !DILocation(line: 150, column: 15, scope: !1408, inlinedAt: !2705)
!2717 = !DILocation(line: 150, column: 25, scope: !1408, inlinedAt: !2705)
!2718 = !DILocation(line: 150, column: 7, scope: !1408, inlinedAt: !2705)
!2719 = !DILocation(line: 151, column: 18, scope: !1408, inlinedAt: !2705)
!2720 = !DILocation(line: 151, column: 23, scope: !1408, inlinedAt: !2705)
!2721 = !DILocation(line: 151, column: 6, scope: !1408, inlinedAt: !2705)
!2722 = !DILocation(line: 978, column: 10, scope: !2653, inlinedAt: !2698)
!2723 = !DILocation(line: 979, column: 1, scope: !2653, inlinedAt: !2698)
!2724 = !DILocation(line: 984, column: 3, scope: !2689)
!2725 = distinct !DISubprogram(name: "quotearg_colon", scope: !124, file: !124, line: 988, type: !1172, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2726)
!2726 = !{!2727}
!2727 = !DILocalVariable(name: "arg", arg: 1, scope: !2725, file: !124, line: 988, type: !19)
!2728 = !DILocation(line: 988, column: 29, scope: !2725)
!2729 = !DILocation(line: 982, column: 28, scope: !2689, inlinedAt: !2730)
!2730 = distinct !DILocation(line: 990, column: 10, scope: !2725)
!2731 = !DILocation(line: 982, column: 38, scope: !2689, inlinedAt: !2730)
!2732 = !DILocation(line: 973, column: 32, scope: !2653, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 984, column: 10, scope: !2689, inlinedAt: !2730)
!2734 = !DILocation(line: 973, column: 44, scope: !2653, inlinedAt: !2733)
!2735 = !DILocation(line: 973, column: 58, scope: !2653, inlinedAt: !2733)
!2736 = !DILocation(line: 975, column: 3, scope: !2653, inlinedAt: !2733)
!2737 = !DILocation(line: 976, column: 13, scope: !2653, inlinedAt: !2733)
!2738 = !DILocation(line: 975, column: 26, scope: !2653, inlinedAt: !2733)
!2739 = !DILocation(line: 144, column: 43, scope: !1408, inlinedAt: !2740)
!2740 = distinct !DILocation(line: 977, column: 3, scope: !2653, inlinedAt: !2733)
!2741 = !DILocation(line: 144, column: 51, scope: !1408, inlinedAt: !2740)
!2742 = !DILocation(line: 144, column: 58, scope: !1408, inlinedAt: !2740)
!2743 = !DILocation(line: 146, column: 17, scope: !1408, inlinedAt: !2740)
!2744 = !DILocation(line: 148, column: 57, scope: !1408, inlinedAt: !2740)
!2745 = !DILocation(line: 147, column: 17, scope: !1408, inlinedAt: !2740)
!2746 = !DILocation(line: 149, column: 7, scope: !1408, inlinedAt: !2740)
!2747 = !DILocation(line: 150, column: 12, scope: !1408, inlinedAt: !2740)
!2748 = !DILocation(line: 151, column: 6, scope: !1408, inlinedAt: !2740)
!2749 = !DILocation(line: 978, column: 10, scope: !2653, inlinedAt: !2733)
!2750 = !DILocation(line: 979, column: 1, scope: !2653, inlinedAt: !2733)
!2751 = !DILocation(line: 990, column: 3, scope: !2725)
!2752 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !124, file: !124, line: 994, type: !2512, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2753)
!2753 = !{!2754, !2755}
!2754 = !DILocalVariable(name: "arg", arg: 1, scope: !2752, file: !124, line: 994, type: !19)
!2755 = !DILocalVariable(name: "argsize", arg: 2, scope: !2752, file: !124, line: 994, type: !118)
!2756 = !DILocation(line: 994, column: 33, scope: !2752)
!2757 = !DILocation(line: 994, column: 45, scope: !2752)
!2758 = !DILocation(line: 973, column: 32, scope: !2653, inlinedAt: !2759)
!2759 = distinct !DILocation(line: 996, column: 10, scope: !2752)
!2760 = !DILocation(line: 973, column: 44, scope: !2653, inlinedAt: !2759)
!2761 = !DILocation(line: 973, column: 58, scope: !2653, inlinedAt: !2759)
!2762 = !DILocation(line: 975, column: 3, scope: !2653, inlinedAt: !2759)
!2763 = !DILocation(line: 976, column: 13, scope: !2653, inlinedAt: !2759)
!2764 = !DILocation(line: 975, column: 26, scope: !2653, inlinedAt: !2759)
!2765 = !DILocation(line: 144, column: 43, scope: !1408, inlinedAt: !2766)
!2766 = distinct !DILocation(line: 977, column: 3, scope: !2653, inlinedAt: !2759)
!2767 = !DILocation(line: 144, column: 51, scope: !1408, inlinedAt: !2766)
!2768 = !DILocation(line: 144, column: 58, scope: !1408, inlinedAt: !2766)
!2769 = !DILocation(line: 146, column: 17, scope: !1408, inlinedAt: !2766)
!2770 = !DILocation(line: 148, column: 57, scope: !1408, inlinedAt: !2766)
!2771 = !DILocation(line: 147, column: 17, scope: !1408, inlinedAt: !2766)
!2772 = !DILocation(line: 149, column: 7, scope: !1408, inlinedAt: !2766)
!2773 = !DILocation(line: 150, column: 12, scope: !1408, inlinedAt: !2766)
!2774 = !DILocation(line: 151, column: 6, scope: !1408, inlinedAt: !2766)
!2775 = !DILocation(line: 978, column: 10, scope: !2653, inlinedAt: !2759)
!2776 = !DILocation(line: 979, column: 1, scope: !2653, inlinedAt: !2759)
!2777 = !DILocation(line: 996, column: 3, scope: !2752)
!2778 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !124, file: !124, line: 1000, type: !2526, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2779)
!2779 = !{!2780, !2781, !2782, !2783}
!2780 = !DILocalVariable(name: "n", arg: 1, scope: !2778, file: !124, line: 1000, type: !44)
!2781 = !DILocalVariable(name: "s", arg: 2, scope: !2778, file: !124, line: 1000, type: !82)
!2782 = !DILocalVariable(name: "arg", arg: 3, scope: !2778, file: !124, line: 1000, type: !19)
!2783 = !DILocalVariable(name: "options", scope: !2778, file: !124, line: 1002, type: !131)
!2784 = !DILocation(line: 187, column: 26, scope: !2534, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 1003, column: 13, scope: !2778)
!2786 = !DILocation(line: 1000, column: 29, scope: !2778)
!2787 = !DILocation(line: 1000, column: 51, scope: !2778)
!2788 = !DILocation(line: 1000, column: 66, scope: !2778)
!2789 = !DILocation(line: 1002, column: 3, scope: !2778)
!2790 = !DILocation(line: 185, column: 48, scope: !2534, inlinedAt: !2785)
!2791 = !DILocation(line: 187, column: 3, scope: !2534, inlinedAt: !2785)
!2792 = !DILocation(line: 188, column: 13, scope: !2551, inlinedAt: !2785)
!2793 = !DILocation(line: 188, column: 7, scope: !2534, inlinedAt: !2785)
!2794 = !DILocation(line: 189, column: 5, scope: !2551, inlinedAt: !2785)
!2795 = !{!2796}
!2796 = distinct !{!2796, !2797, !"quoting_options_from_style: argument 0"}
!2797 = distinct !{!2797, !"quoting_options_from_style"}
!2798 = !DILocation(line: 191, column: 10, scope: !2534, inlinedAt: !2785)
!2799 = !DILocation(line: 192, column: 1, scope: !2534, inlinedAt: !2785)
!2800 = !DILocation(line: 1003, column: 13, scope: !2778)
!2801 = !DILocation(line: 1002, column: 26, scope: !2778)
!2802 = !DILocation(line: 144, column: 43, scope: !1408, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 1004, column: 3, scope: !2778)
!2804 = !DILocation(line: 144, column: 51, scope: !1408, inlinedAt: !2803)
!2805 = !DILocation(line: 144, column: 58, scope: !1408, inlinedAt: !2803)
!2806 = !DILocation(line: 146, column: 17, scope: !1408, inlinedAt: !2803)
!2807 = !DILocation(line: 148, column: 57, scope: !1408, inlinedAt: !2803)
!2808 = !DILocation(line: 147, column: 17, scope: !1408, inlinedAt: !2803)
!2809 = !DILocation(line: 149, column: 7, scope: !1408, inlinedAt: !2803)
!2810 = !DILocation(line: 150, column: 12, scope: !1408, inlinedAt: !2803)
!2811 = !DILocation(line: 151, column: 6, scope: !1408, inlinedAt: !2803)
!2812 = !DILocation(line: 1005, column: 10, scope: !2778)
!2813 = !DILocation(line: 1006, column: 1, scope: !2778)
!2814 = !DILocation(line: 1005, column: 3, scope: !2778)
!2815 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !124, file: !124, line: 1009, type: !2816, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2818)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!6, !44, !19, !19, !19}
!2818 = !{!2819, !2820, !2821, !2822}
!2819 = !DILocalVariable(name: "n", arg: 1, scope: !2815, file: !124, line: 1009, type: !44)
!2820 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2815, file: !124, line: 1009, type: !19)
!2821 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2815, file: !124, line: 1010, type: !19)
!2822 = !DILocalVariable(name: "arg", arg: 4, scope: !2815, file: !124, line: 1010, type: !19)
!2823 = !DILocation(line: 1009, column: 24, scope: !2815)
!2824 = !DILocation(line: 1009, column: 39, scope: !2815)
!2825 = !DILocation(line: 1010, column: 32, scope: !2815)
!2826 = !DILocation(line: 1010, column: 57, scope: !2815)
!2827 = !DILocalVariable(name: "n", arg: 1, scope: !2828, file: !124, line: 1017, type: !44)
!2828 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !124, file: !124, line: 1017, type: !2829, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2831)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!6, !44, !19, !19, !19, !118}
!2831 = !{!2827, !2832, !2833, !2834, !2835, !2836}
!2832 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2828, file: !124, line: 1017, type: !19)
!2833 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2828, file: !124, line: 1018, type: !19)
!2834 = !DILocalVariable(name: "arg", arg: 4, scope: !2828, file: !124, line: 1019, type: !19)
!2835 = !DILocalVariable(name: "argsize", arg: 5, scope: !2828, file: !124, line: 1019, type: !118)
!2836 = !DILocalVariable(name: "o", scope: !2828, file: !124, line: 1021, type: !131)
!2837 = !DILocation(line: 1017, column: 28, scope: !2828, inlinedAt: !2838)
!2838 = distinct !DILocation(line: 1012, column: 10, scope: !2815)
!2839 = !DILocation(line: 1017, column: 43, scope: !2828, inlinedAt: !2838)
!2840 = !DILocation(line: 1018, column: 36, scope: !2828, inlinedAt: !2838)
!2841 = !DILocation(line: 1019, column: 36, scope: !2828, inlinedAt: !2838)
!2842 = !DILocation(line: 1019, column: 48, scope: !2828, inlinedAt: !2838)
!2843 = !DILocation(line: 1021, column: 3, scope: !2828, inlinedAt: !2838)
!2844 = !DILocation(line: 1021, column: 30, scope: !2828, inlinedAt: !2838)
!2845 = !DILocation(line: 1021, column: 26, scope: !2828, inlinedAt: !2838)
!2846 = !DILocation(line: 171, column: 45, scope: !1457, inlinedAt: !2847)
!2847 = distinct !DILocation(line: 1022, column: 3, scope: !2828, inlinedAt: !2838)
!2848 = !DILocation(line: 172, column: 33, scope: !1457, inlinedAt: !2847)
!2849 = !DILocation(line: 172, column: 57, scope: !1457, inlinedAt: !2847)
!2850 = !DILocation(line: 176, column: 6, scope: !1457, inlinedAt: !2847)
!2851 = !DILocation(line: 176, column: 12, scope: !1457, inlinedAt: !2847)
!2852 = !DILocation(line: 177, column: 8, scope: !1473, inlinedAt: !2847)
!2853 = !DILocation(line: 177, column: 23, scope: !1473, inlinedAt: !2847)
!2854 = !DILocation(line: 177, column: 19, scope: !1473, inlinedAt: !2847)
!2855 = !DILocation(line: 178, column: 5, scope: !1473, inlinedAt: !2847)
!2856 = !DILocation(line: 179, column: 6, scope: !1457, inlinedAt: !2847)
!2857 = !DILocation(line: 179, column: 17, scope: !1457, inlinedAt: !2847)
!2858 = !DILocation(line: 180, column: 6, scope: !1457, inlinedAt: !2847)
!2859 = !DILocation(line: 180, column: 18, scope: !1457, inlinedAt: !2847)
!2860 = !DILocation(line: 1023, column: 10, scope: !2828, inlinedAt: !2838)
!2861 = !DILocation(line: 1024, column: 1, scope: !2828, inlinedAt: !2838)
!2862 = !DILocation(line: 1012, column: 3, scope: !2815)
!2863 = !DILocation(line: 1017, column: 28, scope: !2828)
!2864 = !DILocation(line: 1017, column: 43, scope: !2828)
!2865 = !DILocation(line: 1018, column: 36, scope: !2828)
!2866 = !DILocation(line: 1019, column: 36, scope: !2828)
!2867 = !DILocation(line: 1019, column: 48, scope: !2828)
!2868 = !DILocation(line: 1021, column: 3, scope: !2828)
!2869 = !DILocation(line: 1021, column: 30, scope: !2828)
!2870 = !DILocation(line: 1021, column: 26, scope: !2828)
!2871 = !DILocation(line: 171, column: 45, scope: !1457, inlinedAt: !2872)
!2872 = distinct !DILocation(line: 1022, column: 3, scope: !2828)
!2873 = !DILocation(line: 172, column: 33, scope: !1457, inlinedAt: !2872)
!2874 = !DILocation(line: 172, column: 57, scope: !1457, inlinedAt: !2872)
!2875 = !DILocation(line: 176, column: 6, scope: !1457, inlinedAt: !2872)
!2876 = !DILocation(line: 176, column: 12, scope: !1457, inlinedAt: !2872)
!2877 = !DILocation(line: 177, column: 8, scope: !1473, inlinedAt: !2872)
!2878 = !DILocation(line: 177, column: 23, scope: !1473, inlinedAt: !2872)
!2879 = !DILocation(line: 177, column: 19, scope: !1473, inlinedAt: !2872)
!2880 = !DILocation(line: 178, column: 5, scope: !1473, inlinedAt: !2872)
!2881 = !DILocation(line: 179, column: 6, scope: !1457, inlinedAt: !2872)
!2882 = !DILocation(line: 179, column: 17, scope: !1457, inlinedAt: !2872)
!2883 = !DILocation(line: 180, column: 6, scope: !1457, inlinedAt: !2872)
!2884 = !DILocation(line: 180, column: 18, scope: !1457, inlinedAt: !2872)
!2885 = !DILocation(line: 1023, column: 10, scope: !2828)
!2886 = !DILocation(line: 1024, column: 1, scope: !2828)
!2887 = !DILocation(line: 1023, column: 3, scope: !2828)
!2888 = distinct !DISubprogram(name: "quotearg_custom", scope: !124, file: !124, line: 1027, type: !2889, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2891)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!6, !19, !19, !19}
!2891 = !{!2892, !2893, !2894}
!2892 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2888, file: !124, line: 1027, type: !19)
!2893 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2888, file: !124, line: 1027, type: !19)
!2894 = !DILocalVariable(name: "arg", arg: 3, scope: !2888, file: !124, line: 1028, type: !19)
!2895 = !DILocation(line: 1027, column: 30, scope: !2888)
!2896 = !DILocation(line: 1027, column: 54, scope: !2888)
!2897 = !DILocation(line: 1028, column: 30, scope: !2888)
!2898 = !DILocation(line: 1009, column: 24, scope: !2815, inlinedAt: !2899)
!2899 = distinct !DILocation(line: 1030, column: 10, scope: !2888)
!2900 = !DILocation(line: 1009, column: 39, scope: !2815, inlinedAt: !2899)
!2901 = !DILocation(line: 1010, column: 32, scope: !2815, inlinedAt: !2899)
!2902 = !DILocation(line: 1010, column: 57, scope: !2815, inlinedAt: !2899)
!2903 = !DILocation(line: 1017, column: 28, scope: !2828, inlinedAt: !2904)
!2904 = distinct !DILocation(line: 1012, column: 10, scope: !2815, inlinedAt: !2899)
!2905 = !DILocation(line: 1017, column: 43, scope: !2828, inlinedAt: !2904)
!2906 = !DILocation(line: 1018, column: 36, scope: !2828, inlinedAt: !2904)
!2907 = !DILocation(line: 1019, column: 36, scope: !2828, inlinedAt: !2904)
!2908 = !DILocation(line: 1019, column: 48, scope: !2828, inlinedAt: !2904)
!2909 = !DILocation(line: 1021, column: 3, scope: !2828, inlinedAt: !2904)
!2910 = !DILocation(line: 1021, column: 30, scope: !2828, inlinedAt: !2904)
!2911 = !DILocation(line: 1021, column: 26, scope: !2828, inlinedAt: !2904)
!2912 = !DILocation(line: 171, column: 45, scope: !1457, inlinedAt: !2913)
!2913 = distinct !DILocation(line: 1022, column: 3, scope: !2828, inlinedAt: !2904)
!2914 = !DILocation(line: 172, column: 33, scope: !1457, inlinedAt: !2913)
!2915 = !DILocation(line: 172, column: 57, scope: !1457, inlinedAt: !2913)
!2916 = !DILocation(line: 176, column: 6, scope: !1457, inlinedAt: !2913)
!2917 = !DILocation(line: 176, column: 12, scope: !1457, inlinedAt: !2913)
!2918 = !DILocation(line: 177, column: 8, scope: !1473, inlinedAt: !2913)
!2919 = !DILocation(line: 177, column: 23, scope: !1473, inlinedAt: !2913)
!2920 = !DILocation(line: 177, column: 19, scope: !1473, inlinedAt: !2913)
!2921 = !DILocation(line: 178, column: 5, scope: !1473, inlinedAt: !2913)
!2922 = !DILocation(line: 179, column: 6, scope: !1457, inlinedAt: !2913)
!2923 = !DILocation(line: 179, column: 17, scope: !1457, inlinedAt: !2913)
!2924 = !DILocation(line: 180, column: 6, scope: !1457, inlinedAt: !2913)
!2925 = !DILocation(line: 180, column: 18, scope: !1457, inlinedAt: !2913)
!2926 = !DILocation(line: 1023, column: 10, scope: !2828, inlinedAt: !2904)
!2927 = !DILocation(line: 1024, column: 1, scope: !2828, inlinedAt: !2904)
!2928 = !DILocation(line: 1030, column: 3, scope: !2888)
!2929 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !124, file: !124, line: 1034, type: !2930, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2932)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!6, !19, !19, !19, !118}
!2932 = !{!2933, !2934, !2935, !2936}
!2933 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2929, file: !124, line: 1034, type: !19)
!2934 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2929, file: !124, line: 1034, type: !19)
!2935 = !DILocalVariable(name: "arg", arg: 3, scope: !2929, file: !124, line: 1035, type: !19)
!2936 = !DILocalVariable(name: "argsize", arg: 4, scope: !2929, file: !124, line: 1035, type: !118)
!2937 = !DILocation(line: 1034, column: 34, scope: !2929)
!2938 = !DILocation(line: 1034, column: 58, scope: !2929)
!2939 = !DILocation(line: 1035, column: 34, scope: !2929)
!2940 = !DILocation(line: 1035, column: 46, scope: !2929)
!2941 = !DILocation(line: 1017, column: 28, scope: !2828, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 1037, column: 10, scope: !2929)
!2943 = !DILocation(line: 1017, column: 43, scope: !2828, inlinedAt: !2942)
!2944 = !DILocation(line: 1018, column: 36, scope: !2828, inlinedAt: !2942)
!2945 = !DILocation(line: 1019, column: 36, scope: !2828, inlinedAt: !2942)
!2946 = !DILocation(line: 1019, column: 48, scope: !2828, inlinedAt: !2942)
!2947 = !DILocation(line: 1021, column: 3, scope: !2828, inlinedAt: !2942)
!2948 = !DILocation(line: 1021, column: 30, scope: !2828, inlinedAt: !2942)
!2949 = !DILocation(line: 1021, column: 26, scope: !2828, inlinedAt: !2942)
!2950 = !DILocation(line: 171, column: 45, scope: !1457, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 1022, column: 3, scope: !2828, inlinedAt: !2942)
!2952 = !DILocation(line: 172, column: 33, scope: !1457, inlinedAt: !2951)
!2953 = !DILocation(line: 172, column: 57, scope: !1457, inlinedAt: !2951)
!2954 = !DILocation(line: 176, column: 6, scope: !1457, inlinedAt: !2951)
!2955 = !DILocation(line: 176, column: 12, scope: !1457, inlinedAt: !2951)
!2956 = !DILocation(line: 177, column: 8, scope: !1473, inlinedAt: !2951)
!2957 = !DILocation(line: 177, column: 23, scope: !1473, inlinedAt: !2951)
!2958 = !DILocation(line: 177, column: 19, scope: !1473, inlinedAt: !2951)
!2959 = !DILocation(line: 178, column: 5, scope: !1473, inlinedAt: !2951)
!2960 = !DILocation(line: 179, column: 6, scope: !1457, inlinedAt: !2951)
!2961 = !DILocation(line: 179, column: 17, scope: !1457, inlinedAt: !2951)
!2962 = !DILocation(line: 180, column: 6, scope: !1457, inlinedAt: !2951)
!2963 = !DILocation(line: 180, column: 18, scope: !1457, inlinedAt: !2951)
!2964 = !DILocation(line: 1023, column: 10, scope: !2828, inlinedAt: !2942)
!2965 = !DILocation(line: 1024, column: 1, scope: !2828, inlinedAt: !2942)
!2966 = !DILocation(line: 1037, column: 3, scope: !2929)
!2967 = distinct !DISubprogram(name: "quote_n_mem", scope: !124, file: !124, line: 1052, type: !2968, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2970)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!19, !44, !19, !118}
!2970 = !{!2971, !2972, !2973}
!2971 = !DILocalVariable(name: "n", arg: 1, scope: !2967, file: !124, line: 1052, type: !44)
!2972 = !DILocalVariable(name: "arg", arg: 2, scope: !2967, file: !124, line: 1052, type: !19)
!2973 = !DILocalVariable(name: "argsize", arg: 3, scope: !2967, file: !124, line: 1052, type: !118)
!2974 = !DILocation(line: 1052, column: 18, scope: !2967)
!2975 = !DILocation(line: 1052, column: 33, scope: !2967)
!2976 = !DILocation(line: 1052, column: 45, scope: !2967)
!2977 = !DILocation(line: 1054, column: 10, scope: !2967)
!2978 = !DILocation(line: 1054, column: 3, scope: !2967)
!2979 = distinct !DISubprogram(name: "quote_mem", scope: !124, file: !124, line: 1058, type: !2980, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2982)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!19, !19, !118}
!2982 = !{!2983, !2984}
!2983 = !DILocalVariable(name: "arg", arg: 1, scope: !2979, file: !124, line: 1058, type: !19)
!2984 = !DILocalVariable(name: "argsize", arg: 2, scope: !2979, file: !124, line: 1058, type: !118)
!2985 = !DILocation(line: 1058, column: 24, scope: !2979)
!2986 = !DILocation(line: 1058, column: 36, scope: !2979)
!2987 = !DILocation(line: 1052, column: 18, scope: !2967, inlinedAt: !2988)
!2988 = distinct !DILocation(line: 1060, column: 10, scope: !2979)
!2989 = !DILocation(line: 1052, column: 33, scope: !2967, inlinedAt: !2988)
!2990 = !DILocation(line: 1052, column: 45, scope: !2967, inlinedAt: !2988)
!2991 = !DILocation(line: 1054, column: 10, scope: !2967, inlinedAt: !2988)
!2992 = !DILocation(line: 1060, column: 3, scope: !2979)
!2993 = distinct !DISubprogram(name: "quote_n", scope: !124, file: !124, line: 1064, type: !2994, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2996)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!19, !44, !19}
!2996 = !{!2997, !2998}
!2997 = !DILocalVariable(name: "n", arg: 1, scope: !2993, file: !124, line: 1064, type: !44)
!2998 = !DILocalVariable(name: "arg", arg: 2, scope: !2993, file: !124, line: 1064, type: !19)
!2999 = !DILocation(line: 1064, column: 14, scope: !2993)
!3000 = !DILocation(line: 1064, column: 29, scope: !2993)
!3001 = !DILocation(line: 1052, column: 18, scope: !2967, inlinedAt: !3002)
!3002 = distinct !DILocation(line: 1066, column: 10, scope: !2993)
!3003 = !DILocation(line: 1052, column: 33, scope: !2967, inlinedAt: !3002)
!3004 = !DILocation(line: 1052, column: 45, scope: !2967, inlinedAt: !3002)
!3005 = !DILocation(line: 1054, column: 10, scope: !2967, inlinedAt: !3002)
!3006 = !DILocation(line: 1066, column: 3, scope: !2993)
!3007 = distinct !DISubprogram(name: "quote", scope: !124, file: !124, line: 1070, type: !1270, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !3008)
!3008 = !{!3009}
!3009 = !DILocalVariable(name: "arg", arg: 1, scope: !3007, file: !124, line: 1070, type: !19)
!3010 = !DILocation(line: 1070, column: 20, scope: !3007)
!3011 = !DILocation(line: 1064, column: 14, scope: !2993, inlinedAt: !3012)
!3012 = distinct !DILocation(line: 1072, column: 10, scope: !3007)
!3013 = !DILocation(line: 1064, column: 29, scope: !2993, inlinedAt: !3012)
!3014 = !DILocation(line: 1052, column: 18, scope: !2967, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 1066, column: 10, scope: !2993, inlinedAt: !3012)
!3016 = !DILocation(line: 1052, column: 33, scope: !2967, inlinedAt: !3015)
!3017 = !DILocation(line: 1052, column: 45, scope: !2967, inlinedAt: !3015)
!3018 = !DILocation(line: 1054, column: 10, scope: !2967, inlinedAt: !3015)
!3019 = !DILocation(line: 1072, column: 3, scope: !3007)
!3020 = distinct !DISubprogram(name: "try_tempname_len", scope: !167, file: !167, line: 189, type: !3021, isLocal: false, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3026)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!44, !6, !44, !8, !3023, !118}
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!44, !6, !8}
!3026 = !{!3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3041, !3042, !3046}
!3027 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3020, file: !167, line: 189, type: !6)
!3028 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3020, file: !167, line: 189, type: !44)
!3029 = !DILocalVariable(name: "args", arg: 3, scope: !3020, file: !167, line: 189, type: !8)
!3030 = !DILocalVariable(name: "tryfunc", arg: 4, scope: !3020, file: !167, line: 190, type: !3023)
!3031 = !DILocalVariable(name: "x_suffix_len", arg: 5, scope: !3020, file: !167, line: 190, type: !118)
!3032 = !DILocalVariable(name: "len", scope: !3020, file: !167, line: 192, type: !118)
!3033 = !DILocalVariable(name: "XXXXXX", scope: !3020, file: !167, line: 193, type: !6)
!3034 = !DILocalVariable(name: "count", scope: !3020, file: !167, line: 194, type: !137)
!3035 = !DILocalVariable(name: "fd", scope: !3020, file: !167, line: 195, type: !44)
!3036 = !DILocalVariable(name: "save_errno", scope: !3020, file: !167, line: 196, type: !44)
!3037 = !DILocalVariable(name: "rand_src", scope: !3020, file: !167, line: 197, type: !3038)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DICompositeType(tag: DW_TAG_structure_type, name: "randint_source", file: !3040, line: 33, flags: DIFlagFwdDecl)
!3040 = !DIFile(filename: "./lib/randint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3041 = !DILocalVariable(name: "attempts", scope: !3020, file: !167, line: 213, type: !137)
!3042 = !DILocalVariable(name: "i", scope: !3043, file: !167, line: 235, type: !118)
!3043 = distinct !DILexicalBlock(scope: !3044, file: !167, line: 234, column: 5)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !167, line: 233, column: 3)
!3045 = distinct !DILexicalBlock(scope: !3020, file: !167, line: 233, column: 3)
!3046 = !DILocalVariable(name: "saved_errno", scope: !3047, file: !167, line: 261, type: !44)
!3047 = distinct !DILexicalBlock(scope: !3020, file: !167, line: 260, column: 3)
!3048 = !DILocation(line: 189, column: 25, scope: !3020)
!3049 = !DILocation(line: 189, column: 35, scope: !3020)
!3050 = !DILocation(line: 189, column: 52, scope: !3020)
!3051 = !DILocation(line: 190, column: 25, scope: !3020)
!3052 = !DILocation(line: 190, column: 59, scope: !3020)
!3053 = !DILocation(line: 195, column: 7, scope: !3020)
!3054 = !DILocation(line: 196, column: 20, scope: !3020)
!3055 = !DILocation(line: 196, column: 7, scope: !3020)
!3056 = !DILocation(line: 213, column: 16, scope: !3020)
!3057 = !DILocation(line: 216, column: 9, scope: !3020)
!3058 = !DILocation(line: 192, column: 10, scope: !3020)
!3059 = !DILocation(line: 217, column: 28, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3020, file: !167, line: 217, column: 7)
!3061 = !DILocation(line: 217, column: 26, scope: !3060)
!3062 = !DILocation(line: 217, column: 11, scope: !3060)
!3063 = !DILocation(line: 218, column: 7, scope: !3060)
!3064 = !DILocation(line: 218, column: 53, scope: !3060)
!3065 = !DILocation(line: 218, column: 29, scope: !3060)
!3066 = !DILocalVariable(name: "s", arg: 1, scope: !3067, file: !167, line: 179, type: !19)
!3067 = distinct !DISubprogram(name: "check_x_suffix", scope: !167, file: !167, line: 179, type: !3068, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3070)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!12, !19, !118}
!3070 = !{!3066, !3071}
!3071 = !DILocalVariable(name: "len", arg: 2, scope: !3067, file: !167, line: 179, type: !118)
!3072 = !DILocation(line: 179, column: 29, scope: !3067, inlinedAt: !3073)
!3073 = distinct !DILocation(line: 218, column: 12, scope: !3060)
!3074 = !DILocation(line: 179, column: 39, scope: !3067, inlinedAt: !3073)
!3075 = !DILocation(line: 181, column: 17, scope: !3067, inlinedAt: !3073)
!3076 = !DILocation(line: 181, column: 14, scope: !3067, inlinedAt: !3073)
!3077 = !DILocation(line: 217, column: 7, scope: !3020)
!3078 = !DILocation(line: 193, column: 9, scope: !3020)
!3079 = !DILocation(line: 229, column: 14, scope: !3020)
!3080 = !DILocation(line: 197, column: 26, scope: !3020)
!3081 = !DILocation(line: 230, column: 9, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3020, file: !167, line: 230, column: 7)
!3083 = !DILocation(line: 230, column: 7, scope: !3020)
!3084 = !DILocation(line: 194, column: 16, scope: !3020)
!3085 = !DILocation(line: 233, column: 3, scope: !3045)
!3086 = !DILocation(line: 233, column: 25, scope: !3044)
!3087 = distinct !{!3087, !3085, !3088}
!3088 = !DILocation(line: 251, column: 5, scope: !3045)
!3089 = !DILocation(line: 235, column: 14, scope: !3043)
!3090 = !DILocation(line: 237, column: 7, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3043, file: !167, line: 237, column: 7)
!3092 = !DILocation(line: 238, column: 29, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3091, file: !167, line: 237, column: 7)
!3094 = !DILocation(line: 238, column: 21, scope: !3093)
!3095 = !DILocation(line: 238, column: 9, scope: !3093)
!3096 = !DILocation(line: 238, column: 19, scope: !3093)
!3097 = !DILocation(line: 237, column: 38, scope: !3093)
!3098 = !DILocation(line: 237, column: 21, scope: !3093)
!3099 = distinct !{!3099, !3090, !3100}
!3100 = !DILocation(line: 238, column: 74, scope: !3091)
!3101 = !DILocation(line: 240, column: 12, scope: !3043)
!3102 = !DILocation(line: 241, column: 14, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3043, file: !167, line: 241, column: 11)
!3104 = !DILocation(line: 241, column: 11, scope: !3043)
!3105 = !DILocation(line: 243, column: 11, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3103, file: !167, line: 242, column: 9)
!3107 = !DILocation(line: 244, column: 11, scope: !3106)
!3108 = !DILocation(line: 246, column: 16, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3103, file: !167, line: 246, column: 16)
!3110 = !DILocation(line: 246, column: 22, scope: !3109)
!3111 = !DILocation(line: 233, column: 37, scope: !3044)
!3112 = !DILocation(line: 253, column: 3, scope: !3020)
!3113 = !DILocation(line: 257, column: 3, scope: !3020)
!3114 = !DILocation(line: 261, column: 23, scope: !3047)
!3115 = !DILocation(line: 261, column: 9, scope: !3047)
!3116 = !DILocation(line: 262, column: 5, scope: !3047)
!3117 = !DILocation(line: 265, column: 3, scope: !3020)
!3118 = !DILocation(line: 266, column: 1, scope: !3020)
!3119 = distinct !DISubprogram(name: "gen_tempname_len", scope: !167, file: !167, line: 308, type: !3120, isLocal: false, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3122)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!44, !6, !44, !44, !44, !118}
!3122 = !{!3123, !3124, !3125, !3126, !3127, !3128}
!3123 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3119, file: !167, line: 308, type: !6)
!3124 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3119, file: !167, line: 308, type: !44)
!3125 = !DILocalVariable(name: "flags", arg: 3, scope: !3119, file: !167, line: 308, type: !44)
!3126 = !DILocalVariable(name: "kind", arg: 4, scope: !3119, file: !167, line: 308, type: !44)
!3127 = !DILocalVariable(name: "x_suffix_len", arg: 5, scope: !3119, file: !167, line: 309, type: !118)
!3128 = !DILocalVariable(name: "tryfunc", scope: !3119, file: !167, line: 311, type: !3023)
!3129 = !DILocation(line: 308, column: 25, scope: !3119)
!3130 = !DILocation(line: 308, column: 35, scope: !3119)
!3131 = !DILocation(line: 308, column: 50, scope: !3119)
!3132 = !DILocation(line: 308, column: 61, scope: !3119)
!3133 = !DILocation(line: 309, column: 26, scope: !3119)
!3134 = !DILocation(line: 313, column: 3, scope: !3119)
!3135 = !DILocation(line: 328, column: 7, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3137, file: !167, line: 328, column: 7)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !167, line: 328, column: 7)
!3138 = distinct !DILexicalBlock(scope: !3119, file: !167, line: 314, column: 5)
!3139 = !DILocation(line: 311, column: 9, scope: !3119)
!3140 = !DILocation(line: 331, column: 45, scope: !3119)
!3141 = !DILocation(line: 331, column: 10, scope: !3119)
!3142 = !DILocation(line: 331, column: 3, scope: !3119)
!3143 = distinct !DISubprogram(name: "try_file", scope: !167, file: !167, line: 269, type: !3024, isLocal: true, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3144)
!3144 = !{!3145, !3146, !3147}
!3145 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3143, file: !167, line: 269, type: !6)
!3146 = !DILocalVariable(name: "flags", arg: 2, scope: !3143, file: !167, line: 269, type: !8)
!3147 = !DILocalVariable(name: "openflags", scope: !3143, file: !167, line: 271, type: !46)
!3148 = !DILocation(line: 269, column: 17, scope: !3143)
!3149 = !DILocation(line: 269, column: 29, scope: !3143)
!3150 = !DILocation(line: 271, column: 20, scope: !3143)
!3151 = !DILocation(line: 271, column: 8, scope: !3143)
!3152 = !DILocation(line: 273, column: 19, scope: !3143)
!3153 = !DILocation(line: 273, column: 30, scope: !3143)
!3154 = !DILocation(line: 274, column: 37, scope: !3143)
!3155 = !DILocation(line: 272, column: 10, scope: !3143)
!3156 = !DILocation(line: 272, column: 3, scope: !3143)
!3157 = distinct !DISubprogram(name: "try_dir", scope: !167, file: !167, line: 278, type: !3024, isLocal: true, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3158)
!3158 = !{!3159, !3160}
!3159 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3157, file: !167, line: 278, type: !6)
!3160 = !DILocalVariable(name: "flags", arg: 2, scope: !3157, file: !167, line: 278, type: !8)
!3161 = !DILocation(line: 278, column: 16, scope: !3157)
!3162 = !DILocation(line: 278, column: 28, scope: !3157)
!3163 = !DILocation(line: 280, column: 10, scope: !3157)
!3164 = !DILocation(line: 280, column: 3, scope: !3157)
!3165 = distinct !DISubprogram(name: "try_nocreate", scope: !167, file: !167, line: 284, type: !3024, isLocal: true, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3166)
!3166 = !{!3167, !3168, !3169}
!3167 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3165, file: !167, line: 284, type: !6)
!3168 = !DILocalVariable(name: "flags", arg: 2, scope: !3165, file: !167, line: 284, type: !8)
!3169 = !DILocalVariable(name: "st", scope: !3165, file: !167, line: 286, type: !3170)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !3171, line: 46, size: 1152, elements: !3172)
!3171 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3172 = !{!3173, !3175, !3177, !3179, !3181, !3183, !3185, !3186, !3187, !3188, !3190, !3192, !3200, !3201, !3202}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3170, file: !3171, line: 48, baseType: !3174, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1063, line: 133, baseType: !120)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3170, file: !3171, line: 53, baseType: !3176, size: 64, offset: 64)
!3176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1063, line: 136, baseType: !120)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3170, file: !3171, line: 61, baseType: !3178, size: 64, offset: 128)
!3178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1063, line: 139, baseType: !120)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3170, file: !3171, line: 62, baseType: !3180, size: 32, offset: 192)
!3180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1063, line: 138, baseType: !137)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3170, file: !3171, line: 64, baseType: !3182, size: 32, offset: 224)
!3182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1063, line: 134, baseType: !137)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3170, file: !3171, line: 65, baseType: !3184, size: 32, offset: 256)
!3184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1063, line: 135, baseType: !137)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !3170, file: !3171, line: 67, baseType: !44, size: 32, offset: 288)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3170, file: !3171, line: 69, baseType: !3174, size: 64, offset: 320)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3170, file: !3171, line: 74, baseType: !1062, size: 64, offset: 384)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3170, file: !3171, line: 78, baseType: !3189, size: 64, offset: 448)
!3189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1063, line: 162, baseType: !1064)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3170, file: !3171, line: 80, baseType: !3191, size: 64, offset: 512)
!3191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1063, line: 167, baseType: !1064)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3170, file: !3171, line: 91, baseType: !3193, size: 128, offset: 576)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3194, line: 8, size: 128, elements: !3195)
!3194 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3195 = !{!3196, !3198}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3193, file: !3194, line: 10, baseType: !3197, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1063, line: 148, baseType: !1064)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3193, file: !3194, line: 11, baseType: !3199, size: 64, offset: 64)
!3199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1063, line: 184, baseType: !1064)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3170, file: !3171, line: 92, baseType: !3193, size: 128, offset: 704)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3170, file: !3171, line: 93, baseType: !3193, size: 128, offset: 832)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3170, file: !3171, line: 106, baseType: !3203, size: 192, offset: 960)
!3203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3199, size: 192, elements: !3204)
!3204 = !{!3205}
!3205 = !DISubrange(count: 3)
!3206 = !DILocation(line: 284, column: 21, scope: !3165)
!3207 = !DILocation(line: 284, column: 33, scope: !3165)
!3208 = !DILocation(line: 286, column: 3, scope: !3165)
!3209 = !DILocation(line: 286, column: 17, scope: !3165)
!3210 = !DILocalVariable(name: "__path", arg: 1, scope: !3211, file: !3212, line: 456, type: !19)
!3211 = distinct !DISubprogram(name: "lstat", scope: !3212, file: !3212, line: 456, type: !3213, isLocal: false, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3216)
!3212 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!44, !19, !3215}
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3216 = !{!3210, !3217}
!3217 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3211, file: !3212, line: 456, type: !3215)
!3218 = !DILocation(line: 456, column: 1, scope: !3211, inlinedAt: !3219)
!3219 = distinct !DILocation(line: 288, column: 7, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3165, file: !167, line: 288, column: 7)
!3221 = !DILocation(line: 458, column: 10, scope: !3211, inlinedAt: !3219)
!3222 = !DILocation(line: 288, column: 41, scope: !3220)
!3223 = !DILocation(line: 289, column: 5, scope: !3220)
!3224 = !DILocation(line: 288, column: 7, scope: !3165)
!3225 = !DILocation(line: 290, column: 10, scope: !3165)
!3226 = !DILocation(line: 290, column: 16, scope: !3165)
!3227 = !DILocation(line: 291, column: 1, scope: !3165)
!3228 = !DILocation(line: 290, column: 3, scope: !3165)
!3229 = distinct !DISubprogram(name: "gen_tempname", scope: !167, file: !167, line: 335, type: !3230, isLocal: false, isDefinition: true, scopeLine: 336, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3232)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!44, !6, !44, !44, !44}
!3232 = !{!3233, !3234, !3235, !3236}
!3233 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3229, file: !167, line: 335, type: !6)
!3234 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3229, file: !167, line: 335, type: !44)
!3235 = !DILocalVariable(name: "flags", arg: 3, scope: !3229, file: !167, line: 335, type: !44)
!3236 = !DILocalVariable(name: "kind", arg: 4, scope: !3229, file: !167, line: 335, type: !44)
!3237 = !DILocation(line: 335, column: 23, scope: !3229)
!3238 = !DILocation(line: 335, column: 33, scope: !3229)
!3239 = !DILocation(line: 335, column: 48, scope: !3229)
!3240 = !DILocation(line: 335, column: 59, scope: !3229)
!3241 = !DILocation(line: 308, column: 25, scope: !3119, inlinedAt: !3242)
!3242 = distinct !DILocation(line: 337, column: 10, scope: !3229)
!3243 = !DILocation(line: 308, column: 35, scope: !3119, inlinedAt: !3242)
!3244 = !DILocation(line: 308, column: 50, scope: !3119, inlinedAt: !3242)
!3245 = !DILocation(line: 308, column: 61, scope: !3119, inlinedAt: !3242)
!3246 = !DILocation(line: 309, column: 26, scope: !3119, inlinedAt: !3242)
!3247 = !DILocation(line: 313, column: 3, scope: !3119, inlinedAt: !3242)
!3248 = !DILocation(line: 328, column: 7, scope: !3136, inlinedAt: !3242)
!3249 = !DILocation(line: 311, column: 9, scope: !3119, inlinedAt: !3242)
!3250 = !DILocation(line: 331, column: 10, scope: !3119, inlinedAt: !3242)
!3251 = !DILocation(line: 331, column: 3, scope: !3119, inlinedAt: !3242)
!3252 = !DILocation(line: 337, column: 3, scope: !3229)
!3253 = distinct !DISubprogram(name: "try_tempname", scope: !167, file: !167, line: 341, type: !3254, isLocal: false, isDefinition: true, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3256)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!44, !6, !44, !8, !3023}
!3256 = !{!3257, !3258, !3259, !3260}
!3257 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3253, file: !167, line: 341, type: !6)
!3258 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3253, file: !167, line: 341, type: !44)
!3259 = !DILocalVariable(name: "args", arg: 3, scope: !3253, file: !167, line: 341, type: !8)
!3260 = !DILocalVariable(name: "tryfunc", arg: 4, scope: !3253, file: !167, line: 342, type: !3023)
!3261 = !DILocation(line: 341, column: 23, scope: !3253)
!3262 = !DILocation(line: 341, column: 33, scope: !3253)
!3263 = !DILocation(line: 341, column: 50, scope: !3253)
!3264 = !DILocation(line: 342, column: 23, scope: !3253)
!3265 = !DILocation(line: 344, column: 10, scope: !3253)
!3266 = !DILocation(line: 344, column: 3, scope: !3253)
!3267 = distinct !DISubprogram(name: "version_etc_arn", scope: !580, file: !580, line: 62, type: !3268, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !3311)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{null, !3270, !19, !19, !19, !3310, !118}
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1034, line: 7, baseType: !3272)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1036, line: 241, size: 1728, elements: !3273)
!3273 = !{!3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3272, file: !1036, line: 242, baseType: !44, size: 32)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3272, file: !1036, line: 247, baseType: !6, size: 64, offset: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3272, file: !1036, line: 248, baseType: !6, size: 64, offset: 128)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3272, file: !1036, line: 249, baseType: !6, size: 64, offset: 192)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3272, file: !1036, line: 250, baseType: !6, size: 64, offset: 256)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3272, file: !1036, line: 251, baseType: !6, size: 64, offset: 320)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3272, file: !1036, line: 252, baseType: !6, size: 64, offset: 384)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3272, file: !1036, line: 253, baseType: !6, size: 64, offset: 448)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3272, file: !1036, line: 254, baseType: !6, size: 64, offset: 512)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3272, file: !1036, line: 256, baseType: !6, size: 64, offset: 576)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3272, file: !1036, line: 257, baseType: !6, size: 64, offset: 640)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3272, file: !1036, line: 258, baseType: !6, size: 64, offset: 704)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3272, file: !1036, line: 260, baseType: !3287, size: 64, offset: 768)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1036, line: 156, size: 192, elements: !3289)
!3289 = !{!3290, !3291, !3293}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3288, file: !1036, line: 157, baseType: !3287, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3288, file: !1036, line: 158, baseType: !3292, size: 64, offset: 64)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3288, file: !1036, line: 162, baseType: !44, size: 32, offset: 128)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3272, file: !1036, line: 262, baseType: !3292, size: 64, offset: 832)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3272, file: !1036, line: 264, baseType: !44, size: 32, offset: 896)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3272, file: !1036, line: 268, baseType: !44, size: 32, offset: 928)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3272, file: !1036, line: 270, baseType: !1062, size: 64, offset: 960)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3272, file: !1036, line: 274, baseType: !117, size: 16, offset: 1024)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3272, file: !1036, line: 275, baseType: !1067, size: 8, offset: 1040)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3272, file: !1036, line: 276, baseType: !1069, size: 8, offset: 1048)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3272, file: !1036, line: 280, baseType: !1071, size: 64, offset: 1088)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3272, file: !1036, line: 289, baseType: !1074, size: 64, offset: 1152)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3272, file: !1036, line: 297, baseType: !8, size: 64, offset: 1216)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3272, file: !1036, line: 298, baseType: !8, size: 64, offset: 1280)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3272, file: !1036, line: 299, baseType: !8, size: 64, offset: 1344)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3272, file: !1036, line: 300, baseType: !8, size: 64, offset: 1408)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3272, file: !1036, line: 302, baseType: !118, size: 64, offset: 1472)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3272, file: !1036, line: 303, baseType: !44, size: 32, offset: 1536)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3272, file: !1036, line: 305, baseType: !1082, size: 160, offset: 1568)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!3311 = !{!3312, !3313, !3314, !3315, !3316, !3317}
!3312 = !DILocalVariable(name: "stream", arg: 1, scope: !3267, file: !580, line: 62, type: !3270)
!3313 = !DILocalVariable(name: "command_name", arg: 2, scope: !3267, file: !580, line: 63, type: !19)
!3314 = !DILocalVariable(name: "package", arg: 3, scope: !3267, file: !580, line: 63, type: !19)
!3315 = !DILocalVariable(name: "version", arg: 4, scope: !3267, file: !580, line: 64, type: !19)
!3316 = !DILocalVariable(name: "authors", arg: 5, scope: !3267, file: !580, line: 65, type: !3310)
!3317 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3267, file: !580, line: 65, type: !118)
!3318 = !DILocation(line: 62, column: 24, scope: !3267)
!3319 = !DILocation(line: 63, column: 30, scope: !3267)
!3320 = !DILocation(line: 63, column: 56, scope: !3267)
!3321 = !DILocation(line: 64, column: 30, scope: !3267)
!3322 = !DILocation(line: 65, column: 39, scope: !3267)
!3323 = !DILocation(line: 65, column: 55, scope: !3267)
!3324 = !DILocation(line: 67, column: 7, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3267, file: !580, line: 67, column: 7)
!3326 = !DILocation(line: 67, column: 7, scope: !3267)
!3327 = !DILocation(line: 68, column: 5, scope: !3325)
!3328 = !DILocation(line: 70, column: 5, scope: !3325)
!3329 = !DILocation(line: 84, column: 3, scope: !3267)
!3330 = !DILocation(line: 86, column: 3, scope: !3267)
!3331 = !DILocation(line: 95, column: 3, scope: !3267)
!3332 = !DILocation(line: 99, column: 7, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3267, file: !580, line: 96, column: 5)
!3334 = !DILocation(line: 102, column: 7, scope: !3333)
!3335 = !DILocation(line: 103, column: 7, scope: !3333)
!3336 = !DILocation(line: 106, column: 7, scope: !3333)
!3337 = !DILocation(line: 107, column: 7, scope: !3333)
!3338 = !DILocation(line: 110, column: 7, scope: !3333)
!3339 = !DILocation(line: 112, column: 7, scope: !3333)
!3340 = !DILocation(line: 117, column: 7, scope: !3333)
!3341 = !DILocation(line: 119, column: 7, scope: !3333)
!3342 = !DILocation(line: 124, column: 7, scope: !3333)
!3343 = !DILocation(line: 126, column: 7, scope: !3333)
!3344 = !DILocation(line: 131, column: 7, scope: !3333)
!3345 = !DILocation(line: 134, column: 7, scope: !3333)
!3346 = !DILocation(line: 139, column: 7, scope: !3333)
!3347 = !DILocation(line: 142, column: 7, scope: !3333)
!3348 = !DILocation(line: 147, column: 7, scope: !3333)
!3349 = !DILocation(line: 151, column: 7, scope: !3333)
!3350 = !DILocation(line: 156, column: 7, scope: !3333)
!3351 = !DILocation(line: 160, column: 7, scope: !3333)
!3352 = !DILocation(line: 167, column: 7, scope: !3333)
!3353 = !DILocation(line: 171, column: 7, scope: !3333)
!3354 = !DILocation(line: 173, column: 1, scope: !3267)
!3355 = distinct !DISubprogram(name: "version_etc_ar", scope: !580, file: !580, line: 180, type: !3356, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !3358)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{null, !3270, !19, !19, !19, !3310}
!3358 = !{!3359, !3360, !3361, !3362, !3363, !3364}
!3359 = !DILocalVariable(name: "stream", arg: 1, scope: !3355, file: !580, line: 180, type: !3270)
!3360 = !DILocalVariable(name: "command_name", arg: 2, scope: !3355, file: !580, line: 181, type: !19)
!3361 = !DILocalVariable(name: "package", arg: 3, scope: !3355, file: !580, line: 181, type: !19)
!3362 = !DILocalVariable(name: "version", arg: 4, scope: !3355, file: !580, line: 182, type: !19)
!3363 = !DILocalVariable(name: "authors", arg: 5, scope: !3355, file: !580, line: 182, type: !3310)
!3364 = !DILocalVariable(name: "n_authors", scope: !3355, file: !580, line: 184, type: !118)
!3365 = !DILocation(line: 180, column: 23, scope: !3355)
!3366 = !DILocation(line: 181, column: 29, scope: !3355)
!3367 = !DILocation(line: 181, column: 55, scope: !3355)
!3368 = !DILocation(line: 182, column: 29, scope: !3355)
!3369 = !DILocation(line: 182, column: 59, scope: !3355)
!3370 = !DILocation(line: 184, column: 10, scope: !3355)
!3371 = !DILocation(line: 186, column: 8, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3355, file: !580, line: 186, column: 3)
!3373 = !DILocation(line: 186, column: 23, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3372, file: !580, line: 186, column: 3)
!3375 = !DILocation(line: 186, column: 3, scope: !3372)
!3376 = !DILocation(line: 186, column: 52, scope: !3374)
!3377 = distinct !{!3377, !3375, !3378}
!3378 = !DILocation(line: 187, column: 5, scope: !3372)
!3379 = !DILocation(line: 188, column: 3, scope: !3355)
!3380 = !DILocation(line: 189, column: 1, scope: !3355)
!3381 = distinct !DISubprogram(name: "version_etc_va", scope: !580, file: !580, line: 196, type: !3382, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !3391)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{null, !3270, !19, !19, !19, !3384}
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !577, line: 189, size: 192, elements: !3386)
!3386 = !{!3387, !3388, !3389, !3390}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3385, file: !577, line: 189, baseType: !137, size: 32)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3385, file: !577, line: 189, baseType: !137, size: 32, offset: 32)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3385, file: !577, line: 189, baseType: !8, size: 64, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3385, file: !577, line: 189, baseType: !8, size: 64, offset: 128)
!3391 = !{!3392, !3393, !3394, !3395, !3396, !3397, !3398}
!3392 = !DILocalVariable(name: "stream", arg: 1, scope: !3381, file: !580, line: 196, type: !3270)
!3393 = !DILocalVariable(name: "command_name", arg: 2, scope: !3381, file: !580, line: 197, type: !19)
!3394 = !DILocalVariable(name: "package", arg: 3, scope: !3381, file: !580, line: 197, type: !19)
!3395 = !DILocalVariable(name: "version", arg: 4, scope: !3381, file: !580, line: 198, type: !19)
!3396 = !DILocalVariable(name: "authors", arg: 5, scope: !3381, file: !580, line: 198, type: !3384)
!3397 = !DILocalVariable(name: "n_authors", scope: !3381, file: !580, line: 200, type: !118)
!3398 = !DILocalVariable(name: "authtab", scope: !3381, file: !580, line: 201, type: !3399)
!3399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 640, elements: !127)
!3400 = !DILocation(line: 196, column: 23, scope: !3381)
!3401 = !DILocation(line: 197, column: 29, scope: !3381)
!3402 = !DILocation(line: 197, column: 55, scope: !3381)
!3403 = !DILocation(line: 198, column: 29, scope: !3381)
!3404 = !DILocation(line: 198, column: 46, scope: !3381)
!3405 = !DILocation(line: 201, column: 3, scope: !3381)
!3406 = !DILocation(line: 201, column: 15, scope: !3381)
!3407 = !DILocation(line: 200, column: 10, scope: !3381)
!3408 = !DILocation(line: 205, column: 35, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3410, file: !580, line: 203, column: 3)
!3410 = distinct !DILexicalBlock(scope: !3381, file: !580, line: 203, column: 3)
!3411 = !DILocation(line: 205, column: 14, scope: !3409)
!3412 = !DILocation(line: 205, column: 33, scope: !3409)
!3413 = !DILocation(line: 205, column: 67, scope: !3409)
!3414 = !DILocation(line: 203, column: 3, scope: !3410)
!3415 = !DILocation(line: 208, column: 3, scope: !3381)
!3416 = !DILocation(line: 210, column: 1, scope: !3381)
!3417 = distinct !DISubprogram(name: "version_etc", scope: !580, file: !580, line: 227, type: !3418, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !3420)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{null, !3270, !19, !19, !19, null}
!3420 = !{!3421, !3422, !3423, !3424, !3425}
!3421 = !DILocalVariable(name: "stream", arg: 1, scope: !3417, file: !580, line: 227, type: !3270)
!3422 = !DILocalVariable(name: "command_name", arg: 2, scope: !3417, file: !580, line: 228, type: !19)
!3423 = !DILocalVariable(name: "package", arg: 3, scope: !3417, file: !580, line: 228, type: !19)
!3424 = !DILocalVariable(name: "version", arg: 4, scope: !3417, file: !580, line: 229, type: !19)
!3425 = !DILocalVariable(name: "authors", scope: !3417, file: !580, line: 231, type: !3426)
!3426 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3427, line: 46, baseType: !3428)
!3427 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !543, line: 48, baseType: !3429)
!3429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !577, line: 231, baseType: !3430)
!3430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3385, size: 192, elements: !552)
!3431 = !DILocation(line: 227, column: 20, scope: !3417)
!3432 = !DILocation(line: 228, column: 26, scope: !3417)
!3433 = !DILocation(line: 228, column: 52, scope: !3417)
!3434 = !DILocation(line: 229, column: 26, scope: !3417)
!3435 = !DILocation(line: 231, column: 3, scope: !3417)
!3436 = !DILocation(line: 231, column: 11, scope: !3417)
!3437 = !DILocation(line: 233, column: 3, scope: !3417)
!3438 = !DILocation(line: 234, column: 3, scope: !3417)
!3439 = !DILocation(line: 235, column: 3, scope: !3417)
!3440 = !DILocation(line: 236, column: 1, scope: !3417)
!3441 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !580, file: !580, line: 239, type: !1016, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !4)
!3442 = !DILocation(line: 245, column: 3, scope: !3441)
!3443 = !DILocation(line: 251, column: 3, scope: !3441)
!3444 = !DILocation(line: 256, column: 3, scope: !3441)
!3445 = !DILocation(line: 258, column: 1, scope: !3441)
!3446 = distinct !DISubprogram(name: "xnmalloc", scope: !587, file: !587, line: 105, type: !3447, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3449)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{!8, !118, !118}
!3449 = !{!3450, !3451}
!3450 = !DILocalVariable(name: "n", arg: 1, scope: !3446, file: !587, line: 105, type: !118)
!3451 = !DILocalVariable(name: "s", arg: 2, scope: !3446, file: !587, line: 105, type: !118)
!3452 = !DILocation(line: 105, column: 18, scope: !3446)
!3453 = !DILocation(line: 105, column: 28, scope: !3446)
!3454 = !DILocation(line: 107, column: 7, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3446, file: !587, line: 107, column: 7)
!3456 = !DILocation(line: 107, column: 7, scope: !3446)
!3457 = !DILocation(line: 108, column: 5, scope: !3455)
!3458 = !DILocation(line: 109, column: 21, scope: !3446)
!3459 = !DILocalVariable(name: "n", arg: 1, scope: !3460, file: !3461, line: 39, type: !118)
!3460 = distinct !DISubprogram(name: "xmalloc", scope: !3461, file: !3461, line: 39, type: !3462, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3464)
!3461 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!8, !118}
!3464 = !{!3459, !3465}
!3465 = !DILocalVariable(name: "p", scope: !3460, file: !3461, line: 41, type: !8)
!3466 = !DILocation(line: 39, column: 17, scope: !3460, inlinedAt: !3467)
!3467 = distinct !DILocation(line: 109, column: 10, scope: !3446)
!3468 = !DILocation(line: 41, column: 13, scope: !3460, inlinedAt: !3467)
!3469 = !DILocation(line: 41, column: 9, scope: !3460, inlinedAt: !3467)
!3470 = !DILocation(line: 42, column: 8, scope: !3471, inlinedAt: !3467)
!3471 = distinct !DILexicalBlock(scope: !3460, file: !3461, line: 42, column: 7)
!3472 = !DILocation(line: 42, column: 15, scope: !3471, inlinedAt: !3467)
!3473 = !DILocation(line: 42, column: 10, scope: !3471, inlinedAt: !3467)
!3474 = !DILocation(line: 43, column: 5, scope: !3471, inlinedAt: !3467)
!3475 = !DILocation(line: 109, column: 3, scope: !3446)
!3476 = !DILocation(line: 39, column: 17, scope: !3460)
!3477 = !DILocation(line: 41, column: 13, scope: !3460)
!3478 = !DILocation(line: 41, column: 9, scope: !3460)
!3479 = !DILocation(line: 42, column: 8, scope: !3471)
!3480 = !DILocation(line: 42, column: 15, scope: !3471)
!3481 = !DILocation(line: 42, column: 10, scope: !3471)
!3482 = !DILocation(line: 43, column: 5, scope: !3471)
!3483 = !DILocation(line: 44, column: 3, scope: !3460)
!3484 = distinct !DISubprogram(name: "xnrealloc", scope: !587, file: !587, line: 118, type: !3485, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3487)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!8, !8, !118, !118}
!3487 = !{!3488, !3489, !3490}
!3488 = !DILocalVariable(name: "p", arg: 1, scope: !3484, file: !587, line: 118, type: !8)
!3489 = !DILocalVariable(name: "n", arg: 2, scope: !3484, file: !587, line: 118, type: !118)
!3490 = !DILocalVariable(name: "s", arg: 3, scope: !3484, file: !587, line: 118, type: !118)
!3491 = !DILocation(line: 118, column: 18, scope: !3484)
!3492 = !DILocation(line: 118, column: 28, scope: !3484)
!3493 = !DILocation(line: 118, column: 38, scope: !3484)
!3494 = !DILocation(line: 120, column: 7, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3484, file: !587, line: 120, column: 7)
!3496 = !DILocation(line: 120, column: 7, scope: !3484)
!3497 = !DILocation(line: 121, column: 5, scope: !3495)
!3498 = !DILocation(line: 122, column: 25, scope: !3484)
!3499 = !DILocalVariable(name: "p", arg: 1, scope: !3500, file: !3461, line: 51, type: !8)
!3500 = distinct !DISubprogram(name: "xrealloc", scope: !3461, file: !3461, line: 51, type: !3501, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3503)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{!8, !8, !118}
!3503 = !{!3499, !3504}
!3504 = !DILocalVariable(name: "n", arg: 2, scope: !3500, file: !3461, line: 51, type: !118)
!3505 = !DILocation(line: 51, column: 17, scope: !3500, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 122, column: 10, scope: !3484)
!3507 = !DILocation(line: 51, column: 27, scope: !3500, inlinedAt: !3506)
!3508 = !DILocation(line: 53, column: 8, scope: !3509, inlinedAt: !3506)
!3509 = distinct !DILexicalBlock(scope: !3500, file: !3461, line: 53, column: 7)
!3510 = !DILocation(line: 53, column: 13, scope: !3509, inlinedAt: !3506)
!3511 = !DILocation(line: 53, column: 10, scope: !3509, inlinedAt: !3506)
!3512 = !DILocation(line: 57, column: 7, scope: !3513, inlinedAt: !3506)
!3513 = distinct !DILexicalBlock(scope: !3509, file: !3461, line: 54, column: 5)
!3514 = !DILocation(line: 58, column: 7, scope: !3513, inlinedAt: !3506)
!3515 = !DILocation(line: 61, column: 7, scope: !3500, inlinedAt: !3506)
!3516 = !DILocation(line: 62, column: 8, scope: !3517, inlinedAt: !3506)
!3517 = distinct !DILexicalBlock(scope: !3500, file: !3461, line: 62, column: 7)
!3518 = !DILocation(line: 62, column: 13, scope: !3517, inlinedAt: !3506)
!3519 = !DILocation(line: 62, column: 10, scope: !3517, inlinedAt: !3506)
!3520 = !DILocation(line: 63, column: 5, scope: !3517, inlinedAt: !3506)
!3521 = !DILocation(line: 122, column: 3, scope: !3484)
!3522 = !DILocation(line: 51, column: 17, scope: !3500)
!3523 = !DILocation(line: 51, column: 27, scope: !3500)
!3524 = !DILocation(line: 53, column: 8, scope: !3509)
!3525 = !DILocation(line: 53, column: 13, scope: !3509)
!3526 = !DILocation(line: 53, column: 10, scope: !3509)
!3527 = !DILocation(line: 57, column: 7, scope: !3513)
!3528 = !DILocation(line: 58, column: 7, scope: !3513)
!3529 = !DILocation(line: 61, column: 7, scope: !3500)
!3530 = !DILocation(line: 62, column: 8, scope: !3517)
!3531 = !DILocation(line: 62, column: 13, scope: !3517)
!3532 = !DILocation(line: 62, column: 10, scope: !3517)
!3533 = !DILocation(line: 63, column: 5, scope: !3517)
!3534 = !DILocation(line: 65, column: 1, scope: !3500)
!3535 = !DILocation(line: 180, column: 19, scope: !588)
!3536 = !DILocation(line: 180, column: 30, scope: !588)
!3537 = !DILocation(line: 180, column: 41, scope: !588)
!3538 = !DILocation(line: 182, column: 14, scope: !588)
!3539 = !DILocation(line: 182, column: 10, scope: !588)
!3540 = !DILocation(line: 184, column: 9, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !588, file: !587, line: 184, column: 7)
!3542 = !DILocation(line: 184, column: 7, scope: !588)
!3543 = !DILocation(line: 186, column: 13, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3545, file: !587, line: 186, column: 11)
!3545 = distinct !DILexicalBlock(scope: !3541, file: !587, line: 185, column: 5)
!3546 = !DILocation(line: 186, column: 11, scope: !3545)
!3547 = !DILocation(line: 194, column: 30, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3544, file: !587, line: 187, column: 9)
!3549 = !DILocation(line: 195, column: 16, scope: !3548)
!3550 = !DILocation(line: 195, column: 13, scope: !3548)
!3551 = !DILocation(line: 196, column: 9, scope: !3548)
!3552 = !DILocation(line: 204, column: 69, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3554, file: !587, line: 204, column: 11)
!3554 = distinct !DILexicalBlock(scope: !3541, file: !587, line: 199, column: 5)
!3555 = !DILocation(line: 205, column: 11, scope: !3553)
!3556 = !DILocation(line: 204, column: 11, scope: !3554)
!3557 = !DILocation(line: 206, column: 9, scope: !3553)
!3558 = !DILocation(line: 210, column: 7, scope: !588)
!3559 = !DILocation(line: 211, column: 25, scope: !588)
!3560 = !DILocation(line: 51, column: 17, scope: !3500, inlinedAt: !3561)
!3561 = distinct !DILocation(line: 211, column: 10, scope: !588)
!3562 = !DILocation(line: 51, column: 27, scope: !3500, inlinedAt: !3561)
!3563 = !DILocation(line: 53, column: 10, scope: !3509, inlinedAt: !3561)
!3564 = !DILocation(line: 207, column: 14, scope: !3554)
!3565 = !DILocation(line: 207, column: 18, scope: !3554)
!3566 = !DILocation(line: 207, column: 9, scope: !3554)
!3567 = !DILocation(line: 53, column: 8, scope: !3509, inlinedAt: !3561)
!3568 = !DILocation(line: 57, column: 7, scope: !3513, inlinedAt: !3561)
!3569 = !DILocation(line: 58, column: 7, scope: !3513, inlinedAt: !3561)
!3570 = !DILocation(line: 61, column: 7, scope: !3500, inlinedAt: !3561)
!3571 = !DILocation(line: 62, column: 8, scope: !3517, inlinedAt: !3561)
!3572 = !DILocation(line: 62, column: 13, scope: !3517, inlinedAt: !3561)
!3573 = !DILocation(line: 62, column: 10, scope: !3517, inlinedAt: !3561)
!3574 = !DILocation(line: 63, column: 5, scope: !3517, inlinedAt: !3561)
!3575 = !DILocation(line: 211, column: 3, scope: !588)
!3576 = distinct !DISubprogram(name: "xcharalloc", scope: !587, file: !587, line: 220, type: !844, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3577)
!3577 = !{!3578}
!3578 = !DILocalVariable(name: "n", arg: 1, scope: !3576, file: !587, line: 220, type: !118)
!3579 = !DILocation(line: 220, column: 20, scope: !3576)
!3580 = !DILocation(line: 39, column: 17, scope: !3460, inlinedAt: !3581)
!3581 = distinct !DILocation(line: 222, column: 10, scope: !3576)
!3582 = !DILocation(line: 41, column: 13, scope: !3460, inlinedAt: !3581)
!3583 = !DILocation(line: 41, column: 9, scope: !3460, inlinedAt: !3581)
!3584 = !DILocation(line: 42, column: 8, scope: !3471, inlinedAt: !3581)
!3585 = !DILocation(line: 42, column: 15, scope: !3471, inlinedAt: !3581)
!3586 = !DILocation(line: 42, column: 10, scope: !3471, inlinedAt: !3581)
!3587 = !DILocation(line: 43, column: 5, scope: !3471, inlinedAt: !3581)
!3588 = !DILocation(line: 222, column: 3, scope: !3576)
!3589 = distinct !DISubprogram(name: "x2realloc", scope: !3461, file: !3461, line: 74, type: !3590, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3592)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!8, !8, !591}
!3592 = !{!3593, !3594}
!3593 = !DILocalVariable(name: "p", arg: 1, scope: !3589, file: !3461, line: 74, type: !8)
!3594 = !DILocalVariable(name: "pn", arg: 2, scope: !3589, file: !3461, line: 74, type: !591)
!3595 = !DILocation(line: 74, column: 18, scope: !3589)
!3596 = !DILocation(line: 74, column: 29, scope: !3589)
!3597 = !DILocation(line: 180, column: 19, scope: !588, inlinedAt: !3598)
!3598 = distinct !DILocation(line: 76, column: 10, scope: !3589)
!3599 = !DILocation(line: 180, column: 30, scope: !588, inlinedAt: !3598)
!3600 = !DILocation(line: 180, column: 41, scope: !588, inlinedAt: !3598)
!3601 = !DILocation(line: 182, column: 14, scope: !588, inlinedAt: !3598)
!3602 = !DILocation(line: 182, column: 10, scope: !588, inlinedAt: !3598)
!3603 = !DILocation(line: 184, column: 9, scope: !3541, inlinedAt: !3598)
!3604 = !DILocation(line: 184, column: 7, scope: !588, inlinedAt: !3598)
!3605 = !DILocation(line: 186, column: 13, scope: !3544, inlinedAt: !3598)
!3606 = !DILocation(line: 186, column: 11, scope: !3545, inlinedAt: !3598)
!3607 = !DILocation(line: 210, column: 7, scope: !588, inlinedAt: !3598)
!3608 = !DILocation(line: 51, column: 17, scope: !3500, inlinedAt: !3609)
!3609 = distinct !DILocation(line: 211, column: 10, scope: !588, inlinedAt: !3598)
!3610 = !DILocation(line: 51, column: 27, scope: !3500, inlinedAt: !3609)
!3611 = !DILocation(line: 53, column: 10, scope: !3509, inlinedAt: !3609)
!3612 = !DILocation(line: 205, column: 11, scope: !3553, inlinedAt: !3598)
!3613 = !DILocation(line: 204, column: 11, scope: !3554, inlinedAt: !3598)
!3614 = !DILocation(line: 206, column: 9, scope: !3553, inlinedAt: !3598)
!3615 = !DILocation(line: 207, column: 14, scope: !3554, inlinedAt: !3598)
!3616 = !DILocation(line: 207, column: 18, scope: !3554, inlinedAt: !3598)
!3617 = !DILocation(line: 207, column: 9, scope: !3554, inlinedAt: !3598)
!3618 = !DILocation(line: 53, column: 8, scope: !3509, inlinedAt: !3609)
!3619 = !DILocation(line: 57, column: 7, scope: !3513, inlinedAt: !3609)
!3620 = !DILocation(line: 58, column: 7, scope: !3513, inlinedAt: !3609)
!3621 = !DILocation(line: 61, column: 7, scope: !3500, inlinedAt: !3609)
!3622 = !DILocation(line: 62, column: 8, scope: !3517, inlinedAt: !3609)
!3623 = !DILocation(line: 62, column: 13, scope: !3517, inlinedAt: !3609)
!3624 = !DILocation(line: 62, column: 10, scope: !3517, inlinedAt: !3609)
!3625 = !DILocation(line: 63, column: 5, scope: !3517, inlinedAt: !3609)
!3626 = !DILocation(line: 76, column: 3, scope: !3589)
!3627 = distinct !DISubprogram(name: "xzalloc", scope: !3461, file: !3461, line: 84, type: !3462, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3628)
!3628 = !{!3629}
!3629 = !DILocalVariable(name: "s", arg: 1, scope: !3627, file: !3461, line: 84, type: !118)
!3630 = !DILocation(line: 84, column: 17, scope: !3627)
!3631 = !DILocation(line: 39, column: 17, scope: !3460, inlinedAt: !3632)
!3632 = distinct !DILocation(line: 86, column: 18, scope: !3627)
!3633 = !DILocation(line: 41, column: 13, scope: !3460, inlinedAt: !3632)
!3634 = !DILocation(line: 41, column: 9, scope: !3460, inlinedAt: !3632)
!3635 = !DILocation(line: 42, column: 8, scope: !3471, inlinedAt: !3632)
!3636 = !DILocation(line: 42, column: 15, scope: !3471, inlinedAt: !3632)
!3637 = !DILocation(line: 42, column: 10, scope: !3471, inlinedAt: !3632)
!3638 = !DILocation(line: 43, column: 5, scope: !3471, inlinedAt: !3632)
!3639 = !DILocation(line: 86, column: 10, scope: !3627)
!3640 = !DILocation(line: 86, column: 3, scope: !3627)
!3641 = distinct !DISubprogram(name: "xcalloc", scope: !3461, file: !3461, line: 93, type: !3447, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3642)
!3642 = !{!3643, !3644, !3645}
!3643 = !DILocalVariable(name: "n", arg: 1, scope: !3641, file: !3461, line: 93, type: !118)
!3644 = !DILocalVariable(name: "s", arg: 2, scope: !3641, file: !3461, line: 93, type: !118)
!3645 = !DILocalVariable(name: "p", scope: !3641, file: !3461, line: 95, type: !8)
!3646 = !DILocation(line: 93, column: 17, scope: !3641)
!3647 = !DILocation(line: 93, column: 27, scope: !3641)
!3648 = !DILocation(line: 100, column: 7, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3641, file: !3461, line: 100, column: 7)
!3650 = !DILocation(line: 101, column: 7, scope: !3649)
!3651 = !DILocation(line: 101, column: 18, scope: !3649)
!3652 = !DILocation(line: 95, column: 9, scope: !3641)
!3653 = !DILocation(line: 101, column: 16, scope: !3649)
!3654 = !DILocation(line: 100, column: 7, scope: !3641)
!3655 = !DILocation(line: 102, column: 5, scope: !3649)
!3656 = !DILocation(line: 103, column: 3, scope: !3641)
!3657 = distinct !DISubprogram(name: "xmemdup", scope: !3461, file: !3461, line: 111, type: !3658, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3660)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!8, !1302, !118}
!3660 = !{!3661, !3662}
!3661 = !DILocalVariable(name: "p", arg: 1, scope: !3657, file: !3461, line: 111, type: !1302)
!3662 = !DILocalVariable(name: "s", arg: 2, scope: !3657, file: !3461, line: 111, type: !118)
!3663 = !DILocation(line: 111, column: 22, scope: !3657)
!3664 = !DILocation(line: 111, column: 32, scope: !3657)
!3665 = !DILocation(line: 39, column: 17, scope: !3460, inlinedAt: !3666)
!3666 = distinct !DILocation(line: 113, column: 18, scope: !3657)
!3667 = !DILocation(line: 41, column: 13, scope: !3460, inlinedAt: !3666)
!3668 = !DILocation(line: 41, column: 9, scope: !3460, inlinedAt: !3666)
!3669 = !DILocation(line: 42, column: 8, scope: !3471, inlinedAt: !3666)
!3670 = !DILocation(line: 42, column: 15, scope: !3471, inlinedAt: !3666)
!3671 = !DILocation(line: 42, column: 10, scope: !3471, inlinedAt: !3666)
!3672 = !DILocation(line: 43, column: 5, scope: !3471, inlinedAt: !3666)
!3673 = !DILocation(line: 113, column: 10, scope: !3657)
!3674 = !DILocation(line: 113, column: 3, scope: !3657)
!3675 = distinct !DISubprogram(name: "xstrdup", scope: !3461, file: !3461, line: 119, type: !1172, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3676)
!3676 = !{!3677}
!3677 = !DILocalVariable(name: "string", arg: 1, scope: !3675, file: !3461, line: 119, type: !19)
!3678 = !DILocation(line: 119, column: 22, scope: !3675)
!3679 = !DILocation(line: 121, column: 27, scope: !3675)
!3680 = !DILocation(line: 121, column: 43, scope: !3675)
!3681 = !DILocation(line: 111, column: 22, scope: !3657, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 121, column: 10, scope: !3675)
!3683 = !DILocation(line: 111, column: 32, scope: !3657, inlinedAt: !3682)
!3684 = !DILocation(line: 39, column: 17, scope: !3460, inlinedAt: !3685)
!3685 = distinct !DILocation(line: 113, column: 18, scope: !3657, inlinedAt: !3682)
!3686 = !DILocation(line: 41, column: 13, scope: !3460, inlinedAt: !3685)
!3687 = !DILocation(line: 41, column: 9, scope: !3460, inlinedAt: !3685)
!3688 = !DILocation(line: 42, column: 8, scope: !3471, inlinedAt: !3685)
!3689 = !DILocation(line: 42, column: 15, scope: !3471, inlinedAt: !3685)
!3690 = !DILocation(line: 42, column: 10, scope: !3471, inlinedAt: !3685)
!3691 = !DILocation(line: 43, column: 5, scope: !3471, inlinedAt: !3685)
!3692 = !DILocation(line: 113, column: 10, scope: !3657, inlinedAt: !3682)
!3693 = !DILocation(line: 121, column: 3, scope: !3675)
!3694 = distinct !DISubprogram(name: "xalloc_die", scope: !3695, file: !3695, line: 32, type: !1016, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !600, variables: !4)
!3695 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3696 = !DILocation(line: 34, column: 10, scope: !3694)
!3697 = !DILocation(line: 34, column: 33, scope: !3694)
!3698 = !DILocation(line: 34, column: 3, scope: !3694)
!3699 = !DILocation(line: 40, column: 3, scope: !3694)
!3700 = distinct !DISubprogram(name: "rpl_calloc", scope: !3701, file: !3701, line: 42, type: !3447, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !602, variables: !3702)
!3701 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3702 = !{!3703, !3704, !3705, !3706}
!3703 = !DILocalVariable(name: "n", arg: 1, scope: !3700, file: !3701, line: 42, type: !118)
!3704 = !DILocalVariable(name: "s", arg: 2, scope: !3700, file: !3701, line: 42, type: !118)
!3705 = !DILocalVariable(name: "result", scope: !3700, file: !3701, line: 44, type: !8)
!3706 = !DILocalVariable(name: "bytes", scope: !3707, file: !3701, line: 56, type: !118)
!3707 = distinct !DILexicalBlock(scope: !3708, file: !3701, line: 53, column: 5)
!3708 = distinct !DILexicalBlock(scope: !3700, file: !3701, line: 47, column: 7)
!3709 = !DILocation(line: 42, column: 20, scope: !3700)
!3710 = !DILocation(line: 42, column: 30, scope: !3700)
!3711 = !DILocation(line: 47, column: 9, scope: !3708)
!3712 = !DILocation(line: 47, column: 19, scope: !3708)
!3713 = !DILocation(line: 47, column: 14, scope: !3708)
!3714 = !DILocation(line: 56, column: 24, scope: !3707)
!3715 = !DILocation(line: 56, column: 14, scope: !3707)
!3716 = !DILocation(line: 57, column: 17, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3707, file: !3701, line: 57, column: 11)
!3718 = !DILocation(line: 57, column: 21, scope: !3717)
!3719 = !DILocation(line: 57, column: 11, scope: !3707)
!3720 = !DILocation(line: 59, column: 11, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3717, file: !3701, line: 58, column: 9)
!3722 = !DILocation(line: 59, column: 17, scope: !3721)
!3723 = !DILocation(line: 65, column: 12, scope: !3700)
!3724 = !DILocation(line: 44, column: 9, scope: !3700)
!3725 = !DILocation(line: 72, column: 3, scope: !3700)
!3726 = !DILocation(line: 73, column: 1, scope: !3700)
!3727 = distinct !DISubprogram(name: "rpl_fclose", scope: !3728, file: !3728, line: 56, type: !3729, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !604, variables: !3771)
!3728 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!44, !3731}
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1034, line: 7, baseType: !3733)
!3733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1036, line: 241, size: 1728, elements: !3734)
!3734 = !{!3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3733, file: !1036, line: 242, baseType: !44, size: 32)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3733, file: !1036, line: 247, baseType: !6, size: 64, offset: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3733, file: !1036, line: 248, baseType: !6, size: 64, offset: 128)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3733, file: !1036, line: 249, baseType: !6, size: 64, offset: 192)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3733, file: !1036, line: 250, baseType: !6, size: 64, offset: 256)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3733, file: !1036, line: 251, baseType: !6, size: 64, offset: 320)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3733, file: !1036, line: 252, baseType: !6, size: 64, offset: 384)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3733, file: !1036, line: 253, baseType: !6, size: 64, offset: 448)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3733, file: !1036, line: 254, baseType: !6, size: 64, offset: 512)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3733, file: !1036, line: 256, baseType: !6, size: 64, offset: 576)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3733, file: !1036, line: 257, baseType: !6, size: 64, offset: 640)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3733, file: !1036, line: 258, baseType: !6, size: 64, offset: 704)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3733, file: !1036, line: 260, baseType: !3748, size: 64, offset: 768)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1036, line: 156, size: 192, elements: !3750)
!3750 = !{!3751, !3752, !3754}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3749, file: !1036, line: 157, baseType: !3748, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3749, file: !1036, line: 158, baseType: !3753, size: 64, offset: 64)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3749, file: !1036, line: 162, baseType: !44, size: 32, offset: 128)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3733, file: !1036, line: 262, baseType: !3753, size: 64, offset: 832)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3733, file: !1036, line: 264, baseType: !44, size: 32, offset: 896)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3733, file: !1036, line: 268, baseType: !44, size: 32, offset: 928)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3733, file: !1036, line: 270, baseType: !1062, size: 64, offset: 960)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3733, file: !1036, line: 274, baseType: !117, size: 16, offset: 1024)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3733, file: !1036, line: 275, baseType: !1067, size: 8, offset: 1040)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3733, file: !1036, line: 276, baseType: !1069, size: 8, offset: 1048)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3733, file: !1036, line: 280, baseType: !1071, size: 64, offset: 1088)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3733, file: !1036, line: 289, baseType: !1074, size: 64, offset: 1152)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3733, file: !1036, line: 297, baseType: !8, size: 64, offset: 1216)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3733, file: !1036, line: 298, baseType: !8, size: 64, offset: 1280)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3733, file: !1036, line: 299, baseType: !8, size: 64, offset: 1344)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3733, file: !1036, line: 300, baseType: !8, size: 64, offset: 1408)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3733, file: !1036, line: 302, baseType: !118, size: 64, offset: 1472)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3733, file: !1036, line: 303, baseType: !44, size: 32, offset: 1536)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3733, file: !1036, line: 305, baseType: !1082, size: 160, offset: 1568)
!3771 = !{!3772, !3773, !3774, !3775}
!3772 = !DILocalVariable(name: "fp", arg: 1, scope: !3727, file: !3728, line: 56, type: !3731)
!3773 = !DILocalVariable(name: "saved_errno", scope: !3727, file: !3728, line: 58, type: !44)
!3774 = !DILocalVariable(name: "fd", scope: !3727, file: !3728, line: 59, type: !44)
!3775 = !DILocalVariable(name: "result", scope: !3727, file: !3728, line: 60, type: !44)
!3776 = !DILocation(line: 56, column: 19, scope: !3727)
!3777 = !DILocation(line: 58, column: 7, scope: !3727)
!3778 = !DILocation(line: 60, column: 7, scope: !3727)
!3779 = !DILocation(line: 63, column: 8, scope: !3727)
!3780 = !DILocation(line: 59, column: 7, scope: !3727)
!3781 = !DILocation(line: 64, column: 10, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3727, file: !3728, line: 64, column: 7)
!3783 = !DILocation(line: 64, column: 7, scope: !3727)
!3784 = !DILocation(line: 65, column: 12, scope: !3782)
!3785 = !DILocation(line: 65, column: 5, scope: !3782)
!3786 = !DILocation(line: 70, column: 9, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3727, file: !3728, line: 70, column: 7)
!3788 = !DILocation(line: 70, column: 23, scope: !3787)
!3789 = !DILocation(line: 70, column: 33, scope: !3787)
!3790 = !DILocation(line: 70, column: 26, scope: !3787)
!3791 = !DILocation(line: 70, column: 59, scope: !3787)
!3792 = !DILocation(line: 71, column: 7, scope: !3787)
!3793 = !DILocation(line: 71, column: 10, scope: !3787)
!3794 = !DILocation(line: 70, column: 7, scope: !3727)
!3795 = !DILocation(line: 98, column: 12, scope: !3727)
!3796 = !DILocation(line: 103, column: 7, scope: !3727)
!3797 = !DILocation(line: 72, column: 19, scope: !3787)
!3798 = !DILocation(line: 103, column: 19, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3727, file: !3728, line: 103, column: 7)
!3800 = !DILocation(line: 105, column: 13, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3799, file: !3728, line: 104, column: 5)
!3802 = !DILocation(line: 107, column: 5, scope: !3801)
!3803 = !DILocation(line: 110, column: 1, scope: !3727)
!3804 = distinct !DISubprogram(name: "rpl_fflush", scope: !3805, file: !3805, line: 127, type: !3806, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !3848)
!3805 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!44, !3808}
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1034, line: 7, baseType: !3810)
!3810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1036, line: 241, size: 1728, elements: !3811)
!3811 = !{!3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3810, file: !1036, line: 242, baseType: !44, size: 32)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3810, file: !1036, line: 247, baseType: !6, size: 64, offset: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3810, file: !1036, line: 248, baseType: !6, size: 64, offset: 128)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3810, file: !1036, line: 249, baseType: !6, size: 64, offset: 192)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3810, file: !1036, line: 250, baseType: !6, size: 64, offset: 256)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3810, file: !1036, line: 251, baseType: !6, size: 64, offset: 320)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3810, file: !1036, line: 252, baseType: !6, size: 64, offset: 384)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3810, file: !1036, line: 253, baseType: !6, size: 64, offset: 448)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3810, file: !1036, line: 254, baseType: !6, size: 64, offset: 512)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3810, file: !1036, line: 256, baseType: !6, size: 64, offset: 576)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3810, file: !1036, line: 257, baseType: !6, size: 64, offset: 640)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3810, file: !1036, line: 258, baseType: !6, size: 64, offset: 704)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3810, file: !1036, line: 260, baseType: !3825, size: 64, offset: 768)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1036, line: 156, size: 192, elements: !3827)
!3827 = !{!3828, !3829, !3831}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3826, file: !1036, line: 157, baseType: !3825, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3826, file: !1036, line: 158, baseType: !3830, size: 64, offset: 64)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3826, file: !1036, line: 162, baseType: !44, size: 32, offset: 128)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3810, file: !1036, line: 262, baseType: !3830, size: 64, offset: 832)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3810, file: !1036, line: 264, baseType: !44, size: 32, offset: 896)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3810, file: !1036, line: 268, baseType: !44, size: 32, offset: 928)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3810, file: !1036, line: 270, baseType: !1062, size: 64, offset: 960)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3810, file: !1036, line: 274, baseType: !117, size: 16, offset: 1024)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3810, file: !1036, line: 275, baseType: !1067, size: 8, offset: 1040)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3810, file: !1036, line: 276, baseType: !1069, size: 8, offset: 1048)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3810, file: !1036, line: 280, baseType: !1071, size: 64, offset: 1088)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3810, file: !1036, line: 289, baseType: !1074, size: 64, offset: 1152)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3810, file: !1036, line: 297, baseType: !8, size: 64, offset: 1216)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3810, file: !1036, line: 298, baseType: !8, size: 64, offset: 1280)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3810, file: !1036, line: 299, baseType: !8, size: 64, offset: 1344)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3810, file: !1036, line: 300, baseType: !8, size: 64, offset: 1408)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3810, file: !1036, line: 302, baseType: !118, size: 64, offset: 1472)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3810, file: !1036, line: 303, baseType: !44, size: 32, offset: 1536)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3810, file: !1036, line: 305, baseType: !1082, size: 160, offset: 1568)
!3848 = !{!3849}
!3849 = !DILocalVariable(name: "stream", arg: 1, scope: !3804, file: !3805, line: 127, type: !3808)
!3850 = !DILocation(line: 127, column: 19, scope: !3804)
!3851 = !DILocation(line: 148, column: 14, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3804, file: !3805, line: 148, column: 7)
!3853 = !DILocation(line: 148, column: 22, scope: !3852)
!3854 = !DILocation(line: 148, column: 27, scope: !3852)
!3855 = !DILocation(line: 148, column: 7, scope: !3804)
!3856 = !DILocation(line: 149, column: 12, scope: !3852)
!3857 = !DILocation(line: 149, column: 5, scope: !3852)
!3858 = !DILocalVariable(name: "fp", arg: 1, scope: !3859, file: !3805, line: 40, type: !3808)
!3859 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3805, file: !3805, line: 40, type: !3860, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !3862)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{null, !3808}
!3862 = !{!3858}
!3863 = !DILocation(line: 40, column: 48, scope: !3859, inlinedAt: !3864)
!3864 = distinct !DILocation(line: 153, column: 3, scope: !3804)
!3865 = !DILocation(line: 42, column: 11, scope: !3866, inlinedAt: !3864)
!3866 = distinct !DILexicalBlock(scope: !3859, file: !3805, line: 42, column: 7)
!3867 = !DILocation(line: 42, column: 18, scope: !3866, inlinedAt: !3864)
!3868 = !DILocation(line: 42, column: 7, scope: !3859, inlinedAt: !3864)
!3869 = !DILocation(line: 44, column: 5, scope: !3866, inlinedAt: !3864)
!3870 = !DILocation(line: 155, column: 10, scope: !3804)
!3871 = !DILocation(line: 155, column: 3, scope: !3804)
!3872 = !DILocation(line: 229, column: 1, scope: !3804)
!3873 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3874, file: !3874, line: 28, type: !3875, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !608, variables: !3918)
!3874 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!44, !3877, !3917, !44}
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1034, line: 7, baseType: !3879)
!3879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1036, line: 241, size: 1728, elements: !3880)
!3880 = !{!3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3879, file: !1036, line: 242, baseType: !44, size: 32)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3879, file: !1036, line: 247, baseType: !6, size: 64, offset: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3879, file: !1036, line: 248, baseType: !6, size: 64, offset: 128)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3879, file: !1036, line: 249, baseType: !6, size: 64, offset: 192)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3879, file: !1036, line: 250, baseType: !6, size: 64, offset: 256)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3879, file: !1036, line: 251, baseType: !6, size: 64, offset: 320)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3879, file: !1036, line: 252, baseType: !6, size: 64, offset: 384)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3879, file: !1036, line: 253, baseType: !6, size: 64, offset: 448)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3879, file: !1036, line: 254, baseType: !6, size: 64, offset: 512)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3879, file: !1036, line: 256, baseType: !6, size: 64, offset: 576)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3879, file: !1036, line: 257, baseType: !6, size: 64, offset: 640)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3879, file: !1036, line: 258, baseType: !6, size: 64, offset: 704)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3879, file: !1036, line: 260, baseType: !3894, size: 64, offset: 768)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1036, line: 156, size: 192, elements: !3896)
!3896 = !{!3897, !3898, !3900}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3895, file: !1036, line: 157, baseType: !3894, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3895, file: !1036, line: 158, baseType: !3899, size: 64, offset: 64)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3895, file: !1036, line: 162, baseType: !44, size: 32, offset: 128)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3879, file: !1036, line: 262, baseType: !3899, size: 64, offset: 832)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3879, file: !1036, line: 264, baseType: !44, size: 32, offset: 896)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3879, file: !1036, line: 268, baseType: !44, size: 32, offset: 928)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3879, file: !1036, line: 270, baseType: !1062, size: 64, offset: 960)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3879, file: !1036, line: 274, baseType: !117, size: 16, offset: 1024)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3879, file: !1036, line: 275, baseType: !1067, size: 8, offset: 1040)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3879, file: !1036, line: 276, baseType: !1069, size: 8, offset: 1048)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3879, file: !1036, line: 280, baseType: !1071, size: 64, offset: 1088)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3879, file: !1036, line: 289, baseType: !1074, size: 64, offset: 1152)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3879, file: !1036, line: 297, baseType: !8, size: 64, offset: 1216)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3879, file: !1036, line: 298, baseType: !8, size: 64, offset: 1280)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3879, file: !1036, line: 299, baseType: !8, size: 64, offset: 1344)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3879, file: !1036, line: 300, baseType: !8, size: 64, offset: 1408)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3879, file: !1036, line: 302, baseType: !118, size: 64, offset: 1472)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3879, file: !1036, line: 303, baseType: !44, size: 32, offset: 1536)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3879, file: !1036, line: 305, baseType: !1082, size: 160, offset: 1568)
!3917 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3427, line: 57, baseType: !1062)
!3918 = !{!3919, !3920, !3921, !3922}
!3919 = !DILocalVariable(name: "fp", arg: 1, scope: !3873, file: !3874, line: 28, type: !3877)
!3920 = !DILocalVariable(name: "offset", arg: 2, scope: !3873, file: !3874, line: 28, type: !3917)
!3921 = !DILocalVariable(name: "whence", arg: 3, scope: !3873, file: !3874, line: 28, type: !44)
!3922 = !DILocalVariable(name: "pos", scope: !3923, file: !3874, line: 116, type: !3917)
!3923 = distinct !DILexicalBlock(scope: !3924, file: !3874, line: 112, column: 5)
!3924 = distinct !DILexicalBlock(scope: !3873, file: !3874, line: 51, column: 7)
!3925 = !DILocation(line: 28, column: 15, scope: !3873)
!3926 = !DILocation(line: 28, column: 25, scope: !3873)
!3927 = !DILocation(line: 28, column: 37, scope: !3873)
!3928 = !DILocation(line: 51, column: 11, scope: !3924)
!3929 = !{!1101, !699, i64 16}
!3930 = !DILocation(line: 51, column: 31, scope: !3924)
!3931 = !{!1101, !699, i64 8}
!3932 = !DILocation(line: 51, column: 24, scope: !3924)
!3933 = !DILocation(line: 52, column: 7, scope: !3924)
!3934 = !DILocation(line: 52, column: 14, scope: !3924)
!3935 = !{!1101, !699, i64 40}
!3936 = !DILocation(line: 52, column: 35, scope: !3924)
!3937 = !{!1101, !699, i64 32}
!3938 = !DILocation(line: 52, column: 28, scope: !3924)
!3939 = !DILocation(line: 53, column: 7, scope: !3924)
!3940 = !DILocation(line: 53, column: 14, scope: !3924)
!3941 = !{!1101, !699, i64 72}
!3942 = !DILocation(line: 53, column: 28, scope: !3924)
!3943 = !DILocation(line: 51, column: 7, scope: !3873)
!3944 = !DILocation(line: 116, column: 26, scope: !3923)
!3945 = !DILocation(line: 116, column: 19, scope: !3923)
!3946 = !DILocation(line: 116, column: 13, scope: !3923)
!3947 = !DILocation(line: 117, column: 15, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3923, file: !3874, line: 117, column: 11)
!3949 = !DILocation(line: 117, column: 11, scope: !3923)
!3950 = !DILocation(line: 127, column: 11, scope: !3923)
!3951 = !DILocation(line: 127, column: 18, scope: !3923)
!3952 = !DILocation(line: 128, column: 11, scope: !3923)
!3953 = !DILocation(line: 128, column: 19, scope: !3923)
!3954 = !{!1101, !1102, i64 144}
!3955 = !DILocation(line: 159, column: 7, scope: !3923)
!3956 = !DILocation(line: 161, column: 10, scope: !3873)
!3957 = !DILocation(line: 161, column: 3, scope: !3873)
!3958 = !DILocation(line: 162, column: 1, scope: !3873)
!3959 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3960, file: !3960, line: 334, type: !3961, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !610, variables: !3975)
!3960 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!118, !3963, !19, !118, !3964}
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1556, line: 6, baseType: !3966)
!3966 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1558, line: 21, baseType: !3967)
!3967 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1558, line: 13, size: 64, elements: !3968)
!3968 = !{!3969, !3970}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3967, file: !1558, line: 15, baseType: !44, size: 32)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3967, file: !1558, line: 20, baseType: !3971, size: 32, offset: 32)
!3971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3967, file: !1558, line: 16, size: 32, elements: !3972)
!3972 = !{!3973, !3974}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3971, file: !1558, line: 18, baseType: !137, size: 32)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3971, file: !1558, line: 19, baseType: !1567, size: 32)
!3975 = !{!3976, !3977, !3978, !3979, !3980, !3981, !3982}
!3976 = !DILocalVariable(name: "pwc", arg: 1, scope: !3959, file: !3960, line: 334, type: !3963)
!3977 = !DILocalVariable(name: "s", arg: 2, scope: !3959, file: !3960, line: 334, type: !19)
!3978 = !DILocalVariable(name: "n", arg: 3, scope: !3959, file: !3960, line: 334, type: !118)
!3979 = !DILocalVariable(name: "ps", arg: 4, scope: !3959, file: !3960, line: 334, type: !3964)
!3980 = !DILocalVariable(name: "ret", scope: !3959, file: !3960, line: 336, type: !118)
!3981 = !DILocalVariable(name: "wc", scope: !3959, file: !3960, line: 337, type: !1572)
!3982 = !DILocalVariable(name: "uc", scope: !3983, file: !3960, line: 398, type: !525)
!3983 = distinct !DILexicalBlock(scope: !3984, file: !3960, line: 397, column: 5)
!3984 = distinct !DILexicalBlock(scope: !3959, file: !3960, line: 396, column: 7)
!3985 = !DILocation(line: 334, column: 23, scope: !3959)
!3986 = !DILocation(line: 334, column: 40, scope: !3959)
!3987 = !DILocation(line: 334, column: 50, scope: !3959)
!3988 = !DILocation(line: 334, column: 64, scope: !3959)
!3989 = !DILocation(line: 337, column: 3, scope: !3959)
!3990 = !DILocation(line: 353, column: 9, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3959, file: !3960, line: 353, column: 7)
!3992 = !DILocation(line: 353, column: 7, scope: !3959)
!3993 = !DILocation(line: 388, column: 9, scope: !3959)
!3994 = !DILocation(line: 336, column: 10, scope: !3959)
!3995 = !DILocation(line: 396, column: 19, scope: !3984)
!3996 = !DILocation(line: 396, column: 31, scope: !3984)
!3997 = !DILocation(line: 396, column: 26, scope: !3984)
!3998 = !DILocation(line: 396, column: 41, scope: !3984)
!3999 = !DILocation(line: 396, column: 7, scope: !3959)
!4000 = !DILocation(line: 398, column: 26, scope: !3983)
!4001 = !DILocation(line: 398, column: 21, scope: !3983)
!4002 = !DILocation(line: 399, column: 14, scope: !3983)
!4003 = !DILocation(line: 399, column: 12, scope: !3983)
!4004 = !DILocation(line: 405, column: 1, scope: !3959)
!4005 = distinct !DISubprogram(name: "hard_locale", scope: !4006, file: !4006, line: 38, type: !4007, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !613, variables: !4009)
!4006 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!12, !44}
!4009 = !{!4010, !4011, !4012}
!4010 = !DILocalVariable(name: "category", arg: 1, scope: !4005, file: !4006, line: 38, type: !44)
!4011 = !DILocalVariable(name: "hard", scope: !4005, file: !4006, line: 40, type: !12)
!4012 = !DILocalVariable(name: "p", scope: !4005, file: !4006, line: 41, type: !19)
!4013 = !DILocation(line: 38, column: 18, scope: !4005)
!4014 = !DILocation(line: 40, column: 8, scope: !4005)
!4015 = !DILocation(line: 41, column: 19, scope: !4005)
!4016 = !DILocation(line: 41, column: 15, scope: !4005)
!4017 = !DILocation(line: 43, column: 7, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !4005, file: !4006, line: 43, column: 7)
!4019 = !DILocation(line: 43, column: 7, scope: !4005)
!4020 = !DILocation(line: 47, column: 15, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4022, file: !4006, line: 47, column: 15)
!4022 = distinct !DILexicalBlock(scope: !4023, file: !4006, line: 46, column: 9)
!4023 = distinct !DILexicalBlock(scope: !4024, file: !4006, line: 45, column: 11)
!4024 = distinct !DILexicalBlock(scope: !4018, file: !4006, line: 44, column: 5)
!4025 = !DILocation(line: 47, column: 31, scope: !4021)
!4026 = !DILocation(line: 47, column: 36, scope: !4021)
!4027 = !DILocation(line: 47, column: 39, scope: !4021)
!4028 = !DILocation(line: 47, column: 59, scope: !4021)
!4029 = !DILocation(line: 47, column: 15, scope: !4022)
!4030 = !DILocation(line: 48, column: 13, scope: !4021)
!4031 = !DILocation(line: 71, column: 3, scope: !4005)
!4032 = distinct !DISubprogram(name: "locale_charset", scope: !527, file: !527, line: 393, type: !4033, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !182, variables: !4035)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!19}
!4035 = !{!4036, !4037}
!4036 = !DILocalVariable(name: "codeset", scope: !4032, file: !527, line: 395, type: !19)
!4037 = !DILocalVariable(name: "aliases", scope: !4032, file: !527, line: 396, type: !19)
!4038 = !DILocalVariable(name: "buf1", scope: !4039, file: !527, line: 196, type: !4106)
!4039 = distinct !DILexicalBlock(scope: !4040, file: !527, line: 194, column: 21)
!4040 = distinct !DILexicalBlock(scope: !4041, file: !527, line: 193, column: 19)
!4041 = distinct !DILexicalBlock(scope: !4042, file: !527, line: 193, column: 19)
!4042 = distinct !DILexicalBlock(scope: !4043, file: !527, line: 188, column: 17)
!4043 = distinct !DILexicalBlock(scope: !4044, file: !527, line: 181, column: 19)
!4044 = distinct !DILexicalBlock(scope: !4045, file: !527, line: 177, column: 13)
!4045 = distinct !DILexicalBlock(scope: !4046, file: !527, line: 173, column: 15)
!4046 = distinct !DILexicalBlock(scope: !4047, file: !527, line: 161, column: 9)
!4047 = distinct !DILexicalBlock(scope: !4048, file: !527, line: 157, column: 11)
!4048 = distinct !DILexicalBlock(scope: !4049, file: !527, line: 130, column: 5)
!4049 = distinct !DILexicalBlock(scope: !4050, file: !527, line: 129, column: 7)
!4050 = distinct !DISubprogram(name: "get_charset_aliases", scope: !527, file: !527, line: 124, type: !4033, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !182, variables: !4051)
!4051 = !{!4052, !4053, !4054, !4055, !4056, !4058, !4059, !4060, !4061, !4102, !4103, !4104, !4038, !4105, !4109, !4110, !4111}
!4052 = !DILocalVariable(name: "cp", scope: !4050, file: !527, line: 126, type: !19)
!4053 = !DILocalVariable(name: "dir", scope: !4048, file: !527, line: 132, type: !19)
!4054 = !DILocalVariable(name: "base", scope: !4048, file: !527, line: 133, type: !19)
!4055 = !DILocalVariable(name: "file_name", scope: !4048, file: !527, line: 134, type: !6)
!4056 = !DILocalVariable(name: "dir_len", scope: !4057, file: !527, line: 144, type: !118)
!4057 = distinct !DILexicalBlock(scope: !4048, file: !527, line: 143, column: 7)
!4058 = !DILocalVariable(name: "base_len", scope: !4057, file: !527, line: 145, type: !118)
!4059 = !DILocalVariable(name: "add_slash", scope: !4057, file: !527, line: 146, type: !44)
!4060 = !DILocalVariable(name: "fd", scope: !4046, file: !527, line: 162, type: !44)
!4061 = !DILocalVariable(name: "fp", scope: !4044, file: !527, line: 178, type: !4062)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1034, line: 7, baseType: !4064)
!4064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1036, line: 241, size: 1728, elements: !4065)
!4065 = !{!4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4064, file: !1036, line: 242, baseType: !44, size: 32)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4064, file: !1036, line: 247, baseType: !6, size: 64, offset: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4064, file: !1036, line: 248, baseType: !6, size: 64, offset: 128)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4064, file: !1036, line: 249, baseType: !6, size: 64, offset: 192)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4064, file: !1036, line: 250, baseType: !6, size: 64, offset: 256)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4064, file: !1036, line: 251, baseType: !6, size: 64, offset: 320)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4064, file: !1036, line: 252, baseType: !6, size: 64, offset: 384)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4064, file: !1036, line: 253, baseType: !6, size: 64, offset: 448)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4064, file: !1036, line: 254, baseType: !6, size: 64, offset: 512)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4064, file: !1036, line: 256, baseType: !6, size: 64, offset: 576)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4064, file: !1036, line: 257, baseType: !6, size: 64, offset: 640)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4064, file: !1036, line: 258, baseType: !6, size: 64, offset: 704)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4064, file: !1036, line: 260, baseType: !4079, size: 64, offset: 768)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1036, line: 156, size: 192, elements: !4081)
!4081 = !{!4082, !4083, !4085}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4080, file: !1036, line: 157, baseType: !4079, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4080, file: !1036, line: 158, baseType: !4084, size: 64, offset: 64)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4080, file: !1036, line: 162, baseType: !44, size: 32, offset: 128)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4064, file: !1036, line: 262, baseType: !4084, size: 64, offset: 832)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4064, file: !1036, line: 264, baseType: !44, size: 32, offset: 896)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4064, file: !1036, line: 268, baseType: !44, size: 32, offset: 928)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4064, file: !1036, line: 270, baseType: !1062, size: 64, offset: 960)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4064, file: !1036, line: 274, baseType: !117, size: 16, offset: 1024)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4064, file: !1036, line: 275, baseType: !1067, size: 8, offset: 1040)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4064, file: !1036, line: 276, baseType: !1069, size: 8, offset: 1048)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4064, file: !1036, line: 280, baseType: !1071, size: 64, offset: 1088)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4064, file: !1036, line: 289, baseType: !1074, size: 64, offset: 1152)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4064, file: !1036, line: 297, baseType: !8, size: 64, offset: 1216)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4064, file: !1036, line: 298, baseType: !8, size: 64, offset: 1280)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4064, file: !1036, line: 299, baseType: !8, size: 64, offset: 1344)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4064, file: !1036, line: 300, baseType: !8, size: 64, offset: 1408)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4064, file: !1036, line: 302, baseType: !118, size: 64, offset: 1472)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4064, file: !1036, line: 303, baseType: !44, size: 32, offset: 1536)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4064, file: !1036, line: 305, baseType: !1082, size: 160, offset: 1568)
!4102 = !DILocalVariable(name: "res_ptr", scope: !4042, file: !527, line: 190, type: !6)
!4103 = !DILocalVariable(name: "res_size", scope: !4042, file: !527, line: 191, type: !118)
!4104 = !DILocalVariable(name: "c", scope: !4039, file: !527, line: 195, type: !44)
!4105 = !DILocalVariable(name: "buf2", scope: !4039, file: !527, line: 197, type: !4106)
!4106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 408, elements: !4107)
!4107 = !{!4108}
!4108 = !DISubrange(count: 51)
!4109 = !DILocalVariable(name: "l1", scope: !4039, file: !527, line: 198, type: !118)
!4110 = !DILocalVariable(name: "l2", scope: !4039, file: !527, line: 198, type: !118)
!4111 = !DILocalVariable(name: "old_res_ptr", scope: !4039, file: !527, line: 199, type: !6)
!4112 = !DILocation(line: 196, column: 28, scope: !4039, inlinedAt: !4113)
!4113 = distinct !DILocation(line: 589, column: 18, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4032, file: !527, line: 589, column: 3)
!4115 = !DILocation(line: 197, column: 28, scope: !4039, inlinedAt: !4113)
!4116 = !DILocation(line: 403, column: 13, scope: !4032)
!4117 = !DILocation(line: 395, column: 15, scope: !4032)
!4118 = !DILocation(line: 584, column: 15, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4032, file: !527, line: 584, column: 7)
!4120 = !DILocation(line: 584, column: 7, scope: !4032)
!4121 = !DILocation(line: 128, column: 8, scope: !4050, inlinedAt: !4113)
!4122 = !DILocation(line: 126, column: 15, scope: !4050, inlinedAt: !4113)
!4123 = !DILocation(line: 129, column: 10, scope: !4049, inlinedAt: !4113)
!4124 = !DILocation(line: 129, column: 7, scope: !4050, inlinedAt: !4113)
!4125 = !DILocation(line: 138, column: 13, scope: !4048, inlinedAt: !4113)
!4126 = !DILocation(line: 132, column: 19, scope: !4048, inlinedAt: !4113)
!4127 = !DILocation(line: 139, column: 15, scope: !4128, inlinedAt: !4113)
!4128 = distinct !DILexicalBlock(scope: !4048, file: !527, line: 139, column: 11)
!4129 = !DILocation(line: 139, column: 23, scope: !4128, inlinedAt: !4113)
!4130 = !DILocation(line: 139, column: 26, scope: !4128, inlinedAt: !4113)
!4131 = !DILocation(line: 139, column: 33, scope: !4128, inlinedAt: !4113)
!4132 = !DILocation(line: 139, column: 11, scope: !4048, inlinedAt: !4113)
!4133 = !DILocation(line: 140, column: 9, scope: !4128, inlinedAt: !4113)
!4134 = !DILocation(line: 144, column: 26, scope: !4057, inlinedAt: !4113)
!4135 = !DILocation(line: 144, column: 16, scope: !4057, inlinedAt: !4113)
!4136 = !DILocation(line: 145, column: 16, scope: !4057, inlinedAt: !4113)
!4137 = !DILocation(line: 146, column: 34, scope: !4057, inlinedAt: !4113)
!4138 = !DILocation(line: 146, column: 38, scope: !4057, inlinedAt: !4113)
!4139 = !DILocation(line: 146, column: 42, scope: !4057, inlinedAt: !4113)
!4140 = !DILocation(line: 147, column: 48, scope: !4057, inlinedAt: !4113)
!4141 = !DILocation(line: 147, column: 46, scope: !4057, inlinedAt: !4113)
!4142 = !DILocation(line: 147, column: 69, scope: !4057, inlinedAt: !4113)
!4143 = !DILocation(line: 147, column: 30, scope: !4057, inlinedAt: !4113)
!4144 = !DILocation(line: 134, column: 13, scope: !4048, inlinedAt: !4113)
!4145 = !DILocation(line: 148, column: 13, scope: !4057, inlinedAt: !4113)
!4146 = !DILocation(line: 150, column: 13, scope: !4147, inlinedAt: !4113)
!4147 = distinct !DILexicalBlock(scope: !4148, file: !527, line: 149, column: 11)
!4148 = distinct !DILexicalBlock(scope: !4057, file: !527, line: 148, column: 13)
!4149 = !DILocation(line: 151, column: 17, scope: !4147, inlinedAt: !4113)
!4150 = !DILocation(line: 152, column: 34, scope: !4151, inlinedAt: !4113)
!4151 = distinct !DILexicalBlock(scope: !4147, file: !527, line: 151, column: 17)
!4152 = !DILocation(line: 153, column: 41, scope: !4147, inlinedAt: !4113)
!4153 = !DILocation(line: 153, column: 13, scope: !4147, inlinedAt: !4113)
!4154 = !DILocation(line: 157, column: 11, scope: !4048, inlinedAt: !4113)
!4155 = !DILocation(line: 171, column: 16, scope: !4046, inlinedAt: !4113)
!4156 = !DILocation(line: 162, column: 15, scope: !4046, inlinedAt: !4113)
!4157 = !DILocation(line: 173, column: 18, scope: !4045, inlinedAt: !4113)
!4158 = !DILocation(line: 173, column: 15, scope: !4046, inlinedAt: !4113)
!4159 = !DILocation(line: 180, column: 20, scope: !4044, inlinedAt: !4113)
!4160 = !DILocation(line: 178, column: 21, scope: !4044, inlinedAt: !4113)
!4161 = !DILocation(line: 181, column: 22, scope: !4043, inlinedAt: !4113)
!4162 = !DILocation(line: 181, column: 19, scope: !4044, inlinedAt: !4113)
!4163 = !DILocation(line: 184, column: 19, scope: !4164, inlinedAt: !4113)
!4164 = distinct !DILexicalBlock(scope: !4043, file: !527, line: 182, column: 17)
!4165 = !DILocation(line: 186, column: 17, scope: !4164, inlinedAt: !4113)
!4166 = !DILocation(line: 190, column: 25, scope: !4042, inlinedAt: !4113)
!4167 = !DILocation(line: 191, column: 26, scope: !4042, inlinedAt: !4113)
!4168 = !DILocation(line: 193, column: 19, scope: !4042, inlinedAt: !4113)
!4169 = !DILocation(line: 196, column: 23, scope: !4039, inlinedAt: !4113)
!4170 = !DILocation(line: 197, column: 23, scope: !4039, inlinedAt: !4113)
!4171 = !DILocalVariable(name: "__fp", arg: 1, scope: !4172, file: !1095, line: 63, type: !4062)
!4172 = distinct !DISubprogram(name: "getc_unlocked", scope: !1095, file: !1095, line: 63, type: !4173, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !182, variables: !4175)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!44, !4062}
!4175 = !{!4171}
!4176 = !DILocation(line: 63, column: 22, scope: !4172, inlinedAt: !4177)
!4177 = distinct !DILocation(line: 201, column: 27, scope: !4039, inlinedAt: !4113)
!4178 = !DILocation(line: 65, column: 10, scope: !4172, inlinedAt: !4177)
!4179 = !{!"branch_weights", i32 2000, i32 1}
!4180 = !DILocation(line: 195, column: 27, scope: !4039, inlinedAt: !4113)
!4181 = !DILocation(line: 202, column: 27, scope: !4039, inlinedAt: !4113)
!4182 = distinct !{!4182, !4183, !4186}
!4183 = !DILocation(line: 209, column: 27, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4185, file: !527, line: 207, column: 25)
!4185 = distinct !DILexicalBlock(scope: !4039, file: !527, line: 206, column: 27)
!4186 = !DILocation(line: 211, column: 58, scope: !4184)
!4187 = !DILocation(line: 65, column: 10, scope: !4172, inlinedAt: !4188)
!4188 = distinct !DILocation(line: 210, column: 33, scope: !4184, inlinedAt: !4113)
!4189 = !DILocation(line: 63, column: 22, scope: !4172, inlinedAt: !4188)
!4190 = !DILocation(line: 210, column: 29, scope: !4184, inlinedAt: !4113)
!4191 = distinct !{!4191, !4192, !4193}
!4192 = !DILocation(line: 193, column: 19, scope: !4041)
!4193 = !DILocation(line: 241, column: 21, scope: !4041)
!4194 = !DILocation(line: 216, column: 23, scope: !4039, inlinedAt: !4113)
!4195 = !DILocation(line: 217, column: 27, scope: !4196, inlinedAt: !4113)
!4196 = distinct !DILexicalBlock(scope: !4039, file: !527, line: 217, column: 27)
!4197 = !DILocation(line: 217, column: 64, scope: !4196, inlinedAt: !4113)
!4198 = !DILocation(line: 217, column: 27, scope: !4039, inlinedAt: !4113)
!4199 = !DILocation(line: 219, column: 28, scope: !4039, inlinedAt: !4113)
!4200 = !DILocation(line: 198, column: 30, scope: !4039, inlinedAt: !4113)
!4201 = !DILocation(line: 220, column: 28, scope: !4039, inlinedAt: !4113)
!4202 = !DILocation(line: 198, column: 34, scope: !4039, inlinedAt: !4113)
!4203 = !DILocation(line: 199, column: 29, scope: !4039, inlinedAt: !4113)
!4204 = !DILocation(line: 222, column: 36, scope: !4205, inlinedAt: !4113)
!4205 = distinct !DILexicalBlock(scope: !4039, file: !527, line: 222, column: 27)
!4206 = !DILocation(line: 222, column: 27, scope: !4039, inlinedAt: !4113)
!4207 = !DILocation(line: 225, column: 63, scope: !4208, inlinedAt: !4113)
!4208 = distinct !DILexicalBlock(scope: !4205, file: !527, line: 223, column: 25)
!4209 = !DILocation(line: 225, column: 46, scope: !4208, inlinedAt: !4113)
!4210 = !DILocation(line: 226, column: 25, scope: !4208, inlinedAt: !4113)
!4211 = !DILocation(line: 229, column: 36, scope: !4212, inlinedAt: !4113)
!4212 = distinct !DILexicalBlock(scope: !4205, file: !527, line: 228, column: 25)
!4213 = !DILocation(line: 230, column: 73, scope: !4212, inlinedAt: !4113)
!4214 = !DILocation(line: 230, column: 46, scope: !4212, inlinedAt: !4113)
!4215 = !DILocation(line: 232, column: 35, scope: !4216, inlinedAt: !4113)
!4216 = distinct !DILexicalBlock(scope: !4039, file: !527, line: 232, column: 27)
!4217 = !DILocation(line: 232, column: 27, scope: !4039, inlinedAt: !4113)
!4218 = !DILocation(line: 236, column: 27, scope: !4219, inlinedAt: !4113)
!4219 = distinct !DILexicalBlock(scope: !4216, file: !527, line: 233, column: 25)
!4220 = !DILocation(line: 237, column: 27, scope: !4219, inlinedAt: !4113)
!4221 = !DILocation(line: 241, column: 21, scope: !4040, inlinedAt: !4113)
!4222 = !DILocation(line: 239, column: 39, scope: !4039, inlinedAt: !4113)
!4223 = !DILocation(line: 239, column: 50, scope: !4039, inlinedAt: !4113)
!4224 = !DILocation(line: 239, column: 61, scope: !4039, inlinedAt: !4113)
!4225 = !DILocalVariable(name: "__dest", arg: 1, scope: !4226, file: !1297, line: 88, type: !4229)
!4226 = distinct !DISubprogram(name: "strcpy", scope: !1297, file: !1297, line: 88, type: !4227, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !182, variables: !4231)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!6, !4229, !4230}
!4229 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!4230 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !19)
!4231 = !{!4225, !4232}
!4232 = !DILocalVariable(name: "__src", arg: 2, scope: !4226, file: !1297, line: 88, type: !4230)
!4233 = !DILocation(line: 88, column: 1, scope: !4226, inlinedAt: !4234)
!4234 = distinct !DILocation(line: 239, column: 23, scope: !4039, inlinedAt: !4113)
!4235 = !DILocation(line: 90, column: 49, scope: !4226, inlinedAt: !4234)
!4236 = !DILocation(line: 90, column: 10, scope: !4226, inlinedAt: !4234)
!4237 = !DILocation(line: 88, column: 1, scope: !4226, inlinedAt: !4238)
!4238 = distinct !DILocation(line: 240, column: 23, scope: !4039, inlinedAt: !4113)
!4239 = !DILocation(line: 90, column: 49, scope: !4226, inlinedAt: !4238)
!4240 = !DILocation(line: 90, column: 10, scope: !4226, inlinedAt: !4238)
!4241 = !DILocation(line: 193, column: 19, scope: !4040, inlinedAt: !4113)
!4242 = !DILocation(line: 242, column: 19, scope: !4042, inlinedAt: !4113)
!4243 = !DILocation(line: 243, column: 32, scope: !4244, inlinedAt: !4113)
!4244 = distinct !DILexicalBlock(scope: !4042, file: !527, line: 243, column: 23)
!4245 = !DILocation(line: 243, column: 23, scope: !4042, inlinedAt: !4113)
!4246 = !DILocation(line: 247, column: 33, scope: !4247, inlinedAt: !4113)
!4247 = distinct !DILexicalBlock(scope: !4244, file: !527, line: 246, column: 21)
!4248 = !DILocation(line: 247, column: 45, scope: !4247, inlinedAt: !4113)
!4249 = !DILocation(line: 253, column: 11, scope: !4046, inlinedAt: !4113)
!4250 = !DILocation(line: 377, column: 23, scope: !4048, inlinedAt: !4113)
!4251 = !DILocation(line: 378, column: 5, scope: !4048, inlinedAt: !4113)
!4252 = !DILocation(line: 396, column: 15, scope: !4032)
!4253 = !DILocation(line: 590, column: 8, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4114, file: !527, line: 589, column: 3)
!4255 = !DILocation(line: 590, column: 17, scope: !4254)
!4256 = !DILocation(line: 589, column: 3, scope: !4114)
!4257 = !DILocation(line: 592, column: 9, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4254, file: !527, line: 592, column: 9)
!4259 = !DILocation(line: 592, column: 35, scope: !4258)
!4260 = !DILocation(line: 593, column: 9, scope: !4258)
!4261 = !DILocation(line: 593, column: 24, scope: !4258)
!4262 = !DILocation(line: 593, column: 31, scope: !4258)
!4263 = !DILocation(line: 593, column: 34, scope: !4258)
!4264 = !DILocation(line: 593, column: 45, scope: !4258)
!4265 = !DILocation(line: 592, column: 9, scope: !4254)
!4266 = !DILocation(line: 595, column: 29, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4258, file: !527, line: 594, column: 7)
!4268 = !DILocation(line: 595, column: 27, scope: !4267)
!4269 = !DILocation(line: 595, column: 46, scope: !4267)
!4270 = !DILocation(line: 596, column: 9, scope: !4267)
!4271 = !DILocation(line: 591, column: 19, scope: !4254)
!4272 = !DILocation(line: 591, column: 36, scope: !4254)
!4273 = !DILocation(line: 591, column: 16, scope: !4254)
!4274 = !DILocation(line: 591, column: 52, scope: !4254)
!4275 = !DILocation(line: 591, column: 69, scope: !4254)
!4276 = !DILocation(line: 591, column: 49, scope: !4254)
!4277 = distinct !{!4277, !4256, !4278}
!4278 = !DILocation(line: 597, column: 7, scope: !4114)
!4279 = !DILocation(line: 602, column: 7, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4032, file: !527, line: 602, column: 7)
!4281 = !DILocation(line: 602, column: 18, scope: !4280)
!4282 = !DILocation(line: 602, column: 7, scope: !4032)
!4283 = !DILocation(line: 612, column: 3, scope: !4032)
!4284 = distinct !DISubprogram(name: "randint_new", scope: !4285, file: !4285, line: 71, type: !4286, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !615, variables: !4300)
!4285 = !DIFile(filename: "lib/randint.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!4288, !4292}
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "randint_source", file: !4285, line: 54, size: 192, elements: !4290)
!4290 = !{!4291, !4295, !4299}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !4289, file: !4285, line: 57, baseType: !4292, size: 64)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DICompositeType(tag: DW_TAG_structure_type, name: "randread_source", file: !4294, line: 25, flags: DIFlagFwdDecl)
!4294 = !DIFile(filename: "./lib/randread.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "randnum", scope: !4289, file: !4285, line: 64, baseType: !4296, size: 64, offset: 64)
!4296 = !DIDerivedType(tag: DW_TAG_typedef, name: "randint", file: !3040, line: 30, baseType: !4297)
!4297 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !635, line: 112, baseType: !4298)
!4298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1063, line: 62, baseType: !120)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "randmax", scope: !4289, file: !4285, line: 65, baseType: !4296, size: 64, offset: 128)
!4300 = !{!4301, !4302}
!4301 = !DILocalVariable(name: "source", arg: 1, scope: !4284, file: !4285, line: 71, type: !4292)
!4302 = !DILocalVariable(name: "s", scope: !4284, file: !4285, line: 73, type: !4288)
!4303 = !DILocation(line: 71, column: 38, scope: !4284)
!4304 = !DILocation(line: 73, column: 30, scope: !4284)
!4305 = !DILocation(line: 73, column: 26, scope: !4284)
!4306 = !DILocation(line: 74, column: 6, scope: !4284)
!4307 = !DILocation(line: 74, column: 13, scope: !4284)
!4308 = !{!4309, !699, i64 0}
!4309 = !{!"randint_source", !699, i64 0, !1102, i64 8, !1102, i64 16}
!4310 = !DILocation(line: 75, column: 6, scope: !4284)
!4311 = !DILocation(line: 75, column: 14, scope: !4284)
!4312 = !DILocation(line: 76, column: 3, scope: !4284)
!4313 = distinct !DISubprogram(name: "randint_all_new", scope: !4285, file: !4285, line: 84, type: !4314, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !615, variables: !4316)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{!4288, !19, !118}
!4316 = !{!4317, !4318, !4319}
!4317 = !DILocalVariable(name: "name", arg: 1, scope: !4313, file: !4285, line: 84, type: !19)
!4318 = !DILocalVariable(name: "bytes_bound", arg: 2, scope: !4313, file: !4285, line: 84, type: !118)
!4319 = !DILocalVariable(name: "source", scope: !4313, file: !4285, line: 86, type: !4292)
!4320 = !DILocation(line: 84, column: 30, scope: !4313)
!4321 = !DILocation(line: 84, column: 43, scope: !4313)
!4322 = !DILocation(line: 86, column: 36, scope: !4313)
!4323 = !DILocation(line: 86, column: 27, scope: !4313)
!4324 = !DILocation(line: 87, column: 11, scope: !4313)
!4325 = !DILocation(line: 71, column: 38, scope: !4284, inlinedAt: !4326)
!4326 = distinct !DILocation(line: 87, column: 20, scope: !4313)
!4327 = !DILocation(line: 73, column: 30, scope: !4284, inlinedAt: !4326)
!4328 = !DILocation(line: 73, column: 26, scope: !4284, inlinedAt: !4326)
!4329 = !DILocation(line: 74, column: 6, scope: !4284, inlinedAt: !4326)
!4330 = !DILocation(line: 74, column: 13, scope: !4284, inlinedAt: !4326)
!4331 = !DILocation(line: 75, column: 6, scope: !4284, inlinedAt: !4326)
!4332 = !DILocation(line: 75, column: 14, scope: !4284, inlinedAt: !4326)
!4333 = !DILocation(line: 87, column: 3, scope: !4313)
!4334 = distinct !DISubprogram(name: "randint_get_source", scope: !4285, file: !4285, line: 93, type: !4335, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !615, variables: !4339)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!4292, !4337}
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4289)
!4339 = !{!4340}
!4340 = !DILocalVariable(name: "s", arg: 1, scope: !4334, file: !4285, line: 93, type: !4337)
!4341 = !DILocation(line: 93, column: 50, scope: !4334)
!4342 = !DILocation(line: 95, column: 13, scope: !4334)
!4343 = !DILocation(line: 95, column: 3, scope: !4334)
!4344 = distinct !DISubprogram(name: "randint_genmax", scope: !4285, file: !4285, line: 121, type: !4345, isLocal: false, isDefinition: true, scopeLine: 122, flags: DIFlagPrototyped, isOptimized: true, unit: !615, variables: !4347)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!4296, !4288, !4296}
!4347 = !{!4348, !4349, !4350, !4351, !4352, !4353, !4354, !4358, !4359, !4361, !4364, !4365, !4366}
!4348 = !DILocalVariable(name: "s", arg: 1, scope: !4344, file: !4285, line: 121, type: !4288)
!4349 = !DILocalVariable(name: "genmax", arg: 2, scope: !4344, file: !4285, line: 121, type: !4296)
!4350 = !DILocalVariable(name: "source", scope: !4344, file: !4285, line: 123, type: !4292)
!4351 = !DILocalVariable(name: "randnum", scope: !4344, file: !4285, line: 124, type: !4296)
!4352 = !DILocalVariable(name: "randmax", scope: !4344, file: !4285, line: 125, type: !4296)
!4353 = !DILocalVariable(name: "choices", scope: !4344, file: !4285, line: 126, type: !4296)
!4354 = !DILocalVariable(name: "i", scope: !4355, file: !4285, line: 135, type: !118)
!4355 = distinct !DILexicalBlock(scope: !4356, file: !4285, line: 131, column: 9)
!4356 = distinct !DILexicalBlock(scope: !4357, file: !4285, line: 130, column: 11)
!4357 = distinct !DILexicalBlock(scope: !4344, file: !4285, line: 129, column: 5)
!4358 = !DILocalVariable(name: "rmax", scope: !4355, file: !4285, line: 136, type: !4296)
!4359 = !DILocalVariable(name: "buf", scope: !4355, file: !4285, line: 137, type: !4360)
!4360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !525, size: 64, elements: !48)
!4361 = !DILocalVariable(name: "excess_choices", scope: !4362, file: !4285, line: 183, type: !4296)
!4362 = distinct !DILexicalBlock(scope: !4363, file: !4285, line: 172, column: 9)
!4363 = distinct !DILexicalBlock(scope: !4357, file: !4285, line: 166, column: 11)
!4364 = !DILocalVariable(name: "unusable_choices", scope: !4362, file: !4285, line: 184, type: !4296)
!4365 = !DILocalVariable(name: "last_usable_choice", scope: !4362, file: !4285, line: 185, type: !4296)
!4366 = !DILocalVariable(name: "reduced_randnum", scope: !4362, file: !4285, line: 186, type: !4296)
!4367 = !DILocation(line: 121, column: 40, scope: !4344)
!4368 = !DILocation(line: 121, column: 51, scope: !4344)
!4369 = !DILocation(line: 123, column: 39, scope: !4344)
!4370 = !DILocation(line: 123, column: 27, scope: !4344)
!4371 = !DILocation(line: 124, column: 24, scope: !4344)
!4372 = !{!4309, !1102, i64 8}
!4373 = !DILocation(line: 124, column: 11, scope: !4344)
!4374 = !DILocation(line: 125, column: 24, scope: !4344)
!4375 = !{!4309, !1102, i64 16}
!4376 = !DILocation(line: 125, column: 11, scope: !4344)
!4377 = !DILocation(line: 126, column: 28, scope: !4344)
!4378 = !DILocation(line: 126, column: 11, scope: !4344)
!4379 = !DILocation(line: 128, column: 3, scope: !4344)
!4380 = !DILocation(line: 130, column: 19, scope: !4356)
!4381 = !DILocation(line: 130, column: 11, scope: !4357)
!4382 = !DILocation(line: 135, column: 18, scope: !4355)
!4383 = !DILocation(line: 136, column: 19, scope: !4355)
!4384 = !DILocation(line: 137, column: 11, scope: !4355)
!4385 = !DILocation(line: 137, column: 25, scope: !4355)
!4386 = !DILocation(line: 139, column: 11, scope: !4355)
!4387 = distinct !{!4387, !4386, !4388}
!4388 = !DILocation(line: 144, column: 31, scope: !4355)
!4389 = !DILocalVariable(name: "x", arg: 1, scope: !4390, file: !4285, line: 104, type: !4296)
!4390 = distinct !DISubprogram(name: "shift_left", scope: !4285, file: !4285, line: 104, type: !4391, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !615, variables: !4393)
!4391 = !DISubroutineType(types: !4392)
!4392 = !{!4296, !4296}
!4393 = !{!4389}
!4394 = !DILocation(line: 104, column: 43, scope: !4390, inlinedAt: !4395)
!4395 = distinct !DILocation(line: 141, column: 22, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4355, file: !4285, line: 140, column: 13)
!4397 = !DILocation(line: 106, column: 29, scope: !4390, inlinedAt: !4395)
!4398 = !DILocation(line: 141, column: 40, scope: !4396)
!4399 = !DILocation(line: 142, column: 16, scope: !4396)
!4400 = !DILocation(line: 144, column: 23, scope: !4355)
!4401 = !DILocation(line: 143, column: 13, scope: !4396)
!4402 = !DILocation(line: 146, column: 11, scope: !4355)
!4403 = !DILocation(line: 157, column: 11, scope: !4355)
!4404 = distinct !{!4404, !4403, !4405}
!4405 = !DILocation(line: 163, column: 34, scope: !4355)
!4406 = !DILocation(line: 104, column: 43, scope: !4390, inlinedAt: !4407)
!4407 = distinct !DILocation(line: 159, column: 25, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4355, file: !4285, line: 158, column: 13)
!4409 = !DILocation(line: 106, column: 29, scope: !4390, inlinedAt: !4407)
!4410 = !DILocation(line: 159, column: 48, scope: !4408)
!4411 = !DILocation(line: 159, column: 46, scope: !4408)
!4412 = !DILocation(line: 104, column: 43, scope: !4390, inlinedAt: !4413)
!4413 = distinct !DILocation(line: 160, column: 25, scope: !4408)
!4414 = !DILocation(line: 106, column: 29, scope: !4390, inlinedAt: !4413)
!4415 = !DILocation(line: 160, column: 46, scope: !4408)
!4416 = !DILocation(line: 161, column: 16, scope: !4408)
!4417 = !DILocation(line: 163, column: 26, scope: !4355)
!4418 = !DILocation(line: 162, column: 13, scope: !4408)
!4419 = !DILocation(line: 164, column: 9, scope: !4356)
!4420 = !DILocation(line: 164, column: 9, scope: !4355)
!4421 = !DILocation(line: 166, column: 19, scope: !4363)
!4422 = !DILocation(line: 166, column: 11, scope: !4357)
!4423 = !DILocation(line: 169, column: 11, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4363, file: !4285, line: 167, column: 9)
!4425 = !DILocation(line: 168, column: 22, scope: !4424)
!4426 = !DILocation(line: 183, column: 44, scope: !4362)
!4427 = !DILocation(line: 183, column: 19, scope: !4362)
!4428 = !DILocation(line: 184, column: 53, scope: !4362)
!4429 = !DILocation(line: 184, column: 19, scope: !4362)
!4430 = !DILocation(line: 185, column: 48, scope: !4362)
!4431 = !DILocation(line: 185, column: 19, scope: !4362)
!4432 = !DILocation(line: 186, column: 45, scope: !4362)
!4433 = !DILocation(line: 186, column: 19, scope: !4362)
!4434 = !DILocation(line: 188, column: 23, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4362, file: !4285, line: 188, column: 15)
!4436 = !DILocation(line: 198, column: 38, scope: !4362)
!4437 = !DILocation(line: 188, column: 15, scope: !4362)
!4438 = distinct !{!4438, !4379, !4439}
!4439 = !DILocation(line: 200, column: 5, scope: !4344)
!4440 = !DILocation(line: 190, column: 36, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4435, file: !4285, line: 189, column: 13)
!4442 = !DILocation(line: 190, column: 26, scope: !4441)
!4443 = !DILocation(line: 191, column: 43, scope: !4441)
!4444 = !DILocation(line: 191, column: 26, scope: !4441)
!4445 = !DILocation(line: 201, column: 1, scope: !4344)
!4446 = distinct !DISubprogram(name: "randint_free", scope: !4285, file: !4285, line: 206, type: !4447, isLocal: false, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, unit: !615, variables: !4449)
!4447 = !DISubroutineType(types: !4448)
!4448 = !{null, !4288}
!4449 = !{!4450}
!4450 = !DILocalVariable(name: "s", arg: 1, scope: !4446, file: !4285, line: 206, type: !4288)
!4451 = !DILocation(line: 206, column: 38, scope: !4446)
!4452 = !DILocation(line: 208, column: 3, scope: !4446)
!4453 = !DILocation(line: 209, column: 3, scope: !4446)
!4454 = !DILocation(line: 210, column: 1, scope: !4446)
!4455 = distinct !DISubprogram(name: "randint_all_free", scope: !4285, file: !4285, line: 216, type: !4456, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !615, variables: !4458)
!4456 = !DISubroutineType(types: !4457)
!4457 = !{!44, !4288}
!4458 = !{!4459, !4460, !4461}
!4459 = !DILocalVariable(name: "s", arg: 1, scope: !4455, file: !4285, line: 216, type: !4288)
!4460 = !DILocalVariable(name: "r", scope: !4455, file: !4285, line: 218, type: !44)
!4461 = !DILocalVariable(name: "e", scope: !4455, file: !4285, line: 219, type: !44)
!4462 = !DILocation(line: 216, column: 42, scope: !4455)
!4463 = !DILocation(line: 218, column: 29, scope: !4455)
!4464 = !DILocation(line: 218, column: 11, scope: !4455)
!4465 = !DILocation(line: 218, column: 7, scope: !4455)
!4466 = !DILocation(line: 219, column: 11, scope: !4455)
!4467 = !DILocation(line: 219, column: 7, scope: !4455)
!4468 = !DILocation(line: 206, column: 38, scope: !4446, inlinedAt: !4469)
!4469 = distinct !DILocation(line: 220, column: 3, scope: !4455)
!4470 = !DILocation(line: 208, column: 3, scope: !4446, inlinedAt: !4469)
!4471 = !DILocation(line: 209, column: 3, scope: !4446, inlinedAt: !4469)
!4472 = !DILocation(line: 221, column: 9, scope: !4455)
!4473 = !DILocation(line: 222, column: 3, scope: !4455)
!4474 = distinct !DISubprogram(name: "randread_new", scope: !4475, file: !4475, line: 204, type: !4476, isLocal: false, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: true, unit: !617, variables: !4553)
!4475 = !DIFile(filename: "lib/randread.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4476 = !DISubroutineType(types: !4477)
!4477 = !{!4478, !19, !118}
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "randread_source", file: !4475, line: 79, size: 33216, elements: !4480)
!4480 = !{!4481, !4522, !4526, !4527}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !4479, file: !4475, line: 83, baseType: !4482, size: 64)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1034, line: 7, baseType: !4484)
!4484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1036, line: 241, size: 1728, elements: !4485)
!4485 = !{!4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4484, file: !1036, line: 242, baseType: !44, size: 32)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4484, file: !1036, line: 247, baseType: !6, size: 64, offset: 64)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4484, file: !1036, line: 248, baseType: !6, size: 64, offset: 128)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4484, file: !1036, line: 249, baseType: !6, size: 64, offset: 192)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4484, file: !1036, line: 250, baseType: !6, size: 64, offset: 256)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4484, file: !1036, line: 251, baseType: !6, size: 64, offset: 320)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4484, file: !1036, line: 252, baseType: !6, size: 64, offset: 384)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4484, file: !1036, line: 253, baseType: !6, size: 64, offset: 448)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4484, file: !1036, line: 254, baseType: !6, size: 64, offset: 512)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4484, file: !1036, line: 256, baseType: !6, size: 64, offset: 576)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4484, file: !1036, line: 257, baseType: !6, size: 64, offset: 640)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4484, file: !1036, line: 258, baseType: !6, size: 64, offset: 704)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4484, file: !1036, line: 260, baseType: !4499, size: 64, offset: 768)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1036, line: 156, size: 192, elements: !4501)
!4501 = !{!4502, !4503, !4505}
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4500, file: !1036, line: 157, baseType: !4499, size: 64)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4500, file: !1036, line: 158, baseType: !4504, size: 64, offset: 64)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4500, file: !1036, line: 162, baseType: !44, size: 32, offset: 128)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4484, file: !1036, line: 262, baseType: !4504, size: 64, offset: 832)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4484, file: !1036, line: 264, baseType: !44, size: 32, offset: 896)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4484, file: !1036, line: 268, baseType: !44, size: 32, offset: 928)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4484, file: !1036, line: 270, baseType: !1062, size: 64, offset: 960)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4484, file: !1036, line: 274, baseType: !117, size: 16, offset: 1024)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4484, file: !1036, line: 275, baseType: !1067, size: 8, offset: 1040)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4484, file: !1036, line: 276, baseType: !1069, size: 8, offset: 1048)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4484, file: !1036, line: 280, baseType: !1071, size: 64, offset: 1088)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4484, file: !1036, line: 289, baseType: !1074, size: 64, offset: 1152)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4484, file: !1036, line: 297, baseType: !8, size: 64, offset: 1216)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4484, file: !1036, line: 298, baseType: !8, size: 64, offset: 1280)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4484, file: !1036, line: 299, baseType: !8, size: 64, offset: 1344)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4484, file: !1036, line: 300, baseType: !8, size: 64, offset: 1408)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4484, file: !1036, line: 302, baseType: !118, size: 64, offset: 1472)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4484, file: !1036, line: 303, baseType: !44, size: 32, offset: 1536)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4484, file: !1036, line: 305, baseType: !1082, size: 160, offset: 1568)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4479, file: !4475, line: 90, baseType: !4523, size: 64, offset: 64)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = !DISubroutineType(types: !4525)
!4525 = !{null, !1302}
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "handler_arg", scope: !4479, file: !4475, line: 91, baseType: !1302, size: 64, offset: 128)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4479, file: !4475, line: 117, baseType: !4528, size: 33024, offset: 192)
!4528 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4479, file: !4475, line: 96, size: 33024, elements: !4529)
!4529 = !{!4530, !4534}
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !4528, file: !4475, line: 99, baseType: !4531, size: 32768)
!4531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32768, elements: !4532)
!4532 = !{!4533}
!4533 = !DISubrange(count: 4096)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "isaac", scope: !4528, file: !4475, line: 116, baseType: !4535, size: 33024)
!4535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isaac", file: !4475, line: 102, size: 33024, elements: !4536)
!4536 = !{!4537, !4538, !4545}
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !4535, file: !4475, line: 105, baseType: !118, size: 64)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4535, file: !4475, line: 108, baseType: !4539, size: 16576, offset: 64)
!4539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isaac_state", file: !629, line: 56, size: 16576, elements: !4540)
!4540 = !{!4541, !4542, !4543, !4544}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !4539, file: !629, line: 58, baseType: !632, size: 16384)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !4539, file: !629, line: 59, baseType: !633, size: 64, offset: 16384)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4539, file: !629, line: 59, baseType: !633, size: 64, offset: 16448)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !4539, file: !629, line: 59, baseType: !633, size: 64, offset: 16512)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4535, file: !4475, line: 115, baseType: !4546, size: 16384, offset: 16640)
!4546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4535, file: !4475, line: 111, size: 16384, elements: !4547)
!4547 = !{!4548, !4549}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !4546, file: !4475, line: 113, baseType: !632, size: 16384)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4546, file: !4475, line: 114, baseType: !4550, size: 16384)
!4550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !525, size: 16384, elements: !4551)
!4551 = !{!4552}
!4552 = !DISubrange(count: 2048)
!4553 = !{!4554, !4555, !4556, !4559}
!4554 = !DILocalVariable(name: "name", arg: 1, scope: !4474, file: !4475, line: 204, type: !19)
!4555 = !DILocalVariable(name: "bytes_bound", arg: 2, scope: !4474, file: !4475, line: 204, type: !118)
!4556 = !DILocalVariable(name: "source", scope: !4557, file: !4475, line: 210, type: !4482)
!4557 = distinct !DILexicalBlock(scope: !4558, file: !4475, line: 209, column: 5)
!4558 = distinct !DILexicalBlock(scope: !4474, file: !4475, line: 206, column: 7)
!4559 = !DILocalVariable(name: "s", scope: !4557, file: !4475, line: 211, type: !4478)
!4560 = !DILocation(line: 204, column: 27, scope: !4474)
!4561 = !DILocation(line: 204, column: 40, scope: !4474)
!4562 = !DILocation(line: 206, column: 19, scope: !4558)
!4563 = !DILocation(line: 206, column: 7, scope: !4474)
!4564 = !DILocalVariable(name: "source", arg: 1, scope: !4565, file: !4475, line: 137, type: !4482)
!4565 = distinct !DISubprogram(name: "simple_new", scope: !4475, file: !4475, line: 137, type: !4566, isLocal: true, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, unit: !617, variables: !4568)
!4566 = !DISubroutineType(types: !4567)
!4567 = !{!4478, !4482, !1302}
!4568 = !{!4564, !4569, !4570}
!4569 = !DILocalVariable(name: "handler_arg", arg: 2, scope: !4565, file: !4475, line: 137, type: !1302)
!4570 = !DILocalVariable(name: "s", scope: !4565, file: !4475, line: 139, type: !4478)
!4571 = !DILocation(line: 137, column: 19, scope: !4565, inlinedAt: !4572)
!4572 = distinct !DILocation(line: 207, column: 12, scope: !4558)
!4573 = !DILocation(line: 137, column: 39, scope: !4565, inlinedAt: !4572)
!4574 = !DILocation(line: 139, column: 31, scope: !4565, inlinedAt: !4572)
!4575 = !DILocation(line: 139, column: 27, scope: !4565, inlinedAt: !4572)
!4576 = !DILocation(line: 140, column: 6, scope: !4565, inlinedAt: !4572)
!4577 = !DILocation(line: 140, column: 13, scope: !4565, inlinedAt: !4572)
!4578 = !{!4579, !699, i64 0}
!4579 = !{!"randread_source", !699, i64 0, !699, i64 8, !699, i64 16, !700, i64 24}
!4580 = !DILocation(line: 141, column: 6, scope: !4565, inlinedAt: !4572)
!4581 = !DILocation(line: 141, column: 14, scope: !4565, inlinedAt: !4572)
!4582 = !{!4579, !699, i64 8}
!4583 = !DILocation(line: 142, column: 6, scope: !4565, inlinedAt: !4572)
!4584 = !DILocation(line: 142, column: 18, scope: !4565, inlinedAt: !4572)
!4585 = !{!4579, !699, i64 16}
!4586 = !DILocation(line: 207, column: 5, scope: !4558)
!4587 = !DILocation(line: 210, column: 13, scope: !4557)
!4588 = !DILocation(line: 213, column: 11, scope: !4589)
!4589 = distinct !DILexicalBlock(scope: !4557, file: !4475, line: 213, column: 11)
!4590 = !DILocation(line: 213, column: 11, scope: !4557)
!4591 = !DILocation(line: 214, column: 25, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4589, file: !4475, line: 214, column: 13)
!4593 = !DILocation(line: 214, column: 23, scope: !4592)
!4594 = !DILocation(line: 214, column: 13, scope: !4589)
!4595 = !DILocation(line: 137, column: 19, scope: !4565, inlinedAt: !4596)
!4596 = distinct !DILocation(line: 217, column: 11, scope: !4557)
!4597 = !DILocation(line: 137, column: 39, scope: !4565, inlinedAt: !4596)
!4598 = !DILocation(line: 139, column: 31, scope: !4565, inlinedAt: !4596)
!4599 = !DILocation(line: 139, column: 27, scope: !4565, inlinedAt: !4596)
!4600 = !DILocation(line: 140, column: 6, scope: !4565, inlinedAt: !4596)
!4601 = !DILocation(line: 140, column: 13, scope: !4565, inlinedAt: !4596)
!4602 = !DILocation(line: 141, column: 6, scope: !4565, inlinedAt: !4596)
!4603 = !DILocation(line: 141, column: 14, scope: !4565, inlinedAt: !4596)
!4604 = !DILocation(line: 142, column: 6, scope: !4565, inlinedAt: !4596)
!4605 = !DILocation(line: 142, column: 18, scope: !4565, inlinedAt: !4596)
!4606 = !DILocation(line: 211, column: 31, scope: !4557)
!4607 = !DILocation(line: 219, column: 11, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4557, file: !4475, line: 219, column: 11)
!4609 = !DILocation(line: 219, column: 11, scope: !4557)
!4610 = !DILocation(line: 220, column: 44, scope: !4608)
!4611 = !DILocation(line: 220, column: 9, scope: !4608)
!4612 = !DILocation(line: 223, column: 24, scope: !4613)
!4613 = distinct !DILexicalBlock(scope: !4608, file: !4475, line: 222, column: 9)
!4614 = !DILocation(line: 223, column: 33, scope: !4613)
!4615 = !DILocation(line: 224, column: 35, scope: !4613)
!4616 = !DILocalVariable(name: "bufsize", arg: 2, scope: !4617, file: !4475, line: 151, type: !118)
!4617 = distinct !DISubprogram(name: "get_nonce", scope: !4475, file: !4475, line: 151, type: !4618, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !617, variables: !4620)
!4618 = !DISubroutineType(types: !4619)
!4619 = !{null, !8, !118, !118}
!4620 = !{!4621, !4616, !4622, !4623, !4624, !4628, !4629, !4638, !4639, !4644, !4645, !4648, !4649, !4653, !4654, !4657}
!4621 = !DILocalVariable(name: "buffer", arg: 1, scope: !4617, file: !4475, line: 151, type: !8)
!4622 = !DILocalVariable(name: "bytes_bound", arg: 3, scope: !4617, file: !4475, line: 151, type: !118)
!4623 = !DILocalVariable(name: "buf", scope: !4617, file: !4475, line: 153, type: !6)
!4624 = !DILocalVariable(name: "seeded", scope: !4617, file: !4475, line: 154, type: !4625)
!4625 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !4626, line: 109, baseType: !4627)
!4626 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1063, line: 181, baseType: !1064)
!4628 = !DILocalVariable(name: "fd", scope: !4617, file: !4475, line: 157, type: !44)
!4629 = !DILocalVariable(name: "v", scope: !4630, file: !4475, line: 177, type: !4632)
!4630 = distinct !DILexicalBlock(scope: !4631, file: !4475, line: 177, column: 3)
!4631 = distinct !DILexicalBlock(scope: !4617, file: !4475, line: 177, column: 3)
!4632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !4633, line: 8, size: 128, elements: !4634)
!4633 = !DIFile(filename: "/usr/include/bits/types/struct_timeval.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4634 = !{!4635, !4636}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4632, file: !4633, line: 10, baseType: !3197, size: 64)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !4632, file: !4633, line: 11, baseType: !4637, size: 64, offset: 64)
!4637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !1063, line: 150, baseType: !1064)
!4638 = !DILocalVariable(name: "nbytes", scope: !4630, file: !4475, line: 177, type: !118)
!4639 = !DILocalVariable(name: "v", scope: !4640, file: !4475, line: 178, type: !4642)
!4640 = distinct !DILexicalBlock(scope: !4641, file: !4475, line: 178, column: 3)
!4641 = distinct !DILexicalBlock(scope: !4617, file: !4475, line: 178, column: 3)
!4642 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !4626, line: 98, baseType: !4643)
!4643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !1063, line: 142, baseType: !44)
!4644 = !DILocalVariable(name: "nbytes", scope: !4640, file: !4475, line: 178, type: !118)
!4645 = !DILocalVariable(name: "v", scope: !4646, file: !4475, line: 179, type: !4642)
!4646 = distinct !DILexicalBlock(scope: !4647, file: !4475, line: 179, column: 3)
!4647 = distinct !DILexicalBlock(scope: !4617, file: !4475, line: 179, column: 3)
!4648 = !DILocalVariable(name: "nbytes", scope: !4646, file: !4475, line: 179, type: !118)
!4649 = !DILocalVariable(name: "v", scope: !4650, file: !4475, line: 180, type: !4652)
!4650 = distinct !DILexicalBlock(scope: !4651, file: !4475, line: 180, column: 3)
!4651 = distinct !DILexicalBlock(scope: !4617, file: !4475, line: 180, column: 3)
!4652 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !4626, line: 80, baseType: !3182)
!4653 = !DILocalVariable(name: "nbytes", scope: !4650, file: !4475, line: 180, type: !118)
!4654 = !DILocalVariable(name: "v", scope: !4655, file: !4475, line: 181, type: !4652)
!4655 = distinct !DILexicalBlock(scope: !4656, file: !4475, line: 181, column: 3)
!4656 = distinct !DILexicalBlock(scope: !4617, file: !4475, line: 181, column: 3)
!4657 = !DILocalVariable(name: "nbytes", scope: !4655, file: !4475, line: 181, type: !118)
!4658 = !DILocation(line: 151, column: 33, scope: !4617, inlinedAt: !4659)
!4659 = distinct !DILocation(line: 224, column: 11, scope: !4613)
!4660 = !DILocation(line: 154, column: 11, scope: !4617, inlinedAt: !4659)
!4661 = !DILocation(line: 157, column: 12, scope: !4617, inlinedAt: !4659)
!4662 = !DILocation(line: 157, column: 7, scope: !4617, inlinedAt: !4659)
!4663 = !DILocation(line: 158, column: 9, scope: !4664, inlinedAt: !4659)
!4664 = distinct !DILexicalBlock(scope: !4617, file: !4475, line: 158, column: 7)
!4665 = !DILocation(line: 158, column: 7, scope: !4617, inlinedAt: !4659)
!4666 = !DILocation(line: 160, column: 31, scope: !4667, inlinedAt: !4659)
!4667 = distinct !DILexicalBlock(scope: !4664, file: !4475, line: 159, column: 5)
!4668 = !DILocation(line: 160, column: 16, scope: !4667, inlinedAt: !4659)
!4669 = !DILocation(line: 161, column: 11, scope: !4667, inlinedAt: !4659)
!4670 = !DILocation(line: 163, column: 7, scope: !4667, inlinedAt: !4659)
!4671 = !DILocation(line: 177, column: 3, scope: !4631, inlinedAt: !4659)
!4672 = !DILocation(line: 177, column: 3, scope: !4617, inlinedAt: !4659)
!4673 = !DILocation(line: 177, column: 3, scope: !4630, inlinedAt: !4659)
!4674 = !DILocation(line: 178, column: 3, scope: !4641, inlinedAt: !4659)
!4675 = !DILocation(line: 178, column: 3, scope: !4617, inlinedAt: !4659)
!4676 = !DILocation(line: 178, column: 3, scope: !4640, inlinedAt: !4659)
!4677 = !DILocation(line: 179, column: 3, scope: !4647, inlinedAt: !4659)
!4678 = !DILocation(line: 179, column: 3, scope: !4617, inlinedAt: !4659)
!4679 = !DILocation(line: 179, column: 3, scope: !4646, inlinedAt: !4659)
!4680 = !DILocation(line: 180, column: 3, scope: !4651, inlinedAt: !4659)
!4681 = !DILocation(line: 180, column: 3, scope: !4617, inlinedAt: !4659)
!4682 = !DILocation(line: 180, column: 3, scope: !4650, inlinedAt: !4659)
!4683 = !DILocation(line: 181, column: 3, scope: !4656, inlinedAt: !4659)
!4684 = !DILocation(line: 181, column: 3, scope: !4617, inlinedAt: !4659)
!4685 = !DILocation(line: 181, column: 3, scope: !4655, inlinedAt: !4659)
!4686 = !DILocation(line: 226, column: 11, scope: !4613)
!4687 = !DILocation(line: 231, column: 1, scope: !4474)
!4688 = distinct !DISubprogram(name: "randread_error", scope: !4475, file: !4475, line: 124, type: !4524, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !617, variables: !4689)
!4689 = !{!4690}
!4690 = !DILocalVariable(name: "file_name", arg: 1, scope: !4688, file: !4475, line: 124, type: !1302)
!4691 = !DILocation(line: 124, column: 29, scope: !4688)
!4692 = !DILocation(line: 126, column: 7, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4688, file: !4475, line: 126, column: 7)
!4694 = !DILocation(line: 126, column: 7, scope: !4688)
!4695 = !DILocation(line: 127, column: 12, scope: !4693)
!4696 = !DILocation(line: 127, column: 26, scope: !4693)
!4697 = !DILocation(line: 128, column: 18, scope: !4693)
!4698 = !DILocation(line: 128, column: 12, scope: !4693)
!4699 = !DILocation(line: 128, column: 48, scope: !4693)
!4700 = !DILocation(line: 129, column: 12, scope: !4693)
!4701 = !DILocation(line: 127, column: 5, scope: !4693)
!4702 = !DILocation(line: 130, column: 3, scope: !4688)
!4703 = distinct !DISubprogram(name: "randread_set_handler", scope: !4475, file: !4475, line: 242, type: !4704, isLocal: false, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: true, unit: !617, variables: !4706)
!4704 = !DISubroutineType(types: !4705)
!4705 = !{null, !4478, !4523}
!4706 = !{!4707, !4708}
!4707 = !DILocalVariable(name: "s", arg: 1, scope: !4703, file: !4475, line: 242, type: !4478)
!4708 = !DILocalVariable(name: "handler", arg: 2, scope: !4703, file: !4475, line: 242, type: !4523)
!4709 = !DILocation(line: 242, column: 47, scope: !4703)
!4710 = !DILocation(line: 242, column: 57, scope: !4703)
!4711 = !DILocation(line: 244, column: 6, scope: !4703)
!4712 = !DILocation(line: 244, column: 14, scope: !4703)
!4713 = !DILocation(line: 245, column: 1, scope: !4703)
!4714 = distinct !DISubprogram(name: "randread_set_handler_arg", scope: !4475, file: !4475, line: 248, type: !4715, isLocal: false, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: true, unit: !617, variables: !4717)
!4715 = !DISubroutineType(types: !4716)
!4716 = !{null, !4478, !1302}
!4717 = !{!4718, !4719}
!4718 = !DILocalVariable(name: "s", arg: 1, scope: !4714, file: !4475, line: 248, type: !4478)
!4719 = !DILocalVariable(name: "handler_arg", arg: 2, scope: !4714, file: !4475, line: 248, type: !1302)
!4720 = !DILocation(line: 248, column: 51, scope: !4714)
!4721 = !DILocation(line: 248, column: 66, scope: !4714)
!4722 = !DILocation(line: 250, column: 6, scope: !4714)
!4723 = !DILocation(line: 250, column: 18, scope: !4714)
!4724 = !DILocation(line: 251, column: 1, scope: !4714)
!4725 = distinct !DISubprogram(name: "randread", scope: !4475, file: !4475, line: 326, type: !4726, isLocal: false, isDefinition: true, scopeLine: 327, flags: DIFlagPrototyped, isOptimized: true, unit: !617, variables: !4728)
!4726 = !DISubroutineType(types: !4727)
!4727 = !{null, !4478, !8, !118}
!4728 = !{!4729, !4730, !4731}
!4729 = !DILocalVariable(name: "s", arg: 1, scope: !4725, file: !4475, line: 326, type: !4478)
!4730 = !DILocalVariable(name: "buf", arg: 2, scope: !4725, file: !4475, line: 326, type: !8)
!4731 = !DILocalVariable(name: "size", arg: 3, scope: !4725, file: !4475, line: 326, type: !118)
!4732 = !DILocation(line: 326, column: 35, scope: !4725)
!4733 = !DILocation(line: 326, column: 44, scope: !4725)
!4734 = !DILocation(line: 326, column: 56, scope: !4725)
!4735 = !DILocation(line: 328, column: 10, scope: !4736)
!4736 = distinct !DILexicalBlock(scope: !4725, file: !4475, line: 328, column: 7)
!4737 = !DILocation(line: 328, column: 7, scope: !4736)
!4738 = !DILocation(line: 328, column: 7, scope: !4725)
!4739 = !DILocalVariable(name: "s", arg: 1, scope: !4740, file: !4475, line: 258, type: !4478)
!4740 = distinct !DISubprogram(name: "readsource", scope: !4475, file: !4475, line: 258, type: !4741, isLocal: true, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: true, unit: !617, variables: !4743)
!4741 = !DISubroutineType(types: !4742)
!4742 = !{null, !4478, !524, !118}
!4743 = !{!4739, !4744, !4745, !4746, !4748}
!4744 = !DILocalVariable(name: "p", arg: 2, scope: !4740, file: !4475, line: 258, type: !524)
!4745 = !DILocalVariable(name: "size", arg: 3, scope: !4740, file: !4475, line: 258, type: !118)
!4746 = !DILocalVariable(name: "inbytes", scope: !4747, file: !4475, line: 262, type: !118)
!4747 = distinct !DILexicalBlock(scope: !4740, file: !4475, line: 261, column: 5)
!4748 = !DILocalVariable(name: "fread_errno", scope: !4747, file: !4475, line: 263, type: !44)
!4749 = !DILocation(line: 258, column: 37, scope: !4740, inlinedAt: !4750)
!4750 = distinct !DILocation(line: 329, column: 5, scope: !4736)
!4751 = !DILocation(line: 258, column: 55, scope: !4740, inlinedAt: !4750)
!4752 = !DILocation(line: 258, column: 65, scope: !4740, inlinedAt: !4750)
!4753 = !DILocation(line: 262, column: 24, scope: !4747, inlinedAt: !4750)
!4754 = !DILocation(line: 262, column: 14, scope: !4747, inlinedAt: !4750)
!4755 = !DILocation(line: 263, column: 25, scope: !4747, inlinedAt: !4750)
!4756 = !DILocation(line: 265, column: 12, scope: !4747, inlinedAt: !4750)
!4757 = !DILocation(line: 266, column: 16, scope: !4758, inlinedAt: !4750)
!4758 = distinct !DILexicalBlock(scope: !4747, file: !4475, line: 266, column: 11)
!4759 = !DILocation(line: 266, column: 11, scope: !4747, inlinedAt: !4750)
!4760 = !DILocation(line: 264, column: 9, scope: !4747, inlinedAt: !4750)
!4761 = !DILocation(line: 268, column: 16, scope: !4747, inlinedAt: !4750)
!4762 = !DILocalVariable(name: "__stream", arg: 1, scope: !4763, file: !1095, line: 132, type: !4482)
!4763 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1095, file: !1095, line: 132, type: !4764, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !617, variables: !4766)
!4764 = !DISubroutineType(types: !4765)
!4765 = !{!44, !4482}
!4766 = !{!4762}
!4767 = !DILocation(line: 132, column: 1, scope: !4763, inlinedAt: !4768)
!4768 = distinct !DILocation(line: 268, column: 16, scope: !4747, inlinedAt: !4750)
!4769 = !DILocation(line: 134, column: 10, scope: !4763, inlinedAt: !4768)
!4770 = !DILocation(line: 268, column: 13, scope: !4747, inlinedAt: !4750)
!4771 = !DILocation(line: 269, column: 10, scope: !4747, inlinedAt: !4750)
!4772 = !DILocation(line: 269, column: 22, scope: !4747, inlinedAt: !4750)
!4773 = !DILocation(line: 269, column: 7, scope: !4747, inlinedAt: !4750)
!4774 = !DILocation(line: 263, column: 11, scope: !4747, inlinedAt: !4750)
!4775 = distinct !{!4775, !4776, !4777}
!4776 = !DILocation(line: 260, column: 3, scope: !4740)
!4777 = !DILocation(line: 270, column: 5, scope: !4740)
!4778 = !DILocalVariable(name: "isaac", arg: 1, scope: !4779, file: !4475, line: 278, type: !4782)
!4779 = distinct !DISubprogram(name: "readisaac", scope: !4475, file: !4475, line: 278, type: !4780, isLocal: true, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: true, unit: !617, variables: !4783)
!4780 = !DISubroutineType(types: !4781)
!4781 = !{null, !4782, !8, !118}
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4783 = !{!4778, !4784, !4785, !4786, !4787, !4789}
!4784 = !DILocalVariable(name: "p", arg: 2, scope: !4779, file: !4475, line: 278, type: !8)
!4785 = !DILocalVariable(name: "size", arg: 3, scope: !4779, file: !4475, line: 278, type: !118)
!4786 = !DILocalVariable(name: "inbytes", scope: !4779, file: !4475, line: 280, type: !118)
!4787 = !DILocalVariable(name: "char_p", scope: !4788, file: !4475, line: 284, type: !6)
!4788 = distinct !DILexicalBlock(scope: !4779, file: !4475, line: 283, column: 5)
!4789 = !DILocalVariable(name: "wp", scope: !4790, file: !4475, line: 301, type: !639)
!4790 = distinct !DILexicalBlock(scope: !4791, file: !4475, line: 300, column: 9)
!4791 = distinct !DILexicalBlock(scope: !4788, file: !4475, line: 299, column: 11)
!4792 = !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)
!4793 = !DILocation(line: 278, column: 26, scope: !4779, inlinedAt: !4794)
!4794 = distinct !DILocation(line: 331, column: 5, scope: !4736)
!4795 = !DILocation(line: 278, column: 39, scope: !4779, inlinedAt: !4794)
!4796 = !DILocation(line: 278, column: 49, scope: !4779, inlinedAt: !4794)
!4797 = !DILocation(line: 280, column: 27, scope: !4779, inlinedAt: !4794)
!4798 = !{!4799, !1102, i64 0}
!4799 = !{!"isaac", !1102, i64 0, !4800, i64 8, !700, i64 2080}
!4800 = !{!"isaac_state", !700, i64 0, !1102, i64 2048, !1102, i64 2056, !1102, i64 2064}
!4801 = !DILocation(line: 280, column: 10, scope: !4779, inlinedAt: !4794)
!4802 = !DILocation(line: 284, column: 13, scope: !4788, inlinedAt: !4794)
!4803 = !DILocation(line: 286, column: 16, scope: !4804, inlinedAt: !4794)
!4804 = distinct !DILexicalBlock(scope: !4788, file: !4475, line: 286, column: 11)
!4805 = !DILocation(line: 286, column: 11, scope: !4788, inlinedAt: !4794)
!4806 = !DILocation(line: 288, column: 11, scope: !4807, inlinedAt: !4794)
!4807 = distinct !DILexicalBlock(scope: !4804, file: !4475, line: 287, column: 9)
!4808 = !DILocation(line: 289, column: 37, scope: !4807, inlinedAt: !4794)
!4809 = !DILocation(line: 290, column: 11, scope: !4807, inlinedAt: !4794)
!4810 = !DILocation(line: 293, column: 7, scope: !4788, inlinedAt: !4794)
!4811 = !DILocation(line: 294, column: 18, scope: !4788, inlinedAt: !4794)
!4812 = !DILocation(line: 295, column: 12, scope: !4788, inlinedAt: !4794)
!4813 = !DILocation(line: 299, column: 11, scope: !4791, inlinedAt: !4794)
!4814 = !DILocation(line: 299, column: 11, scope: !4788, inlinedAt: !4794)
!4815 = !DILocation(line: 301, column: 28, scope: !4790, inlinedAt: !4794)
!4816 = !DILocation(line: 301, column: 23, scope: !4790, inlinedAt: !4794)
!4817 = !DILocation(line: 302, column: 30, scope: !4790, inlinedAt: !4794)
!4818 = !DILocation(line: 302, column: 11, scope: !4790, inlinedAt: !4794)
!4819 = !DILocation(line: 304, column: 15, scope: !4820, inlinedAt: !4794)
!4820 = distinct !DILexicalBlock(scope: !4790, file: !4475, line: 303, column: 13)
!4821 = !DILocation(line: 306, column: 20, scope: !4820, inlinedAt: !4794)
!4822 = !DILocation(line: 307, column: 24, scope: !4823, inlinedAt: !4794)
!4823 = distinct !DILexicalBlock(scope: !4820, file: !4475, line: 307, column: 19)
!4824 = !DILocation(line: 307, column: 19, scope: !4820, inlinedAt: !4794)
!4825 = !DILocation(line: 305, column: 18, scope: !4820, inlinedAt: !4794)
!4826 = distinct !{!4826, !4827, !4828}
!4827 = !DILocation(line: 302, column: 11, scope: !4790)
!4828 = !DILocation(line: 312, column: 13, scope: !4790)
!4829 = !DILocation(line: 313, column: 15, scope: !4790, inlinedAt: !4794)
!4830 = !DILocation(line: 316, column: 7, scope: !4788, inlinedAt: !4794)
!4831 = distinct !{!4831, !4832, !4833}
!4832 = !DILocation(line: 282, column: 3, scope: !4779)
!4833 = !DILocation(line: 318, column: 5, scope: !4779)
!4834 = !DILocation(line: 332, column: 1, scope: !4725)
!4835 = distinct !DISubprogram(name: "randread_free", scope: !4475, file: !4475, line: 341, type: !4836, isLocal: false, isDefinition: true, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: true, unit: !617, variables: !4838)
!4836 = !DISubroutineType(types: !4837)
!4837 = !{!44, !4478}
!4838 = !{!4839, !4840}
!4839 = !DILocalVariable(name: "s", arg: 1, scope: !4835, file: !4475, line: 341, type: !4478)
!4840 = !DILocalVariable(name: "source", scope: !4835, file: !4475, line: 343, type: !4482)
!4841 = !DILocation(line: 341, column: 40, scope: !4835)
!4842 = !DILocation(line: 343, column: 21, scope: !4835)
!4843 = !DILocation(line: 343, column: 9, scope: !4835)
!4844 = !DILocation(line: 344, column: 3, scope: !4835)
!4845 = !DILocation(line: 345, column: 3, scope: !4835)
!4846 = !DILocation(line: 346, column: 11, scope: !4835)
!4847 = !DILocation(line: 346, column: 20, scope: !4835)
!4848 = !DILocation(line: 346, column: 3, scope: !4835)
!4849 = !DILocation(line: 97, column: 35, scope: !624)
!4850 = !DILocation(line: 97, column: 49, scope: !624)
!4851 = !DILocation(line: 100, column: 21, scope: !624)
!4852 = !{!4800, !1102, i64 2048}
!4853 = !DILocation(line: 100, column: 14, scope: !624)
!4854 = !DILocation(line: 101, column: 21, scope: !624)
!4855 = !{!4800, !1102, i64 2056}
!4856 = !DILocation(line: 101, column: 31, scope: !624)
!4857 = !DILocation(line: 101, column: 26, scope: !624)
!4858 = !{!4800, !1102, i64 2064}
!4859 = !DILocation(line: 101, column: 23, scope: !624)
!4860 = !DILocation(line: 101, column: 14, scope: !624)
!4861 = !DILocation(line: 104, column: 19, scope: !624)
!4862 = !DILocation(line: 104, column: 15, scope: !624)
!4863 = !DILocation(line: 105, column: 15, scope: !624)
!4864 = !DILocation(line: 123, column: 3, scope: !624)
!4865 = distinct !{!4865, !4864, !4866}
!4866 = !DILocation(line: 131, column: 32, scope: !624)
!4867 = !DILocation(line: 125, column: 7, scope: !648)
!4868 = !DILocalVariable(name: "m", arg: 1, scope: !4869, file: !623, line: 75, type: !4872)
!4869 = distinct !DISubprogram(name: "ind", scope: !623, file: !623, line: 75, type: !4870, isLocal: true, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, unit: !619, variables: !4874)
!4870 = !DISubroutineType(types: !4871)
!4871 = !{!633, !4872, !633}
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4873, size: 64)
!4873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !633)
!4874 = !{!4868, !4875, !4876, !4879, !4880, !4881}
!4875 = !DILocalVariable(name: "x", arg: 2, scope: !4869, file: !623, line: 75, type: !633)
!4876 = !DILocalVariable(name: "void_m", scope: !4877, file: !623, line: 82, type: !1302)
!4877 = distinct !DILexicalBlock(scope: !4878, file: !623, line: 78, column: 5)
!4878 = distinct !DILexicalBlock(scope: !4869, file: !623, line: 77, column: 7)
!4879 = !DILocalVariable(name: "base_p", scope: !4877, file: !623, line: 83, type: !19)
!4880 = !DILocalVariable(name: "word_p", scope: !4877, file: !623, line: 84, type: !1302)
!4881 = !DILocalVariable(name: "p", scope: !4877, file: !623, line: 85, type: !4872)
!4882 = !DILocation(line: 75, column: 24, scope: !4869, inlinedAt: !4883)
!4883 = distinct !DILocation(line: 125, column: 7, scope: !648)
!4884 = !DILocation(line: 75, column: 38, scope: !4869, inlinedAt: !4883)
!4885 = !DILocation(line: 82, column: 19, scope: !4877, inlinedAt: !4883)
!4886 = !DILocation(line: 83, column: 19, scope: !4877, inlinedAt: !4883)
!4887 = !DILocation(line: 84, column: 40, scope: !4877, inlinedAt: !4883)
!4888 = !DILocation(line: 84, column: 35, scope: !4877, inlinedAt: !4883)
!4889 = !DILocation(line: 84, column: 19, scope: !4877, inlinedAt: !4883)
!4890 = !DILocation(line: 85, column: 29, scope: !4877, inlinedAt: !4883)
!4891 = !DILocation(line: 85, column: 25, scope: !4877, inlinedAt: !4883)
!4892 = !DILocation(line: 86, column: 14, scope: !4877, inlinedAt: !4883)
!4893 = !DILocation(line: 75, column: 24, scope: !4869, inlinedAt: !4894)
!4894 = distinct !DILocation(line: 125, column: 7, scope: !648)
!4895 = !DILocation(line: 75, column: 38, scope: !4869, inlinedAt: !4894)
!4896 = !DILocation(line: 82, column: 19, scope: !4877, inlinedAt: !4894)
!4897 = !DILocation(line: 83, column: 19, scope: !4877, inlinedAt: !4894)
!4898 = !DILocation(line: 84, column: 40, scope: !4877, inlinedAt: !4894)
!4899 = !DILocation(line: 84, column: 35, scope: !4877, inlinedAt: !4894)
!4900 = !DILocation(line: 84, column: 19, scope: !4877, inlinedAt: !4894)
!4901 = !DILocation(line: 85, column: 29, scope: !4877, inlinedAt: !4894)
!4902 = !DILocation(line: 85, column: 25, scope: !4877, inlinedAt: !4894)
!4903 = !DILocation(line: 86, column: 14, scope: !4877, inlinedAt: !4894)
!4904 = !DILocation(line: 126, column: 7, scope: !652)
!4905 = !DILocation(line: 75, column: 24, scope: !4869, inlinedAt: !4906)
!4906 = distinct !DILocation(line: 126, column: 7, scope: !652)
!4907 = !DILocation(line: 75, column: 38, scope: !4869, inlinedAt: !4906)
!4908 = !DILocation(line: 82, column: 19, scope: !4877, inlinedAt: !4906)
!4909 = !DILocation(line: 83, column: 19, scope: !4877, inlinedAt: !4906)
!4910 = !DILocation(line: 84, column: 40, scope: !4877, inlinedAt: !4906)
!4911 = !DILocation(line: 84, column: 35, scope: !4877, inlinedAt: !4906)
!4912 = !DILocation(line: 84, column: 19, scope: !4877, inlinedAt: !4906)
!4913 = !DILocation(line: 85, column: 29, scope: !4877, inlinedAt: !4906)
!4914 = !DILocation(line: 85, column: 25, scope: !4877, inlinedAt: !4906)
!4915 = !DILocation(line: 86, column: 14, scope: !4877, inlinedAt: !4906)
!4916 = !DILocation(line: 75, column: 24, scope: !4869, inlinedAt: !4917)
!4917 = distinct !DILocation(line: 126, column: 7, scope: !652)
!4918 = !DILocation(line: 75, column: 38, scope: !4869, inlinedAt: !4917)
!4919 = !DILocation(line: 82, column: 19, scope: !4877, inlinedAt: !4917)
!4920 = !DILocation(line: 83, column: 19, scope: !4877, inlinedAt: !4917)
!4921 = !DILocation(line: 84, column: 40, scope: !4877, inlinedAt: !4917)
!4922 = !DILocation(line: 84, column: 35, scope: !4877, inlinedAt: !4917)
!4923 = !DILocation(line: 84, column: 19, scope: !4877, inlinedAt: !4917)
!4924 = !DILocation(line: 85, column: 29, scope: !4877, inlinedAt: !4917)
!4925 = !DILocation(line: 85, column: 25, scope: !4877, inlinedAt: !4917)
!4926 = !DILocation(line: 86, column: 14, scope: !4877, inlinedAt: !4917)
!4927 = !DILocation(line: 127, column: 7, scope: !655)
!4928 = !DILocation(line: 75, column: 24, scope: !4869, inlinedAt: !4929)
!4929 = distinct !DILocation(line: 127, column: 7, scope: !655)
!4930 = !DILocation(line: 75, column: 38, scope: !4869, inlinedAt: !4929)
!4931 = !DILocation(line: 82, column: 19, scope: !4877, inlinedAt: !4929)
!4932 = !DILocation(line: 83, column: 19, scope: !4877, inlinedAt: !4929)
!4933 = !DILocation(line: 84, column: 40, scope: !4877, inlinedAt: !4929)
!4934 = !DILocation(line: 84, column: 35, scope: !4877, inlinedAt: !4929)
!4935 = !DILocation(line: 84, column: 19, scope: !4877, inlinedAt: !4929)
!4936 = !DILocation(line: 85, column: 29, scope: !4877, inlinedAt: !4929)
!4937 = !DILocation(line: 85, column: 25, scope: !4877, inlinedAt: !4929)
!4938 = !DILocation(line: 86, column: 14, scope: !4877, inlinedAt: !4929)
!4939 = !DILocation(line: 75, column: 24, scope: !4869, inlinedAt: !4940)
!4940 = distinct !DILocation(line: 127, column: 7, scope: !655)
!4941 = !DILocation(line: 75, column: 38, scope: !4869, inlinedAt: !4940)
!4942 = !DILocation(line: 82, column: 19, scope: !4877, inlinedAt: !4940)
!4943 = !DILocation(line: 83, column: 19, scope: !4877, inlinedAt: !4940)
!4944 = !DILocation(line: 84, column: 40, scope: !4877, inlinedAt: !4940)
!4945 = !DILocation(line: 84, column: 35, scope: !4877, inlinedAt: !4940)
!4946 = !DILocation(line: 84, column: 19, scope: !4877, inlinedAt: !4940)
!4947 = !DILocation(line: 85, column: 29, scope: !4877, inlinedAt: !4940)
!4948 = !DILocation(line: 85, column: 25, scope: !4877, inlinedAt: !4940)
!4949 = !DILocation(line: 86, column: 14, scope: !4877, inlinedAt: !4940)
!4950 = !DILocation(line: 128, column: 7, scope: !658)
!4951 = !DILocation(line: 75, column: 24, scope: !4869, inlinedAt: !4952)
!4952 = distinct !DILocation(line: 128, column: 7, scope: !658)
!4953 = !DILocation(line: 75, column: 38, scope: !4869, inlinedAt: !4952)
!4954 = !DILocation(line: 82, column: 19, scope: !4877, inlinedAt: !4952)
!4955 = !DILocation(line: 83, column: 19, scope: !4877, inlinedAt: !4952)
!4956 = !DILocation(line: 84, column: 40, scope: !4877, inlinedAt: !4952)
!4957 = !DILocation(line: 84, column: 35, scope: !4877, inlinedAt: !4952)
!4958 = !DILocation(line: 84, column: 19, scope: !4877, inlinedAt: !4952)
!4959 = !DILocation(line: 85, column: 29, scope: !4877, inlinedAt: !4952)
!4960 = !DILocation(line: 85, column: 25, scope: !4877, inlinedAt: !4952)
!4961 = !DILocation(line: 86, column: 14, scope: !4877, inlinedAt: !4952)
!4962 = !DILocation(line: 75, column: 24, scope: !4869, inlinedAt: !4963)
!4963 = distinct !DILocation(line: 128, column: 7, scope: !658)
!4964 = !DILocation(line: 75, column: 38, scope: !4869, inlinedAt: !4963)
!4965 = !DILocation(line: 82, column: 19, scope: !4877, inlinedAt: !4963)
!4966 = !DILocation(line: 83, column: 19, scope: !4877, inlinedAt: !4963)
!4967 = !DILocation(line: 84, column: 40, scope: !4877, inlinedAt: !4963)
!4968 = !DILocation(line: 84, column: 35, scope: !4877, inlinedAt: !4963)
!4969 = !DILocation(line: 84, column: 19, scope: !4877, inlinedAt: !4963)
!4970 = !DILocation(line: 85, column: 29, scope: !4877, inlinedAt: !4963)
!4971 = !DILocation(line: 85, column: 25, scope: !4877, inlinedAt: !4963)
!4972 = !DILocation(line: 86, column: 14, scope: !4877, inlinedAt: !4963)
!4973 = !DILocation(line: 129, column: 9, scope: !649)
!4974 = !DILocation(line: 131, column: 13, scope: !624)
!4975 = !DILocation(line: 131, column: 19, scope: !624)
!4976 = !DILocation(line: 130, column: 5, scope: !649)
!4977 = !DILocation(line: 133, column: 3, scope: !624)
!4978 = distinct !{!4978, !4977, !4979}
!4979 = !DILocation(line: 141, column: 39, scope: !624)
!4980 = !DILocation(line: 135, column: 7, scope: !661)
!4981 = !DILocation(line: 75, column: 24, scope: !4869, inlinedAt: !4982)
!4982 = distinct !DILocation(line: 135, column: 7, scope: !661)
!4983 = !DILocation(line: 75, column: 38, scope: !4869, inlinedAt: !4982)
!4984 = !DILocation(line: 82, column: 19, scope: !4877, inlinedAt: !4982)
!4985 = !DILocation(line: 83, column: 19, scope: !4877, inlinedAt: !4982)
!4986 = !DILocation(line: 84, column: 40, scope: !4877, inlinedAt: !4982)
!4987 = !DILocation(line: 84, column: 35, scope: !4877, inlinedAt: !4982)
!4988 = !DILocation(line: 84, column: 19, scope: !4877, inlinedAt: !4982)
!4989 = !DILocation(line: 85, column: 29, scope: !4877, inlinedAt: !4982)
!4990 = !DILocation(line: 85, column: 25, scope: !4877, inlinedAt: !4982)
!4991 = !DILocation(line: 86, column: 14, scope: !4877, inlinedAt: !4982)
!4992 = !DILocation(line: 75, column: 24, scope: !4869, inlinedAt: !4993)
!4993 = distinct !DILocation(line: 135, column: 7, scope: !661)
!4994 = !DILocation(line: 75, column: 38, scope: !4869, inlinedAt: !4993)
!4995 = !DILocation(line: 82, column: 19, scope: !4877, inlinedAt: !4993)
!4996 = !DILocation(line: 83, column: 19, scope: !4877, inlinedAt: !4993)
!4997 = !DILocation(line: 84, column: 40, scope: !4877, inlinedAt: !4993)
!4998 = !DILocation(line: 84, column: 35, scope: !4877, inlinedAt: !4993)
!4999 = !DILocation(line: 84, column: 19, scope: !4877, inlinedAt: !4993)
!5000 = !DILocation(line: 85, column: 29, scope: !4877, inlinedAt: !4993)
!5001 = !DILocation(line: 85, column: 25, scope: !4877, inlinedAt: !4993)
!5002 = !DILocation(line: 86, column: 14, scope: !4877, inlinedAt: !4993)
!5003 = !DILocation(line: 136, column: 7, scope: !665)
!5004 = !DILocation(line: 75, column: 24, scope: !4869, inlinedAt: !5005)
!5005 = distinct !DILocation(line: 136, column: 7, scope: !665)
!5006 = !DILocation(line: 75, column: 38, scope: !4869, inlinedAt: !5005)
!5007 = !DILocation(line: 82, column: 19, scope: !4877, inlinedAt: !5005)
!5008 = !DILocation(line: 83, column: 19, scope: !4877, inlinedAt: !5005)
!5009 = !DILocation(line: 84, column: 40, scope: !4877, inlinedAt: !5005)
!5010 = !DILocation(line: 84, column: 35, scope: !4877, inlinedAt: !5005)
!5011 = !DILocation(line: 84, column: 19, scope: !4877, inlinedAt: !5005)
!5012 = !DILocation(line: 85, column: 29, scope: !4877, inlinedAt: !5005)
!5013 = !DILocation(line: 85, column: 25, scope: !4877, inlinedAt: !5005)
!5014 = !DILocation(line: 86, column: 14, scope: !4877, inlinedAt: !5005)
!5015 = !DILocation(line: 75, column: 24, scope: !4869, inlinedAt: !5016)
!5016 = distinct !DILocation(line: 136, column: 7, scope: !665)
!5017 = !DILocation(line: 75, column: 38, scope: !4869, inlinedAt: !5016)
!5018 = !DILocation(line: 82, column: 19, scope: !4877, inlinedAt: !5016)
!5019 = !DILocation(line: 83, column: 19, scope: !4877, inlinedAt: !5016)
!5020 = !DILocation(line: 84, column: 40, scope: !4877, inlinedAt: !5016)
!5021 = !DILocation(line: 84, column: 35, scope: !4877, inlinedAt: !5016)
!5022 = !DILocation(line: 84, column: 19, scope: !4877, inlinedAt: !5016)
!5023 = !DILocation(line: 85, column: 29, scope: !4877, inlinedAt: !5016)
!5024 = !DILocation(line: 85, column: 25, scope: !4877, inlinedAt: !5016)
!5025 = !DILocation(line: 86, column: 14, scope: !4877, inlinedAt: !5016)
!5026 = !DILocation(line: 137, column: 7, scope: !668)
!5027 = !DILocation(line: 75, column: 24, scope: !4869, inlinedAt: !5028)
!5028 = distinct !DILocation(line: 137, column: 7, scope: !668)
!5029 = !DILocation(line: 75, column: 38, scope: !4869, inlinedAt: !5028)
!5030 = !DILocation(line: 82, column: 19, scope: !4877, inlinedAt: !5028)
!5031 = !DILocation(line: 83, column: 19, scope: !4877, inlinedAt: !5028)
!5032 = !DILocation(line: 84, column: 40, scope: !4877, inlinedAt: !5028)
!5033 = !DILocation(line: 84, column: 35, scope: !4877, inlinedAt: !5028)
!5034 = !DILocation(line: 84, column: 19, scope: !4877, inlinedAt: !5028)
!5035 = !DILocation(line: 85, column: 29, scope: !4877, inlinedAt: !5028)
!5036 = !DILocation(line: 85, column: 25, scope: !4877, inlinedAt: !5028)
!5037 = !DILocation(line: 86, column: 14, scope: !4877, inlinedAt: !5028)
!5038 = !DILocation(line: 75, column: 24, scope: !4869, inlinedAt: !5039)
!5039 = distinct !DILocation(line: 137, column: 7, scope: !668)
!5040 = !DILocation(line: 75, column: 38, scope: !4869, inlinedAt: !5039)
!5041 = !DILocation(line: 82, column: 19, scope: !4877, inlinedAt: !5039)
!5042 = !DILocation(line: 83, column: 19, scope: !4877, inlinedAt: !5039)
!5043 = !DILocation(line: 84, column: 40, scope: !4877, inlinedAt: !5039)
!5044 = !DILocation(line: 84, column: 35, scope: !4877, inlinedAt: !5039)
!5045 = !DILocation(line: 84, column: 19, scope: !4877, inlinedAt: !5039)
!5046 = !DILocation(line: 85, column: 29, scope: !4877, inlinedAt: !5039)
!5047 = !DILocation(line: 85, column: 25, scope: !4877, inlinedAt: !5039)
!5048 = !DILocation(line: 86, column: 14, scope: !4877, inlinedAt: !5039)
!5049 = !DILocation(line: 138, column: 7, scope: !671)
!5050 = !DILocation(line: 75, column: 24, scope: !4869, inlinedAt: !5051)
!5051 = distinct !DILocation(line: 138, column: 7, scope: !671)
!5052 = !DILocation(line: 75, column: 38, scope: !4869, inlinedAt: !5051)
!5053 = !DILocation(line: 82, column: 19, scope: !4877, inlinedAt: !5051)
!5054 = !DILocation(line: 83, column: 19, scope: !4877, inlinedAt: !5051)
!5055 = !DILocation(line: 84, column: 40, scope: !4877, inlinedAt: !5051)
!5056 = !DILocation(line: 84, column: 35, scope: !4877, inlinedAt: !5051)
!5057 = !DILocation(line: 84, column: 19, scope: !4877, inlinedAt: !5051)
!5058 = !DILocation(line: 85, column: 29, scope: !4877, inlinedAt: !5051)
!5059 = !DILocation(line: 85, column: 25, scope: !4877, inlinedAt: !5051)
!5060 = !DILocation(line: 86, column: 14, scope: !4877, inlinedAt: !5051)
!5061 = !DILocation(line: 75, column: 24, scope: !4869, inlinedAt: !5062)
!5062 = distinct !DILocation(line: 138, column: 7, scope: !671)
!5063 = !DILocation(line: 75, column: 38, scope: !4869, inlinedAt: !5062)
!5064 = !DILocation(line: 82, column: 19, scope: !4877, inlinedAt: !5062)
!5065 = !DILocation(line: 83, column: 19, scope: !4877, inlinedAt: !5062)
!5066 = !DILocation(line: 84, column: 40, scope: !4877, inlinedAt: !5062)
!5067 = !DILocation(line: 84, column: 35, scope: !4877, inlinedAt: !5062)
!5068 = !DILocation(line: 84, column: 19, scope: !4877, inlinedAt: !5062)
!5069 = !DILocation(line: 85, column: 29, scope: !4877, inlinedAt: !5062)
!5070 = !DILocation(line: 85, column: 25, scope: !4877, inlinedAt: !5062)
!5071 = !DILocation(line: 86, column: 14, scope: !4877, inlinedAt: !5062)
!5072 = !DILocation(line: 139, column: 9, scope: !662)
!5073 = !DILocation(line: 141, column: 13, scope: !624)
!5074 = !DILocation(line: 141, column: 19, scope: !624)
!5075 = !DILocation(line: 140, column: 5, scope: !662)
!5076 = !DILocation(line: 143, column: 8, scope: !624)
!5077 = !DILocation(line: 144, column: 8, scope: !624)
!5078 = !DILocation(line: 145, column: 1, scope: !624)
!5079 = distinct !DISubprogram(name: "isaac_seed", scope: !623, file: !623, line: 255, type: !5080, isLocal: false, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, unit: !619, variables: !5082)
!5080 = !DISubroutineType(types: !5081)
!5081 = !{null, !627}
!5082 = !{!5083, !5084, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5092, !5094}
!5083 = !DILocalVariable(name: "s", arg: 1, scope: !5079, file: !623, line: 255, type: !627)
!5084 = !DILocalVariable(name: "a", scope: !5079, file: !623, line: 257, type: !633)
!5085 = !DILocalVariable(name: "b", scope: !5079, file: !623, line: 258, type: !633)
!5086 = !DILocalVariable(name: "c", scope: !5079, file: !623, line: 259, type: !633)
!5087 = !DILocalVariable(name: "d", scope: !5079, file: !623, line: 260, type: !633)
!5088 = !DILocalVariable(name: "e", scope: !5079, file: !623, line: 261, type: !633)
!5089 = !DILocalVariable(name: "f", scope: !5079, file: !623, line: 262, type: !633)
!5090 = !DILocalVariable(name: "g", scope: !5079, file: !623, line: 263, type: !633)
!5091 = !DILocalVariable(name: "h", scope: !5079, file: !623, line: 264, type: !633)
!5092 = !DILocalVariable(name: "i", scope: !5093, file: !623, line: 276, type: !44)
!5093 = distinct !DILexicalBlock(scope: !5079, file: !623, line: 276, column: 3)
!5094 = !DILocalVariable(name: "i", scope: !5095, file: !623, line: 277, type: !44)
!5095 = distinct !DILexicalBlock(scope: !5079, file: !623, line: 277, column: 3)
!5096 = !DILocation(line: 255, column: 33, scope: !5079)
!5097 = !DILocation(line: 257, column: 14, scope: !5079)
!5098 = !DILocation(line: 258, column: 14, scope: !5079)
!5099 = !DILocation(line: 259, column: 14, scope: !5079)
!5100 = !DILocation(line: 260, column: 14, scope: !5079)
!5101 = !DILocation(line: 261, column: 14, scope: !5079)
!5102 = !DILocation(line: 262, column: 14, scope: !5079)
!5103 = !DILocation(line: 263, column: 14, scope: !5079)
!5104 = !DILocation(line: 264, column: 14, scope: !5079)
!5105 = !DILocation(line: 276, column: 3, scope: !5093)
!5106 = !DILocation(line: 276, column: 3, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5093, file: !623, line: 276, column: 3)
!5108 = !DILocation(line: 276, column: 3, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5110, file: !623, line: 276, column: 3)
!5110 = distinct !DILexicalBlock(scope: !5107, file: !623, line: 276, column: 3)
!5111 = !DILocation(line: 276, column: 3, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5109, file: !623, line: 276, column: 3)
!5113 = !DILocation(line: 276, column: 3, scope: !5110)
!5114 = distinct !{!5114, !5106, !5106}
!5115 = !DILocation(line: 277, column: 3, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5117, file: !623, line: 277, column: 3)
!5117 = distinct !DILexicalBlock(scope: !5118, file: !623, line: 277, column: 3)
!5118 = distinct !DILexicalBlock(scope: !5095, file: !623, line: 277, column: 3)
!5119 = !DILocation(line: 277, column: 3, scope: !5095)
!5120 = !DILocation(line: 277, column: 3, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5116, file: !623, line: 277, column: 3)
!5122 = !DILocation(line: 277, column: 3, scope: !5117)
!5123 = !DILocation(line: 277, column: 3, scope: !5118)
!5124 = distinct !{!5124, !5123, !5123}
!5125 = !DILocation(line: 279, column: 6, scope: !5079)
!5126 = !DILocation(line: 280, column: 1, scope: !5079)
!5127 = !DILocation(line: 279, column: 15, scope: !5079)
!5128 = distinct !DISubprogram(name: "fopen_safer", scope: !5129, file: !5129, line: 31, type: !5130, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !676, variables: !5172)
!5129 = !DIFile(filename: "lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5130 = !DISubroutineType(types: !5131)
!5131 = !{!5132, !19, !19}
!5132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5133, size: 64)
!5133 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1034, line: 7, baseType: !5134)
!5134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1036, line: 241, size: 1728, elements: !5135)
!5135 = !{!5136, !5137, !5138, !5139, !5140, !5141, !5142, !5143, !5144, !5145, !5146, !5147, !5148, !5156, !5157, !5158, !5159, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170, !5171}
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5134, file: !1036, line: 242, baseType: !44, size: 32)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5134, file: !1036, line: 247, baseType: !6, size: 64, offset: 64)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5134, file: !1036, line: 248, baseType: !6, size: 64, offset: 128)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5134, file: !1036, line: 249, baseType: !6, size: 64, offset: 192)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5134, file: !1036, line: 250, baseType: !6, size: 64, offset: 256)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5134, file: !1036, line: 251, baseType: !6, size: 64, offset: 320)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5134, file: !1036, line: 252, baseType: !6, size: 64, offset: 384)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5134, file: !1036, line: 253, baseType: !6, size: 64, offset: 448)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5134, file: !1036, line: 254, baseType: !6, size: 64, offset: 512)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5134, file: !1036, line: 256, baseType: !6, size: 64, offset: 576)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5134, file: !1036, line: 257, baseType: !6, size: 64, offset: 640)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5134, file: !1036, line: 258, baseType: !6, size: 64, offset: 704)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5134, file: !1036, line: 260, baseType: !5149, size: 64, offset: 768)
!5149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5150, size: 64)
!5150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1036, line: 156, size: 192, elements: !5151)
!5151 = !{!5152, !5153, !5155}
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5150, file: !1036, line: 157, baseType: !5149, size: 64)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5150, file: !1036, line: 158, baseType: !5154, size: 64, offset: 64)
!5154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5134, size: 64)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5150, file: !1036, line: 162, baseType: !44, size: 32, offset: 128)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5134, file: !1036, line: 262, baseType: !5154, size: 64, offset: 832)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5134, file: !1036, line: 264, baseType: !44, size: 32, offset: 896)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5134, file: !1036, line: 268, baseType: !44, size: 32, offset: 928)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5134, file: !1036, line: 270, baseType: !1062, size: 64, offset: 960)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5134, file: !1036, line: 274, baseType: !117, size: 16, offset: 1024)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5134, file: !1036, line: 275, baseType: !1067, size: 8, offset: 1040)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5134, file: !1036, line: 276, baseType: !1069, size: 8, offset: 1048)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5134, file: !1036, line: 280, baseType: !1071, size: 64, offset: 1088)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5134, file: !1036, line: 289, baseType: !1074, size: 64, offset: 1152)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5134, file: !1036, line: 297, baseType: !8, size: 64, offset: 1216)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5134, file: !1036, line: 298, baseType: !8, size: 64, offset: 1280)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5134, file: !1036, line: 299, baseType: !8, size: 64, offset: 1344)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5134, file: !1036, line: 300, baseType: !8, size: 64, offset: 1408)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5134, file: !1036, line: 302, baseType: !118, size: 64, offset: 1472)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5134, file: !1036, line: 303, baseType: !44, size: 32, offset: 1536)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5134, file: !1036, line: 305, baseType: !1082, size: 160, offset: 1568)
!5172 = !{!5173, !5174, !5175, !5176, !5179, !5182, !5185}
!5173 = !DILocalVariable(name: "file", arg: 1, scope: !5128, file: !5129, line: 31, type: !19)
!5174 = !DILocalVariable(name: "mode", arg: 2, scope: !5128, file: !5129, line: 31, type: !19)
!5175 = !DILocalVariable(name: "fp", scope: !5128, file: !5129, line: 33, type: !5132)
!5176 = !DILocalVariable(name: "fd", scope: !5177, file: !5129, line: 37, type: !44)
!5177 = distinct !DILexicalBlock(scope: !5178, file: !5129, line: 36, column: 5)
!5178 = distinct !DILexicalBlock(scope: !5128, file: !5129, line: 35, column: 7)
!5179 = !DILocalVariable(name: "f", scope: !5180, file: !5129, line: 41, type: !44)
!5180 = distinct !DILexicalBlock(scope: !5181, file: !5129, line: 40, column: 9)
!5181 = distinct !DILexicalBlock(scope: !5177, file: !5129, line: 39, column: 11)
!5182 = !DILocalVariable(name: "e", scope: !5183, file: !5129, line: 45, type: !44)
!5183 = distinct !DILexicalBlock(scope: !5184, file: !5129, line: 44, column: 13)
!5184 = distinct !DILexicalBlock(scope: !5180, file: !5129, line: 43, column: 15)
!5185 = !DILocalVariable(name: "e", scope: !5186, file: !5129, line: 54, type: !44)
!5186 = distinct !DILexicalBlock(scope: !5187, file: !5129, line: 53, column: 13)
!5187 = distinct !DILexicalBlock(scope: !5180, file: !5129, line: 51, column: 15)
!5188 = !DILocation(line: 31, column: 26, scope: !5128)
!5189 = !DILocation(line: 31, column: 44, scope: !5128)
!5190 = !DILocation(line: 33, column: 14, scope: !5128)
!5191 = !DILocation(line: 33, column: 9, scope: !5128)
!5192 = !DILocation(line: 35, column: 7, scope: !5178)
!5193 = !DILocation(line: 35, column: 7, scope: !5128)
!5194 = !DILocation(line: 37, column: 16, scope: !5177)
!5195 = !DILocation(line: 37, column: 11, scope: !5177)
!5196 = !DILocation(line: 39, column: 19, scope: !5181)
!5197 = !DILocation(line: 41, column: 19, scope: !5180)
!5198 = !DILocation(line: 41, column: 15, scope: !5180)
!5199 = !DILocation(line: 43, column: 17, scope: !5184)
!5200 = !DILocation(line: 43, column: 15, scope: !5180)
!5201 = !DILocation(line: 45, column: 23, scope: !5183)
!5202 = !DILocation(line: 45, column: 19, scope: !5183)
!5203 = !DILocation(line: 46, column: 15, scope: !5183)
!5204 = !DILocation(line: 47, column: 21, scope: !5183)
!5205 = !DILocation(line: 51, column: 15, scope: !5187)
!5206 = !DILocation(line: 51, column: 27, scope: !5187)
!5207 = !DILocation(line: 52, column: 15, scope: !5187)
!5208 = !DILocation(line: 52, column: 26, scope: !5187)
!5209 = !DILocation(line: 52, column: 24, scope: !5187)
!5210 = !DILocation(line: 51, column: 15, scope: !5180)
!5211 = !DILocation(line: 54, column: 23, scope: !5186)
!5212 = !DILocation(line: 54, column: 19, scope: !5186)
!5213 = !DILocation(line: 55, column: 15, scope: !5186)
!5214 = !DILocation(line: 56, column: 21, scope: !5186)
!5215 = !DILocation(line: 63, column: 1, scope: !5128)
!5216 = distinct !DISubprogram(name: "dup_safer", scope: !5217, file: !5217, line: 31, type: !5218, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !678, variables: !5220)
!5217 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5218 = !DISubroutineType(types: !5219)
!5219 = !{!44, !44}
!5220 = !{!5221}
!5221 = !DILocalVariable(name: "fd", arg: 1, scope: !5216, file: !5217, line: 31, type: !44)
!5222 = !DILocation(line: 31, column: 16, scope: !5216)
!5223 = !DILocation(line: 33, column: 10, scope: !5216)
!5224 = !DILocation(line: 33, column: 3, scope: !5216)
!5225 = !DILocation(line: 272, column: 16, scope: !531)
!5226 = !DILocation(line: 272, column: 24, scope: !531)
!5227 = !DILocation(line: 274, column: 3, scope: !531)
!5228 = !DILocation(line: 274, column: 11, scope: !531)
!5229 = !DILocation(line: 275, column: 7, scope: !531)
!5230 = !DILocation(line: 276, column: 3, scope: !531)
!5231 = !DILocation(line: 277, column: 3, scope: !531)
!5232 = !DILocation(line: 322, column: 22, scope: !556)
!5233 = !DILocation(line: 322, column: 13, scope: !556)
!5234 = !DILocation(line: 336, column: 18, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !556, file: !532, line: 336, column: 13)
!5236 = !DILocation(line: 336, column: 15, scope: !5235)
!5237 = !DILocation(line: 336, column: 13, scope: !556)
!5238 = !DILocation(line: 338, column: 22, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5235, file: !532, line: 337, column: 11)
!5240 = !DILocation(line: 339, column: 19, scope: !5241)
!5241 = distinct !DILexicalBlock(scope: !5239, file: !532, line: 339, column: 17)
!5242 = !DILocation(line: 339, column: 29, scope: !5241)
!5243 = !DILocation(line: 339, column: 32, scope: !5241)
!5244 = !DILocation(line: 339, column: 38, scope: !5241)
!5245 = !DILocation(line: 339, column: 17, scope: !5239)
!5246 = !DILocation(line: 349, column: 26, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5241, file: !532, line: 348, column: 15)
!5248 = !DILocation(line: 350, column: 28, scope: !5249)
!5249 = distinct !DILexicalBlock(scope: !5247, file: !532, line: 350, column: 21)
!5250 = !DILocation(line: 350, column: 21, scope: !5247)
!5251 = !DILocation(line: 354, column: 11, scope: !5239)
!5252 = !DILocation(line: 356, column: 20, scope: !5235)
!5253 = !DILocation(line: 357, column: 28, scope: !560)
!5254 = !DILocation(line: 357, column: 15, scope: !560)
!5255 = !DILocation(line: 357, column: 47, scope: !560)
!5256 = !DILocation(line: 357, column: 25, scope: !560)
!5257 = !DILocation(line: 359, column: 25, scope: !559)
!5258 = !DILocation(line: 359, column: 17, scope: !559)
!5259 = !DILocation(line: 360, column: 23, scope: !563)
!5260 = !DILocation(line: 360, column: 27, scope: !563)
!5261 = !DILocation(line: 360, column: 60, scope: !563)
!5262 = !DILocation(line: 360, column: 30, scope: !563)
!5263 = !DILocation(line: 360, column: 74, scope: !563)
!5264 = !DILocation(line: 360, column: 17, scope: !559)
!5265 = !DILocation(line: 362, column: 35, scope: !562)
!5266 = !DILocation(line: 362, column: 21, scope: !562)
!5267 = !DILocation(line: 363, column: 17, scope: !562)
!5268 = !DILocation(line: 364, column: 23, scope: !562)
!5269 = !DILocation(line: 366, column: 15, scope: !562)
!5270 = !DILocation(line: 404, column: 19, scope: !565)
!5271 = !DILocation(line: 404, column: 15, scope: !565)
!5272 = !DILocation(line: 405, column: 18, scope: !565)
!5273 = !DILocation(line: 412, column: 3, scope: !531)
!5274 = !DILocation(line: 414, column: 1, scope: !531)
!5275 = !DILocation(line: 413, column: 3, scope: !531)
