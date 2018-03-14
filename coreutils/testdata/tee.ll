; ModuleID = 'coreutils-8.27/src/tee.bc'
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [190 x i8] c"Copy standard input to each FILE, and also to standard output.\0A\0A  -a, --append              append to the given FILEs, do not overwrite\0A  -i, --ignore-interrupts   ignore interrupt signals\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [141 x i8] c"  -p                        diagnose errors writing to non pipes\0A      --output-error[=MODE]   set behavior on write error.  See MODE below\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [512 x i8] c"\0AMODE determines behavior with write errors on the outputs:\0A  'warn'         diagnose errors writing to any output\0A  'warn-nopipe'  diagnose errors writing to any output not a pipe\0A  'exit'         exit on error writing to any output\0A  'exit-nopipe'  exit on error writing to any output not a pipe\0AThe default MODE for the -p option is 'warn-nopipe'.\0AThe default operation when --output-error is not specified, is to\0Aexit immediately on error writing to a pipe, and diagnose errors\0Awriting to non pipe outputs.\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"tee\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.30 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.32 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@append = internal unnamed_addr global i1 false, align 1
@ignore_interrupts = internal unnamed_addr global i1 false, align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"aip\00", align 1
@long_options = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), i32 2, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.12 = private unnamed_addr constant [15 x i8] c"--output-error\00", align 1
@output_error_args = internal constant [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i8* null], align 16, !dbg !84
@output_error_types = internal constant [4 x i32] [i32 1, i32 2, i32 3, i32 4], align 16, !dbg !78
@output_error = internal unnamed_addr global i32 0, align 4, !dbg !56
@.str.14 = private unnamed_addr constant [12 x i8] c"Mike Parker\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.43 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.45 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"warn-nopipe\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"exit-nopipe\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"ignore-interrupts\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"output-error\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), align 8, !dbg !102
@.str.19 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@argmatch_die = local_unnamed_addr global void ()* @__argmatch_die, align 8, !dbg !108
@.str.22 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.1.23 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.2.24 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.3.25 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.4.26 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !122
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !127
@.str.47 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.48 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.49 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !130
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !137
@.str.60 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.61 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.62 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.64, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.65, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.66, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.67, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.68, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.69, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.71, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.72, i32 0, i32 0), i8* null], align 16, !dbg !144
@.str.63 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.64 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.65 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.66 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.67 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.68 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.69 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.70 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.71 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.72 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !172
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !179
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !192
@.str.11.73 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.74 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.75 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.76 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.77 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.78 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.79 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !199
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !206
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !194
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !208
@.str.92 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.93 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.94 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.95 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.96 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.97 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.98 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.99 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.100 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.101 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.102 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.103 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.104 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.105 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.108 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.109 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.110 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.111 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.112 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.113 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !213
@.str.1.124 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.125 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !222
@.str.142 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.143 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.146 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !259
@.str.3.147 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.148 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.149 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.150 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.151 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.152 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !662 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !664, metadata !665), !dbg !666
  %2 = icmp eq i32 %0, 0, !dbg !667
  br i1 %2, label %8, label %3, !dbg !669

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !670, !tbaa !672
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !670
  %6 = load i8*, i8** @program_name, align 8, !dbg !670, !tbaa !672
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #12, !dbg !670
  br label %42, !dbg !670

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !676
  %10 = load i8*, i8** @program_name, align 8, !dbg !676, !tbaa !672
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #12, !dbg !676
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([190 x i8], [190 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !678
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !678, !tbaa !672
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #12, !dbg !678
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !679
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !679, !tbaa !672
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #12, !dbg !679
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #12, !dbg !680
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !680, !tbaa !672
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #12, !dbg !680
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #12, !dbg !681
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !681, !tbaa !672
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #12, !dbg !681
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @.str.6, i64 0, i64 0), i32 5) #12, !dbg !682
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !682, !tbaa !672
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #12, !dbg !682
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !66, metadata !665) #12, !dbg !683
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !66, metadata !665) #12, !dbg !683
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i64 0, i64 0), i32 5) #12, !dbg !685
  %28 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i64 0, i64 0)) #12, !dbg !685
  %29 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !686
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !74, metadata !665) #12, !dbg !687
  %30 = icmp eq i8* %29, null, !dbg !688
  br i1 %30, label %37, label %31, !dbg !690

; <label>:31:                                     ; preds = %8
  %32 = tail call i32 @strncmp(i8* nonnull %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i64 3) #14, !dbg !691
  %33 = icmp eq i32 %32, 0, !dbg !691
  br i1 %33, label %37, label %34, !dbg !692

; <label>:34:                                     ; preds = %31
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30, i64 0, i64 0), i32 5) #12, !dbg !693
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !693
  br label %37, !dbg !695

; <label>:37:                                     ; preds = %8, %31, %34
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i64 0, i64 0), i32 5) #12, !dbg !696
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !696
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.32, i64 0, i64 0), i32 5) #12, !dbg !697
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0)) #12, !dbg !697
  br label %42

; <label>:42:                                     ; preds = %37, %3
  tail call void @exit(i32 %0) #15, !dbg !698
  unreachable, !dbg !698
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !699 {
  %3 = alloca [8192 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [8192 x i8]* %3, metadata !708, metadata !665), !dbg !788
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !704, metadata !665), !dbg !790
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !705, metadata !665), !dbg !791
  %4 = load i8*, i8** %1, align 8, !dbg !792, !tbaa !672
  tail call void @set_program_name(i8* %4) #12, !dbg !793
  %5 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !794
  %6 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #12, !dbg !795
  %7 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #12, !dbg !796
  %8 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12, !dbg !797
  store i1 false, i1* @append, align 1
  store i1 false, i1* @ignore_interrupts, align 1
  br label %9, !dbg !798

; <label>:9:                                      ; preds = %23, %2
  %10 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #12, !dbg !799
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !707, metadata !665), !dbg !800
  switch i32 %10, label %28 [
    i32 -1, label %29
    i32 97, label %11
    i32 105, label %12
    i32 112, label %13
    i32 -130, label %24
    i32 -131, label %25
  ], !dbg !798

; <label>:11:                                     ; preds = %9
  store i1 true, i1* @append, align 1
  br label %23, !dbg !801

; <label>:12:                                     ; preds = %9
  store i1 true, i1* @ignore_interrupts, align 1
  br label %23, !dbg !804

; <label>:13:                                     ; preds = %9
  %14 = load i8*, i8** @optarg, align 8, !dbg !805, !tbaa !672
  %15 = icmp eq i8* %14, null, !dbg !805
  br i1 %15, label %21, label %16, !dbg !807

; <label>:16:                                     ; preds = %13
  %17 = load void ()*, void ()** @argmatch_die, align 8, !dbg !808, !tbaa !672
  %18 = tail call i64 @__xargmatch_internal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* nonnull %14, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @output_error_args, i64 0, i64 0), i8* bitcast ([4 x i32]* @output_error_types to i8*), i64 4, void ()* %17) #12, !dbg !808
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* @output_error_types, i64 0, i64 %18, !dbg !808
  %20 = load i32, i32* %19, align 4, !dbg !808, !tbaa !809
  br label %21, !dbg !810

; <label>:21:                                     ; preds = %13, %16
  %22 = phi i32 [ %20, %16 ], [ 2, %13 ]
  store i32 %22, i32* @output_error, align 4, !tbaa !809
  br label %23, !dbg !811

; <label>:23:                                     ; preds = %21, %12, %11
  br label %9, !dbg !799, !llvm.loop !812

; <label>:24:                                     ; preds = %9
  tail call void @usage(i32 0) #16, !dbg !814
  unreachable, !dbg !814

; <label>:25:                                     ; preds = %9
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !815, !tbaa !672
  %27 = load i8*, i8** @Version, align 8, !dbg !815, !tbaa !672
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8* null) #12, !dbg !815
  tail call void @exit(i32 0) #15, !dbg !815
  unreachable, !dbg !815

; <label>:28:                                     ; preds = %9
  tail call void @usage(i32 1) #16, !dbg !816
  unreachable, !dbg !816

; <label>:29:                                     ; preds = %9
  %30 = load i1, i1* @ignore_interrupts, align 1
  br i1 %30, label %31, label %33, !dbg !817

; <label>:31:                                     ; preds = %29
  %32 = tail call void (i32)* @signal(i32 2, void (i32)* inttoptr (i64 1 to void (i32)*)) #12, !dbg !818
  br label %33, !dbg !818

; <label>:33:                                     ; preds = %31, %29
  %34 = load i32, i32* @output_error, align 4, !dbg !820, !tbaa !809
  %35 = icmp eq i32 %34, 0, !dbg !822
  br i1 %35, label %38, label %36, !dbg !823

; <label>:36:                                     ; preds = %33
  %37 = tail call void (i32)* @signal(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*)) #12, !dbg !824
  br label %38, !dbg !824

; <label>:38:                                     ; preds = %33, %36
  %39 = load i32, i32* @optind, align 4, !dbg !825, !tbaa !826
  %40 = sub nsw i32 %0, %39, !dbg !828
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !713, metadata !665) #12, !dbg !829
  tail call void @llvm.dbg.value(metadata i8** %49, i64 0, metadata !714, metadata !665) #12, !dbg !830
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !715, metadata !665) #12, !dbg !831
  %41 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0, !dbg !832
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %41) #12, !dbg !832
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !771, metadata !665) #12, !dbg !833
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !776, metadata !665) #12, !dbg !834
  %42 = load i1, i1* @append, align 1
  %43 = select i1 %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0), !dbg !835
  tail call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !777, metadata !665) #12, !dbg !836
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !837, !tbaa !672
  tail call void @fadvise(%struct._IO_FILE* %44, i32 2) #12, !dbg !838
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !839, metadata !665) #12, !dbg !845
  %45 = icmp slt i32 %40, -1, !dbg !847
  br i1 %45, label %46, label %47, !dbg !849

; <label>:46:                                     ; preds = %38
  tail call void @xalloc_die() #15, !dbg !850
  unreachable, !dbg !850

; <label>:47:                                     ; preds = %38
  %48 = sext i32 %39 to i64, !dbg !851
  %49 = getelementptr inbounds i8*, i8** %1, i64 %48, !dbg !851
  %50 = add i32 %40, 1, !dbg !852
  %51 = sext i32 %50 to i64, !dbg !853
  %52 = shl nsw i64 %51, 3, !dbg !854
  %53 = tail call noalias i8* @xmalloc(i64 %52) #12, !dbg !855
  %54 = bitcast i8* %53 to %struct._IO_FILE**, !dbg !856
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE** %54, i64 0, metadata !716, metadata !665) #12, !dbg !857
  %55 = getelementptr inbounds i8*, i8** %49, i64 -1, !dbg !858
  tail call void @llvm.dbg.value(metadata i8** %55, i64 0, metadata !714, metadata !665) #12, !dbg !830
  %56 = load i64, i64* bitcast (%struct._IO_FILE** @stdout to i64*), align 8, !dbg !859, !tbaa !672
  %57 = bitcast i8* %53 to i64*, !dbg !860
  store i64 %56, i64* %57, align 8, !dbg !860, !tbaa !672
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i64 0, i64 0), i32 5) #12, !dbg !861
  store i8* %58, i8** %55, align 8, !dbg !862, !tbaa !672
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !863, !tbaa !672
  %60 = tail call i32 @setvbuf(%struct._IO_FILE* %59, i8* null, i32 2, i64 0) #12, !dbg !864
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !715, metadata !665) #12, !dbg !831
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !775, metadata !665) #12, !dbg !865
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !715, metadata !665) #12, !dbg !831
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !776, metadata !665) #12, !dbg !834
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !775, metadata !665) #12, !dbg !865
  %61 = icmp slt i32 %40, 1, !dbg !866
  %62 = zext i32 %50 to i64
  br i1 %61, label %92, label %63, !dbg !869

; <label>:63:                                     ; preds = %47
  br label %64, !dbg !870

; <label>:64:                                     ; preds = %63, %85
  %65 = phi i64 [ %88, %85 ], [ 1, %63 ]
  %66 = phi i64 [ %87, %85 ], [ 1, %63 ]
  %67 = phi i8 [ %86, %85 ], [ 1, %63 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !775, metadata !665) #12, !dbg !865
  tail call void @llvm.dbg.value(metadata i8 %67, i64 0, metadata !776, metadata !665) #12, !dbg !834
  tail call void @llvm.dbg.value(metadata i64 %66, i64 0, metadata !715, metadata !665) #12, !dbg !831
  %68 = getelementptr inbounds i8*, i8** %55, i64 %65, !dbg !870
  %69 = load i8*, i8** %68, align 8, !dbg !870, !tbaa !672
  %70 = tail call %struct._IO_FILE* @fopen_safer(i8* %69, i8* %43) #12, !dbg !872
  %71 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %54, i64 %65, !dbg !873
  store %struct._IO_FILE* %70, %struct._IO_FILE** %71, align 8, !dbg !874, !tbaa !672
  %72 = icmp eq %struct._IO_FILE* %70, null, !dbg !875
  br i1 %72, label %73, label %82, !dbg !877

; <label>:73:                                     ; preds = %64
  %74 = load i32, i32* @output_error, align 4, !dbg !878, !tbaa !809
  %75 = add i32 %74, -3, !dbg !880
  %76 = icmp ult i32 %75, 2, !dbg !880
  %77 = zext i1 %76 to i32, !dbg !880
  %78 = tail call i32* @__errno_location() #17, !dbg !881
  %79 = load i32, i32* %78, align 4, !dbg !881, !tbaa !826
  %80 = load i8*, i8** %68, align 8, !dbg !882, !tbaa !672
  %81 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %80) #12, !dbg !882
  tail call void (i32, i32, i8*, ...) @error(i32 %77, i32 %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %81) #12, !dbg !883
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !776, metadata !665) #12, !dbg !834
  br label %85, !dbg !884

; <label>:82:                                     ; preds = %64
  %83 = tail call i32 @setvbuf(%struct._IO_FILE* nonnull %70, i8* null, i32 2, i64 0) #12, !dbg !885
  %84 = add i64 %66, 1, !dbg !887
  tail call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !715, metadata !665) #12, !dbg !831
  br label %85

; <label>:85:                                     ; preds = %82, %73
  %86 = phi i8 [ 0, %73 ], [ %67, %82 ]
  %87 = phi i64 [ %66, %73 ], [ %84, %82 ]
  tail call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !715, metadata !665) #12, !dbg !831
  tail call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !776, metadata !665) #12, !dbg !834
  %88 = add nuw nsw i64 %65, 1, !dbg !888
  tail call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !715, metadata !665) #12, !dbg !831
  tail call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !776, metadata !665) #12, !dbg !834
  %89 = icmp eq i64 %88, %62, !dbg !866
  br i1 %89, label %90, label %64, !dbg !869, !llvm.loop !889

; <label>:90:                                     ; preds = %85
  tail call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !715, metadata !665) #12, !dbg !831
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !771, metadata !665) #12, !dbg !833
  tail call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !776, metadata !665) #12, !dbg !834
  %91 = icmp eq i64 %87, 0, !dbg !892
  br i1 %91, label %167, label %92, !dbg !892

; <label>:92:                                     ; preds = %47, %90
  %93 = phi i64 [ %87, %90 ], [ 1, %47 ]
  %94 = phi i8 [ %86, %90 ], [ 1, %47 ]
  %95 = icmp slt i32 %40, 0
  br label %96, !dbg !892

; <label>:96:                                     ; preds = %155, %92
  %97 = phi i64 [ %93, %92 ], [ %157, %155 ]
  %98 = phi i8 [ %94, %92 ], [ %156, %155 ]
  call void @llvm.dbg.value(metadata i8 %98, i64 0, metadata !776, metadata !665) #12, !dbg !834
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !715, metadata !665) #12, !dbg !831
  %99 = call i64 @read(i32 0, i8* nonnull %41, i64 8192) #12, !dbg !893
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !771, metadata !665) #12, !dbg !833
  %100 = icmp slt i64 %99, 0, !dbg !894
  br i1 %100, label %101, label %110, !dbg !896

; <label>:101:                                    ; preds = %96
  %102 = tail call i32* @__errno_location() #17, !dbg !897
  br label %106, !dbg !896

; <label>:103:                                    ; preds = %106
  %104 = call i64 @read(i32 0, i8* nonnull %41, i64 8192) #12, !dbg !893
  call void @llvm.dbg.value(metadata i64 %104, i64 0, metadata !771, metadata !665) #12, !dbg !833
  %105 = icmp slt i64 %104, 0, !dbg !894
  br i1 %105, label %106, label %110, !dbg !896

; <label>:106:                                    ; preds = %101, %103
  %107 = phi i64 [ %99, %101 ], [ %104, %103 ]
  %108 = load i32, i32* %102, align 4, !dbg !897, !tbaa !826
  %109 = icmp eq i32 %108, 4, !dbg !898
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !715, metadata !665) #12, !dbg !831
  call void @llvm.dbg.value(metadata i64 %107, i64 0, metadata !771, metadata !665) #12, !dbg !833
  call void @llvm.dbg.value(metadata i8 %98, i64 0, metadata !776, metadata !665) #12, !dbg !834
  br i1 %109, label %103, label %159, !dbg !899

; <label>:110:                                    ; preds = %103, %96
  %111 = phi i64 [ %99, %96 ], [ %104, %103 ]
  %112 = icmp eq i64 %111, 0, !dbg !900
  br i1 %112, label %167, label %113, !dbg !902

; <label>:113:                                    ; preds = %110
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !775, metadata !665) #12, !dbg !865
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !715, metadata !665) #12, !dbg !831
  call void @llvm.dbg.value(metadata i8 %98, i64 0, metadata !776, metadata !665) #12, !dbg !834
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !775, metadata !665) #12, !dbg !865
  br i1 %95, label %155, label %114, !dbg !903

; <label>:114:                                    ; preds = %113
  br label %115, !dbg !904

; <label>:115:                                    ; preds = %114, %150
  %116 = phi i64 [ %153, %150 ], [ 0, %114 ]
  %117 = phi i64 [ %152, %150 ], [ %97, %114 ]
  %118 = phi i8 [ %151, %150 ], [ %98, %114 ]
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !775, metadata !665) #12, !dbg !865
  call void @llvm.dbg.value(metadata i8 %118, i64 0, metadata !776, metadata !665) #12, !dbg !834
  call void @llvm.dbg.value(metadata i64 %117, i64 0, metadata !715, metadata !665) #12, !dbg !831
  %119 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %54, i64 %116, !dbg !904
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %119, align 8, !dbg !904, !tbaa !672
  %121 = icmp eq %struct._IO_FILE* %120, null, !dbg !904
  br i1 %121, label %150, label %122, !dbg !905

; <label>:122:                                    ; preds = %115
  %123 = call i64 @fwrite_unlocked(i8* nonnull %41, i64 %111, i64 1, %struct._IO_FILE* nonnull %120) #12, !dbg !906
  %124 = icmp eq i64 %123, 1, !dbg !907
  br i1 %124, label %150, label %125, !dbg !908

; <label>:125:                                    ; preds = %122
  %126 = tail call i32* @__errno_location() #17, !dbg !909
  %127 = load i32, i32* %126, align 4, !dbg !909, !tbaa !826
  call void @llvm.dbg.value(metadata i32 %127, i64 0, metadata !778, metadata !665) #12, !dbg !910
  %128 = icmp eq i32 %127, 32, !dbg !911
  br i1 %128, label %129, label %133, !dbg !912

; <label>:129:                                    ; preds = %125
  %130 = load i32, i32* @output_error, align 4, !dbg !913, !tbaa !809
  %131 = or i32 %130, 2, !dbg !914
  %132 = icmp eq i32 %131, 3, !dbg !914
  br label %133, !dbg !914

; <label>:133:                                    ; preds = %129, %125
  %134 = phi i1 [ true, %125 ], [ %132, %129 ]
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !915, !tbaa !672
  %136 = icmp eq %struct._IO_FILE* %120, %135, !dbg !917
  br i1 %136, label %137, label %138, !dbg !918

; <label>:137:                                    ; preds = %133
  call void @clearerr_unlocked(%struct._IO_FILE* nonnull %120) #12, !dbg !919
  br label %138, !dbg !919

; <label>:138:                                    ; preds = %137, %133
  br i1 %134, label %139, label %147, !dbg !920

; <label>:139:                                    ; preds = %138
  %140 = load i32, i32* @output_error, align 4, !dbg !921, !tbaa !809
  %141 = add i32 %140, -3, !dbg !924
  %142 = icmp ult i32 %141, 2, !dbg !924
  %143 = zext i1 %142 to i32, !dbg !924
  %144 = getelementptr inbounds i8*, i8** %55, i64 %116, !dbg !925
  %145 = load i8*, i8** %144, align 8, !dbg !925, !tbaa !672
  %146 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %145) #12, !dbg !925
  call void (i32, i32, i8*, ...) @error(i32 %143, i32 %127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %146) #12, !dbg !926
  br label %147, !dbg !927

; <label>:147:                                    ; preds = %139, %138
  store %struct._IO_FILE* null, %struct._IO_FILE** %119, align 8, !dbg !928, !tbaa !672
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !776, metadata !665) #12, !dbg !834
  %148 = select i1 %134, i8 0, i8 %118, !dbg !929
  call void @llvm.dbg.value(metadata i8 %148, i64 0, metadata !776, metadata !665) #12, !dbg !834
  %149 = add i64 %117, -1, !dbg !930
  call void @llvm.dbg.value(metadata i64 %149, i64 0, metadata !715, metadata !665) #12, !dbg !831
  br label %150, !dbg !931

; <label>:150:                                    ; preds = %147, %122, %115
  %151 = phi i8 [ %148, %147 ], [ %118, %122 ], [ %118, %115 ]
  %152 = phi i64 [ %149, %147 ], [ %117, %122 ], [ %117, %115 ]
  call void @llvm.dbg.value(metadata i64 %152, i64 0, metadata !715, metadata !665) #12, !dbg !831
  call void @llvm.dbg.value(metadata i8 %151, i64 0, metadata !776, metadata !665) #12, !dbg !834
  %153 = add nuw nsw i64 %116, 1, !dbg !932
  call void @llvm.dbg.value(metadata i64 %152, i64 0, metadata !715, metadata !665) #12, !dbg !831
  call void @llvm.dbg.value(metadata i8 %151, i64 0, metadata !776, metadata !665) #12, !dbg !834
  %154 = icmp eq i64 %153, %62, !dbg !933
  br i1 %154, label %155, label %115, !dbg !903, !llvm.loop !934

; <label>:155:                                    ; preds = %150, %113
  %156 = phi i8 [ %98, %113 ], [ %151, %150 ]
  %157 = phi i64 [ %97, %113 ], [ %152, %150 ]
  call void @llvm.dbg.value(metadata i64 %157, i64 0, metadata !715, metadata !665) #12, !dbg !831
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !771, metadata !665) #12, !dbg !833
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !776, metadata !665) #12, !dbg !834
  %158 = icmp eq i64 %157, 0, !dbg !892
  br i1 %158, label %159, label %96, !dbg !892, !llvm.loop !937

; <label>:159:                                    ; preds = %155, %106
  %160 = phi i64 [ %107, %106 ], [ %111, %155 ]
  %161 = phi i8 [ %98, %106 ], [ %156, %155 ]
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !771, metadata !665) #12, !dbg !833
  %162 = icmp eq i64 %160, -1, !dbg !940
  br i1 %162, label %163, label %167, !dbg !942

; <label>:163:                                    ; preds = %159
  %164 = tail call i32* @__errno_location() #17, !dbg !943
  %165 = load i32, i32* %164, align 4, !dbg !943, !tbaa !826
  %166 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0), i32 5) #12, !dbg !945
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %165, i8* %166) #12, !dbg !946
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !776, metadata !665) #12, !dbg !834
  br label %167, !dbg !947

; <label>:167:                                    ; preds = %110, %163, %159, %90
  %168 = phi i8 [ 0, %163 ], [ %161, %159 ], [ %86, %90 ], [ %98, %110 ]
  call void @llvm.dbg.value(metadata i8 %168, i64 0, metadata !776, metadata !665) #12, !dbg !834
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !775, metadata !665) #12, !dbg !865
  call void @llvm.dbg.value(metadata i8 %168, i64 0, metadata !776, metadata !665) #12, !dbg !834
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !775, metadata !665) #12, !dbg !865
  br i1 %61, label %190, label %169, !dbg !948

; <label>:169:                                    ; preds = %167
  %170 = zext i32 %50 to i64
  br label %171, !dbg !948

; <label>:171:                                    ; preds = %186, %169
  %172 = phi i64 [ %188, %186 ], [ 1, %169 ]
  %173 = phi i8 [ %187, %186 ], [ %168, %169 ]
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !775, metadata !665) #12, !dbg !865
  call void @llvm.dbg.value(metadata i8 %173, i64 0, metadata !776, metadata !665) #12, !dbg !834
  %174 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %54, i64 %172, !dbg !950
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** %174, align 8, !dbg !950, !tbaa !672
  %176 = icmp eq %struct._IO_FILE* %175, null, !dbg !950
  br i1 %176, label %186, label %177, !dbg !953

; <label>:177:                                    ; preds = %171
  %178 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %175) #12, !dbg !954
  %179 = icmp eq i32 %178, 0, !dbg !955
  br i1 %179, label %186, label %180, !dbg !956

; <label>:180:                                    ; preds = %177
  %181 = tail call i32* @__errno_location() #17, !dbg !957
  %182 = load i32, i32* %181, align 4, !dbg !957, !tbaa !826
  %183 = getelementptr inbounds i8*, i8** %55, i64 %172, !dbg !959
  %184 = load i8*, i8** %183, align 8, !dbg !959, !tbaa !672
  %185 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %184) #12, !dbg !959
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %182, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %185) #12, !dbg !960
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !776, metadata !665) #12, !dbg !834
  br label %186, !dbg !961

; <label>:186:                                    ; preds = %180, %177, %171
  %187 = phi i8 [ 0, %180 ], [ %173, %177 ], [ %173, %171 ]
  call void @llvm.dbg.value(metadata i8 %187, i64 0, metadata !776, metadata !665) #12, !dbg !834
  %188 = add nuw nsw i64 %172, 1, !dbg !962
  call void @llvm.dbg.value(metadata i8 %187, i64 0, metadata !776, metadata !665) #12, !dbg !834
  %189 = icmp eq i64 %188, %170, !dbg !963
  br i1 %189, label %190, label %171, !dbg !948, !llvm.loop !964

; <label>:190:                                    ; preds = %186, %167
  %191 = phi i8 [ %168, %167 ], [ %187, %186 ]
  call void @free(i8* %53) #12, !dbg !967
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %41) #12, !dbg !968
  %192 = call i32 @close(i32 0) #12, !dbg !969
  %193 = icmp eq i32 %192, 0, !dbg !971
  br i1 %193, label %198, label %194, !dbg !972

; <label>:194:                                    ; preds = %190
  %195 = tail call i32* @__errno_location() #17, !dbg !973
  %196 = load i32, i32* %195, align 4, !dbg !973, !tbaa !826
  %197 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32 5) #12, !dbg !973
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %196, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %197) #12, !dbg !973
  unreachable, !dbg !973

; <label>:198:                                    ; preds = %190
  %199 = and i8 %191, 1, !dbg !974
  %200 = xor i8 %199, 1, !dbg !975
  %201 = zext i8 %200 to i32, !dbg !975
  ret i32 %201, !dbg !976
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

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE* nocapture, i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #3

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal void @__argmatch_die() #6 !dbg !977 {
  tail call void @usage(i32 1) #12, !dbg !978
  ret void, !dbg !979
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @argmatch(i8* nocapture readonly, i8** nocapture readonly, i8* readonly, i64) local_unnamed_addr #9 !dbg !980 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !986, metadata !665), !dbg !994
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !987, metadata !665), !dbg !995
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !988, metadata !665), !dbg !996
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !989, metadata !665), !dbg !997
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !992, metadata !665), !dbg !998
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !993, metadata !665), !dbg !999
  %5 = tail call i64 @strlen(i8* %0) #14, !dbg !1000
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !991, metadata !665), !dbg !1001
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !990, metadata !665), !dbg !1002
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !993, metadata !665), !dbg !999
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !992, metadata !665), !dbg !998
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !990, metadata !665), !dbg !1002
  %6 = load i8*, i8** %1, align 8, !dbg !1003, !tbaa !672
  %7 = icmp eq i8* %6, null, !dbg !1006
  br i1 %7, label %38, label %8, !dbg !1006

; <label>:8:                                      ; preds = %4
  %9 = icmp eq i8* %2, null
  br label %10, !dbg !1006

; <label>:10:                                     ; preds = %8, %31
  %11 = phi i8* [ %6, %8 ], [ %36, %31 ]
  %12 = phi i8 [ 0, %8 ], [ %33, %31 ]
  %13 = phi i64 [ -1, %8 ], [ %32, %31 ]
  %14 = phi i64 [ 0, %8 ], [ %34, %31 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !990, metadata !665), !dbg !1002
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !992, metadata !665), !dbg !998
  tail call void @llvm.dbg.value(metadata i8 %12, i64 0, metadata !993, metadata !665), !dbg !999
  %15 = tail call i32 @strncmp(i8* nonnull %11, i8* %0, i64 %5) #14, !dbg !1007
  %16 = icmp eq i32 %15, 0, !dbg !1007
  br i1 %16, label %17, label %31, !dbg !1010

; <label>:17:                                     ; preds = %10
  %18 = tail call i64 @strlen(i8* nonnull %11) #14, !dbg !1011
  %19 = icmp eq i64 %18, %5, !dbg !1014
  br i1 %19, label %44, label %20, !dbg !1015

; <label>:20:                                     ; preds = %17
  %21 = icmp eq i64 %13, -1, !dbg !1016
  br i1 %21, label %31, label %22, !dbg !1018

; <label>:22:                                     ; preds = %20
  br i1 %9, label %30, label %23, !dbg !1019

; <label>:23:                                     ; preds = %22
  %24 = mul i64 %13, %3, !dbg !1022
  %25 = getelementptr inbounds i8, i8* %2, i64 %24, !dbg !1023
  %26 = mul i64 %14, %3, !dbg !1024
  %27 = getelementptr inbounds i8, i8* %2, i64 %26, !dbg !1025
  %28 = tail call i32 @memcmp(i8* %25, i8* %27, i64 %3) #14, !dbg !1026
  %29 = icmp eq i32 %28, 0, !dbg !1026
  br i1 %29, label %31, label %30, !dbg !1027

; <label>:30:                                     ; preds = %23, %22
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !993, metadata !665), !dbg !999
  br label %31, !dbg !1028

; <label>:31:                                     ; preds = %20, %23, %10, %30
  %32 = phi i64 [ %13, %10 ], [ %13, %30 ], [ %13, %23 ], [ %14, %20 ]
  %33 = phi i8 [ %12, %10 ], [ 1, %30 ], [ %12, %23 ], [ %12, %20 ]
  tail call void @llvm.dbg.value(metadata i8 %33, i64 0, metadata !993, metadata !665), !dbg !999
  tail call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !992, metadata !665), !dbg !998
  %34 = add i64 %14, 1, !dbg !1030
  tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !990, metadata !665), !dbg !1002
  tail call void @llvm.dbg.value(metadata i8 %33, i64 0, metadata !993, metadata !665), !dbg !999
  tail call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !992, metadata !665), !dbg !998
  tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !990, metadata !665), !dbg !1002
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34, !dbg !1003
  %36 = load i8*, i8** %35, align 8, !dbg !1003, !tbaa !672
  %37 = icmp eq i8* %36, null, !dbg !1006
  br i1 %37, label %38, label %10, !dbg !1006, !llvm.loop !1031

; <label>:38:                                     ; preds = %31, %4
  %39 = phi i64 [ -1, %4 ], [ %32, %31 ]
  %40 = phi i8 [ 0, %4 ], [ %33, %31 ]
  %41 = and i8 %40, 1, !dbg !1033
  %42 = icmp eq i8 %41, 0, !dbg !1033
  %43 = select i1 %42, i64 %39, i64 -2, !dbg !1035
  br label %44, !dbg !1035

; <label>:44:                                     ; preds = %17, %38
  %45 = phi i64 [ %43, %38 ], [ %14, %17 ]
  ret i64 %45, !dbg !1036
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #10

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_invalid(i8*, i8*, i64) local_unnamed_addr #6 !dbg !1037 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1041, metadata !665), !dbg !1045
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1042, metadata !665), !dbg !1046
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1043, metadata !665), !dbg !1047
  %4 = icmp eq i64 %2, -1, !dbg !1048
  %5 = select i1 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.23, i64 0, i64 0), !dbg !1049
  %6 = tail call i8* @dcgettext(i8* null, i8* %5, i32 5) #12, !dbg !1050
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1044, metadata !665), !dbg !1051
  %7 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #12, !dbg !1052
  %8 = tail call i8* @quote_n(i32 1, i8* %0) #12, !dbg !1053
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %6, i8* %7, i8* %8) #12, !dbg !1054
  ret void, !dbg !1055
}

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_valid(i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !1056 {
  tail call void @llvm.dbg.value(metadata i8** %0, i64 0, metadata !1060, metadata !665), !dbg !1065
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1061, metadata !665), !dbg !1066
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1062, metadata !665), !dbg !1067
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1064, metadata !665), !dbg !1068
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.24, i64 0, i64 0), i32 5) #12, !dbg !1069
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1069, !tbaa !672
  %6 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %5) #12, !dbg !1069
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1063, metadata !665), !dbg !1070
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1064, metadata !665), !dbg !1068
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1063, metadata !665), !dbg !1070
  %7 = load i8*, i8** %0, align 8, !dbg !1071, !tbaa !672
  %8 = icmp eq i8* %7, null, !dbg !1074
  br i1 %8, label %34, label %9, !dbg !1074

; <label>:9:                                      ; preds = %3
  br label %10, !dbg !1075

; <label>:10:                                     ; preds = %9, %28
  %11 = phi i8* [ %32, %28 ], [ %7, %9 ]
  %12 = phi i8* [ %29, %28 ], [ null, %9 ]
  %13 = phi i64 [ %30, %28 ], [ 0, %9 ]
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !1063, metadata !665), !dbg !1070
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1064, metadata !665), !dbg !1068
  %14 = icmp eq i64 %13, 0, !dbg !1075
  %15 = mul i64 %13, %2
  %16 = getelementptr inbounds i8, i8* %1, i64 %15
  br i1 %14, label %20, label %17, !dbg !1077

; <label>:17:                                     ; preds = %10
  %18 = tail call i32 @memcmp(i8* %12, i8* %16, i64 %2) #14, !dbg !1078
  %19 = icmp eq i32 %18, 0, !dbg !1078
  br i1 %19, label %24, label %20, !dbg !1079

; <label>:20:                                     ; preds = %10, %17
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1080, !tbaa !672
  %22 = tail call i8* @quote(i8* nonnull %11) #12, !dbg !1080
  %23 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %21, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.25, i64 0, i64 0), i8* %22) #12, !dbg !1080
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !1064, metadata !665), !dbg !1068
  br label %28, !dbg !1082

; <label>:24:                                     ; preds = %17
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1083, !tbaa !672
  %26 = tail call i8* @quote(i8* nonnull %11) #12, !dbg !1083
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %25, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.26, i64 0, i64 0), i8* %26) #12, !dbg !1083
  br label %28

; <label>:28:                                     ; preds = %20, %24
  %29 = phi i8* [ %16, %20 ], [ %12, %24 ]
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1064, metadata !665), !dbg !1068
  %30 = add i64 %13, 1, !dbg !1085
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !1063, metadata !665), !dbg !1070
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1064, metadata !665), !dbg !1068
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !1063, metadata !665), !dbg !1070
  %31 = getelementptr inbounds i8*, i8** %0, i64 %30, !dbg !1071
  %32 = load i8*, i8** %31, align 8, !dbg !1071, !tbaa !672
  %33 = icmp eq i8* %32, null, !dbg !1074
  br i1 %33, label %34, label %10, !dbg !1074, !llvm.loop !1086

; <label>:34:                                     ; preds = %28, %3
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1088, !tbaa !672
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1089, metadata !665) #12, !dbg !1136
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %35, i64 0, metadata !1135, metadata !665) #12, !dbg !1138
  %36 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %35, i64 0, i32 5, !dbg !1139
  %37 = load i8*, i8** %36, align 8, !dbg !1139, !tbaa !1140
  %38 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %35, i64 0, i32 6, !dbg !1139
  %39 = load i8*, i8** %38, align 8, !dbg !1139, !tbaa !1144
  %40 = icmp ult i8* %37, %39, !dbg !1139
  br i1 %40, label %43, label %41, !dbg !1139, !prof !1145

; <label>:41:                                     ; preds = %34
  %42 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %35, i32 10) #12, !dbg !1139
  br label %45, !dbg !1139

; <label>:43:                                     ; preds = %34
  %44 = getelementptr inbounds i8, i8* %37, i64 1, !dbg !1139
  store i8* %44, i8** %36, align 8, !dbg !1139, !tbaa !1140
  store i8 10, i8* %37, align 1, !dbg !1139, !tbaa !809
  br label %45, !dbg !1139

; <label>:45:                                     ; preds = %41, %43
  ret void, !dbg !1146
}

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i64 @__xargmatch_internal(i8*, i8*, i8** nocapture readonly, i8* readonly, i64, void ()* nocapture) local_unnamed_addr #6 !dbg !1147 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1151, metadata !665), !dbg !1158
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1152, metadata !665), !dbg !1159
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !1153, metadata !665), !dbg !1160
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1154, metadata !665), !dbg !1161
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !1155, metadata !665), !dbg !1162
  tail call void @llvm.dbg.value(metadata void ()* %5, i64 0, metadata !1156, metadata !665), !dbg !1163
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !986, metadata !665) #12, !dbg !1164
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !987, metadata !665) #12, !dbg !1166
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !988, metadata !665) #12, !dbg !1167
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !989, metadata !665) #12, !dbg !1168
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !992, metadata !665) #12, !dbg !1169
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !993, metadata !665) #12, !dbg !1170
  %7 = tail call i64 @strlen(i8* %1) #14, !dbg !1171
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !991, metadata !665) #12, !dbg !1172
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !990, metadata !665) #12, !dbg !1173
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !993, metadata !665) #12, !dbg !1170
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !992, metadata !665) #12, !dbg !1169
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !990, metadata !665) #12, !dbg !1173
  %8 = load i8*, i8** %2, align 8, !dbg !1174, !tbaa !672
  %9 = icmp eq i8* %8, null, !dbg !1175
  br i1 %9, label %48, label %10, !dbg !1175

; <label>:10:                                     ; preds = %6
  %11 = icmp eq i8* %3, null
  br label %12, !dbg !1175

; <label>:12:                                     ; preds = %33, %10
  %13 = phi i8* [ %8, %10 ], [ %38, %33 ]
  %14 = phi i8 [ 0, %10 ], [ %35, %33 ]
  %15 = phi i64 [ -1, %10 ], [ %34, %33 ]
  %16 = phi i64 [ 0, %10 ], [ %36, %33 ]
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !990, metadata !665) #12, !dbg !1173
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !992, metadata !665) #12, !dbg !1169
  tail call void @llvm.dbg.value(metadata i8 %14, i64 0, metadata !993, metadata !665) #12, !dbg !1170
  %17 = tail call i32 @strncmp(i8* nonnull %13, i8* %1, i64 %7) #14, !dbg !1176
  %18 = icmp eq i32 %17, 0, !dbg !1176
  br i1 %18, label %19, label %33, !dbg !1177

; <label>:19:                                     ; preds = %12
  %20 = tail call i64 @strlen(i8* nonnull %13) #14, !dbg !1178
  %21 = icmp eq i64 %20, %7, !dbg !1179
  br i1 %21, label %43, label %22, !dbg !1180

; <label>:22:                                     ; preds = %19
  %23 = icmp eq i64 %15, -1, !dbg !1181
  br i1 %23, label %33, label %24, !dbg !1182

; <label>:24:                                     ; preds = %22
  br i1 %11, label %32, label %25, !dbg !1183

; <label>:25:                                     ; preds = %24
  %26 = mul i64 %15, %4, !dbg !1184
  %27 = getelementptr inbounds i8, i8* %3, i64 %26, !dbg !1185
  %28 = mul i64 %16, %4, !dbg !1186
  %29 = getelementptr inbounds i8, i8* %3, i64 %28, !dbg !1187
  %30 = tail call i32 @memcmp(i8* %27, i8* %29, i64 %4) #14, !dbg !1188
  %31 = icmp eq i32 %30, 0, !dbg !1188
  br i1 %31, label %33, label %32, !dbg !1189

; <label>:32:                                     ; preds = %25, %24
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !993, metadata !665) #12, !dbg !1170
  br label %33, !dbg !1190

; <label>:33:                                     ; preds = %32, %25, %22, %12
  %34 = phi i64 [ %15, %12 ], [ %15, %32 ], [ %15, %25 ], [ %16, %22 ]
  %35 = phi i8 [ %14, %12 ], [ 1, %32 ], [ %14, %25 ], [ %14, %22 ]
  tail call void @llvm.dbg.value(metadata i8 %35, i64 0, metadata !993, metadata !665) #12, !dbg !1170
  tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !992, metadata !665) #12, !dbg !1169
  %36 = add i64 %16, 1, !dbg !1191
  tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !990, metadata !665) #12, !dbg !1173
  tail call void @llvm.dbg.value(metadata i8 %35, i64 0, metadata !993, metadata !665) #12, !dbg !1170
  tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !992, metadata !665) #12, !dbg !1169
  tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !990, metadata !665) #12, !dbg !1173
  %37 = getelementptr inbounds i8*, i8** %2, i64 %36, !dbg !1174
  %38 = load i8*, i8** %37, align 8, !dbg !1174, !tbaa !672
  %39 = icmp eq i8* %38, null, !dbg !1175
  br i1 %39, label %40, label %12, !dbg !1175, !llvm.loop !1031

; <label>:40:                                     ; preds = %33
  %41 = and i8 %35, 1, !dbg !1192
  %42 = icmp eq i8 %41, 0, !dbg !1192
  br i1 %42, label %43, label %49

; <label>:43:                                     ; preds = %19, %40
  %44 = phi i64 [ %34, %40 ], [ %16, %19 ]
  tail call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !1157, metadata !665), !dbg !1193
  %45 = icmp sgt i64 %44, -1, !dbg !1194
  br i1 %45, label %54, label %46, !dbg !1196

; <label>:46:                                     ; preds = %43
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1041, metadata !665) #12, !dbg !1197
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1042, metadata !665) #12, !dbg !1199
  tail call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !1043, metadata !665) #12, !dbg !1200
  %47 = icmp eq i64 %44, -1, !dbg !1201
  br i1 %47, label %48, label %49, !dbg !1202

; <label>:48:                                     ; preds = %6, %46
  br label %49, !dbg !1202

; <label>:49:                                     ; preds = %40, %46, %48
  %50 = phi i8* [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), %48 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.23, i64 0, i64 0), %46 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.23, i64 0, i64 0), %40 ]
  %51 = tail call i8* @dcgettext(i8* null, i8* nonnull %50, i32 5) #12, !dbg !1203
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !1044, metadata !665) #12, !dbg !1204
  %52 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #12, !dbg !1205
  %53 = tail call i8* @quote_n(i32 1, i8* %0) #12, !dbg !1206
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %51, i8* %52, i8* %53) #12, !dbg !1207
  tail call void @argmatch_valid(i8** %2, i8* %3, i64 %4), !dbg !1208
  tail call void %5() #12, !dbg !1209
  br label %54, !dbg !1210

; <label>:54:                                     ; preds = %43, %49
  %55 = phi i64 [ -1, %49 ], [ %44, %43 ]
  ret i64 %55, !dbg !1211
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @argmatch_to_argument(i8* nocapture readonly, i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #9 !dbg !1212 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1216, metadata !665), !dbg !1221
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !1217, metadata !665), !dbg !1222
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1218, metadata !665), !dbg !1223
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1219, metadata !665), !dbg !1224
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1220, metadata !665), !dbg !1225
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1220, metadata !665), !dbg !1225
  %5 = load i8*, i8** %1, align 8, !dbg !1226, !tbaa !672
  %6 = icmp eq i8* %5, null, !dbg !1229
  br i1 %6, label %20, label %7, !dbg !1229

; <label>:7:                                      ; preds = %4
  br label %12, !dbg !1230

; <label>:8:                                      ; preds = %12
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1220, metadata !665), !dbg !1225
  %9 = getelementptr inbounds i8*, i8** %1, i64 %19, !dbg !1226
  %10 = load i8*, i8** %9, align 8, !dbg !1226, !tbaa !672
  %11 = icmp eq i8* %10, null, !dbg !1229
  br i1 %11, label %20, label %12, !dbg !1229, !llvm.loop !1232

; <label>:12:                                     ; preds = %7, %8
  %13 = phi i8* [ %10, %8 ], [ %5, %7 ]
  %14 = phi i64 [ %19, %8 ], [ 0, %7 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !1220, metadata !665), !dbg !1225
  %15 = mul i64 %14, %3, !dbg !1230
  %16 = getelementptr inbounds i8, i8* %2, i64 %15, !dbg !1234
  %17 = tail call i32 @memcmp(i8* %0, i8* %16, i64 %3) #14, !dbg !1235
  %18 = icmp eq i32 %17, 0, !dbg !1235
  %19 = add i64 %14, 1, !dbg !1236
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1220, metadata !665), !dbg !1225
  br i1 %18, label %20, label %8, !dbg !1237

; <label>:20:                                     ; preds = %12, %8, %4
  %21 = phi i8* [ null, %4 ], [ null, %8 ], [ %13, %12 ]
  ret i8* %21, !dbg !1238
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1239 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1241, metadata !665), !dbg !1242
  store i8* %0, i8** @file_name, align 8, !dbg !1243, !tbaa !672
  ret void, !dbg !1244
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1245 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1249, metadata !665), !dbg !1250
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1251, !tbaa !1252
  ret void, !dbg !1254
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1255 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1260, !tbaa !672
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !1261
  %3 = icmp eq i32 %2, 0, !dbg !1262
  br i1 %3, label %21, label %4, !dbg !1263

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1264, !tbaa !1252, !range !1265
  %6 = icmp eq i8 %5, 0, !dbg !1264
  %7 = tail call i32* @__errno_location() #17, !dbg !1266
  br i1 %6, label %11, label %8, !dbg !1268

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1269, !tbaa !826
  %10 = icmp eq i32 %9, 32, !dbg !1270
  br i1 %10, label %21, label %11, !dbg !1271

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i32 5) #12, !dbg !1272
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1257, metadata !665), !dbg !1273
  %13 = load i8*, i8** @file_name, align 8, !dbg !1274, !tbaa !672
  %14 = icmp eq i8* %13, null, !dbg !1274
  %15 = load i32, i32* %7, align 4, !tbaa !826
  br i1 %14, label %18, label %16, !dbg !1275

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !1276
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.48, i64 0, i64 0), i8* %17, i8* %12) #12, !dbg !1277
  br label %19, !dbg !1277

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.49, i64 0, i64 0), i8* %12) #12, !dbg !1278
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1279, !tbaa !826
  tail call void @_exit(i32 %20) #15, !dbg !1280
  unreachable, !dbg !1280

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1281, !tbaa !672
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #12, !dbg !1283
  %24 = icmp eq i32 %23, 0, !dbg !1284
  br i1 %24, label %27, label %25, !dbg !1285

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1286, !tbaa !826
  tail call void @_exit(i32 %26) #15, !dbg !1287
  unreachable, !dbg !1287

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1288
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !1289 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1297, metadata !665), !dbg !1303
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1298, metadata !665), !dbg !1304
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1299, metadata !665), !dbg !1305
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1300, metadata !665), !dbg !1306
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #12, !dbg !1307
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1301, metadata !665), !dbg !1307
  ret void, !dbg !1308
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !1309 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1353, metadata !665), !dbg !1355
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1354, metadata !665), !dbg !1356
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1357
  br i1 %3, label %7, label %4, !dbg !1359

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !1360
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1297, metadata !665) #12, !dbg !1361
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1298, metadata !665) #12, !dbg !1363
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1299, metadata !665) #12, !dbg !1364
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1300, metadata !665) #12, !dbg !1365
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #12, !dbg !1366
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1301, metadata !665) #12, !dbg !1366
  br label %7, !dbg !1367

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1368
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define %struct._IO_FILE* @fopen_safer(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #6 !dbg !1369 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1414, metadata !665), !dbg !1429
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1415, metadata !665), !dbg !1430
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1), !dbg !1431
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, i64 0, metadata !1416, metadata !665), !dbg !1432
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !1433
  br i1 %4, label %25, label %5, !dbg !1434

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @fileno(%struct._IO_FILE* nonnull %3) #12, !dbg !1435
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1417, metadata !665), !dbg !1436
  %7 = icmp ult i32 %6, 3, !dbg !1437
  br i1 %7, label %8, label %25, !dbg !1437

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @dup_safer(i32 %6) #12, !dbg !1438
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1420, metadata !665), !dbg !1439
  %10 = icmp slt i32 %9, 0, !dbg !1440
  br i1 %10, label %11, label %15, !dbg !1441

; <label>:11:                                     ; preds = %8
  %12 = tail call i32* @__errno_location() #17, !dbg !1442
  %13 = load i32, i32* %12, align 4, !dbg !1442, !tbaa !826
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1423, metadata !665), !dbg !1443
  %14 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #12, !dbg !1444
  store i32 %13, i32* %12, align 4, !dbg !1445, !tbaa !826
  br label %25

; <label>:15:                                     ; preds = %8
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #12, !dbg !1446
  %17 = icmp eq i32 %16, 0, !dbg !1447
  br i1 %17, label %18, label %21, !dbg !1448

; <label>:18:                                     ; preds = %15
  %19 = tail call %struct._IO_FILE* @fdopen(i32 %9, i8* %1) #12, !dbg !1449
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, i64 0, metadata !1416, metadata !665), !dbg !1432
  %20 = icmp eq %struct._IO_FILE* %19, null, !dbg !1450
  br i1 %20, label %21, label %25, !dbg !1451

; <label>:21:                                     ; preds = %18, %15
  %22 = tail call i32* @__errno_location() #17, !dbg !1452
  %23 = load i32, i32* %22, align 4, !dbg !1452, !tbaa !826
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !1426, metadata !665), !dbg !1453
  %24 = tail call i32 @close(i32 %9) #12, !dbg !1454
  store i32 %23, i32* %22, align 4, !dbg !1455, !tbaa !826
  br label %25

; <label>:25:                                     ; preds = %5, %18, %2, %21, %11
  %26 = phi %struct._IO_FILE* [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ]
  ret %struct._IO_FILE* %26, !dbg !1456
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1457 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1459, metadata !665), !dbg !1462
  %2 = icmp eq i8* %0, null, !dbg !1463
  br i1 %2, label %3, label %6, !dbg !1465

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1466, !tbaa !672
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.60, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1468
  tail call void @abort() #15, !dbg !1469
  unreachable, !dbg !1469

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1470
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1460, metadata !665), !dbg !1471
  %8 = icmp eq i8* %7, null, !dbg !1472
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1473
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1474
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1461, metadata !665), !dbg !1475
  %11 = ptrtoint i8* %10 to i64, !dbg !1476
  %12 = ptrtoint i8* %0 to i64, !dbg !1476
  %13 = sub i64 %11, %12, !dbg !1476
  %14 = icmp sgt i64 %13, 6, !dbg !1478
  br i1 %14, label %15, label %24, !dbg !1479

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1480
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.61, i64 0, i64 0), i64 7) #14, !dbg !1481
  %18 = icmp eq i32 %17, 0, !dbg !1482
  br i1 %18, label %19, label %24, !dbg !1483

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1459, metadata !665), !dbg !1462
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.62, i64 0, i64 0), i64 3) #14, !dbg !1484
  %21 = icmp eq i32 %20, 0, !dbg !1487
  br i1 %21, label %22, label %24, !dbg !1488

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1489
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1459, metadata !665), !dbg !1462
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1491, !tbaa !672
  br label %24, !dbg !1492

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1459, metadata !665), !dbg !1462
  store i8* %25, i8** @program_name, align 8, !dbg !1493, !tbaa !672
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1494, !tbaa !672
  ret void, !dbg !1495
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1496 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1501, metadata !665), !dbg !1504
  %2 = tail call i32* @__errno_location() #17, !dbg !1505
  %3 = load i32, i32* %2, align 4, !dbg !1505, !tbaa !826
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1502, metadata !665), !dbg !1506
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1507
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1507
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1507
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !1508
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1508
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1503, metadata !665), !dbg !1509
  store i32 %3, i32* %2, align 4, !dbg !1510, !tbaa !826
  ret %struct.quoting_options* %8, !dbg !1511
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #9 !dbg !1512 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1518, metadata !665), !dbg !1519
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1520
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1520
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1521
  %5 = load i32, i32* %4, align 8, !dbg !1521, !tbaa !1522
  ret i32 %5, !dbg !1524
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1525 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1529, metadata !665), !dbg !1531
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1530, metadata !665), !dbg !1532
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1533
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1533
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1534
  store i32 %1, i32* %5, align 8, !dbg !1535, !tbaa !1522
  ret void, !dbg !1536
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1537 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1541, metadata !665), !dbg !1549
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1542, metadata !665), !dbg !1550
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1543, metadata !665), !dbg !1551
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1544, metadata !665), !dbg !1552
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1553
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1553
  %6 = lshr i8 %1, 5, !dbg !1554
  %7 = zext i8 %6 to i64, !dbg !1554
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1555
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1545, metadata !665), !dbg !1556
  %9 = and i8 %1, 31, !dbg !1557
  %10 = zext i8 %9 to i32, !dbg !1558
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1547, metadata !665), !dbg !1559
  %11 = load i32, i32* %8, align 4, !dbg !1560, !tbaa !826
  %12 = lshr i32 %11, %10, !dbg !1561
  %13 = and i32 %12, 1, !dbg !1562
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1548, metadata !665), !dbg !1563
  %14 = and i32 %2, 1, !dbg !1564
  %15 = xor i32 %13, %14, !dbg !1565
  %16 = shl i32 %15, %10, !dbg !1566
  %17 = xor i32 %16, %11, !dbg !1567
  store i32 %17, i32* %8, align 4, !dbg !1567, !tbaa !826
  ret i32 %13, !dbg !1568
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1569 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1573, metadata !665), !dbg !1576
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1574, metadata !665), !dbg !1577
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1578
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1573, metadata !665), !dbg !1576
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1580
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1573, metadata !665), !dbg !1576
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1581
  %6 = load i32, i32* %5, align 4, !dbg !1581, !tbaa !1582
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1575, metadata !665), !dbg !1583
  store i32 %1, i32* %5, align 4, !dbg !1584, !tbaa !1582
  ret i32 %6, !dbg !1585
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1586 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1590, metadata !665), !dbg !1593
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1591, metadata !665), !dbg !1594
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1592, metadata !665), !dbg !1595
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1596
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1590, metadata !665), !dbg !1593
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1598
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1590, metadata !665), !dbg !1593
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1599
  store i32 10, i32* %6, align 8, !dbg !1600, !tbaa !1522
  %7 = icmp ne i8* %1, null, !dbg !1601
  %8 = icmp ne i8* %2, null, !dbg !1603
  %9 = and i1 %7, %8, !dbg !1604
  br i1 %9, label %11, label %10, !dbg !1604

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1605
  unreachable, !dbg !1605

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1606
  store i8* %1, i8** %12, align 8, !dbg !1607, !tbaa !1608
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1609
  store i8* %2, i8** %13, align 8, !dbg !1610, !tbaa !1611
  ret void, !dbg !1612
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1613 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1617, metadata !665), !dbg !1625
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1618, metadata !665), !dbg !1626
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1619, metadata !665), !dbg !1627
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1620, metadata !665), !dbg !1628
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1621, metadata !665), !dbg !1629
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1630
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1630
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1622, metadata !665), !dbg !1631
  %8 = tail call i32* @__errno_location() #17, !dbg !1632
  %9 = load i32, i32* %8, align 4, !dbg !1632, !tbaa !826
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1623, metadata !665), !dbg !1633
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1634
  %11 = load i32, i32* %10, align 8, !dbg !1634, !tbaa !1522
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1635
  %13 = load i32, i32* %12, align 4, !dbg !1635, !tbaa !1582
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1636
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1637
  %16 = load i8*, i8** %15, align 8, !dbg !1637, !tbaa !1608
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1638
  %18 = load i8*, i8** %17, align 8, !dbg !1638, !tbaa !1611
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1624, metadata !665), !dbg !1640
  store i32 %9, i32* %8, align 4, !dbg !1641, !tbaa !826
  ret i64 %19, !dbg !1642
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1643 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1649, metadata !665), !dbg !1711
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1650, metadata !665), !dbg !1712
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1651, metadata !665), !dbg !1713
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1652, metadata !665), !dbg !1714
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1653, metadata !665), !dbg !1715
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1654, metadata !665), !dbg !1716
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1655, metadata !665), !dbg !1717
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1656, metadata !665), !dbg !1718
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1657, metadata !665), !dbg !1719
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1659, metadata !665), !dbg !1720
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1660, metadata !665), !dbg !1721
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1661, metadata !665), !dbg !1722
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1662, metadata !665), !dbg !1723
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1663, metadata !665), !dbg !1724
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !1725
  %14 = icmp eq i64 %13, 1, !dbg !1726
  %15 = lshr i32 %5, 1, !dbg !1727
  %16 = trunc i32 %15 to i8, !dbg !1727
  %17 = and i8 %16, 1, !dbg !1727
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1665, metadata !665), !dbg !1727
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1666, metadata !665), !dbg !1728
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1667, metadata !665), !dbg !1729
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1668, metadata !665), !dbg !1730
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1731

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1650, metadata !665), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1668, metadata !665), !dbg !1730
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1667, metadata !665), !dbg !1729
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1666, metadata !665), !dbg !1728
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1665, metadata !665), !dbg !1727
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1652, metadata !665), !dbg !1714
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1663, metadata !665), !dbg !1724
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1662, metadata !665), !dbg !1723
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1661, metadata !665), !dbg !1722
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1660, metadata !665), !dbg !1721
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1659, metadata !665), !dbg !1720
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1657, metadata !665), !dbg !1719
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1656, metadata !665), !dbg !1718
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1653, metadata !665), !dbg !1715
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
  ], !dbg !1732

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1653, metadata !665), !dbg !1715
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1665, metadata !665), !dbg !1727
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1665, metadata !665), !dbg !1727
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1653, metadata !665), !dbg !1715
  br label %94, !dbg !1733

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1665, metadata !665), !dbg !1727
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1653, metadata !665), !dbg !1715
  %43 = and i8 %36, 1, !dbg !1735
  %44 = icmp eq i8 %43, 0, !dbg !1735
  br i1 %44, label %45, label %94, !dbg !1733

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1737
  br i1 %46, label %94, label %47, !dbg !1740

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1737, !tbaa !809
  br label %94, !dbg !1737

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.73, i64 0, i64 0), i32 %28), !dbg !1741
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1656, metadata !665), !dbg !1718
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), i32 %28), !dbg !1745
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1657, metadata !665), !dbg !1719
  br label %51, !dbg !1746

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1657, metadata !665), !dbg !1719
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1656, metadata !665), !dbg !1718
  %54 = and i8 %36, 1, !dbg !1747
  %55 = icmp eq i8 %54, 0, !dbg !1747
  br i1 %55, label %56, label %72, !dbg !1749

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1661, metadata !665), !dbg !1722
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1661, metadata !665), !dbg !1722
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1659, metadata !665), !dbg !1720
  %57 = load i8, i8* %52, align 1, !dbg !1750, !tbaa !809
  %58 = icmp eq i8 %57, 0, !dbg !1753
  br i1 %58, label %72, label %59, !dbg !1753

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1754

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1659, metadata !665), !dbg !1720
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1661, metadata !665), !dbg !1722
  %64 = icmp ult i64 %63, %40, !dbg !1754
  br i1 %64, label %65, label %67, !dbg !1757

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1754
  store i8 %61, i8* %66, align 1, !dbg !1754, !tbaa !809
  br label %67, !dbg !1754

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1757
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1659, metadata !665), !dbg !1720
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1758
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1661, metadata !665), !dbg !1722
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1661, metadata !665), !dbg !1722
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1659, metadata !665), !dbg !1720
  %70 = load i8, i8* %69, align 1, !dbg !1750, !tbaa !809
  %71 = icmp eq i8 %70, 0, !dbg !1753
  br i1 %71, label %72, label %60, !dbg !1753, !llvm.loop !1759

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1659, metadata !665), !dbg !1720
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1663, metadata !665), !dbg !1724
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1661, metadata !665), !dbg !1722
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1761
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1662, metadata !665), !dbg !1723
  br label %94, !dbg !1762

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1663, metadata !665), !dbg !1724
  br label %76, !dbg !1763

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1663, metadata !665), !dbg !1724
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1665, metadata !665), !dbg !1727
  br label %78, !dbg !1764

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1665, metadata !665), !dbg !1727
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1663, metadata !665), !dbg !1724
  %81 = and i8 %80, 1, !dbg !1765
  %82 = icmp eq i8 %81, 0, !dbg !1765
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1663, metadata !665), !dbg !1724
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1767
  br label %84, !dbg !1767

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1665, metadata !665), !dbg !1727
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1663, metadata !665), !dbg !1724
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1653, metadata !665), !dbg !1715
  %87 = and i8 %86, 1, !dbg !1768
  %88 = icmp eq i8 %87, 0, !dbg !1768
  br i1 %88, label %89, label %94, !dbg !1770

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1771
  br i1 %90, label %94, label %91, !dbg !1774

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1771, !tbaa !809
  br label %94, !dbg !1771

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1665, metadata !665), !dbg !1727
  br label %94, !dbg !1775

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1776
  unreachable, !dbg !1776

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1665, metadata !665), !dbg !1727
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1663, metadata !665), !dbg !1724
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1662, metadata !665), !dbg !1723
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1661, metadata !665), !dbg !1722
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1659, metadata !665), !dbg !1720
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1657, metadata !665), !dbg !1719
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1656, metadata !665), !dbg !1718
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1653, metadata !665), !dbg !1715
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1658, metadata !665), !dbg !1777
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
  br label %122, !dbg !1778

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1650, metadata !665), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1668, metadata !665), !dbg !1730
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1667, metadata !665), !dbg !1729
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1666, metadata !665), !dbg !1728
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1652, metadata !665), !dbg !1714
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1660, metadata !665), !dbg !1721
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1659, metadata !665), !dbg !1720
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1658, metadata !665), !dbg !1777
  %131 = icmp eq i64 %126, -1, !dbg !1779
  br i1 %131, label %134, label %132, !dbg !1780

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1781
  br i1 %133, label %590, label %138, !dbg !1782

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1783
  %136 = load i8, i8* %135, align 1, !dbg !1783, !tbaa !809
  %137 = icmp eq i8 %136, 0, !dbg !1784
  br i1 %137, label %590, label %138, !dbg !1782

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1674, metadata !665), !dbg !1785
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1675, metadata !665), !dbg !1786
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1676, metadata !665), !dbg !1787
  br i1 %108, label %139, label %154, !dbg !1788

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1790
  %141 = and i1 %109, %131, !dbg !1791
  br i1 %141, label %142, label %144, !dbg !1791

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1792
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1652, metadata !665), !dbg !1714
  br label %144, !dbg !1793

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1652, metadata !665), !dbg !1714
  %146 = icmp ugt i64 %140, %145, !dbg !1794
  br i1 %146, label %154, label %147, !dbg !1795

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1796
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1797
  %150 = icmp ne i32 %149, 0, !dbg !1798
  %151 = or i1 %150, %111, !dbg !1799
  %152 = xor i1 %150, true, !dbg !1799
  %153 = zext i1 %152 to i8, !dbg !1799
  br i1 %151, label %154, label %635, !dbg !1799

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1674, metadata !665), !dbg !1785
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1652, metadata !665), !dbg !1714
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1800
  %158 = load i8, i8* %157, align 1, !dbg !1800, !tbaa !809
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1669, metadata !665), !dbg !1801
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
  ], !dbg !1802

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1803

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1804

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1675, metadata !665), !dbg !1786
  %162 = and i8 %127, 1, !dbg !1808
  %163 = icmp eq i8 %162, 0, !dbg !1808
  %164 = and i1 %113, %163, !dbg !1808
  br i1 %164, label %165, label %181, !dbg !1808

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1810
  br i1 %166, label %167, label %169, !dbg !1814

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1810
  store i8 39, i8* %168, align 1, !dbg !1810, !tbaa !809
  br label %169, !dbg !1810

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1659, metadata !665), !dbg !1720
  %171 = icmp ult i64 %170, %130, !dbg !1815
  br i1 %171, label %172, label %174, !dbg !1818

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1815
  store i8 36, i8* %173, align 1, !dbg !1815, !tbaa !809
  br label %174, !dbg !1815

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1818
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1659, metadata !665), !dbg !1720
  %176 = icmp ult i64 %175, %130, !dbg !1819
  br i1 %176, label %177, label %179, !dbg !1822

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1819
  store i8 39, i8* %178, align 1, !dbg !1819, !tbaa !809
  br label %179, !dbg !1819

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1822
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1659, metadata !665), !dbg !1720
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1666, metadata !665), !dbg !1728
  br label %181, !dbg !1823

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1666, metadata !665), !dbg !1728
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1659, metadata !665), !dbg !1720
  %184 = icmp ult i64 %182, %130, !dbg !1824
  br i1 %184, label %185, label %187, !dbg !1827

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1824
  store i8 92, i8* %186, align 1, !dbg !1824, !tbaa !809
  br label %187, !dbg !1824

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1827
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1659, metadata !665), !dbg !1720
  br i1 %105, label %189, label %470, !dbg !1828

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1830
  %191 = icmp ult i64 %190, %155, !dbg !1831
  br i1 %191, label %192, label %470, !dbg !1832

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1833
  %194 = load i8, i8* %193, align 1, !dbg !1833, !tbaa !809
  %195 = add i8 %194, -48, !dbg !1834
  %196 = icmp ult i8 %195, 10, !dbg !1834
  br i1 %196, label %197, label %470, !dbg !1834

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1835
  br i1 %198, label %199, label %201, !dbg !1839

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1835
  store i8 48, i8* %200, align 1, !dbg !1835, !tbaa !809
  br label %201, !dbg !1835

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1839
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1659, metadata !665), !dbg !1720
  %203 = icmp ult i64 %202, %130, !dbg !1840
  br i1 %203, label %204, label %206, !dbg !1843

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1840
  store i8 48, i8* %205, align 1, !dbg !1840, !tbaa !809
  br label %206, !dbg !1840

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1843
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1659, metadata !665), !dbg !1720
  br label %470, !dbg !1844

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1845

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1846

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1847

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1849

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1851
  %214 = icmp ult i64 %213, %155, !dbg !1852
  br i1 %214, label %215, label %470, !dbg !1853

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1854
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1855
  %218 = load i8, i8* %217, align 1, !dbg !1855, !tbaa !809
  %219 = icmp eq i8 %218, 63, !dbg !1856
  br i1 %219, label %220, label %470, !dbg !1857

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1858
  %222 = load i8, i8* %221, align 1, !dbg !1858, !tbaa !809
  %223 = sext i8 %222 to i32, !dbg !1858
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
  ], !dbg !1859

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1860

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1669, metadata !665), !dbg !1801
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1658, metadata !665), !dbg !1777
  %226 = icmp ult i64 %124, %130, !dbg !1862
  br i1 %226, label %227, label %229, !dbg !1865

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1862
  store i8 63, i8* %228, align 1, !dbg !1862, !tbaa !809
  br label %229, !dbg !1862

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1865
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1659, metadata !665), !dbg !1720
  %231 = icmp ult i64 %230, %130, !dbg !1866
  br i1 %231, label %232, label %234, !dbg !1869

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1866
  store i8 34, i8* %233, align 1, !dbg !1866, !tbaa !809
  br label %234, !dbg !1866

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1869
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1659, metadata !665), !dbg !1720
  %236 = icmp ult i64 %235, %130, !dbg !1870
  br i1 %236, label %237, label %239, !dbg !1873

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1870
  store i8 34, i8* %238, align 1, !dbg !1870, !tbaa !809
  br label %239, !dbg !1870

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1873
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1659, metadata !665), !dbg !1720
  %241 = icmp ult i64 %240, %130, !dbg !1874
  br i1 %241, label %242, label %244, !dbg !1877

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1874
  store i8 63, i8* %243, align 1, !dbg !1874, !tbaa !809
  br label %244, !dbg !1874

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1877
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1659, metadata !665), !dbg !1720
  br label %470, !dbg !1878

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1673, metadata !665), !dbg !1879
  br label %256, !dbg !1880

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1673, metadata !665), !dbg !1879
  br label %256, !dbg !1881

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1673, metadata !665), !dbg !1879
  br label %254, !dbg !1882

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1673, metadata !665), !dbg !1879
  br label %254, !dbg !1883

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1673, metadata !665), !dbg !1879
  br label %256, !dbg !1884

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1673, metadata !665), !dbg !1879
  br i1 %113, label %252, label %253, !dbg !1885

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1886

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1889

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1673, metadata !665), !dbg !1879
  br i1 %117, label %256, label %635, !dbg !1891

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1673, metadata !665), !dbg !1879
  br i1 %104, label %497, label %470, !dbg !1893

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1894
  br i1 %259, label %260, label %265, !dbg !1896

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1897, !tbaa !809
  %262 = icmp ne i8 %261, 0, !dbg !1898
  %263 = icmp ne i64 %123, 0, !dbg !1899
  %264 = or i1 %263, %262, !dbg !1901
  br i1 %264, label %470, label %271, !dbg !1901

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1902
  %267 = icmp ne i64 %123, 0, !dbg !1899
  %268 = or i1 %267, %266, !dbg !1896
  br i1 %268, label %470, label %271, !dbg !1896

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1899
  br i1 %270, label %271, label %470, !dbg !1903

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1676, metadata !665), !dbg !1787
  br label %272, !dbg !1904

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1676, metadata !665), !dbg !1787
  br i1 %117, label %470, label %635, !dbg !1905

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1667, metadata !665), !dbg !1729
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1676, metadata !665), !dbg !1787
  br i1 %113, label %275, label %470, !dbg !1907

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1908

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1911
  %278 = icmp ne i64 %125, 0, !dbg !1913
  %279 = or i1 %278, %277, !dbg !1914
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1660, metadata !665), !dbg !1721
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1650, metadata !665), !dbg !1712
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1914
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1914
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1650, metadata !665), !dbg !1712
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1660, metadata !665), !dbg !1721
  %282 = icmp ult i64 %124, %281, !dbg !1915
  br i1 %282, label %283, label %285, !dbg !1918

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1915
  store i8 39, i8* %284, align 1, !dbg !1915, !tbaa !809
  br label %285, !dbg !1915

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1918
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1659, metadata !665), !dbg !1720
  %287 = icmp ult i64 %286, %281, !dbg !1919
  br i1 %287, label %288, label %290, !dbg !1922

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1919
  store i8 92, i8* %289, align 1, !dbg !1919, !tbaa !809
  br label %290, !dbg !1919

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1922
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1659, metadata !665), !dbg !1720
  %292 = icmp ult i64 %291, %281, !dbg !1923
  br i1 %292, label %293, label %295, !dbg !1926

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1923
  store i8 39, i8* %294, align 1, !dbg !1923, !tbaa !809
  br label %295, !dbg !1923

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1926
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1659, metadata !665), !dbg !1720
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1666, metadata !665), !dbg !1728
  br label %470, !dbg !1927

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1928

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1677, metadata !665), !dbg !1929
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1930
  %300 = load i16*, i16** %299, align 8, !dbg !1930, !tbaa !672
  %301 = zext i8 %158 to i64, !dbg !1930
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1930
  %303 = load i16, i16* %302, align 2, !dbg !1930, !tbaa !1932
  %304 = lshr i16 %303, 14, !dbg !1933
  %305 = trunc i16 %304 to i8, !dbg !1933
  %306 = and i8 %305, 1, !dbg !1933
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1680, metadata !665), !dbg !1934
  br label %362, !dbg !1935

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #12, !dbg !1936
  store i64 0, i64* %10, align 8, !dbg !1937
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1677, metadata !665), !dbg !1929
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1680, metadata !665), !dbg !1934
  %308 = icmp eq i64 %155, -1, !dbg !1938
  br i1 %308, label %309, label %311, !dbg !1940

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1941
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1652, metadata !665), !dbg !1714
  br label %311, !dbg !1942

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1652, metadata !665), !dbg !1714
  br label %313, !dbg !1943, !llvm.loop !1944

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1680, metadata !665), !dbg !1934
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1677, metadata !665), !dbg !1929
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #12, !dbg !1946
  %316 = add i64 %314, %123, !dbg !1947
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1948
  %318 = sub i64 %312, %316, !dbg !1949
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1681, metadata !665), !dbg !1950
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1697, metadata !665), !dbg !1951
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #12, !dbg !1952
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1700, metadata !665), !dbg !1953
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1954

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1680, metadata !665), !dbg !1934
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1677, metadata !665), !dbg !1929
  %321 = icmp ugt i64 %312, %316, !dbg !1955
  br i1 %321, label %322, label %347, !dbg !1957

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1958

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1677, metadata !665), !dbg !1929
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1958
  %327 = load i8, i8* %326, align 1, !dbg !1958, !tbaa !809
  %328 = icmp eq i8 %327, 0, !dbg !1957
  br i1 %328, label %347, label %329, !dbg !1959

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1677, metadata !665), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1677, metadata !665), !dbg !1929
  %331 = add i64 %330, %123, !dbg !1961
  %332 = icmp ult i64 %331, %312, !dbg !1955
  br i1 %332, label %323, label %347, !dbg !1957, !llvm.loop !1962

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1963
  %335 = and i1 %115, %334, !dbg !1966
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1701, metadata !665), !dbg !1967
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1701, metadata !665), !dbg !1967
  br i1 %335, label %336, label %350, !dbg !1966

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1968

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1701, metadata !665), !dbg !1967
  %339 = add i64 %338, %316, !dbg !1968
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1969
  %341 = load i8, i8* %340, align 1, !dbg !1969, !tbaa !809
  %342 = sext i8 %341 to i32, !dbg !1969
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1970

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1971
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1701, metadata !665), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1701, metadata !665), !dbg !1967
  %345 = icmp ult i64 %344, %319, !dbg !1963
  br i1 %345, label %337, label %350, !dbg !1972, !llvm.loop !1973

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1975

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1680, metadata !665), !dbg !1934
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1677, metadata !665), !dbg !1929
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !1975
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1976, !tbaa !826
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1697, metadata !665), !dbg !1951
  %352 = call i32 @iswprint(i32 %351) #12, !dbg !1978
  %353 = icmp eq i32 %352, 0, !dbg !1978
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1680, metadata !665), !dbg !1934
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1979
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1680, metadata !665), !dbg !1934
  %355 = add i64 %319, %314, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1677, metadata !665), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1680, metadata !665), !dbg !1934
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1677, metadata !665), !dbg !1929
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !1975
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1681, metadata !665), !dbg !1950
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1981
  %357 = icmp eq i32 %356, 0, !dbg !1982
  br i1 %357, label %313, label %358, !dbg !1983, !llvm.loop !1944

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #12, !dbg !1984
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1680, metadata !665), !dbg !1934
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1677, metadata !665), !dbg !1929
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !1975
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #12, !dbg !1984
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1680, metadata !665), !dbg !1934
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1677, metadata !665), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1652, metadata !665), !dbg !1714
  %366 = and i8 %365, 1, !dbg !1985
  %367 = icmp ne i8 %366, 0, !dbg !1985
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1676, metadata !665), !dbg !1787
  %368 = icmp ult i64 %364, 2, !dbg !1986
  %369 = or i1 %367, %112, !dbg !1987
  %370 = and i1 %368, %369, !dbg !1988
  br i1 %370, label %470, label %371, !dbg !1988

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1989
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1708, metadata !665), !dbg !1990
  br label %373, !dbg !1991

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1675, metadata !665), !dbg !1786
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1674, metadata !665), !dbg !1785
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1669, metadata !665), !dbg !1801
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1666, metadata !665), !dbg !1728
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1659, metadata !665), !dbg !1720
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1658, metadata !665), !dbg !1777
  br i1 %369, label %426, label %380, !dbg !1992

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1997

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1675, metadata !665), !dbg !1786
  %382 = and i8 %376, 1, !dbg !2000
  %383 = icmp eq i8 %382, 0, !dbg !2000
  %384 = and i1 %113, %383, !dbg !2000
  br i1 %384, label %385, label %401, !dbg !2000

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !2002
  br i1 %386, label %387, label %389, !dbg !2006

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2002
  store i8 39, i8* %388, align 1, !dbg !2002, !tbaa !809
  br label %389, !dbg !2002

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !2006
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1659, metadata !665), !dbg !1720
  %391 = icmp ult i64 %390, %130, !dbg !2007
  br i1 %391, label %392, label %394, !dbg !2010

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2007
  store i8 36, i8* %393, align 1, !dbg !2007, !tbaa !809
  br label %394, !dbg !2007

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !2010
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1659, metadata !665), !dbg !1720
  %396 = icmp ult i64 %395, %130, !dbg !2011
  br i1 %396, label %397, label %399, !dbg !2014

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2011
  store i8 39, i8* %398, align 1, !dbg !2011, !tbaa !809
  br label %399, !dbg !2011

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1659, metadata !665), !dbg !1720
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1666, metadata !665), !dbg !1728
  br label %401, !dbg !2015

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1666, metadata !665), !dbg !1728
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1659, metadata !665), !dbg !1720
  %404 = icmp ult i64 %402, %130, !dbg !2016
  br i1 %404, label %405, label %407, !dbg !2019

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !2016
  store i8 92, i8* %406, align 1, !dbg !2016, !tbaa !809
  br label %407, !dbg !2016

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !2019
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1659, metadata !665), !dbg !1720
  %409 = icmp ult i64 %408, %130, !dbg !2020
  br i1 %409, label %410, label %414, !dbg !2023

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !2020
  %412 = or i8 %411, 48, !dbg !2020
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2020
  store i8 %412, i8* %413, align 1, !dbg !2020, !tbaa !809
  br label %414, !dbg !2020

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !2023
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1659, metadata !665), !dbg !1720
  %416 = icmp ult i64 %415, %130, !dbg !2024
  br i1 %416, label %417, label %422, !dbg !2027

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !2024
  %419 = and i8 %418, 7, !dbg !2024
  %420 = or i8 %419, 48, !dbg !2024
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !2024
  store i8 %420, i8* %421, align 1, !dbg !2024, !tbaa !809
  br label %422, !dbg !2024

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !2027
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1659, metadata !665), !dbg !1720
  %424 = and i8 %377, 7, !dbg !2028
  %425 = or i8 %424, 48, !dbg !2029
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1669, metadata !665), !dbg !1801
  br label %435, !dbg !2030

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !2031
  %428 = icmp eq i8 %427, 0, !dbg !2031
  br i1 %428, label %435, label %429, !dbg !2033

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !2034
  br i1 %430, label %431, label %433, !dbg !2038

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2034
  store i8 92, i8* %432, align 1, !dbg !2034, !tbaa !809
  br label %433, !dbg !2034

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !2038
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1659, metadata !665), !dbg !1720
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1674, metadata !665), !dbg !1785
  br label %435, !dbg !2039

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1675, metadata !665), !dbg !1786
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1674, metadata !665), !dbg !1785
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1669, metadata !665), !dbg !1801
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1666, metadata !665), !dbg !1728
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1659, metadata !665), !dbg !1720
  %441 = add i64 %374, 1, !dbg !2040
  %442 = icmp ugt i64 %372, %441, !dbg !2042
  br i1 %442, label %443, label %535, !dbg !2043

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !2044
  %445 = icmp ne i8 %444, 0, !dbg !2044
  %446 = and i8 %440, 1, !dbg !2044
  %447 = icmp eq i8 %446, 0, !dbg !2044
  %448 = and i1 %445, %447, !dbg !2044
  br i1 %448, label %449, label %460, !dbg !2044

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !2047
  br i1 %450, label %451, label %453, !dbg !2051

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !2047
  store i8 39, i8* %452, align 1, !dbg !2047, !tbaa !809
  br label %453, !dbg !2047

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !2051
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1659, metadata !665), !dbg !1720
  %455 = icmp ult i64 %454, %130, !dbg !2052
  br i1 %455, label %456, label %458, !dbg !2055

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2052
  store i8 39, i8* %457, align 1, !dbg !2052, !tbaa !809
  br label %458, !dbg !2052

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !2055
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1659, metadata !665), !dbg !1720
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1666, metadata !665), !dbg !1728
  br label %460, !dbg !2056

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1666, metadata !665), !dbg !1728
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1659, metadata !665), !dbg !1720
  %463 = icmp ult i64 %461, %130, !dbg !2057
  br i1 %463, label %464, label %466, !dbg !2060

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !2057
  store i8 %438, i8* %465, align 1, !dbg !2057, !tbaa !809
  br label %466, !dbg !2057

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !2060
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1659, metadata !665), !dbg !1720
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1658, metadata !665), !dbg !1777
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !2061
  %469 = load i8, i8* %468, align 1, !dbg !2061, !tbaa !809
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1669, metadata !665), !dbg !1801
  br label %373, !dbg !2062, !llvm.loop !2063

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1650, metadata !665), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1676, metadata !665), !dbg !1787
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1675, metadata !665), !dbg !1786
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1674, metadata !665), !dbg !1785
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1669, metadata !665), !dbg !1801
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1667, metadata !665), !dbg !1729
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1666, metadata !665), !dbg !1728
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1652, metadata !665), !dbg !1714
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1660, metadata !665), !dbg !1721
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1659, metadata !665), !dbg !1720
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1658, metadata !665), !dbg !1777
  br i1 %106, label %482, label %481, !dbg !2066

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !2068

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !2069

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !2070
  %485 = zext i8 %484 to i64, !dbg !2070
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !2071
  %487 = load i32, i32* %486, align 4, !dbg !2071, !tbaa !826
  %488 = and i8 %477, 31, !dbg !2072
  %489 = zext i8 %488 to i32, !dbg !2073
  %490 = shl i32 1, %489, !dbg !2074
  %491 = and i32 %487, %490, !dbg !2074
  %492 = icmp eq i32 %491, 0, !dbg !2074
  %493 = icmp eq i8 %156, 0, !dbg !2075
  %494 = and i1 %493, %492, !dbg !2076
  br i1 %494, label %535, label %497, !dbg !2076

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !2075
  br i1 %496, label %535, label %497, !dbg !2077

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1650, metadata !665), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1676, metadata !665), !dbg !1787
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1669, metadata !665), !dbg !1801
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1667, metadata !665), !dbg !1729
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1666, metadata !665), !dbg !1728
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1652, metadata !665), !dbg !1714
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1660, metadata !665), !dbg !1721
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1659, metadata !665), !dbg !1720
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1658, metadata !665), !dbg !1777
  br i1 %111, label %507, label %635, !dbg !2078

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1675, metadata !665), !dbg !1786
  %508 = and i8 %502, 1, !dbg !2080
  %509 = icmp eq i8 %508, 0, !dbg !2080
  %510 = and i1 %113, %509, !dbg !2080
  br i1 %510, label %511, label %527, !dbg !2080

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !2082
  br i1 %512, label %513, label %515, !dbg !2086

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !2082
  store i8 39, i8* %514, align 1, !dbg !2082, !tbaa !809
  br label %515, !dbg !2082

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !2086
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1659, metadata !665), !dbg !1720
  %517 = icmp ult i64 %516, %506, !dbg !2087
  br i1 %517, label %518, label %520, !dbg !2090

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !2087
  store i8 36, i8* %519, align 1, !dbg !2087, !tbaa !809
  br label %520, !dbg !2087

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !2090
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1659, metadata !665), !dbg !1720
  %522 = icmp ult i64 %521, %506, !dbg !2091
  br i1 %522, label %523, label %525, !dbg !2094

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !2091
  store i8 39, i8* %524, align 1, !dbg !2091, !tbaa !809
  br label %525, !dbg !2091

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !2094
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1659, metadata !665), !dbg !1720
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1666, metadata !665), !dbg !1728
  br label %527, !dbg !2095

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1666, metadata !665), !dbg !1728
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1659, metadata !665), !dbg !1720
  %530 = icmp ult i64 %528, %506, !dbg !2096
  br i1 %530, label %531, label %533, !dbg !2099

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2096
  store i8 92, i8* %532, align 1, !dbg !2096, !tbaa !809
  br label %533, !dbg !2096

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !2099
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1659, metadata !665), !dbg !1720
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1650, metadata !665), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1676, metadata !665), !dbg !1787
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1675, metadata !665), !dbg !1786
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1669, metadata !665), !dbg !1801
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1667, metadata !665), !dbg !1729
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1666, metadata !665), !dbg !1728
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1652, metadata !665), !dbg !1714
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1660, metadata !665), !dbg !1721
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1659, metadata !665), !dbg !1720
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1658, metadata !665), !dbg !1777
  br label %562, !dbg !2100

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1650, metadata !665), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1676, metadata !665), !dbg !1787
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1675, metadata !665), !dbg !1786
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1669, metadata !665), !dbg !1801
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1667, metadata !665), !dbg !1729
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1666, metadata !665), !dbg !1728
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1652, metadata !665), !dbg !1714
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1660, metadata !665), !dbg !1721
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1659, metadata !665), !dbg !1720
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1658, metadata !665), !dbg !1777
  %546 = and i8 %540, 1, !dbg !2100
  %547 = icmp ne i8 %546, 0, !dbg !2100
  %548 = and i8 %543, 1, !dbg !2100
  %549 = icmp eq i8 %548, 0, !dbg !2100
  %550 = and i1 %547, %549, !dbg !2100
  br i1 %550, label %551, label %562, !dbg !2100

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !2103
  br i1 %552, label %553, label %555, !dbg !2107

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !2103
  store i8 39, i8* %554, align 1, !dbg !2103, !tbaa !809
  br label %555, !dbg !2103

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !2107
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1659, metadata !665), !dbg !1720
  %557 = icmp ult i64 %556, %545, !dbg !2108
  br i1 %557, label %558, label %560, !dbg !2111

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !2108
  store i8 39, i8* %559, align 1, !dbg !2108, !tbaa !809
  br label %560, !dbg !2108

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !2111
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1659, metadata !665), !dbg !1720
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1666, metadata !665), !dbg !1728
  br label %562, !dbg !2112

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1666, metadata !665), !dbg !1728
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1659, metadata !665), !dbg !1720
  %572 = icmp ult i64 %570, %563, !dbg !2113
  br i1 %572, label %573, label %575, !dbg !2116

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !2113
  store i8 %565, i8* %574, align 1, !dbg !2113, !tbaa !809
  br label %575, !dbg !2113

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !2116
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1659, metadata !665), !dbg !1720
  %577 = and i8 %564, 1, !dbg !2117
  %578 = icmp eq i8 %577, 0, !dbg !2117
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1668, metadata !665), !dbg !1730
  %579 = select i1 %578, i8 0, i8 %129, !dbg !2119
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1668, metadata !665), !dbg !1730
  br label %580, !dbg !2120

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1650, metadata !665), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1668, metadata !665), !dbg !1730
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1667, metadata !665), !dbg !1729
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1666, metadata !665), !dbg !1728
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1652, metadata !665), !dbg !1714
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1660, metadata !665), !dbg !1721
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1659, metadata !665), !dbg !1720
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1658, metadata !665), !dbg !1777
  %589 = add i64 %581, 1, !dbg !2121
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1658, metadata !665), !dbg !1777
  br label %122, !dbg !2122, !llvm.loop !2123

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !2125
  %593 = and i1 %113, %592, !dbg !2127
  %594 = xor i1 %593, true, !dbg !2127
  %595 = or i1 %111, %594, !dbg !2127
  br i1 %595, label %596, label %635, !dbg !2127

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !2128
  %598 = xor i1 %597, true, !dbg !2128
  %599 = and i8 %128, 1, !dbg !2130
  %600 = icmp eq i8 %599, 0, !dbg !2130
  %601 = or i1 %600, %598, !dbg !2128
  br i1 %601, label %611, label %602, !dbg !2128

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !2131
  %604 = icmp eq i8 %603, 0, !dbg !2131
  br i1 %604, label %607, label %605, !dbg !2134

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !2135
  br label %645, !dbg !2136

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !2137
  %609 = icmp ne i64 %125, 0, !dbg !2139
  %610 = and i1 %609, %608, !dbg !2140
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1650, metadata !665), !dbg !1712
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1659, metadata !665), !dbg !1720
  br i1 %610, label %27, label %611, !dbg !2140

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !2141
  %613 = and i1 %612, %111, !dbg !2143
  br i1 %613, label %614, label %630, !dbg !2143

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1661, metadata !665), !dbg !1722
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1659, metadata !665), !dbg !1720
  %615 = load i8, i8* %99, align 1, !dbg !2144, !tbaa !809
  %616 = icmp eq i8 %615, 0, !dbg !2147
  br i1 %616, label %630, label %617, !dbg !2147

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !2148

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1659, metadata !665), !dbg !1720
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1661, metadata !665), !dbg !1722
  %622 = icmp ult i64 %621, %130, !dbg !2148
  br i1 %622, label %623, label %625, !dbg !2151

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2148
  store i8 %619, i8* %624, align 1, !dbg !2148, !tbaa !809
  br label %625, !dbg !2148

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !2151
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1659, metadata !665), !dbg !1720
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !2152
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1661, metadata !665), !dbg !1722
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1661, metadata !665), !dbg !1722
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1659, metadata !665), !dbg !1720
  %628 = load i8, i8* %627, align 1, !dbg !2144, !tbaa !809
  %629 = icmp eq i8 %628, 0, !dbg !2147
  br i1 %629, label %630, label %618, !dbg !2147, !llvm.loop !2153

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1659, metadata !665), !dbg !1720
  %632 = icmp ult i64 %631, %130, !dbg !2155
  br i1 %632, label %633, label %645, !dbg !2157

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !2158
  store i8 0, i8* %634, align 1, !dbg !2159, !tbaa !809
  br label %645, !dbg !2158

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1650, metadata !665), !dbg !1712
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1652, metadata !665), !dbg !1714
  %639 = icmp ne i32 %636, 2, !dbg !2160
  %640 = icmp eq i8 %103, 0, !dbg !2162
  %641 = or i1 %639, %640, !dbg !2163
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1653, metadata !665), !dbg !1715
  %642 = select i1 %641, i32 %636, i32 4, !dbg !2163
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1653, metadata !665), !dbg !1715
  %643 = and i32 %5, -3, !dbg !2164
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !2165
  br label %645, !dbg !2166

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !2167
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2168 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2172, metadata !665), !dbg !2176
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2173, metadata !665), !dbg !2177
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !2178
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2174, metadata !665), !dbg !2179
  %4 = icmp eq i8* %3, %0, !dbg !2180
  br i1 %4, label %5, label %75, !dbg !2182

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !2183
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2175, metadata !665), !dbg !2184
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2185, metadata !665), !dbg !2201
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2199, metadata !665), !dbg !2204
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2200, metadata !665), !dbg !2205
  %7 = load i8, i8* %6, align 1, !dbg !2206, !tbaa !809
  %8 = sext i8 %7 to i32, !dbg !2206
  %9 = and i32 %8, -33, !dbg !2206
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2206

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2208, metadata !665), !dbg !2222
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2220, metadata !665), !dbg !2226
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2221, metadata !665), !dbg !2227
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2228
  %12 = load i8, i8* %11, align 1, !dbg !2228, !tbaa !809
  %13 = sext i8 %12 to i32, !dbg !2228
  %14 = and i32 %13, -33, !dbg !2228
  %15 = icmp eq i32 %14, 84, !dbg !2228
  br i1 %15, label %16, label %72, !dbg !2228

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2230, metadata !665), !dbg !2243
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2241, metadata !665), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2242, metadata !665), !dbg !2248
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2249
  %18 = load i8, i8* %17, align 1, !dbg !2249, !tbaa !809
  %19 = sext i8 %18 to i32, !dbg !2249
  %20 = and i32 %19, -33, !dbg !2249
  %21 = icmp eq i32 %20, 70, !dbg !2249
  br i1 %21, label %22, label %72, !dbg !2249

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2251, metadata !665), !dbg !2263
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2261, metadata !665), !dbg !2267
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2262, metadata !665), !dbg !2268
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2269
  %24 = load i8, i8* %23, align 1, !dbg !2269, !tbaa !809
  %25 = icmp eq i8 %24, 45, !dbg !2269
  br i1 %25, label %26, label %72, !dbg !2271

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2272, metadata !665), !dbg !2283
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2281, metadata !665), !dbg !2287
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2282, metadata !665), !dbg !2288
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2289
  %28 = load i8, i8* %27, align 1, !dbg !2289, !tbaa !809
  %29 = icmp eq i8 %28, 56, !dbg !2289
  br i1 %29, label %30, label %72, !dbg !2291

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2292, metadata !665), !dbg !2302
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2300, metadata !665), !dbg !2306
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2301, metadata !665), !dbg !2307
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2308
  %32 = load i8, i8* %31, align 1, !dbg !2308, !tbaa !809
  %33 = icmp eq i8 %32, 0, !dbg !2308
  br i1 %33, label %34, label %72, !dbg !2310

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2311, !tbaa !809
  %36 = icmp eq i8 %35, 96, !dbg !2312
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.76, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.77, i64 0, i64 0), !dbg !2311
  br label %75, !dbg !2313

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2208, metadata !665), !dbg !2314
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2220, metadata !665), !dbg !2318
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2221, metadata !665), !dbg !2319
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2320
  %40 = load i8, i8* %39, align 1, !dbg !2320, !tbaa !809
  %41 = sext i8 %40 to i32, !dbg !2320
  %42 = and i32 %41, -33, !dbg !2320
  %43 = icmp eq i32 %42, 66, !dbg !2320
  br i1 %43, label %44, label %72, !dbg !2320

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2230, metadata !665), !dbg !2321
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2241, metadata !665), !dbg !2323
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2242, metadata !665), !dbg !2324
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2325
  %46 = load i8, i8* %45, align 1, !dbg !2325, !tbaa !809
  %47 = icmp eq i8 %46, 49, !dbg !2325
  br i1 %47, label %48, label %72, !dbg !2326

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2251, metadata !665), !dbg !2327
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2261, metadata !665), !dbg !2329
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2262, metadata !665), !dbg !2330
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2331
  %50 = load i8, i8* %49, align 1, !dbg !2331, !tbaa !809
  %51 = icmp eq i8 %50, 56, !dbg !2331
  br i1 %51, label %52, label %72, !dbg !2332

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2272, metadata !665), !dbg !2333
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2281, metadata !665), !dbg !2335
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2282, metadata !665), !dbg !2336
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2337
  %54 = load i8, i8* %53, align 1, !dbg !2337, !tbaa !809
  %55 = icmp eq i8 %54, 48, !dbg !2337
  br i1 %55, label %56, label %72, !dbg !2338

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2292, metadata !665), !dbg !2339
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2300, metadata !665), !dbg !2341
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2301, metadata !665), !dbg !2342
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2343
  %58 = load i8, i8* %57, align 1, !dbg !2343, !tbaa !809
  %59 = icmp eq i8 %58, 51, !dbg !2343
  br i1 %59, label %60, label %72, !dbg !2344

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2345, metadata !665), !dbg !2354
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2352, metadata !665), !dbg !2358
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2353, metadata !665), !dbg !2359
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2360
  %62 = load i8, i8* %61, align 1, !dbg !2360, !tbaa !809
  %63 = icmp eq i8 %62, 48, !dbg !2360
  br i1 %63, label %64, label %72, !dbg !2362

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2363, metadata !665), !dbg !2371
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2369, metadata !665), !dbg !2375
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2370, metadata !665), !dbg !2376
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2377
  %66 = load i8, i8* %65, align 1, !dbg !2377, !tbaa !809
  %67 = icmp eq i8 %66, 0, !dbg !2377
  br i1 %67, label %68, label %72, !dbg !2379

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2380, !tbaa !809
  %70 = icmp eq i8 %69, 96, !dbg !2381
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.78, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.79, i64 0, i64 0), !dbg !2380
  br label %75, !dbg !2382

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2383
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), !dbg !2384
  br label %75, !dbg !2385

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2386
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2387 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2391, metadata !665), !dbg !2394
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2392, metadata !665), !dbg !2395
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2393, metadata !665), !dbg !2396
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2397, metadata !665) #12, !dbg !2410
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2402, metadata !665) #12, !dbg !2412
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2403, metadata !665) #12, !dbg !2413
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2404, metadata !665) #12, !dbg !2414
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2415
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2415
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2405, metadata !665) #12, !dbg !2416
  %6 = tail call i32* @__errno_location() #17, !dbg !2417
  %7 = load i32, i32* %6, align 4, !dbg !2417, !tbaa !826
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2406, metadata !665) #12, !dbg !2418
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2419
  %9 = load i32, i32* %8, align 4, !dbg !2419, !tbaa !1582
  %10 = or i32 %9, 1, !dbg !2420
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2407, metadata !665) #12, !dbg !2421
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2422
  %12 = load i32, i32* %11, align 8, !dbg !2422, !tbaa !1522
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2423
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2424
  %15 = load i8*, i8** %14, align 8, !dbg !2424, !tbaa !1608
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2425
  %17 = load i8*, i8** %16, align 8, !dbg !2425, !tbaa !1611
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #12, !dbg !2426
  %19 = add i64 %18, 1, !dbg !2427
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2408, metadata !665) #12, !dbg !2428
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2429, metadata !665) #12, !dbg !2434
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !2436
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2409, metadata !665) #12, !dbg !2437
  %21 = load i32, i32* %11, align 8, !dbg !2438, !tbaa !1522
  %22 = load i8*, i8** %14, align 8, !dbg !2439, !tbaa !1608
  %23 = load i8*, i8** %16, align 8, !dbg !2440, !tbaa !1611
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #12, !dbg !2441
  store i32 %7, i32* %6, align 4, !dbg !2442, !tbaa !826
  ret i8* %20, !dbg !2443
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2398 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2397, metadata !665), !dbg !2444
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2402, metadata !665), !dbg !2445
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2403, metadata !665), !dbg !2446
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2404, metadata !665), !dbg !2447
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2448
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2448
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2405, metadata !665), !dbg !2449
  %7 = tail call i32* @__errno_location() #17, !dbg !2450
  %8 = load i32, i32* %7, align 4, !dbg !2450, !tbaa !826
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2406, metadata !665), !dbg !2451
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2452
  %10 = load i32, i32* %9, align 4, !dbg !2452, !tbaa !1582
  %11 = icmp ne i64* %2, null, !dbg !2453
  %12 = xor i1 %11, true, !dbg !2453
  %13 = zext i1 %12 to i32, !dbg !2453
  %14 = or i32 %10, %13, !dbg !2454
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2407, metadata !665), !dbg !2455
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2456
  %16 = load i32, i32* %15, align 8, !dbg !2456, !tbaa !1522
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2457
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2458
  %19 = load i8*, i8** %18, align 8, !dbg !2458, !tbaa !1608
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2459
  %21 = load i8*, i8** %20, align 8, !dbg !2459, !tbaa !1611
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2460
  %23 = add i64 %22, 1, !dbg !2461
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2408, metadata !665), !dbg !2462
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2429, metadata !665) #12, !dbg !2463
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !2465
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2409, metadata !665), !dbg !2466
  %25 = load i32, i32* %15, align 8, !dbg !2467, !tbaa !1522
  %26 = load i8*, i8** %18, align 8, !dbg !2468, !tbaa !1608
  %27 = load i8*, i8** %20, align 8, !dbg !2469, !tbaa !1611
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2470
  store i32 %8, i32* %7, align 4, !dbg !2471, !tbaa !826
  br i1 %11, label %29, label %30, !dbg !2472

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2473, !tbaa !2475
  br label %30, !dbg !2476

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2477
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2478 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2482, !tbaa !672
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2480, metadata !665), !dbg !2483
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2481, metadata !665), !dbg !2484
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2481, metadata !665), !dbg !2484
  %2 = load i32, i32* @nslots, align 4, !dbg !2485, !tbaa !826
  %3 = icmp sgt i32 %2, 1, !dbg !2488
  br i1 %3, label %4, label %13, !dbg !2489

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2490

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2481, metadata !665), !dbg !2484
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2490
  %8 = load i8*, i8** %7, align 8, !dbg !2490, !tbaa !2491
  tail call void @free(i8* %8) #12, !dbg !2493
  %9 = add nuw i64 %6, 1, !dbg !2494
  %10 = load i32, i32* @nslots, align 4, !dbg !2485, !tbaa !826
  %11 = sext i32 %10 to i64, !dbg !2488
  %12 = icmp slt i64 %9, %11, !dbg !2488
  br i1 %12, label %5, label %13, !dbg !2489, !llvm.loop !2495

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2497
  %15 = load i8*, i8** %14, align 8, !dbg !2497, !tbaa !2491
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2499
  br i1 %16, label %18, label %17, !dbg !2500

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #12, !dbg !2501
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2503, !tbaa !2504
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2505, !tbaa !2491
  br label %18, !dbg !2506

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2507
  br i1 %19, label %22, label %20, !dbg !2509

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2510
  tail call void @free(i8* %21) #12, !dbg !2512
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2513, !tbaa !672
  br label %22, !dbg !2514

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2515, !tbaa !826
  ret void, !dbg !2516
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2517 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2521, metadata !665), !dbg !2523
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2522, metadata !665), !dbg !2524
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2525
  ret i8* %3, !dbg !2526
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2527 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2531, metadata !665), !dbg !2545
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2532, metadata !665), !dbg !2546
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2533, metadata !665), !dbg !2547
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2534, metadata !665), !dbg !2548
  %5 = tail call i32* @__errno_location() #17, !dbg !2549
  %6 = load i32, i32* %5, align 4, !dbg !2549, !tbaa !826
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2535, metadata !665), !dbg !2550
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2551, !tbaa !672
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2536, metadata !665), !dbg !2552
  %8 = icmp slt i32 %0, 0, !dbg !2553
  br i1 %8, label %9, label %10, !dbg !2555

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2556
  unreachable, !dbg !2556

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2557, !tbaa !826
  %12 = icmp sgt i32 %11, %0, !dbg !2558
  br i1 %12, label %34, label %13, !dbg !2559

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2560
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2561
  br i1 %15, label %16, label %17, !dbg !2563

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2564
  unreachable, !dbg !2564

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2565
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2565
  %20 = add nsw i32 %0, 1, !dbg !2566
  %21 = sext i32 %20 to i64, !dbg !2567
  %22 = shl nsw i64 %21, 4, !dbg !2568
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !2569
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2569
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2536, metadata !665), !dbg !2552
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2570, !tbaa !672
  br i1 %14, label %25, label %26, !dbg !2571

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2572, !tbaa.struct !2574
  br label %26, !dbg !2575

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2576, !tbaa !826
  %28 = sext i32 %27 to i64, !dbg !2577
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2577
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2578
  %31 = sub nsw i32 %20, %27, !dbg !2579
  %32 = sext i32 %31 to i64, !dbg !2580
  %33 = shl nsw i64 %32, 4, !dbg !2581
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2578
  store i32 %20, i32* @nslots, align 4, !dbg !2582, !tbaa !826
  br label %34, !dbg !2583

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2536, metadata !665), !dbg !2552
  %36 = sext i32 %0 to i64, !dbg !2584
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2585
  %38 = load i64, i64* %37, align 8, !dbg !2585, !tbaa !2504
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2540, metadata !665), !dbg !2586
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2587
  %40 = load i8*, i8** %39, align 8, !dbg !2587, !tbaa !2491
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2542, metadata !665), !dbg !2588
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2589
  %42 = load i32, i32* %41, align 4, !dbg !2589, !tbaa !1582
  %43 = or i32 %42, 1, !dbg !2590
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2543, metadata !665), !dbg !2591
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2592
  %45 = load i32, i32* %44, align 8, !dbg !2592, !tbaa !1522
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2593
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2594
  %48 = load i8*, i8** %47, align 8, !dbg !2594, !tbaa !1608
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2595
  %50 = load i8*, i8** %49, align 8, !dbg !2595, !tbaa !1611
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2596
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2544, metadata !665), !dbg !2597
  %52 = icmp ugt i64 %38, %51, !dbg !2598
  br i1 %52, label %63, label %53, !dbg !2600

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2601
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2540, metadata !665), !dbg !2586
  store i64 %54, i64* %37, align 8, !dbg !2603, !tbaa !2504
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2604
  br i1 %55, label %57, label %56, !dbg !2606

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !2607
  br label %57, !dbg !2607

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2429, metadata !665) #12, !dbg !2608
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !2610
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2542, metadata !665), !dbg !2588
  store i8* %58, i8** %39, align 8, !dbg !2611, !tbaa !2491
  %59 = load i32, i32* %44, align 8, !dbg !2612, !tbaa !1522
  %60 = load i8*, i8** %47, align 8, !dbg !2613, !tbaa !1608
  %61 = load i8*, i8** %49, align 8, !dbg !2614, !tbaa !1611
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2615
  br label %63, !dbg !2616

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2542, metadata !665), !dbg !2588
  store i32 %6, i32* %5, align 4, !dbg !2617, !tbaa !826
  ret i8* %64, !dbg !2618
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2619 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2623, metadata !665), !dbg !2626
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2624, metadata !665), !dbg !2627
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2625, metadata !665), !dbg !2628
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2629
  ret i8* %4, !dbg !2630
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2631 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2635, metadata !665), !dbg !2636
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2521, metadata !665) #12, !dbg !2637
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2522, metadata !665) #12, !dbg !2639
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2640
  ret i8* %2, !dbg !2641
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2642 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2646, metadata !665), !dbg !2648
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2647, metadata !665), !dbg !2649
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2623, metadata !665) #12, !dbg !2650
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2624, metadata !665) #12, !dbg !2652
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2625, metadata !665) #12, !dbg !2653
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2654
  ret i8* %3, !dbg !2655
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2656 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2664, metadata !2670), !dbg !2671
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2660, metadata !665), !dbg !2673
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2661, metadata !665), !dbg !2674
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2662, metadata !665), !dbg !2675
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2676
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2676
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2663, metadata !665), !dbg !2677
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2669, metadata !665) #12, !dbg !2678
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2679
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2679
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2664, metadata !665) #12, !dbg !2671
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2664, metadata !2680) #12, !dbg !2671
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2671
  %8 = icmp eq i32 %1, 10, !dbg !2681
  br i1 %8, label %9, label %10, !dbg !2683

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2684, !noalias !2685
  unreachable, !dbg !2684

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2664, metadata !2680) #12, !dbg !2671
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2688
  store i32 %1, i32* %11, align 8, !dbg !2688, !alias.scope !2685
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2688
  %13 = bitcast i32* %12 to i8*, !dbg !2688
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #12, !dbg !2688
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2689
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2663, metadata !665), !dbg !2677
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2690
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2691
  ret i8* %14, !dbg !2692
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2693 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2664, metadata !2670), !dbg !2702
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2697, metadata !665), !dbg !2704
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2698, metadata !665), !dbg !2705
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2699, metadata !665), !dbg !2706
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2700, metadata !665), !dbg !2707
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2708
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2708
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2701, metadata !665), !dbg !2709
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2669, metadata !665) #12, !dbg !2710
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2711
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2711
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2664, metadata !665) #12, !dbg !2702
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2664, metadata !2680) #12, !dbg !2702
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2702
  %9 = icmp eq i32 %1, 10, !dbg !2712
  br i1 %9, label %10, label %11, !dbg !2713

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2714, !noalias !2715
  unreachable, !dbg !2714

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2664, metadata !2680) #12, !dbg !2702
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2718
  store i32 %1, i32* %12, align 8, !dbg !2718, !alias.scope !2715
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2718
  %14 = bitcast i32* %13 to i8*, !dbg !2718
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #12, !dbg !2718
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2719
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2701, metadata !665), !dbg !2709
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2720
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2721
  ret i8* %15, !dbg !2722
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2723 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2664, metadata !2670), !dbg !2729
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2727, metadata !665), !dbg !2732
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2728, metadata !665), !dbg !2733
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2660, metadata !665) #12, !dbg !2734
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2661, metadata !665) #12, !dbg !2735
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2662, metadata !665) #12, !dbg !2736
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2737
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2737
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2663, metadata !665) #12, !dbg !2738
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2669, metadata !665) #12, !dbg !2739
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2740
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2740
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2664, metadata !665) #12, !dbg !2729
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2664, metadata !2680) #12, !dbg !2729
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2729
  %7 = icmp eq i32 %0, 10, !dbg !2741
  br i1 %7, label %8, label %9, !dbg !2742

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2743, !noalias !2744
  unreachable, !dbg !2743

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2664, metadata !2680) #12, !dbg !2729
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2747
  store i32 %0, i32* %10, align 8, !dbg !2747, !alias.scope !2744
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2747
  %12 = bitcast i32* %11 to i8*, !dbg !2747
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #12, !dbg !2747
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2748
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2663, metadata !665) #12, !dbg !2738
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !2749
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2750
  ret i8* %13, !dbg !2751
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2752 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2664, metadata !2670), !dbg !2759
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2756, metadata !665), !dbg !2762
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2757, metadata !665), !dbg !2763
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2758, metadata !665), !dbg !2764
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2697, metadata !665) #12, !dbg !2765
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2698, metadata !665) #12, !dbg !2766
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2699, metadata !665) #12, !dbg !2767
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2700, metadata !665) #12, !dbg !2768
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2769
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2769
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2701, metadata !665) #12, !dbg !2770
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2669, metadata !665) #12, !dbg !2771
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2772
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2772
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2664, metadata !665) #12, !dbg !2759
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2664, metadata !2680) #12, !dbg !2759
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2759
  %8 = icmp eq i32 %0, 10, !dbg !2773
  br i1 %8, label %9, label %10, !dbg !2774

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2775, !noalias !2776
  unreachable, !dbg !2775

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2664, metadata !2680) #12, !dbg !2759
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2779
  store i32 %0, i32* %11, align 8, !dbg !2779, !alias.scope !2776
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2779
  %13 = bitcast i32* %12 to i8*, !dbg !2779
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #12, !dbg !2779
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2780
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2701, metadata !665) #12, !dbg !2770
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #12, !dbg !2781
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2782
  ret i8* %14, !dbg !2783
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2784 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2788, metadata !665), !dbg !2792
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2789, metadata !665), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2790, metadata !665), !dbg !2794
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2795
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2795
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2796, !tbaa.struct !2797
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2791, metadata !665), !dbg !2798
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1541, metadata !665), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1542, metadata !665), !dbg !2801
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1543, metadata !665), !dbg !2802
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1544, metadata !665), !dbg !2803
  %6 = lshr i8 %2, 5, !dbg !2804
  %7 = zext i8 %6 to i64, !dbg !2804
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2805
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1545, metadata !665), !dbg !2806
  %9 = and i8 %2, 31, !dbg !2807
  %10 = zext i8 %9 to i32, !dbg !2808
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1547, metadata !665), !dbg !2809
  %11 = load i32, i32* %8, align 4, !dbg !2810, !tbaa !826
  %12 = lshr i32 %11, %10, !dbg !2811
  %13 = and i32 %12, 1, !dbg !2812
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1548, metadata !665), !dbg !2813
  %14 = xor i32 %13, 1, !dbg !2814
  %15 = shl i32 %14, %10, !dbg !2815
  %16 = xor i32 %15, %11, !dbg !2816
  store i32 %16, i32* %8, align 4, !dbg !2816, !tbaa !826
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2791, metadata !665), !dbg !2798
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2817
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2818
  ret i8* %17, !dbg !2819
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2820 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2824, metadata !665), !dbg !2826
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2825, metadata !665), !dbg !2827
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2788, metadata !665) #12, !dbg !2828
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2789, metadata !665) #12, !dbg !2830
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2790, metadata !665) #12, !dbg !2831
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2832
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2832
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !2833, !tbaa.struct !2797
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2791, metadata !665) #12, !dbg !2834
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1541, metadata !665) #12, !dbg !2835
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1542, metadata !665) #12, !dbg !2837
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1543, metadata !665) #12, !dbg !2838
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1544, metadata !665) #12, !dbg !2839
  %5 = lshr i8 %1, 5, !dbg !2840
  %6 = zext i8 %5 to i64, !dbg !2840
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2841
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1545, metadata !665) #12, !dbg !2842
  %8 = and i8 %1, 31, !dbg !2843
  %9 = zext i8 %8 to i32, !dbg !2844
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1547, metadata !665) #12, !dbg !2845
  %10 = load i32, i32* %7, align 4, !dbg !2846, !tbaa !826
  %11 = lshr i32 %10, %9, !dbg !2847
  %12 = and i32 %11, 1, !dbg !2848
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1548, metadata !665) #12, !dbg !2849
  %13 = xor i32 %12, 1, !dbg !2850
  %14 = shl i32 %13, %9, !dbg !2851
  %15 = xor i32 %14, %10, !dbg !2852
  store i32 %15, i32* %7, align 4, !dbg !2852, !tbaa !826
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2791, metadata !665) #12, !dbg !2834
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2853
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2854
  ret i8* %16, !dbg !2855
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2856 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2858, metadata !665), !dbg !2859
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2824, metadata !665) #12, !dbg !2860
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2825, metadata !665) #12, !dbg !2862
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2788, metadata !665) #12, !dbg !2863
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2789, metadata !665) #12, !dbg !2865
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2790, metadata !665) #12, !dbg !2866
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2867
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2867
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !2868, !tbaa.struct !2797
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2791, metadata !665) #12, !dbg !2869
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1541, metadata !665) #12, !dbg !2870
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1542, metadata !665) #12, !dbg !2872
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1543, metadata !665) #12, !dbg !2873
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1544, metadata !665) #12, !dbg !2874
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2875
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1545, metadata !665) #12, !dbg !2876
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1547, metadata !665) #12, !dbg !2877
  %5 = load i32, i32* %4, align 4, !dbg !2878, !tbaa !826
  %6 = or i32 %5, 67108864, !dbg !2879
  store i32 %6, i32* %4, align 4, !dbg !2879, !tbaa !826
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2791, metadata !665) #12, !dbg !2869
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !2880
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2881
  ret i8* %7, !dbg !2882
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2883 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2885, metadata !665), !dbg !2887
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2886, metadata !665), !dbg !2888
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2788, metadata !665) #12, !dbg !2889
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2789, metadata !665) #12, !dbg !2891
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2790, metadata !665) #12, !dbg !2892
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2893
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2893
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !2894, !tbaa.struct !2797
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2791, metadata !665) #12, !dbg !2895
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1541, metadata !665) #12, !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1542, metadata !665) #12, !dbg !2898
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1543, metadata !665) #12, !dbg !2899
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1544, metadata !665) #12, !dbg !2900
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2901
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1545, metadata !665) #12, !dbg !2902
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1547, metadata !665) #12, !dbg !2903
  %6 = load i32, i32* %5, align 4, !dbg !2904, !tbaa !826
  %7 = or i32 %6, 67108864, !dbg !2905
  store i32 %7, i32* %5, align 4, !dbg !2905, !tbaa !826
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2791, metadata !665) #12, !dbg !2895
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !2906
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2907
  ret i8* %8, !dbg !2908
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2909 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2664, metadata !2670), !dbg !2915
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2911, metadata !665), !dbg !2917
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2912, metadata !665), !dbg !2918
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2913, metadata !665), !dbg !2919
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2920
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2920
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2669, metadata !665) #12, !dbg !2921
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2922
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2922
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2664, metadata !665) #12, !dbg !2915
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2664, metadata !2680) #12, !dbg !2915
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2915
  %9 = icmp eq i32 %1, 10, !dbg !2923
  br i1 %9, label %10, label %11, !dbg !2924

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2925, !noalias !2926
  unreachable, !dbg !2925

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2664, metadata !2680) #12, !dbg !2915
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2929
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2929
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2930
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2931
  store i32 %1, i32* %13, align 8, !dbg !2931
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2931
  %15 = bitcast i32* %14 to i8*, !dbg !2931
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2931
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2914, metadata !665), !dbg !2932
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1541, metadata !665), !dbg !2933
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1542, metadata !665), !dbg !2935
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1543, metadata !665), !dbg !2936
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1544, metadata !665), !dbg !2937
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2938
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1545, metadata !665), !dbg !2939
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1547, metadata !665), !dbg !2940
  %17 = load i32, i32* %16, align 4, !dbg !2941, !tbaa !826
  %18 = or i32 %17, 67108864, !dbg !2942
  store i32 %18, i32* %16, align 4, !dbg !2942, !tbaa !826
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2914, metadata !665), !dbg !2932
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2943
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2944
  ret i8* %19, !dbg !2945
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2946 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2950, metadata !665), !dbg !2954
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2951, metadata !665), !dbg !2955
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2952, metadata !665), !dbg !2956
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2953, metadata !665), !dbg !2957
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2958, metadata !665) #12, !dbg !2968
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2963, metadata !665) #12, !dbg !2970
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2964, metadata !665) #12, !dbg !2971
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2965, metadata !665) #12, !dbg !2972
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2966, metadata !665) #12, !dbg !2973
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2974
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2974
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !2975, !tbaa.struct !2797
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2967, metadata !665) #12, !dbg !2976
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1590, metadata !665) #12, !dbg !2977
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1591, metadata !665) #12, !dbg !2979
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1592, metadata !665) #12, !dbg !2980
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1590, metadata !665) #12, !dbg !2977
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1590, metadata !665) #12, !dbg !2977
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2981
  store i32 10, i32* %7, align 8, !dbg !2982, !tbaa !1522
  %8 = icmp ne i8* %1, null, !dbg !2983
  %9 = icmp ne i8* %2, null, !dbg !2984
  %10 = and i1 %8, %9, !dbg !2985
  br i1 %10, label %12, label %11, !dbg !2985

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2986
  unreachable, !dbg !2986

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2987
  store i8* %1, i8** %13, align 8, !dbg !2988, !tbaa !1608
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2989
  store i8* %2, i8** %14, align 8, !dbg !2990, !tbaa !1611
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2967, metadata !665) #12, !dbg !2976
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !2991
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2992
  ret i8* %15, !dbg !2993
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2959 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2958, metadata !665), !dbg !2994
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2963, metadata !665), !dbg !2995
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2964, metadata !665), !dbg !2996
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2965, metadata !665), !dbg !2997
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2966, metadata !665), !dbg !2998
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2999
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2999
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3000, !tbaa.struct !2797
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2967, metadata !665), !dbg !3001
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1590, metadata !665) #12, !dbg !3002
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1591, metadata !665) #12, !dbg !3004
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1592, metadata !665) #12, !dbg !3005
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1590, metadata !665) #12, !dbg !3002
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1590, metadata !665) #12, !dbg !3002
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3006
  store i32 10, i32* %8, align 8, !dbg !3007, !tbaa !1522
  %9 = icmp ne i8* %1, null, !dbg !3008
  %10 = icmp ne i8* %2, null, !dbg !3009
  %11 = and i1 %9, %10, !dbg !3010
  br i1 %11, label %13, label %12, !dbg !3010

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3011
  unreachable, !dbg !3011

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3012
  store i8* %1, i8** %14, align 8, !dbg !3013, !tbaa !1608
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3014
  store i8* %2, i8** %15, align 8, !dbg !3015, !tbaa !1611
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2967, metadata !665), !dbg !3001
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3016
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3017
  ret i8* %16, !dbg !3018
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3019 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3023, metadata !665), !dbg !3026
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3024, metadata !665), !dbg !3027
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3025, metadata !665), !dbg !3028
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2950, metadata !665) #12, !dbg !3029
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2951, metadata !665) #12, !dbg !3031
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2952, metadata !665) #12, !dbg !3032
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2953, metadata !665) #12, !dbg !3033
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2958, metadata !665) #12, !dbg !3034
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2963, metadata !665) #12, !dbg !3036
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2964, metadata !665) #12, !dbg !3037
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2965, metadata !665) #12, !dbg !3038
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2966, metadata !665) #12, !dbg !3039
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3040
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3041, !tbaa.struct !2797
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2967, metadata !665) #12, !dbg !3042
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1590, metadata !665) #12, !dbg !3043
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1591, metadata !665) #12, !dbg !3045
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1592, metadata !665) #12, !dbg !3046
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1590, metadata !665) #12, !dbg !3043
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1590, metadata !665) #12, !dbg !3043
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3047
  store i32 10, i32* %6, align 8, !dbg !3048, !tbaa !1522
  %7 = icmp ne i8* %0, null, !dbg !3049
  %8 = icmp ne i8* %1, null, !dbg !3050
  %9 = and i1 %7, %8, !dbg !3051
  br i1 %9, label %11, label %10, !dbg !3051

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3052
  unreachable, !dbg !3052

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3053
  store i8* %0, i8** %12, align 8, !dbg !3054, !tbaa !1608
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3055
  store i8* %1, i8** %13, align 8, !dbg !3056, !tbaa !1611
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2967, metadata !665) #12, !dbg !3042
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !3057
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3058
  ret i8* %14, !dbg !3059
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3060 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3064, metadata !665), !dbg !3068
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3065, metadata !665), !dbg !3069
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3066, metadata !665), !dbg !3070
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3067, metadata !665), !dbg !3071
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2958, metadata !665) #12, !dbg !3072
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2963, metadata !665) #12, !dbg !3074
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2964, metadata !665) #12, !dbg !3075
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2965, metadata !665) #12, !dbg !3076
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2966, metadata !665) #12, !dbg !3077
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3078
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3078
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3079, !tbaa.struct !2797
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2967, metadata !665) #12, !dbg !3080
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1590, metadata !665) #12, !dbg !3081
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1591, metadata !665) #12, !dbg !3083
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1592, metadata !665) #12, !dbg !3084
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1590, metadata !665) #12, !dbg !3081
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1590, metadata !665) #12, !dbg !3081
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3085
  store i32 10, i32* %7, align 8, !dbg !3086, !tbaa !1522
  %8 = icmp ne i8* %0, null, !dbg !3087
  %9 = icmp ne i8* %1, null, !dbg !3088
  %10 = and i1 %8, %9, !dbg !3089
  br i1 %10, label %12, label %11, !dbg !3089

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3090
  unreachable, !dbg !3090

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3091
  store i8* %0, i8** %13, align 8, !dbg !3092, !tbaa !1608
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3093
  store i8* %1, i8** %14, align 8, !dbg !3094, !tbaa !1611
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2967, metadata !665) #12, !dbg !3080
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !3095
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3096
  ret i8* %15, !dbg !3097
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3098 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3102, metadata !665), !dbg !3105
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3103, metadata !665), !dbg !3106
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3104, metadata !665), !dbg !3107
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3108
  ret i8* %4, !dbg !3109
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3110 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3114, metadata !665), !dbg !3116
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3115, metadata !665), !dbg !3117
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3102, metadata !665) #12, !dbg !3118
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3103, metadata !665) #12, !dbg !3120
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3104, metadata !665) #12, !dbg !3121
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3122
  ret i8* %3, !dbg !3123
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3124 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3128, metadata !665), !dbg !3130
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3129, metadata !665), !dbg !3131
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3102, metadata !665) #12, !dbg !3132
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3103, metadata !665) #12, !dbg !3134
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3104, metadata !665) #12, !dbg !3135
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3136
  ret i8* %3, !dbg !3137
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3138 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3142, metadata !665), !dbg !3143
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3128, metadata !665) #12, !dbg !3144
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3129, metadata !665) #12, !dbg !3146
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3102, metadata !665) #12, !dbg !3147
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3103, metadata !665) #12, !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3104, metadata !665) #12, !dbg !3150
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3151
  ret i8* %2, !dbg !3152
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_safer(i32) local_unnamed_addr #6 !dbg !3153 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3158, metadata !665), !dbg !3159
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #12, !dbg !3160
  ret i32 %2, !dbg !3161
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3162 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3206, metadata !665), !dbg !3212
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3207, metadata !665), !dbg !3213
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3208, metadata !665), !dbg !3214
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3209, metadata !665), !dbg !3215
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3210, metadata !665), !dbg !3216
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3211, metadata !665), !dbg !3217
  %7 = icmp eq i8* %1, null, !dbg !3218
  br i1 %7, label %10, label %8, !dbg !3220

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.92, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !3221
  br label %12, !dbg !3221

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.93, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !3222
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.94, i64 0, i64 0), i32 5) #12, !dbg !3223
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #12, !dbg !3223
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.95, i64 0, i64 0), i32 5) #12, !dbg !3224
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #12, !dbg !3224
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
  ], !dbg !3225

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3226
  unreachable, !dbg !3226

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.96, i64 0, i64 0), i32 5) #12, !dbg !3228
  %20 = load i8*, i8** %4, align 8, !dbg !3228, !tbaa !672
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12, !dbg !3228
  br label %146, !dbg !3229

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.97, i64 0, i64 0), i32 5) #12, !dbg !3230
  %24 = load i8*, i8** %4, align 8, !dbg !3230, !tbaa !672
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3230
  %26 = load i8*, i8** %25, align 8, !dbg !3230, !tbaa !672
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12, !dbg !3230
  br label %146, !dbg !3231

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.98, i64 0, i64 0), i32 5) #12, !dbg !3232
  %30 = load i8*, i8** %4, align 8, !dbg !3232, !tbaa !672
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3232
  %32 = load i8*, i8** %31, align 8, !dbg !3232, !tbaa !672
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3232
  %34 = load i8*, i8** %33, align 8, !dbg !3232, !tbaa !672
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12, !dbg !3232
  br label %146, !dbg !3233

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.99, i64 0, i64 0), i32 5) #12, !dbg !3234
  %38 = load i8*, i8** %4, align 8, !dbg !3234, !tbaa !672
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3234
  %40 = load i8*, i8** %39, align 8, !dbg !3234, !tbaa !672
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3234
  %42 = load i8*, i8** %41, align 8, !dbg !3234, !tbaa !672
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3234
  %44 = load i8*, i8** %43, align 8, !dbg !3234, !tbaa !672
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #12, !dbg !3234
  br label %146, !dbg !3235

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.100, i64 0, i64 0), i32 5) #12, !dbg !3236
  %48 = load i8*, i8** %4, align 8, !dbg !3236, !tbaa !672
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3236
  %50 = load i8*, i8** %49, align 8, !dbg !3236, !tbaa !672
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3236
  %52 = load i8*, i8** %51, align 8, !dbg !3236, !tbaa !672
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3236
  %54 = load i8*, i8** %53, align 8, !dbg !3236, !tbaa !672
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3236
  %56 = load i8*, i8** %55, align 8, !dbg !3236, !tbaa !672
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #12, !dbg !3236
  br label %146, !dbg !3237

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.101, i64 0, i64 0), i32 5) #12, !dbg !3238
  %60 = load i8*, i8** %4, align 8, !dbg !3238, !tbaa !672
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3238
  %62 = load i8*, i8** %61, align 8, !dbg !3238, !tbaa !672
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3238
  %64 = load i8*, i8** %63, align 8, !dbg !3238, !tbaa !672
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3238
  %66 = load i8*, i8** %65, align 8, !dbg !3238, !tbaa !672
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3238
  %68 = load i8*, i8** %67, align 8, !dbg !3238, !tbaa !672
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3238
  %70 = load i8*, i8** %69, align 8, !dbg !3238, !tbaa !672
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #12, !dbg !3238
  br label %146, !dbg !3239

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.102, i64 0, i64 0), i32 5) #12, !dbg !3240
  %74 = load i8*, i8** %4, align 8, !dbg !3240, !tbaa !672
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3240
  %76 = load i8*, i8** %75, align 8, !dbg !3240, !tbaa !672
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3240
  %78 = load i8*, i8** %77, align 8, !dbg !3240, !tbaa !672
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3240
  %80 = load i8*, i8** %79, align 8, !dbg !3240, !tbaa !672
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3240
  %82 = load i8*, i8** %81, align 8, !dbg !3240, !tbaa !672
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3240
  %84 = load i8*, i8** %83, align 8, !dbg !3240, !tbaa !672
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3240
  %86 = load i8*, i8** %85, align 8, !dbg !3240, !tbaa !672
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #12, !dbg !3240
  br label %146, !dbg !3241

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.103, i64 0, i64 0), i32 5) #12, !dbg !3242
  %90 = load i8*, i8** %4, align 8, !dbg !3242, !tbaa !672
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3242
  %92 = load i8*, i8** %91, align 8, !dbg !3242, !tbaa !672
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3242
  %94 = load i8*, i8** %93, align 8, !dbg !3242, !tbaa !672
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3242
  %96 = load i8*, i8** %95, align 8, !dbg !3242, !tbaa !672
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3242
  %98 = load i8*, i8** %97, align 8, !dbg !3242, !tbaa !672
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3242
  %100 = load i8*, i8** %99, align 8, !dbg !3242, !tbaa !672
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3242
  %102 = load i8*, i8** %101, align 8, !dbg !3242, !tbaa !672
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3242
  %104 = load i8*, i8** %103, align 8, !dbg !3242, !tbaa !672
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #12, !dbg !3242
  br label %146, !dbg !3243

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.104, i64 0, i64 0), i32 5) #12, !dbg !3244
  %108 = load i8*, i8** %4, align 8, !dbg !3244, !tbaa !672
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3244
  %110 = load i8*, i8** %109, align 8, !dbg !3244, !tbaa !672
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3244
  %112 = load i8*, i8** %111, align 8, !dbg !3244, !tbaa !672
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3244
  %114 = load i8*, i8** %113, align 8, !dbg !3244, !tbaa !672
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3244
  %116 = load i8*, i8** %115, align 8, !dbg !3244, !tbaa !672
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3244
  %118 = load i8*, i8** %117, align 8, !dbg !3244, !tbaa !672
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3244
  %120 = load i8*, i8** %119, align 8, !dbg !3244, !tbaa !672
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3244
  %122 = load i8*, i8** %121, align 8, !dbg !3244, !tbaa !672
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3244
  %124 = load i8*, i8** %123, align 8, !dbg !3244, !tbaa !672
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #12, !dbg !3244
  br label %146, !dbg !3245

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.105, i64 0, i64 0), i32 5) #12, !dbg !3246
  %128 = load i8*, i8** %4, align 8, !dbg !3246, !tbaa !672
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3246
  %130 = load i8*, i8** %129, align 8, !dbg !3246, !tbaa !672
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3246
  %132 = load i8*, i8** %131, align 8, !dbg !3246, !tbaa !672
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3246
  %134 = load i8*, i8** %133, align 8, !dbg !3246, !tbaa !672
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3246
  %136 = load i8*, i8** %135, align 8, !dbg !3246, !tbaa !672
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3246
  %138 = load i8*, i8** %137, align 8, !dbg !3246, !tbaa !672
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3246
  %140 = load i8*, i8** %139, align 8, !dbg !3246, !tbaa !672
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3246
  %142 = load i8*, i8** %141, align 8, !dbg !3246, !tbaa !672
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3246
  %144 = load i8*, i8** %143, align 8, !dbg !3246, !tbaa !672
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #12, !dbg !3246
  br label %146, !dbg !3247

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3248
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3249 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3253, metadata !665), !dbg !3259
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3254, metadata !665), !dbg !3260
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3255, metadata !665), !dbg !3261
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3256, metadata !665), !dbg !3262
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3257, metadata !665), !dbg !3263
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3258, metadata !665), !dbg !3264
  br label %6, !dbg !3265

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3258, metadata !665), !dbg !3264
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3267
  %9 = load i8*, i8** %8, align 8, !dbg !3267, !tbaa !672
  %10 = icmp eq i8* %9, null, !dbg !3269
  %11 = add i64 %7, 1, !dbg !3270
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3258, metadata !665), !dbg !3264
  br i1 %10, label %12, label %6, !dbg !3269, !llvm.loop !3271

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3273
  ret void, !dbg !3274
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3275 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3286, metadata !665), !dbg !3294
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3287, metadata !665), !dbg !3295
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3288, metadata !665), !dbg !3296
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3289, metadata !665), !dbg !3297
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3290, metadata !665), !dbg !3298
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3299
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3299
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3292, metadata !665), !dbg !3300
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3291, metadata !665), !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3291, metadata !665), !dbg !3301
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3291, metadata !665), !dbg !3301
  %11 = load i32, i32* %8, align 8, !dbg !3302
  %12 = icmp ult i32 %11, 41, !dbg !3302
  br i1 %12, label %13, label %18, !dbg !3302

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3302
  %15 = sext i32 %11 to i64, !dbg !3302
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3302
  %17 = add i32 %11, 8, !dbg !3302
  store i32 %17, i32* %8, align 8, !dbg !3302
  br label %21, !dbg !3302

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3302
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3302
  store i8* %20, i8** %10, align 8, !dbg !3302
  br label %21, !dbg !3302

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3302
  %25 = load i8*, i8** %24, align 8, !dbg !3302
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3305
  store i8* %25, i8** %26, align 16, !dbg !3306, !tbaa !672
  %27 = icmp eq i8* %25, null, !dbg !3307
  br i1 %27, label %30, label %28, !dbg !3308

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3291, metadata !665), !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3291, metadata !665), !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3291, metadata !665), !dbg !3301
  %29 = icmp ult i32 %22, 41, !dbg !3302
  br i1 %29, label %35, label %32, !dbg !3302

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3309
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3310
  ret void, !dbg !3310

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3302
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3302
  store i8* %34, i8** %10, align 8, !dbg !3302
  br label %40, !dbg !3302

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3302
  %37 = sext i32 %22 to i64, !dbg !3302
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3302
  %39 = add i32 %22, 8, !dbg !3302
  store i32 %39, i32* %8, align 8, !dbg !3302
  br label %40, !dbg !3302

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3302
  %44 = load i8*, i8** %43, align 8, !dbg !3302
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3305
  store i8* %44, i8** %45, align 8, !dbg !3306, !tbaa !672
  %46 = icmp eq i8* %44, null, !dbg !3307
  br i1 %46, label %30, label %47, !dbg !3308

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3291, metadata !665), !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3291, metadata !665), !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3291, metadata !665), !dbg !3301
  %48 = icmp ult i32 %41, 41, !dbg !3302
  br i1 %48, label %52, label %49, !dbg !3302

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3302
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3302
  store i8* %51, i8** %10, align 8, !dbg !3302
  br label %57, !dbg !3302

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3302
  %54 = sext i32 %41 to i64, !dbg !3302
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3302
  %56 = add i32 %41, 8, !dbg !3302
  store i32 %56, i32* %8, align 8, !dbg !3302
  br label %57, !dbg !3302

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3302
  %61 = load i8*, i8** %60, align 8, !dbg !3302
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3305
  store i8* %61, i8** %62, align 16, !dbg !3306, !tbaa !672
  %63 = icmp eq i8* %61, null, !dbg !3307
  br i1 %63, label %30, label %64, !dbg !3308

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3291, metadata !665), !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3291, metadata !665), !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3291, metadata !665), !dbg !3301
  %65 = icmp ult i32 %58, 41, !dbg !3302
  br i1 %65, label %69, label %66, !dbg !3302

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3302
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3302
  store i8* %68, i8** %10, align 8, !dbg !3302
  br label %74, !dbg !3302

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3302
  %71 = sext i32 %58 to i64, !dbg !3302
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3302
  %73 = add i32 %58, 8, !dbg !3302
  store i32 %73, i32* %8, align 8, !dbg !3302
  br label %74, !dbg !3302

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3302
  %78 = load i8*, i8** %77, align 8, !dbg !3302
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3305
  store i8* %78, i8** %79, align 8, !dbg !3306, !tbaa !672
  %80 = icmp eq i8* %78, null, !dbg !3307
  br i1 %80, label %30, label %81, !dbg !3308

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3291, metadata !665), !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3291, metadata !665), !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3291, metadata !665), !dbg !3301
  %82 = icmp ult i32 %75, 41, !dbg !3302
  br i1 %82, label %86, label %83, !dbg !3302

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3302
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3302
  store i8* %85, i8** %10, align 8, !dbg !3302
  br label %91, !dbg !3302

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3302
  %88 = sext i32 %75 to i64, !dbg !3302
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3302
  %90 = add i32 %75, 8, !dbg !3302
  store i32 %90, i32* %8, align 8, !dbg !3302
  br label %91, !dbg !3302

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3302
  %95 = load i8*, i8** %94, align 8, !dbg !3302
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3305
  store i8* %95, i8** %96, align 16, !dbg !3306, !tbaa !672
  %97 = icmp eq i8* %95, null, !dbg !3307
  br i1 %97, label %30, label %98, !dbg !3308

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3291, metadata !665), !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3291, metadata !665), !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3291, metadata !665), !dbg !3301
  %99 = icmp ult i32 %92, 41, !dbg !3302
  br i1 %99, label %103, label %100, !dbg !3302

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3302
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3302
  store i8* %102, i8** %10, align 8, !dbg !3302
  br label %108, !dbg !3302

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3302
  %105 = sext i32 %92 to i64, !dbg !3302
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3302
  %107 = add i32 %92, 8, !dbg !3302
  store i32 %107, i32* %8, align 8, !dbg !3302
  br label %108, !dbg !3302

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3302
  %111 = load i8*, i8** %110, align 8, !dbg !3302
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3305
  store i8* %111, i8** %112, align 8, !dbg !3306, !tbaa !672
  %113 = icmp eq i8* %111, null, !dbg !3307
  br i1 %113, label %30, label %114, !dbg !3308

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3291, metadata !665), !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3291, metadata !665), !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3291, metadata !665), !dbg !3301
  %115 = load i8*, i8** %10, align 8, !dbg !3302
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3302
  store i8* %116, i8** %10, align 8, !dbg !3302
  %117 = bitcast i8* %115 to i8**, !dbg !3302
  %118 = load i8*, i8** %117, align 8, !dbg !3302
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3305
  store i8* %118, i8** %119, align 16, !dbg !3306, !tbaa !672
  %120 = icmp eq i8* %118, null, !dbg !3307
  br i1 %120, label %30, label %121, !dbg !3308

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3291, metadata !665), !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3291, metadata !665), !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3291, metadata !665), !dbg !3301
  %122 = load i8*, i8** %10, align 8, !dbg !3302
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3302
  store i8* %123, i8** %10, align 8, !dbg !3302
  %124 = bitcast i8* %122 to i8**, !dbg !3302
  %125 = load i8*, i8** %124, align 8, !dbg !3302
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3305
  store i8* %125, i8** %126, align 8, !dbg !3306, !tbaa !672
  %127 = icmp eq i8* %125, null, !dbg !3307
  br i1 %127, label %30, label %128, !dbg !3308

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3291, metadata !665), !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3291, metadata !665), !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3291, metadata !665), !dbg !3301
  %129 = load i8*, i8** %10, align 8, !dbg !3302
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3302
  store i8* %130, i8** %10, align 8, !dbg !3302
  %131 = bitcast i8* %129 to i8**, !dbg !3302
  %132 = load i8*, i8** %131, align 8, !dbg !3302
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3305
  store i8* %132, i8** %133, align 16, !dbg !3306, !tbaa !672
  %134 = icmp eq i8* %132, null, !dbg !3307
  br i1 %134, label %30, label %135, !dbg !3308

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3291, metadata !665), !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3291, metadata !665), !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3291, metadata !665), !dbg !3301
  %136 = load i8*, i8** %10, align 8, !dbg !3302
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3302
  store i8* %137, i8** %10, align 8, !dbg !3302
  %138 = bitcast i8* %136 to i8**, !dbg !3302
  %139 = load i8*, i8** %138, align 8, !dbg !3302
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3305
  store i8* %139, i8** %140, align 8, !dbg !3306, !tbaa !672
  %141 = icmp eq i8* %139, null, !dbg !3307
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3291, metadata !665), !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3291, metadata !665), !dbg !3301
  %142 = select i1 %141, i64 9, i64 10, !dbg !3308
  br label %30, !dbg !3308
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3311 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3315, metadata !665), !dbg !3324
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3316, metadata !665), !dbg !3325
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3317, metadata !665), !dbg !3326
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3318, metadata !665), !dbg !3327
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3328
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3328
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3319, metadata !665), !dbg !3329
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3330
  call void @llvm.va_start(i8* nonnull %6), !dbg !3330
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3331
  call void @llvm.va_end(i8* nonnull %6), !dbg !3332
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3333
  ret void, !dbg !3333
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3334 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.108, i64 0, i64 0), i32 5) #12, !dbg !3335
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.109, i64 0, i64 0)) #12, !dbg !3335
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.110, i64 0, i64 0), i32 5) #12, !dbg !3336
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.111, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.112, i64 0, i64 0)) #12, !dbg !3336
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.113, i64 0, i64 0), i32 5) #12, !dbg !3337
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3337, !tbaa !672
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #12, !dbg !3337
  ret void, !dbg !3338
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3339 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3341, metadata !665), !dbg !3343
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3342, metadata !665), !dbg !3344
  %3 = udiv i64 9223372036854775807, %1, !dbg !3345
  %4 = icmp ult i64 %3, %0, !dbg !3345
  br i1 %4, label %5, label %6, !dbg !3347

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3348
  unreachable, !dbg !3348

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3349
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3350, metadata !665) #12, !dbg !3357
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !3359
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3356, metadata !665) #12, !dbg !3360
  %9 = icmp eq i8* %8, null, !dbg !3361
  %10 = icmp ne i64 %7, 0, !dbg !3363
  %11 = and i1 %10, %9, !dbg !3364
  br i1 %11, label %12, label %13, !dbg !3364

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3365
  unreachable, !dbg !3365

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3366
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3351 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3350, metadata !665), !dbg !3367
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3368
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3356, metadata !665), !dbg !3369
  %3 = icmp eq i8* %2, null, !dbg !3370
  %4 = icmp ne i64 %0, 0, !dbg !3371
  %5 = and i1 %4, %3, !dbg !3372
  br i1 %5, label %6, label %7, !dbg !3372

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3373
  unreachable, !dbg !3373

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3374
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3375 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3379, metadata !665), !dbg !3382
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3380, metadata !665), !dbg !3383
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3381, metadata !665), !dbg !3384
  %4 = udiv i64 9223372036854775807, %2, !dbg !3385
  %5 = icmp ult i64 %4, %1, !dbg !3385
  br i1 %5, label %6, label %7, !dbg !3387

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3388
  unreachable, !dbg !3388

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3389
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3390, metadata !665) #12, !dbg !3396
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3395, metadata !665) #12, !dbg !3398
  %9 = icmp eq i64 %8, 0, !dbg !3399
  %10 = icmp ne i8* %0, null, !dbg !3401
  %11 = and i1 %10, %9, !dbg !3402
  br i1 %11, label %12, label %13, !dbg !3402

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !3403
  br label %19, !dbg !3405

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !3406
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3390, metadata !665) #12, !dbg !3396
  %15 = icmp eq i8* %14, null, !dbg !3407
  %16 = icmp ne i64 %8, 0, !dbg !3409
  %17 = and i1 %16, %15, !dbg !3410
  br i1 %17, label %18, label %19, !dbg !3410

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3411
  unreachable, !dbg !3411

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3412
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3391 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3390, metadata !665), !dbg !3413
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3395, metadata !665), !dbg !3414
  %3 = icmp eq i64 %1, 0, !dbg !3415
  %4 = icmp ne i8* %0, null, !dbg !3416
  %5 = and i1 %4, %3, !dbg !3417
  br i1 %5, label %6, label %7, !dbg !3417

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !3418
  br label %13, !dbg !3419

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !3420
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3390, metadata !665), !dbg !3413
  %9 = icmp eq i8* %8, null, !dbg !3421
  %10 = icmp ne i64 %1, 0, !dbg !3422
  %11 = and i1 %10, %9, !dbg !3423
  br i1 %11, label %12, label %13, !dbg !3423

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3424
  unreachable, !dbg !3424

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3425
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !627 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !632, metadata !665), !dbg !3426
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !633, metadata !665), !dbg !3427
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !634, metadata !665), !dbg !3428
  %4 = load i64, i64* %1, align 8, !dbg !3429, !tbaa !2475
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !635, metadata !665), !dbg !3430
  %5 = icmp eq i8* %0, null, !dbg !3431
  br i1 %5, label %6, label %13, !dbg !3433

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3434
  br i1 %7, label %8, label %17, !dbg !3437

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !635, metadata !665), !dbg !3430
  %10 = icmp ugt i64 %2, 128, !dbg !3440
  %11 = zext i1 %10 to i64, !dbg !3440
  %12 = add nuw nsw i64 %9, %11, !dbg !3441
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !635, metadata !665), !dbg !3430
  br label %17, !dbg !3442

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3443
  %15 = icmp ugt i64 %14, %4, !dbg !3446
  br i1 %15, label %20, label %16, !dbg !3447

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3448
  unreachable, !dbg !3448

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !635, metadata !665), !dbg !3430
  store i64 %18, i64* %1, align 8, !dbg !3449, !tbaa !2475
  %19 = mul i64 %18, %2, !dbg !3450
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3390, metadata !665) #12, !dbg !3451
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3395, metadata !665) #12, !dbg !3453
  br label %27, !dbg !3454

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3455
  %22 = add i64 %4, 1, !dbg !3456
  %23 = add i64 %22, %21, !dbg !3457
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !635, metadata !665), !dbg !3430
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !635, metadata !665), !dbg !3430
  store i64 %23, i64* %1, align 8, !dbg !3449, !tbaa !2475
  %24 = mul i64 %23, %2, !dbg !3450
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3390, metadata !665) #12, !dbg !3451
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3395, metadata !665) #12, !dbg !3453
  %25 = icmp eq i64 %24, 0, !dbg !3458
  br i1 %25, label %26, label %27, !dbg !3454

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #12, !dbg !3459
  br label %34, !dbg !3460

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #12, !dbg !3461
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3390, metadata !665) #12, !dbg !3451
  %30 = icmp eq i8* %29, null, !dbg !3462
  %31 = icmp ne i64 %28, 0, !dbg !3463
  %32 = and i1 %31, %30, !dbg !3464
  br i1 %32, label %33, label %34, !dbg !3464

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3465
  unreachable, !dbg !3465

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3466
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3467 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3469, metadata !665), !dbg !3470
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3350, metadata !665) #12, !dbg !3471
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3473
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3356, metadata !665) #12, !dbg !3474
  %3 = icmp eq i8* %2, null, !dbg !3475
  %4 = icmp ne i64 %0, 0, !dbg !3476
  %5 = and i1 %4, %3, !dbg !3477
  br i1 %5, label %6, label %7, !dbg !3477

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3478
  unreachable, !dbg !3478

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3479
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3480 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3484, metadata !665), !dbg !3486
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3485, metadata !665), !dbg !3487
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !632, metadata !665) #12, !dbg !3488
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !633, metadata !665) #12, !dbg !3490
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !634, metadata !665) #12, !dbg !3491
  %3 = load i64, i64* %1, align 8, !dbg !3492, !tbaa !2475
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !635, metadata !665) #12, !dbg !3493
  %4 = icmp eq i8* %0, null, !dbg !3494
  br i1 %4, label %5, label %8, !dbg !3495

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3496
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !635, metadata !665) #12, !dbg !3493
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !635, metadata !665) #12, !dbg !3493
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3497
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !635, metadata !665) #12, !dbg !3493
  store i64 %7, i64* %1, align 8, !dbg !3498, !tbaa !2475
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3390, metadata !665) #12, !dbg !3499
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3395, metadata !665) #12, !dbg !3501
  br label %17, !dbg !3502

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3503
  br i1 %9, label %11, label %10, !dbg !3504

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3505
  unreachable, !dbg !3505

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3506
  %13 = add i64 %3, 1, !dbg !3507
  %14 = add i64 %13, %12, !dbg !3508
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !635, metadata !665) #12, !dbg !3493
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !635, metadata !665) #12, !dbg !3493
  store i64 %14, i64* %1, align 8, !dbg !3498, !tbaa !2475
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3390, metadata !665) #12, !dbg !3499
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3395, metadata !665) #12, !dbg !3501
  %15 = icmp eq i64 %14, 0, !dbg !3509
  br i1 %15, label %16, label %17, !dbg !3502

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #12, !dbg !3510
  br label %24, !dbg !3511

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #12, !dbg !3512
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3390, metadata !665) #12, !dbg !3499
  %20 = icmp eq i8* %19, null, !dbg !3513
  %21 = icmp ne i64 %18, 0, !dbg !3514
  %22 = and i1 %21, %20, !dbg !3515
  br i1 %22, label %23, label %24, !dbg !3515

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3516
  unreachable, !dbg !3516

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3517
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3518 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3520, metadata !665), !dbg !3521
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3350, metadata !665) #12, !dbg !3522
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3524
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3356, metadata !665) #12, !dbg !3525
  %3 = icmp eq i8* %2, null, !dbg !3526
  %4 = icmp ne i64 %0, 0, !dbg !3527
  %5 = and i1 %4, %3, !dbg !3528
  br i1 %5, label %6, label %7, !dbg !3528

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3529
  unreachable, !dbg !3529

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3530
  ret i8* %2, !dbg !3531
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3532 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3534, metadata !665), !dbg !3537
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3535, metadata !665), !dbg !3538
  %3 = udiv i64 9223372036854775807, %1, !dbg !3539
  %4 = icmp ult i64 %3, %0, !dbg !3539
  br i1 %4, label %8, label %5, !dbg !3541

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !3542
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3536, metadata !665), !dbg !3543
  %7 = icmp eq i8* %6, null, !dbg !3544
  br i1 %7, label %8, label %9, !dbg !3545

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3546
  unreachable, !dbg !3546

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3547
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3548 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3554, metadata !665), !dbg !3556
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3555, metadata !665), !dbg !3557
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3350, metadata !665) #12, !dbg !3558
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !3560
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3356, metadata !665) #12, !dbg !3561
  %4 = icmp eq i8* %3, null, !dbg !3562
  %5 = icmp ne i64 %1, 0, !dbg !3563
  %6 = and i1 %5, %4, !dbg !3564
  br i1 %6, label %7, label %8, !dbg !3564

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3565
  unreachable, !dbg !3565

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3566
  ret i8* %3, !dbg !3567
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3568 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3570, metadata !665), !dbg !3571
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3572
  %3 = add i64 %2, 1, !dbg !3573
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3554, metadata !665) #12, !dbg !3574
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3555, metadata !665) #12, !dbg !3576
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3350, metadata !665) #12, !dbg !3577
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !3579
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3356, metadata !665) #12, !dbg !3580
  %5 = icmp eq i8* %4, null, !dbg !3581
  %6 = icmp ne i64 %3, 0, !dbg !3582
  %7 = and i1 %6, %5, !dbg !3583
  br i1 %7, label %8, label %9, !dbg !3583

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3584
  unreachable, !dbg !3584

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #12, !dbg !3585
  ret i8* %4, !dbg !3586
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3587 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3589, !tbaa !826
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.124, i64 0, i64 0), i32 5) #12, !dbg !3590
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.125, i64 0, i64 0), i8* %2) #12, !dbg !3591
  tail call void @abort() #15, !dbg !3592
  unreachable, !dbg !3592
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3593 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3596, metadata !665), !dbg !3602
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3597, metadata !665), !dbg !3603
  %3 = icmp eq i64 %0, 0, !dbg !3604
  %4 = icmp eq i64 %1, 0, !dbg !3605
  %5 = or i1 %3, %4, !dbg !3606
  br i1 %5, label %12, label %6, !dbg !3606

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3607
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3599, metadata !665), !dbg !3608
  %8 = udiv i64 %7, %1, !dbg !3609
  %9 = icmp eq i64 %8, %0, !dbg !3611
  br i1 %9, label %12, label %10, !dbg !3612

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3613
  store i32 12, i32* %11, align 4, !dbg !3615, !tbaa !826
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3596, metadata !665), !dbg !3602
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3597, metadata !665), !dbg !3603
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #12, !dbg !3616
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3598, metadata !665), !dbg !3617
  br label %16, !dbg !3618

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3619
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3620 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3665, metadata !665), !dbg !3669
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3666, metadata !665), !dbg !3670
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3668, metadata !665), !dbg !3671
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3672
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3667, metadata !665), !dbg !3673
  %3 = icmp slt i32 %2, 0, !dbg !3674
  br i1 %3, label %4, label %6, !dbg !3676

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3677
  br label %24, !dbg !3678

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3679
  %8 = icmp eq i32 %7, 0, !dbg !3679
  br i1 %8, label %13, label %9, !dbg !3681

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3682
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !3683
  %12 = icmp eq i64 %11, -1, !dbg !3684
  br i1 %12, label %16, label %13, !dbg !3685

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !3686
  %15 = icmp eq i32 %14, 0, !dbg !3686
  br i1 %15, label %16, label %18, !dbg !3687

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3666, metadata !665), !dbg !3670
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3688
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3668, metadata !665), !dbg !3671
  br label %24, !dbg !3689

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3690
  %20 = load i32, i32* %19, align 4, !dbg !3690, !tbaa !826
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3666, metadata !665), !dbg !3670
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3666, metadata !665), !dbg !3670
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3688
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3668, metadata !665), !dbg !3671
  %22 = icmp eq i32 %20, 0, !dbg !3691
  br i1 %22, label %24, label %23, !dbg !3689

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3693, !tbaa !826
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3668, metadata !665), !dbg !3671
  br label %24, !dbg !3695

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3696
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #6 !dbg !224 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !232, metadata !665), !dbg !3697
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !233, metadata !665), !dbg !3698
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !3699
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #12, !dbg !3699
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !234, metadata !665), !dbg !3700
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !247, metadata !665), !dbg !3701
  call void @llvm.va_start(i8* nonnull %4), !dbg !3702
  %5 = icmp eq i32 %1, 1030, !dbg !3703
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %7 = load i32, i32* %6, align 16
  %8 = icmp ult i32 %7, 41
  br i1 %5, label %9, label %59, !dbg !3703

; <label>:9:                                      ; preds = %2
  br i1 %8, label %10, label %16, !dbg !3704

; <label>:10:                                     ; preds = %9
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3704
  %12 = load i8*, i8** %11, align 16, !dbg !3704
  %13 = sext i32 %7 to i64, !dbg !3704
  %14 = getelementptr i8, i8* %12, i64 %13, !dbg !3704
  %15 = add i32 %7, 8, !dbg !3704
  store i32 %15, i32* %6, align 16, !dbg !3704
  br label %20, !dbg !3704

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3704
  %18 = load i8*, i8** %17, align 8, !dbg !3704
  %19 = getelementptr i8, i8* %18, i64 8, !dbg !3704
  store i8* %19, i8** %17, align 8, !dbg !3704
  br label %20, !dbg !3704

; <label>:20:                                     ; preds = %16, %10
  %21 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %22 = bitcast i8* %21 to i32*, !dbg !3704
  %23 = load i32, i32* %22, align 4, !dbg !3704
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !248, metadata !665), !dbg !3705
  %24 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !3706, !tbaa !826
  %25 = icmp sgt i32 %24, -1, !dbg !3708
  br i1 %25, label %26, label %39, !dbg !3709

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #12, !dbg !3710
  call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !247, metadata !665), !dbg !3701
  %28 = icmp sgt i32 %27, -1, !dbg !3712
  br i1 %28, label %36, label %29, !dbg !3714

; <label>:29:                                     ; preds = %26
  %30 = tail call i32* @__errno_location() #17, !dbg !3715
  %31 = load i32, i32* %30, align 4, !dbg !3715, !tbaa !826
  %32 = icmp eq i32 %31, 22, !dbg !3716
  br i1 %32, label %33, label %36, !dbg !3717

; <label>:33:                                     ; preds = %29
  %34 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !3718
  call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !247, metadata !665), !dbg !3701
  %35 = icmp slt i32 %34, 0, !dbg !3720
  br i1 %35, label %75, label %36, !dbg !3722

; <label>:36:                                     ; preds = %29, %26, %33
  %37 = phi i32 [ %27, %26 ], [ %27, %29 ], [ %34, %33 ]
  %38 = phi i32 [ 1, %26 ], [ 1, %29 ], [ -1, %33 ]
  call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !247, metadata !665), !dbg !3701
  store i32 %38, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !tbaa !826
  br label %42, !dbg !3723

; <label>:39:                                     ; preds = %20
  %40 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !3724
  call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !247, metadata !665), !dbg !3701
  %41 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !3725
  br label %42

; <label>:42:                                     ; preds = %39, %36
  %43 = phi i32 [ %38, %36 ], [ %41, %39 ], !dbg !3725
  %44 = phi i32 [ %37, %36 ], [ %40, %39 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !247, metadata !665), !dbg !3701
  %45 = icmp sgt i32 %44, -1, !dbg !3726
  %46 = icmp eq i32 %43, -1, !dbg !3727
  %47 = and i1 %45, %46, !dbg !3728
  br i1 %47, label %48, label %75, !dbg !3728

; <label>:48:                                     ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #12, !dbg !3729
  call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !251, metadata !665), !dbg !3730
  %50 = icmp slt i32 %49, 0, !dbg !3731
  br i1 %50, label %55, label %51, !dbg !3732

; <label>:51:                                     ; preds = %48
  %52 = or i32 %49, 1, !dbg !3733
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %52) #12, !dbg !3734
  %54 = icmp eq i32 %53, -1, !dbg !3735
  br i1 %54, label %55, label %75, !dbg !3736

; <label>:55:                                     ; preds = %51, %48
  %56 = tail call i32* @__errno_location() #17, !dbg !3737
  %57 = load i32, i32* %56, align 4, !dbg !3737, !tbaa !826
  call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !254, metadata !665), !dbg !3738
  %58 = call i32 @close(i32 %44) #12, !dbg !3739
  store i32 %57, i32* %56, align 4, !dbg !3740, !tbaa !826
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !247, metadata !665), !dbg !3701
  br label %75, !dbg !3741

; <label>:59:                                     ; preds = %2
  br i1 %8, label %60, label %66, !dbg !3742

; <label>:60:                                     ; preds = %59
  %61 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3742
  %62 = load i8*, i8** %61, align 16, !dbg !3742
  %63 = sext i32 %7 to i64, !dbg !3742
  %64 = getelementptr i8, i8* %62, i64 %63, !dbg !3742
  %65 = add i32 %7, 8, !dbg !3742
  store i32 %65, i32* %6, align 16, !dbg !3742
  br label %70, !dbg !3742

; <label>:66:                                     ; preds = %59
  %67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3742
  %68 = load i8*, i8** %67, align 8, !dbg !3742
  %69 = getelementptr i8, i8* %68, i64 8, !dbg !3742
  store i8* %69, i8** %67, align 8, !dbg !3742
  br label %70, !dbg !3742

; <label>:70:                                     ; preds = %66, %60
  %71 = phi i8* [ %64, %60 ], [ %68, %66 ]
  %72 = bitcast i8* %71 to i8**, !dbg !3742
  %73 = load i8*, i8** %72, align 8, !dbg !3742
  call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !257, metadata !665), !dbg !3743
  %74 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %73) #12, !dbg !3744
  call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !247, metadata !665), !dbg !3701
  br label %75

; <label>:75:                                     ; preds = %33, %51, %55, %42, %70
  %76 = phi i32 [ %74, %70 ], [ %34, %33 ], [ %44, %42 ], [ -1, %55 ], [ %44, %51 ]
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !247, metadata !665), !dbg !3701
  call void @llvm.va_end(i8* nonnull %4), !dbg !3745
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #12, !dbg !3746
  ret i32 %76, !dbg !3747
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3748 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3793, metadata !665), !dbg !3794
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3795
  br i1 %2, label %6, label %3, !dbg !3797

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3798
  %5 = icmp eq i32 %4, 0, !dbg !3798
  br i1 %5, label %6, label %8, !dbg !3799

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3800
  br label %17, !dbg !3801

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3802, metadata !665) #12, !dbg !3807
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3809
  %10 = load i32, i32* %9, align 8, !dbg !3809, !tbaa !3811
  %11 = and i32 %10, 256, !dbg !3812
  %12 = icmp eq i32 %11, 0, !dbg !3812
  br i1 %12, label %15, label %13, !dbg !3813

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !3814
  br label %15, !dbg !3814

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3815
  br label %17, !dbg !3816

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3817
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3818 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3863, metadata !665), !dbg !3869
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3864, metadata !665), !dbg !3870
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3865, metadata !665), !dbg !3871
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3872
  %5 = load i8*, i8** %4, align 8, !dbg !3872, !tbaa !3873
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3874
  %7 = load i8*, i8** %6, align 8, !dbg !3874, !tbaa !3875
  %8 = icmp eq i8* %5, %7, !dbg !3876
  br i1 %8, label %9, label %28, !dbg !3877

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3878
  %11 = load i8*, i8** %10, align 8, !dbg !3878, !tbaa !1140
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3879
  %13 = load i8*, i8** %12, align 8, !dbg !3879, !tbaa !3880
  %14 = icmp eq i8* %11, %13, !dbg !3881
  br i1 %14, label %15, label %28, !dbg !3882

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3883
  %17 = load i8*, i8** %16, align 8, !dbg !3883, !tbaa !3884
  %18 = icmp eq i8* %17, null, !dbg !3885
  br i1 %18, label %19, label %28, !dbg !3886

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3887
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !3888
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3866, metadata !665), !dbg !3889
  %22 = icmp eq i64 %21, -1, !dbg !3890
  br i1 %22, label %30, label %23, !dbg !3892

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3893
  %25 = load i32, i32* %24, align 8, !dbg !3894, !tbaa !3811
  %26 = and i32 %25, -17, !dbg !3894
  store i32 %26, i32* %24, align 8, !dbg !3894, !tbaa !3811
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3895
  store i64 %21, i64* %27, align 8, !dbg !3896, !tbaa !3897
  br label %30, !dbg !3898

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3899
  br label %30, !dbg !3900

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3901
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3902 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3919, metadata !665), !dbg !3928
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3920, metadata !665), !dbg !3929
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3921, metadata !665), !dbg !3930
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3922, metadata !665), !dbg !3931
  %6 = bitcast i32* %5 to i8*, !dbg !3932
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3932
  %7 = icmp eq i32* %0, null, !dbg !3933
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3919, metadata !665), !dbg !3928
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3935
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3919, metadata !665), !dbg !3928
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !3936
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3923, metadata !665), !dbg !3937
  %10 = icmp ugt i64 %9, -3, !dbg !3938
  %11 = icmp ne i64 %2, 0, !dbg !3939
  %12 = and i1 %11, %10, !dbg !3940
  br i1 %12, label %13, label %18, !dbg !3940

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !3941
  br i1 %14, label %18, label %15, !dbg !3942

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3943, !tbaa !809
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3925, metadata !665), !dbg !3944
  %17 = zext i8 %16 to i32, !dbg !3945
  store i32 %17, i32* %8, align 4, !dbg !3946, !tbaa !826
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3947
  ret i64 %19, !dbg !3947
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3948 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3993, metadata !665), !dbg !3998
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !3999
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4000, metadata !665), !dbg !4003
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4005
  %4 = load i32, i32* %3, align 8, !dbg !4005, !tbaa !3811
  %5 = and i32 %4, 32, !dbg !4005
  %6 = icmp eq i32 %5, 0, !dbg !4006
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !4007
  %8 = icmp ne i32 %7, 0, !dbg !4008
  br i1 %6, label %9, label %19, !dbg !4009

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4011
  %11 = xor i1 %8, true, !dbg !4012
  %12 = or i1 %10, %11, !dbg !4012
  %13 = sext i1 %8 to i32, !dbg !4012
  br i1 %12, label %22, label %14, !dbg !4012

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4013
  %16 = load i32, i32* %15, align 4, !dbg !4013, !tbaa !826
  %17 = icmp ne i32 %16, 9, !dbg !4014
  %18 = sext i1 %17 to i32, !dbg !4015
  br label %22, !dbg !4015

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4016

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4018
  store i32 0, i32* %21, align 4, !dbg !4020, !tbaa !826
  br label %22, !dbg !4018

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4021
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4022 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4027, metadata !665), !dbg !4030
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4028, metadata !665), !dbg !4031
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !4032
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4029, metadata !665), !dbg !4033
  %3 = icmp eq i8* %2, null, !dbg !4034
  br i1 %3, label %11, label %4, !dbg !4036

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.142, i64 0, i64 0)) #14, !dbg !4037
  %6 = icmp eq i32 %5, 0, !dbg !4042
  br i1 %6, label %10, label %7, !dbg !4043

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.143, i64 0, i64 0)) #14, !dbg !4044
  %9 = icmp eq i32 %8, 0, !dbg !4045
  br i1 %9, label %10, label %11, !dbg !4046

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4028, metadata !665), !dbg !4031
  br label %11, !dbg !4047

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4048
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4049 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4055, metadata !665), !dbg !4129
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4122, metadata !665), !dbg !4132
  %3 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !4133
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4053, metadata !665), !dbg !4134
  %4 = icmp eq i8* %3, null, !dbg !4135
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.146, i64 0, i64 0), i8* %3, !dbg !4137
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4053, metadata !665), !dbg !4134
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4138, !tbaa !672
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4069, metadata !665) #12, !dbg !4139
  %7 = icmp eq i8* %6, null, !dbg !4140
  br i1 %7, label %8, label %123, !dbg !4141

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.147, i64 0, i64 0)) #12, !dbg !4142
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4070, metadata !665) #12, !dbg !4143
  %10 = icmp eq i8* %9, null, !dbg !4144
  br i1 %10, label %14, label %11, !dbg !4146

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4147, !tbaa !809
  %13 = icmp eq i8 %12, 0, !dbg !4148
  br i1 %13, label %14, label %15, !dbg !4149

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4150

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.148, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4070, metadata !665) #12, !dbg !4143
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !4151
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4073, metadata !665) #12, !dbg !4152
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4075, metadata !665) #12, !dbg !4153
  %18 = icmp eq i64 %17, 0, !dbg !4154
  br i1 %18, label %24, label %19, !dbg !4155

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4156
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4156
  %22 = load i8, i8* %21, align 1, !dbg !4156, !tbaa !809
  %23 = icmp ne i8 %22, 47, !dbg !4156
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4157
  %27 = add i64 %17, 14, !dbg !4158
  %28 = add i64 %27, %26, !dbg !4159
  %29 = tail call noalias i8* @malloc(i64 %28) #12, !dbg !4160
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4072, metadata !665) #12, !dbg !4161
  %30 = icmp eq i8* %29, null, !dbg !4162
  br i1 %30, label %121, label %31, !dbg !4162

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #12, !dbg !4163
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4166

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4167, !tbaa !809
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4169
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.149, i64 0, i64 0), i64 14, i32 1, i1 false) #12, !dbg !4170
  br label %37, !dbg !4171

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4169
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.149, i64 0, i64 0), i64 14, i32 1, i1 false) #12, !dbg !4170
  br label %37, !dbg !4171

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #12, !dbg !4172
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4077, metadata !665) #12, !dbg !4173
  %39 = icmp slt i32 %38, 0, !dbg !4174
  br i1 %39, label %119, label %40, !dbg !4175

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.150, i64 0, i64 0)) #12, !dbg !4176
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4078, metadata !665) #12, !dbg !4177
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4178
  br i1 %42, label %43, label %45, !dbg !4179

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #12, !dbg !4180
  br label %119, !dbg !4182

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4119, metadata !665) #12, !dbg !4183
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4120, metadata !665) #12, !dbg !4184
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4185

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !4186

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4119, metadata !665) #12, !dbg !4183
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4120, metadata !665) #12, !dbg !4184
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #12, !dbg !4186
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #12, !dbg !4187
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4188, metadata !665) #12, !dbg !4193
  %54 = load i8*, i8** %48, align 8, !dbg !4195, !tbaa !3875
  %55 = load i8*, i8** %49, align 8, !dbg !4195, !tbaa !3873
  %56 = icmp ult i8* %54, %55, !dbg !4195
  br i1 %56, label %59, label %57, !dbg !4195, !prof !1145

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #12, !dbg !4195
  br label %63, !dbg !4195

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !4195
  store i8* %60, i8** %48, align 8, !dbg !4195, !tbaa !3875
  %61 = load i8, i8* %54, align 1, !dbg !4195, !tbaa !809
  %62 = zext i8 %61 to i32, !dbg !4195
  br label %63, !dbg !4195

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !4195
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !4121, metadata !665) #12, !dbg !4196
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !4197, !llvm.loop !4198

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !4203

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4188, metadata !665) #12, !dbg !4205
  %67 = load i8*, i8** %48, align 8, !dbg !4203, !tbaa !3875
  %68 = load i8*, i8** %49, align 8, !dbg !4203, !tbaa !3873
  %69 = icmp ult i8* %67, %68, !dbg !4203
  br i1 %69, label %72, label %70, !dbg !4203, !prof !1145

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #12, !dbg !4203
  br label %76, !dbg !4203

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !4203
  store i8* %73, i8** %48, align 8, !dbg !4203, !tbaa !3875
  %74 = load i8, i8* %67, align 1, !dbg !4203, !tbaa !809
  %75 = zext i8 %74 to i32, !dbg !4203
  br label %76, !dbg !4203

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !4203
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !4121, metadata !665) #12, !dbg !4196
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !4206, !llvm.loop !4207

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #12, !dbg !4210
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.151, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #12, !dbg !4211
  %81 = icmp slt i32 %80, 2, !dbg !4213
  br i1 %81, label %112, label %82, !dbg !4214

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !4215
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4126, metadata !665) #12, !dbg !4216
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !4217
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !4127, metadata !665) #12, !dbg !4218
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4128, metadata !665) #12, !dbg !4219
  %85 = icmp eq i64 %51, 0, !dbg !4220
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !4222

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !4120, metadata !665) #12, !dbg !4184
  %90 = add i64 %87, 2, !dbg !4223
  %91 = call noalias i8* @malloc(i64 %90) #12, !dbg !4225
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !4119, metadata !665) #12, !dbg !4183
  br label %96, !dbg !4226

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !4227
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !4120, metadata !665) #12, !dbg !4184
  %94 = add i64 %93, 1, !dbg !4229
  %95 = call i8* @realloc(i8* %52, i64 %94) #12, !dbg !4230
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !4119, metadata !665) #12, !dbg !4183
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4119, metadata !665) #12, !dbg !4183
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4120, metadata !665) #12, !dbg !4184
  %99 = icmp eq i8* %98, null, !dbg !4231
  br i1 %99, label %100, label %102, !dbg !4233

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4120, metadata !665) #12, !dbg !4184
  call void @free(i8* %52) #12, !dbg !4234
  br label %112, !dbg !4236

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !4237
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !4237
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !4238
  %104 = xor i64 %84, -1, !dbg !4239
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4239
  %106 = xor i64 %83, -1, !dbg !4240
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !4240
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !4241, metadata !665) #12, !dbg !4250
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !4249, metadata !665) #12, !dbg !4250
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #12, !dbg !4252
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #12, !dbg !4253
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4241, metadata !665) #12, !dbg !4254
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4249, metadata !665) #12, !dbg !4254
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #12, !dbg !4256
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #12, !dbg !4257
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4119, metadata !665) #12, !dbg !4183
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4120, metadata !665) #12, !dbg !4184
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !4237
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !4237
  br label %50, !dbg !4258, !llvm.loop !4207

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !4237
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !4237
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #12, !dbg !4259
  %116 = icmp eq i64 %113, 0, !dbg !4260
  br i1 %116, label %119, label %117, !dbg !4262

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !4263
  store i8 0, i8* %118, align 1, !dbg !4265, !tbaa !809
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.146, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.146, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.146, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !4069, metadata !665) #12, !dbg !4139
  call void @free(i8* %29) #12, !dbg !4266
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.146, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !4069, metadata !665) #12, !dbg !4139
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !4267, !tbaa !672
  br label %123, !dbg !4268

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4069, metadata !665) #12, !dbg !4139
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4054, metadata !665), !dbg !4269
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4054, metadata !665), !dbg !4269
  %125 = load i8, i8* %124, align 1, !dbg !4270, !tbaa !809
  %126 = icmp eq i8 %125, 0, !dbg !4272
  br i1 %126, label %152, label %127, !dbg !4273

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !4274

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !4054, metadata !665), !dbg !4269
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !4274
  %132 = icmp eq i32 %131, 0, !dbg !4276
  br i1 %132, label %139, label %133, !dbg !4277

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !4278
  br i1 %134, label %135, label %143, !dbg !4279

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !4280
  %137 = load i8, i8* %136, align 1, !dbg !4280, !tbaa !809
  %138 = icmp eq i8 %137, 0, !dbg !4281
  br i1 %138, label %139, label %143, !dbg !4282

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !4283
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !4285
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !4286
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !4053, metadata !665), !dbg !4134
  br label %152, !dbg !4287

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !4288
  %145 = add i64 %144, 1, !dbg !4289
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !4290
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4054, metadata !665), !dbg !4269
  %147 = call i64 @strlen(i8* %146) #14, !dbg !4291
  %148 = add i64 %147, 1, !dbg !4292
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !4293
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4054, metadata !665), !dbg !4269
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4054, metadata !665), !dbg !4269
  %150 = load i8, i8* %149, align 1, !dbg !4270, !tbaa !809
  %151 = icmp eq i8 %150, 0, !dbg !4272
  br i1 %151, label %152, label %128, !dbg !4273, !llvm.loop !4294

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4053, metadata !665), !dbg !4134
  %154 = load i8, i8* %153, align 1, !dbg !4296, !tbaa !809
  %155 = icmp eq i8 %154, 0, !dbg !4298
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.152, i64 0, i64 0), i8* %153, !dbg !4299
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !4053, metadata !665), !dbg !4134
  ret i8* %156, !dbg !4300
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

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
attributes #9 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !104, !110, !124, !132, !607, !610, !139, !146, !612, !614, !215, !622, !639, !641, !643, !228, !645, !647, !649, !652, !654, !261}
!llvm.ident = !{!656, !656, !656, !656, !656, !656, !656, !656, !656, !656, !656, !656, !656, !656, !656, !656, !656, !656, !656, !656, !656, !656, !656}
!llvm.module.flags = !{!657, !658, !659, !660, !661}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 59, type: !90, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !35, globals: !50)
!3 = !DIFile(filename: "src/tee.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !12, !21}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "output_error", file: !3, line: 48, size: 32, elements: !6)
!6 = !{!7, !8, !9, !10, !11}
!7 = !DIEnumerator(name: "output_error_sigpipe", value: 0)
!8 = !DIEnumerator(name: "output_error_warn", value: 1)
!9 = !DIEnumerator(name: "output_error_warn_nopipe", value: 2)
!10 = !DIEnumerator(name: "output_error_exit", value: 3)
!11 = !DIEnumerator(name: "output_error_exit_nopipe", value: 4)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 45, size: 32, elements: !14)
!13 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!14 = !{!15, !16, !17, !18, !19, !20}
!15 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!16 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!17 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!18 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!19 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!20 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !22, line: 32, size: 32, elements: !23)
!22 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!24 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!25 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!26 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!27 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!28 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!29 = !DIEnumerator(name: "c_quoting_style", value: 5)
!30 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!31 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!32 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!33 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!34 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!35 = !{!36, !39, !40, !41, !47}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !42, line: 68, baseType: !43)
!42 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !46}
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !48, line: 62, baseType: !49)
!48 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!49 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!50 = !{!51, !54, !56, !58, !0, !78, !84}
!51 = !DIGlobalVariableExpression(var: !52)
!52 = distinct !DIGlobalVariable(name: "append", scope: !2, file: !3, line: 43, type: !53, isLocal: true, isDefinition: true)
!53 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!54 = !DIGlobalVariableExpression(var: !55)
!55 = distinct !DIGlobalVariable(name: "ignore_interrupts", scope: !2, file: !3, line: 46, type: !53, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57)
!57 = distinct !DIGlobalVariable(name: "output_error", scope: !2, file: !3, line: 57, type: !5, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59)
!59 = distinct !DIGlobalVariable(name: "infomap", scope: !60, file: !61, line: 632, type: !75, isLocal: true, isDefinition: true)
!60 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !61, file: !61, line: 630, type: !62, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !64)
!61 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!62 = !DISubroutineType(types: !63)
!63 = !{null, !36}
!64 = !{!65, !66, !67, !74}
!65 = !DILocalVariable(name: "program", arg: 1, scope: !60, file: !61, line: 630, type: !36)
!66 = !DILocalVariable(name: "node", scope: !60, file: !61, line: 642, type: !36)
!67 = !DILocalVariable(name: "map_prog", scope: !60, file: !61, line: 643, type: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !60, file: !61, line: 632, size: 128, elements: !71)
!71 = !{!72, !73}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !70, file: !61, line: 632, baseType: !36, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !70, file: !61, line: 632, baseType: !36, size: 64, offset: 64)
!74 = !DILocalVariable(name: "lc_messages", scope: !60, file: !61, line: 655, type: !36)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 896, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 7)
!78 = !DIGlobalVariableExpression(var: !79)
!79 = distinct !DIGlobalVariable(name: "output_error_types", scope: !2, file: !3, line: 73, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 128, elements: !82)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!82 = !{!83}
!83 = !DISubrange(count: 4)
!84 = !DIGlobalVariableExpression(var: !85)
!85 = distinct !DIGlobalVariable(name: "output_error_args", scope: !2, file: !3, line: 69, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 320, elements: !88)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!88 = !{!89}
!89 = !DISubrange(count: 5)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 1536, elements: !100)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !93, line: 50, size: 256, elements: !94)
!93 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!94 = !{!95, !96, !97, !99}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !92, file: !93, line: 52, baseType: !36, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !92, file: !93, line: 55, baseType: !46, size: 32, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !92, file: !93, line: 56, baseType: !98, size: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !92, file: !93, line: 57, baseType: !46, size: 32, offset: 192)
!100 = !{!101}
!101 = !DISubrange(count: 6)
!102 = !DIGlobalVariableExpression(var: !103)
!103 = distinct !DIGlobalVariable(name: "Version", scope: !104, file: !105, line: 2, type: !36, isLocal: false, isDefinition: true)
!104 = distinct !DICompileUnit(language: DW_LANG_C99, file: !105, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106, globals: !107)
!105 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!106 = !{}
!107 = !{!102}
!108 = !DIGlobalVariableExpression(var: !109)
!109 = distinct !DIGlobalVariable(name: "argmatch_die", scope: !110, file: !116, line: 69, type: !117, isLocal: false, isDefinition: true)
!110 = distinct !DICompileUnit(language: DW_LANG_C99, file: !111, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !112, retainedTypes: !113, globals: !115)
!111 = !DIFile(filename: "./lib/argmatch.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!112 = !{!21}
!113 = !{!40, !114}
!114 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!115 = !{!108}
!116 = !DIFile(filename: "lib/argmatch.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "argmatch_exit_fn", file: !118, line: 55, baseType: !119)
!118 = !DIFile(filename: "./lib/argmatch.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{null}
!122 = !DIGlobalVariableExpression(var: !123)
!123 = distinct !DIGlobalVariable(name: "file_name", scope: !124, file: !129, line: 36, type: !36, isLocal: true, isDefinition: true)
!124 = distinct !DICompileUnit(language: DW_LANG_C99, file: !125, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106, globals: !126)
!125 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!126 = !{!122, !127}
!127 = !DIGlobalVariableExpression(var: !128)
!128 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !124, file: !129, line: 46, type: !53, isLocal: true, isDefinition: true)
!129 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!130 = !DIGlobalVariableExpression(var: !131)
!131 = distinct !DIGlobalVariable(name: "exit_failure", scope: !132, file: !135, line: 24, type: !136, isLocal: false, isDefinition: true)
!132 = distinct !DICompileUnit(language: DW_LANG_C99, file: !133, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106, globals: !134)
!133 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!134 = !{!130}
!135 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!136 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !46)
!137 = !DIGlobalVariableExpression(var: !138)
!138 = distinct !DIGlobalVariable(name: "program_name", scope: !139, file: !143, line: 33, type: !36, isLocal: false, isDefinition: true)
!139 = distinct !DICompileUnit(language: DW_LANG_C99, file: !140, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106, retainedTypes: !141, globals: !142)
!140 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!141 = !{!40, !39}
!142 = !{!137}
!143 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!144 = !DIGlobalVariableExpression(var: !145)
!145 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !146, file: !174, line: 77, type: !210, isLocal: false, isDefinition: true)
!146 = distinct !DICompileUnit(language: DW_LANG_C99, file: !147, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, retainedTypes: !169, globals: !171)
!147 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!148 = !{!21, !149, !154}
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !22, line: 242, size: 32, elements: !150)
!150 = !{!151, !152, !153}
!151 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!152 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!153 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !155, line: 46, size: 32, elements: !156)
!155 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!156 = !{!157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168}
!157 = !DIEnumerator(name: "_ISupper", value: 256)
!158 = !DIEnumerator(name: "_ISlower", value: 512)
!159 = !DIEnumerator(name: "_ISalpha", value: 1024)
!160 = !DIEnumerator(name: "_ISdigit", value: 2048)
!161 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!162 = !DIEnumerator(name: "_ISspace", value: 8192)
!163 = !DIEnumerator(name: "_ISprint", value: 16384)
!164 = !DIEnumerator(name: "_ISgraph", value: 32768)
!165 = !DIEnumerator(name: "_ISblank", value: 1)
!166 = !DIEnumerator(name: "_IScntrl", value: 2)
!167 = !DIEnumerator(name: "_ISpunct", value: 4)
!168 = !DIEnumerator(name: "_ISalnum", value: 8)
!169 = !{!46, !170, !47, !39}
!170 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!171 = !{!144, !172, !179, !192, !194, !199, !206, !208}
!172 = !DIGlobalVariableExpression(var: !173)
!173 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !146, file: !174, line: 93, type: !175, isLocal: false, isDefinition: true)
!174 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 320, elements: !177)
!176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!177 = !{!178}
!178 = !DISubrange(count: 10)
!179 = !DIGlobalVariableExpression(var: !180)
!180 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !146, file: !174, line: 1043, type: !181, isLocal: false, isDefinition: true)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !174, line: 57, size: 448, elements: !182)
!182 = !{!183, !184, !185, !190, !191}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !181, file: !174, line: 60, baseType: !21, size: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !181, file: !174, line: 63, baseType: !46, size: 32, offset: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !181, file: !174, line: 67, baseType: !186, size: 256, offset: 64)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 256, elements: !188)
!187 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!188 = !{!189}
!189 = !DISubrange(count: 8)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !181, file: !174, line: 70, baseType: !36, size: 64, offset: 320)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !181, file: !174, line: 73, baseType: !36, size: 64, offset: 384)
!192 = !DIGlobalVariableExpression(var: !193)
!193 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !146, file: !174, line: 108, type: !181, isLocal: true, isDefinition: true)
!194 = !DIGlobalVariableExpression(var: !195)
!195 = distinct !DIGlobalVariable(name: "slot0", scope: !146, file: !174, line: 834, type: !196, isLocal: true, isDefinition: true)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 2048, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 256)
!199 = !DIGlobalVariableExpression(var: !200)
!200 = distinct !DIGlobalVariable(name: "slotvec", scope: !146, file: !174, line: 837, type: !201, isLocal: true, isDefinition: true)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !174, line: 826, size: 128, elements: !203)
!203 = !{!204, !205}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !202, file: !174, line: 828, baseType: !47, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !202, file: !174, line: 829, baseType: !39, size: 64, offset: 64)
!206 = !DIGlobalVariableExpression(var: !207)
!207 = distinct !DIGlobalVariable(name: "nslots", scope: !146, file: !174, line: 835, type: !46, isLocal: true, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209)
!209 = distinct !DIGlobalVariable(name: "slotvec0", scope: !146, file: !174, line: 836, type: !202, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 704, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 11)
!213 = !DIGlobalVariableExpression(var: !214)
!214 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !215, file: !218, line: 26, type: !219, isLocal: false, isDefinition: true)
!215 = distinct !DICompileUnit(language: DW_LANG_C99, file: !216, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106, globals: !217)
!216 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!217 = !{!213}
!218 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 376, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 47)
!222 = !DIGlobalVariableExpression(var: !223)
!223 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !224, file: !225, line: 335, type: !46, isLocal: true, isDefinition: true)
!224 = distinct !DISubprogram(name: "rpl_fcntl", scope: !225, file: !225, line: 272, type: !226, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !228, variables: !231)
!225 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!226 = !DISubroutineType(types: !227)
!227 = !{!46, !46, !46, null}
!228 = distinct !DICompileUnit(language: DW_LANG_C99, file: !229, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106, globals: !230)
!229 = !DIFile(filename: "./lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!230 = !{!222}
!231 = !{!232, !233, !234, !247, !248, !251, !254, !257}
!232 = !DILocalVariable(name: "fd", arg: 1, scope: !224, file: !225, line: 272, type: !46)
!233 = !DILocalVariable(name: "action", arg: 2, scope: !224, file: !225, line: 272, type: !46)
!234 = !DILocalVariable(name: "arg", scope: !224, file: !225, line: 274, type: !235)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !236, line: 30, baseType: !237)
!236 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !229, line: 274, baseType: !238)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 192, elements: !245)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !229, line: 274, size: 192, elements: !240)
!240 = !{!241, !242, !243, !244}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !239, file: !229, line: 274, baseType: !187, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !239, file: !229, line: 274, baseType: !187, size: 32, offset: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !239, file: !229, line: 274, baseType: !40, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !239, file: !229, line: 274, baseType: !40, size: 64, offset: 128)
!245 = !{!246}
!246 = !DISubrange(count: 1)
!247 = !DILocalVariable(name: "result", scope: !224, file: !225, line: 275, type: !46)
!248 = !DILocalVariable(name: "target", scope: !249, file: !225, line: 322, type: !46)
!249 = distinct !DILexicalBlock(scope: !250, file: !225, line: 321, column: 7)
!250 = distinct !DILexicalBlock(scope: !224, file: !225, line: 278, column: 5)
!251 = !DILocalVariable(name: "flags", scope: !252, file: !225, line: 359, type: !46)
!252 = distinct !DILexicalBlock(scope: !253, file: !225, line: 358, column: 11)
!253 = distinct !DILexicalBlock(scope: !249, file: !225, line: 357, column: 13)
!254 = !DILocalVariable(name: "saved_errno", scope: !255, file: !225, line: 362, type: !46)
!255 = distinct !DILexicalBlock(scope: !256, file: !225, line: 361, column: 15)
!256 = distinct !DILexicalBlock(scope: !252, file: !225, line: 360, column: 17)
!257 = !DILocalVariable(name: "p", scope: !258, file: !225, line: 404, type: !40)
!258 = distinct !DILexicalBlock(scope: !250, file: !225, line: 402, column: 7)
!259 = !DIGlobalVariableExpression(var: !260)
!260 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !261, file: !605, line: 120, type: !606, isLocal: true, isDefinition: true)
!261 = distinct !DICompileUnit(language: DW_LANG_C99, file: !262, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !263, retainedTypes: !602, globals: !604)
!262 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!263 = !{!264}
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !265, line: 41, size: 32, elements: !266)
!265 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!266 = !{!267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601}
!267 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!268 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!269 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!270 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!271 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!272 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!273 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!274 = !DIEnumerator(name: "DAY_1", value: 131079)
!275 = !DIEnumerator(name: "DAY_2", value: 131080)
!276 = !DIEnumerator(name: "DAY_3", value: 131081)
!277 = !DIEnumerator(name: "DAY_4", value: 131082)
!278 = !DIEnumerator(name: "DAY_5", value: 131083)
!279 = !DIEnumerator(name: "DAY_6", value: 131084)
!280 = !DIEnumerator(name: "DAY_7", value: 131085)
!281 = !DIEnumerator(name: "ABMON_1", value: 131086)
!282 = !DIEnumerator(name: "ABMON_2", value: 131087)
!283 = !DIEnumerator(name: "ABMON_3", value: 131088)
!284 = !DIEnumerator(name: "ABMON_4", value: 131089)
!285 = !DIEnumerator(name: "ABMON_5", value: 131090)
!286 = !DIEnumerator(name: "ABMON_6", value: 131091)
!287 = !DIEnumerator(name: "ABMON_7", value: 131092)
!288 = !DIEnumerator(name: "ABMON_8", value: 131093)
!289 = !DIEnumerator(name: "ABMON_9", value: 131094)
!290 = !DIEnumerator(name: "ABMON_10", value: 131095)
!291 = !DIEnumerator(name: "ABMON_11", value: 131096)
!292 = !DIEnumerator(name: "ABMON_12", value: 131097)
!293 = !DIEnumerator(name: "MON_1", value: 131098)
!294 = !DIEnumerator(name: "MON_2", value: 131099)
!295 = !DIEnumerator(name: "MON_3", value: 131100)
!296 = !DIEnumerator(name: "MON_4", value: 131101)
!297 = !DIEnumerator(name: "MON_5", value: 131102)
!298 = !DIEnumerator(name: "MON_6", value: 131103)
!299 = !DIEnumerator(name: "MON_7", value: 131104)
!300 = !DIEnumerator(name: "MON_8", value: 131105)
!301 = !DIEnumerator(name: "MON_9", value: 131106)
!302 = !DIEnumerator(name: "MON_10", value: 131107)
!303 = !DIEnumerator(name: "MON_11", value: 131108)
!304 = !DIEnumerator(name: "MON_12", value: 131109)
!305 = !DIEnumerator(name: "AM_STR", value: 131110)
!306 = !DIEnumerator(name: "PM_STR", value: 131111)
!307 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!308 = !DIEnumerator(name: "D_FMT", value: 131113)
!309 = !DIEnumerator(name: "T_FMT", value: 131114)
!310 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!311 = !DIEnumerator(name: "ERA", value: 131116)
!312 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!313 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!314 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!315 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!316 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!317 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!318 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!319 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!320 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!321 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!322 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!323 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!324 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!325 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!326 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!327 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!328 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!329 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!330 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!331 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!332 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!333 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!334 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!335 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!336 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!337 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!338 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!339 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!340 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!341 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!342 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!343 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!344 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!345 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!346 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!347 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!348 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!349 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!350 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!351 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!352 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!353 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!354 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!355 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!356 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!357 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!358 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!359 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!360 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!361 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!362 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!363 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!364 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!365 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!366 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!367 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!368 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!369 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!370 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!371 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!372 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!373 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!374 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!375 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!376 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!377 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!378 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!379 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!380 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!381 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!382 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!383 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!384 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!385 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!386 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!387 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!388 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!389 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!390 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!391 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!392 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!393 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!394 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!395 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!396 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!397 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!398 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!399 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!400 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!401 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!402 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!403 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!404 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!405 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!406 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!407 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!408 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!409 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!410 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!411 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!412 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!413 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!414 = !DIEnumerator(name: "CODESET", value: 14)
!415 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!416 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!417 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!418 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!419 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!420 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!421 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!422 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!423 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!424 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!425 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!426 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!427 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!428 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!429 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!430 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!431 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!432 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!433 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!434 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!435 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!436 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!437 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!438 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!439 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!440 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!441 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!442 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!443 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!444 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!445 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!446 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!447 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!448 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!449 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!450 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!451 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!452 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!453 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!454 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!455 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!456 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!457 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!458 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!459 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!460 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!461 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!462 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!463 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!464 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!465 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!466 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!467 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!468 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!469 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!470 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!471 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!472 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!473 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!474 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!475 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!476 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!477 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!478 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!479 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!480 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!481 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!482 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!483 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!484 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!485 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!486 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!487 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!488 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!489 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!490 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!491 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!492 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!493 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!494 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!495 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!496 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!497 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!498 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!499 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!500 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!501 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!502 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!503 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!504 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!505 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!506 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!507 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!508 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!509 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!510 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!511 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!512 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!513 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!514 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!515 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!516 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!517 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!518 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!519 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!520 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!521 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!522 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!523 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!524 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!525 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!526 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!527 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!528 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!529 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!530 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!531 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!532 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!533 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!534 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!535 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!536 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!537 = !DIEnumerator(name: "THOUSEP", value: 65537)
!538 = !DIEnumerator(name: "__GROUPING", value: 65538)
!539 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!540 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!541 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!542 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!543 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!544 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!545 = !DIEnumerator(name: "__YESSTR", value: 327682)
!546 = !DIEnumerator(name: "__NOSTR", value: 327683)
!547 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!548 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!549 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!550 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!551 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!552 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!553 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!554 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!555 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!556 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!557 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!558 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!559 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!560 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!561 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!562 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!563 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!564 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!565 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!566 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!567 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!568 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!569 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!570 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!571 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!572 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!573 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!574 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!575 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!576 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!577 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!578 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!579 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!580 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!581 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!582 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!583 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!584 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!585 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!586 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!587 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!588 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!589 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!590 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!591 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!592 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!593 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!594 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!595 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!596 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!597 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!598 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!599 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!600 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!601 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!602 = !{!40, !39, !603}
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!604 = !{!259}
!605 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!606 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !36)
!607 = distinct !DICompileUnit(language: DW_LANG_C99, file: !608, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !609)
!608 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!609 = !{!12}
!610 = distinct !DICompileUnit(language: DW_LANG_C99, file: !611, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106)
!611 = !DIFile(filename: "./lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!612 = distinct !DICompileUnit(language: DW_LANG_C99, file: !613, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106)
!613 = !DIFile(filename: "./lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!614 = distinct !DICompileUnit(language: DW_LANG_C99, file: !615, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !616, retainedTypes: !621)
!615 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!616 = !{!617}
!617 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !618, line: 41, size: 32, elements: !619)
!618 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!619 = !{!620}
!620 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!621 = !{!40}
!622 = distinct !DICompileUnit(language: DW_LANG_C99, file: !623, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !624, retainedTypes: !638)
!623 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!624 = !{!625}
!625 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !627, file: !626, line: 192, size: 32, elements: !636)
!626 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!627 = distinct !DISubprogram(name: "x2nrealloc", scope: !626, file: !626, line: 180, type: !628, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !631)
!628 = !DISubroutineType(types: !629)
!629 = !{!40, !40, !630, !47}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!631 = !{!632, !633, !634, !635}
!632 = !DILocalVariable(name: "p", arg: 1, scope: !627, file: !626, line: 180, type: !40)
!633 = !DILocalVariable(name: "pn", arg: 2, scope: !627, file: !626, line: 180, type: !630)
!634 = !DILocalVariable(name: "s", arg: 3, scope: !627, file: !626, line: 180, type: !47)
!635 = !DILocalVariable(name: "n", scope: !627, file: !626, line: 182, type: !47)
!636 = !{!637}
!637 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!638 = !{!47, !39, !40}
!639 = distinct !DICompileUnit(language: DW_LANG_C99, file: !640, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106)
!640 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!641 = distinct !DICompileUnit(language: DW_LANG_C99, file: !642, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106, retainedTypes: !621)
!642 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!643 = distinct !DICompileUnit(language: DW_LANG_C99, file: !644, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106)
!644 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!645 = distinct !DICompileUnit(language: DW_LANG_C99, file: !646, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106, retainedTypes: !621)
!646 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!647 = distinct !DICompileUnit(language: DW_LANG_C99, file: !648, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106, retainedTypes: !621)
!648 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!649 = distinct !DICompileUnit(language: DW_LANG_C99, file: !650, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106, retainedTypes: !651)
!650 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!651 = !{!47}
!652 = distinct !DICompileUnit(language: DW_LANG_C99, file: !653, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106)
!653 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!654 = distinct !DICompileUnit(language: DW_LANG_C99, file: !655, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106)
!655 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!656 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!657 = !{i32 2, !"Dwarf Version", i32 4}
!658 = !{i32 2, !"Debug Info Version", i32 3}
!659 = !{i32 1, !"wchar_size", i32 4}
!660 = !{i32 7, !"PIC Level", i32 2}
!661 = !{i32 7, !"PIE Level", i32 2}
!662 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 81, type: !44, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !663)
!663 = !{!664}
!664 = !DILocalVariable(name: "status", arg: 1, scope: !662, file: !3, line: 81, type: !46)
!665 = !DIExpression()
!666 = !DILocation(line: 81, column: 12, scope: !662)
!667 = !DILocation(line: 83, column: 14, scope: !668)
!668 = distinct !DILexicalBlock(scope: !662, file: !3, line: 83, column: 7)
!669 = !DILocation(line: 83, column: 7, scope: !662)
!670 = !DILocation(line: 84, column: 5, scope: !671)
!671 = distinct !DILexicalBlock(scope: !668, file: !3, line: 84, column: 5)
!672 = !{!673, !673, i64 0}
!673 = !{!"any pointer", !674, i64 0}
!674 = !{!"omnipotent char", !675, i64 0}
!675 = !{!"Simple C/C++ TBAA"}
!676 = !DILocation(line: 87, column: 7, scope: !677)
!677 = distinct !DILexicalBlock(scope: !668, file: !3, line: 86, column: 5)
!678 = !DILocation(line: 88, column: 7, scope: !677)
!679 = !DILocation(line: 94, column: 7, scope: !677)
!680 = !DILocation(line: 98, column: 7, scope: !677)
!681 = !DILocation(line: 99, column: 7, scope: !677)
!682 = !DILocation(line: 100, column: 7, scope: !677)
!683 = !DILocation(line: 642, column: 15, scope: !60, inlinedAt: !684)
!684 = distinct !DILocation(line: 112, column: 7, scope: !677)
!685 = !DILocation(line: 651, column: 3, scope: !60, inlinedAt: !684)
!686 = !DILocation(line: 655, column: 29, scope: !60, inlinedAt: !684)
!687 = !DILocation(line: 655, column: 15, scope: !60, inlinedAt: !684)
!688 = !DILocation(line: 656, column: 7, scope: !689, inlinedAt: !684)
!689 = distinct !DILexicalBlock(scope: !60, file: !61, line: 656, column: 7)
!690 = !DILocation(line: 656, column: 19, scope: !689, inlinedAt: !684)
!691 = !DILocation(line: 656, column: 22, scope: !689, inlinedAt: !684)
!692 = !DILocation(line: 656, column: 7, scope: !60, inlinedAt: !684)
!693 = !DILocation(line: 662, column: 7, scope: !694, inlinedAt: !684)
!694 = distinct !DILexicalBlock(scope: !689, file: !61, line: 657, column: 5)
!695 = !DILocation(line: 664, column: 5, scope: !694, inlinedAt: !684)
!696 = !DILocation(line: 665, column: 3, scope: !60, inlinedAt: !684)
!697 = !DILocation(line: 667, column: 3, scope: !60, inlinedAt: !684)
!698 = !DILocation(line: 114, column: 3, scope: !662)
!699 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 118, type: !700, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !703)
!700 = !DISubroutineType(types: !701)
!701 = !{!46, !46, !702}
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!703 = !{!704, !705, !706, !707}
!704 = !DILocalVariable(name: "argc", arg: 1, scope: !699, file: !3, line: 118, type: !46)
!705 = !DILocalVariable(name: "argv", arg: 2, scope: !699, file: !3, line: 118, type: !702)
!706 = !DILocalVariable(name: "ok", scope: !699, file: !3, line: 120, type: !53)
!707 = !DILocalVariable(name: "optc", scope: !699, file: !3, line: 121, type: !46)
!708 = !DILocalVariable(name: "buffer", scope: !709, file: !3, line: 188, type: !785)
!709 = distinct !DISubprogram(name: "tee_files", scope: !3, file: !3, line: 184, type: !710, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !712)
!710 = !DISubroutineType(types: !711)
!711 = !{!53, !46, !702}
!712 = !{!713, !714, !715, !716, !708, !771, !775, !776, !777, !778, !784}
!713 = !DILocalVariable(name: "nfiles", arg: 1, scope: !709, file: !3, line: 184, type: !46)
!714 = !DILocalVariable(name: "files", arg: 2, scope: !709, file: !3, line: 184, type: !702)
!715 = !DILocalVariable(name: "n_outputs", scope: !709, file: !3, line: 186, type: !47)
!716 = !DILocalVariable(name: "descriptors", scope: !709, file: !3, line: 187, type: !717)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !720, line: 7, baseType: !721)
!720 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !722, line: 241, size: 1728, elements: !723)
!722 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!723 = !{!724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !744, !745, !746, !747, !751, !752, !754, !756, !759, !761, !762, !763, !764, !765, !766, !767}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !721, file: !722, line: 242, baseType: !46, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !721, file: !722, line: 247, baseType: !39, size: 64, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !721, file: !722, line: 248, baseType: !39, size: 64, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !721, file: !722, line: 249, baseType: !39, size: 64, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !721, file: !722, line: 250, baseType: !39, size: 64, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !721, file: !722, line: 251, baseType: !39, size: 64, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !721, file: !722, line: 252, baseType: !39, size: 64, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !721, file: !722, line: 253, baseType: !39, size: 64, offset: 448)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !721, file: !722, line: 254, baseType: !39, size: 64, offset: 512)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !721, file: !722, line: 256, baseType: !39, size: 64, offset: 576)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !721, file: !722, line: 257, baseType: !39, size: 64, offset: 640)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !721, file: !722, line: 258, baseType: !39, size: 64, offset: 704)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !721, file: !722, line: 260, baseType: !737, size: 64, offset: 768)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !722, line: 156, size: 192, elements: !739)
!739 = !{!740, !741, !743}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !738, file: !722, line: 157, baseType: !737, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !738, file: !722, line: 158, baseType: !742, size: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !738, file: !722, line: 162, baseType: !46, size: 32, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !721, file: !722, line: 262, baseType: !742, size: 64, offset: 832)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !721, file: !722, line: 264, baseType: !46, size: 32, offset: 896)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !721, file: !722, line: 268, baseType: !46, size: 32, offset: 928)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !721, file: !722, line: 270, baseType: !748, size: 64, offset: 960)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !749, line: 140, baseType: !750)
!749 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!750 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !721, file: !722, line: 274, baseType: !170, size: 16, offset: 1024)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !721, file: !722, line: 275, baseType: !753, size: 8, offset: 1040)
!753 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !721, file: !722, line: 276, baseType: !755, size: 8, offset: 1048)
!755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 8, elements: !245)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !721, file: !722, line: 280, baseType: !757, size: 64, offset: 1088)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !722, line: 150, baseType: null)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !721, file: !722, line: 289, baseType: !760, size: 64, offset: 1152)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !749, line: 141, baseType: !750)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !721, file: !722, line: 297, baseType: !40, size: 64, offset: 1216)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !721, file: !722, line: 298, baseType: !40, size: 64, offset: 1280)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !721, file: !722, line: 299, baseType: !40, size: 64, offset: 1344)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !721, file: !722, line: 300, baseType: !40, size: 64, offset: 1408)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !721, file: !722, line: 302, baseType: !47, size: 64, offset: 1472)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !721, file: !722, line: 303, baseType: !46, size: 32, offset: 1536)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !721, file: !722, line: 305, baseType: !768, size: 160, offset: 1568)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 160, elements: !769)
!769 = !{!770}
!770 = !DISubrange(count: 20)
!771 = !DILocalVariable(name: "bytes_read", scope: !709, file: !3, line: 189, type: !772)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !773, line: 109, baseType: !774)
!773 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !749, line: 181, baseType: !750)
!775 = !DILocalVariable(name: "i", scope: !709, file: !3, line: 190, type: !46)
!776 = !DILocalVariable(name: "ok", scope: !709, file: !3, line: 191, type: !53)
!777 = !DILocalVariable(name: "mode_string", scope: !709, file: !3, line: 192, type: !36)
!778 = !DILocalVariable(name: "w_errno", scope: !779, file: !3, line: 243, type: !46)
!779 = distinct !DILexicalBlock(scope: !780, file: !3, line: 242, column: 11)
!780 = distinct !DILexicalBlock(scope: !781, file: !3, line: 240, column: 13)
!781 = distinct !DILexicalBlock(scope: !782, file: !3, line: 239, column: 7)
!782 = distinct !DILexicalBlock(scope: !783, file: !3, line: 239, column: 7)
!783 = distinct !DILexicalBlock(scope: !709, file: !3, line: 230, column: 5)
!784 = !DILocalVariable(name: "fail", scope: !779, file: !3, line: 244, type: !53)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 65536, elements: !786)
!786 = !{!787}
!787 = !DISubrange(count: 8192)
!788 = !DILocation(line: 188, column: 8, scope: !709, inlinedAt: !789)
!789 = distinct !DILocation(line: 172, column: 8, scope: !699)
!790 = !DILocation(line: 118, column: 11, scope: !699)
!791 = !DILocation(line: 118, column: 24, scope: !699)
!792 = !DILocation(line: 124, column: 21, scope: !699)
!793 = !DILocation(line: 124, column: 3, scope: !699)
!794 = !DILocation(line: 125, column: 3, scope: !699)
!795 = !DILocation(line: 126, column: 3, scope: !699)
!796 = !DILocation(line: 127, column: 3, scope: !699)
!797 = !DILocation(line: 129, column: 3, scope: !699)
!798 = !DILocation(line: 134, column: 3, scope: !699)
!799 = !DILocation(line: 134, column: 18, scope: !699)
!800 = !DILocation(line: 121, column: 7, scope: !699)
!801 = !DILocation(line: 140, column: 11, scope: !802)
!802 = distinct !DILexicalBlock(scope: !803, file: !3, line: 137, column: 9)
!803 = distinct !DILexicalBlock(scope: !699, file: !3, line: 135, column: 5)
!804 = !DILocation(line: 144, column: 11, scope: !802)
!805 = !DILocation(line: 147, column: 15, scope: !806)
!806 = distinct !DILexicalBlock(scope: !802, file: !3, line: 147, column: 15)
!807 = !DILocation(line: 147, column: 15, scope: !802)
!808 = !DILocation(line: 148, column: 28, scope: !806)
!809 = !{!674, !674, i64 0}
!810 = !DILocation(line: 148, column: 13, scope: !806)
!811 = !DILocation(line: 152, column: 11, scope: !802)
!812 = distinct !{!812, !798, !813}
!813 = !DILocation(line: 161, column: 5, scope: !699)
!814 = !DILocation(line: 154, column: 9, scope: !802)
!815 = !DILocation(line: 156, column: 9, scope: !802)
!816 = !DILocation(line: 159, column: 11, scope: !802)
!817 = !DILocation(line: 163, column: 7, scope: !699)
!818 = !DILocation(line: 164, column: 5, scope: !819)
!819 = distinct !DILexicalBlock(scope: !699, file: !3, line: 163, column: 7)
!820 = !DILocation(line: 166, column: 7, scope: !821)
!821 = distinct !DILexicalBlock(scope: !699, file: !3, line: 166, column: 7)
!822 = !DILocation(line: 166, column: 20, scope: !821)
!823 = !DILocation(line: 166, column: 7, scope: !699)
!824 = !DILocation(line: 167, column: 5, scope: !821)
!825 = !DILocation(line: 172, column: 26, scope: !699)
!826 = !{!827, !827, i64 0}
!827 = !{!"int", !674, i64 0}
!828 = !DILocation(line: 172, column: 24, scope: !699)
!829 = !DILocation(line: 184, column: 16, scope: !709, inlinedAt: !789)
!830 = !DILocation(line: 184, column: 31, scope: !709, inlinedAt: !789)
!831 = !DILocation(line: 186, column: 10, scope: !709, inlinedAt: !789)
!832 = !DILocation(line: 188, column: 3, scope: !709, inlinedAt: !789)
!833 = !DILocation(line: 189, column: 11, scope: !709, inlinedAt: !789)
!834 = !DILocation(line: 191, column: 8, scope: !709, inlinedAt: !789)
!835 = !DILocation(line: 195, column: 9, scope: !709, inlinedAt: !789)
!836 = !DILocation(line: 192, column: 15, scope: !709, inlinedAt: !789)
!837 = !DILocation(line: 199, column: 12, scope: !709, inlinedAt: !789)
!838 = !DILocation(line: 199, column: 3, scope: !709, inlinedAt: !789)
!839 = !DILocalVariable(name: "s", arg: 2, scope: !840, file: !626, line: 105, type: !47)
!840 = distinct !DISubprogram(name: "xnmalloc", scope: !626, file: !626, line: 105, type: !841, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !843)
!841 = !DISubroutineType(types: !842)
!842 = !{!40, !47, !47}
!843 = !{!844, !839}
!844 = !DILocalVariable(name: "n", arg: 1, scope: !840, file: !626, line: 105, type: !47)
!845 = !DILocation(line: 105, column: 28, scope: !840, inlinedAt: !846)
!846 = distinct !DILocation(line: 204, column: 17, scope: !709, inlinedAt: !789)
!847 = !DILocation(line: 107, column: 7, scope: !848, inlinedAt: !846)
!848 = distinct !DILexicalBlock(scope: !840, file: !626, line: 107, column: 7)
!849 = !DILocation(line: 107, column: 7, scope: !840, inlinedAt: !846)
!850 = !DILocation(line: 108, column: 5, scope: !848, inlinedAt: !846)
!851 = !DILocation(line: 172, column: 35, scope: !699)
!852 = !DILocation(line: 204, column: 34, scope: !709, inlinedAt: !789)
!853 = !DILocation(line: 204, column: 27, scope: !709, inlinedAt: !789)
!854 = !DILocation(line: 109, column: 21, scope: !840, inlinedAt: !846)
!855 = !DILocation(line: 109, column: 10, scope: !840, inlinedAt: !846)
!856 = !DILocation(line: 204, column: 17, scope: !709, inlinedAt: !789)
!857 = !DILocation(line: 187, column: 10, scope: !709, inlinedAt: !789)
!858 = !DILocation(line: 205, column: 8, scope: !709, inlinedAt: !789)
!859 = !DILocation(line: 206, column: 20, scope: !709, inlinedAt: !789)
!860 = !DILocation(line: 206, column: 18, scope: !709, inlinedAt: !789)
!861 = !DILocation(line: 207, column: 24, scope: !709, inlinedAt: !789)
!862 = !DILocation(line: 207, column: 12, scope: !709, inlinedAt: !789)
!863 = !DILocation(line: 208, column: 12, scope: !709, inlinedAt: !789)
!864 = !DILocation(line: 208, column: 3, scope: !709, inlinedAt: !789)
!865 = !DILocation(line: 190, column: 7, scope: !709, inlinedAt: !789)
!866 = !DILocation(line: 211, column: 17, scope: !867, inlinedAt: !789)
!867 = distinct !DILexicalBlock(scope: !868, file: !3, line: 211, column: 3)
!868 = distinct !DILexicalBlock(scope: !709, file: !3, line: 211, column: 3)
!869 = !DILocation(line: 211, column: 3, scope: !868, inlinedAt: !789)
!870 = !DILocation(line: 214, column: 31, scope: !871, inlinedAt: !789)
!871 = distinct !DILexicalBlock(scope: !867, file: !3, line: 212, column: 5)
!872 = !DILocation(line: 214, column: 24, scope: !871, inlinedAt: !789)
!873 = !DILocation(line: 214, column: 7, scope: !871, inlinedAt: !789)
!874 = !DILocation(line: 214, column: 22, scope: !871, inlinedAt: !789)
!875 = !DILocation(line: 215, column: 26, scope: !876, inlinedAt: !789)
!876 = distinct !DILexicalBlock(scope: !871, file: !3, line: 215, column: 11)
!877 = !DILocation(line: 215, column: 11, scope: !871, inlinedAt: !789)
!878 = !DILocation(line: 217, column: 18, scope: !879, inlinedAt: !789)
!879 = distinct !DILexicalBlock(scope: !876, file: !3, line: 216, column: 9)
!880 = !DILocation(line: 218, column: 18, scope: !879, inlinedAt: !789)
!881 = !DILocation(line: 219, column: 18, scope: !879, inlinedAt: !789)
!882 = !DILocation(line: 219, column: 31, scope: !879, inlinedAt: !789)
!883 = !DILocation(line: 217, column: 11, scope: !879, inlinedAt: !789)
!884 = !DILocation(line: 221, column: 9, scope: !879, inlinedAt: !789)
!885 = !DILocation(line: 224, column: 11, scope: !886, inlinedAt: !789)
!886 = distinct !DILexicalBlock(scope: !876, file: !3, line: 223, column: 9)
!887 = !DILocation(line: 225, column: 20, scope: !886, inlinedAt: !789)
!888 = !DILocation(line: 211, column: 29, scope: !867, inlinedAt: !789)
!889 = distinct !{!889, !890, !891}
!890 = !DILocation(line: 211, column: 3, scope: !868)
!891 = !DILocation(line: 227, column: 5, scope: !868)
!892 = !DILocation(line: 229, column: 3, scope: !709, inlinedAt: !789)
!893 = !DILocation(line: 231, column: 20, scope: !783, inlinedAt: !789)
!894 = !DILocation(line: 232, column: 22, scope: !895, inlinedAt: !789)
!895 = distinct !DILexicalBlock(scope: !783, file: !3, line: 232, column: 11)
!896 = !DILocation(line: 232, column: 26, scope: !895, inlinedAt: !789)
!897 = !DILocation(line: 232, column: 29, scope: !895, inlinedAt: !789)
!898 = !DILocation(line: 232, column: 35, scope: !895, inlinedAt: !789)
!899 = !DILocation(line: 232, column: 11, scope: !783, inlinedAt: !789)
!900 = !DILocation(line: 234, column: 22, scope: !901, inlinedAt: !789)
!901 = distinct !DILexicalBlock(scope: !783, file: !3, line: 234, column: 11)
!902 = !DILocation(line: 234, column: 11, scope: !783, inlinedAt: !789)
!903 = !DILocation(line: 239, column: 7, scope: !782, inlinedAt: !789)
!904 = !DILocation(line: 240, column: 13, scope: !780, inlinedAt: !789)
!905 = !DILocation(line: 241, column: 13, scope: !780, inlinedAt: !789)
!906 = !DILocation(line: 241, column: 16, scope: !780, inlinedAt: !789)
!907 = !DILocation(line: 241, column: 63, scope: !780, inlinedAt: !789)
!908 = !DILocation(line: 240, column: 13, scope: !781, inlinedAt: !789)
!909 = !DILocation(line: 243, column: 27, scope: !779, inlinedAt: !789)
!910 = !DILocation(line: 243, column: 17, scope: !779, inlinedAt: !789)
!911 = !DILocation(line: 244, column: 31, scope: !779, inlinedAt: !789)
!912 = !DILocation(line: 244, column: 40, scope: !779, inlinedAt: !789)
!913 = !DILocation(line: 244, column: 44, scope: !779, inlinedAt: !789)
!914 = !DILocation(line: 245, column: 43, scope: !779, inlinedAt: !789)
!915 = !DILocation(line: 246, column: 35, scope: !916, inlinedAt: !789)
!916 = distinct !DILexicalBlock(scope: !779, file: !3, line: 246, column: 17)
!917 = !DILocation(line: 246, column: 32, scope: !916, inlinedAt: !789)
!918 = !DILocation(line: 246, column: 17, scope: !779, inlinedAt: !789)
!919 = !DILocation(line: 247, column: 15, scope: !916, inlinedAt: !789)
!920 = !DILocation(line: 248, column: 17, scope: !779, inlinedAt: !789)
!921 = !DILocation(line: 250, column: 24, scope: !922, inlinedAt: !789)
!922 = distinct !DILexicalBlock(scope: !923, file: !3, line: 249, column: 15)
!923 = distinct !DILexicalBlock(scope: !779, file: !3, line: 248, column: 17)
!924 = !DILocation(line: 251, column: 24, scope: !922, inlinedAt: !789)
!925 = !DILocation(line: 252, column: 39, scope: !922, inlinedAt: !789)
!926 = !DILocation(line: 250, column: 17, scope: !922, inlinedAt: !789)
!927 = !DILocation(line: 253, column: 15, scope: !922, inlinedAt: !789)
!928 = !DILocation(line: 254, column: 28, scope: !779, inlinedAt: !789)
!929 = !DILocation(line: 255, column: 17, scope: !779, inlinedAt: !789)
!930 = !DILocation(line: 257, column: 22, scope: !779, inlinedAt: !789)
!931 = !DILocation(line: 258, column: 11, scope: !779, inlinedAt: !789)
!932 = !DILocation(line: 239, column: 33, scope: !781, inlinedAt: !789)
!933 = !DILocation(line: 239, column: 21, scope: !781, inlinedAt: !789)
!934 = distinct !{!934, !935, !936}
!935 = !DILocation(line: 239, column: 7, scope: !782)
!936 = !DILocation(line: 258, column: 11, scope: !782)
!937 = distinct !{!937, !938, !939}
!938 = !DILocation(line: 229, column: 3, scope: !709)
!939 = !DILocation(line: 259, column: 5, scope: !709)
!940 = !DILocation(line: 261, column: 18, scope: !941, inlinedAt: !789)
!941 = distinct !DILexicalBlock(scope: !709, file: !3, line: 261, column: 7)
!942 = !DILocation(line: 261, column: 7, scope: !709, inlinedAt: !789)
!943 = !DILocation(line: 263, column: 17, scope: !944, inlinedAt: !789)
!944 = distinct !DILexicalBlock(scope: !941, file: !3, line: 262, column: 5)
!945 = !DILocation(line: 263, column: 24, scope: !944, inlinedAt: !789)
!946 = !DILocation(line: 263, column: 7, scope: !944, inlinedAt: !789)
!947 = !DILocation(line: 265, column: 5, scope: !944, inlinedAt: !789)
!948 = !DILocation(line: 268, column: 3, scope: !949, inlinedAt: !789)
!949 = distinct !DILexicalBlock(scope: !709, file: !3, line: 268, column: 3)
!950 = !DILocation(line: 269, column: 9, scope: !951, inlinedAt: !789)
!951 = distinct !DILexicalBlock(scope: !952, file: !3, line: 269, column: 9)
!952 = distinct !DILexicalBlock(scope: !949, file: !3, line: 268, column: 3)
!953 = !DILocation(line: 269, column: 24, scope: !951, inlinedAt: !789)
!954 = !DILocation(line: 269, column: 27, scope: !951, inlinedAt: !789)
!955 = !DILocation(line: 269, column: 51, scope: !951, inlinedAt: !789)
!956 = !DILocation(line: 269, column: 9, scope: !952, inlinedAt: !789)
!957 = !DILocation(line: 271, column: 19, scope: !958, inlinedAt: !789)
!958 = distinct !DILexicalBlock(scope: !951, file: !3, line: 270, column: 7)
!959 = !DILocation(line: 271, column: 32, scope: !958, inlinedAt: !789)
!960 = !DILocation(line: 271, column: 9, scope: !958, inlinedAt: !789)
!961 = !DILocation(line: 273, column: 7, scope: !958, inlinedAt: !789)
!962 = !DILocation(line: 268, column: 29, scope: !952, inlinedAt: !789)
!963 = !DILocation(line: 268, column: 17, scope: !952, inlinedAt: !789)
!964 = distinct !{!964, !965, !966}
!965 = !DILocation(line: 268, column: 3, scope: !949)
!966 = !DILocation(line: 273, column: 7, scope: !949)
!967 = !DILocation(line: 275, column: 3, scope: !709, inlinedAt: !789)
!968 = !DILocation(line: 278, column: 1, scope: !709, inlinedAt: !789)
!969 = !DILocation(line: 173, column: 7, scope: !970)
!970 = distinct !DILexicalBlock(scope: !699, file: !3, line: 173, column: 7)
!971 = !DILocation(line: 173, column: 28, scope: !970)
!972 = !DILocation(line: 173, column: 7, scope: !699)
!973 = !DILocation(line: 174, column: 5, scope: !970)
!974 = !DILocation(line: 277, column: 10, scope: !709, inlinedAt: !789)
!975 = !DILocation(line: 176, column: 10, scope: !699)
!976 = !DILocation(line: 177, column: 1, scope: !699)
!977 = distinct !DISubprogram(name: "__argmatch_die", scope: !116, file: !116, line: 62, type: !120, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !106)
!978 = !DILocation(line: 64, column: 3, scope: !977)
!979 = !DILocation(line: 65, column: 1, scope: !977)
!980 = distinct !DISubprogram(name: "argmatch", scope: !116, file: !116, line: 84, type: !981, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !985)
!981 = !DISubroutineType(types: !982)
!982 = !{!983, !36, !984, !36, !47}
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !48, line: 51, baseType: !750)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!985 = !{!986, !987, !988, !989, !990, !991, !992, !993}
!986 = !DILocalVariable(name: "arg", arg: 1, scope: !980, file: !116, line: 84, type: !36)
!987 = !DILocalVariable(name: "arglist", arg: 2, scope: !980, file: !116, line: 84, type: !984)
!988 = !DILocalVariable(name: "vallist", arg: 3, scope: !980, file: !116, line: 85, type: !36)
!989 = !DILocalVariable(name: "valsize", arg: 4, scope: !980, file: !116, line: 85, type: !47)
!990 = !DILocalVariable(name: "i", scope: !980, file: !116, line: 87, type: !47)
!991 = !DILocalVariable(name: "arglen", scope: !980, file: !116, line: 88, type: !47)
!992 = !DILocalVariable(name: "matchind", scope: !980, file: !116, line: 89, type: !983)
!993 = !DILocalVariable(name: "ambiguous", scope: !980, file: !116, line: 90, type: !53)
!994 = !DILocation(line: 84, column: 23, scope: !980)
!995 = !DILocation(line: 84, column: 47, scope: !980)
!996 = !DILocation(line: 85, column: 23, scope: !980)
!997 = !DILocation(line: 85, column: 39, scope: !980)
!998 = !DILocation(line: 89, column: 13, scope: !980)
!999 = !DILocation(line: 90, column: 8, scope: !980)
!1000 = !DILocation(line: 92, column: 12, scope: !980)
!1001 = !DILocation(line: 88, column: 10, scope: !980)
!1002 = !DILocation(line: 87, column: 10, scope: !980)
!1003 = !DILocation(line: 95, column: 15, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !116, line: 95, column: 3)
!1005 = distinct !DILexicalBlock(scope: !980, file: !116, line: 95, column: 3)
!1006 = !DILocation(line: 95, column: 3, scope: !1005)
!1007 = !DILocation(line: 97, column: 12, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !116, line: 97, column: 11)
!1009 = distinct !DILexicalBlock(scope: !1004, file: !116, line: 96, column: 5)
!1010 = !DILocation(line: 97, column: 11, scope: !1009)
!1011 = !DILocation(line: 99, column: 15, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !116, line: 99, column: 15)
!1013 = distinct !DILexicalBlock(scope: !1008, file: !116, line: 98, column: 9)
!1014 = !DILocation(line: 99, column: 35, scope: !1012)
!1015 = !DILocation(line: 99, column: 15, scope: !1013)
!1016 = !DILocation(line: 102, column: 29, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1012, file: !116, line: 102, column: 20)
!1018 = !DILocation(line: 102, column: 20, scope: !1012)
!1019 = !DILocation(line: 109, column: 19, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !116, line: 108, column: 19)
!1021 = distinct !DILexicalBlock(scope: !1017, file: !116, line: 106, column: 13)
!1022 = !DILocation(line: 109, column: 48, scope: !1020)
!1023 = !DILocation(line: 109, column: 38, scope: !1020)
!1024 = !DILocation(line: 110, column: 48, scope: !1020)
!1025 = !DILocation(line: 110, column: 38, scope: !1020)
!1026 = !DILocation(line: 109, column: 22, scope: !1020)
!1027 = !DILocation(line: 108, column: 19, scope: !1021)
!1028 = !DILocation(line: 115, column: 17, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1020, file: !116, line: 111, column: 17)
!1030 = !DILocation(line: 95, column: 28, scope: !1004)
!1031 = distinct !{!1031, !1006, !1032}
!1032 = !DILocation(line: 118, column: 5, scope: !1005)
!1033 = !DILocation(line: 119, column: 7, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !980, file: !116, line: 119, column: 7)
!1035 = !DILocation(line: 122, column: 5, scope: !1034)
!1036 = !DILocation(line: 123, column: 1, scope: !980)
!1037 = distinct !DISubprogram(name: "argmatch_invalid", scope: !116, file: !116, line: 131, type: !1038, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !1040)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{null, !36, !36, !983}
!1040 = !{!1041, !1042, !1043, !1044}
!1041 = !DILocalVariable(name: "context", arg: 1, scope: !1037, file: !116, line: 131, type: !36)
!1042 = !DILocalVariable(name: "value", arg: 2, scope: !1037, file: !116, line: 131, type: !36)
!1043 = !DILocalVariable(name: "problem", arg: 3, scope: !1037, file: !116, line: 131, type: !983)
!1044 = !DILocalVariable(name: "format", scope: !1037, file: !116, line: 133, type: !36)
!1045 = !DILocation(line: 131, column: 31, scope: !1037)
!1046 = !DILocation(line: 131, column: 52, scope: !1037)
!1047 = !DILocation(line: 131, column: 69, scope: !1037)
!1048 = !DILocation(line: 133, column: 33, scope: !1037)
!1049 = !DILocation(line: 133, column: 25, scope: !1037)
!1050 = !DILocation(line: 135, column: 27, scope: !1037)
!1051 = !DILocation(line: 133, column: 15, scope: !1037)
!1052 = !DILocation(line: 137, column: 24, scope: !1037)
!1053 = !DILocation(line: 138, column: 10, scope: !1037)
!1054 = !DILocation(line: 137, column: 3, scope: !1037)
!1055 = !DILocation(line: 139, column: 1, scope: !1037)
!1056 = distinct !DISubprogram(name: "argmatch_valid", scope: !116, file: !116, line: 146, type: !1057, isLocal: false, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !1059)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{null, !984, !36, !47}
!1059 = !{!1060, !1061, !1062, !1063, !1064}
!1060 = !DILocalVariable(name: "arglist", arg: 1, scope: !1056, file: !116, line: 146, type: !984)
!1061 = !DILocalVariable(name: "vallist", arg: 2, scope: !1056, file: !116, line: 147, type: !36)
!1062 = !DILocalVariable(name: "valsize", arg: 3, scope: !1056, file: !116, line: 147, type: !47)
!1063 = !DILocalVariable(name: "i", scope: !1056, file: !116, line: 149, type: !47)
!1064 = !DILocalVariable(name: "last_val", scope: !1056, file: !116, line: 150, type: !36)
!1065 = !DILocation(line: 146, column: 36, scope: !1056)
!1066 = !DILocation(line: 147, column: 29, scope: !1056)
!1067 = !DILocation(line: 147, column: 45, scope: !1056)
!1068 = !DILocation(line: 150, column: 15, scope: !1056)
!1069 = !DILocation(line: 154, column: 3, scope: !1056)
!1070 = !DILocation(line: 149, column: 10, scope: !1056)
!1071 = !DILocation(line: 155, column: 15, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !116, line: 155, column: 3)
!1073 = distinct !DILexicalBlock(scope: !1056, file: !116, line: 155, column: 3)
!1074 = !DILocation(line: 155, column: 3, scope: !1073)
!1075 = !DILocation(line: 156, column: 12, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1072, file: !116, line: 156, column: 9)
!1077 = !DILocation(line: 157, column: 9, scope: !1076)
!1078 = !DILocation(line: 157, column: 12, scope: !1076)
!1079 = !DILocation(line: 156, column: 9, scope: !1072)
!1080 = !DILocation(line: 159, column: 9, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1076, file: !116, line: 158, column: 7)
!1082 = !DILocation(line: 161, column: 7, scope: !1081)
!1083 = !DILocation(line: 164, column: 9, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1076, file: !116, line: 163, column: 7)
!1085 = !DILocation(line: 155, column: 28, scope: !1072)
!1086 = distinct !{!1086, !1074, !1087}
!1087 = !DILocation(line: 165, column: 7, scope: !1073)
!1088 = !DILocation(line: 166, column: 3, scope: !1056)
!1089 = !DILocalVariable(name: "__c", arg: 1, scope: !1090, file: !1091, line: 98, type: !46)
!1090 = distinct !DISubprogram(name: "putc_unlocked", scope: !1091, file: !1091, line: 98, type: !1092, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !1134)
!1091 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!46, !46, !1094}
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !720, line: 7, baseType: !1096)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !722, line: 241, size: 1728, elements: !1097)
!1097 = !{!1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1096, file: !722, line: 242, baseType: !46, size: 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1096, file: !722, line: 247, baseType: !39, size: 64, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1096, file: !722, line: 248, baseType: !39, size: 64, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1096, file: !722, line: 249, baseType: !39, size: 64, offset: 192)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1096, file: !722, line: 250, baseType: !39, size: 64, offset: 256)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1096, file: !722, line: 251, baseType: !39, size: 64, offset: 320)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1096, file: !722, line: 252, baseType: !39, size: 64, offset: 384)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1096, file: !722, line: 253, baseType: !39, size: 64, offset: 448)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1096, file: !722, line: 254, baseType: !39, size: 64, offset: 512)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1096, file: !722, line: 256, baseType: !39, size: 64, offset: 576)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1096, file: !722, line: 257, baseType: !39, size: 64, offset: 640)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1096, file: !722, line: 258, baseType: !39, size: 64, offset: 704)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1096, file: !722, line: 260, baseType: !1111, size: 64, offset: 768)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !722, line: 156, size: 192, elements: !1113)
!1113 = !{!1114, !1115, !1117}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1112, file: !722, line: 157, baseType: !1111, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1112, file: !722, line: 158, baseType: !1116, size: 64, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1112, file: !722, line: 162, baseType: !46, size: 32, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1096, file: !722, line: 262, baseType: !1116, size: 64, offset: 832)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1096, file: !722, line: 264, baseType: !46, size: 32, offset: 896)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1096, file: !722, line: 268, baseType: !46, size: 32, offset: 928)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1096, file: !722, line: 270, baseType: !748, size: 64, offset: 960)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1096, file: !722, line: 274, baseType: !170, size: 16, offset: 1024)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1096, file: !722, line: 275, baseType: !753, size: 8, offset: 1040)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1096, file: !722, line: 276, baseType: !755, size: 8, offset: 1048)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1096, file: !722, line: 280, baseType: !757, size: 64, offset: 1088)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1096, file: !722, line: 289, baseType: !760, size: 64, offset: 1152)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1096, file: !722, line: 297, baseType: !40, size: 64, offset: 1216)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1096, file: !722, line: 298, baseType: !40, size: 64, offset: 1280)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1096, file: !722, line: 299, baseType: !40, size: 64, offset: 1344)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1096, file: !722, line: 300, baseType: !40, size: 64, offset: 1408)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1096, file: !722, line: 302, baseType: !47, size: 64, offset: 1472)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1096, file: !722, line: 303, baseType: !46, size: 32, offset: 1536)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1096, file: !722, line: 305, baseType: !768, size: 160, offset: 1568)
!1134 = !{!1089, !1135}
!1135 = !DILocalVariable(name: "__stream", arg: 2, scope: !1090, file: !1091, line: 98, type: !1094)
!1136 = !DILocation(line: 98, column: 20, scope: !1090, inlinedAt: !1137)
!1137 = distinct !DILocation(line: 166, column: 3, scope: !1056)
!1138 = !DILocation(line: 98, column: 31, scope: !1090, inlinedAt: !1137)
!1139 = !DILocation(line: 100, column: 10, scope: !1090, inlinedAt: !1137)
!1140 = !{!1141, !673, i64 40}
!1141 = !{!"_IO_FILE", !827, i64 0, !673, i64 8, !673, i64 16, !673, i64 24, !673, i64 32, !673, i64 40, !673, i64 48, !673, i64 56, !673, i64 64, !673, i64 72, !673, i64 80, !673, i64 88, !673, i64 96, !673, i64 104, !827, i64 112, !827, i64 116, !1142, i64 120, !1143, i64 128, !674, i64 130, !674, i64 131, !673, i64 136, !1142, i64 144, !673, i64 152, !673, i64 160, !673, i64 168, !673, i64 176, !1142, i64 184, !827, i64 192, !674, i64 196}
!1142 = !{!"long", !674, i64 0}
!1143 = !{!"short", !674, i64 0}
!1144 = !{!1141, !673, i64 48}
!1145 = !{!"branch_weights", i32 2000, i32 1}
!1146 = !DILocation(line: 167, column: 1, scope: !1056)
!1147 = distinct !DISubprogram(name: "__xargmatch_internal", scope: !116, file: !116, line: 176, type: !1148, isLocal: false, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !1150)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!983, !36, !36, !984, !36, !47, !117}
!1150 = !{!1151, !1152, !1153, !1154, !1155, !1156, !1157}
!1151 = !DILocalVariable(name: "context", arg: 1, scope: !1147, file: !116, line: 176, type: !36)
!1152 = !DILocalVariable(name: "arg", arg: 2, scope: !1147, file: !116, line: 177, type: !36)
!1153 = !DILocalVariable(name: "arglist", arg: 3, scope: !1147, file: !116, line: 177, type: !984)
!1154 = !DILocalVariable(name: "vallist", arg: 4, scope: !1147, file: !116, line: 178, type: !36)
!1155 = !DILocalVariable(name: "valsize", arg: 5, scope: !1147, file: !116, line: 178, type: !47)
!1156 = !DILocalVariable(name: "exit_fn", arg: 6, scope: !1147, file: !116, line: 179, type: !117)
!1157 = !DILocalVariable(name: "res", scope: !1147, file: !116, line: 181, type: !983)
!1158 = !DILocation(line: 176, column: 35, scope: !1147)
!1159 = !DILocation(line: 177, column: 35, scope: !1147)
!1160 = !DILocation(line: 177, column: 59, scope: !1147)
!1161 = !DILocation(line: 178, column: 35, scope: !1147)
!1162 = !DILocation(line: 178, column: 51, scope: !1147)
!1163 = !DILocation(line: 179, column: 40, scope: !1147)
!1164 = !DILocation(line: 84, column: 23, scope: !980, inlinedAt: !1165)
!1165 = distinct !DILocation(line: 181, column: 19, scope: !1147)
!1166 = !DILocation(line: 84, column: 47, scope: !980, inlinedAt: !1165)
!1167 = !DILocation(line: 85, column: 23, scope: !980, inlinedAt: !1165)
!1168 = !DILocation(line: 85, column: 39, scope: !980, inlinedAt: !1165)
!1169 = !DILocation(line: 89, column: 13, scope: !980, inlinedAt: !1165)
!1170 = !DILocation(line: 90, column: 8, scope: !980, inlinedAt: !1165)
!1171 = !DILocation(line: 92, column: 12, scope: !980, inlinedAt: !1165)
!1172 = !DILocation(line: 88, column: 10, scope: !980, inlinedAt: !1165)
!1173 = !DILocation(line: 87, column: 10, scope: !980, inlinedAt: !1165)
!1174 = !DILocation(line: 95, column: 15, scope: !1004, inlinedAt: !1165)
!1175 = !DILocation(line: 95, column: 3, scope: !1005, inlinedAt: !1165)
!1176 = !DILocation(line: 97, column: 12, scope: !1008, inlinedAt: !1165)
!1177 = !DILocation(line: 97, column: 11, scope: !1009, inlinedAt: !1165)
!1178 = !DILocation(line: 99, column: 15, scope: !1012, inlinedAt: !1165)
!1179 = !DILocation(line: 99, column: 35, scope: !1012, inlinedAt: !1165)
!1180 = !DILocation(line: 99, column: 15, scope: !1013, inlinedAt: !1165)
!1181 = !DILocation(line: 102, column: 29, scope: !1017, inlinedAt: !1165)
!1182 = !DILocation(line: 102, column: 20, scope: !1012, inlinedAt: !1165)
!1183 = !DILocation(line: 109, column: 19, scope: !1020, inlinedAt: !1165)
!1184 = !DILocation(line: 109, column: 48, scope: !1020, inlinedAt: !1165)
!1185 = !DILocation(line: 109, column: 38, scope: !1020, inlinedAt: !1165)
!1186 = !DILocation(line: 110, column: 48, scope: !1020, inlinedAt: !1165)
!1187 = !DILocation(line: 110, column: 38, scope: !1020, inlinedAt: !1165)
!1188 = !DILocation(line: 109, column: 22, scope: !1020, inlinedAt: !1165)
!1189 = !DILocation(line: 108, column: 19, scope: !1021, inlinedAt: !1165)
!1190 = !DILocation(line: 115, column: 17, scope: !1029, inlinedAt: !1165)
!1191 = !DILocation(line: 95, column: 28, scope: !1004, inlinedAt: !1165)
!1192 = !DILocation(line: 119, column: 7, scope: !1034, inlinedAt: !1165)
!1193 = !DILocation(line: 181, column: 13, scope: !1147)
!1194 = !DILocation(line: 182, column: 11, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1147, file: !116, line: 182, column: 7)
!1196 = !DILocation(line: 182, column: 7, scope: !1147)
!1197 = !DILocation(line: 131, column: 31, scope: !1037, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 187, column: 3, scope: !1147)
!1199 = !DILocation(line: 131, column: 52, scope: !1037, inlinedAt: !1198)
!1200 = !DILocation(line: 131, column: 69, scope: !1037, inlinedAt: !1198)
!1201 = !DILocation(line: 133, column: 33, scope: !1037, inlinedAt: !1198)
!1202 = !DILocation(line: 133, column: 25, scope: !1037, inlinedAt: !1198)
!1203 = !DILocation(line: 135, column: 27, scope: !1037, inlinedAt: !1198)
!1204 = !DILocation(line: 133, column: 15, scope: !1037, inlinedAt: !1198)
!1205 = !DILocation(line: 137, column: 24, scope: !1037, inlinedAt: !1198)
!1206 = !DILocation(line: 138, column: 10, scope: !1037, inlinedAt: !1198)
!1207 = !DILocation(line: 137, column: 3, scope: !1037, inlinedAt: !1198)
!1208 = !DILocation(line: 188, column: 3, scope: !1147)
!1209 = !DILocation(line: 189, column: 3, scope: !1147)
!1210 = !DILocation(line: 191, column: 3, scope: !1147)
!1211 = !DILocation(line: 192, column: 1, scope: !1147)
!1212 = distinct !DISubprogram(name: "argmatch_to_argument", scope: !116, file: !116, line: 197, type: !1213, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !1215)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!36, !36, !984, !36, !47}
!1215 = !{!1216, !1217, !1218, !1219, !1220}
!1216 = !DILocalVariable(name: "value", arg: 1, scope: !1212, file: !116, line: 197, type: !36)
!1217 = !DILocalVariable(name: "arglist", arg: 2, scope: !1212, file: !116, line: 198, type: !984)
!1218 = !DILocalVariable(name: "vallist", arg: 3, scope: !1212, file: !116, line: 199, type: !36)
!1219 = !DILocalVariable(name: "valsize", arg: 4, scope: !1212, file: !116, line: 199, type: !47)
!1220 = !DILocalVariable(name: "i", scope: !1212, file: !116, line: 201, type: !47)
!1221 = !DILocation(line: 197, column: 35, scope: !1212)
!1222 = !DILocation(line: 198, column: 42, scope: !1212)
!1223 = !DILocation(line: 199, column: 35, scope: !1212)
!1224 = !DILocation(line: 199, column: 51, scope: !1212)
!1225 = !DILocation(line: 201, column: 10, scope: !1212)
!1226 = !DILocation(line: 203, column: 15, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !116, line: 203, column: 3)
!1228 = distinct !DILexicalBlock(scope: !1212, file: !116, line: 203, column: 3)
!1229 = !DILocation(line: 203, column: 3, scope: !1228)
!1230 = !DILocation(line: 204, column: 43, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1227, file: !116, line: 204, column: 9)
!1232 = distinct !{!1232, !1229, !1233}
!1233 = !DILocation(line: 205, column: 23, scope: !1228)
!1234 = !DILocation(line: 204, column: 33, scope: !1231)
!1235 = !DILocation(line: 204, column: 10, scope: !1231)
!1236 = !DILocation(line: 203, column: 28, scope: !1227)
!1237 = !DILocation(line: 204, column: 9, scope: !1227)
!1238 = !DILocation(line: 207, column: 1, scope: !1212)
!1239 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !129, file: !129, line: 41, type: !62, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !1240)
!1240 = !{!1241}
!1241 = !DILocalVariable(name: "file", arg: 1, scope: !1239, file: !129, line: 41, type: !36)
!1242 = !DILocation(line: 41, column: 41, scope: !1239)
!1243 = !DILocation(line: 43, column: 13, scope: !1239)
!1244 = !DILocation(line: 44, column: 1, scope: !1239)
!1245 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !129, file: !129, line: 78, type: !1246, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !1248)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{null, !53}
!1248 = !{!1249}
!1249 = !DILocalVariable(name: "ignore", arg: 1, scope: !1245, file: !129, line: 78, type: !53)
!1250 = !DILocation(line: 78, column: 37, scope: !1245)
!1251 = !DILocation(line: 80, column: 16, scope: !1245)
!1252 = !{!1253, !1253, i64 0}
!1253 = !{!"_Bool", !674, i64 0}
!1254 = !DILocation(line: 81, column: 1, scope: !1245)
!1255 = distinct !DISubprogram(name: "close_stdout", scope: !129, file: !129, line: 107, type: !120, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !1256)
!1256 = !{!1257}
!1257 = !DILocalVariable(name: "write_error", scope: !1258, file: !129, line: 112, type: !36)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !129, line: 111, column: 5)
!1259 = distinct !DILexicalBlock(scope: !1255, file: !129, line: 109, column: 7)
!1260 = !DILocation(line: 109, column: 21, scope: !1259)
!1261 = !DILocation(line: 109, column: 7, scope: !1259)
!1262 = !DILocation(line: 109, column: 29, scope: !1259)
!1263 = !DILocation(line: 110, column: 7, scope: !1259)
!1264 = !DILocation(line: 110, column: 12, scope: !1259)
!1265 = !{i8 0, i8 2}
!1266 = !DILocation(line: 114, column: 19, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1258, file: !129, line: 113, column: 11)
!1268 = !DILocation(line: 110, column: 25, scope: !1259)
!1269 = !DILocation(line: 110, column: 28, scope: !1259)
!1270 = !DILocation(line: 110, column: 34, scope: !1259)
!1271 = !DILocation(line: 109, column: 7, scope: !1255)
!1272 = !DILocation(line: 112, column: 33, scope: !1258)
!1273 = !DILocation(line: 112, column: 19, scope: !1258)
!1274 = !DILocation(line: 113, column: 11, scope: !1267)
!1275 = !DILocation(line: 113, column: 11, scope: !1258)
!1276 = !DILocation(line: 114, column: 36, scope: !1267)
!1277 = !DILocation(line: 114, column: 9, scope: !1267)
!1278 = !DILocation(line: 117, column: 9, scope: !1267)
!1279 = !DILocation(line: 119, column: 14, scope: !1258)
!1280 = !DILocation(line: 119, column: 7, scope: !1258)
!1281 = !DILocation(line: 122, column: 22, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1255, file: !129, line: 122, column: 8)
!1283 = !DILocation(line: 122, column: 8, scope: !1282)
!1284 = !DILocation(line: 122, column: 30, scope: !1282)
!1285 = !DILocation(line: 122, column: 8, scope: !1255)
!1286 = !DILocation(line: 123, column: 13, scope: !1282)
!1287 = !DILocation(line: 123, column: 6, scope: !1282)
!1288 = !DILocation(line: 124, column: 1, scope: !1255)
!1289 = distinct !DISubprogram(name: "fdadvise", scope: !1290, file: !1290, line: 31, type: !1291, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !607, variables: !1296)
!1290 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1291 = !DISubroutineType(types: !1292)
!1292 = !{null, !46, !1293, !1293, !1295}
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1294, line: 57, baseType: !748)
!1294 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !13, line: 52, baseType: !12)
!1296 = !{!1297, !1298, !1299, !1300, !1301}
!1297 = !DILocalVariable(name: "fd", arg: 1, scope: !1289, file: !1290, line: 31, type: !46)
!1298 = !DILocalVariable(name: "offset", arg: 2, scope: !1289, file: !1290, line: 31, type: !1293)
!1299 = !DILocalVariable(name: "len", arg: 3, scope: !1289, file: !1290, line: 31, type: !1293)
!1300 = !DILocalVariable(name: "advice", arg: 4, scope: !1289, file: !1290, line: 31, type: !1295)
!1301 = !DILocalVariable(name: "__x", scope: !1302, file: !1290, line: 34, type: !46)
!1302 = distinct !DILexicalBlock(scope: !1289, file: !1290, line: 34, column: 3)
!1303 = !DILocation(line: 31, column: 15, scope: !1289)
!1304 = !DILocation(line: 31, column: 25, scope: !1289)
!1305 = !DILocation(line: 31, column: 39, scope: !1289)
!1306 = !DILocation(line: 31, column: 54, scope: !1289)
!1307 = !DILocation(line: 34, column: 3, scope: !1302)
!1308 = !DILocation(line: 36, column: 1, scope: !1289)
!1309 = distinct !DISubprogram(name: "fadvise", scope: !1290, file: !1290, line: 39, type: !1310, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !607, variables: !1352)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{null, !1312, !1295}
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !720, line: 7, baseType: !1314)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !722, line: 241, size: 1728, elements: !1315)
!1315 = !{!1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1314, file: !722, line: 242, baseType: !46, size: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1314, file: !722, line: 247, baseType: !39, size: 64, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1314, file: !722, line: 248, baseType: !39, size: 64, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1314, file: !722, line: 249, baseType: !39, size: 64, offset: 192)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1314, file: !722, line: 250, baseType: !39, size: 64, offset: 256)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1314, file: !722, line: 251, baseType: !39, size: 64, offset: 320)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1314, file: !722, line: 252, baseType: !39, size: 64, offset: 384)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1314, file: !722, line: 253, baseType: !39, size: 64, offset: 448)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1314, file: !722, line: 254, baseType: !39, size: 64, offset: 512)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1314, file: !722, line: 256, baseType: !39, size: 64, offset: 576)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1314, file: !722, line: 257, baseType: !39, size: 64, offset: 640)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1314, file: !722, line: 258, baseType: !39, size: 64, offset: 704)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1314, file: !722, line: 260, baseType: !1329, size: 64, offset: 768)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !722, line: 156, size: 192, elements: !1331)
!1331 = !{!1332, !1333, !1335}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1330, file: !722, line: 157, baseType: !1329, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1330, file: !722, line: 158, baseType: !1334, size: 64, offset: 64)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1330, file: !722, line: 162, baseType: !46, size: 32, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1314, file: !722, line: 262, baseType: !1334, size: 64, offset: 832)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1314, file: !722, line: 264, baseType: !46, size: 32, offset: 896)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1314, file: !722, line: 268, baseType: !46, size: 32, offset: 928)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1314, file: !722, line: 270, baseType: !748, size: 64, offset: 960)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1314, file: !722, line: 274, baseType: !170, size: 16, offset: 1024)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1314, file: !722, line: 275, baseType: !753, size: 8, offset: 1040)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1314, file: !722, line: 276, baseType: !755, size: 8, offset: 1048)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1314, file: !722, line: 280, baseType: !757, size: 64, offset: 1088)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1314, file: !722, line: 289, baseType: !760, size: 64, offset: 1152)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1314, file: !722, line: 297, baseType: !40, size: 64, offset: 1216)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1314, file: !722, line: 298, baseType: !40, size: 64, offset: 1280)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1314, file: !722, line: 299, baseType: !40, size: 64, offset: 1344)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1314, file: !722, line: 300, baseType: !40, size: 64, offset: 1408)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1314, file: !722, line: 302, baseType: !47, size: 64, offset: 1472)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1314, file: !722, line: 303, baseType: !46, size: 32, offset: 1536)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1314, file: !722, line: 305, baseType: !768, size: 160, offset: 1568)
!1352 = !{!1353, !1354}
!1353 = !DILocalVariable(name: "fp", arg: 1, scope: !1309, file: !1290, line: 39, type: !1312)
!1354 = !DILocalVariable(name: "advice", arg: 2, scope: !1309, file: !1290, line: 39, type: !1295)
!1355 = !DILocation(line: 39, column: 16, scope: !1309)
!1356 = !DILocation(line: 39, column: 30, scope: !1309)
!1357 = !DILocation(line: 41, column: 7, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1309, file: !1290, line: 41, column: 7)
!1359 = !DILocation(line: 41, column: 7, scope: !1309)
!1360 = !DILocation(line: 42, column: 15, scope: !1358)
!1361 = !DILocation(line: 31, column: 15, scope: !1289, inlinedAt: !1362)
!1362 = distinct !DILocation(line: 42, column: 5, scope: !1358)
!1363 = !DILocation(line: 31, column: 25, scope: !1289, inlinedAt: !1362)
!1364 = !DILocation(line: 31, column: 39, scope: !1289, inlinedAt: !1362)
!1365 = !DILocation(line: 31, column: 54, scope: !1289, inlinedAt: !1362)
!1366 = !DILocation(line: 34, column: 3, scope: !1302, inlinedAt: !1362)
!1367 = !DILocation(line: 42, column: 5, scope: !1358)
!1368 = !DILocation(line: 43, column: 1, scope: !1309)
!1369 = distinct !DISubprogram(name: "fopen_safer", scope: !1370, file: !1370, line: 31, type: !1371, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !610, variables: !1413)
!1370 = !DIFile(filename: "lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!1373, !36, !36}
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !720, line: 7, baseType: !1375)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !722, line: 241, size: 1728, elements: !1376)
!1376 = !{!1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1375, file: !722, line: 242, baseType: !46, size: 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1375, file: !722, line: 247, baseType: !39, size: 64, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1375, file: !722, line: 248, baseType: !39, size: 64, offset: 128)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1375, file: !722, line: 249, baseType: !39, size: 64, offset: 192)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1375, file: !722, line: 250, baseType: !39, size: 64, offset: 256)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1375, file: !722, line: 251, baseType: !39, size: 64, offset: 320)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1375, file: !722, line: 252, baseType: !39, size: 64, offset: 384)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1375, file: !722, line: 253, baseType: !39, size: 64, offset: 448)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1375, file: !722, line: 254, baseType: !39, size: 64, offset: 512)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1375, file: !722, line: 256, baseType: !39, size: 64, offset: 576)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1375, file: !722, line: 257, baseType: !39, size: 64, offset: 640)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1375, file: !722, line: 258, baseType: !39, size: 64, offset: 704)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1375, file: !722, line: 260, baseType: !1390, size: 64, offset: 768)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !722, line: 156, size: 192, elements: !1392)
!1392 = !{!1393, !1394, !1396}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1391, file: !722, line: 157, baseType: !1390, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1391, file: !722, line: 158, baseType: !1395, size: 64, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1391, file: !722, line: 162, baseType: !46, size: 32, offset: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1375, file: !722, line: 262, baseType: !1395, size: 64, offset: 832)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1375, file: !722, line: 264, baseType: !46, size: 32, offset: 896)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1375, file: !722, line: 268, baseType: !46, size: 32, offset: 928)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1375, file: !722, line: 270, baseType: !748, size: 64, offset: 960)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1375, file: !722, line: 274, baseType: !170, size: 16, offset: 1024)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1375, file: !722, line: 275, baseType: !753, size: 8, offset: 1040)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1375, file: !722, line: 276, baseType: !755, size: 8, offset: 1048)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1375, file: !722, line: 280, baseType: !757, size: 64, offset: 1088)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1375, file: !722, line: 289, baseType: !760, size: 64, offset: 1152)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1375, file: !722, line: 297, baseType: !40, size: 64, offset: 1216)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1375, file: !722, line: 298, baseType: !40, size: 64, offset: 1280)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1375, file: !722, line: 299, baseType: !40, size: 64, offset: 1344)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1375, file: !722, line: 300, baseType: !40, size: 64, offset: 1408)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1375, file: !722, line: 302, baseType: !47, size: 64, offset: 1472)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1375, file: !722, line: 303, baseType: !46, size: 32, offset: 1536)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1375, file: !722, line: 305, baseType: !768, size: 160, offset: 1568)
!1413 = !{!1414, !1415, !1416, !1417, !1420, !1423, !1426}
!1414 = !DILocalVariable(name: "file", arg: 1, scope: !1369, file: !1370, line: 31, type: !36)
!1415 = !DILocalVariable(name: "mode", arg: 2, scope: !1369, file: !1370, line: 31, type: !36)
!1416 = !DILocalVariable(name: "fp", scope: !1369, file: !1370, line: 33, type: !1373)
!1417 = !DILocalVariable(name: "fd", scope: !1418, file: !1370, line: 37, type: !46)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !1370, line: 36, column: 5)
!1419 = distinct !DILexicalBlock(scope: !1369, file: !1370, line: 35, column: 7)
!1420 = !DILocalVariable(name: "f", scope: !1421, file: !1370, line: 41, type: !46)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !1370, line: 40, column: 9)
!1422 = distinct !DILexicalBlock(scope: !1418, file: !1370, line: 39, column: 11)
!1423 = !DILocalVariable(name: "e", scope: !1424, file: !1370, line: 45, type: !46)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !1370, line: 44, column: 13)
!1425 = distinct !DILexicalBlock(scope: !1421, file: !1370, line: 43, column: 15)
!1426 = !DILocalVariable(name: "e", scope: !1427, file: !1370, line: 54, type: !46)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !1370, line: 53, column: 13)
!1428 = distinct !DILexicalBlock(scope: !1421, file: !1370, line: 51, column: 15)
!1429 = !DILocation(line: 31, column: 26, scope: !1369)
!1430 = !DILocation(line: 31, column: 44, scope: !1369)
!1431 = !DILocation(line: 33, column: 14, scope: !1369)
!1432 = !DILocation(line: 33, column: 9, scope: !1369)
!1433 = !DILocation(line: 35, column: 7, scope: !1419)
!1434 = !DILocation(line: 35, column: 7, scope: !1369)
!1435 = !DILocation(line: 37, column: 16, scope: !1418)
!1436 = !DILocation(line: 37, column: 11, scope: !1418)
!1437 = !DILocation(line: 39, column: 19, scope: !1422)
!1438 = !DILocation(line: 41, column: 19, scope: !1421)
!1439 = !DILocation(line: 41, column: 15, scope: !1421)
!1440 = !DILocation(line: 43, column: 17, scope: !1425)
!1441 = !DILocation(line: 43, column: 15, scope: !1421)
!1442 = !DILocation(line: 45, column: 23, scope: !1424)
!1443 = !DILocation(line: 45, column: 19, scope: !1424)
!1444 = !DILocation(line: 46, column: 15, scope: !1424)
!1445 = !DILocation(line: 47, column: 21, scope: !1424)
!1446 = !DILocation(line: 51, column: 15, scope: !1428)
!1447 = !DILocation(line: 51, column: 27, scope: !1428)
!1448 = !DILocation(line: 52, column: 15, scope: !1428)
!1449 = !DILocation(line: 52, column: 26, scope: !1428)
!1450 = !DILocation(line: 52, column: 24, scope: !1428)
!1451 = !DILocation(line: 51, column: 15, scope: !1421)
!1452 = !DILocation(line: 54, column: 23, scope: !1427)
!1453 = !DILocation(line: 54, column: 19, scope: !1427)
!1454 = !DILocation(line: 55, column: 15, scope: !1427)
!1455 = !DILocation(line: 56, column: 21, scope: !1427)
!1456 = !DILocation(line: 63, column: 1, scope: !1369)
!1457 = distinct !DISubprogram(name: "set_program_name", scope: !143, file: !143, line: 39, type: !62, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !139, variables: !1458)
!1458 = !{!1459, !1460, !1461}
!1459 = !DILocalVariable(name: "argv0", arg: 1, scope: !1457, file: !143, line: 39, type: !36)
!1460 = !DILocalVariable(name: "slash", scope: !1457, file: !143, line: 46, type: !36)
!1461 = !DILocalVariable(name: "base", scope: !1457, file: !143, line: 47, type: !36)
!1462 = !DILocation(line: 39, column: 31, scope: !1457)
!1463 = !DILocation(line: 51, column: 13, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1457, file: !143, line: 51, column: 7)
!1465 = !DILocation(line: 51, column: 7, scope: !1457)
!1466 = !DILocation(line: 55, column: 14, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1464, file: !143, line: 52, column: 5)
!1468 = !DILocation(line: 54, column: 7, scope: !1467)
!1469 = !DILocation(line: 56, column: 7, scope: !1467)
!1470 = !DILocation(line: 59, column: 11, scope: !1457)
!1471 = !DILocation(line: 46, column: 15, scope: !1457)
!1472 = !DILocation(line: 60, column: 17, scope: !1457)
!1473 = !DILocation(line: 60, column: 33, scope: !1457)
!1474 = !DILocation(line: 60, column: 11, scope: !1457)
!1475 = !DILocation(line: 47, column: 15, scope: !1457)
!1476 = !DILocation(line: 61, column: 12, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1457, file: !143, line: 61, column: 7)
!1478 = !DILocation(line: 61, column: 20, scope: !1477)
!1479 = !DILocation(line: 61, column: 25, scope: !1477)
!1480 = !DILocation(line: 61, column: 42, scope: !1477)
!1481 = !DILocation(line: 61, column: 28, scope: !1477)
!1482 = !DILocation(line: 61, column: 61, scope: !1477)
!1483 = !DILocation(line: 61, column: 7, scope: !1457)
!1484 = !DILocation(line: 64, column: 11, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !143, line: 64, column: 11)
!1486 = distinct !DILexicalBlock(scope: !1477, file: !143, line: 62, column: 5)
!1487 = !DILocation(line: 64, column: 36, scope: !1485)
!1488 = !DILocation(line: 64, column: 11, scope: !1486)
!1489 = !DILocation(line: 66, column: 24, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1485, file: !143, line: 65, column: 9)
!1491 = !DILocation(line: 70, column: 41, scope: !1490)
!1492 = !DILocation(line: 72, column: 9, scope: !1490)
!1493 = !DILocation(line: 84, column: 16, scope: !1457)
!1494 = !DILocation(line: 90, column: 27, scope: !1457)
!1495 = !DILocation(line: 92, column: 1, scope: !1457)
!1496 = distinct !DISubprogram(name: "clone_quoting_options", scope: !174, file: !174, line: 114, type: !1497, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !1500)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!1499, !1499}
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!1500 = !{!1501, !1502, !1503}
!1501 = !DILocalVariable(name: "o", arg: 1, scope: !1496, file: !174, line: 114, type: !1499)
!1502 = !DILocalVariable(name: "e", scope: !1496, file: !174, line: 116, type: !46)
!1503 = !DILocalVariable(name: "p", scope: !1496, file: !174, line: 117, type: !1499)
!1504 = !DILocation(line: 114, column: 48, scope: !1496)
!1505 = !DILocation(line: 116, column: 11, scope: !1496)
!1506 = !DILocation(line: 116, column: 7, scope: !1496)
!1507 = !DILocation(line: 117, column: 40, scope: !1496)
!1508 = !DILocation(line: 117, column: 31, scope: !1496)
!1509 = !DILocation(line: 117, column: 27, scope: !1496)
!1510 = !DILocation(line: 119, column: 9, scope: !1496)
!1511 = !DILocation(line: 120, column: 3, scope: !1496)
!1512 = distinct !DISubprogram(name: "get_quoting_style", scope: !174, file: !174, line: 125, type: !1513, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !1517)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!21, !1515}
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!1517 = !{!1518}
!1518 = !DILocalVariable(name: "o", arg: 1, scope: !1512, file: !174, line: 125, type: !1515)
!1519 = !DILocation(line: 125, column: 50, scope: !1512)
!1520 = !DILocation(line: 127, column: 11, scope: !1512)
!1521 = !DILocation(line: 127, column: 46, scope: !1512)
!1522 = !{!1523, !674, i64 0}
!1523 = !{!"quoting_options", !674, i64 0, !827, i64 4, !674, i64 8, !673, i64 40, !673, i64 48}
!1524 = !DILocation(line: 127, column: 3, scope: !1512)
!1525 = distinct !DISubprogram(name: "set_quoting_style", scope: !174, file: !174, line: 133, type: !1526, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !1528)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{null, !1499, !21}
!1528 = !{!1529, !1530}
!1529 = !DILocalVariable(name: "o", arg: 1, scope: !1525, file: !174, line: 133, type: !1499)
!1530 = !DILocalVariable(name: "s", arg: 2, scope: !1525, file: !174, line: 133, type: !21)
!1531 = !DILocation(line: 133, column: 44, scope: !1525)
!1532 = !DILocation(line: 133, column: 66, scope: !1525)
!1533 = !DILocation(line: 135, column: 4, scope: !1525)
!1534 = !DILocation(line: 135, column: 39, scope: !1525)
!1535 = !DILocation(line: 135, column: 45, scope: !1525)
!1536 = !DILocation(line: 136, column: 1, scope: !1525)
!1537 = distinct !DISubprogram(name: "set_char_quoting", scope: !174, file: !174, line: 144, type: !1538, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !1540)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!46, !1499, !38, !46}
!1540 = !{!1541, !1542, !1543, !1544, !1545, !1547, !1548}
!1541 = !DILocalVariable(name: "o", arg: 1, scope: !1537, file: !174, line: 144, type: !1499)
!1542 = !DILocalVariable(name: "c", arg: 2, scope: !1537, file: !174, line: 144, type: !38)
!1543 = !DILocalVariable(name: "i", arg: 3, scope: !1537, file: !174, line: 144, type: !46)
!1544 = !DILocalVariable(name: "uc", scope: !1537, file: !174, line: 146, type: !114)
!1545 = !DILocalVariable(name: "p", scope: !1537, file: !174, line: 147, type: !1546)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!1547 = !DILocalVariable(name: "shift", scope: !1537, file: !174, line: 149, type: !46)
!1548 = !DILocalVariable(name: "r", scope: !1537, file: !174, line: 150, type: !46)
!1549 = !DILocation(line: 144, column: 43, scope: !1537)
!1550 = !DILocation(line: 144, column: 51, scope: !1537)
!1551 = !DILocation(line: 144, column: 58, scope: !1537)
!1552 = !DILocation(line: 146, column: 17, scope: !1537)
!1553 = !DILocation(line: 148, column: 6, scope: !1537)
!1554 = !DILocation(line: 148, column: 62, scope: !1537)
!1555 = !DILocation(line: 148, column: 57, scope: !1537)
!1556 = !DILocation(line: 147, column: 17, scope: !1537)
!1557 = !DILocation(line: 149, column: 18, scope: !1537)
!1558 = !DILocation(line: 149, column: 15, scope: !1537)
!1559 = !DILocation(line: 149, column: 7, scope: !1537)
!1560 = !DILocation(line: 150, column: 12, scope: !1537)
!1561 = !DILocation(line: 150, column: 15, scope: !1537)
!1562 = !DILocation(line: 150, column: 25, scope: !1537)
!1563 = !DILocation(line: 150, column: 7, scope: !1537)
!1564 = !DILocation(line: 151, column: 13, scope: !1537)
!1565 = !DILocation(line: 151, column: 18, scope: !1537)
!1566 = !DILocation(line: 151, column: 23, scope: !1537)
!1567 = !DILocation(line: 151, column: 6, scope: !1537)
!1568 = !DILocation(line: 152, column: 3, scope: !1537)
!1569 = distinct !DISubprogram(name: "set_quoting_flags", scope: !174, file: !174, line: 160, type: !1570, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !1572)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!46, !1499, !46}
!1572 = !{!1573, !1574, !1575}
!1573 = !DILocalVariable(name: "o", arg: 1, scope: !1569, file: !174, line: 160, type: !1499)
!1574 = !DILocalVariable(name: "i", arg: 2, scope: !1569, file: !174, line: 160, type: !46)
!1575 = !DILocalVariable(name: "r", scope: !1569, file: !174, line: 162, type: !46)
!1576 = !DILocation(line: 160, column: 44, scope: !1569)
!1577 = !DILocation(line: 160, column: 51, scope: !1569)
!1578 = !DILocation(line: 163, column: 8, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1569, file: !174, line: 163, column: 7)
!1580 = !DILocation(line: 163, column: 7, scope: !1569)
!1581 = !DILocation(line: 165, column: 10, scope: !1569)
!1582 = !{!1523, !827, i64 4}
!1583 = !DILocation(line: 162, column: 7, scope: !1569)
!1584 = !DILocation(line: 166, column: 12, scope: !1569)
!1585 = !DILocation(line: 167, column: 3, scope: !1569)
!1586 = distinct !DISubprogram(name: "set_custom_quoting", scope: !174, file: !174, line: 171, type: !1587, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !1589)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{null, !1499, !36, !36}
!1589 = !{!1590, !1591, !1592}
!1590 = !DILocalVariable(name: "o", arg: 1, scope: !1586, file: !174, line: 171, type: !1499)
!1591 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1586, file: !174, line: 172, type: !36)
!1592 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1586, file: !174, line: 172, type: !36)
!1593 = !DILocation(line: 171, column: 45, scope: !1586)
!1594 = !DILocation(line: 172, column: 33, scope: !1586)
!1595 = !DILocation(line: 172, column: 57, scope: !1586)
!1596 = !DILocation(line: 174, column: 8, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1586, file: !174, line: 174, column: 7)
!1598 = !DILocation(line: 174, column: 7, scope: !1586)
!1599 = !DILocation(line: 176, column: 6, scope: !1586)
!1600 = !DILocation(line: 176, column: 12, scope: !1586)
!1601 = !DILocation(line: 177, column: 8, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1586, file: !174, line: 177, column: 7)
!1603 = !DILocation(line: 177, column: 23, scope: !1602)
!1604 = !DILocation(line: 177, column: 19, scope: !1602)
!1605 = !DILocation(line: 178, column: 5, scope: !1602)
!1606 = !DILocation(line: 179, column: 6, scope: !1586)
!1607 = !DILocation(line: 179, column: 17, scope: !1586)
!1608 = !{!1523, !673, i64 40}
!1609 = !DILocation(line: 180, column: 6, scope: !1586)
!1610 = !DILocation(line: 180, column: 18, scope: !1586)
!1611 = !{!1523, !673, i64 48}
!1612 = !DILocation(line: 181, column: 1, scope: !1586)
!1613 = distinct !DISubprogram(name: "quotearg_buffer", scope: !174, file: !174, line: 776, type: !1614, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !1616)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!47, !39, !47, !36, !47, !1515}
!1616 = !{!1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624}
!1617 = !DILocalVariable(name: "buffer", arg: 1, scope: !1613, file: !174, line: 776, type: !39)
!1618 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1613, file: !174, line: 776, type: !47)
!1619 = !DILocalVariable(name: "arg", arg: 3, scope: !1613, file: !174, line: 777, type: !36)
!1620 = !DILocalVariable(name: "argsize", arg: 4, scope: !1613, file: !174, line: 777, type: !47)
!1621 = !DILocalVariable(name: "o", arg: 5, scope: !1613, file: !174, line: 778, type: !1515)
!1622 = !DILocalVariable(name: "p", scope: !1613, file: !174, line: 780, type: !1515)
!1623 = !DILocalVariable(name: "e", scope: !1613, file: !174, line: 781, type: !46)
!1624 = !DILocalVariable(name: "r", scope: !1613, file: !174, line: 782, type: !47)
!1625 = !DILocation(line: 776, column: 24, scope: !1613)
!1626 = !DILocation(line: 776, column: 39, scope: !1613)
!1627 = !DILocation(line: 777, column: 30, scope: !1613)
!1628 = !DILocation(line: 777, column: 42, scope: !1613)
!1629 = !DILocation(line: 778, column: 48, scope: !1613)
!1630 = !DILocation(line: 780, column: 37, scope: !1613)
!1631 = !DILocation(line: 780, column: 33, scope: !1613)
!1632 = !DILocation(line: 781, column: 11, scope: !1613)
!1633 = !DILocation(line: 781, column: 7, scope: !1613)
!1634 = !DILocation(line: 783, column: 43, scope: !1613)
!1635 = !DILocation(line: 783, column: 53, scope: !1613)
!1636 = !DILocation(line: 783, column: 60, scope: !1613)
!1637 = !DILocation(line: 784, column: 43, scope: !1613)
!1638 = !DILocation(line: 784, column: 58, scope: !1613)
!1639 = !DILocation(line: 782, column: 14, scope: !1613)
!1640 = !DILocation(line: 782, column: 10, scope: !1613)
!1641 = !DILocation(line: 785, column: 9, scope: !1613)
!1642 = !DILocation(line: 786, column: 3, scope: !1613)
!1643 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !174, file: !174, line: 248, type: !1644, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !1648)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!47, !39, !47, !36, !47, !21, !46, !1646, !36, !36}
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!1648 = !{!1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1673, !1674, !1675, !1676, !1677, !1680, !1681, !1697, !1700, !1701, !1708}
!1649 = !DILocalVariable(name: "buffer", arg: 1, scope: !1643, file: !174, line: 248, type: !39)
!1650 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1643, file: !174, line: 248, type: !47)
!1651 = !DILocalVariable(name: "arg", arg: 3, scope: !1643, file: !174, line: 249, type: !36)
!1652 = !DILocalVariable(name: "argsize", arg: 4, scope: !1643, file: !174, line: 249, type: !47)
!1653 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1643, file: !174, line: 250, type: !21)
!1654 = !DILocalVariable(name: "flags", arg: 6, scope: !1643, file: !174, line: 250, type: !46)
!1655 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1643, file: !174, line: 251, type: !1646)
!1656 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1643, file: !174, line: 252, type: !36)
!1657 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1643, file: !174, line: 253, type: !36)
!1658 = !DILocalVariable(name: "i", scope: !1643, file: !174, line: 255, type: !47)
!1659 = !DILocalVariable(name: "len", scope: !1643, file: !174, line: 256, type: !47)
!1660 = !DILocalVariable(name: "orig_buffersize", scope: !1643, file: !174, line: 257, type: !47)
!1661 = !DILocalVariable(name: "quote_string", scope: !1643, file: !174, line: 258, type: !36)
!1662 = !DILocalVariable(name: "quote_string_len", scope: !1643, file: !174, line: 259, type: !47)
!1663 = !DILocalVariable(name: "backslash_escapes", scope: !1643, file: !174, line: 260, type: !53)
!1664 = !DILocalVariable(name: "unibyte_locale", scope: !1643, file: !174, line: 261, type: !53)
!1665 = !DILocalVariable(name: "elide_outer_quotes", scope: !1643, file: !174, line: 262, type: !53)
!1666 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1643, file: !174, line: 263, type: !53)
!1667 = !DILocalVariable(name: "encountered_single_quote", scope: !1643, file: !174, line: 264, type: !53)
!1668 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1643, file: !174, line: 265, type: !53)
!1669 = !DILocalVariable(name: "c", scope: !1670, file: !174, line: 394, type: !114)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !174, line: 393, column: 5)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !174, line: 392, column: 3)
!1672 = distinct !DILexicalBlock(scope: !1643, file: !174, line: 392, column: 3)
!1673 = !DILocalVariable(name: "esc", scope: !1670, file: !174, line: 395, type: !114)
!1674 = !DILocalVariable(name: "is_right_quote", scope: !1670, file: !174, line: 396, type: !53)
!1675 = !DILocalVariable(name: "escaping", scope: !1670, file: !174, line: 397, type: !53)
!1676 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1670, file: !174, line: 398, type: !53)
!1677 = !DILocalVariable(name: "m", scope: !1678, file: !174, line: 602, type: !47)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !174, line: 600, column: 11)
!1679 = distinct !DILexicalBlock(scope: !1670, file: !174, line: 418, column: 9)
!1680 = !DILocalVariable(name: "printable", scope: !1678, file: !174, line: 604, type: !53)
!1681 = !DILocalVariable(name: "mbstate", scope: !1682, file: !174, line: 613, type: !1684)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !174, line: 612, column: 15)
!1683 = distinct !DILexicalBlock(scope: !1678, file: !174, line: 606, column: 17)
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1685, line: 6, baseType: !1686)
!1685 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1686 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1687, line: 21, baseType: !1688)
!1687 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1687, line: 13, size: 64, elements: !1689)
!1689 = !{!1690, !1691}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1688, file: !1687, line: 15, baseType: !46, size: 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1688, file: !1687, line: 20, baseType: !1692, size: 32, offset: 32)
!1692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1688, file: !1687, line: 16, size: 32, elements: !1693)
!1693 = !{!1694, !1695}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1692, file: !1687, line: 18, baseType: !187, size: 32)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1692, file: !1687, line: 19, baseType: !1696, size: 32)
!1696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 32, elements: !82)
!1697 = !DILocalVariable(name: "w", scope: !1698, file: !174, line: 623, type: !1699)
!1698 = distinct !DILexicalBlock(scope: !1682, file: !174, line: 622, column: 19)
!1699 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !48, line: 90, baseType: !46)
!1700 = !DILocalVariable(name: "bytes", scope: !1698, file: !174, line: 624, type: !47)
!1701 = !DILocalVariable(name: "j", scope: !1702, file: !174, line: 649, type: !47)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !174, line: 648, column: 27)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !174, line: 646, column: 29)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !174, line: 641, column: 23)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !174, line: 633, column: 30)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !174, line: 628, column: 30)
!1707 = distinct !DILexicalBlock(scope: !1698, file: !174, line: 626, column: 25)
!1708 = !DILocalVariable(name: "ilim", scope: !1709, file: !174, line: 676, type: !47)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !174, line: 673, column: 15)
!1710 = distinct !DILexicalBlock(scope: !1678, file: !174, line: 672, column: 17)
!1711 = !DILocation(line: 248, column: 33, scope: !1643)
!1712 = !DILocation(line: 248, column: 48, scope: !1643)
!1713 = !DILocation(line: 249, column: 39, scope: !1643)
!1714 = !DILocation(line: 249, column: 51, scope: !1643)
!1715 = !DILocation(line: 250, column: 46, scope: !1643)
!1716 = !DILocation(line: 250, column: 65, scope: !1643)
!1717 = !DILocation(line: 251, column: 47, scope: !1643)
!1718 = !DILocation(line: 252, column: 39, scope: !1643)
!1719 = !DILocation(line: 253, column: 39, scope: !1643)
!1720 = !DILocation(line: 256, column: 10, scope: !1643)
!1721 = !DILocation(line: 257, column: 10, scope: !1643)
!1722 = !DILocation(line: 258, column: 15, scope: !1643)
!1723 = !DILocation(line: 259, column: 10, scope: !1643)
!1724 = !DILocation(line: 260, column: 8, scope: !1643)
!1725 = !DILocation(line: 261, column: 25, scope: !1643)
!1726 = !DILocation(line: 261, column: 36, scope: !1643)
!1727 = !DILocation(line: 262, column: 8, scope: !1643)
!1728 = !DILocation(line: 263, column: 8, scope: !1643)
!1729 = !DILocation(line: 264, column: 8, scope: !1643)
!1730 = !DILocation(line: 265, column: 8, scope: !1643)
!1731 = !DILocation(line: 265, column: 3, scope: !1643)
!1732 = !DILocation(line: 308, column: 3, scope: !1643)
!1733 = !DILocation(line: 315, column: 11, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1643, file: !174, line: 309, column: 5)
!1735 = !DILocation(line: 315, column: 12, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1734, file: !174, line: 315, column: 11)
!1737 = !DILocation(line: 316, column: 9, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !174, line: 316, column: 9)
!1739 = distinct !DILexicalBlock(scope: !1736, file: !174, line: 316, column: 9)
!1740 = !DILocation(line: 316, column: 9, scope: !1739)
!1741 = !DILocation(line: 354, column: 26, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !174, line: 332, column: 11)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !174, line: 331, column: 13)
!1744 = distinct !DILexicalBlock(scope: !1734, file: !174, line: 330, column: 7)
!1745 = !DILocation(line: 355, column: 27, scope: !1742)
!1746 = !DILocation(line: 356, column: 11, scope: !1742)
!1747 = !DILocation(line: 357, column: 14, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1744, file: !174, line: 357, column: 13)
!1749 = !DILocation(line: 357, column: 13, scope: !1744)
!1750 = !DILocation(line: 358, column: 43, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !174, line: 358, column: 11)
!1752 = distinct !DILexicalBlock(scope: !1748, file: !174, line: 358, column: 11)
!1753 = !DILocation(line: 358, column: 11, scope: !1752)
!1754 = !DILocation(line: 359, column: 13, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !174, line: 359, column: 13)
!1756 = distinct !DILexicalBlock(scope: !1751, file: !174, line: 359, column: 13)
!1757 = !DILocation(line: 359, column: 13, scope: !1756)
!1758 = !DILocation(line: 358, column: 70, scope: !1751)
!1759 = distinct !{!1759, !1753, !1760}
!1760 = !DILocation(line: 359, column: 13, scope: !1752)
!1761 = !DILocation(line: 362, column: 28, scope: !1744)
!1762 = !DILocation(line: 364, column: 7, scope: !1734)
!1763 = !DILocation(line: 367, column: 7, scope: !1734)
!1764 = !DILocation(line: 370, column: 7, scope: !1734)
!1765 = !DILocation(line: 373, column: 12, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1734, file: !174, line: 373, column: 11)
!1767 = !DILocation(line: 373, column: 11, scope: !1734)
!1768 = !DILocation(line: 378, column: 12, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1734, file: !174, line: 378, column: 11)
!1770 = !DILocation(line: 378, column: 11, scope: !1734)
!1771 = !DILocation(line: 379, column: 9, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !174, line: 379, column: 9)
!1773 = distinct !DILexicalBlock(scope: !1769, file: !174, line: 379, column: 9)
!1774 = !DILocation(line: 379, column: 9, scope: !1773)
!1775 = !DILocation(line: 386, column: 7, scope: !1734)
!1776 = !DILocation(line: 389, column: 7, scope: !1734)
!1777 = !DILocation(line: 255, column: 10, scope: !1643)
!1778 = !DILocation(line: 392, column: 8, scope: !1672)
!1779 = !DILocation(line: 392, column: 27, scope: !1671)
!1780 = !DILocation(line: 392, column: 19, scope: !1671)
!1781 = !DILocation(line: 392, column: 60, scope: !1671)
!1782 = !DILocation(line: 392, column: 3, scope: !1672)
!1783 = !DILocation(line: 392, column: 41, scope: !1671)
!1784 = !DILocation(line: 392, column: 48, scope: !1671)
!1785 = !DILocation(line: 396, column: 12, scope: !1670)
!1786 = !DILocation(line: 397, column: 12, scope: !1670)
!1787 = !DILocation(line: 398, column: 12, scope: !1670)
!1788 = !DILocation(line: 401, column: 11, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1670, file: !174, line: 400, column: 11)
!1790 = !DILocation(line: 403, column: 17, scope: !1789)
!1791 = !DILocation(line: 404, column: 39, scope: !1789)
!1792 = !DILocation(line: 408, column: 32, scope: !1789)
!1793 = !DILocation(line: 404, column: 19, scope: !1789)
!1794 = !DILocation(line: 404, column: 15, scope: !1789)
!1795 = !DILocation(line: 409, column: 11, scope: !1789)
!1796 = !DILocation(line: 409, column: 26, scope: !1789)
!1797 = !DILocation(line: 409, column: 14, scope: !1789)
!1798 = !DILocation(line: 409, column: 63, scope: !1789)
!1799 = !DILocation(line: 400, column: 11, scope: !1670)
!1800 = !DILocation(line: 416, column: 11, scope: !1670)
!1801 = !DILocation(line: 394, column: 21, scope: !1670)
!1802 = !DILocation(line: 417, column: 7, scope: !1670)
!1803 = !DILocation(line: 420, column: 15, scope: !1679)
!1804 = !DILocation(line: 422, column: 15, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !174, line: 422, column: 15)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !174, line: 421, column: 13)
!1807 = distinct !DILexicalBlock(scope: !1679, file: !174, line: 420, column: 15)
!1808 = !DILocation(line: 422, column: 15, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1805, file: !174, line: 422, column: 15)
!1810 = !DILocation(line: 422, column: 15, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !174, line: 422, column: 15)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !174, line: 422, column: 15)
!1813 = distinct !DILexicalBlock(scope: !1809, file: !174, line: 422, column: 15)
!1814 = !DILocation(line: 422, column: 15, scope: !1812)
!1815 = !DILocation(line: 422, column: 15, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !174, line: 422, column: 15)
!1817 = distinct !DILexicalBlock(scope: !1813, file: !174, line: 422, column: 15)
!1818 = !DILocation(line: 422, column: 15, scope: !1817)
!1819 = !DILocation(line: 422, column: 15, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !174, line: 422, column: 15)
!1821 = distinct !DILexicalBlock(scope: !1813, file: !174, line: 422, column: 15)
!1822 = !DILocation(line: 422, column: 15, scope: !1821)
!1823 = !DILocation(line: 422, column: 15, scope: !1813)
!1824 = !DILocation(line: 422, column: 15, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !174, line: 422, column: 15)
!1826 = distinct !DILexicalBlock(scope: !1805, file: !174, line: 422, column: 15)
!1827 = !DILocation(line: 422, column: 15, scope: !1826)
!1828 = !DILocation(line: 430, column: 19, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1806, file: !174, line: 429, column: 19)
!1830 = !DILocation(line: 430, column: 24, scope: !1829)
!1831 = !DILocation(line: 430, column: 28, scope: !1829)
!1832 = !DILocation(line: 430, column: 38, scope: !1829)
!1833 = !DILocation(line: 430, column: 48, scope: !1829)
!1834 = !DILocation(line: 430, column: 59, scope: !1829)
!1835 = !DILocation(line: 432, column: 19, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !174, line: 432, column: 19)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !174, line: 432, column: 19)
!1838 = distinct !DILexicalBlock(scope: !1829, file: !174, line: 431, column: 17)
!1839 = !DILocation(line: 432, column: 19, scope: !1837)
!1840 = !DILocation(line: 433, column: 19, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !174, line: 433, column: 19)
!1842 = distinct !DILexicalBlock(scope: !1838, file: !174, line: 433, column: 19)
!1843 = !DILocation(line: 433, column: 19, scope: !1842)
!1844 = !DILocation(line: 434, column: 17, scope: !1838)
!1845 = !DILocation(line: 441, column: 20, scope: !1807)
!1846 = !DILocation(line: 446, column: 11, scope: !1679)
!1847 = !DILocation(line: 449, column: 19, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1679, file: !174, line: 447, column: 13)
!1849 = !DILocation(line: 455, column: 19, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1848, file: !174, line: 454, column: 19)
!1851 = !DILocation(line: 455, column: 24, scope: !1850)
!1852 = !DILocation(line: 455, column: 28, scope: !1850)
!1853 = !DILocation(line: 455, column: 38, scope: !1850)
!1854 = !DILocation(line: 455, column: 47, scope: !1850)
!1855 = !DILocation(line: 455, column: 41, scope: !1850)
!1856 = !DILocation(line: 455, column: 52, scope: !1850)
!1857 = !DILocation(line: 454, column: 19, scope: !1848)
!1858 = !DILocation(line: 456, column: 25, scope: !1850)
!1859 = !DILocation(line: 456, column: 17, scope: !1850)
!1860 = !DILocation(line: 463, column: 25, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1850, file: !174, line: 457, column: 19)
!1862 = !DILocation(line: 467, column: 21, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !174, line: 467, column: 21)
!1864 = distinct !DILexicalBlock(scope: !1861, file: !174, line: 467, column: 21)
!1865 = !DILocation(line: 467, column: 21, scope: !1864)
!1866 = !DILocation(line: 468, column: 21, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !174, line: 468, column: 21)
!1868 = distinct !DILexicalBlock(scope: !1861, file: !174, line: 468, column: 21)
!1869 = !DILocation(line: 468, column: 21, scope: !1868)
!1870 = !DILocation(line: 469, column: 21, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !174, line: 469, column: 21)
!1872 = distinct !DILexicalBlock(scope: !1861, file: !174, line: 469, column: 21)
!1873 = !DILocation(line: 469, column: 21, scope: !1872)
!1874 = !DILocation(line: 470, column: 21, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !174, line: 470, column: 21)
!1876 = distinct !DILexicalBlock(scope: !1861, file: !174, line: 470, column: 21)
!1877 = !DILocation(line: 470, column: 21, scope: !1876)
!1878 = !DILocation(line: 471, column: 21, scope: !1861)
!1879 = !DILocation(line: 395, column: 21, scope: !1670)
!1880 = !DILocation(line: 484, column: 31, scope: !1679)
!1881 = !DILocation(line: 485, column: 31, scope: !1679)
!1882 = !DILocation(line: 487, column: 31, scope: !1679)
!1883 = !DILocation(line: 488, column: 31, scope: !1679)
!1884 = !DILocation(line: 489, column: 31, scope: !1679)
!1885 = !DILocation(line: 492, column: 15, scope: !1679)
!1886 = !DILocation(line: 494, column: 19, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !174, line: 493, column: 13)
!1888 = distinct !DILexicalBlock(scope: !1679, file: !174, line: 492, column: 15)
!1889 = !DILocation(line: 501, column: 33, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1679, file: !174, line: 501, column: 15)
!1891 = !DILocation(line: 506, column: 15, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1679, file: !174, line: 505, column: 15)
!1893 = !DILocation(line: 510, column: 15, scope: !1679)
!1894 = !DILocation(line: 518, column: 26, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1679, file: !174, line: 518, column: 15)
!1896 = !DILocation(line: 518, column: 15, scope: !1679)
!1897 = !DILocation(line: 518, column: 40, scope: !1895)
!1898 = !DILocation(line: 518, column: 47, scope: !1895)
!1899 = !DILocation(line: 522, column: 17, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1679, file: !174, line: 522, column: 15)
!1901 = !DILocation(line: 518, column: 18, scope: !1895)
!1902 = !DILocation(line: 518, column: 65, scope: !1895)
!1903 = !DILocation(line: 522, column: 15, scope: !1679)
!1904 = !DILocation(line: 526, column: 11, scope: !1679)
!1905 = !DILocation(line: 541, column: 15, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1679, file: !174, line: 540, column: 15)
!1907 = !DILocation(line: 548, column: 15, scope: !1679)
!1908 = !DILocation(line: 550, column: 19, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !174, line: 549, column: 13)
!1910 = distinct !DILexicalBlock(scope: !1679, file: !174, line: 548, column: 15)
!1911 = !DILocation(line: 553, column: 19, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1909, file: !174, line: 553, column: 19)
!1913 = !DILocation(line: 553, column: 35, scope: !1912)
!1914 = !DILocation(line: 553, column: 30, scope: !1912)
!1915 = !DILocation(line: 562, column: 15, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !174, line: 562, column: 15)
!1917 = distinct !DILexicalBlock(scope: !1909, file: !174, line: 562, column: 15)
!1918 = !DILocation(line: 562, column: 15, scope: !1917)
!1919 = !DILocation(line: 563, column: 15, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !174, line: 563, column: 15)
!1921 = distinct !DILexicalBlock(scope: !1909, file: !174, line: 563, column: 15)
!1922 = !DILocation(line: 563, column: 15, scope: !1921)
!1923 = !DILocation(line: 564, column: 15, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !174, line: 564, column: 15)
!1925 = distinct !DILexicalBlock(scope: !1909, file: !174, line: 564, column: 15)
!1926 = !DILocation(line: 564, column: 15, scope: !1925)
!1927 = !DILocation(line: 566, column: 13, scope: !1909)
!1928 = !DILocation(line: 606, column: 17, scope: !1678)
!1929 = !DILocation(line: 602, column: 20, scope: !1678)
!1930 = !DILocation(line: 609, column: 29, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1683, file: !174, line: 607, column: 15)
!1932 = !{!1143, !1143, i64 0}
!1933 = !DILocation(line: 609, column: 27, scope: !1931)
!1934 = !DILocation(line: 604, column: 18, scope: !1678)
!1935 = !DILocation(line: 610, column: 15, scope: !1931)
!1936 = !DILocation(line: 613, column: 17, scope: !1682)
!1937 = !DILocation(line: 614, column: 17, scope: !1682)
!1938 = !DILocation(line: 618, column: 29, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1682, file: !174, line: 618, column: 21)
!1940 = !DILocation(line: 618, column: 21, scope: !1682)
!1941 = !DILocation(line: 619, column: 29, scope: !1939)
!1942 = !DILocation(line: 619, column: 19, scope: !1939)
!1943 = !DILocation(line: 621, column: 17, scope: !1682)
!1944 = distinct !{!1944, !1943, !1945}
!1945 = !DILocation(line: 667, column: 44, scope: !1682)
!1946 = !DILocation(line: 623, column: 21, scope: !1698)
!1947 = !DILocation(line: 624, column: 56, scope: !1698)
!1948 = !DILocation(line: 624, column: 50, scope: !1698)
!1949 = !DILocation(line: 625, column: 53, scope: !1698)
!1950 = !DILocation(line: 613, column: 27, scope: !1682)
!1951 = !DILocation(line: 623, column: 29, scope: !1698)
!1952 = !DILocation(line: 624, column: 36, scope: !1698)
!1953 = !DILocation(line: 624, column: 28, scope: !1698)
!1954 = !DILocation(line: 626, column: 25, scope: !1698)
!1955 = !DILocation(line: 636, column: 38, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1705, file: !174, line: 634, column: 23)
!1957 = !DILocation(line: 636, column: 48, scope: !1956)
!1958 = !DILocation(line: 636, column: 51, scope: !1956)
!1959 = !DILocation(line: 636, column: 25, scope: !1956)
!1960 = !DILocation(line: 637, column: 28, scope: !1956)
!1961 = !DILocation(line: 636, column: 34, scope: !1956)
!1962 = distinct !{!1962, !1959, !1960}
!1963 = !DILocation(line: 650, column: 43, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !174, line: 650, column: 29)
!1965 = distinct !DILexicalBlock(scope: !1702, file: !174, line: 650, column: 29)
!1966 = !DILocation(line: 647, column: 29, scope: !1703)
!1967 = !DILocation(line: 649, column: 36, scope: !1702)
!1968 = !DILocation(line: 651, column: 49, scope: !1964)
!1969 = !DILocation(line: 651, column: 39, scope: !1964)
!1970 = !DILocation(line: 651, column: 31, scope: !1964)
!1971 = !DILocation(line: 650, column: 53, scope: !1964)
!1972 = !DILocation(line: 650, column: 29, scope: !1965)
!1973 = distinct !{!1973, !1972, !1974}
!1974 = !DILocation(line: 659, column: 33, scope: !1965)
!1975 = !DILocation(line: 666, column: 19, scope: !1682)
!1976 = !DILocation(line: 662, column: 41, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1704, file: !174, line: 662, column: 29)
!1978 = !DILocation(line: 662, column: 31, scope: !1977)
!1979 = !DILocation(line: 662, column: 29, scope: !1704)
!1980 = !DILocation(line: 664, column: 27, scope: !1704)
!1981 = !DILocation(line: 667, column: 26, scope: !1682)
!1982 = !DILocation(line: 667, column: 24, scope: !1682)
!1983 = !DILocation(line: 666, column: 19, scope: !1698)
!1984 = !DILocation(line: 668, column: 15, scope: !1683)
!1985 = !DILocation(line: 670, column: 40, scope: !1678)
!1986 = !DILocation(line: 672, column: 19, scope: !1710)
!1987 = !DILocation(line: 672, column: 45, scope: !1710)
!1988 = !DILocation(line: 672, column: 23, scope: !1710)
!1989 = !DILocation(line: 676, column: 33, scope: !1709)
!1990 = !DILocation(line: 676, column: 24, scope: !1709)
!1991 = !DILocation(line: 678, column: 17, scope: !1709)
!1992 = !DILocation(line: 680, column: 43, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !174, line: 680, column: 25)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !174, line: 679, column: 19)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !174, line: 678, column: 17)
!1996 = distinct !DILexicalBlock(scope: !1709, file: !174, line: 678, column: 17)
!1997 = !DILocation(line: 682, column: 25, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !174, line: 682, column: 25)
!1999 = distinct !DILexicalBlock(scope: !1993, file: !174, line: 681, column: 23)
!2000 = !DILocation(line: 682, column: 25, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1998, file: !174, line: 682, column: 25)
!2002 = !DILocation(line: 682, column: 25, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !174, line: 682, column: 25)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !174, line: 682, column: 25)
!2005 = distinct !DILexicalBlock(scope: !2001, file: !174, line: 682, column: 25)
!2006 = !DILocation(line: 682, column: 25, scope: !2004)
!2007 = !DILocation(line: 682, column: 25, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !174, line: 682, column: 25)
!2009 = distinct !DILexicalBlock(scope: !2005, file: !174, line: 682, column: 25)
!2010 = !DILocation(line: 682, column: 25, scope: !2009)
!2011 = !DILocation(line: 682, column: 25, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !174, line: 682, column: 25)
!2013 = distinct !DILexicalBlock(scope: !2005, file: !174, line: 682, column: 25)
!2014 = !DILocation(line: 682, column: 25, scope: !2013)
!2015 = !DILocation(line: 682, column: 25, scope: !2005)
!2016 = !DILocation(line: 682, column: 25, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !174, line: 682, column: 25)
!2018 = distinct !DILexicalBlock(scope: !1998, file: !174, line: 682, column: 25)
!2019 = !DILocation(line: 682, column: 25, scope: !2018)
!2020 = !DILocation(line: 683, column: 25, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !174, line: 683, column: 25)
!2022 = distinct !DILexicalBlock(scope: !1999, file: !174, line: 683, column: 25)
!2023 = !DILocation(line: 683, column: 25, scope: !2022)
!2024 = !DILocation(line: 684, column: 25, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !174, line: 684, column: 25)
!2026 = distinct !DILexicalBlock(scope: !1999, file: !174, line: 684, column: 25)
!2027 = !DILocation(line: 684, column: 25, scope: !2026)
!2028 = !DILocation(line: 685, column: 38, scope: !1999)
!2029 = !DILocation(line: 685, column: 33, scope: !1999)
!2030 = !DILocation(line: 686, column: 23, scope: !1999)
!2031 = !DILocation(line: 687, column: 30, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !1993, file: !174, line: 687, column: 30)
!2033 = !DILocation(line: 687, column: 30, scope: !1993)
!2034 = !DILocation(line: 689, column: 25, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !174, line: 689, column: 25)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !174, line: 689, column: 25)
!2037 = distinct !DILexicalBlock(scope: !2032, file: !174, line: 688, column: 23)
!2038 = !DILocation(line: 689, column: 25, scope: !2036)
!2039 = !DILocation(line: 691, column: 23, scope: !2037)
!2040 = !DILocation(line: 692, column: 35, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !1994, file: !174, line: 692, column: 25)
!2042 = !DILocation(line: 692, column: 30, scope: !2041)
!2043 = !DILocation(line: 692, column: 25, scope: !1994)
!2044 = !DILocation(line: 694, column: 21, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !174, line: 694, column: 21)
!2046 = distinct !DILexicalBlock(scope: !1994, file: !174, line: 694, column: 21)
!2047 = !DILocation(line: 694, column: 21, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !174, line: 694, column: 21)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !174, line: 694, column: 21)
!2050 = distinct !DILexicalBlock(scope: !2045, file: !174, line: 694, column: 21)
!2051 = !DILocation(line: 694, column: 21, scope: !2049)
!2052 = !DILocation(line: 694, column: 21, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !174, line: 694, column: 21)
!2054 = distinct !DILexicalBlock(scope: !2050, file: !174, line: 694, column: 21)
!2055 = !DILocation(line: 694, column: 21, scope: !2054)
!2056 = !DILocation(line: 694, column: 21, scope: !2050)
!2057 = !DILocation(line: 695, column: 21, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !174, line: 695, column: 21)
!2059 = distinct !DILexicalBlock(scope: !1994, file: !174, line: 695, column: 21)
!2060 = !DILocation(line: 695, column: 21, scope: !2059)
!2061 = !DILocation(line: 696, column: 25, scope: !1994)
!2062 = !DILocation(line: 678, column: 17, scope: !1995)
!2063 = distinct !{!2063, !2064, !2065}
!2064 = !DILocation(line: 678, column: 17, scope: !1996)
!2065 = !DILocation(line: 697, column: 19, scope: !1996)
!2066 = !DILocation(line: 704, column: 34, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !1670, file: !174, line: 704, column: 11)
!2068 = !DILocation(line: 706, column: 14, scope: !2067)
!2069 = !DILocation(line: 707, column: 14, scope: !2067)
!2070 = !DILocation(line: 707, column: 35, scope: !2067)
!2071 = !DILocation(line: 707, column: 17, scope: !2067)
!2072 = !DILocation(line: 707, column: 53, scope: !2067)
!2073 = !DILocation(line: 707, column: 47, scope: !2067)
!2074 = !DILocation(line: 707, column: 65, scope: !2067)
!2075 = !DILocation(line: 708, column: 15, scope: !2067)
!2076 = !DILocation(line: 708, column: 11, scope: !2067)
!2077 = !DILocation(line: 704, column: 11, scope: !1670)
!2078 = !DILocation(line: 712, column: 7, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !1670, file: !174, line: 712, column: 7)
!2080 = !DILocation(line: 712, column: 7, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2079, file: !174, line: 712, column: 7)
!2082 = !DILocation(line: 712, column: 7, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !174, line: 712, column: 7)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !174, line: 712, column: 7)
!2085 = distinct !DILexicalBlock(scope: !2081, file: !174, line: 712, column: 7)
!2086 = !DILocation(line: 712, column: 7, scope: !2084)
!2087 = !DILocation(line: 712, column: 7, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !174, line: 712, column: 7)
!2089 = distinct !DILexicalBlock(scope: !2085, file: !174, line: 712, column: 7)
!2090 = !DILocation(line: 712, column: 7, scope: !2089)
!2091 = !DILocation(line: 712, column: 7, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !174, line: 712, column: 7)
!2093 = distinct !DILexicalBlock(scope: !2085, file: !174, line: 712, column: 7)
!2094 = !DILocation(line: 712, column: 7, scope: !2093)
!2095 = !DILocation(line: 712, column: 7, scope: !2085)
!2096 = !DILocation(line: 712, column: 7, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !174, line: 712, column: 7)
!2098 = distinct !DILexicalBlock(scope: !2079, file: !174, line: 712, column: 7)
!2099 = !DILocation(line: 712, column: 7, scope: !2098)
!2100 = !DILocation(line: 715, column: 7, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !174, line: 715, column: 7)
!2102 = distinct !DILexicalBlock(scope: !1670, file: !174, line: 715, column: 7)
!2103 = !DILocation(line: 715, column: 7, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !174, line: 715, column: 7)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !174, line: 715, column: 7)
!2106 = distinct !DILexicalBlock(scope: !2101, file: !174, line: 715, column: 7)
!2107 = !DILocation(line: 715, column: 7, scope: !2105)
!2108 = !DILocation(line: 715, column: 7, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !174, line: 715, column: 7)
!2110 = distinct !DILexicalBlock(scope: !2106, file: !174, line: 715, column: 7)
!2111 = !DILocation(line: 715, column: 7, scope: !2110)
!2112 = !DILocation(line: 715, column: 7, scope: !2106)
!2113 = !DILocation(line: 716, column: 7, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !174, line: 716, column: 7)
!2115 = distinct !DILexicalBlock(scope: !1670, file: !174, line: 716, column: 7)
!2116 = !DILocation(line: 716, column: 7, scope: !2115)
!2117 = !DILocation(line: 718, column: 13, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !1670, file: !174, line: 718, column: 11)
!2119 = !DILocation(line: 718, column: 11, scope: !1670)
!2120 = !DILocation(line: 720, column: 5, scope: !1671)
!2121 = !DILocation(line: 392, column: 75, scope: !1671)
!2122 = !DILocation(line: 392, column: 3, scope: !1671)
!2123 = distinct !{!2123, !1782, !2124}
!2124 = !DILocation(line: 720, column: 5, scope: !1672)
!2125 = !DILocation(line: 722, column: 11, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !1643, file: !174, line: 722, column: 7)
!2127 = !DILocation(line: 722, column: 16, scope: !2126)
!2128 = !DILocation(line: 730, column: 51, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !1643, file: !174, line: 730, column: 7)
!2130 = !DILocation(line: 731, column: 10, scope: !2129)
!2131 = !DILocation(line: 733, column: 11, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !174, line: 733, column: 11)
!2133 = distinct !DILexicalBlock(scope: !2129, file: !174, line: 732, column: 5)
!2134 = !DILocation(line: 733, column: 11, scope: !2133)
!2135 = !DILocation(line: 734, column: 16, scope: !2132)
!2136 = !DILocation(line: 734, column: 9, scope: !2132)
!2137 = !DILocation(line: 738, column: 18, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2132, file: !174, line: 738, column: 16)
!2139 = !DILocation(line: 738, column: 32, scope: !2138)
!2140 = !DILocation(line: 738, column: 29, scope: !2138)
!2141 = !DILocation(line: 747, column: 7, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !1643, file: !174, line: 747, column: 7)
!2143 = !DILocation(line: 747, column: 20, scope: !2142)
!2144 = !DILocation(line: 748, column: 12, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !174, line: 748, column: 5)
!2146 = distinct !DILexicalBlock(scope: !2142, file: !174, line: 748, column: 5)
!2147 = !DILocation(line: 748, column: 5, scope: !2146)
!2148 = !DILocation(line: 749, column: 7, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !174, line: 749, column: 7)
!2150 = distinct !DILexicalBlock(scope: !2145, file: !174, line: 749, column: 7)
!2151 = !DILocation(line: 749, column: 7, scope: !2150)
!2152 = !DILocation(line: 748, column: 39, scope: !2145)
!2153 = distinct !{!2153, !2147, !2154}
!2154 = !DILocation(line: 749, column: 7, scope: !2146)
!2155 = !DILocation(line: 751, column: 11, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !1643, file: !174, line: 751, column: 7)
!2157 = !DILocation(line: 751, column: 7, scope: !1643)
!2158 = !DILocation(line: 752, column: 5, scope: !2156)
!2159 = !DILocation(line: 752, column: 17, scope: !2156)
!2160 = !DILocation(line: 758, column: 21, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !1643, file: !174, line: 758, column: 7)
!2162 = !DILocation(line: 758, column: 54, scope: !2161)
!2163 = !DILocation(line: 758, column: 51, scope: !2161)
!2164 = !DILocation(line: 762, column: 42, scope: !1643)
!2165 = !DILocation(line: 760, column: 10, scope: !1643)
!2166 = !DILocation(line: 760, column: 3, scope: !1643)
!2167 = !DILocation(line: 764, column: 1, scope: !1643)
!2168 = distinct !DISubprogram(name: "gettext_quote", scope: !174, file: !174, line: 199, type: !2169, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2171)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!36, !36, !21}
!2171 = !{!2172, !2173, !2174, !2175}
!2172 = !DILocalVariable(name: "msgid", arg: 1, scope: !2168, file: !174, line: 199, type: !36)
!2173 = !DILocalVariable(name: "s", arg: 2, scope: !2168, file: !174, line: 199, type: !21)
!2174 = !DILocalVariable(name: "translation", scope: !2168, file: !174, line: 201, type: !36)
!2175 = !DILocalVariable(name: "locale_code", scope: !2168, file: !174, line: 202, type: !36)
!2176 = !DILocation(line: 199, column: 28, scope: !2168)
!2177 = !DILocation(line: 199, column: 54, scope: !2168)
!2178 = !DILocation(line: 201, column: 29, scope: !2168)
!2179 = !DILocation(line: 201, column: 15, scope: !2168)
!2180 = !DILocation(line: 204, column: 19, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2168, file: !174, line: 204, column: 7)
!2182 = !DILocation(line: 204, column: 7, scope: !2168)
!2183 = !DILocation(line: 225, column: 17, scope: !2168)
!2184 = !DILocation(line: 202, column: 15, scope: !2168)
!2185 = !DILocalVariable(name: "s2", arg: 2, scope: !2186, file: !2187, line: 160, type: !36)
!2186 = distinct !DISubprogram(name: "strcaseeq0", scope: !2187, file: !2187, line: 160, type: !2188, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2190)
!2187 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!46, !36, !36, !38, !38, !38, !38, !38, !38, !38, !38, !38}
!2190 = !{!2191, !2185, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200}
!2191 = !DILocalVariable(name: "s1", arg: 1, scope: !2186, file: !2187, line: 160, type: !36)
!2192 = !DILocalVariable(name: "s20", arg: 3, scope: !2186, file: !2187, line: 160, type: !38)
!2193 = !DILocalVariable(name: "s21", arg: 4, scope: !2186, file: !2187, line: 160, type: !38)
!2194 = !DILocalVariable(name: "s22", arg: 5, scope: !2186, file: !2187, line: 160, type: !38)
!2195 = !DILocalVariable(name: "s23", arg: 6, scope: !2186, file: !2187, line: 160, type: !38)
!2196 = !DILocalVariable(name: "s24", arg: 7, scope: !2186, file: !2187, line: 160, type: !38)
!2197 = !DILocalVariable(name: "s25", arg: 8, scope: !2186, file: !2187, line: 160, type: !38)
!2198 = !DILocalVariable(name: "s26", arg: 9, scope: !2186, file: !2187, line: 160, type: !38)
!2199 = !DILocalVariable(name: "s27", arg: 10, scope: !2186, file: !2187, line: 160, type: !38)
!2200 = !DILocalVariable(name: "s28", arg: 11, scope: !2186, file: !2187, line: 160, type: !38)
!2201 = !DILocation(line: 160, column: 41, scope: !2186, inlinedAt: !2202)
!2202 = distinct !DILocation(line: 226, column: 7, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2168, file: !174, line: 226, column: 7)
!2204 = !DILocation(line: 160, column: 120, scope: !2186, inlinedAt: !2202)
!2205 = !DILocation(line: 160, column: 130, scope: !2186, inlinedAt: !2202)
!2206 = !DILocation(line: 162, column: 7, scope: !2207, inlinedAt: !2202)
!2207 = distinct !DILexicalBlock(scope: !2186, file: !2187, line: 162, column: 7)
!2208 = !DILocalVariable(name: "s2", arg: 2, scope: !2209, file: !2187, line: 146, type: !36)
!2209 = distinct !DISubprogram(name: "strcaseeq1", scope: !2187, file: !2187, line: 146, type: !2210, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2212)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!46, !36, !36, !38, !38, !38, !38, !38, !38, !38, !38}
!2212 = !{!2213, !2208, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221}
!2213 = !DILocalVariable(name: "s1", arg: 1, scope: !2209, file: !2187, line: 146, type: !36)
!2214 = !DILocalVariable(name: "s21", arg: 3, scope: !2209, file: !2187, line: 146, type: !38)
!2215 = !DILocalVariable(name: "s22", arg: 4, scope: !2209, file: !2187, line: 146, type: !38)
!2216 = !DILocalVariable(name: "s23", arg: 5, scope: !2209, file: !2187, line: 146, type: !38)
!2217 = !DILocalVariable(name: "s24", arg: 6, scope: !2209, file: !2187, line: 146, type: !38)
!2218 = !DILocalVariable(name: "s25", arg: 7, scope: !2209, file: !2187, line: 146, type: !38)
!2219 = !DILocalVariable(name: "s26", arg: 8, scope: !2209, file: !2187, line: 146, type: !38)
!2220 = !DILocalVariable(name: "s27", arg: 9, scope: !2209, file: !2187, line: 146, type: !38)
!2221 = !DILocalVariable(name: "s28", arg: 10, scope: !2209, file: !2187, line: 146, type: !38)
!2222 = !DILocation(line: 146, column: 41, scope: !2209, inlinedAt: !2223)
!2223 = distinct !DILocation(line: 167, column: 16, scope: !2224, inlinedAt: !2202)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !2187, line: 164, column: 11)
!2225 = distinct !DILexicalBlock(scope: !2207, file: !2187, line: 163, column: 5)
!2226 = !DILocation(line: 146, column: 110, scope: !2209, inlinedAt: !2223)
!2227 = !DILocation(line: 146, column: 120, scope: !2209, inlinedAt: !2223)
!2228 = !DILocation(line: 148, column: 7, scope: !2229, inlinedAt: !2223)
!2229 = distinct !DILexicalBlock(scope: !2209, file: !2187, line: 148, column: 7)
!2230 = !DILocalVariable(name: "s2", arg: 2, scope: !2231, file: !2187, line: 132, type: !36)
!2231 = distinct !DISubprogram(name: "strcaseeq2", scope: !2187, file: !2187, line: 132, type: !2232, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2234)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!46, !36, !36, !38, !38, !38, !38, !38, !38, !38}
!2234 = !{!2235, !2230, !2236, !2237, !2238, !2239, !2240, !2241, !2242}
!2235 = !DILocalVariable(name: "s1", arg: 1, scope: !2231, file: !2187, line: 132, type: !36)
!2236 = !DILocalVariable(name: "s22", arg: 3, scope: !2231, file: !2187, line: 132, type: !38)
!2237 = !DILocalVariable(name: "s23", arg: 4, scope: !2231, file: !2187, line: 132, type: !38)
!2238 = !DILocalVariable(name: "s24", arg: 5, scope: !2231, file: !2187, line: 132, type: !38)
!2239 = !DILocalVariable(name: "s25", arg: 6, scope: !2231, file: !2187, line: 132, type: !38)
!2240 = !DILocalVariable(name: "s26", arg: 7, scope: !2231, file: !2187, line: 132, type: !38)
!2241 = !DILocalVariable(name: "s27", arg: 8, scope: !2231, file: !2187, line: 132, type: !38)
!2242 = !DILocalVariable(name: "s28", arg: 9, scope: !2231, file: !2187, line: 132, type: !38)
!2243 = !DILocation(line: 132, column: 41, scope: !2231, inlinedAt: !2244)
!2244 = distinct !DILocation(line: 153, column: 16, scope: !2245, inlinedAt: !2223)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !2187, line: 150, column: 11)
!2246 = distinct !DILexicalBlock(scope: !2229, file: !2187, line: 149, column: 5)
!2247 = !DILocation(line: 132, column: 100, scope: !2231, inlinedAt: !2244)
!2248 = !DILocation(line: 132, column: 110, scope: !2231, inlinedAt: !2244)
!2249 = !DILocation(line: 134, column: 7, scope: !2250, inlinedAt: !2244)
!2250 = distinct !DILexicalBlock(scope: !2231, file: !2187, line: 134, column: 7)
!2251 = !DILocalVariable(name: "s2", arg: 2, scope: !2252, file: !2187, line: 118, type: !36)
!2252 = distinct !DISubprogram(name: "strcaseeq3", scope: !2187, file: !2187, line: 118, type: !2253, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2255)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!46, !36, !36, !38, !38, !38, !38, !38, !38}
!2255 = !{!2256, !2251, !2257, !2258, !2259, !2260, !2261, !2262}
!2256 = !DILocalVariable(name: "s1", arg: 1, scope: !2252, file: !2187, line: 118, type: !36)
!2257 = !DILocalVariable(name: "s23", arg: 3, scope: !2252, file: !2187, line: 118, type: !38)
!2258 = !DILocalVariable(name: "s24", arg: 4, scope: !2252, file: !2187, line: 118, type: !38)
!2259 = !DILocalVariable(name: "s25", arg: 5, scope: !2252, file: !2187, line: 118, type: !38)
!2260 = !DILocalVariable(name: "s26", arg: 6, scope: !2252, file: !2187, line: 118, type: !38)
!2261 = !DILocalVariable(name: "s27", arg: 7, scope: !2252, file: !2187, line: 118, type: !38)
!2262 = !DILocalVariable(name: "s28", arg: 8, scope: !2252, file: !2187, line: 118, type: !38)
!2263 = !DILocation(line: 118, column: 41, scope: !2252, inlinedAt: !2264)
!2264 = distinct !DILocation(line: 139, column: 16, scope: !2265, inlinedAt: !2244)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !2187, line: 136, column: 11)
!2266 = distinct !DILexicalBlock(scope: !2250, file: !2187, line: 135, column: 5)
!2267 = !DILocation(line: 118, column: 90, scope: !2252, inlinedAt: !2264)
!2268 = !DILocation(line: 118, column: 100, scope: !2252, inlinedAt: !2264)
!2269 = !DILocation(line: 120, column: 7, scope: !2270, inlinedAt: !2264)
!2270 = distinct !DILexicalBlock(scope: !2252, file: !2187, line: 120, column: 7)
!2271 = !DILocation(line: 120, column: 7, scope: !2252, inlinedAt: !2264)
!2272 = !DILocalVariable(name: "s2", arg: 2, scope: !2273, file: !2187, line: 104, type: !36)
!2273 = distinct !DISubprogram(name: "strcaseeq4", scope: !2187, file: !2187, line: 104, type: !2274, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2276)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!46, !36, !36, !38, !38, !38, !38, !38}
!2276 = !{!2277, !2272, !2278, !2279, !2280, !2281, !2282}
!2277 = !DILocalVariable(name: "s1", arg: 1, scope: !2273, file: !2187, line: 104, type: !36)
!2278 = !DILocalVariable(name: "s24", arg: 3, scope: !2273, file: !2187, line: 104, type: !38)
!2279 = !DILocalVariable(name: "s25", arg: 4, scope: !2273, file: !2187, line: 104, type: !38)
!2280 = !DILocalVariable(name: "s26", arg: 5, scope: !2273, file: !2187, line: 104, type: !38)
!2281 = !DILocalVariable(name: "s27", arg: 6, scope: !2273, file: !2187, line: 104, type: !38)
!2282 = !DILocalVariable(name: "s28", arg: 7, scope: !2273, file: !2187, line: 104, type: !38)
!2283 = !DILocation(line: 104, column: 41, scope: !2273, inlinedAt: !2284)
!2284 = distinct !DILocation(line: 125, column: 16, scope: !2285, inlinedAt: !2264)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !2187, line: 122, column: 11)
!2286 = distinct !DILexicalBlock(scope: !2270, file: !2187, line: 121, column: 5)
!2287 = !DILocation(line: 104, column: 80, scope: !2273, inlinedAt: !2284)
!2288 = !DILocation(line: 104, column: 90, scope: !2273, inlinedAt: !2284)
!2289 = !DILocation(line: 106, column: 7, scope: !2290, inlinedAt: !2284)
!2290 = distinct !DILexicalBlock(scope: !2273, file: !2187, line: 106, column: 7)
!2291 = !DILocation(line: 106, column: 7, scope: !2273, inlinedAt: !2284)
!2292 = !DILocalVariable(name: "s2", arg: 2, scope: !2293, file: !2187, line: 90, type: !36)
!2293 = distinct !DISubprogram(name: "strcaseeq5", scope: !2187, file: !2187, line: 90, type: !2294, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2296)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!46, !36, !36, !38, !38, !38, !38}
!2296 = !{!2297, !2292, !2298, !2299, !2300, !2301}
!2297 = !DILocalVariable(name: "s1", arg: 1, scope: !2293, file: !2187, line: 90, type: !36)
!2298 = !DILocalVariable(name: "s25", arg: 3, scope: !2293, file: !2187, line: 90, type: !38)
!2299 = !DILocalVariable(name: "s26", arg: 4, scope: !2293, file: !2187, line: 90, type: !38)
!2300 = !DILocalVariable(name: "s27", arg: 5, scope: !2293, file: !2187, line: 90, type: !38)
!2301 = !DILocalVariable(name: "s28", arg: 6, scope: !2293, file: !2187, line: 90, type: !38)
!2302 = !DILocation(line: 90, column: 41, scope: !2293, inlinedAt: !2303)
!2303 = distinct !DILocation(line: 111, column: 16, scope: !2304, inlinedAt: !2284)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !2187, line: 108, column: 11)
!2305 = distinct !DILexicalBlock(scope: !2290, file: !2187, line: 107, column: 5)
!2306 = !DILocation(line: 90, column: 70, scope: !2293, inlinedAt: !2303)
!2307 = !DILocation(line: 90, column: 80, scope: !2293, inlinedAt: !2303)
!2308 = !DILocation(line: 92, column: 7, scope: !2309, inlinedAt: !2303)
!2309 = distinct !DILexicalBlock(scope: !2293, file: !2187, line: 92, column: 7)
!2310 = !DILocation(line: 92, column: 7, scope: !2293, inlinedAt: !2303)
!2311 = !DILocation(line: 227, column: 12, scope: !2203)
!2312 = !DILocation(line: 227, column: 21, scope: !2203)
!2313 = !DILocation(line: 227, column: 5, scope: !2203)
!2314 = !DILocation(line: 146, column: 41, scope: !2209, inlinedAt: !2315)
!2315 = distinct !DILocation(line: 167, column: 16, scope: !2224, inlinedAt: !2316)
!2316 = distinct !DILocation(line: 228, column: 7, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2168, file: !174, line: 228, column: 7)
!2318 = !DILocation(line: 146, column: 110, scope: !2209, inlinedAt: !2315)
!2319 = !DILocation(line: 146, column: 120, scope: !2209, inlinedAt: !2315)
!2320 = !DILocation(line: 148, column: 7, scope: !2229, inlinedAt: !2315)
!2321 = !DILocation(line: 132, column: 41, scope: !2231, inlinedAt: !2322)
!2322 = distinct !DILocation(line: 153, column: 16, scope: !2245, inlinedAt: !2315)
!2323 = !DILocation(line: 132, column: 100, scope: !2231, inlinedAt: !2322)
!2324 = !DILocation(line: 132, column: 110, scope: !2231, inlinedAt: !2322)
!2325 = !DILocation(line: 134, column: 7, scope: !2250, inlinedAt: !2322)
!2326 = !DILocation(line: 134, column: 7, scope: !2231, inlinedAt: !2322)
!2327 = !DILocation(line: 118, column: 41, scope: !2252, inlinedAt: !2328)
!2328 = distinct !DILocation(line: 139, column: 16, scope: !2265, inlinedAt: !2322)
!2329 = !DILocation(line: 118, column: 90, scope: !2252, inlinedAt: !2328)
!2330 = !DILocation(line: 118, column: 100, scope: !2252, inlinedAt: !2328)
!2331 = !DILocation(line: 120, column: 7, scope: !2270, inlinedAt: !2328)
!2332 = !DILocation(line: 120, column: 7, scope: !2252, inlinedAt: !2328)
!2333 = !DILocation(line: 104, column: 41, scope: !2273, inlinedAt: !2334)
!2334 = distinct !DILocation(line: 125, column: 16, scope: !2285, inlinedAt: !2328)
!2335 = !DILocation(line: 104, column: 80, scope: !2273, inlinedAt: !2334)
!2336 = !DILocation(line: 104, column: 90, scope: !2273, inlinedAt: !2334)
!2337 = !DILocation(line: 106, column: 7, scope: !2290, inlinedAt: !2334)
!2338 = !DILocation(line: 106, column: 7, scope: !2273, inlinedAt: !2334)
!2339 = !DILocation(line: 90, column: 41, scope: !2293, inlinedAt: !2340)
!2340 = distinct !DILocation(line: 111, column: 16, scope: !2304, inlinedAt: !2334)
!2341 = !DILocation(line: 90, column: 70, scope: !2293, inlinedAt: !2340)
!2342 = !DILocation(line: 90, column: 80, scope: !2293, inlinedAt: !2340)
!2343 = !DILocation(line: 92, column: 7, scope: !2309, inlinedAt: !2340)
!2344 = !DILocation(line: 92, column: 7, scope: !2293, inlinedAt: !2340)
!2345 = !DILocalVariable(name: "s2", arg: 2, scope: !2346, file: !2187, line: 76, type: !36)
!2346 = distinct !DISubprogram(name: "strcaseeq6", scope: !2187, file: !2187, line: 76, type: !2347, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2349)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!46, !36, !36, !38, !38, !38}
!2349 = !{!2350, !2345, !2351, !2352, !2353}
!2350 = !DILocalVariable(name: "s1", arg: 1, scope: !2346, file: !2187, line: 76, type: !36)
!2351 = !DILocalVariable(name: "s26", arg: 3, scope: !2346, file: !2187, line: 76, type: !38)
!2352 = !DILocalVariable(name: "s27", arg: 4, scope: !2346, file: !2187, line: 76, type: !38)
!2353 = !DILocalVariable(name: "s28", arg: 5, scope: !2346, file: !2187, line: 76, type: !38)
!2354 = !DILocation(line: 76, column: 41, scope: !2346, inlinedAt: !2355)
!2355 = distinct !DILocation(line: 97, column: 16, scope: !2356, inlinedAt: !2340)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !2187, line: 94, column: 11)
!2357 = distinct !DILexicalBlock(scope: !2309, file: !2187, line: 93, column: 5)
!2358 = !DILocation(line: 76, column: 60, scope: !2346, inlinedAt: !2355)
!2359 = !DILocation(line: 76, column: 70, scope: !2346, inlinedAt: !2355)
!2360 = !DILocation(line: 78, column: 7, scope: !2361, inlinedAt: !2355)
!2361 = distinct !DILexicalBlock(scope: !2346, file: !2187, line: 78, column: 7)
!2362 = !DILocation(line: 78, column: 7, scope: !2346, inlinedAt: !2355)
!2363 = !DILocalVariable(name: "s2", arg: 2, scope: !2364, file: !2187, line: 62, type: !36)
!2364 = distinct !DISubprogram(name: "strcaseeq7", scope: !2187, file: !2187, line: 62, type: !2365, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2367)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!46, !36, !36, !38, !38}
!2367 = !{!2368, !2363, !2369, !2370}
!2368 = !DILocalVariable(name: "s1", arg: 1, scope: !2364, file: !2187, line: 62, type: !36)
!2369 = !DILocalVariable(name: "s27", arg: 3, scope: !2364, file: !2187, line: 62, type: !38)
!2370 = !DILocalVariable(name: "s28", arg: 4, scope: !2364, file: !2187, line: 62, type: !38)
!2371 = !DILocation(line: 62, column: 41, scope: !2364, inlinedAt: !2372)
!2372 = distinct !DILocation(line: 83, column: 16, scope: !2373, inlinedAt: !2355)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !2187, line: 80, column: 11)
!2374 = distinct !DILexicalBlock(scope: !2361, file: !2187, line: 79, column: 5)
!2375 = !DILocation(line: 62, column: 50, scope: !2364, inlinedAt: !2372)
!2376 = !DILocation(line: 62, column: 60, scope: !2364, inlinedAt: !2372)
!2377 = !DILocation(line: 64, column: 7, scope: !2378, inlinedAt: !2372)
!2378 = distinct !DILexicalBlock(scope: !2364, file: !2187, line: 64, column: 7)
!2379 = !DILocation(line: 228, column: 7, scope: !2168)
!2380 = !DILocation(line: 229, column: 12, scope: !2317)
!2381 = !DILocation(line: 229, column: 21, scope: !2317)
!2382 = !DILocation(line: 229, column: 5, scope: !2317)
!2383 = !DILocation(line: 231, column: 13, scope: !2168)
!2384 = !DILocation(line: 231, column: 11, scope: !2168)
!2385 = !DILocation(line: 231, column: 3, scope: !2168)
!2386 = !DILocation(line: 232, column: 1, scope: !2168)
!2387 = distinct !DISubprogram(name: "quotearg_alloc", scope: !174, file: !174, line: 791, type: !2388, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2390)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!39, !36, !47, !1515}
!2390 = !{!2391, !2392, !2393}
!2391 = !DILocalVariable(name: "arg", arg: 1, scope: !2387, file: !174, line: 791, type: !36)
!2392 = !DILocalVariable(name: "argsize", arg: 2, scope: !2387, file: !174, line: 791, type: !47)
!2393 = !DILocalVariable(name: "o", arg: 3, scope: !2387, file: !174, line: 792, type: !1515)
!2394 = !DILocation(line: 791, column: 29, scope: !2387)
!2395 = !DILocation(line: 791, column: 41, scope: !2387)
!2396 = !DILocation(line: 792, column: 47, scope: !2387)
!2397 = !DILocalVariable(name: "arg", arg: 1, scope: !2398, file: !174, line: 804, type: !36)
!2398 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !174, file: !174, line: 804, type: !2399, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2401)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!39, !36, !47, !630, !1515}
!2401 = !{!2397, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409}
!2402 = !DILocalVariable(name: "argsize", arg: 2, scope: !2398, file: !174, line: 804, type: !47)
!2403 = !DILocalVariable(name: "size", arg: 3, scope: !2398, file: !174, line: 804, type: !630)
!2404 = !DILocalVariable(name: "o", arg: 4, scope: !2398, file: !174, line: 805, type: !1515)
!2405 = !DILocalVariable(name: "p", scope: !2398, file: !174, line: 807, type: !1515)
!2406 = !DILocalVariable(name: "e", scope: !2398, file: !174, line: 808, type: !46)
!2407 = !DILocalVariable(name: "flags", scope: !2398, file: !174, line: 810, type: !46)
!2408 = !DILocalVariable(name: "bufsize", scope: !2398, file: !174, line: 811, type: !47)
!2409 = !DILocalVariable(name: "buf", scope: !2398, file: !174, line: 815, type: !39)
!2410 = !DILocation(line: 804, column: 33, scope: !2398, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 794, column: 10, scope: !2387)
!2412 = !DILocation(line: 804, column: 45, scope: !2398, inlinedAt: !2411)
!2413 = !DILocation(line: 804, column: 62, scope: !2398, inlinedAt: !2411)
!2414 = !DILocation(line: 805, column: 51, scope: !2398, inlinedAt: !2411)
!2415 = !DILocation(line: 807, column: 37, scope: !2398, inlinedAt: !2411)
!2416 = !DILocation(line: 807, column: 33, scope: !2398, inlinedAt: !2411)
!2417 = !DILocation(line: 808, column: 11, scope: !2398, inlinedAt: !2411)
!2418 = !DILocation(line: 808, column: 7, scope: !2398, inlinedAt: !2411)
!2419 = !DILocation(line: 810, column: 18, scope: !2398, inlinedAt: !2411)
!2420 = !DILocation(line: 810, column: 24, scope: !2398, inlinedAt: !2411)
!2421 = !DILocation(line: 810, column: 7, scope: !2398, inlinedAt: !2411)
!2422 = !DILocation(line: 811, column: 69, scope: !2398, inlinedAt: !2411)
!2423 = !DILocation(line: 812, column: 53, scope: !2398, inlinedAt: !2411)
!2424 = !DILocation(line: 813, column: 49, scope: !2398, inlinedAt: !2411)
!2425 = !DILocation(line: 814, column: 49, scope: !2398, inlinedAt: !2411)
!2426 = !DILocation(line: 811, column: 20, scope: !2398, inlinedAt: !2411)
!2427 = !DILocation(line: 814, column: 62, scope: !2398, inlinedAt: !2411)
!2428 = !DILocation(line: 811, column: 10, scope: !2398, inlinedAt: !2411)
!2429 = !DILocalVariable(name: "n", arg: 1, scope: !2430, file: !626, line: 220, type: !47)
!2430 = distinct !DISubprogram(name: "xcharalloc", scope: !626, file: !626, line: 220, type: !2431, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2433)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!39, !47}
!2433 = !{!2429}
!2434 = !DILocation(line: 220, column: 20, scope: !2430, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 815, column: 15, scope: !2398, inlinedAt: !2411)
!2436 = !DILocation(line: 222, column: 10, scope: !2430, inlinedAt: !2435)
!2437 = !DILocation(line: 815, column: 9, scope: !2398, inlinedAt: !2411)
!2438 = !DILocation(line: 816, column: 60, scope: !2398, inlinedAt: !2411)
!2439 = !DILocation(line: 818, column: 32, scope: !2398, inlinedAt: !2411)
!2440 = !DILocation(line: 818, column: 47, scope: !2398, inlinedAt: !2411)
!2441 = !DILocation(line: 816, column: 3, scope: !2398, inlinedAt: !2411)
!2442 = !DILocation(line: 819, column: 9, scope: !2398, inlinedAt: !2411)
!2443 = !DILocation(line: 794, column: 3, scope: !2387)
!2444 = !DILocation(line: 804, column: 33, scope: !2398)
!2445 = !DILocation(line: 804, column: 45, scope: !2398)
!2446 = !DILocation(line: 804, column: 62, scope: !2398)
!2447 = !DILocation(line: 805, column: 51, scope: !2398)
!2448 = !DILocation(line: 807, column: 37, scope: !2398)
!2449 = !DILocation(line: 807, column: 33, scope: !2398)
!2450 = !DILocation(line: 808, column: 11, scope: !2398)
!2451 = !DILocation(line: 808, column: 7, scope: !2398)
!2452 = !DILocation(line: 810, column: 18, scope: !2398)
!2453 = !DILocation(line: 810, column: 27, scope: !2398)
!2454 = !DILocation(line: 810, column: 24, scope: !2398)
!2455 = !DILocation(line: 810, column: 7, scope: !2398)
!2456 = !DILocation(line: 811, column: 69, scope: !2398)
!2457 = !DILocation(line: 812, column: 53, scope: !2398)
!2458 = !DILocation(line: 813, column: 49, scope: !2398)
!2459 = !DILocation(line: 814, column: 49, scope: !2398)
!2460 = !DILocation(line: 811, column: 20, scope: !2398)
!2461 = !DILocation(line: 814, column: 62, scope: !2398)
!2462 = !DILocation(line: 811, column: 10, scope: !2398)
!2463 = !DILocation(line: 220, column: 20, scope: !2430, inlinedAt: !2464)
!2464 = distinct !DILocation(line: 815, column: 15, scope: !2398)
!2465 = !DILocation(line: 222, column: 10, scope: !2430, inlinedAt: !2464)
!2466 = !DILocation(line: 815, column: 9, scope: !2398)
!2467 = !DILocation(line: 816, column: 60, scope: !2398)
!2468 = !DILocation(line: 818, column: 32, scope: !2398)
!2469 = !DILocation(line: 818, column: 47, scope: !2398)
!2470 = !DILocation(line: 816, column: 3, scope: !2398)
!2471 = !DILocation(line: 819, column: 9, scope: !2398)
!2472 = !DILocation(line: 820, column: 7, scope: !2398)
!2473 = !DILocation(line: 821, column: 11, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2398, file: !174, line: 820, column: 7)
!2475 = !{!1142, !1142, i64 0}
!2476 = !DILocation(line: 821, column: 5, scope: !2474)
!2477 = !DILocation(line: 822, column: 3, scope: !2398)
!2478 = distinct !DISubprogram(name: "quotearg_free", scope: !174, file: !174, line: 840, type: !120, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2479)
!2479 = !{!2480, !2481}
!2480 = !DILocalVariable(name: "sv", scope: !2478, file: !174, line: 842, type: !201)
!2481 = !DILocalVariable(name: "i", scope: !2478, file: !174, line: 843, type: !46)
!2482 = !DILocation(line: 842, column: 24, scope: !2478)
!2483 = !DILocation(line: 842, column: 19, scope: !2478)
!2484 = !DILocation(line: 843, column: 7, scope: !2478)
!2485 = !DILocation(line: 844, column: 19, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !174, line: 844, column: 3)
!2487 = distinct !DILexicalBlock(scope: !2478, file: !174, line: 844, column: 3)
!2488 = !DILocation(line: 844, column: 17, scope: !2486)
!2489 = !DILocation(line: 844, column: 3, scope: !2487)
!2490 = !DILocation(line: 845, column: 17, scope: !2486)
!2491 = !{!2492, !673, i64 8}
!2492 = !{!"slotvec", !1142, i64 0, !673, i64 8}
!2493 = !DILocation(line: 845, column: 5, scope: !2486)
!2494 = !DILocation(line: 844, column: 28, scope: !2486)
!2495 = distinct !{!2495, !2489, !2496}
!2496 = !DILocation(line: 845, column: 20, scope: !2487)
!2497 = !DILocation(line: 846, column: 13, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2478, file: !174, line: 846, column: 7)
!2499 = !DILocation(line: 846, column: 17, scope: !2498)
!2500 = !DILocation(line: 846, column: 7, scope: !2478)
!2501 = !DILocation(line: 848, column: 7, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2498, file: !174, line: 847, column: 5)
!2503 = !DILocation(line: 849, column: 21, scope: !2502)
!2504 = !{!2492, !1142, i64 0}
!2505 = !DILocation(line: 850, column: 20, scope: !2502)
!2506 = !DILocation(line: 851, column: 5, scope: !2502)
!2507 = !DILocation(line: 852, column: 10, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2478, file: !174, line: 852, column: 7)
!2509 = !DILocation(line: 852, column: 7, scope: !2478)
!2510 = !DILocation(line: 854, column: 13, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2508, file: !174, line: 853, column: 5)
!2512 = !DILocation(line: 854, column: 7, scope: !2511)
!2513 = !DILocation(line: 855, column: 15, scope: !2511)
!2514 = !DILocation(line: 856, column: 5, scope: !2511)
!2515 = !DILocation(line: 857, column: 10, scope: !2478)
!2516 = !DILocation(line: 858, column: 1, scope: !2478)
!2517 = distinct !DISubprogram(name: "quotearg_n", scope: !174, file: !174, line: 922, type: !2518, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2520)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!39, !46, !36}
!2520 = !{!2521, !2522}
!2521 = !DILocalVariable(name: "n", arg: 1, scope: !2517, file: !174, line: 922, type: !46)
!2522 = !DILocalVariable(name: "arg", arg: 2, scope: !2517, file: !174, line: 922, type: !36)
!2523 = !DILocation(line: 922, column: 17, scope: !2517)
!2524 = !DILocation(line: 922, column: 32, scope: !2517)
!2525 = !DILocation(line: 924, column: 10, scope: !2517)
!2526 = !DILocation(line: 924, column: 3, scope: !2517)
!2527 = distinct !DISubprogram(name: "quotearg_n_options", scope: !174, file: !174, line: 869, type: !2528, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2530)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!39, !46, !36, !47, !1515}
!2530 = !{!2531, !2532, !2533, !2534, !2535, !2536, !2537, !2540, !2542, !2543, !2544}
!2531 = !DILocalVariable(name: "n", arg: 1, scope: !2527, file: !174, line: 869, type: !46)
!2532 = !DILocalVariable(name: "arg", arg: 2, scope: !2527, file: !174, line: 869, type: !36)
!2533 = !DILocalVariable(name: "argsize", arg: 3, scope: !2527, file: !174, line: 869, type: !47)
!2534 = !DILocalVariable(name: "options", arg: 4, scope: !2527, file: !174, line: 870, type: !1515)
!2535 = !DILocalVariable(name: "e", scope: !2527, file: !174, line: 872, type: !46)
!2536 = !DILocalVariable(name: "sv", scope: !2527, file: !174, line: 874, type: !201)
!2537 = !DILocalVariable(name: "preallocated", scope: !2538, file: !174, line: 881, type: !53)
!2538 = distinct !DILexicalBlock(scope: !2539, file: !174, line: 880, column: 5)
!2539 = distinct !DILexicalBlock(scope: !2527, file: !174, line: 879, column: 7)
!2540 = !DILocalVariable(name: "size", scope: !2541, file: !174, line: 894, type: !47)
!2541 = distinct !DILexicalBlock(scope: !2527, file: !174, line: 893, column: 3)
!2542 = !DILocalVariable(name: "val", scope: !2541, file: !174, line: 895, type: !39)
!2543 = !DILocalVariable(name: "flags", scope: !2541, file: !174, line: 897, type: !46)
!2544 = !DILocalVariable(name: "qsize", scope: !2541, file: !174, line: 898, type: !47)
!2545 = !DILocation(line: 869, column: 25, scope: !2527)
!2546 = !DILocation(line: 869, column: 40, scope: !2527)
!2547 = !DILocation(line: 869, column: 52, scope: !2527)
!2548 = !DILocation(line: 870, column: 51, scope: !2527)
!2549 = !DILocation(line: 872, column: 11, scope: !2527)
!2550 = !DILocation(line: 872, column: 7, scope: !2527)
!2551 = !DILocation(line: 874, column: 24, scope: !2527)
!2552 = !DILocation(line: 874, column: 19, scope: !2527)
!2553 = !DILocation(line: 876, column: 9, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2527, file: !174, line: 876, column: 7)
!2555 = !DILocation(line: 876, column: 7, scope: !2527)
!2556 = !DILocation(line: 877, column: 5, scope: !2554)
!2557 = !DILocation(line: 879, column: 7, scope: !2539)
!2558 = !DILocation(line: 879, column: 14, scope: !2539)
!2559 = !DILocation(line: 879, column: 7, scope: !2527)
!2560 = !DILocation(line: 881, column: 31, scope: !2538)
!2561 = !DILocation(line: 883, column: 67, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2538, file: !174, line: 883, column: 11)
!2563 = !DILocation(line: 883, column: 11, scope: !2538)
!2564 = !DILocation(line: 884, column: 9, scope: !2562)
!2565 = !DILocation(line: 886, column: 32, scope: !2538)
!2566 = !DILocation(line: 886, column: 61, scope: !2538)
!2567 = !DILocation(line: 886, column: 58, scope: !2538)
!2568 = !DILocation(line: 886, column: 66, scope: !2538)
!2569 = !DILocation(line: 886, column: 22, scope: !2538)
!2570 = !DILocation(line: 886, column: 15, scope: !2538)
!2571 = !DILocation(line: 887, column: 11, scope: !2538)
!2572 = !DILocation(line: 888, column: 15, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2538, file: !174, line: 887, column: 11)
!2574 = !{i64 0, i64 8, !2475, i64 8, i64 8, !672}
!2575 = !DILocation(line: 888, column: 9, scope: !2573)
!2576 = !DILocation(line: 889, column: 20, scope: !2538)
!2577 = !DILocation(line: 889, column: 18, scope: !2538)
!2578 = !DILocation(line: 889, column: 7, scope: !2538)
!2579 = !DILocation(line: 889, column: 38, scope: !2538)
!2580 = !DILocation(line: 889, column: 31, scope: !2538)
!2581 = !DILocation(line: 889, column: 48, scope: !2538)
!2582 = !DILocation(line: 890, column: 14, scope: !2538)
!2583 = !DILocation(line: 891, column: 5, scope: !2538)
!2584 = !DILocation(line: 894, column: 19, scope: !2541)
!2585 = !DILocation(line: 894, column: 25, scope: !2541)
!2586 = !DILocation(line: 894, column: 12, scope: !2541)
!2587 = !DILocation(line: 895, column: 23, scope: !2541)
!2588 = !DILocation(line: 895, column: 11, scope: !2541)
!2589 = !DILocation(line: 897, column: 26, scope: !2541)
!2590 = !DILocation(line: 897, column: 32, scope: !2541)
!2591 = !DILocation(line: 897, column: 9, scope: !2541)
!2592 = !DILocation(line: 899, column: 55, scope: !2541)
!2593 = !DILocation(line: 900, column: 46, scope: !2541)
!2594 = !DILocation(line: 901, column: 55, scope: !2541)
!2595 = !DILocation(line: 902, column: 55, scope: !2541)
!2596 = !DILocation(line: 898, column: 20, scope: !2541)
!2597 = !DILocation(line: 898, column: 12, scope: !2541)
!2598 = !DILocation(line: 904, column: 14, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2541, file: !174, line: 904, column: 9)
!2600 = !DILocation(line: 904, column: 9, scope: !2541)
!2601 = !DILocation(line: 906, column: 35, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2599, file: !174, line: 905, column: 7)
!2603 = !DILocation(line: 906, column: 20, scope: !2602)
!2604 = !DILocation(line: 907, column: 17, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2602, file: !174, line: 907, column: 13)
!2606 = !DILocation(line: 907, column: 13, scope: !2602)
!2607 = !DILocation(line: 908, column: 11, scope: !2605)
!2608 = !DILocation(line: 220, column: 20, scope: !2430, inlinedAt: !2609)
!2609 = distinct !DILocation(line: 909, column: 27, scope: !2602)
!2610 = !DILocation(line: 222, column: 10, scope: !2430, inlinedAt: !2609)
!2611 = !DILocation(line: 909, column: 19, scope: !2602)
!2612 = !DILocation(line: 910, column: 69, scope: !2602)
!2613 = !DILocation(line: 912, column: 44, scope: !2602)
!2614 = !DILocation(line: 913, column: 44, scope: !2602)
!2615 = !DILocation(line: 910, column: 9, scope: !2602)
!2616 = !DILocation(line: 914, column: 7, scope: !2602)
!2617 = !DILocation(line: 916, column: 11, scope: !2541)
!2618 = !DILocation(line: 917, column: 5, scope: !2541)
!2619 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !174, file: !174, line: 928, type: !2620, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2622)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!39, !46, !36, !47}
!2622 = !{!2623, !2624, !2625}
!2623 = !DILocalVariable(name: "n", arg: 1, scope: !2619, file: !174, line: 928, type: !46)
!2624 = !DILocalVariable(name: "arg", arg: 2, scope: !2619, file: !174, line: 928, type: !36)
!2625 = !DILocalVariable(name: "argsize", arg: 3, scope: !2619, file: !174, line: 928, type: !47)
!2626 = !DILocation(line: 928, column: 21, scope: !2619)
!2627 = !DILocation(line: 928, column: 36, scope: !2619)
!2628 = !DILocation(line: 928, column: 48, scope: !2619)
!2629 = !DILocation(line: 930, column: 10, scope: !2619)
!2630 = !DILocation(line: 930, column: 3, scope: !2619)
!2631 = distinct !DISubprogram(name: "quotearg", scope: !174, file: !174, line: 934, type: !2632, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2634)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!39, !36}
!2634 = !{!2635}
!2635 = !DILocalVariable(name: "arg", arg: 1, scope: !2631, file: !174, line: 934, type: !36)
!2636 = !DILocation(line: 934, column: 23, scope: !2631)
!2637 = !DILocation(line: 922, column: 17, scope: !2517, inlinedAt: !2638)
!2638 = distinct !DILocation(line: 936, column: 10, scope: !2631)
!2639 = !DILocation(line: 922, column: 32, scope: !2517, inlinedAt: !2638)
!2640 = !DILocation(line: 924, column: 10, scope: !2517, inlinedAt: !2638)
!2641 = !DILocation(line: 936, column: 3, scope: !2631)
!2642 = distinct !DISubprogram(name: "quotearg_mem", scope: !174, file: !174, line: 940, type: !2643, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2645)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{!39, !36, !47}
!2645 = !{!2646, !2647}
!2646 = !DILocalVariable(name: "arg", arg: 1, scope: !2642, file: !174, line: 940, type: !36)
!2647 = !DILocalVariable(name: "argsize", arg: 2, scope: !2642, file: !174, line: 940, type: !47)
!2648 = !DILocation(line: 940, column: 27, scope: !2642)
!2649 = !DILocation(line: 940, column: 39, scope: !2642)
!2650 = !DILocation(line: 928, column: 21, scope: !2619, inlinedAt: !2651)
!2651 = distinct !DILocation(line: 942, column: 10, scope: !2642)
!2652 = !DILocation(line: 928, column: 36, scope: !2619, inlinedAt: !2651)
!2653 = !DILocation(line: 928, column: 48, scope: !2619, inlinedAt: !2651)
!2654 = !DILocation(line: 930, column: 10, scope: !2619, inlinedAt: !2651)
!2655 = !DILocation(line: 942, column: 3, scope: !2642)
!2656 = distinct !DISubprogram(name: "quotearg_n_style", scope: !174, file: !174, line: 946, type: !2657, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2659)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!39, !46, !21, !36}
!2659 = !{!2660, !2661, !2662, !2663}
!2660 = !DILocalVariable(name: "n", arg: 1, scope: !2656, file: !174, line: 946, type: !46)
!2661 = !DILocalVariable(name: "s", arg: 2, scope: !2656, file: !174, line: 946, type: !21)
!2662 = !DILocalVariable(name: "arg", arg: 3, scope: !2656, file: !174, line: 946, type: !36)
!2663 = !DILocalVariable(name: "o", scope: !2656, file: !174, line: 948, type: !1516)
!2664 = !DILocalVariable(name: "o", scope: !2665, file: !174, line: 187, type: !181)
!2665 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !174, file: !174, line: 185, type: !2666, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2668)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!181, !21}
!2668 = !{!2669, !2664}
!2669 = !DILocalVariable(name: "style", arg: 1, scope: !2665, file: !174, line: 185, type: !21)
!2670 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2671 = !DILocation(line: 187, column: 26, scope: !2665, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 948, column: 36, scope: !2656)
!2673 = !DILocation(line: 946, column: 23, scope: !2656)
!2674 = !DILocation(line: 946, column: 45, scope: !2656)
!2675 = !DILocation(line: 946, column: 60, scope: !2656)
!2676 = !DILocation(line: 948, column: 3, scope: !2656)
!2677 = !DILocation(line: 948, column: 32, scope: !2656)
!2678 = !DILocation(line: 185, column: 48, scope: !2665, inlinedAt: !2672)
!2679 = !DILocation(line: 187, column: 3, scope: !2665, inlinedAt: !2672)
!2680 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2681 = !DILocation(line: 188, column: 13, scope: !2682, inlinedAt: !2672)
!2682 = distinct !DILexicalBlock(scope: !2665, file: !174, line: 188, column: 7)
!2683 = !DILocation(line: 188, column: 7, scope: !2665, inlinedAt: !2672)
!2684 = !DILocation(line: 189, column: 5, scope: !2682, inlinedAt: !2672)
!2685 = !{!2686}
!2686 = distinct !{!2686, !2687, !"quoting_options_from_style: argument 0"}
!2687 = distinct !{!2687, !"quoting_options_from_style"}
!2688 = !DILocation(line: 191, column: 10, scope: !2665, inlinedAt: !2672)
!2689 = !DILocation(line: 192, column: 1, scope: !2665, inlinedAt: !2672)
!2690 = !DILocation(line: 949, column: 10, scope: !2656)
!2691 = !DILocation(line: 950, column: 1, scope: !2656)
!2692 = !DILocation(line: 949, column: 3, scope: !2656)
!2693 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !174, file: !174, line: 953, type: !2694, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2696)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!39, !46, !21, !36, !47}
!2696 = !{!2697, !2698, !2699, !2700, !2701}
!2697 = !DILocalVariable(name: "n", arg: 1, scope: !2693, file: !174, line: 953, type: !46)
!2698 = !DILocalVariable(name: "s", arg: 2, scope: !2693, file: !174, line: 953, type: !21)
!2699 = !DILocalVariable(name: "arg", arg: 3, scope: !2693, file: !174, line: 954, type: !36)
!2700 = !DILocalVariable(name: "argsize", arg: 4, scope: !2693, file: !174, line: 954, type: !47)
!2701 = !DILocalVariable(name: "o", scope: !2693, file: !174, line: 956, type: !1516)
!2702 = !DILocation(line: 187, column: 26, scope: !2665, inlinedAt: !2703)
!2703 = distinct !DILocation(line: 956, column: 36, scope: !2693)
!2704 = !DILocation(line: 953, column: 27, scope: !2693)
!2705 = !DILocation(line: 953, column: 49, scope: !2693)
!2706 = !DILocation(line: 954, column: 35, scope: !2693)
!2707 = !DILocation(line: 954, column: 47, scope: !2693)
!2708 = !DILocation(line: 956, column: 3, scope: !2693)
!2709 = !DILocation(line: 956, column: 32, scope: !2693)
!2710 = !DILocation(line: 185, column: 48, scope: !2665, inlinedAt: !2703)
!2711 = !DILocation(line: 187, column: 3, scope: !2665, inlinedAt: !2703)
!2712 = !DILocation(line: 188, column: 13, scope: !2682, inlinedAt: !2703)
!2713 = !DILocation(line: 188, column: 7, scope: !2665, inlinedAt: !2703)
!2714 = !DILocation(line: 189, column: 5, scope: !2682, inlinedAt: !2703)
!2715 = !{!2716}
!2716 = distinct !{!2716, !2717, !"quoting_options_from_style: argument 0"}
!2717 = distinct !{!2717, !"quoting_options_from_style"}
!2718 = !DILocation(line: 191, column: 10, scope: !2665, inlinedAt: !2703)
!2719 = !DILocation(line: 192, column: 1, scope: !2665, inlinedAt: !2703)
!2720 = !DILocation(line: 957, column: 10, scope: !2693)
!2721 = !DILocation(line: 958, column: 1, scope: !2693)
!2722 = !DILocation(line: 957, column: 3, scope: !2693)
!2723 = distinct !DISubprogram(name: "quotearg_style", scope: !174, file: !174, line: 961, type: !2724, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2726)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!39, !21, !36}
!2726 = !{!2727, !2728}
!2727 = !DILocalVariable(name: "s", arg: 1, scope: !2723, file: !174, line: 961, type: !21)
!2728 = !DILocalVariable(name: "arg", arg: 2, scope: !2723, file: !174, line: 961, type: !36)
!2729 = !DILocation(line: 187, column: 26, scope: !2665, inlinedAt: !2730)
!2730 = distinct !DILocation(line: 948, column: 36, scope: !2656, inlinedAt: !2731)
!2731 = distinct !DILocation(line: 963, column: 10, scope: !2723)
!2732 = !DILocation(line: 961, column: 36, scope: !2723)
!2733 = !DILocation(line: 961, column: 51, scope: !2723)
!2734 = !DILocation(line: 946, column: 23, scope: !2656, inlinedAt: !2731)
!2735 = !DILocation(line: 946, column: 45, scope: !2656, inlinedAt: !2731)
!2736 = !DILocation(line: 946, column: 60, scope: !2656, inlinedAt: !2731)
!2737 = !DILocation(line: 948, column: 3, scope: !2656, inlinedAt: !2731)
!2738 = !DILocation(line: 948, column: 32, scope: !2656, inlinedAt: !2731)
!2739 = !DILocation(line: 185, column: 48, scope: !2665, inlinedAt: !2730)
!2740 = !DILocation(line: 187, column: 3, scope: !2665, inlinedAt: !2730)
!2741 = !DILocation(line: 188, column: 13, scope: !2682, inlinedAt: !2730)
!2742 = !DILocation(line: 188, column: 7, scope: !2665, inlinedAt: !2730)
!2743 = !DILocation(line: 189, column: 5, scope: !2682, inlinedAt: !2730)
!2744 = !{!2745}
!2745 = distinct !{!2745, !2746, !"quoting_options_from_style: argument 0"}
!2746 = distinct !{!2746, !"quoting_options_from_style"}
!2747 = !DILocation(line: 191, column: 10, scope: !2665, inlinedAt: !2730)
!2748 = !DILocation(line: 192, column: 1, scope: !2665, inlinedAt: !2730)
!2749 = !DILocation(line: 949, column: 10, scope: !2656, inlinedAt: !2731)
!2750 = !DILocation(line: 950, column: 1, scope: !2656, inlinedAt: !2731)
!2751 = !DILocation(line: 963, column: 3, scope: !2723)
!2752 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !174, file: !174, line: 967, type: !2753, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2755)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!39, !21, !36, !47}
!2755 = !{!2756, !2757, !2758}
!2756 = !DILocalVariable(name: "s", arg: 1, scope: !2752, file: !174, line: 967, type: !21)
!2757 = !DILocalVariable(name: "arg", arg: 2, scope: !2752, file: !174, line: 967, type: !36)
!2758 = !DILocalVariable(name: "argsize", arg: 3, scope: !2752, file: !174, line: 967, type: !47)
!2759 = !DILocation(line: 187, column: 26, scope: !2665, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 956, column: 36, scope: !2693, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 969, column: 10, scope: !2752)
!2762 = !DILocation(line: 967, column: 40, scope: !2752)
!2763 = !DILocation(line: 967, column: 55, scope: !2752)
!2764 = !DILocation(line: 967, column: 67, scope: !2752)
!2765 = !DILocation(line: 953, column: 27, scope: !2693, inlinedAt: !2761)
!2766 = !DILocation(line: 953, column: 49, scope: !2693, inlinedAt: !2761)
!2767 = !DILocation(line: 954, column: 35, scope: !2693, inlinedAt: !2761)
!2768 = !DILocation(line: 954, column: 47, scope: !2693, inlinedAt: !2761)
!2769 = !DILocation(line: 956, column: 3, scope: !2693, inlinedAt: !2761)
!2770 = !DILocation(line: 956, column: 32, scope: !2693, inlinedAt: !2761)
!2771 = !DILocation(line: 185, column: 48, scope: !2665, inlinedAt: !2760)
!2772 = !DILocation(line: 187, column: 3, scope: !2665, inlinedAt: !2760)
!2773 = !DILocation(line: 188, column: 13, scope: !2682, inlinedAt: !2760)
!2774 = !DILocation(line: 188, column: 7, scope: !2665, inlinedAt: !2760)
!2775 = !DILocation(line: 189, column: 5, scope: !2682, inlinedAt: !2760)
!2776 = !{!2777}
!2777 = distinct !{!2777, !2778, !"quoting_options_from_style: argument 0"}
!2778 = distinct !{!2778, !"quoting_options_from_style"}
!2779 = !DILocation(line: 191, column: 10, scope: !2665, inlinedAt: !2760)
!2780 = !DILocation(line: 192, column: 1, scope: !2665, inlinedAt: !2760)
!2781 = !DILocation(line: 957, column: 10, scope: !2693, inlinedAt: !2761)
!2782 = !DILocation(line: 958, column: 1, scope: !2693, inlinedAt: !2761)
!2783 = !DILocation(line: 969, column: 3, scope: !2752)
!2784 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !174, file: !174, line: 973, type: !2785, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2787)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!39, !36, !47, !38}
!2787 = !{!2788, !2789, !2790, !2791}
!2788 = !DILocalVariable(name: "arg", arg: 1, scope: !2784, file: !174, line: 973, type: !36)
!2789 = !DILocalVariable(name: "argsize", arg: 2, scope: !2784, file: !174, line: 973, type: !47)
!2790 = !DILocalVariable(name: "ch", arg: 3, scope: !2784, file: !174, line: 973, type: !38)
!2791 = !DILocalVariable(name: "options", scope: !2784, file: !174, line: 975, type: !181)
!2792 = !DILocation(line: 973, column: 32, scope: !2784)
!2793 = !DILocation(line: 973, column: 44, scope: !2784)
!2794 = !DILocation(line: 973, column: 58, scope: !2784)
!2795 = !DILocation(line: 975, column: 3, scope: !2784)
!2796 = !DILocation(line: 976, column: 13, scope: !2784)
!2797 = !{i64 0, i64 4, !809, i64 4, i64 4, !826, i64 8, i64 32, !809, i64 40, i64 8, !672, i64 48, i64 8, !672}
!2798 = !DILocation(line: 975, column: 26, scope: !2784)
!2799 = !DILocation(line: 144, column: 43, scope: !1537, inlinedAt: !2800)
!2800 = distinct !DILocation(line: 977, column: 3, scope: !2784)
!2801 = !DILocation(line: 144, column: 51, scope: !1537, inlinedAt: !2800)
!2802 = !DILocation(line: 144, column: 58, scope: !1537, inlinedAt: !2800)
!2803 = !DILocation(line: 146, column: 17, scope: !1537, inlinedAt: !2800)
!2804 = !DILocation(line: 148, column: 62, scope: !1537, inlinedAt: !2800)
!2805 = !DILocation(line: 148, column: 57, scope: !1537, inlinedAt: !2800)
!2806 = !DILocation(line: 147, column: 17, scope: !1537, inlinedAt: !2800)
!2807 = !DILocation(line: 149, column: 18, scope: !1537, inlinedAt: !2800)
!2808 = !DILocation(line: 149, column: 15, scope: !1537, inlinedAt: !2800)
!2809 = !DILocation(line: 149, column: 7, scope: !1537, inlinedAt: !2800)
!2810 = !DILocation(line: 150, column: 12, scope: !1537, inlinedAt: !2800)
!2811 = !DILocation(line: 150, column: 15, scope: !1537, inlinedAt: !2800)
!2812 = !DILocation(line: 150, column: 25, scope: !1537, inlinedAt: !2800)
!2813 = !DILocation(line: 150, column: 7, scope: !1537, inlinedAt: !2800)
!2814 = !DILocation(line: 151, column: 18, scope: !1537, inlinedAt: !2800)
!2815 = !DILocation(line: 151, column: 23, scope: !1537, inlinedAt: !2800)
!2816 = !DILocation(line: 151, column: 6, scope: !1537, inlinedAt: !2800)
!2817 = !DILocation(line: 978, column: 10, scope: !2784)
!2818 = !DILocation(line: 979, column: 1, scope: !2784)
!2819 = !DILocation(line: 978, column: 3, scope: !2784)
!2820 = distinct !DISubprogram(name: "quotearg_char", scope: !174, file: !174, line: 982, type: !2821, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2823)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!39, !36, !38}
!2823 = !{!2824, !2825}
!2824 = !DILocalVariable(name: "arg", arg: 1, scope: !2820, file: !174, line: 982, type: !36)
!2825 = !DILocalVariable(name: "ch", arg: 2, scope: !2820, file: !174, line: 982, type: !38)
!2826 = !DILocation(line: 982, column: 28, scope: !2820)
!2827 = !DILocation(line: 982, column: 38, scope: !2820)
!2828 = !DILocation(line: 973, column: 32, scope: !2784, inlinedAt: !2829)
!2829 = distinct !DILocation(line: 984, column: 10, scope: !2820)
!2830 = !DILocation(line: 973, column: 44, scope: !2784, inlinedAt: !2829)
!2831 = !DILocation(line: 973, column: 58, scope: !2784, inlinedAt: !2829)
!2832 = !DILocation(line: 975, column: 3, scope: !2784, inlinedAt: !2829)
!2833 = !DILocation(line: 976, column: 13, scope: !2784, inlinedAt: !2829)
!2834 = !DILocation(line: 975, column: 26, scope: !2784, inlinedAt: !2829)
!2835 = !DILocation(line: 144, column: 43, scope: !1537, inlinedAt: !2836)
!2836 = distinct !DILocation(line: 977, column: 3, scope: !2784, inlinedAt: !2829)
!2837 = !DILocation(line: 144, column: 51, scope: !1537, inlinedAt: !2836)
!2838 = !DILocation(line: 144, column: 58, scope: !1537, inlinedAt: !2836)
!2839 = !DILocation(line: 146, column: 17, scope: !1537, inlinedAt: !2836)
!2840 = !DILocation(line: 148, column: 62, scope: !1537, inlinedAt: !2836)
!2841 = !DILocation(line: 148, column: 57, scope: !1537, inlinedAt: !2836)
!2842 = !DILocation(line: 147, column: 17, scope: !1537, inlinedAt: !2836)
!2843 = !DILocation(line: 149, column: 18, scope: !1537, inlinedAt: !2836)
!2844 = !DILocation(line: 149, column: 15, scope: !1537, inlinedAt: !2836)
!2845 = !DILocation(line: 149, column: 7, scope: !1537, inlinedAt: !2836)
!2846 = !DILocation(line: 150, column: 12, scope: !1537, inlinedAt: !2836)
!2847 = !DILocation(line: 150, column: 15, scope: !1537, inlinedAt: !2836)
!2848 = !DILocation(line: 150, column: 25, scope: !1537, inlinedAt: !2836)
!2849 = !DILocation(line: 150, column: 7, scope: !1537, inlinedAt: !2836)
!2850 = !DILocation(line: 151, column: 18, scope: !1537, inlinedAt: !2836)
!2851 = !DILocation(line: 151, column: 23, scope: !1537, inlinedAt: !2836)
!2852 = !DILocation(line: 151, column: 6, scope: !1537, inlinedAt: !2836)
!2853 = !DILocation(line: 978, column: 10, scope: !2784, inlinedAt: !2829)
!2854 = !DILocation(line: 979, column: 1, scope: !2784, inlinedAt: !2829)
!2855 = !DILocation(line: 984, column: 3, scope: !2820)
!2856 = distinct !DISubprogram(name: "quotearg_colon", scope: !174, file: !174, line: 988, type: !2632, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2857)
!2857 = !{!2858}
!2858 = !DILocalVariable(name: "arg", arg: 1, scope: !2856, file: !174, line: 988, type: !36)
!2859 = !DILocation(line: 988, column: 29, scope: !2856)
!2860 = !DILocation(line: 982, column: 28, scope: !2820, inlinedAt: !2861)
!2861 = distinct !DILocation(line: 990, column: 10, scope: !2856)
!2862 = !DILocation(line: 982, column: 38, scope: !2820, inlinedAt: !2861)
!2863 = !DILocation(line: 973, column: 32, scope: !2784, inlinedAt: !2864)
!2864 = distinct !DILocation(line: 984, column: 10, scope: !2820, inlinedAt: !2861)
!2865 = !DILocation(line: 973, column: 44, scope: !2784, inlinedAt: !2864)
!2866 = !DILocation(line: 973, column: 58, scope: !2784, inlinedAt: !2864)
!2867 = !DILocation(line: 975, column: 3, scope: !2784, inlinedAt: !2864)
!2868 = !DILocation(line: 976, column: 13, scope: !2784, inlinedAt: !2864)
!2869 = !DILocation(line: 975, column: 26, scope: !2784, inlinedAt: !2864)
!2870 = !DILocation(line: 144, column: 43, scope: !1537, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 977, column: 3, scope: !2784, inlinedAt: !2864)
!2872 = !DILocation(line: 144, column: 51, scope: !1537, inlinedAt: !2871)
!2873 = !DILocation(line: 144, column: 58, scope: !1537, inlinedAt: !2871)
!2874 = !DILocation(line: 146, column: 17, scope: !1537, inlinedAt: !2871)
!2875 = !DILocation(line: 148, column: 57, scope: !1537, inlinedAt: !2871)
!2876 = !DILocation(line: 147, column: 17, scope: !1537, inlinedAt: !2871)
!2877 = !DILocation(line: 149, column: 7, scope: !1537, inlinedAt: !2871)
!2878 = !DILocation(line: 150, column: 12, scope: !1537, inlinedAt: !2871)
!2879 = !DILocation(line: 151, column: 6, scope: !1537, inlinedAt: !2871)
!2880 = !DILocation(line: 978, column: 10, scope: !2784, inlinedAt: !2864)
!2881 = !DILocation(line: 979, column: 1, scope: !2784, inlinedAt: !2864)
!2882 = !DILocation(line: 990, column: 3, scope: !2856)
!2883 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !174, file: !174, line: 994, type: !2643, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2884)
!2884 = !{!2885, !2886}
!2885 = !DILocalVariable(name: "arg", arg: 1, scope: !2883, file: !174, line: 994, type: !36)
!2886 = !DILocalVariable(name: "argsize", arg: 2, scope: !2883, file: !174, line: 994, type: !47)
!2887 = !DILocation(line: 994, column: 33, scope: !2883)
!2888 = !DILocation(line: 994, column: 45, scope: !2883)
!2889 = !DILocation(line: 973, column: 32, scope: !2784, inlinedAt: !2890)
!2890 = distinct !DILocation(line: 996, column: 10, scope: !2883)
!2891 = !DILocation(line: 973, column: 44, scope: !2784, inlinedAt: !2890)
!2892 = !DILocation(line: 973, column: 58, scope: !2784, inlinedAt: !2890)
!2893 = !DILocation(line: 975, column: 3, scope: !2784, inlinedAt: !2890)
!2894 = !DILocation(line: 976, column: 13, scope: !2784, inlinedAt: !2890)
!2895 = !DILocation(line: 975, column: 26, scope: !2784, inlinedAt: !2890)
!2896 = !DILocation(line: 144, column: 43, scope: !1537, inlinedAt: !2897)
!2897 = distinct !DILocation(line: 977, column: 3, scope: !2784, inlinedAt: !2890)
!2898 = !DILocation(line: 144, column: 51, scope: !1537, inlinedAt: !2897)
!2899 = !DILocation(line: 144, column: 58, scope: !1537, inlinedAt: !2897)
!2900 = !DILocation(line: 146, column: 17, scope: !1537, inlinedAt: !2897)
!2901 = !DILocation(line: 148, column: 57, scope: !1537, inlinedAt: !2897)
!2902 = !DILocation(line: 147, column: 17, scope: !1537, inlinedAt: !2897)
!2903 = !DILocation(line: 149, column: 7, scope: !1537, inlinedAt: !2897)
!2904 = !DILocation(line: 150, column: 12, scope: !1537, inlinedAt: !2897)
!2905 = !DILocation(line: 151, column: 6, scope: !1537, inlinedAt: !2897)
!2906 = !DILocation(line: 978, column: 10, scope: !2784, inlinedAt: !2890)
!2907 = !DILocation(line: 979, column: 1, scope: !2784, inlinedAt: !2890)
!2908 = !DILocation(line: 996, column: 3, scope: !2883)
!2909 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !174, file: !174, line: 1000, type: !2657, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2910)
!2910 = !{!2911, !2912, !2913, !2914}
!2911 = !DILocalVariable(name: "n", arg: 1, scope: !2909, file: !174, line: 1000, type: !46)
!2912 = !DILocalVariable(name: "s", arg: 2, scope: !2909, file: !174, line: 1000, type: !21)
!2913 = !DILocalVariable(name: "arg", arg: 3, scope: !2909, file: !174, line: 1000, type: !36)
!2914 = !DILocalVariable(name: "options", scope: !2909, file: !174, line: 1002, type: !181)
!2915 = !DILocation(line: 187, column: 26, scope: !2665, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 1003, column: 13, scope: !2909)
!2917 = !DILocation(line: 1000, column: 29, scope: !2909)
!2918 = !DILocation(line: 1000, column: 51, scope: !2909)
!2919 = !DILocation(line: 1000, column: 66, scope: !2909)
!2920 = !DILocation(line: 1002, column: 3, scope: !2909)
!2921 = !DILocation(line: 185, column: 48, scope: !2665, inlinedAt: !2916)
!2922 = !DILocation(line: 187, column: 3, scope: !2665, inlinedAt: !2916)
!2923 = !DILocation(line: 188, column: 13, scope: !2682, inlinedAt: !2916)
!2924 = !DILocation(line: 188, column: 7, scope: !2665, inlinedAt: !2916)
!2925 = !DILocation(line: 189, column: 5, scope: !2682, inlinedAt: !2916)
!2926 = !{!2927}
!2927 = distinct !{!2927, !2928, !"quoting_options_from_style: argument 0"}
!2928 = distinct !{!2928, !"quoting_options_from_style"}
!2929 = !DILocation(line: 191, column: 10, scope: !2665, inlinedAt: !2916)
!2930 = !DILocation(line: 192, column: 1, scope: !2665, inlinedAt: !2916)
!2931 = !DILocation(line: 1003, column: 13, scope: !2909)
!2932 = !DILocation(line: 1002, column: 26, scope: !2909)
!2933 = !DILocation(line: 144, column: 43, scope: !1537, inlinedAt: !2934)
!2934 = distinct !DILocation(line: 1004, column: 3, scope: !2909)
!2935 = !DILocation(line: 144, column: 51, scope: !1537, inlinedAt: !2934)
!2936 = !DILocation(line: 144, column: 58, scope: !1537, inlinedAt: !2934)
!2937 = !DILocation(line: 146, column: 17, scope: !1537, inlinedAt: !2934)
!2938 = !DILocation(line: 148, column: 57, scope: !1537, inlinedAt: !2934)
!2939 = !DILocation(line: 147, column: 17, scope: !1537, inlinedAt: !2934)
!2940 = !DILocation(line: 149, column: 7, scope: !1537, inlinedAt: !2934)
!2941 = !DILocation(line: 150, column: 12, scope: !1537, inlinedAt: !2934)
!2942 = !DILocation(line: 151, column: 6, scope: !1537, inlinedAt: !2934)
!2943 = !DILocation(line: 1005, column: 10, scope: !2909)
!2944 = !DILocation(line: 1006, column: 1, scope: !2909)
!2945 = !DILocation(line: 1005, column: 3, scope: !2909)
!2946 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !174, file: !174, line: 1009, type: !2947, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2949)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!39, !46, !36, !36, !36}
!2949 = !{!2950, !2951, !2952, !2953}
!2950 = !DILocalVariable(name: "n", arg: 1, scope: !2946, file: !174, line: 1009, type: !46)
!2951 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2946, file: !174, line: 1009, type: !36)
!2952 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2946, file: !174, line: 1010, type: !36)
!2953 = !DILocalVariable(name: "arg", arg: 4, scope: !2946, file: !174, line: 1010, type: !36)
!2954 = !DILocation(line: 1009, column: 24, scope: !2946)
!2955 = !DILocation(line: 1009, column: 39, scope: !2946)
!2956 = !DILocation(line: 1010, column: 32, scope: !2946)
!2957 = !DILocation(line: 1010, column: 57, scope: !2946)
!2958 = !DILocalVariable(name: "n", arg: 1, scope: !2959, file: !174, line: 1017, type: !46)
!2959 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !174, file: !174, line: 1017, type: !2960, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2962)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!39, !46, !36, !36, !36, !47}
!2962 = !{!2958, !2963, !2964, !2965, !2966, !2967}
!2963 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2959, file: !174, line: 1017, type: !36)
!2964 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2959, file: !174, line: 1018, type: !36)
!2965 = !DILocalVariable(name: "arg", arg: 4, scope: !2959, file: !174, line: 1019, type: !36)
!2966 = !DILocalVariable(name: "argsize", arg: 5, scope: !2959, file: !174, line: 1019, type: !47)
!2967 = !DILocalVariable(name: "o", scope: !2959, file: !174, line: 1021, type: !181)
!2968 = !DILocation(line: 1017, column: 28, scope: !2959, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 1012, column: 10, scope: !2946)
!2970 = !DILocation(line: 1017, column: 43, scope: !2959, inlinedAt: !2969)
!2971 = !DILocation(line: 1018, column: 36, scope: !2959, inlinedAt: !2969)
!2972 = !DILocation(line: 1019, column: 36, scope: !2959, inlinedAt: !2969)
!2973 = !DILocation(line: 1019, column: 48, scope: !2959, inlinedAt: !2969)
!2974 = !DILocation(line: 1021, column: 3, scope: !2959, inlinedAt: !2969)
!2975 = !DILocation(line: 1021, column: 30, scope: !2959, inlinedAt: !2969)
!2976 = !DILocation(line: 1021, column: 26, scope: !2959, inlinedAt: !2969)
!2977 = !DILocation(line: 171, column: 45, scope: !1586, inlinedAt: !2978)
!2978 = distinct !DILocation(line: 1022, column: 3, scope: !2959, inlinedAt: !2969)
!2979 = !DILocation(line: 172, column: 33, scope: !1586, inlinedAt: !2978)
!2980 = !DILocation(line: 172, column: 57, scope: !1586, inlinedAt: !2978)
!2981 = !DILocation(line: 176, column: 6, scope: !1586, inlinedAt: !2978)
!2982 = !DILocation(line: 176, column: 12, scope: !1586, inlinedAt: !2978)
!2983 = !DILocation(line: 177, column: 8, scope: !1602, inlinedAt: !2978)
!2984 = !DILocation(line: 177, column: 23, scope: !1602, inlinedAt: !2978)
!2985 = !DILocation(line: 177, column: 19, scope: !1602, inlinedAt: !2978)
!2986 = !DILocation(line: 178, column: 5, scope: !1602, inlinedAt: !2978)
!2987 = !DILocation(line: 179, column: 6, scope: !1586, inlinedAt: !2978)
!2988 = !DILocation(line: 179, column: 17, scope: !1586, inlinedAt: !2978)
!2989 = !DILocation(line: 180, column: 6, scope: !1586, inlinedAt: !2978)
!2990 = !DILocation(line: 180, column: 18, scope: !1586, inlinedAt: !2978)
!2991 = !DILocation(line: 1023, column: 10, scope: !2959, inlinedAt: !2969)
!2992 = !DILocation(line: 1024, column: 1, scope: !2959, inlinedAt: !2969)
!2993 = !DILocation(line: 1012, column: 3, scope: !2946)
!2994 = !DILocation(line: 1017, column: 28, scope: !2959)
!2995 = !DILocation(line: 1017, column: 43, scope: !2959)
!2996 = !DILocation(line: 1018, column: 36, scope: !2959)
!2997 = !DILocation(line: 1019, column: 36, scope: !2959)
!2998 = !DILocation(line: 1019, column: 48, scope: !2959)
!2999 = !DILocation(line: 1021, column: 3, scope: !2959)
!3000 = !DILocation(line: 1021, column: 30, scope: !2959)
!3001 = !DILocation(line: 1021, column: 26, scope: !2959)
!3002 = !DILocation(line: 171, column: 45, scope: !1586, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 1022, column: 3, scope: !2959)
!3004 = !DILocation(line: 172, column: 33, scope: !1586, inlinedAt: !3003)
!3005 = !DILocation(line: 172, column: 57, scope: !1586, inlinedAt: !3003)
!3006 = !DILocation(line: 176, column: 6, scope: !1586, inlinedAt: !3003)
!3007 = !DILocation(line: 176, column: 12, scope: !1586, inlinedAt: !3003)
!3008 = !DILocation(line: 177, column: 8, scope: !1602, inlinedAt: !3003)
!3009 = !DILocation(line: 177, column: 23, scope: !1602, inlinedAt: !3003)
!3010 = !DILocation(line: 177, column: 19, scope: !1602, inlinedAt: !3003)
!3011 = !DILocation(line: 178, column: 5, scope: !1602, inlinedAt: !3003)
!3012 = !DILocation(line: 179, column: 6, scope: !1586, inlinedAt: !3003)
!3013 = !DILocation(line: 179, column: 17, scope: !1586, inlinedAt: !3003)
!3014 = !DILocation(line: 180, column: 6, scope: !1586, inlinedAt: !3003)
!3015 = !DILocation(line: 180, column: 18, scope: !1586, inlinedAt: !3003)
!3016 = !DILocation(line: 1023, column: 10, scope: !2959)
!3017 = !DILocation(line: 1024, column: 1, scope: !2959)
!3018 = !DILocation(line: 1023, column: 3, scope: !2959)
!3019 = distinct !DISubprogram(name: "quotearg_custom", scope: !174, file: !174, line: 1027, type: !3020, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3022)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!39, !36, !36, !36}
!3022 = !{!3023, !3024, !3025}
!3023 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3019, file: !174, line: 1027, type: !36)
!3024 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3019, file: !174, line: 1027, type: !36)
!3025 = !DILocalVariable(name: "arg", arg: 3, scope: !3019, file: !174, line: 1028, type: !36)
!3026 = !DILocation(line: 1027, column: 30, scope: !3019)
!3027 = !DILocation(line: 1027, column: 54, scope: !3019)
!3028 = !DILocation(line: 1028, column: 30, scope: !3019)
!3029 = !DILocation(line: 1009, column: 24, scope: !2946, inlinedAt: !3030)
!3030 = distinct !DILocation(line: 1030, column: 10, scope: !3019)
!3031 = !DILocation(line: 1009, column: 39, scope: !2946, inlinedAt: !3030)
!3032 = !DILocation(line: 1010, column: 32, scope: !2946, inlinedAt: !3030)
!3033 = !DILocation(line: 1010, column: 57, scope: !2946, inlinedAt: !3030)
!3034 = !DILocation(line: 1017, column: 28, scope: !2959, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 1012, column: 10, scope: !2946, inlinedAt: !3030)
!3036 = !DILocation(line: 1017, column: 43, scope: !2959, inlinedAt: !3035)
!3037 = !DILocation(line: 1018, column: 36, scope: !2959, inlinedAt: !3035)
!3038 = !DILocation(line: 1019, column: 36, scope: !2959, inlinedAt: !3035)
!3039 = !DILocation(line: 1019, column: 48, scope: !2959, inlinedAt: !3035)
!3040 = !DILocation(line: 1021, column: 3, scope: !2959, inlinedAt: !3035)
!3041 = !DILocation(line: 1021, column: 30, scope: !2959, inlinedAt: !3035)
!3042 = !DILocation(line: 1021, column: 26, scope: !2959, inlinedAt: !3035)
!3043 = !DILocation(line: 171, column: 45, scope: !1586, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 1022, column: 3, scope: !2959, inlinedAt: !3035)
!3045 = !DILocation(line: 172, column: 33, scope: !1586, inlinedAt: !3044)
!3046 = !DILocation(line: 172, column: 57, scope: !1586, inlinedAt: !3044)
!3047 = !DILocation(line: 176, column: 6, scope: !1586, inlinedAt: !3044)
!3048 = !DILocation(line: 176, column: 12, scope: !1586, inlinedAt: !3044)
!3049 = !DILocation(line: 177, column: 8, scope: !1602, inlinedAt: !3044)
!3050 = !DILocation(line: 177, column: 23, scope: !1602, inlinedAt: !3044)
!3051 = !DILocation(line: 177, column: 19, scope: !1602, inlinedAt: !3044)
!3052 = !DILocation(line: 178, column: 5, scope: !1602, inlinedAt: !3044)
!3053 = !DILocation(line: 179, column: 6, scope: !1586, inlinedAt: !3044)
!3054 = !DILocation(line: 179, column: 17, scope: !1586, inlinedAt: !3044)
!3055 = !DILocation(line: 180, column: 6, scope: !1586, inlinedAt: !3044)
!3056 = !DILocation(line: 180, column: 18, scope: !1586, inlinedAt: !3044)
!3057 = !DILocation(line: 1023, column: 10, scope: !2959, inlinedAt: !3035)
!3058 = !DILocation(line: 1024, column: 1, scope: !2959, inlinedAt: !3035)
!3059 = !DILocation(line: 1030, column: 3, scope: !3019)
!3060 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !174, file: !174, line: 1034, type: !3061, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3063)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!39, !36, !36, !36, !47}
!3063 = !{!3064, !3065, !3066, !3067}
!3064 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3060, file: !174, line: 1034, type: !36)
!3065 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3060, file: !174, line: 1034, type: !36)
!3066 = !DILocalVariable(name: "arg", arg: 3, scope: !3060, file: !174, line: 1035, type: !36)
!3067 = !DILocalVariable(name: "argsize", arg: 4, scope: !3060, file: !174, line: 1035, type: !47)
!3068 = !DILocation(line: 1034, column: 34, scope: !3060)
!3069 = !DILocation(line: 1034, column: 58, scope: !3060)
!3070 = !DILocation(line: 1035, column: 34, scope: !3060)
!3071 = !DILocation(line: 1035, column: 46, scope: !3060)
!3072 = !DILocation(line: 1017, column: 28, scope: !2959, inlinedAt: !3073)
!3073 = distinct !DILocation(line: 1037, column: 10, scope: !3060)
!3074 = !DILocation(line: 1017, column: 43, scope: !2959, inlinedAt: !3073)
!3075 = !DILocation(line: 1018, column: 36, scope: !2959, inlinedAt: !3073)
!3076 = !DILocation(line: 1019, column: 36, scope: !2959, inlinedAt: !3073)
!3077 = !DILocation(line: 1019, column: 48, scope: !2959, inlinedAt: !3073)
!3078 = !DILocation(line: 1021, column: 3, scope: !2959, inlinedAt: !3073)
!3079 = !DILocation(line: 1021, column: 30, scope: !2959, inlinedAt: !3073)
!3080 = !DILocation(line: 1021, column: 26, scope: !2959, inlinedAt: !3073)
!3081 = !DILocation(line: 171, column: 45, scope: !1586, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 1022, column: 3, scope: !2959, inlinedAt: !3073)
!3083 = !DILocation(line: 172, column: 33, scope: !1586, inlinedAt: !3082)
!3084 = !DILocation(line: 172, column: 57, scope: !1586, inlinedAt: !3082)
!3085 = !DILocation(line: 176, column: 6, scope: !1586, inlinedAt: !3082)
!3086 = !DILocation(line: 176, column: 12, scope: !1586, inlinedAt: !3082)
!3087 = !DILocation(line: 177, column: 8, scope: !1602, inlinedAt: !3082)
!3088 = !DILocation(line: 177, column: 23, scope: !1602, inlinedAt: !3082)
!3089 = !DILocation(line: 177, column: 19, scope: !1602, inlinedAt: !3082)
!3090 = !DILocation(line: 178, column: 5, scope: !1602, inlinedAt: !3082)
!3091 = !DILocation(line: 179, column: 6, scope: !1586, inlinedAt: !3082)
!3092 = !DILocation(line: 179, column: 17, scope: !1586, inlinedAt: !3082)
!3093 = !DILocation(line: 180, column: 6, scope: !1586, inlinedAt: !3082)
!3094 = !DILocation(line: 180, column: 18, scope: !1586, inlinedAt: !3082)
!3095 = !DILocation(line: 1023, column: 10, scope: !2959, inlinedAt: !3073)
!3096 = !DILocation(line: 1024, column: 1, scope: !2959, inlinedAt: !3073)
!3097 = !DILocation(line: 1037, column: 3, scope: !3060)
!3098 = distinct !DISubprogram(name: "quote_n_mem", scope: !174, file: !174, line: 1052, type: !3099, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3101)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!36, !46, !36, !47}
!3101 = !{!3102, !3103, !3104}
!3102 = !DILocalVariable(name: "n", arg: 1, scope: !3098, file: !174, line: 1052, type: !46)
!3103 = !DILocalVariable(name: "arg", arg: 2, scope: !3098, file: !174, line: 1052, type: !36)
!3104 = !DILocalVariable(name: "argsize", arg: 3, scope: !3098, file: !174, line: 1052, type: !47)
!3105 = !DILocation(line: 1052, column: 18, scope: !3098)
!3106 = !DILocation(line: 1052, column: 33, scope: !3098)
!3107 = !DILocation(line: 1052, column: 45, scope: !3098)
!3108 = !DILocation(line: 1054, column: 10, scope: !3098)
!3109 = !DILocation(line: 1054, column: 3, scope: !3098)
!3110 = distinct !DISubprogram(name: "quote_mem", scope: !174, file: !174, line: 1058, type: !3111, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3113)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!36, !36, !47}
!3113 = !{!3114, !3115}
!3114 = !DILocalVariable(name: "arg", arg: 1, scope: !3110, file: !174, line: 1058, type: !36)
!3115 = !DILocalVariable(name: "argsize", arg: 2, scope: !3110, file: !174, line: 1058, type: !47)
!3116 = !DILocation(line: 1058, column: 24, scope: !3110)
!3117 = !DILocation(line: 1058, column: 36, scope: !3110)
!3118 = !DILocation(line: 1052, column: 18, scope: !3098, inlinedAt: !3119)
!3119 = distinct !DILocation(line: 1060, column: 10, scope: !3110)
!3120 = !DILocation(line: 1052, column: 33, scope: !3098, inlinedAt: !3119)
!3121 = !DILocation(line: 1052, column: 45, scope: !3098, inlinedAt: !3119)
!3122 = !DILocation(line: 1054, column: 10, scope: !3098, inlinedAt: !3119)
!3123 = !DILocation(line: 1060, column: 3, scope: !3110)
!3124 = distinct !DISubprogram(name: "quote_n", scope: !174, file: !174, line: 1064, type: !3125, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3127)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!36, !46, !36}
!3127 = !{!3128, !3129}
!3128 = !DILocalVariable(name: "n", arg: 1, scope: !3124, file: !174, line: 1064, type: !46)
!3129 = !DILocalVariable(name: "arg", arg: 2, scope: !3124, file: !174, line: 1064, type: !36)
!3130 = !DILocation(line: 1064, column: 14, scope: !3124)
!3131 = !DILocation(line: 1064, column: 29, scope: !3124)
!3132 = !DILocation(line: 1052, column: 18, scope: !3098, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 1066, column: 10, scope: !3124)
!3134 = !DILocation(line: 1052, column: 33, scope: !3098, inlinedAt: !3133)
!3135 = !DILocation(line: 1052, column: 45, scope: !3098, inlinedAt: !3133)
!3136 = !DILocation(line: 1054, column: 10, scope: !3098, inlinedAt: !3133)
!3137 = !DILocation(line: 1066, column: 3, scope: !3124)
!3138 = distinct !DISubprogram(name: "quote", scope: !174, file: !174, line: 1070, type: !3139, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3141)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!36, !36}
!3141 = !{!3142}
!3142 = !DILocalVariable(name: "arg", arg: 1, scope: !3138, file: !174, line: 1070, type: !36)
!3143 = !DILocation(line: 1070, column: 20, scope: !3138)
!3144 = !DILocation(line: 1064, column: 14, scope: !3124, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 1072, column: 10, scope: !3138)
!3146 = !DILocation(line: 1064, column: 29, scope: !3124, inlinedAt: !3145)
!3147 = !DILocation(line: 1052, column: 18, scope: !3098, inlinedAt: !3148)
!3148 = distinct !DILocation(line: 1066, column: 10, scope: !3124, inlinedAt: !3145)
!3149 = !DILocation(line: 1052, column: 33, scope: !3098, inlinedAt: !3148)
!3150 = !DILocation(line: 1052, column: 45, scope: !3098, inlinedAt: !3148)
!3151 = !DILocation(line: 1054, column: 10, scope: !3098, inlinedAt: !3148)
!3152 = !DILocation(line: 1072, column: 3, scope: !3138)
!3153 = distinct !DISubprogram(name: "dup_safer", scope: !3154, file: !3154, line: 31, type: !3155, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !612, variables: !3157)
!3154 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!46, !46}
!3157 = !{!3158}
!3158 = !DILocalVariable(name: "fd", arg: 1, scope: !3153, file: !3154, line: 31, type: !46)
!3159 = !DILocation(line: 31, column: 16, scope: !3153)
!3160 = !DILocation(line: 33, column: 10, scope: !3153)
!3161 = !DILocation(line: 33, column: 3, scope: !3153)
!3162 = distinct !DISubprogram(name: "version_etc_arn", scope: !618, file: !618, line: 62, type: !3163, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !3205)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{null, !3165, !36, !36, !36, !984, !47}
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !720, line: 7, baseType: !3167)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !722, line: 241, size: 1728, elements: !3168)
!3168 = !{!3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3167, file: !722, line: 242, baseType: !46, size: 32)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3167, file: !722, line: 247, baseType: !39, size: 64, offset: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3167, file: !722, line: 248, baseType: !39, size: 64, offset: 128)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3167, file: !722, line: 249, baseType: !39, size: 64, offset: 192)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3167, file: !722, line: 250, baseType: !39, size: 64, offset: 256)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3167, file: !722, line: 251, baseType: !39, size: 64, offset: 320)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3167, file: !722, line: 252, baseType: !39, size: 64, offset: 384)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3167, file: !722, line: 253, baseType: !39, size: 64, offset: 448)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3167, file: !722, line: 254, baseType: !39, size: 64, offset: 512)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3167, file: !722, line: 256, baseType: !39, size: 64, offset: 576)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3167, file: !722, line: 257, baseType: !39, size: 64, offset: 640)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3167, file: !722, line: 258, baseType: !39, size: 64, offset: 704)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3167, file: !722, line: 260, baseType: !3182, size: 64, offset: 768)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !722, line: 156, size: 192, elements: !3184)
!3184 = !{!3185, !3186, !3188}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3183, file: !722, line: 157, baseType: !3182, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3183, file: !722, line: 158, baseType: !3187, size: 64, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3183, file: !722, line: 162, baseType: !46, size: 32, offset: 128)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3167, file: !722, line: 262, baseType: !3187, size: 64, offset: 832)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3167, file: !722, line: 264, baseType: !46, size: 32, offset: 896)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3167, file: !722, line: 268, baseType: !46, size: 32, offset: 928)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3167, file: !722, line: 270, baseType: !748, size: 64, offset: 960)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3167, file: !722, line: 274, baseType: !170, size: 16, offset: 1024)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3167, file: !722, line: 275, baseType: !753, size: 8, offset: 1040)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3167, file: !722, line: 276, baseType: !755, size: 8, offset: 1048)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3167, file: !722, line: 280, baseType: !757, size: 64, offset: 1088)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3167, file: !722, line: 289, baseType: !760, size: 64, offset: 1152)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3167, file: !722, line: 297, baseType: !40, size: 64, offset: 1216)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3167, file: !722, line: 298, baseType: !40, size: 64, offset: 1280)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3167, file: !722, line: 299, baseType: !40, size: 64, offset: 1344)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3167, file: !722, line: 300, baseType: !40, size: 64, offset: 1408)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3167, file: !722, line: 302, baseType: !47, size: 64, offset: 1472)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3167, file: !722, line: 303, baseType: !46, size: 32, offset: 1536)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3167, file: !722, line: 305, baseType: !768, size: 160, offset: 1568)
!3205 = !{!3206, !3207, !3208, !3209, !3210, !3211}
!3206 = !DILocalVariable(name: "stream", arg: 1, scope: !3162, file: !618, line: 62, type: !3165)
!3207 = !DILocalVariable(name: "command_name", arg: 2, scope: !3162, file: !618, line: 63, type: !36)
!3208 = !DILocalVariable(name: "package", arg: 3, scope: !3162, file: !618, line: 63, type: !36)
!3209 = !DILocalVariable(name: "version", arg: 4, scope: !3162, file: !618, line: 64, type: !36)
!3210 = !DILocalVariable(name: "authors", arg: 5, scope: !3162, file: !618, line: 65, type: !984)
!3211 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3162, file: !618, line: 65, type: !47)
!3212 = !DILocation(line: 62, column: 24, scope: !3162)
!3213 = !DILocation(line: 63, column: 30, scope: !3162)
!3214 = !DILocation(line: 63, column: 56, scope: !3162)
!3215 = !DILocation(line: 64, column: 30, scope: !3162)
!3216 = !DILocation(line: 65, column: 39, scope: !3162)
!3217 = !DILocation(line: 65, column: 55, scope: !3162)
!3218 = !DILocation(line: 67, column: 7, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3162, file: !618, line: 67, column: 7)
!3220 = !DILocation(line: 67, column: 7, scope: !3162)
!3221 = !DILocation(line: 68, column: 5, scope: !3219)
!3222 = !DILocation(line: 70, column: 5, scope: !3219)
!3223 = !DILocation(line: 84, column: 3, scope: !3162)
!3224 = !DILocation(line: 86, column: 3, scope: !3162)
!3225 = !DILocation(line: 95, column: 3, scope: !3162)
!3226 = !DILocation(line: 99, column: 7, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3162, file: !618, line: 96, column: 5)
!3228 = !DILocation(line: 102, column: 7, scope: !3227)
!3229 = !DILocation(line: 103, column: 7, scope: !3227)
!3230 = !DILocation(line: 106, column: 7, scope: !3227)
!3231 = !DILocation(line: 107, column: 7, scope: !3227)
!3232 = !DILocation(line: 110, column: 7, scope: !3227)
!3233 = !DILocation(line: 112, column: 7, scope: !3227)
!3234 = !DILocation(line: 117, column: 7, scope: !3227)
!3235 = !DILocation(line: 119, column: 7, scope: !3227)
!3236 = !DILocation(line: 124, column: 7, scope: !3227)
!3237 = !DILocation(line: 126, column: 7, scope: !3227)
!3238 = !DILocation(line: 131, column: 7, scope: !3227)
!3239 = !DILocation(line: 134, column: 7, scope: !3227)
!3240 = !DILocation(line: 139, column: 7, scope: !3227)
!3241 = !DILocation(line: 142, column: 7, scope: !3227)
!3242 = !DILocation(line: 147, column: 7, scope: !3227)
!3243 = !DILocation(line: 151, column: 7, scope: !3227)
!3244 = !DILocation(line: 156, column: 7, scope: !3227)
!3245 = !DILocation(line: 160, column: 7, scope: !3227)
!3246 = !DILocation(line: 167, column: 7, scope: !3227)
!3247 = !DILocation(line: 171, column: 7, scope: !3227)
!3248 = !DILocation(line: 173, column: 1, scope: !3162)
!3249 = distinct !DISubprogram(name: "version_etc_ar", scope: !618, file: !618, line: 180, type: !3250, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !3252)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{null, !3165, !36, !36, !36, !984}
!3252 = !{!3253, !3254, !3255, !3256, !3257, !3258}
!3253 = !DILocalVariable(name: "stream", arg: 1, scope: !3249, file: !618, line: 180, type: !3165)
!3254 = !DILocalVariable(name: "command_name", arg: 2, scope: !3249, file: !618, line: 181, type: !36)
!3255 = !DILocalVariable(name: "package", arg: 3, scope: !3249, file: !618, line: 181, type: !36)
!3256 = !DILocalVariable(name: "version", arg: 4, scope: !3249, file: !618, line: 182, type: !36)
!3257 = !DILocalVariable(name: "authors", arg: 5, scope: !3249, file: !618, line: 182, type: !984)
!3258 = !DILocalVariable(name: "n_authors", scope: !3249, file: !618, line: 184, type: !47)
!3259 = !DILocation(line: 180, column: 23, scope: !3249)
!3260 = !DILocation(line: 181, column: 29, scope: !3249)
!3261 = !DILocation(line: 181, column: 55, scope: !3249)
!3262 = !DILocation(line: 182, column: 29, scope: !3249)
!3263 = !DILocation(line: 182, column: 59, scope: !3249)
!3264 = !DILocation(line: 184, column: 10, scope: !3249)
!3265 = !DILocation(line: 186, column: 8, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3249, file: !618, line: 186, column: 3)
!3267 = !DILocation(line: 186, column: 23, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3266, file: !618, line: 186, column: 3)
!3269 = !DILocation(line: 186, column: 3, scope: !3266)
!3270 = !DILocation(line: 186, column: 52, scope: !3268)
!3271 = distinct !{!3271, !3269, !3272}
!3272 = !DILocation(line: 187, column: 5, scope: !3266)
!3273 = !DILocation(line: 188, column: 3, scope: !3249)
!3274 = !DILocation(line: 189, column: 1, scope: !3249)
!3275 = distinct !DISubprogram(name: "version_etc_va", scope: !618, file: !618, line: 196, type: !3276, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !3285)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{null, !3165, !36, !36, !36, !3278}
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !615, line: 189, size: 192, elements: !3280)
!3280 = !{!3281, !3282, !3283, !3284}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3279, file: !615, line: 189, baseType: !187, size: 32)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3279, file: !615, line: 189, baseType: !187, size: 32, offset: 32)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3279, file: !615, line: 189, baseType: !40, size: 64, offset: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3279, file: !615, line: 189, baseType: !40, size: 64, offset: 128)
!3285 = !{!3286, !3287, !3288, !3289, !3290, !3291, !3292}
!3286 = !DILocalVariable(name: "stream", arg: 1, scope: !3275, file: !618, line: 196, type: !3165)
!3287 = !DILocalVariable(name: "command_name", arg: 2, scope: !3275, file: !618, line: 197, type: !36)
!3288 = !DILocalVariable(name: "package", arg: 3, scope: !3275, file: !618, line: 197, type: !36)
!3289 = !DILocalVariable(name: "version", arg: 4, scope: !3275, file: !618, line: 198, type: !36)
!3290 = !DILocalVariable(name: "authors", arg: 5, scope: !3275, file: !618, line: 198, type: !3278)
!3291 = !DILocalVariable(name: "n_authors", scope: !3275, file: !618, line: 200, type: !47)
!3292 = !DILocalVariable(name: "authtab", scope: !3275, file: !618, line: 201, type: !3293)
!3293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 640, elements: !177)
!3294 = !DILocation(line: 196, column: 23, scope: !3275)
!3295 = !DILocation(line: 197, column: 29, scope: !3275)
!3296 = !DILocation(line: 197, column: 55, scope: !3275)
!3297 = !DILocation(line: 198, column: 29, scope: !3275)
!3298 = !DILocation(line: 198, column: 46, scope: !3275)
!3299 = !DILocation(line: 201, column: 3, scope: !3275)
!3300 = !DILocation(line: 201, column: 15, scope: !3275)
!3301 = !DILocation(line: 200, column: 10, scope: !3275)
!3302 = !DILocation(line: 205, column: 35, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3304, file: !618, line: 203, column: 3)
!3304 = distinct !DILexicalBlock(scope: !3275, file: !618, line: 203, column: 3)
!3305 = !DILocation(line: 205, column: 14, scope: !3303)
!3306 = !DILocation(line: 205, column: 33, scope: !3303)
!3307 = !DILocation(line: 205, column: 67, scope: !3303)
!3308 = !DILocation(line: 203, column: 3, scope: !3304)
!3309 = !DILocation(line: 208, column: 3, scope: !3275)
!3310 = !DILocation(line: 210, column: 1, scope: !3275)
!3311 = distinct !DISubprogram(name: "version_etc", scope: !618, file: !618, line: 227, type: !3312, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !3314)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{null, !3165, !36, !36, !36, null}
!3314 = !{!3315, !3316, !3317, !3318, !3319}
!3315 = !DILocalVariable(name: "stream", arg: 1, scope: !3311, file: !618, line: 227, type: !3165)
!3316 = !DILocalVariable(name: "command_name", arg: 2, scope: !3311, file: !618, line: 228, type: !36)
!3317 = !DILocalVariable(name: "package", arg: 3, scope: !3311, file: !618, line: 228, type: !36)
!3318 = !DILocalVariable(name: "version", arg: 4, scope: !3311, file: !618, line: 229, type: !36)
!3319 = !DILocalVariable(name: "authors", scope: !3311, file: !618, line: 231, type: !3320)
!3320 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1294, line: 46, baseType: !3321)
!3321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !236, line: 48, baseType: !3322)
!3322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !615, line: 231, baseType: !3323)
!3323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3279, size: 192, elements: !245)
!3324 = !DILocation(line: 227, column: 20, scope: !3311)
!3325 = !DILocation(line: 228, column: 26, scope: !3311)
!3326 = !DILocation(line: 228, column: 52, scope: !3311)
!3327 = !DILocation(line: 229, column: 26, scope: !3311)
!3328 = !DILocation(line: 231, column: 3, scope: !3311)
!3329 = !DILocation(line: 231, column: 11, scope: !3311)
!3330 = !DILocation(line: 233, column: 3, scope: !3311)
!3331 = !DILocation(line: 234, column: 3, scope: !3311)
!3332 = !DILocation(line: 235, column: 3, scope: !3311)
!3333 = !DILocation(line: 236, column: 1, scope: !3311)
!3334 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !618, file: !618, line: 239, type: !120, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !106)
!3335 = !DILocation(line: 245, column: 3, scope: !3334)
!3336 = !DILocation(line: 251, column: 3, scope: !3334)
!3337 = !DILocation(line: 256, column: 3, scope: !3334)
!3338 = !DILocation(line: 258, column: 1, scope: !3334)
!3339 = distinct !DISubprogram(name: "xnmalloc", scope: !626, file: !626, line: 105, type: !841, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !3340)
!3340 = !{!3341, !3342}
!3341 = !DILocalVariable(name: "n", arg: 1, scope: !3339, file: !626, line: 105, type: !47)
!3342 = !DILocalVariable(name: "s", arg: 2, scope: !3339, file: !626, line: 105, type: !47)
!3343 = !DILocation(line: 105, column: 18, scope: !3339)
!3344 = !DILocation(line: 105, column: 28, scope: !3339)
!3345 = !DILocation(line: 107, column: 7, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3339, file: !626, line: 107, column: 7)
!3347 = !DILocation(line: 107, column: 7, scope: !3339)
!3348 = !DILocation(line: 108, column: 5, scope: !3346)
!3349 = !DILocation(line: 109, column: 21, scope: !3339)
!3350 = !DILocalVariable(name: "n", arg: 1, scope: !3351, file: !3352, line: 39, type: !47)
!3351 = distinct !DISubprogram(name: "xmalloc", scope: !3352, file: !3352, line: 39, type: !3353, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !3355)
!3352 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!40, !47}
!3355 = !{!3350, !3356}
!3356 = !DILocalVariable(name: "p", scope: !3351, file: !3352, line: 41, type: !40)
!3357 = !DILocation(line: 39, column: 17, scope: !3351, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 109, column: 10, scope: !3339)
!3359 = !DILocation(line: 41, column: 13, scope: !3351, inlinedAt: !3358)
!3360 = !DILocation(line: 41, column: 9, scope: !3351, inlinedAt: !3358)
!3361 = !DILocation(line: 42, column: 8, scope: !3362, inlinedAt: !3358)
!3362 = distinct !DILexicalBlock(scope: !3351, file: !3352, line: 42, column: 7)
!3363 = !DILocation(line: 42, column: 15, scope: !3362, inlinedAt: !3358)
!3364 = !DILocation(line: 42, column: 10, scope: !3362, inlinedAt: !3358)
!3365 = !DILocation(line: 43, column: 5, scope: !3362, inlinedAt: !3358)
!3366 = !DILocation(line: 109, column: 3, scope: !3339)
!3367 = !DILocation(line: 39, column: 17, scope: !3351)
!3368 = !DILocation(line: 41, column: 13, scope: !3351)
!3369 = !DILocation(line: 41, column: 9, scope: !3351)
!3370 = !DILocation(line: 42, column: 8, scope: !3362)
!3371 = !DILocation(line: 42, column: 15, scope: !3362)
!3372 = !DILocation(line: 42, column: 10, scope: !3362)
!3373 = !DILocation(line: 43, column: 5, scope: !3362)
!3374 = !DILocation(line: 44, column: 3, scope: !3351)
!3375 = distinct !DISubprogram(name: "xnrealloc", scope: !626, file: !626, line: 118, type: !3376, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !3378)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!40, !40, !47, !47}
!3378 = !{!3379, !3380, !3381}
!3379 = !DILocalVariable(name: "p", arg: 1, scope: !3375, file: !626, line: 118, type: !40)
!3380 = !DILocalVariable(name: "n", arg: 2, scope: !3375, file: !626, line: 118, type: !47)
!3381 = !DILocalVariable(name: "s", arg: 3, scope: !3375, file: !626, line: 118, type: !47)
!3382 = !DILocation(line: 118, column: 18, scope: !3375)
!3383 = !DILocation(line: 118, column: 28, scope: !3375)
!3384 = !DILocation(line: 118, column: 38, scope: !3375)
!3385 = !DILocation(line: 120, column: 7, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3375, file: !626, line: 120, column: 7)
!3387 = !DILocation(line: 120, column: 7, scope: !3375)
!3388 = !DILocation(line: 121, column: 5, scope: !3386)
!3389 = !DILocation(line: 122, column: 25, scope: !3375)
!3390 = !DILocalVariable(name: "p", arg: 1, scope: !3391, file: !3352, line: 51, type: !40)
!3391 = distinct !DISubprogram(name: "xrealloc", scope: !3352, file: !3352, line: 51, type: !3392, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !3394)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!40, !40, !47}
!3394 = !{!3390, !3395}
!3395 = !DILocalVariable(name: "n", arg: 2, scope: !3391, file: !3352, line: 51, type: !47)
!3396 = !DILocation(line: 51, column: 17, scope: !3391, inlinedAt: !3397)
!3397 = distinct !DILocation(line: 122, column: 10, scope: !3375)
!3398 = !DILocation(line: 51, column: 27, scope: !3391, inlinedAt: !3397)
!3399 = !DILocation(line: 53, column: 8, scope: !3400, inlinedAt: !3397)
!3400 = distinct !DILexicalBlock(scope: !3391, file: !3352, line: 53, column: 7)
!3401 = !DILocation(line: 53, column: 13, scope: !3400, inlinedAt: !3397)
!3402 = !DILocation(line: 53, column: 10, scope: !3400, inlinedAt: !3397)
!3403 = !DILocation(line: 57, column: 7, scope: !3404, inlinedAt: !3397)
!3404 = distinct !DILexicalBlock(scope: !3400, file: !3352, line: 54, column: 5)
!3405 = !DILocation(line: 58, column: 7, scope: !3404, inlinedAt: !3397)
!3406 = !DILocation(line: 61, column: 7, scope: !3391, inlinedAt: !3397)
!3407 = !DILocation(line: 62, column: 8, scope: !3408, inlinedAt: !3397)
!3408 = distinct !DILexicalBlock(scope: !3391, file: !3352, line: 62, column: 7)
!3409 = !DILocation(line: 62, column: 13, scope: !3408, inlinedAt: !3397)
!3410 = !DILocation(line: 62, column: 10, scope: !3408, inlinedAt: !3397)
!3411 = !DILocation(line: 63, column: 5, scope: !3408, inlinedAt: !3397)
!3412 = !DILocation(line: 122, column: 3, scope: !3375)
!3413 = !DILocation(line: 51, column: 17, scope: !3391)
!3414 = !DILocation(line: 51, column: 27, scope: !3391)
!3415 = !DILocation(line: 53, column: 8, scope: !3400)
!3416 = !DILocation(line: 53, column: 13, scope: !3400)
!3417 = !DILocation(line: 53, column: 10, scope: !3400)
!3418 = !DILocation(line: 57, column: 7, scope: !3404)
!3419 = !DILocation(line: 58, column: 7, scope: !3404)
!3420 = !DILocation(line: 61, column: 7, scope: !3391)
!3421 = !DILocation(line: 62, column: 8, scope: !3408)
!3422 = !DILocation(line: 62, column: 13, scope: !3408)
!3423 = !DILocation(line: 62, column: 10, scope: !3408)
!3424 = !DILocation(line: 63, column: 5, scope: !3408)
!3425 = !DILocation(line: 65, column: 1, scope: !3391)
!3426 = !DILocation(line: 180, column: 19, scope: !627)
!3427 = !DILocation(line: 180, column: 30, scope: !627)
!3428 = !DILocation(line: 180, column: 41, scope: !627)
!3429 = !DILocation(line: 182, column: 14, scope: !627)
!3430 = !DILocation(line: 182, column: 10, scope: !627)
!3431 = !DILocation(line: 184, column: 9, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !627, file: !626, line: 184, column: 7)
!3433 = !DILocation(line: 184, column: 7, scope: !627)
!3434 = !DILocation(line: 186, column: 13, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3436, file: !626, line: 186, column: 11)
!3436 = distinct !DILexicalBlock(scope: !3432, file: !626, line: 185, column: 5)
!3437 = !DILocation(line: 186, column: 11, scope: !3436)
!3438 = !DILocation(line: 194, column: 30, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3435, file: !626, line: 187, column: 9)
!3440 = !DILocation(line: 195, column: 16, scope: !3439)
!3441 = !DILocation(line: 195, column: 13, scope: !3439)
!3442 = !DILocation(line: 196, column: 9, scope: !3439)
!3443 = !DILocation(line: 204, column: 69, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3445, file: !626, line: 204, column: 11)
!3445 = distinct !DILexicalBlock(scope: !3432, file: !626, line: 199, column: 5)
!3446 = !DILocation(line: 205, column: 11, scope: !3444)
!3447 = !DILocation(line: 204, column: 11, scope: !3445)
!3448 = !DILocation(line: 206, column: 9, scope: !3444)
!3449 = !DILocation(line: 210, column: 7, scope: !627)
!3450 = !DILocation(line: 211, column: 25, scope: !627)
!3451 = !DILocation(line: 51, column: 17, scope: !3391, inlinedAt: !3452)
!3452 = distinct !DILocation(line: 211, column: 10, scope: !627)
!3453 = !DILocation(line: 51, column: 27, scope: !3391, inlinedAt: !3452)
!3454 = !DILocation(line: 53, column: 10, scope: !3400, inlinedAt: !3452)
!3455 = !DILocation(line: 207, column: 14, scope: !3445)
!3456 = !DILocation(line: 207, column: 18, scope: !3445)
!3457 = !DILocation(line: 207, column: 9, scope: !3445)
!3458 = !DILocation(line: 53, column: 8, scope: !3400, inlinedAt: !3452)
!3459 = !DILocation(line: 57, column: 7, scope: !3404, inlinedAt: !3452)
!3460 = !DILocation(line: 58, column: 7, scope: !3404, inlinedAt: !3452)
!3461 = !DILocation(line: 61, column: 7, scope: !3391, inlinedAt: !3452)
!3462 = !DILocation(line: 62, column: 8, scope: !3408, inlinedAt: !3452)
!3463 = !DILocation(line: 62, column: 13, scope: !3408, inlinedAt: !3452)
!3464 = !DILocation(line: 62, column: 10, scope: !3408, inlinedAt: !3452)
!3465 = !DILocation(line: 63, column: 5, scope: !3408, inlinedAt: !3452)
!3466 = !DILocation(line: 211, column: 3, scope: !627)
!3467 = distinct !DISubprogram(name: "xcharalloc", scope: !626, file: !626, line: 220, type: !2431, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !3468)
!3468 = !{!3469}
!3469 = !DILocalVariable(name: "n", arg: 1, scope: !3467, file: !626, line: 220, type: !47)
!3470 = !DILocation(line: 220, column: 20, scope: !3467)
!3471 = !DILocation(line: 39, column: 17, scope: !3351, inlinedAt: !3472)
!3472 = distinct !DILocation(line: 222, column: 10, scope: !3467)
!3473 = !DILocation(line: 41, column: 13, scope: !3351, inlinedAt: !3472)
!3474 = !DILocation(line: 41, column: 9, scope: !3351, inlinedAt: !3472)
!3475 = !DILocation(line: 42, column: 8, scope: !3362, inlinedAt: !3472)
!3476 = !DILocation(line: 42, column: 15, scope: !3362, inlinedAt: !3472)
!3477 = !DILocation(line: 42, column: 10, scope: !3362, inlinedAt: !3472)
!3478 = !DILocation(line: 43, column: 5, scope: !3362, inlinedAt: !3472)
!3479 = !DILocation(line: 222, column: 3, scope: !3467)
!3480 = distinct !DISubprogram(name: "x2realloc", scope: !3352, file: !3352, line: 74, type: !3481, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !3483)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!40, !40, !630}
!3483 = !{!3484, !3485}
!3484 = !DILocalVariable(name: "p", arg: 1, scope: !3480, file: !3352, line: 74, type: !40)
!3485 = !DILocalVariable(name: "pn", arg: 2, scope: !3480, file: !3352, line: 74, type: !630)
!3486 = !DILocation(line: 74, column: 18, scope: !3480)
!3487 = !DILocation(line: 74, column: 29, scope: !3480)
!3488 = !DILocation(line: 180, column: 19, scope: !627, inlinedAt: !3489)
!3489 = distinct !DILocation(line: 76, column: 10, scope: !3480)
!3490 = !DILocation(line: 180, column: 30, scope: !627, inlinedAt: !3489)
!3491 = !DILocation(line: 180, column: 41, scope: !627, inlinedAt: !3489)
!3492 = !DILocation(line: 182, column: 14, scope: !627, inlinedAt: !3489)
!3493 = !DILocation(line: 182, column: 10, scope: !627, inlinedAt: !3489)
!3494 = !DILocation(line: 184, column: 9, scope: !3432, inlinedAt: !3489)
!3495 = !DILocation(line: 184, column: 7, scope: !627, inlinedAt: !3489)
!3496 = !DILocation(line: 186, column: 13, scope: !3435, inlinedAt: !3489)
!3497 = !DILocation(line: 186, column: 11, scope: !3436, inlinedAt: !3489)
!3498 = !DILocation(line: 210, column: 7, scope: !627, inlinedAt: !3489)
!3499 = !DILocation(line: 51, column: 17, scope: !3391, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 211, column: 10, scope: !627, inlinedAt: !3489)
!3501 = !DILocation(line: 51, column: 27, scope: !3391, inlinedAt: !3500)
!3502 = !DILocation(line: 53, column: 10, scope: !3400, inlinedAt: !3500)
!3503 = !DILocation(line: 205, column: 11, scope: !3444, inlinedAt: !3489)
!3504 = !DILocation(line: 204, column: 11, scope: !3445, inlinedAt: !3489)
!3505 = !DILocation(line: 206, column: 9, scope: !3444, inlinedAt: !3489)
!3506 = !DILocation(line: 207, column: 14, scope: !3445, inlinedAt: !3489)
!3507 = !DILocation(line: 207, column: 18, scope: !3445, inlinedAt: !3489)
!3508 = !DILocation(line: 207, column: 9, scope: !3445, inlinedAt: !3489)
!3509 = !DILocation(line: 53, column: 8, scope: !3400, inlinedAt: !3500)
!3510 = !DILocation(line: 57, column: 7, scope: !3404, inlinedAt: !3500)
!3511 = !DILocation(line: 58, column: 7, scope: !3404, inlinedAt: !3500)
!3512 = !DILocation(line: 61, column: 7, scope: !3391, inlinedAt: !3500)
!3513 = !DILocation(line: 62, column: 8, scope: !3408, inlinedAt: !3500)
!3514 = !DILocation(line: 62, column: 13, scope: !3408, inlinedAt: !3500)
!3515 = !DILocation(line: 62, column: 10, scope: !3408, inlinedAt: !3500)
!3516 = !DILocation(line: 63, column: 5, scope: !3408, inlinedAt: !3500)
!3517 = !DILocation(line: 76, column: 3, scope: !3480)
!3518 = distinct !DISubprogram(name: "xzalloc", scope: !3352, file: !3352, line: 84, type: !3353, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !3519)
!3519 = !{!3520}
!3520 = !DILocalVariable(name: "s", arg: 1, scope: !3518, file: !3352, line: 84, type: !47)
!3521 = !DILocation(line: 84, column: 17, scope: !3518)
!3522 = !DILocation(line: 39, column: 17, scope: !3351, inlinedAt: !3523)
!3523 = distinct !DILocation(line: 86, column: 18, scope: !3518)
!3524 = !DILocation(line: 41, column: 13, scope: !3351, inlinedAt: !3523)
!3525 = !DILocation(line: 41, column: 9, scope: !3351, inlinedAt: !3523)
!3526 = !DILocation(line: 42, column: 8, scope: !3362, inlinedAt: !3523)
!3527 = !DILocation(line: 42, column: 15, scope: !3362, inlinedAt: !3523)
!3528 = !DILocation(line: 42, column: 10, scope: !3362, inlinedAt: !3523)
!3529 = !DILocation(line: 43, column: 5, scope: !3362, inlinedAt: !3523)
!3530 = !DILocation(line: 86, column: 10, scope: !3518)
!3531 = !DILocation(line: 86, column: 3, scope: !3518)
!3532 = distinct !DISubprogram(name: "xcalloc", scope: !3352, file: !3352, line: 93, type: !841, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !3533)
!3533 = !{!3534, !3535, !3536}
!3534 = !DILocalVariable(name: "n", arg: 1, scope: !3532, file: !3352, line: 93, type: !47)
!3535 = !DILocalVariable(name: "s", arg: 2, scope: !3532, file: !3352, line: 93, type: !47)
!3536 = !DILocalVariable(name: "p", scope: !3532, file: !3352, line: 95, type: !40)
!3537 = !DILocation(line: 93, column: 17, scope: !3532)
!3538 = !DILocation(line: 93, column: 27, scope: !3532)
!3539 = !DILocation(line: 100, column: 7, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3532, file: !3352, line: 100, column: 7)
!3541 = !DILocation(line: 101, column: 7, scope: !3540)
!3542 = !DILocation(line: 101, column: 18, scope: !3540)
!3543 = !DILocation(line: 95, column: 9, scope: !3532)
!3544 = !DILocation(line: 101, column: 16, scope: !3540)
!3545 = !DILocation(line: 100, column: 7, scope: !3532)
!3546 = !DILocation(line: 102, column: 5, scope: !3540)
!3547 = !DILocation(line: 103, column: 3, scope: !3532)
!3548 = distinct !DISubprogram(name: "xmemdup", scope: !3352, file: !3352, line: 111, type: !3549, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !3553)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!40, !3551, !47}
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3553 = !{!3554, !3555}
!3554 = !DILocalVariable(name: "p", arg: 1, scope: !3548, file: !3352, line: 111, type: !3551)
!3555 = !DILocalVariable(name: "s", arg: 2, scope: !3548, file: !3352, line: 111, type: !47)
!3556 = !DILocation(line: 111, column: 22, scope: !3548)
!3557 = !DILocation(line: 111, column: 32, scope: !3548)
!3558 = !DILocation(line: 39, column: 17, scope: !3351, inlinedAt: !3559)
!3559 = distinct !DILocation(line: 113, column: 18, scope: !3548)
!3560 = !DILocation(line: 41, column: 13, scope: !3351, inlinedAt: !3559)
!3561 = !DILocation(line: 41, column: 9, scope: !3351, inlinedAt: !3559)
!3562 = !DILocation(line: 42, column: 8, scope: !3362, inlinedAt: !3559)
!3563 = !DILocation(line: 42, column: 15, scope: !3362, inlinedAt: !3559)
!3564 = !DILocation(line: 42, column: 10, scope: !3362, inlinedAt: !3559)
!3565 = !DILocation(line: 43, column: 5, scope: !3362, inlinedAt: !3559)
!3566 = !DILocation(line: 113, column: 10, scope: !3548)
!3567 = !DILocation(line: 113, column: 3, scope: !3548)
!3568 = distinct !DISubprogram(name: "xstrdup", scope: !3352, file: !3352, line: 119, type: !2632, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !3569)
!3569 = !{!3570}
!3570 = !DILocalVariable(name: "string", arg: 1, scope: !3568, file: !3352, line: 119, type: !36)
!3571 = !DILocation(line: 119, column: 22, scope: !3568)
!3572 = !DILocation(line: 121, column: 27, scope: !3568)
!3573 = !DILocation(line: 121, column: 43, scope: !3568)
!3574 = !DILocation(line: 111, column: 22, scope: !3548, inlinedAt: !3575)
!3575 = distinct !DILocation(line: 121, column: 10, scope: !3568)
!3576 = !DILocation(line: 111, column: 32, scope: !3548, inlinedAt: !3575)
!3577 = !DILocation(line: 39, column: 17, scope: !3351, inlinedAt: !3578)
!3578 = distinct !DILocation(line: 113, column: 18, scope: !3548, inlinedAt: !3575)
!3579 = !DILocation(line: 41, column: 13, scope: !3351, inlinedAt: !3578)
!3580 = !DILocation(line: 41, column: 9, scope: !3351, inlinedAt: !3578)
!3581 = !DILocation(line: 42, column: 8, scope: !3362, inlinedAt: !3578)
!3582 = !DILocation(line: 42, column: 15, scope: !3362, inlinedAt: !3578)
!3583 = !DILocation(line: 42, column: 10, scope: !3362, inlinedAt: !3578)
!3584 = !DILocation(line: 43, column: 5, scope: !3362, inlinedAt: !3578)
!3585 = !DILocation(line: 113, column: 10, scope: !3548, inlinedAt: !3575)
!3586 = !DILocation(line: 121, column: 3, scope: !3568)
!3587 = distinct !DISubprogram(name: "xalloc_die", scope: !3588, file: !3588, line: 32, type: !120, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !639, variables: !106)
!3588 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3589 = !DILocation(line: 34, column: 10, scope: !3587)
!3590 = !DILocation(line: 34, column: 33, scope: !3587)
!3591 = !DILocation(line: 34, column: 3, scope: !3587)
!3592 = !DILocation(line: 40, column: 3, scope: !3587)
!3593 = distinct !DISubprogram(name: "rpl_calloc", scope: !3594, file: !3594, line: 42, type: !841, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !641, variables: !3595)
!3594 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3595 = !{!3596, !3597, !3598, !3599}
!3596 = !DILocalVariable(name: "n", arg: 1, scope: !3593, file: !3594, line: 42, type: !47)
!3597 = !DILocalVariable(name: "s", arg: 2, scope: !3593, file: !3594, line: 42, type: !47)
!3598 = !DILocalVariable(name: "result", scope: !3593, file: !3594, line: 44, type: !40)
!3599 = !DILocalVariable(name: "bytes", scope: !3600, file: !3594, line: 56, type: !47)
!3600 = distinct !DILexicalBlock(scope: !3601, file: !3594, line: 53, column: 5)
!3601 = distinct !DILexicalBlock(scope: !3593, file: !3594, line: 47, column: 7)
!3602 = !DILocation(line: 42, column: 20, scope: !3593)
!3603 = !DILocation(line: 42, column: 30, scope: !3593)
!3604 = !DILocation(line: 47, column: 9, scope: !3601)
!3605 = !DILocation(line: 47, column: 19, scope: !3601)
!3606 = !DILocation(line: 47, column: 14, scope: !3601)
!3607 = !DILocation(line: 56, column: 24, scope: !3600)
!3608 = !DILocation(line: 56, column: 14, scope: !3600)
!3609 = !DILocation(line: 57, column: 17, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3600, file: !3594, line: 57, column: 11)
!3611 = !DILocation(line: 57, column: 21, scope: !3610)
!3612 = !DILocation(line: 57, column: 11, scope: !3600)
!3613 = !DILocation(line: 59, column: 11, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3610, file: !3594, line: 58, column: 9)
!3615 = !DILocation(line: 59, column: 17, scope: !3614)
!3616 = !DILocation(line: 65, column: 12, scope: !3593)
!3617 = !DILocation(line: 44, column: 9, scope: !3593)
!3618 = !DILocation(line: 72, column: 3, scope: !3593)
!3619 = !DILocation(line: 73, column: 1, scope: !3593)
!3620 = distinct !DISubprogram(name: "rpl_fclose", scope: !3621, file: !3621, line: 56, type: !3622, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !643, variables: !3664)
!3621 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!46, !3624}
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !720, line: 7, baseType: !3626)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !722, line: 241, size: 1728, elements: !3627)
!3627 = !{!3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3626, file: !722, line: 242, baseType: !46, size: 32)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3626, file: !722, line: 247, baseType: !39, size: 64, offset: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3626, file: !722, line: 248, baseType: !39, size: 64, offset: 128)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3626, file: !722, line: 249, baseType: !39, size: 64, offset: 192)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3626, file: !722, line: 250, baseType: !39, size: 64, offset: 256)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3626, file: !722, line: 251, baseType: !39, size: 64, offset: 320)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3626, file: !722, line: 252, baseType: !39, size: 64, offset: 384)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3626, file: !722, line: 253, baseType: !39, size: 64, offset: 448)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3626, file: !722, line: 254, baseType: !39, size: 64, offset: 512)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3626, file: !722, line: 256, baseType: !39, size: 64, offset: 576)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3626, file: !722, line: 257, baseType: !39, size: 64, offset: 640)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3626, file: !722, line: 258, baseType: !39, size: 64, offset: 704)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3626, file: !722, line: 260, baseType: !3641, size: 64, offset: 768)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !722, line: 156, size: 192, elements: !3643)
!3643 = !{!3644, !3645, !3647}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3642, file: !722, line: 157, baseType: !3641, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3642, file: !722, line: 158, baseType: !3646, size: 64, offset: 64)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3642, file: !722, line: 162, baseType: !46, size: 32, offset: 128)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3626, file: !722, line: 262, baseType: !3646, size: 64, offset: 832)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3626, file: !722, line: 264, baseType: !46, size: 32, offset: 896)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3626, file: !722, line: 268, baseType: !46, size: 32, offset: 928)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3626, file: !722, line: 270, baseType: !748, size: 64, offset: 960)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3626, file: !722, line: 274, baseType: !170, size: 16, offset: 1024)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3626, file: !722, line: 275, baseType: !753, size: 8, offset: 1040)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3626, file: !722, line: 276, baseType: !755, size: 8, offset: 1048)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3626, file: !722, line: 280, baseType: !757, size: 64, offset: 1088)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3626, file: !722, line: 289, baseType: !760, size: 64, offset: 1152)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3626, file: !722, line: 297, baseType: !40, size: 64, offset: 1216)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3626, file: !722, line: 298, baseType: !40, size: 64, offset: 1280)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3626, file: !722, line: 299, baseType: !40, size: 64, offset: 1344)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3626, file: !722, line: 300, baseType: !40, size: 64, offset: 1408)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3626, file: !722, line: 302, baseType: !47, size: 64, offset: 1472)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3626, file: !722, line: 303, baseType: !46, size: 32, offset: 1536)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3626, file: !722, line: 305, baseType: !768, size: 160, offset: 1568)
!3664 = !{!3665, !3666, !3667, !3668}
!3665 = !DILocalVariable(name: "fp", arg: 1, scope: !3620, file: !3621, line: 56, type: !3624)
!3666 = !DILocalVariable(name: "saved_errno", scope: !3620, file: !3621, line: 58, type: !46)
!3667 = !DILocalVariable(name: "fd", scope: !3620, file: !3621, line: 59, type: !46)
!3668 = !DILocalVariable(name: "result", scope: !3620, file: !3621, line: 60, type: !46)
!3669 = !DILocation(line: 56, column: 19, scope: !3620)
!3670 = !DILocation(line: 58, column: 7, scope: !3620)
!3671 = !DILocation(line: 60, column: 7, scope: !3620)
!3672 = !DILocation(line: 63, column: 8, scope: !3620)
!3673 = !DILocation(line: 59, column: 7, scope: !3620)
!3674 = !DILocation(line: 64, column: 10, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3620, file: !3621, line: 64, column: 7)
!3676 = !DILocation(line: 64, column: 7, scope: !3620)
!3677 = !DILocation(line: 65, column: 12, scope: !3675)
!3678 = !DILocation(line: 65, column: 5, scope: !3675)
!3679 = !DILocation(line: 70, column: 9, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3620, file: !3621, line: 70, column: 7)
!3681 = !DILocation(line: 70, column: 23, scope: !3680)
!3682 = !DILocation(line: 70, column: 33, scope: !3680)
!3683 = !DILocation(line: 70, column: 26, scope: !3680)
!3684 = !DILocation(line: 70, column: 59, scope: !3680)
!3685 = !DILocation(line: 71, column: 7, scope: !3680)
!3686 = !DILocation(line: 71, column: 10, scope: !3680)
!3687 = !DILocation(line: 70, column: 7, scope: !3620)
!3688 = !DILocation(line: 98, column: 12, scope: !3620)
!3689 = !DILocation(line: 103, column: 7, scope: !3620)
!3690 = !DILocation(line: 72, column: 19, scope: !3680)
!3691 = !DILocation(line: 103, column: 19, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3620, file: !3621, line: 103, column: 7)
!3693 = !DILocation(line: 105, column: 13, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3692, file: !3621, line: 104, column: 5)
!3695 = !DILocation(line: 107, column: 5, scope: !3694)
!3696 = !DILocation(line: 110, column: 1, scope: !3620)
!3697 = !DILocation(line: 272, column: 16, scope: !224)
!3698 = !DILocation(line: 272, column: 24, scope: !224)
!3699 = !DILocation(line: 274, column: 3, scope: !224)
!3700 = !DILocation(line: 274, column: 11, scope: !224)
!3701 = !DILocation(line: 275, column: 7, scope: !224)
!3702 = !DILocation(line: 276, column: 3, scope: !224)
!3703 = !DILocation(line: 277, column: 3, scope: !224)
!3704 = !DILocation(line: 322, column: 22, scope: !249)
!3705 = !DILocation(line: 322, column: 13, scope: !249)
!3706 = !DILocation(line: 336, column: 18, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !249, file: !225, line: 336, column: 13)
!3708 = !DILocation(line: 336, column: 15, scope: !3707)
!3709 = !DILocation(line: 336, column: 13, scope: !249)
!3710 = !DILocation(line: 338, column: 22, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3707, file: !225, line: 337, column: 11)
!3712 = !DILocation(line: 339, column: 19, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3711, file: !225, line: 339, column: 17)
!3714 = !DILocation(line: 339, column: 29, scope: !3713)
!3715 = !DILocation(line: 339, column: 32, scope: !3713)
!3716 = !DILocation(line: 339, column: 38, scope: !3713)
!3717 = !DILocation(line: 339, column: 17, scope: !3711)
!3718 = !DILocation(line: 349, column: 26, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3713, file: !225, line: 348, column: 15)
!3720 = !DILocation(line: 350, column: 28, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3719, file: !225, line: 350, column: 21)
!3722 = !DILocation(line: 350, column: 21, scope: !3719)
!3723 = !DILocation(line: 354, column: 11, scope: !3711)
!3724 = !DILocation(line: 356, column: 20, scope: !3707)
!3725 = !DILocation(line: 357, column: 28, scope: !253)
!3726 = !DILocation(line: 357, column: 15, scope: !253)
!3727 = !DILocation(line: 357, column: 47, scope: !253)
!3728 = !DILocation(line: 357, column: 25, scope: !253)
!3729 = !DILocation(line: 359, column: 25, scope: !252)
!3730 = !DILocation(line: 359, column: 17, scope: !252)
!3731 = !DILocation(line: 360, column: 23, scope: !256)
!3732 = !DILocation(line: 360, column: 27, scope: !256)
!3733 = !DILocation(line: 360, column: 60, scope: !256)
!3734 = !DILocation(line: 360, column: 30, scope: !256)
!3735 = !DILocation(line: 360, column: 74, scope: !256)
!3736 = !DILocation(line: 360, column: 17, scope: !252)
!3737 = !DILocation(line: 362, column: 35, scope: !255)
!3738 = !DILocation(line: 362, column: 21, scope: !255)
!3739 = !DILocation(line: 363, column: 17, scope: !255)
!3740 = !DILocation(line: 364, column: 23, scope: !255)
!3741 = !DILocation(line: 366, column: 15, scope: !255)
!3742 = !DILocation(line: 404, column: 19, scope: !258)
!3743 = !DILocation(line: 404, column: 15, scope: !258)
!3744 = !DILocation(line: 405, column: 18, scope: !258)
!3745 = !DILocation(line: 412, column: 3, scope: !224)
!3746 = !DILocation(line: 414, column: 1, scope: !224)
!3747 = !DILocation(line: 413, column: 3, scope: !224)
!3748 = distinct !DISubprogram(name: "rpl_fflush", scope: !3749, file: !3749, line: 127, type: !3750, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !645, variables: !3792)
!3749 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!46, !3752}
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !720, line: 7, baseType: !3754)
!3754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !722, line: 241, size: 1728, elements: !3755)
!3755 = !{!3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3754, file: !722, line: 242, baseType: !46, size: 32)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3754, file: !722, line: 247, baseType: !39, size: 64, offset: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3754, file: !722, line: 248, baseType: !39, size: 64, offset: 128)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3754, file: !722, line: 249, baseType: !39, size: 64, offset: 192)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3754, file: !722, line: 250, baseType: !39, size: 64, offset: 256)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3754, file: !722, line: 251, baseType: !39, size: 64, offset: 320)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3754, file: !722, line: 252, baseType: !39, size: 64, offset: 384)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3754, file: !722, line: 253, baseType: !39, size: 64, offset: 448)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3754, file: !722, line: 254, baseType: !39, size: 64, offset: 512)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3754, file: !722, line: 256, baseType: !39, size: 64, offset: 576)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3754, file: !722, line: 257, baseType: !39, size: 64, offset: 640)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3754, file: !722, line: 258, baseType: !39, size: 64, offset: 704)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3754, file: !722, line: 260, baseType: !3769, size: 64, offset: 768)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !722, line: 156, size: 192, elements: !3771)
!3771 = !{!3772, !3773, !3775}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3770, file: !722, line: 157, baseType: !3769, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3770, file: !722, line: 158, baseType: !3774, size: 64, offset: 64)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3770, file: !722, line: 162, baseType: !46, size: 32, offset: 128)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3754, file: !722, line: 262, baseType: !3774, size: 64, offset: 832)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3754, file: !722, line: 264, baseType: !46, size: 32, offset: 896)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3754, file: !722, line: 268, baseType: !46, size: 32, offset: 928)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3754, file: !722, line: 270, baseType: !748, size: 64, offset: 960)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3754, file: !722, line: 274, baseType: !170, size: 16, offset: 1024)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3754, file: !722, line: 275, baseType: !753, size: 8, offset: 1040)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3754, file: !722, line: 276, baseType: !755, size: 8, offset: 1048)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3754, file: !722, line: 280, baseType: !757, size: 64, offset: 1088)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3754, file: !722, line: 289, baseType: !760, size: 64, offset: 1152)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3754, file: !722, line: 297, baseType: !40, size: 64, offset: 1216)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3754, file: !722, line: 298, baseType: !40, size: 64, offset: 1280)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3754, file: !722, line: 299, baseType: !40, size: 64, offset: 1344)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3754, file: !722, line: 300, baseType: !40, size: 64, offset: 1408)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3754, file: !722, line: 302, baseType: !47, size: 64, offset: 1472)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3754, file: !722, line: 303, baseType: !46, size: 32, offset: 1536)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3754, file: !722, line: 305, baseType: !768, size: 160, offset: 1568)
!3792 = !{!3793}
!3793 = !DILocalVariable(name: "stream", arg: 1, scope: !3748, file: !3749, line: 127, type: !3752)
!3794 = !DILocation(line: 127, column: 19, scope: !3748)
!3795 = !DILocation(line: 148, column: 14, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3748, file: !3749, line: 148, column: 7)
!3797 = !DILocation(line: 148, column: 22, scope: !3796)
!3798 = !DILocation(line: 148, column: 27, scope: !3796)
!3799 = !DILocation(line: 148, column: 7, scope: !3748)
!3800 = !DILocation(line: 149, column: 12, scope: !3796)
!3801 = !DILocation(line: 149, column: 5, scope: !3796)
!3802 = !DILocalVariable(name: "fp", arg: 1, scope: !3803, file: !3749, line: 40, type: !3752)
!3803 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3749, file: !3749, line: 40, type: !3804, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !645, variables: !3806)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{null, !3752}
!3806 = !{!3802}
!3807 = !DILocation(line: 40, column: 48, scope: !3803, inlinedAt: !3808)
!3808 = distinct !DILocation(line: 153, column: 3, scope: !3748)
!3809 = !DILocation(line: 42, column: 11, scope: !3810, inlinedAt: !3808)
!3810 = distinct !DILexicalBlock(scope: !3803, file: !3749, line: 42, column: 7)
!3811 = !{!1141, !827, i64 0}
!3812 = !DILocation(line: 42, column: 18, scope: !3810, inlinedAt: !3808)
!3813 = !DILocation(line: 42, column: 7, scope: !3803, inlinedAt: !3808)
!3814 = !DILocation(line: 44, column: 5, scope: !3810, inlinedAt: !3808)
!3815 = !DILocation(line: 155, column: 10, scope: !3748)
!3816 = !DILocation(line: 155, column: 3, scope: !3748)
!3817 = !DILocation(line: 229, column: 1, scope: !3748)
!3818 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3819, file: !3819, line: 28, type: !3820, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !647, variables: !3862)
!3819 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!46, !3822, !1293, !46}
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !720, line: 7, baseType: !3824)
!3824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !722, line: 241, size: 1728, elements: !3825)
!3825 = !{!3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3824, file: !722, line: 242, baseType: !46, size: 32)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3824, file: !722, line: 247, baseType: !39, size: 64, offset: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3824, file: !722, line: 248, baseType: !39, size: 64, offset: 128)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3824, file: !722, line: 249, baseType: !39, size: 64, offset: 192)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3824, file: !722, line: 250, baseType: !39, size: 64, offset: 256)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3824, file: !722, line: 251, baseType: !39, size: 64, offset: 320)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3824, file: !722, line: 252, baseType: !39, size: 64, offset: 384)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3824, file: !722, line: 253, baseType: !39, size: 64, offset: 448)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3824, file: !722, line: 254, baseType: !39, size: 64, offset: 512)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3824, file: !722, line: 256, baseType: !39, size: 64, offset: 576)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3824, file: !722, line: 257, baseType: !39, size: 64, offset: 640)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3824, file: !722, line: 258, baseType: !39, size: 64, offset: 704)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3824, file: !722, line: 260, baseType: !3839, size: 64, offset: 768)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !722, line: 156, size: 192, elements: !3841)
!3841 = !{!3842, !3843, !3845}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3840, file: !722, line: 157, baseType: !3839, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3840, file: !722, line: 158, baseType: !3844, size: 64, offset: 64)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3840, file: !722, line: 162, baseType: !46, size: 32, offset: 128)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3824, file: !722, line: 262, baseType: !3844, size: 64, offset: 832)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3824, file: !722, line: 264, baseType: !46, size: 32, offset: 896)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3824, file: !722, line: 268, baseType: !46, size: 32, offset: 928)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3824, file: !722, line: 270, baseType: !748, size: 64, offset: 960)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3824, file: !722, line: 274, baseType: !170, size: 16, offset: 1024)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3824, file: !722, line: 275, baseType: !753, size: 8, offset: 1040)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3824, file: !722, line: 276, baseType: !755, size: 8, offset: 1048)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3824, file: !722, line: 280, baseType: !757, size: 64, offset: 1088)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3824, file: !722, line: 289, baseType: !760, size: 64, offset: 1152)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3824, file: !722, line: 297, baseType: !40, size: 64, offset: 1216)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3824, file: !722, line: 298, baseType: !40, size: 64, offset: 1280)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3824, file: !722, line: 299, baseType: !40, size: 64, offset: 1344)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3824, file: !722, line: 300, baseType: !40, size: 64, offset: 1408)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3824, file: !722, line: 302, baseType: !47, size: 64, offset: 1472)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3824, file: !722, line: 303, baseType: !46, size: 32, offset: 1536)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3824, file: !722, line: 305, baseType: !768, size: 160, offset: 1568)
!3862 = !{!3863, !3864, !3865, !3866}
!3863 = !DILocalVariable(name: "fp", arg: 1, scope: !3818, file: !3819, line: 28, type: !3822)
!3864 = !DILocalVariable(name: "offset", arg: 2, scope: !3818, file: !3819, line: 28, type: !1293)
!3865 = !DILocalVariable(name: "whence", arg: 3, scope: !3818, file: !3819, line: 28, type: !46)
!3866 = !DILocalVariable(name: "pos", scope: !3867, file: !3819, line: 116, type: !1293)
!3867 = distinct !DILexicalBlock(scope: !3868, file: !3819, line: 112, column: 5)
!3868 = distinct !DILexicalBlock(scope: !3818, file: !3819, line: 51, column: 7)
!3869 = !DILocation(line: 28, column: 15, scope: !3818)
!3870 = !DILocation(line: 28, column: 25, scope: !3818)
!3871 = !DILocation(line: 28, column: 37, scope: !3818)
!3872 = !DILocation(line: 51, column: 11, scope: !3868)
!3873 = !{!1141, !673, i64 16}
!3874 = !DILocation(line: 51, column: 31, scope: !3868)
!3875 = !{!1141, !673, i64 8}
!3876 = !DILocation(line: 51, column: 24, scope: !3868)
!3877 = !DILocation(line: 52, column: 7, scope: !3868)
!3878 = !DILocation(line: 52, column: 14, scope: !3868)
!3879 = !DILocation(line: 52, column: 35, scope: !3868)
!3880 = !{!1141, !673, i64 32}
!3881 = !DILocation(line: 52, column: 28, scope: !3868)
!3882 = !DILocation(line: 53, column: 7, scope: !3868)
!3883 = !DILocation(line: 53, column: 14, scope: !3868)
!3884 = !{!1141, !673, i64 72}
!3885 = !DILocation(line: 53, column: 28, scope: !3868)
!3886 = !DILocation(line: 51, column: 7, scope: !3818)
!3887 = !DILocation(line: 116, column: 26, scope: !3867)
!3888 = !DILocation(line: 116, column: 19, scope: !3867)
!3889 = !DILocation(line: 116, column: 13, scope: !3867)
!3890 = !DILocation(line: 117, column: 15, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3867, file: !3819, line: 117, column: 11)
!3892 = !DILocation(line: 117, column: 11, scope: !3867)
!3893 = !DILocation(line: 127, column: 11, scope: !3867)
!3894 = !DILocation(line: 127, column: 18, scope: !3867)
!3895 = !DILocation(line: 128, column: 11, scope: !3867)
!3896 = !DILocation(line: 128, column: 19, scope: !3867)
!3897 = !{!1141, !1142, i64 144}
!3898 = !DILocation(line: 159, column: 7, scope: !3867)
!3899 = !DILocation(line: 161, column: 10, scope: !3818)
!3900 = !DILocation(line: 161, column: 3, scope: !3818)
!3901 = !DILocation(line: 162, column: 1, scope: !3818)
!3902 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3903, file: !3903, line: 334, type: !3904, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !649, variables: !3918)
!3903 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!47, !3906, !36, !47, !3907}
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1685, line: 6, baseType: !3909)
!3909 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1687, line: 21, baseType: !3910)
!3910 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1687, line: 13, size: 64, elements: !3911)
!3911 = !{!3912, !3913}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3910, file: !1687, line: 15, baseType: !46, size: 32)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3910, file: !1687, line: 20, baseType: !3914, size: 32, offset: 32)
!3914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3910, file: !1687, line: 16, size: 32, elements: !3915)
!3915 = !{!3916, !3917}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3914, file: !1687, line: 18, baseType: !187, size: 32)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3914, file: !1687, line: 19, baseType: !1696, size: 32)
!3918 = !{!3919, !3920, !3921, !3922, !3923, !3924, !3925}
!3919 = !DILocalVariable(name: "pwc", arg: 1, scope: !3902, file: !3903, line: 334, type: !3906)
!3920 = !DILocalVariable(name: "s", arg: 2, scope: !3902, file: !3903, line: 334, type: !36)
!3921 = !DILocalVariable(name: "n", arg: 3, scope: !3902, file: !3903, line: 334, type: !47)
!3922 = !DILocalVariable(name: "ps", arg: 4, scope: !3902, file: !3903, line: 334, type: !3907)
!3923 = !DILocalVariable(name: "ret", scope: !3902, file: !3903, line: 336, type: !47)
!3924 = !DILocalVariable(name: "wc", scope: !3902, file: !3903, line: 337, type: !1699)
!3925 = !DILocalVariable(name: "uc", scope: !3926, file: !3903, line: 398, type: !114)
!3926 = distinct !DILexicalBlock(scope: !3927, file: !3903, line: 397, column: 5)
!3927 = distinct !DILexicalBlock(scope: !3902, file: !3903, line: 396, column: 7)
!3928 = !DILocation(line: 334, column: 23, scope: !3902)
!3929 = !DILocation(line: 334, column: 40, scope: !3902)
!3930 = !DILocation(line: 334, column: 50, scope: !3902)
!3931 = !DILocation(line: 334, column: 64, scope: !3902)
!3932 = !DILocation(line: 337, column: 3, scope: !3902)
!3933 = !DILocation(line: 353, column: 9, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3902, file: !3903, line: 353, column: 7)
!3935 = !DILocation(line: 353, column: 7, scope: !3902)
!3936 = !DILocation(line: 388, column: 9, scope: !3902)
!3937 = !DILocation(line: 336, column: 10, scope: !3902)
!3938 = !DILocation(line: 396, column: 19, scope: !3927)
!3939 = !DILocation(line: 396, column: 31, scope: !3927)
!3940 = !DILocation(line: 396, column: 26, scope: !3927)
!3941 = !DILocation(line: 396, column: 41, scope: !3927)
!3942 = !DILocation(line: 396, column: 7, scope: !3902)
!3943 = !DILocation(line: 398, column: 26, scope: !3926)
!3944 = !DILocation(line: 398, column: 21, scope: !3926)
!3945 = !DILocation(line: 399, column: 14, scope: !3926)
!3946 = !DILocation(line: 399, column: 12, scope: !3926)
!3947 = !DILocation(line: 405, column: 1, scope: !3902)
!3948 = distinct !DISubprogram(name: "close_stream", scope: !3949, file: !3949, line: 56, type: !3950, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !652, variables: !3992)
!3949 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!46, !3952}
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !720, line: 7, baseType: !3954)
!3954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !722, line: 241, size: 1728, elements: !3955)
!3955 = !{!3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3954, file: !722, line: 242, baseType: !46, size: 32)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3954, file: !722, line: 247, baseType: !39, size: 64, offset: 64)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3954, file: !722, line: 248, baseType: !39, size: 64, offset: 128)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3954, file: !722, line: 249, baseType: !39, size: 64, offset: 192)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3954, file: !722, line: 250, baseType: !39, size: 64, offset: 256)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3954, file: !722, line: 251, baseType: !39, size: 64, offset: 320)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3954, file: !722, line: 252, baseType: !39, size: 64, offset: 384)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3954, file: !722, line: 253, baseType: !39, size: 64, offset: 448)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3954, file: !722, line: 254, baseType: !39, size: 64, offset: 512)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3954, file: !722, line: 256, baseType: !39, size: 64, offset: 576)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3954, file: !722, line: 257, baseType: !39, size: 64, offset: 640)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3954, file: !722, line: 258, baseType: !39, size: 64, offset: 704)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3954, file: !722, line: 260, baseType: !3969, size: 64, offset: 768)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !722, line: 156, size: 192, elements: !3971)
!3971 = !{!3972, !3973, !3975}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3970, file: !722, line: 157, baseType: !3969, size: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3970, file: !722, line: 158, baseType: !3974, size: 64, offset: 64)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3970, file: !722, line: 162, baseType: !46, size: 32, offset: 128)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3954, file: !722, line: 262, baseType: !3974, size: 64, offset: 832)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3954, file: !722, line: 264, baseType: !46, size: 32, offset: 896)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3954, file: !722, line: 268, baseType: !46, size: 32, offset: 928)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3954, file: !722, line: 270, baseType: !748, size: 64, offset: 960)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3954, file: !722, line: 274, baseType: !170, size: 16, offset: 1024)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3954, file: !722, line: 275, baseType: !753, size: 8, offset: 1040)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3954, file: !722, line: 276, baseType: !755, size: 8, offset: 1048)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3954, file: !722, line: 280, baseType: !757, size: 64, offset: 1088)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3954, file: !722, line: 289, baseType: !760, size: 64, offset: 1152)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3954, file: !722, line: 297, baseType: !40, size: 64, offset: 1216)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3954, file: !722, line: 298, baseType: !40, size: 64, offset: 1280)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3954, file: !722, line: 299, baseType: !40, size: 64, offset: 1344)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3954, file: !722, line: 300, baseType: !40, size: 64, offset: 1408)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3954, file: !722, line: 302, baseType: !47, size: 64, offset: 1472)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3954, file: !722, line: 303, baseType: !46, size: 32, offset: 1536)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3954, file: !722, line: 305, baseType: !768, size: 160, offset: 1568)
!3992 = !{!3993, !3994, !3996, !3997}
!3993 = !DILocalVariable(name: "stream", arg: 1, scope: !3948, file: !3949, line: 56, type: !3952)
!3994 = !DILocalVariable(name: "some_pending", scope: !3948, file: !3949, line: 58, type: !3995)
!3995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!3996 = !DILocalVariable(name: "prev_fail", scope: !3948, file: !3949, line: 59, type: !3995)
!3997 = !DILocalVariable(name: "fclose_fail", scope: !3948, file: !3949, line: 60, type: !3995)
!3998 = !DILocation(line: 56, column: 21, scope: !3948)
!3999 = !DILocation(line: 58, column: 30, scope: !3948)
!4000 = !DILocalVariable(name: "__stream", arg: 1, scope: !4001, file: !1091, line: 132, type: !3952)
!4001 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1091, file: !1091, line: 132, type: !3950, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !652, variables: !4002)
!4002 = !{!4000}
!4003 = !DILocation(line: 132, column: 1, scope: !4001, inlinedAt: !4004)
!4004 = distinct !DILocation(line: 59, column: 27, scope: !3948)
!4005 = !DILocation(line: 134, column: 10, scope: !4001, inlinedAt: !4004)
!4006 = !DILocation(line: 59, column: 43, scope: !3948)
!4007 = !DILocation(line: 60, column: 29, scope: !3948)
!4008 = !DILocation(line: 60, column: 45, scope: !3948)
!4009 = !DILocation(line: 70, column: 17, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !3948, file: !3949, line: 70, column: 7)
!4011 = !DILocation(line: 58, column: 50, scope: !3948)
!4012 = !DILocation(line: 70, column: 33, scope: !4010)
!4013 = !DILocation(line: 70, column: 53, scope: !4010)
!4014 = !DILocation(line: 70, column: 59, scope: !4010)
!4015 = !DILocation(line: 70, column: 7, scope: !3948)
!4016 = !DILocation(line: 72, column: 11, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !4010, file: !3949, line: 71, column: 5)
!4018 = !DILocation(line: 73, column: 9, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !4017, file: !3949, line: 72, column: 11)
!4020 = !DILocation(line: 73, column: 15, scope: !4019)
!4021 = !DILocation(line: 78, column: 1, scope: !3948)
!4022 = distinct !DISubprogram(name: "hard_locale", scope: !4023, file: !4023, line: 38, type: !4024, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !654, variables: !4026)
!4023 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!53, !46}
!4026 = !{!4027, !4028, !4029}
!4027 = !DILocalVariable(name: "category", arg: 1, scope: !4022, file: !4023, line: 38, type: !46)
!4028 = !DILocalVariable(name: "hard", scope: !4022, file: !4023, line: 40, type: !53)
!4029 = !DILocalVariable(name: "p", scope: !4022, file: !4023, line: 41, type: !36)
!4030 = !DILocation(line: 38, column: 18, scope: !4022)
!4031 = !DILocation(line: 40, column: 8, scope: !4022)
!4032 = !DILocation(line: 41, column: 19, scope: !4022)
!4033 = !DILocation(line: 41, column: 15, scope: !4022)
!4034 = !DILocation(line: 43, column: 7, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !4022, file: !4023, line: 43, column: 7)
!4036 = !DILocation(line: 43, column: 7, scope: !4022)
!4037 = !DILocation(line: 47, column: 15, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4039, file: !4023, line: 47, column: 15)
!4039 = distinct !DILexicalBlock(scope: !4040, file: !4023, line: 46, column: 9)
!4040 = distinct !DILexicalBlock(scope: !4041, file: !4023, line: 45, column: 11)
!4041 = distinct !DILexicalBlock(scope: !4035, file: !4023, line: 44, column: 5)
!4042 = !DILocation(line: 47, column: 31, scope: !4038)
!4043 = !DILocation(line: 47, column: 36, scope: !4038)
!4044 = !DILocation(line: 47, column: 39, scope: !4038)
!4045 = !DILocation(line: 47, column: 59, scope: !4038)
!4046 = !DILocation(line: 47, column: 15, scope: !4039)
!4047 = !DILocation(line: 48, column: 13, scope: !4038)
!4048 = !DILocation(line: 71, column: 3, scope: !4022)
!4049 = distinct !DISubprogram(name: "locale_charset", scope: !605, file: !605, line: 393, type: !4050, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !261, variables: !4052)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!36}
!4052 = !{!4053, !4054}
!4053 = !DILocalVariable(name: "codeset", scope: !4049, file: !605, line: 395, type: !36)
!4054 = !DILocalVariable(name: "aliases", scope: !4049, file: !605, line: 396, type: !36)
!4055 = !DILocalVariable(name: "buf1", scope: !4056, file: !605, line: 196, type: !4123)
!4056 = distinct !DILexicalBlock(scope: !4057, file: !605, line: 194, column: 21)
!4057 = distinct !DILexicalBlock(scope: !4058, file: !605, line: 193, column: 19)
!4058 = distinct !DILexicalBlock(scope: !4059, file: !605, line: 193, column: 19)
!4059 = distinct !DILexicalBlock(scope: !4060, file: !605, line: 188, column: 17)
!4060 = distinct !DILexicalBlock(scope: !4061, file: !605, line: 181, column: 19)
!4061 = distinct !DILexicalBlock(scope: !4062, file: !605, line: 177, column: 13)
!4062 = distinct !DILexicalBlock(scope: !4063, file: !605, line: 173, column: 15)
!4063 = distinct !DILexicalBlock(scope: !4064, file: !605, line: 161, column: 9)
!4064 = distinct !DILexicalBlock(scope: !4065, file: !605, line: 157, column: 11)
!4065 = distinct !DILexicalBlock(scope: !4066, file: !605, line: 130, column: 5)
!4066 = distinct !DILexicalBlock(scope: !4067, file: !605, line: 129, column: 7)
!4067 = distinct !DISubprogram(name: "get_charset_aliases", scope: !605, file: !605, line: 124, type: !4050, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !261, variables: !4068)
!4068 = !{!4069, !4070, !4071, !4072, !4073, !4075, !4076, !4077, !4078, !4119, !4120, !4121, !4055, !4122, !4126, !4127, !4128}
!4069 = !DILocalVariable(name: "cp", scope: !4067, file: !605, line: 126, type: !36)
!4070 = !DILocalVariable(name: "dir", scope: !4065, file: !605, line: 132, type: !36)
!4071 = !DILocalVariable(name: "base", scope: !4065, file: !605, line: 133, type: !36)
!4072 = !DILocalVariable(name: "file_name", scope: !4065, file: !605, line: 134, type: !39)
!4073 = !DILocalVariable(name: "dir_len", scope: !4074, file: !605, line: 144, type: !47)
!4074 = distinct !DILexicalBlock(scope: !4065, file: !605, line: 143, column: 7)
!4075 = !DILocalVariable(name: "base_len", scope: !4074, file: !605, line: 145, type: !47)
!4076 = !DILocalVariable(name: "add_slash", scope: !4074, file: !605, line: 146, type: !46)
!4077 = !DILocalVariable(name: "fd", scope: !4063, file: !605, line: 162, type: !46)
!4078 = !DILocalVariable(name: "fp", scope: !4061, file: !605, line: 178, type: !4079)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !720, line: 7, baseType: !4081)
!4081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !722, line: 241, size: 1728, elements: !4082)
!4082 = !{!4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4081, file: !722, line: 242, baseType: !46, size: 32)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4081, file: !722, line: 247, baseType: !39, size: 64, offset: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4081, file: !722, line: 248, baseType: !39, size: 64, offset: 128)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4081, file: !722, line: 249, baseType: !39, size: 64, offset: 192)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4081, file: !722, line: 250, baseType: !39, size: 64, offset: 256)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4081, file: !722, line: 251, baseType: !39, size: 64, offset: 320)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4081, file: !722, line: 252, baseType: !39, size: 64, offset: 384)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4081, file: !722, line: 253, baseType: !39, size: 64, offset: 448)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4081, file: !722, line: 254, baseType: !39, size: 64, offset: 512)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4081, file: !722, line: 256, baseType: !39, size: 64, offset: 576)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4081, file: !722, line: 257, baseType: !39, size: 64, offset: 640)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4081, file: !722, line: 258, baseType: !39, size: 64, offset: 704)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4081, file: !722, line: 260, baseType: !4096, size: 64, offset: 768)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !722, line: 156, size: 192, elements: !4098)
!4098 = !{!4099, !4100, !4102}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4097, file: !722, line: 157, baseType: !4096, size: 64)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4097, file: !722, line: 158, baseType: !4101, size: 64, offset: 64)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4097, file: !722, line: 162, baseType: !46, size: 32, offset: 128)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4081, file: !722, line: 262, baseType: !4101, size: 64, offset: 832)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4081, file: !722, line: 264, baseType: !46, size: 32, offset: 896)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4081, file: !722, line: 268, baseType: !46, size: 32, offset: 928)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4081, file: !722, line: 270, baseType: !748, size: 64, offset: 960)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4081, file: !722, line: 274, baseType: !170, size: 16, offset: 1024)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4081, file: !722, line: 275, baseType: !753, size: 8, offset: 1040)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4081, file: !722, line: 276, baseType: !755, size: 8, offset: 1048)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4081, file: !722, line: 280, baseType: !757, size: 64, offset: 1088)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4081, file: !722, line: 289, baseType: !760, size: 64, offset: 1152)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4081, file: !722, line: 297, baseType: !40, size: 64, offset: 1216)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4081, file: !722, line: 298, baseType: !40, size: 64, offset: 1280)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4081, file: !722, line: 299, baseType: !40, size: 64, offset: 1344)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4081, file: !722, line: 300, baseType: !40, size: 64, offset: 1408)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4081, file: !722, line: 302, baseType: !47, size: 64, offset: 1472)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4081, file: !722, line: 303, baseType: !46, size: 32, offset: 1536)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4081, file: !722, line: 305, baseType: !768, size: 160, offset: 1568)
!4119 = !DILocalVariable(name: "res_ptr", scope: !4059, file: !605, line: 190, type: !39)
!4120 = !DILocalVariable(name: "res_size", scope: !4059, file: !605, line: 191, type: !47)
!4121 = !DILocalVariable(name: "c", scope: !4056, file: !605, line: 195, type: !46)
!4122 = !DILocalVariable(name: "buf2", scope: !4056, file: !605, line: 197, type: !4123)
!4123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 408, elements: !4124)
!4124 = !{!4125}
!4125 = !DISubrange(count: 51)
!4126 = !DILocalVariable(name: "l1", scope: !4056, file: !605, line: 198, type: !47)
!4127 = !DILocalVariable(name: "l2", scope: !4056, file: !605, line: 198, type: !47)
!4128 = !DILocalVariable(name: "old_res_ptr", scope: !4056, file: !605, line: 199, type: !39)
!4129 = !DILocation(line: 196, column: 28, scope: !4056, inlinedAt: !4130)
!4130 = distinct !DILocation(line: 589, column: 18, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4049, file: !605, line: 589, column: 3)
!4132 = !DILocation(line: 197, column: 28, scope: !4056, inlinedAt: !4130)
!4133 = !DILocation(line: 403, column: 13, scope: !4049)
!4134 = !DILocation(line: 395, column: 15, scope: !4049)
!4135 = !DILocation(line: 584, column: 15, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4049, file: !605, line: 584, column: 7)
!4137 = !DILocation(line: 584, column: 7, scope: !4049)
!4138 = !DILocation(line: 128, column: 8, scope: !4067, inlinedAt: !4130)
!4139 = !DILocation(line: 126, column: 15, scope: !4067, inlinedAt: !4130)
!4140 = !DILocation(line: 129, column: 10, scope: !4066, inlinedAt: !4130)
!4141 = !DILocation(line: 129, column: 7, scope: !4067, inlinedAt: !4130)
!4142 = !DILocation(line: 138, column: 13, scope: !4065, inlinedAt: !4130)
!4143 = !DILocation(line: 132, column: 19, scope: !4065, inlinedAt: !4130)
!4144 = !DILocation(line: 139, column: 15, scope: !4145, inlinedAt: !4130)
!4145 = distinct !DILexicalBlock(scope: !4065, file: !605, line: 139, column: 11)
!4146 = !DILocation(line: 139, column: 23, scope: !4145, inlinedAt: !4130)
!4147 = !DILocation(line: 139, column: 26, scope: !4145, inlinedAt: !4130)
!4148 = !DILocation(line: 139, column: 33, scope: !4145, inlinedAt: !4130)
!4149 = !DILocation(line: 139, column: 11, scope: !4065, inlinedAt: !4130)
!4150 = !DILocation(line: 140, column: 9, scope: !4145, inlinedAt: !4130)
!4151 = !DILocation(line: 144, column: 26, scope: !4074, inlinedAt: !4130)
!4152 = !DILocation(line: 144, column: 16, scope: !4074, inlinedAt: !4130)
!4153 = !DILocation(line: 145, column: 16, scope: !4074, inlinedAt: !4130)
!4154 = !DILocation(line: 146, column: 34, scope: !4074, inlinedAt: !4130)
!4155 = !DILocation(line: 146, column: 38, scope: !4074, inlinedAt: !4130)
!4156 = !DILocation(line: 146, column: 42, scope: !4074, inlinedAt: !4130)
!4157 = !DILocation(line: 147, column: 48, scope: !4074, inlinedAt: !4130)
!4158 = !DILocation(line: 147, column: 46, scope: !4074, inlinedAt: !4130)
!4159 = !DILocation(line: 147, column: 69, scope: !4074, inlinedAt: !4130)
!4160 = !DILocation(line: 147, column: 30, scope: !4074, inlinedAt: !4130)
!4161 = !DILocation(line: 134, column: 13, scope: !4065, inlinedAt: !4130)
!4162 = !DILocation(line: 148, column: 13, scope: !4074, inlinedAt: !4130)
!4163 = !DILocation(line: 150, column: 13, scope: !4164, inlinedAt: !4130)
!4164 = distinct !DILexicalBlock(scope: !4165, file: !605, line: 149, column: 11)
!4165 = distinct !DILexicalBlock(scope: !4074, file: !605, line: 148, column: 13)
!4166 = !DILocation(line: 151, column: 17, scope: !4164, inlinedAt: !4130)
!4167 = !DILocation(line: 152, column: 34, scope: !4168, inlinedAt: !4130)
!4168 = distinct !DILexicalBlock(scope: !4164, file: !605, line: 151, column: 17)
!4169 = !DILocation(line: 153, column: 41, scope: !4164, inlinedAt: !4130)
!4170 = !DILocation(line: 153, column: 13, scope: !4164, inlinedAt: !4130)
!4171 = !DILocation(line: 157, column: 11, scope: !4065, inlinedAt: !4130)
!4172 = !DILocation(line: 171, column: 16, scope: !4063, inlinedAt: !4130)
!4173 = !DILocation(line: 162, column: 15, scope: !4063, inlinedAt: !4130)
!4174 = !DILocation(line: 173, column: 18, scope: !4062, inlinedAt: !4130)
!4175 = !DILocation(line: 173, column: 15, scope: !4063, inlinedAt: !4130)
!4176 = !DILocation(line: 180, column: 20, scope: !4061, inlinedAt: !4130)
!4177 = !DILocation(line: 178, column: 21, scope: !4061, inlinedAt: !4130)
!4178 = !DILocation(line: 181, column: 22, scope: !4060, inlinedAt: !4130)
!4179 = !DILocation(line: 181, column: 19, scope: !4061, inlinedAt: !4130)
!4180 = !DILocation(line: 184, column: 19, scope: !4181, inlinedAt: !4130)
!4181 = distinct !DILexicalBlock(scope: !4060, file: !605, line: 182, column: 17)
!4182 = !DILocation(line: 186, column: 17, scope: !4181, inlinedAt: !4130)
!4183 = !DILocation(line: 190, column: 25, scope: !4059, inlinedAt: !4130)
!4184 = !DILocation(line: 191, column: 26, scope: !4059, inlinedAt: !4130)
!4185 = !DILocation(line: 193, column: 19, scope: !4059, inlinedAt: !4130)
!4186 = !DILocation(line: 196, column: 23, scope: !4056, inlinedAt: !4130)
!4187 = !DILocation(line: 197, column: 23, scope: !4056, inlinedAt: !4130)
!4188 = !DILocalVariable(name: "__fp", arg: 1, scope: !4189, file: !1091, line: 63, type: !4079)
!4189 = distinct !DISubprogram(name: "getc_unlocked", scope: !1091, file: !1091, line: 63, type: !4190, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !261, variables: !4192)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!46, !4079}
!4192 = !{!4188}
!4193 = !DILocation(line: 63, column: 22, scope: !4189, inlinedAt: !4194)
!4194 = distinct !DILocation(line: 201, column: 27, scope: !4056, inlinedAt: !4130)
!4195 = !DILocation(line: 65, column: 10, scope: !4189, inlinedAt: !4194)
!4196 = !DILocation(line: 195, column: 27, scope: !4056, inlinedAt: !4130)
!4197 = !DILocation(line: 202, column: 27, scope: !4056, inlinedAt: !4130)
!4198 = distinct !{!4198, !4199, !4202}
!4199 = !DILocation(line: 209, column: 27, scope: !4200)
!4200 = distinct !DILexicalBlock(scope: !4201, file: !605, line: 207, column: 25)
!4201 = distinct !DILexicalBlock(scope: !4056, file: !605, line: 206, column: 27)
!4202 = !DILocation(line: 211, column: 58, scope: !4200)
!4203 = !DILocation(line: 65, column: 10, scope: !4189, inlinedAt: !4204)
!4204 = distinct !DILocation(line: 210, column: 33, scope: !4200, inlinedAt: !4130)
!4205 = !DILocation(line: 63, column: 22, scope: !4189, inlinedAt: !4204)
!4206 = !DILocation(line: 210, column: 29, scope: !4200, inlinedAt: !4130)
!4207 = distinct !{!4207, !4208, !4209}
!4208 = !DILocation(line: 193, column: 19, scope: !4058)
!4209 = !DILocation(line: 241, column: 21, scope: !4058)
!4210 = !DILocation(line: 216, column: 23, scope: !4056, inlinedAt: !4130)
!4211 = !DILocation(line: 217, column: 27, scope: !4212, inlinedAt: !4130)
!4212 = distinct !DILexicalBlock(scope: !4056, file: !605, line: 217, column: 27)
!4213 = !DILocation(line: 217, column: 64, scope: !4212, inlinedAt: !4130)
!4214 = !DILocation(line: 217, column: 27, scope: !4056, inlinedAt: !4130)
!4215 = !DILocation(line: 219, column: 28, scope: !4056, inlinedAt: !4130)
!4216 = !DILocation(line: 198, column: 30, scope: !4056, inlinedAt: !4130)
!4217 = !DILocation(line: 220, column: 28, scope: !4056, inlinedAt: !4130)
!4218 = !DILocation(line: 198, column: 34, scope: !4056, inlinedAt: !4130)
!4219 = !DILocation(line: 199, column: 29, scope: !4056, inlinedAt: !4130)
!4220 = !DILocation(line: 222, column: 36, scope: !4221, inlinedAt: !4130)
!4221 = distinct !DILexicalBlock(scope: !4056, file: !605, line: 222, column: 27)
!4222 = !DILocation(line: 222, column: 27, scope: !4056, inlinedAt: !4130)
!4223 = !DILocation(line: 225, column: 63, scope: !4224, inlinedAt: !4130)
!4224 = distinct !DILexicalBlock(scope: !4221, file: !605, line: 223, column: 25)
!4225 = !DILocation(line: 225, column: 46, scope: !4224, inlinedAt: !4130)
!4226 = !DILocation(line: 226, column: 25, scope: !4224, inlinedAt: !4130)
!4227 = !DILocation(line: 229, column: 36, scope: !4228, inlinedAt: !4130)
!4228 = distinct !DILexicalBlock(scope: !4221, file: !605, line: 228, column: 25)
!4229 = !DILocation(line: 230, column: 73, scope: !4228, inlinedAt: !4130)
!4230 = !DILocation(line: 230, column: 46, scope: !4228, inlinedAt: !4130)
!4231 = !DILocation(line: 232, column: 35, scope: !4232, inlinedAt: !4130)
!4232 = distinct !DILexicalBlock(scope: !4056, file: !605, line: 232, column: 27)
!4233 = !DILocation(line: 232, column: 27, scope: !4056, inlinedAt: !4130)
!4234 = !DILocation(line: 236, column: 27, scope: !4235, inlinedAt: !4130)
!4235 = distinct !DILexicalBlock(scope: !4232, file: !605, line: 233, column: 25)
!4236 = !DILocation(line: 237, column: 27, scope: !4235, inlinedAt: !4130)
!4237 = !DILocation(line: 241, column: 21, scope: !4057, inlinedAt: !4130)
!4238 = !DILocation(line: 239, column: 39, scope: !4056, inlinedAt: !4130)
!4239 = !DILocation(line: 239, column: 50, scope: !4056, inlinedAt: !4130)
!4240 = !DILocation(line: 239, column: 61, scope: !4056, inlinedAt: !4130)
!4241 = !DILocalVariable(name: "__dest", arg: 1, scope: !4242, file: !4243, line: 88, type: !4246)
!4242 = distinct !DISubprogram(name: "strcpy", scope: !4243, file: !4243, line: 88, type: !4244, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !261, variables: !4248)
!4243 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!39, !4246, !4247}
!4246 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!4247 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !36)
!4248 = !{!4241, !4249}
!4249 = !DILocalVariable(name: "__src", arg: 2, scope: !4242, file: !4243, line: 88, type: !4247)
!4250 = !DILocation(line: 88, column: 1, scope: !4242, inlinedAt: !4251)
!4251 = distinct !DILocation(line: 239, column: 23, scope: !4056, inlinedAt: !4130)
!4252 = !DILocation(line: 90, column: 49, scope: !4242, inlinedAt: !4251)
!4253 = !DILocation(line: 90, column: 10, scope: !4242, inlinedAt: !4251)
!4254 = !DILocation(line: 88, column: 1, scope: !4242, inlinedAt: !4255)
!4255 = distinct !DILocation(line: 240, column: 23, scope: !4056, inlinedAt: !4130)
!4256 = !DILocation(line: 90, column: 49, scope: !4242, inlinedAt: !4255)
!4257 = !DILocation(line: 90, column: 10, scope: !4242, inlinedAt: !4255)
!4258 = !DILocation(line: 193, column: 19, scope: !4057, inlinedAt: !4130)
!4259 = !DILocation(line: 242, column: 19, scope: !4059, inlinedAt: !4130)
!4260 = !DILocation(line: 243, column: 32, scope: !4261, inlinedAt: !4130)
!4261 = distinct !DILexicalBlock(scope: !4059, file: !605, line: 243, column: 23)
!4262 = !DILocation(line: 243, column: 23, scope: !4059, inlinedAt: !4130)
!4263 = !DILocation(line: 247, column: 33, scope: !4264, inlinedAt: !4130)
!4264 = distinct !DILexicalBlock(scope: !4261, file: !605, line: 246, column: 21)
!4265 = !DILocation(line: 247, column: 45, scope: !4264, inlinedAt: !4130)
!4266 = !DILocation(line: 253, column: 11, scope: !4063, inlinedAt: !4130)
!4267 = !DILocation(line: 377, column: 23, scope: !4065, inlinedAt: !4130)
!4268 = !DILocation(line: 378, column: 5, scope: !4065, inlinedAt: !4130)
!4269 = !DILocation(line: 396, column: 15, scope: !4049)
!4270 = !DILocation(line: 590, column: 8, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4131, file: !605, line: 589, column: 3)
!4272 = !DILocation(line: 590, column: 17, scope: !4271)
!4273 = !DILocation(line: 589, column: 3, scope: !4131)
!4274 = !DILocation(line: 592, column: 9, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !4271, file: !605, line: 592, column: 9)
!4276 = !DILocation(line: 592, column: 35, scope: !4275)
!4277 = !DILocation(line: 593, column: 9, scope: !4275)
!4278 = !DILocation(line: 593, column: 24, scope: !4275)
!4279 = !DILocation(line: 593, column: 31, scope: !4275)
!4280 = !DILocation(line: 593, column: 34, scope: !4275)
!4281 = !DILocation(line: 593, column: 45, scope: !4275)
!4282 = !DILocation(line: 592, column: 9, scope: !4271)
!4283 = !DILocation(line: 595, column: 29, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4275, file: !605, line: 594, column: 7)
!4285 = !DILocation(line: 595, column: 27, scope: !4284)
!4286 = !DILocation(line: 595, column: 46, scope: !4284)
!4287 = !DILocation(line: 596, column: 9, scope: !4284)
!4288 = !DILocation(line: 591, column: 19, scope: !4271)
!4289 = !DILocation(line: 591, column: 36, scope: !4271)
!4290 = !DILocation(line: 591, column: 16, scope: !4271)
!4291 = !DILocation(line: 591, column: 52, scope: !4271)
!4292 = !DILocation(line: 591, column: 69, scope: !4271)
!4293 = !DILocation(line: 591, column: 49, scope: !4271)
!4294 = distinct !{!4294, !4273, !4295}
!4295 = !DILocation(line: 597, column: 7, scope: !4131)
!4296 = !DILocation(line: 602, column: 7, scope: !4297)
!4297 = distinct !DILexicalBlock(scope: !4049, file: !605, line: 602, column: 7)
!4298 = !DILocation(line: 602, column: 18, scope: !4297)
!4299 = !DILocation(line: 602, column: 7, scope: !4049)
!4300 = !DILocation(line: 612, column: 3, scope: !4049)
