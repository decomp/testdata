; ModuleID = 'coreutils-8.27/src/runcon.bc'
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
@.str.1 = private unnamed_addr constant [107 x i8] c"Usage: %s CONTEXT COMMAND [args]\0A  or:  %s [ -c ] [-u USER] [-r ROLE] [-t TYPE] [-l RANGE] COMMAND [args]\0A\00", align 1
@.str.2 = private unnamed_addr constant [126 x i8] c"Run a program in a different SELinux security context.\0AWith neither CONTEXT nor COMMAND, print the current security context.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.21 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [267 x i8] c"  CONTEXT            Complete security context\0A  -c, --compute      compute process transition context before modifying\0A  -t, --type=TYPE    type (for same role as parent)\0A  -u, --user=USER    user identity\0A  -r, --role=ROLE    role\0A  -l, --range=RANGE  levelrange\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"runcon\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.33 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"+r:t:u:l:c\00", align 1
@long_options = internal constant [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 1, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 1, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 1, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 1, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.11 = private unnamed_addr constant [15 x i8] c"multiple roles\00", align 1
@optarg = external local_unnamed_addr global i8*, align 8
@.str.12 = private unnamed_addr constant [15 x i8] c"multiple types\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"multiple users\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"multiple levelranges\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"Russell Coker\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [30 x i8] c"failed to get current context\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"you must specify -c, -t, -u, -l, -r, or context\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"no command specified\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"%s may be used only on a SELinux kernel\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"compute\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), align 8, !dbg !46
@.str.22 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !51
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !56
@.str.25 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.26 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !60
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !67
@.str.44 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.45 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.46 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.48, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.49, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.50, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.51, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.52, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.53, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.54, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.55, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.56, i32 0, i32 0), i8* null], align 16, !dbg !74
@.str.47 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.48 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.49 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.50 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.51 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.52 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.53 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.54 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.55 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.56 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !119
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !126
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !137
@.str.11.57 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.58 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.59 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.60 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.61 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.62 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.63 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !144
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !151
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !139
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !153
@.str.66 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.67 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.68 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.69 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.70 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.71 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.72 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.73 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.74 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.75 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.76 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.77 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.78 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.79 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.82 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.83 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.84 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.85 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.86 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.87 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !159
@.str.1.98 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.108 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.109 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.112 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !168
@.str.3.113 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.114 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.115 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.116 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.117 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.118 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !564 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !568, metadata !569), !dbg !570
  %2 = icmp eq i32 %0, 0, !dbg !571
  br i1 %2, label %8, label %3, !dbg !573

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !574, !tbaa !576
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !574
  %6 = load i8*, i8** @program_name, align 8, !dbg !574, !tbaa !576
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !574
  br label %42, !dbg !574

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !580
  %10 = load i8*, i8** @program_name, align 8, !dbg !580, !tbaa !576
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #10, !dbg !580
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !582
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !582, !tbaa !576
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !582
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.21, i64 0, i64 0), i32 5) #10, !dbg !583
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !583, !tbaa !576
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !583
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([267 x i8], [267 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !588
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !588, !tbaa !576
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !588
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !589
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !589, !tbaa !576
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10, !dbg !589
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !590
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !590, !tbaa !576
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #10, !dbg !590
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !21, metadata !569) #10, !dbg !591
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i64 0, metadata !21, metadata !569) #10, !dbg !591
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #10, !dbg !593
  %28 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0)) #10, !dbg !593
  %29 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !594
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !29, metadata !569) #10, !dbg !595
  %30 = icmp eq i8* %29, null, !dbg !596
  br i1 %30, label %37, label %31, !dbg !598

; <label>:31:                                     ; preds = %8
  %32 = tail call i32 @strncmp(i8* nonnull %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #14, !dbg !599
  %33 = icmp eq i32 %32, 0, !dbg !599
  br i1 %33, label %37, label %34, !dbg !600

; <label>:34:                                     ; preds = %31
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !601
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !601
  br label %37, !dbg !603

; <label>:37:                                     ; preds = %8, %31, %34
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !604
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !604
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #10, !dbg !605
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0)) #10, !dbg !605
  br label %42

; <label>:42:                                     ; preds = %37, %3
  tail call void @exit(i32 %0) #15, !dbg !606
  unreachable, !dbg !606
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !607 {
  %3 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !612, metadata !569), !dbg !629
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !613, metadata !569), !dbg !630
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !614, metadata !569), !dbg !631
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !615, metadata !569), !dbg !632
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !616, metadata !569), !dbg !633
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !617, metadata !569), !dbg !634
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !618, metadata !569), !dbg !635
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !619, metadata !569), !dbg !636
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !620, metadata !569), !dbg !637
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !621, metadata !569), !dbg !638
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !622, metadata !569), !dbg !639
  %4 = load i8*, i8** %1, align 8, !dbg !640, !tbaa !576
  tail call void @set_program_name(i8* %4) #10, !dbg !641
  %5 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !642
  %6 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !643
  %7 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !644
  %8 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !645
  %9 = bitcast i32* %3 to i8*
  br label %10, !dbg !646

; <label>:10:                                     ; preds = %46, %2
  %11 = phi i8* [ null, %2 ], [ %47, %46 ]
  %12 = phi i8* [ null, %2 ], [ %48, %46 ]
  %13 = phi i8* [ null, %2 ], [ %49, %46 ]
  %14 = phi i8 [ 0, %2 ], [ %50, %46 ]
  %15 = phi i8* [ null, %2 ], [ %51, %46 ]
  call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !614, metadata !569), !dbg !631
  call void @llvm.dbg.value(metadata i8 %14, i64 0, metadata !622, metadata !569), !dbg !639
  call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !615, metadata !569), !dbg !632
  call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !616, metadata !569), !dbg !633
  call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !617, metadata !569), !dbg !634
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #10, !dbg !647
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !626, metadata !569), !dbg !648
  store i32 0, i32* %3, align 4, !dbg !648, !tbaa !649
  call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !626, metadata !569), !dbg !648
  %16 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @long_options, i64 0, i64 0), i32* nonnull %3) #10, !dbg !651
  call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !628, metadata !569), !dbg !652
  switch i32 %16, label %45 [
    i32 -1, label %52
    i32 114, label %17
    i32 116, label %23
    i32 117, label %29
    i32 108, label %35
    i32 99, label %46
    i32 -130, label %41
    i32 -131, label %42
  ], !dbg !653

; <label>:17:                                     ; preds = %10
  %18 = icmp eq i8* %15, null, !dbg !654
  br i1 %18, label %21, label %19, !dbg !657

; <label>:19:                                     ; preds = %17
  %20 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 5) #10, !dbg !658
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %20) #10, !dbg !658
  unreachable, !dbg !658

; <label>:21:                                     ; preds = %17
  %22 = load i8*, i8** @optarg, align 8, !dbg !659, !tbaa !576
  call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !614, metadata !569), !dbg !631
  br label %46, !dbg !660

; <label>:23:                                     ; preds = %10
  %24 = icmp eq i8* %11, null, !dbg !661
  br i1 %24, label %27, label %25, !dbg !663

; <label>:25:                                     ; preds = %23
  %26 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !664
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %26) #10, !dbg !664
  unreachable, !dbg !664

; <label>:27:                                     ; preds = %23
  %28 = load i8*, i8** @optarg, align 8, !dbg !665, !tbaa !576
  call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !617, metadata !569), !dbg !634
  br label %46, !dbg !666

; <label>:29:                                     ; preds = %10
  %30 = icmp eq i8* %12, null, !dbg !667
  br i1 %30, label %33, label %31, !dbg !669

; <label>:31:                                     ; preds = %29
  %32 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !670
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %32) #10, !dbg !670
  unreachable, !dbg !670

; <label>:33:                                     ; preds = %29
  %34 = load i8*, i8** @optarg, align 8, !dbg !671, !tbaa !576
  call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !616, metadata !569), !dbg !633
  br label %46, !dbg !672

; <label>:35:                                     ; preds = %10
  %36 = icmp eq i8* %13, null, !dbg !673
  br i1 %36, label %39, label %37, !dbg !675

; <label>:37:                                     ; preds = %35
  %38 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !676
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %38) #10, !dbg !676
  unreachable, !dbg !676

; <label>:39:                                     ; preds = %35
  %40 = load i8*, i8** @optarg, align 8, !dbg !677, !tbaa !576
  call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !615, metadata !569), !dbg !632
  br label %46, !dbg !678

; <label>:41:                                     ; preds = %10
  call void @usage(i32 0) #16, !dbg !679
  unreachable, !dbg !679

; <label>:42:                                     ; preds = %10
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !680, !tbaa !576
  %44 = load i8*, i8** @Version, align 8, !dbg !680, !tbaa !576
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* null) #10, !dbg !680
  call void @exit(i32 0) #15, !dbg !680
  unreachable, !dbg !680

; <label>:45:                                     ; preds = %10
  call void @usage(i32 1) #16, !dbg !681
  unreachable, !dbg !681

; <label>:46:                                     ; preds = %21, %27, %33, %39, %10
  %47 = phi i8* [ %11, %39 ], [ %11, %33 ], [ %28, %27 ], [ %11, %21 ], [ %11, %10 ]
  %48 = phi i8* [ %12, %39 ], [ %34, %33 ], [ %12, %27 ], [ %12, %21 ], [ %12, %10 ]
  %49 = phi i8* [ %40, %39 ], [ %13, %33 ], [ %13, %27 ], [ %13, %21 ], [ %13, %10 ]
  %50 = phi i8 [ %14, %39 ], [ %14, %33 ], [ %14, %27 ], [ %14, %21 ], [ 1, %10 ]
  %51 = phi i8* [ %15, %39 ], [ %15, %33 ], [ %15, %27 ], [ %22, %21 ], [ %15, %10 ]
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !614, metadata !569), !dbg !631
  call void @llvm.dbg.value(metadata i8 %50, i64 0, metadata !622, metadata !569), !dbg !639
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !615, metadata !569), !dbg !632
  call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !616, metadata !569), !dbg !633
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !617, metadata !569), !dbg !634
  call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !614, metadata !569), !dbg !631
  call void @llvm.dbg.value(metadata i8 %14, i64 0, metadata !622, metadata !569), !dbg !639
  call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !615, metadata !569), !dbg !632
  call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !616, metadata !569), !dbg !633
  call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !617, metadata !569), !dbg !634
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #10, !dbg !682
  br label %10, !dbg !646, !llvm.loop !683

; <label>:52:                                     ; preds = %10
  call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !614, metadata !569), !dbg !631
  call void @llvm.dbg.value(metadata i8 %14, i64 0, metadata !622, metadata !569), !dbg !639
  call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !615, metadata !569), !dbg !632
  call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !616, metadata !569), !dbg !633
  call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !617, metadata !569), !dbg !634
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #10, !dbg !682
  %53 = load i32, i32* @optind, align 4, !dbg !684, !tbaa !649
  %54 = icmp eq i32 %53, %0, !dbg !686
  br i1 %54, label %55, label %58, !dbg !687

; <label>:55:                                     ; preds = %52
  %56 = tail call i32* @__errno_location() #17, !dbg !688
  store i32 95, i32* %56, align 4, !dbg !700, !tbaa !649
  %57 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i32 5) #10, !dbg !701
  call void (i32, i32, i8*, ...) @error(i32 1, i32 95, i8* %57) #10, !dbg !701
  unreachable, !dbg !701

; <label>:58:                                     ; preds = %52
  %59 = icmp ne i8* %12, null, !dbg !702
  %60 = icmp ne i8* %15, null, !dbg !704
  %61 = or i1 %59, %60, !dbg !705
  %62 = icmp ne i8* %11, null, !dbg !706
  %63 = or i1 %62, %61, !dbg !705
  %64 = icmp ne i8* %13, null, !dbg !707
  %65 = or i1 %64, %63, !dbg !705
  %66 = xor i1 %65, true, !dbg !705
  %67 = and i8 %14, 1, !dbg !708
  %68 = icmp eq i8 %67, 0, !dbg !708
  %69 = and i1 %68, %66, !dbg !705
  br i1 %69, label %70, label %76, !dbg !705

; <label>:70:                                     ; preds = %58
  %71 = icmp slt i32 %53, %0, !dbg !709
  br i1 %71, label %74, label %72, !dbg !712

; <label>:72:                                     ; preds = %70
  %73 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.18, i64 0, i64 0), i32 5) #10, !dbg !713
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %73) #10, !dbg !715
  call void @usage(i32 1) #16, !dbg !716
  unreachable, !dbg !716

; <label>:74:                                     ; preds = %70
  %75 = add nsw i32 %53, 1, !dbg !717
  store i32 %75, i32* @optind, align 4, !dbg !717, !tbaa !649
  br label %76, !dbg !718

; <label>:76:                                     ; preds = %58, %74
  %77 = phi i32 [ %53, %58 ], [ %75, %74 ], !dbg !719
  %78 = icmp slt i32 %77, %0, !dbg !721
  br i1 %78, label %81, label %79, !dbg !722

; <label>:79:                                     ; preds = %76
  %80 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !723
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %80) #10, !dbg !725
  call void @usage(i32 1) #16, !dbg !726
  unreachable, !dbg !726

; <label>:81:                                     ; preds = %76
  %82 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !727
  %83 = load i8*, i8** @program_name, align 8, !dbg !727, !tbaa !576
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %82, i8* %83) #10, !dbg !727
  unreachable, !dbg !727
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !729 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !731, metadata !569), !dbg !732
  store i8* %0, i8** @file_name, align 8, !dbg !733, !tbaa !576
  ret void, !dbg !734
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !735 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !739, metadata !569), !dbg !740
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !741, !tbaa !742
  ret void, !dbg !744
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !745 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !750, !tbaa !576
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !751
  %3 = icmp eq i32 %2, 0, !dbg !752
  br i1 %3, label %21, label %4, !dbg !753

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !754, !tbaa !742, !range !755
  %6 = icmp eq i8 %5, 0, !dbg !754
  %7 = tail call i32* @__errno_location() #17, !dbg !756
  br i1 %6, label %11, label %8, !dbg !758

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !759, !tbaa !649
  %10 = icmp eq i32 %9, 32, !dbg !760
  br i1 %10, label %21, label %11, !dbg !761

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !762
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !747, metadata !569), !dbg !763
  %13 = load i8*, i8** @file_name, align 8, !dbg !764, !tbaa !576
  %14 = icmp eq i8* %13, null, !dbg !764
  %15 = load i32, i32* %7, align 4, !tbaa !649
  br i1 %14, label %18, label %16, !dbg !765

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !766
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.26, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !767
  br label %19, !dbg !767

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.27, i64 0, i64 0), i8* %12) #10, !dbg !768
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !769, !tbaa !649
  tail call void @_exit(i32 %20) #15, !dbg !770
  unreachable, !dbg !770

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !771, !tbaa !576
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !773
  %24 = icmp eq i32 %23, 0, !dbg !774
  br i1 %24, label %27, label %25, !dbg !775

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !776, !tbaa !649
  tail call void @_exit(i32 %26) #15, !dbg !777
  unreachable, !dbg !777

; <label>:27:                                     ; preds = %21
  ret void, !dbg !778
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !779 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !781, metadata !569), !dbg !784
  %2 = icmp eq i8* %0, null, !dbg !785
  br i1 %2, label %3, label %6, !dbg !787

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !788, !tbaa !576
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.44, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !790
  tail call void @abort() #15, !dbg !791
  unreachable, !dbg !791

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !792
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !782, metadata !569), !dbg !793
  %8 = icmp eq i8* %7, null, !dbg !794
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !795
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !796
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !783, metadata !569), !dbg !797
  %11 = ptrtoint i8* %10 to i64, !dbg !798
  %12 = ptrtoint i8* %0 to i64, !dbg !798
  %13 = sub i64 %11, %12, !dbg !798
  %14 = icmp sgt i64 %13, 6, !dbg !800
  br i1 %14, label %15, label %24, !dbg !801

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !802
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.45, i64 0, i64 0), i64 7) #14, !dbg !803
  %18 = icmp eq i32 %17, 0, !dbg !804
  br i1 %18, label %19, label %24, !dbg !805

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !781, metadata !569), !dbg !784
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.46, i64 0, i64 0), i64 3) #14, !dbg !806
  %21 = icmp eq i32 %20, 0, !dbg !809
  br i1 %21, label %22, label %24, !dbg !810

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !811
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !781, metadata !569), !dbg !784
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !813, !tbaa !576
  br label %24, !dbg !814

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !781, metadata !569), !dbg !784
  store i8* %25, i8** @program_name, align 8, !dbg !815, !tbaa !576
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !816, !tbaa !576
  ret void, !dbg !817
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !818 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !823, metadata !569), !dbg !826
  %2 = tail call i32* @__errno_location() #17, !dbg !827
  %3 = load i32, i32* %2, align 4, !dbg !827, !tbaa !649
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !824, metadata !569), !dbg !828
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !829
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !829
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !829
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !830
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !830
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !825, metadata !569), !dbg !831
  store i32 %3, i32* %2, align 4, !dbg !832, !tbaa !649
  ret %struct.quoting_options* %8, !dbg !833
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !834 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !840, metadata !569), !dbg !841
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !842
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !842
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !843
  %5 = load i32, i32* %4, align 8, !dbg !843, !tbaa !844
  ret i32 %5, !dbg !846
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !847 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !851, metadata !569), !dbg !853
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !852, metadata !569), !dbg !854
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !855
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !855
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !856
  store i32 %1, i32* %5, align 8, !dbg !857, !tbaa !844
  ret void, !dbg !858
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !859 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !863, metadata !569), !dbg !871
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !864, metadata !569), !dbg !872
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !865, metadata !569), !dbg !873
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !866, metadata !569), !dbg !874
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !875
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !875
  %6 = lshr i8 %1, 5, !dbg !876
  %7 = zext i8 %6 to i64, !dbg !876
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !877
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !867, metadata !569), !dbg !878
  %9 = and i8 %1, 31, !dbg !879
  %10 = zext i8 %9 to i32, !dbg !880
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !869, metadata !569), !dbg !881
  %11 = load i32, i32* %8, align 4, !dbg !882, !tbaa !649
  %12 = lshr i32 %11, %10, !dbg !883
  %13 = and i32 %12, 1, !dbg !884
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !870, metadata !569), !dbg !885
  %14 = and i32 %2, 1, !dbg !886
  %15 = xor i32 %13, %14, !dbg !887
  %16 = shl i32 %15, %10, !dbg !888
  %17 = xor i32 %16, %11, !dbg !889
  store i32 %17, i32* %8, align 4, !dbg !889, !tbaa !649
  ret i32 %13, !dbg !890
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !891 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !895, metadata !569), !dbg !898
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !896, metadata !569), !dbg !899
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !900
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !895, metadata !569), !dbg !898
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !902
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !895, metadata !569), !dbg !898
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !903
  %6 = load i32, i32* %5, align 4, !dbg !903, !tbaa !904
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !897, metadata !569), !dbg !905
  store i32 %1, i32* %5, align 4, !dbg !906, !tbaa !904
  ret i32 %6, !dbg !907
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !908 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !912, metadata !569), !dbg !915
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !913, metadata !569), !dbg !916
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !914, metadata !569), !dbg !917
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !918
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !912, metadata !569), !dbg !915
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !920
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !912, metadata !569), !dbg !915
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !921
  store i32 10, i32* %6, align 8, !dbg !922, !tbaa !844
  %7 = icmp ne i8* %1, null, !dbg !923
  %8 = icmp ne i8* %2, null, !dbg !925
  %9 = and i1 %7, %8, !dbg !926
  br i1 %9, label %11, label %10, !dbg !926

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !927
  unreachable, !dbg !927

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !928
  store i8* %1, i8** %12, align 8, !dbg !929, !tbaa !930
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !931
  store i8* %2, i8** %13, align 8, !dbg !932, !tbaa !933
  ret void, !dbg !934
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !935 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !939, metadata !569), !dbg !947
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !940, metadata !569), !dbg !948
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !941, metadata !569), !dbg !949
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !942, metadata !569), !dbg !950
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !943, metadata !569), !dbg !951
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !952
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !952
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !944, metadata !569), !dbg !953
  %8 = tail call i32* @__errno_location() #17, !dbg !954
  %9 = load i32, i32* %8, align 4, !dbg !954, !tbaa !649
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !945, metadata !569), !dbg !955
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !956
  %11 = load i32, i32* %10, align 8, !dbg !956, !tbaa !844
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !957
  %13 = load i32, i32* %12, align 4, !dbg !957, !tbaa !904
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !958
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !959
  %16 = load i8*, i8** %15, align 8, !dbg !959, !tbaa !930
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !960
  %18 = load i8*, i8** %17, align 8, !dbg !960, !tbaa !933
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !961
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !946, metadata !569), !dbg !962
  store i32 %9, i32* %8, align 4, !dbg !963, !tbaa !649
  ret i64 %19, !dbg !964
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !965 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !971, metadata !569), !dbg !1035
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !972, metadata !569), !dbg !1036
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !973, metadata !569), !dbg !1037
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !974, metadata !569), !dbg !1038
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !975, metadata !569), !dbg !1039
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !976, metadata !569), !dbg !1040
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !977, metadata !569), !dbg !1041
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !978, metadata !569), !dbg !1042
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !979, metadata !569), !dbg !1043
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !981, metadata !569), !dbg !1044
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !982, metadata !569), !dbg !1045
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !983, metadata !569), !dbg !1046
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !984, metadata !569), !dbg !1047
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !985, metadata !569), !dbg !1048
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1049
  %14 = icmp eq i64 %13, 1, !dbg !1050
  %15 = lshr i32 %5, 1, !dbg !1051
  %16 = trunc i32 %15 to i8, !dbg !1051
  %17 = and i8 %16, 1, !dbg !1051
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !987, metadata !569), !dbg !1051
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !988, metadata !569), !dbg !1052
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !989, metadata !569), !dbg !1053
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !990, metadata !569), !dbg !1054
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1055

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !972, metadata !569), !dbg !1036
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !990, metadata !569), !dbg !1054
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !989, metadata !569), !dbg !1053
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !988, metadata !569), !dbg !1052
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !987, metadata !569), !dbg !1051
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !974, metadata !569), !dbg !1038
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !985, metadata !569), !dbg !1048
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !984, metadata !569), !dbg !1047
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !983, metadata !569), !dbg !1046
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !982, metadata !569), !dbg !1045
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !981, metadata !569), !dbg !1044
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !979, metadata !569), !dbg !1043
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !978, metadata !569), !dbg !1042
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !975, metadata !569), !dbg !1039
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
  ], !dbg !1056

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !975, metadata !569), !dbg !1039
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !987, metadata !569), !dbg !1051
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !987, metadata !569), !dbg !1051
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !975, metadata !569), !dbg !1039
  br label %94, !dbg !1057

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !987, metadata !569), !dbg !1051
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !975, metadata !569), !dbg !1039
  %43 = and i8 %36, 1, !dbg !1059
  %44 = icmp eq i8 %43, 0, !dbg !1059
  br i1 %44, label %45, label %94, !dbg !1057

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1061
  br i1 %46, label %94, label %47, !dbg !1064

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1061, !tbaa !1065
  br label %94, !dbg !1061

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.57, i64 0, i64 0), i32 %28), !dbg !1066
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !978, metadata !569), !dbg !1042
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.58, i64 0, i64 0), i32 %28), !dbg !1070
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !979, metadata !569), !dbg !1043
  br label %51, !dbg !1071

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !979, metadata !569), !dbg !1043
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !978, metadata !569), !dbg !1042
  %54 = and i8 %36, 1, !dbg !1072
  %55 = icmp eq i8 %54, 0, !dbg !1072
  br i1 %55, label %56, label %72, !dbg !1074

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !983, metadata !569), !dbg !1046
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !983, metadata !569), !dbg !1046
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !981, metadata !569), !dbg !1044
  %57 = load i8, i8* %52, align 1, !dbg !1075, !tbaa !1065
  %58 = icmp eq i8 %57, 0, !dbg !1078
  br i1 %58, label %72, label %59, !dbg !1078

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1079

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !981, metadata !569), !dbg !1044
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !983, metadata !569), !dbg !1046
  %64 = icmp ult i64 %63, %40, !dbg !1079
  br i1 %64, label %65, label %67, !dbg !1082

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1079
  store i8 %61, i8* %66, align 1, !dbg !1079, !tbaa !1065
  br label %67, !dbg !1079

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1082
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !981, metadata !569), !dbg !1044
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1083
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !983, metadata !569), !dbg !1046
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !983, metadata !569), !dbg !1046
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !981, metadata !569), !dbg !1044
  %70 = load i8, i8* %69, align 1, !dbg !1075, !tbaa !1065
  %71 = icmp eq i8 %70, 0, !dbg !1078
  br i1 %71, label %72, label %60, !dbg !1078, !llvm.loop !1084

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !981, metadata !569), !dbg !1044
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !985, metadata !569), !dbg !1048
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !983, metadata !569), !dbg !1046
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1086
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !984, metadata !569), !dbg !1047
  br label %94, !dbg !1087

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !985, metadata !569), !dbg !1048
  br label %76, !dbg !1088

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !985, metadata !569), !dbg !1048
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !987, metadata !569), !dbg !1051
  br label %78, !dbg !1089

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !987, metadata !569), !dbg !1051
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !985, metadata !569), !dbg !1048
  %81 = and i8 %80, 1, !dbg !1090
  %82 = icmp eq i8 %81, 0, !dbg !1090
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !985, metadata !569), !dbg !1048
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1092
  br label %84, !dbg !1092

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !987, metadata !569), !dbg !1051
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !985, metadata !569), !dbg !1048
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !975, metadata !569), !dbg !1039
  %87 = and i8 %86, 1, !dbg !1093
  %88 = icmp eq i8 %87, 0, !dbg !1093
  br i1 %88, label %89, label %94, !dbg !1095

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1096
  br i1 %90, label %94, label %91, !dbg !1099

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1096, !tbaa !1065
  br label %94, !dbg !1096

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !987, metadata !569), !dbg !1051
  br label %94, !dbg !1100

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1101
  unreachable, !dbg !1101

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.59, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.59, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.59, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.58, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.58, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.58, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.59, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !987, metadata !569), !dbg !1051
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !985, metadata !569), !dbg !1048
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !984, metadata !569), !dbg !1047
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !983, metadata !569), !dbg !1046
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !981, metadata !569), !dbg !1044
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !979, metadata !569), !dbg !1043
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !978, metadata !569), !dbg !1042
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !975, metadata !569), !dbg !1039
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !980, metadata !569), !dbg !1102
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
  br label %122, !dbg !1103

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !972, metadata !569), !dbg !1036
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !990, metadata !569), !dbg !1054
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !989, metadata !569), !dbg !1053
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !988, metadata !569), !dbg !1052
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !974, metadata !569), !dbg !1038
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !982, metadata !569), !dbg !1045
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !981, metadata !569), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !980, metadata !569), !dbg !1102
  %131 = icmp eq i64 %126, -1, !dbg !1104
  br i1 %131, label %134, label %132, !dbg !1105

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1106
  br i1 %133, label %590, label %138, !dbg !1107

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1108
  %136 = load i8, i8* %135, align 1, !dbg !1108, !tbaa !1065
  %137 = icmp eq i8 %136, 0, !dbg !1109
  br i1 %137, label %590, label %138, !dbg !1107

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !996, metadata !569), !dbg !1110
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !997, metadata !569), !dbg !1111
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !998, metadata !569), !dbg !1112
  br i1 %108, label %139, label %154, !dbg !1113

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1115
  %141 = and i1 %109, %131, !dbg !1116
  br i1 %141, label %142, label %144, !dbg !1116

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1117
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !974, metadata !569), !dbg !1038
  br label %144, !dbg !1118

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !974, metadata !569), !dbg !1038
  %146 = icmp ugt i64 %140, %145, !dbg !1119
  br i1 %146, label %154, label %147, !dbg !1120

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1121
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1122
  %150 = icmp ne i32 %149, 0, !dbg !1123
  %151 = or i1 %150, %111, !dbg !1124
  %152 = xor i1 %150, true, !dbg !1124
  %153 = zext i1 %152 to i8, !dbg !1124
  br i1 %151, label %154, label %635, !dbg !1124

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !996, metadata !569), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !974, metadata !569), !dbg !1038
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1125
  %158 = load i8, i8* %157, align 1, !dbg !1125, !tbaa !1065
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !991, metadata !569), !dbg !1126
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
  ], !dbg !1127

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1128

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1129

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !997, metadata !569), !dbg !1111
  %162 = and i8 %127, 1, !dbg !1133
  %163 = icmp eq i8 %162, 0, !dbg !1133
  %164 = and i1 %113, %163, !dbg !1133
  br i1 %164, label %165, label %181, !dbg !1133

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1135
  br i1 %166, label %167, label %169, !dbg !1139

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1135
  store i8 39, i8* %168, align 1, !dbg !1135, !tbaa !1065
  br label %169, !dbg !1135

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1139
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !981, metadata !569), !dbg !1044
  %171 = icmp ult i64 %170, %130, !dbg !1140
  br i1 %171, label %172, label %174, !dbg !1143

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1140
  store i8 36, i8* %173, align 1, !dbg !1140, !tbaa !1065
  br label %174, !dbg !1140

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1143
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !981, metadata !569), !dbg !1044
  %176 = icmp ult i64 %175, %130, !dbg !1144
  br i1 %176, label %177, label %179, !dbg !1147

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1144
  store i8 39, i8* %178, align 1, !dbg !1144, !tbaa !1065
  br label %179, !dbg !1144

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1147
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !981, metadata !569), !dbg !1044
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !988, metadata !569), !dbg !1052
  br label %181, !dbg !1148

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !988, metadata !569), !dbg !1052
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !981, metadata !569), !dbg !1044
  %184 = icmp ult i64 %182, %130, !dbg !1149
  br i1 %184, label %185, label %187, !dbg !1152

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1149
  store i8 92, i8* %186, align 1, !dbg !1149, !tbaa !1065
  br label %187, !dbg !1149

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1152
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !981, metadata !569), !dbg !1044
  br i1 %105, label %189, label %470, !dbg !1153

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1155
  %191 = icmp ult i64 %190, %155, !dbg !1156
  br i1 %191, label %192, label %470, !dbg !1157

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1158
  %194 = load i8, i8* %193, align 1, !dbg !1158, !tbaa !1065
  %195 = add i8 %194, -48, !dbg !1159
  %196 = icmp ult i8 %195, 10, !dbg !1159
  br i1 %196, label %197, label %470, !dbg !1159

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1160
  br i1 %198, label %199, label %201, !dbg !1164

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1160
  store i8 48, i8* %200, align 1, !dbg !1160, !tbaa !1065
  br label %201, !dbg !1160

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1164
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !981, metadata !569), !dbg !1044
  %203 = icmp ult i64 %202, %130, !dbg !1165
  br i1 %203, label %204, label %206, !dbg !1168

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1165
  store i8 48, i8* %205, align 1, !dbg !1165, !tbaa !1065
  br label %206, !dbg !1165

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1168
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !981, metadata !569), !dbg !1044
  br label %470, !dbg !1169

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1170

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1171

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1172

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1174

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1176
  %214 = icmp ult i64 %213, %155, !dbg !1177
  br i1 %214, label %215, label %470, !dbg !1178

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1179
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1180
  %218 = load i8, i8* %217, align 1, !dbg !1180, !tbaa !1065
  %219 = icmp eq i8 %218, 63, !dbg !1181
  br i1 %219, label %220, label %470, !dbg !1182

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1183
  %222 = load i8, i8* %221, align 1, !dbg !1183, !tbaa !1065
  %223 = sext i8 %222 to i32, !dbg !1183
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
  ], !dbg !1184

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1185

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !991, metadata !569), !dbg !1126
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !980, metadata !569), !dbg !1102
  %226 = icmp ult i64 %124, %130, !dbg !1187
  br i1 %226, label %227, label %229, !dbg !1190

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1187
  store i8 63, i8* %228, align 1, !dbg !1187, !tbaa !1065
  br label %229, !dbg !1187

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1190
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !981, metadata !569), !dbg !1044
  %231 = icmp ult i64 %230, %130, !dbg !1191
  br i1 %231, label %232, label %234, !dbg !1194

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1191
  store i8 34, i8* %233, align 1, !dbg !1191, !tbaa !1065
  br label %234, !dbg !1191

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1194
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !981, metadata !569), !dbg !1044
  %236 = icmp ult i64 %235, %130, !dbg !1195
  br i1 %236, label %237, label %239, !dbg !1198

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1195
  store i8 34, i8* %238, align 1, !dbg !1195, !tbaa !1065
  br label %239, !dbg !1195

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1198
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !981, metadata !569), !dbg !1044
  %241 = icmp ult i64 %240, %130, !dbg !1199
  br i1 %241, label %242, label %244, !dbg !1202

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1199
  store i8 63, i8* %243, align 1, !dbg !1199, !tbaa !1065
  br label %244, !dbg !1199

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1202
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !981, metadata !569), !dbg !1044
  br label %470, !dbg !1203

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !995, metadata !569), !dbg !1204
  br label %256, !dbg !1205

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !995, metadata !569), !dbg !1204
  br label %256, !dbg !1206

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !995, metadata !569), !dbg !1204
  br label %254, !dbg !1207

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !995, metadata !569), !dbg !1204
  br label %254, !dbg !1208

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !995, metadata !569), !dbg !1204
  br label %256, !dbg !1209

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !995, metadata !569), !dbg !1204
  br i1 %113, label %252, label %253, !dbg !1210

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1211

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1214

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !995, metadata !569), !dbg !1204
  br i1 %117, label %256, label %635, !dbg !1216

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !995, metadata !569), !dbg !1204
  br i1 %104, label %497, label %470, !dbg !1218

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1219
  br i1 %259, label %260, label %265, !dbg !1221

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1222, !tbaa !1065
  %262 = icmp ne i8 %261, 0, !dbg !1223
  %263 = icmp ne i64 %123, 0, !dbg !1224
  %264 = or i1 %263, %262, !dbg !1226
  br i1 %264, label %470, label %271, !dbg !1226

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1227
  %267 = icmp ne i64 %123, 0, !dbg !1224
  %268 = or i1 %267, %266, !dbg !1221
  br i1 %268, label %470, label %271, !dbg !1221

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1224
  br i1 %270, label %271, label %470, !dbg !1228

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !998, metadata !569), !dbg !1112
  br label %272, !dbg !1229

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !998, metadata !569), !dbg !1112
  br i1 %117, label %470, label %635, !dbg !1230

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !989, metadata !569), !dbg !1053
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !998, metadata !569), !dbg !1112
  br i1 %113, label %275, label %470, !dbg !1232

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1233

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1236
  %278 = icmp ne i64 %125, 0, !dbg !1238
  %279 = or i1 %278, %277, !dbg !1239
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !982, metadata !569), !dbg !1045
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !972, metadata !569), !dbg !1036
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1239
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1239
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !972, metadata !569), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !982, metadata !569), !dbg !1045
  %282 = icmp ult i64 %124, %281, !dbg !1240
  br i1 %282, label %283, label %285, !dbg !1243

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1240
  store i8 39, i8* %284, align 1, !dbg !1240, !tbaa !1065
  br label %285, !dbg !1240

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1243
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !981, metadata !569), !dbg !1044
  %287 = icmp ult i64 %286, %281, !dbg !1244
  br i1 %287, label %288, label %290, !dbg !1247

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1244
  store i8 92, i8* %289, align 1, !dbg !1244, !tbaa !1065
  br label %290, !dbg !1244

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1247
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !981, metadata !569), !dbg !1044
  %292 = icmp ult i64 %291, %281, !dbg !1248
  br i1 %292, label %293, label %295, !dbg !1251

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1248
  store i8 39, i8* %294, align 1, !dbg !1248, !tbaa !1065
  br label %295, !dbg !1248

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1251
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !981, metadata !569), !dbg !1044
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !988, metadata !569), !dbg !1052
  br label %470, !dbg !1252

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1253

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !999, metadata !569), !dbg !1254
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1255
  %300 = load i16*, i16** %299, align 8, !dbg !1255, !tbaa !576
  %301 = zext i8 %158 to i64, !dbg !1255
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1255
  %303 = load i16, i16* %302, align 2, !dbg !1255, !tbaa !1257
  %304 = lshr i16 %303, 14, !dbg !1259
  %305 = trunc i16 %304 to i8, !dbg !1259
  %306 = and i8 %305, 1, !dbg !1259
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1002, metadata !569), !dbg !1260
  br label %362, !dbg !1261

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1262
  store i64 0, i64* %10, align 8, !dbg !1263
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !999, metadata !569), !dbg !1254
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1002, metadata !569), !dbg !1260
  %308 = icmp eq i64 %155, -1, !dbg !1264
  br i1 %308, label %309, label %311, !dbg !1266

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1267
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !974, metadata !569), !dbg !1038
  br label %311, !dbg !1268

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !974, metadata !569), !dbg !1038
  br label %313, !dbg !1269, !llvm.loop !1270

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1002, metadata !569), !dbg !1260
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !999, metadata !569), !dbg !1254
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1272
  %316 = add i64 %314, %123, !dbg !1273
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1274
  %318 = sub i64 %312, %316, !dbg !1275
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1003, metadata !569), !dbg !1276
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1021, metadata !569), !dbg !1277
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #10, !dbg !1278
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1024, metadata !569), !dbg !1279
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1280

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1002, metadata !569), !dbg !1260
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !999, metadata !569), !dbg !1254
  %321 = icmp ugt i64 %312, %316, !dbg !1281
  br i1 %321, label %322, label %347, !dbg !1283

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1284

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !999, metadata !569), !dbg !1254
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1284
  %327 = load i8, i8* %326, align 1, !dbg !1284, !tbaa !1065
  %328 = icmp eq i8 %327, 0, !dbg !1283
  br i1 %328, label %347, label %329, !dbg !1285

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1286
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !999, metadata !569), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !999, metadata !569), !dbg !1254
  %331 = add i64 %330, %123, !dbg !1287
  %332 = icmp ult i64 %331, %312, !dbg !1281
  br i1 %332, label %323, label %347, !dbg !1283, !llvm.loop !1288

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1289
  %335 = and i1 %115, %334, !dbg !1292
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1025, metadata !569), !dbg !1293
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1025, metadata !569), !dbg !1293
  br i1 %335, label %336, label %350, !dbg !1292

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1294

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1025, metadata !569), !dbg !1293
  %339 = add i64 %338, %316, !dbg !1294
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1295
  %341 = load i8, i8* %340, align 1, !dbg !1295, !tbaa !1065
  %342 = sext i8 %341 to i32, !dbg !1295
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1296

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1297
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1025, metadata !569), !dbg !1293
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1025, metadata !569), !dbg !1293
  %345 = icmp ult i64 %344, %319, !dbg !1289
  br i1 %345, label %337, label %350, !dbg !1298, !llvm.loop !1299

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1301

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1002, metadata !569), !dbg !1260
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !999, metadata !569), !dbg !1254
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1301
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1302, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1021, metadata !569), !dbg !1277
  %352 = call i32 @iswprint(i32 %351) #10, !dbg !1304
  %353 = icmp eq i32 %352, 0, !dbg !1304
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1002, metadata !569), !dbg !1260
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1305
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1002, metadata !569), !dbg !1260
  %355 = add i64 %319, %314, !dbg !1306
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !999, metadata !569), !dbg !1254
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1002, metadata !569), !dbg !1260
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !999, metadata !569), !dbg !1254
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1301
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1003, metadata !569), !dbg !1276
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1307
  %357 = icmp eq i32 %356, 0, !dbg !1308
  br i1 %357, label %313, label %358, !dbg !1309, !llvm.loop !1270

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1310
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1002, metadata !569), !dbg !1260
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !999, metadata !569), !dbg !1254
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1301
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1310
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1002, metadata !569), !dbg !1260
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !999, metadata !569), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !974, metadata !569), !dbg !1038
  %366 = and i8 %365, 1, !dbg !1311
  %367 = icmp ne i8 %366, 0, !dbg !1311
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !998, metadata !569), !dbg !1112
  %368 = icmp ult i64 %364, 2, !dbg !1312
  %369 = or i1 %367, %112, !dbg !1313
  %370 = and i1 %368, %369, !dbg !1314
  br i1 %370, label %470, label %371, !dbg !1314

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1315
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1032, metadata !569), !dbg !1316
  br label %373, !dbg !1317

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !997, metadata !569), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !996, metadata !569), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !991, metadata !569), !dbg !1126
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !988, metadata !569), !dbg !1052
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !981, metadata !569), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !980, metadata !569), !dbg !1102
  br i1 %369, label %426, label %380, !dbg !1318

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1323

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !997, metadata !569), !dbg !1111
  %382 = and i8 %376, 1, !dbg !1326
  %383 = icmp eq i8 %382, 0, !dbg !1326
  %384 = and i1 %113, %383, !dbg !1326
  br i1 %384, label %385, label %401, !dbg !1326

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1328
  br i1 %386, label %387, label %389, !dbg !1332

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1328
  store i8 39, i8* %388, align 1, !dbg !1328, !tbaa !1065
  br label %389, !dbg !1328

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1332
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !981, metadata !569), !dbg !1044
  %391 = icmp ult i64 %390, %130, !dbg !1333
  br i1 %391, label %392, label %394, !dbg !1336

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1333
  store i8 36, i8* %393, align 1, !dbg !1333, !tbaa !1065
  br label %394, !dbg !1333

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1336
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !981, metadata !569), !dbg !1044
  %396 = icmp ult i64 %395, %130, !dbg !1337
  br i1 %396, label %397, label %399, !dbg !1340

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1337
  store i8 39, i8* %398, align 1, !dbg !1337, !tbaa !1065
  br label %399, !dbg !1337

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1340
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !981, metadata !569), !dbg !1044
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !988, metadata !569), !dbg !1052
  br label %401, !dbg !1341

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !988, metadata !569), !dbg !1052
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !981, metadata !569), !dbg !1044
  %404 = icmp ult i64 %402, %130, !dbg !1342
  br i1 %404, label %405, label %407, !dbg !1345

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1342
  store i8 92, i8* %406, align 1, !dbg !1342, !tbaa !1065
  br label %407, !dbg !1342

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1345
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !981, metadata !569), !dbg !1044
  %409 = icmp ult i64 %408, %130, !dbg !1346
  br i1 %409, label %410, label %414, !dbg !1349

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1346
  %412 = or i8 %411, 48, !dbg !1346
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1346
  store i8 %412, i8* %413, align 1, !dbg !1346, !tbaa !1065
  br label %414, !dbg !1346

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1349
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !981, metadata !569), !dbg !1044
  %416 = icmp ult i64 %415, %130, !dbg !1350
  br i1 %416, label %417, label %422, !dbg !1353

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1350
  %419 = and i8 %418, 7, !dbg !1350
  %420 = or i8 %419, 48, !dbg !1350
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1350
  store i8 %420, i8* %421, align 1, !dbg !1350, !tbaa !1065
  br label %422, !dbg !1350

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1353
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !981, metadata !569), !dbg !1044
  %424 = and i8 %377, 7, !dbg !1354
  %425 = or i8 %424, 48, !dbg !1355
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !991, metadata !569), !dbg !1126
  br label %435, !dbg !1356

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1357
  %428 = icmp eq i8 %427, 0, !dbg !1357
  br i1 %428, label %435, label %429, !dbg !1359

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1360
  br i1 %430, label %431, label %433, !dbg !1364

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1360
  store i8 92, i8* %432, align 1, !dbg !1360, !tbaa !1065
  br label %433, !dbg !1360

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1364
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !981, metadata !569), !dbg !1044
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !996, metadata !569), !dbg !1110
  br label %435, !dbg !1365

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !997, metadata !569), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !996, metadata !569), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !991, metadata !569), !dbg !1126
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !988, metadata !569), !dbg !1052
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !981, metadata !569), !dbg !1044
  %441 = add i64 %374, 1, !dbg !1366
  %442 = icmp ugt i64 %372, %441, !dbg !1368
  br i1 %442, label %443, label %535, !dbg !1369

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1370
  %445 = icmp ne i8 %444, 0, !dbg !1370
  %446 = and i8 %440, 1, !dbg !1370
  %447 = icmp eq i8 %446, 0, !dbg !1370
  %448 = and i1 %445, %447, !dbg !1370
  br i1 %448, label %449, label %460, !dbg !1370

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1373
  br i1 %450, label %451, label %453, !dbg !1377

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1373
  store i8 39, i8* %452, align 1, !dbg !1373, !tbaa !1065
  br label %453, !dbg !1373

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1377
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !981, metadata !569), !dbg !1044
  %455 = icmp ult i64 %454, %130, !dbg !1378
  br i1 %455, label %456, label %458, !dbg !1381

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1378
  store i8 39, i8* %457, align 1, !dbg !1378, !tbaa !1065
  br label %458, !dbg !1378

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1381
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !981, metadata !569), !dbg !1044
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !988, metadata !569), !dbg !1052
  br label %460, !dbg !1382

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !988, metadata !569), !dbg !1052
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !981, metadata !569), !dbg !1044
  %463 = icmp ult i64 %461, %130, !dbg !1383
  br i1 %463, label %464, label %466, !dbg !1386

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1383
  store i8 %438, i8* %465, align 1, !dbg !1383, !tbaa !1065
  br label %466, !dbg !1383

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1386
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !981, metadata !569), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !980, metadata !569), !dbg !1102
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1387
  %469 = load i8, i8* %468, align 1, !dbg !1387, !tbaa !1065
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !991, metadata !569), !dbg !1126
  br label %373, !dbg !1388, !llvm.loop !1389

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !972, metadata !569), !dbg !1036
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !998, metadata !569), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !997, metadata !569), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !996, metadata !569), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !991, metadata !569), !dbg !1126
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !989, metadata !569), !dbg !1053
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !988, metadata !569), !dbg !1052
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !974, metadata !569), !dbg !1038
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !982, metadata !569), !dbg !1045
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !981, metadata !569), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !980, metadata !569), !dbg !1102
  br i1 %106, label %482, label %481, !dbg !1392

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1394

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1395

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1396
  %485 = zext i8 %484 to i64, !dbg !1396
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1397
  %487 = load i32, i32* %486, align 4, !dbg !1397, !tbaa !649
  %488 = and i8 %477, 31, !dbg !1398
  %489 = zext i8 %488 to i32, !dbg !1399
  %490 = shl i32 1, %489, !dbg !1400
  %491 = and i32 %487, %490, !dbg !1400
  %492 = icmp eq i32 %491, 0, !dbg !1400
  %493 = icmp eq i8 %156, 0, !dbg !1401
  %494 = and i1 %493, %492, !dbg !1402
  br i1 %494, label %535, label %497, !dbg !1402

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1401
  br i1 %496, label %535, label %497, !dbg !1403

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !972, metadata !569), !dbg !1036
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !998, metadata !569), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !991, metadata !569), !dbg !1126
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !989, metadata !569), !dbg !1053
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !988, metadata !569), !dbg !1052
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !974, metadata !569), !dbg !1038
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !982, metadata !569), !dbg !1045
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !981, metadata !569), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !980, metadata !569), !dbg !1102
  br i1 %111, label %507, label %635, !dbg !1404

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !997, metadata !569), !dbg !1111
  %508 = and i8 %502, 1, !dbg !1406
  %509 = icmp eq i8 %508, 0, !dbg !1406
  %510 = and i1 %113, %509, !dbg !1406
  br i1 %510, label %511, label %527, !dbg !1406

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1408
  br i1 %512, label %513, label %515, !dbg !1412

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1408
  store i8 39, i8* %514, align 1, !dbg !1408, !tbaa !1065
  br label %515, !dbg !1408

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1412
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !981, metadata !569), !dbg !1044
  %517 = icmp ult i64 %516, %506, !dbg !1413
  br i1 %517, label %518, label %520, !dbg !1416

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1413
  store i8 36, i8* %519, align 1, !dbg !1413, !tbaa !1065
  br label %520, !dbg !1413

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1416
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !981, metadata !569), !dbg !1044
  %522 = icmp ult i64 %521, %506, !dbg !1417
  br i1 %522, label %523, label %525, !dbg !1420

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1417
  store i8 39, i8* %524, align 1, !dbg !1417, !tbaa !1065
  br label %525, !dbg !1417

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1420
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !981, metadata !569), !dbg !1044
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !988, metadata !569), !dbg !1052
  br label %527, !dbg !1421

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !988, metadata !569), !dbg !1052
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !981, metadata !569), !dbg !1044
  %530 = icmp ult i64 %528, %506, !dbg !1422
  br i1 %530, label %531, label %533, !dbg !1425

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1422
  store i8 92, i8* %532, align 1, !dbg !1422, !tbaa !1065
  br label %533, !dbg !1422

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1425
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !981, metadata !569), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !972, metadata !569), !dbg !1036
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !998, metadata !569), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !997, metadata !569), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !991, metadata !569), !dbg !1126
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !989, metadata !569), !dbg !1053
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !988, metadata !569), !dbg !1052
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !974, metadata !569), !dbg !1038
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !982, metadata !569), !dbg !1045
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !981, metadata !569), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !980, metadata !569), !dbg !1102
  br label %562, !dbg !1426

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !972, metadata !569), !dbg !1036
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !998, metadata !569), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !997, metadata !569), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !991, metadata !569), !dbg !1126
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !989, metadata !569), !dbg !1053
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !988, metadata !569), !dbg !1052
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !974, metadata !569), !dbg !1038
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !982, metadata !569), !dbg !1045
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !981, metadata !569), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !980, metadata !569), !dbg !1102
  %546 = and i8 %540, 1, !dbg !1426
  %547 = icmp ne i8 %546, 0, !dbg !1426
  %548 = and i8 %543, 1, !dbg !1426
  %549 = icmp eq i8 %548, 0, !dbg !1426
  %550 = and i1 %547, %549, !dbg !1426
  br i1 %550, label %551, label %562, !dbg !1426

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !1429
  br i1 %552, label %553, label %555, !dbg !1433

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !1429
  store i8 39, i8* %554, align 1, !dbg !1429, !tbaa !1065
  br label %555, !dbg !1429

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1433
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !981, metadata !569), !dbg !1044
  %557 = icmp ult i64 %556, %545, !dbg !1434
  br i1 %557, label %558, label %560, !dbg !1437

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1434
  store i8 39, i8* %559, align 1, !dbg !1434, !tbaa !1065
  br label %560, !dbg !1434

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1437
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !981, metadata !569), !dbg !1044
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !988, metadata !569), !dbg !1052
  br label %562, !dbg !1438

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !988, metadata !569), !dbg !1052
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !981, metadata !569), !dbg !1044
  %572 = icmp ult i64 %570, %563, !dbg !1439
  br i1 %572, label %573, label %575, !dbg !1442

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1439
  store i8 %565, i8* %574, align 1, !dbg !1439, !tbaa !1065
  br label %575, !dbg !1439

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !981, metadata !569), !dbg !1044
  %577 = and i8 %564, 1, !dbg !1443
  %578 = icmp eq i8 %577, 0, !dbg !1443
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !990, metadata !569), !dbg !1054
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1445
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !990, metadata !569), !dbg !1054
  br label %580, !dbg !1446

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !972, metadata !569), !dbg !1036
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !990, metadata !569), !dbg !1054
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !989, metadata !569), !dbg !1053
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !988, metadata !569), !dbg !1052
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !974, metadata !569), !dbg !1038
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !982, metadata !569), !dbg !1045
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !981, metadata !569), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !980, metadata !569), !dbg !1102
  %589 = add i64 %581, 1, !dbg !1447
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !980, metadata !569), !dbg !1102
  br label %122, !dbg !1448, !llvm.loop !1449

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !1451
  %593 = and i1 %113, %592, !dbg !1453
  %594 = xor i1 %593, true, !dbg !1453
  %595 = or i1 %111, %594, !dbg !1453
  br i1 %595, label %596, label %635, !dbg !1453

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !1454
  %598 = xor i1 %597, true, !dbg !1454
  %599 = and i8 %128, 1, !dbg !1456
  %600 = icmp eq i8 %599, 0, !dbg !1456
  %601 = or i1 %600, %598, !dbg !1454
  br i1 %601, label %611, label %602, !dbg !1454

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !1457
  %604 = icmp eq i8 %603, 0, !dbg !1457
  br i1 %604, label %607, label %605, !dbg !1460

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !1461
  br label %645, !dbg !1462

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !1463
  %609 = icmp ne i64 %125, 0, !dbg !1465
  %610 = and i1 %609, %608, !dbg !1466
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !972, metadata !569), !dbg !1036
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !981, metadata !569), !dbg !1044
  br i1 %610, label %27, label %611, !dbg !1466

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !1467
  %613 = and i1 %612, %111, !dbg !1469
  br i1 %613, label %614, label %630, !dbg !1469

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !983, metadata !569), !dbg !1046
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !981, metadata !569), !dbg !1044
  %615 = load i8, i8* %99, align 1, !dbg !1470, !tbaa !1065
  %616 = icmp eq i8 %615, 0, !dbg !1473
  br i1 %616, label %630, label %617, !dbg !1473

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !1474

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !981, metadata !569), !dbg !1044
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !983, metadata !569), !dbg !1046
  %622 = icmp ult i64 %621, %130, !dbg !1474
  br i1 %622, label %623, label %625, !dbg !1477

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1474
  store i8 %619, i8* %624, align 1, !dbg !1474, !tbaa !1065
  br label %625, !dbg !1474

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !1477
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !981, metadata !569), !dbg !1044
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !1478
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !983, metadata !569), !dbg !1046
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !983, metadata !569), !dbg !1046
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !981, metadata !569), !dbg !1044
  %628 = load i8, i8* %627, align 1, !dbg !1470, !tbaa !1065
  %629 = icmp eq i8 %628, 0, !dbg !1473
  br i1 %629, label %630, label %618, !dbg !1473, !llvm.loop !1479

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !981, metadata !569), !dbg !1044
  %632 = icmp ult i64 %631, %130, !dbg !1481
  br i1 %632, label %633, label %645, !dbg !1483

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !1484
  store i8 0, i8* %634, align 1, !dbg !1485, !tbaa !1065
  br label %645, !dbg !1484

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !972, metadata !569), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !974, metadata !569), !dbg !1038
  %639 = icmp ne i32 %636, 2, !dbg !1486
  %640 = icmp eq i8 %103, 0, !dbg !1488
  %641 = or i1 %639, %640, !dbg !1489
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !975, metadata !569), !dbg !1039
  %642 = select i1 %641, i32 %636, i32 4, !dbg !1489
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !975, metadata !569), !dbg !1039
  %643 = and i32 %5, -3, !dbg !1490
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !1491
  br label %645, !dbg !1492

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !1493
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1494 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1498, metadata !569), !dbg !1502
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1499, metadata !569), !dbg !1503
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1504
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1500, metadata !569), !dbg !1505
  %4 = icmp eq i8* %3, %0, !dbg !1506
  br i1 %4, label %5, label %75, !dbg !1508

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1509
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1501, metadata !569), !dbg !1510
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1511, metadata !569), !dbg !1527
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1525, metadata !569), !dbg !1530
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1526, metadata !569), !dbg !1531
  %7 = load i8, i8* %6, align 1, !dbg !1532, !tbaa !1065
  %8 = sext i8 %7 to i32, !dbg !1532
  %9 = and i32 %8, -33, !dbg !1532
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1532

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1534, metadata !569), !dbg !1548
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1546, metadata !569), !dbg !1552
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1547, metadata !569), !dbg !1553
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1554
  %12 = load i8, i8* %11, align 1, !dbg !1554, !tbaa !1065
  %13 = sext i8 %12 to i32, !dbg !1554
  %14 = and i32 %13, -33, !dbg !1554
  %15 = icmp eq i32 %14, 84, !dbg !1554
  br i1 %15, label %16, label %72, !dbg !1554

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1556, metadata !569), !dbg !1569
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1567, metadata !569), !dbg !1573
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1568, metadata !569), !dbg !1574
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1575
  %18 = load i8, i8* %17, align 1, !dbg !1575, !tbaa !1065
  %19 = sext i8 %18 to i32, !dbg !1575
  %20 = and i32 %19, -33, !dbg !1575
  %21 = icmp eq i32 %20, 70, !dbg !1575
  br i1 %21, label %22, label %72, !dbg !1575

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1577, metadata !569), !dbg !1589
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1587, metadata !569), !dbg !1593
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1588, metadata !569), !dbg !1594
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1595
  %24 = load i8, i8* %23, align 1, !dbg !1595, !tbaa !1065
  %25 = icmp eq i8 %24, 45, !dbg !1595
  br i1 %25, label %26, label %72, !dbg !1597

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1598, metadata !569), !dbg !1609
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1607, metadata !569), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1608, metadata !569), !dbg !1614
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1615
  %28 = load i8, i8* %27, align 1, !dbg !1615, !tbaa !1065
  %29 = icmp eq i8 %28, 56, !dbg !1615
  br i1 %29, label %30, label %72, !dbg !1617

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1618, metadata !569), !dbg !1628
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1626, metadata !569), !dbg !1632
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1627, metadata !569), !dbg !1633
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1634
  %32 = load i8, i8* %31, align 1, !dbg !1634, !tbaa !1065
  %33 = icmp eq i8 %32, 0, !dbg !1634
  br i1 %33, label %34, label %72, !dbg !1636

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1637, !tbaa !1065
  %36 = icmp eq i8 %35, 96, !dbg !1638
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.60, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.61, i64 0, i64 0), !dbg !1637
  br label %75, !dbg !1639

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1534, metadata !569), !dbg !1640
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1546, metadata !569), !dbg !1644
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1547, metadata !569), !dbg !1645
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1646
  %40 = load i8, i8* %39, align 1, !dbg !1646, !tbaa !1065
  %41 = sext i8 %40 to i32, !dbg !1646
  %42 = and i32 %41, -33, !dbg !1646
  %43 = icmp eq i32 %42, 66, !dbg !1646
  br i1 %43, label %44, label %72, !dbg !1646

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1556, metadata !569), !dbg !1647
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1567, metadata !569), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1568, metadata !569), !dbg !1650
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1651
  %46 = load i8, i8* %45, align 1, !dbg !1651, !tbaa !1065
  %47 = icmp eq i8 %46, 49, !dbg !1651
  br i1 %47, label %48, label %72, !dbg !1652

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1577, metadata !569), !dbg !1653
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1587, metadata !569), !dbg !1655
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1588, metadata !569), !dbg !1656
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1657
  %50 = load i8, i8* %49, align 1, !dbg !1657, !tbaa !1065
  %51 = icmp eq i8 %50, 56, !dbg !1657
  br i1 %51, label %52, label %72, !dbg !1658

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1598, metadata !569), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1607, metadata !569), !dbg !1661
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1608, metadata !569), !dbg !1662
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1663
  %54 = load i8, i8* %53, align 1, !dbg !1663, !tbaa !1065
  %55 = icmp eq i8 %54, 48, !dbg !1663
  br i1 %55, label %56, label %72, !dbg !1664

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1618, metadata !569), !dbg !1665
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1626, metadata !569), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1627, metadata !569), !dbg !1668
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1669
  %58 = load i8, i8* %57, align 1, !dbg !1669, !tbaa !1065
  %59 = icmp eq i8 %58, 51, !dbg !1669
  br i1 %59, label %60, label %72, !dbg !1670

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1671, metadata !569), !dbg !1680
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1678, metadata !569), !dbg !1684
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1679, metadata !569), !dbg !1685
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1686
  %62 = load i8, i8* %61, align 1, !dbg !1686, !tbaa !1065
  %63 = icmp eq i8 %62, 48, !dbg !1686
  br i1 %63, label %64, label %72, !dbg !1688

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1689, metadata !569), !dbg !1697
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1695, metadata !569), !dbg !1701
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1696, metadata !569), !dbg !1702
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1703
  %66 = load i8, i8* %65, align 1, !dbg !1703, !tbaa !1065
  %67 = icmp eq i8 %66, 0, !dbg !1703
  br i1 %67, label %68, label %72, !dbg !1705

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !1706, !tbaa !1065
  %70 = icmp eq i8 %69, 96, !dbg !1707
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.62, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.63, i64 0, i64 0), !dbg !1706
  br label %75, !dbg !1708

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !1709
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.59, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.58, i64 0, i64 0), !dbg !1710
  br label %75, !dbg !1711

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !1712
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1713 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1717, metadata !569), !dbg !1720
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1718, metadata !569), !dbg !1721
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1719, metadata !569), !dbg !1722
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1723, metadata !569) #10, !dbg !1736
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1728, metadata !569) #10, !dbg !1738
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !1729, metadata !569) #10, !dbg !1739
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1730, metadata !569) #10, !dbg !1740
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1741
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1741
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1731, metadata !569) #10, !dbg !1742
  %6 = tail call i32* @__errno_location() #17, !dbg !1743
  %7 = load i32, i32* %6, align 4, !dbg !1743, !tbaa !649
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1732, metadata !569) #10, !dbg !1744
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1745
  %9 = load i32, i32* %8, align 4, !dbg !1745, !tbaa !904
  %10 = or i32 %9, 1, !dbg !1746
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1733, metadata !569) #10, !dbg !1747
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1748
  %12 = load i32, i32* %11, align 8, !dbg !1748, !tbaa !844
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1749
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1750
  %15 = load i8*, i8** %14, align 8, !dbg !1750, !tbaa !930
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1751
  %17 = load i8*, i8** %16, align 8, !dbg !1751, !tbaa !933
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !1752
  %19 = add i64 %18, 1, !dbg !1753
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1734, metadata !569) #10, !dbg !1754
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1755, metadata !569) #10, !dbg !1760
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !1762
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1735, metadata !569) #10, !dbg !1763
  %21 = load i32, i32* %11, align 8, !dbg !1764, !tbaa !844
  %22 = load i8*, i8** %14, align 8, !dbg !1765, !tbaa !930
  %23 = load i8*, i8** %16, align 8, !dbg !1766, !tbaa !933
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !1767
  store i32 %7, i32* %6, align 4, !dbg !1768, !tbaa !649
  ret i8* %20, !dbg !1769
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1724 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1723, metadata !569), !dbg !1770
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1728, metadata !569), !dbg !1771
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !1729, metadata !569), !dbg !1772
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1730, metadata !569), !dbg !1773
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1774
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1774
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1731, metadata !569), !dbg !1775
  %7 = tail call i32* @__errno_location() #17, !dbg !1776
  %8 = load i32, i32* %7, align 4, !dbg !1776, !tbaa !649
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1732, metadata !569), !dbg !1777
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1778
  %10 = load i32, i32* %9, align 4, !dbg !1778, !tbaa !904
  %11 = icmp ne i64* %2, null, !dbg !1779
  %12 = xor i1 %11, true, !dbg !1779
  %13 = zext i1 %12 to i32, !dbg !1779
  %14 = or i32 %10, %13, !dbg !1780
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1733, metadata !569), !dbg !1781
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1782
  %16 = load i32, i32* %15, align 8, !dbg !1782, !tbaa !844
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1783
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1784
  %19 = load i8*, i8** %18, align 8, !dbg !1784, !tbaa !930
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1785
  %21 = load i8*, i8** %20, align 8, !dbg !1785, !tbaa !933
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !1786
  %23 = add i64 %22, 1, !dbg !1787
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1734, metadata !569), !dbg !1788
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1755, metadata !569) #10, !dbg !1789
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !1791
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !1735, metadata !569), !dbg !1792
  %25 = load i32, i32* %15, align 8, !dbg !1793, !tbaa !844
  %26 = load i8*, i8** %18, align 8, !dbg !1794, !tbaa !930
  %27 = load i8*, i8** %20, align 8, !dbg !1795, !tbaa !933
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !1796
  store i32 %8, i32* %7, align 4, !dbg !1797, !tbaa !649
  br i1 %11, label %29, label %30, !dbg !1798

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !1799, !tbaa !1801
  br label %30, !dbg !1803

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !1804
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !1805 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1809, !tbaa !576
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !1807, metadata !569), !dbg !1810
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1808, metadata !569), !dbg !1811
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1808, metadata !569), !dbg !1811
  %2 = load i32, i32* @nslots, align 4, !dbg !1812, !tbaa !649
  %3 = icmp sgt i32 %2, 1, !dbg !1815
  br i1 %3, label %4, label %13, !dbg !1816

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !1817

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1808, metadata !569), !dbg !1811
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !1817
  %8 = load i8*, i8** %7, align 8, !dbg !1817, !tbaa !1818
  tail call void @free(i8* %8) #10, !dbg !1820
  %9 = add nuw i64 %6, 1, !dbg !1821
  %10 = load i32, i32* @nslots, align 4, !dbg !1812, !tbaa !649
  %11 = sext i32 %10 to i64, !dbg !1815
  %12 = icmp slt i64 %9, %11, !dbg !1815
  br i1 %12, label %5, label %13, !dbg !1816, !llvm.loop !1822

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1824
  %15 = load i8*, i8** %14, align 8, !dbg !1824, !tbaa !1818
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1826
  br i1 %16, label %18, label %17, !dbg !1827

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #10, !dbg !1828
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1830, !tbaa !1831
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1832, !tbaa !1818
  br label %18, !dbg !1833

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1834
  br i1 %19, label %22, label %20, !dbg !1836

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !1837
  tail call void @free(i8* %21) #10, !dbg !1839
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1840, !tbaa !576
  br label %22, !dbg !1841

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !1842, !tbaa !649
  ret void, !dbg !1843
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !1844 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1848, metadata !569), !dbg !1850
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1849, metadata !569), !dbg !1851
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1852
  ret i8* %3, !dbg !1853
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !1854 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1858, metadata !569), !dbg !1872
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1859, metadata !569), !dbg !1873
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1860, metadata !569), !dbg !1874
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1861, metadata !569), !dbg !1875
  %5 = tail call i32* @__errno_location() #17, !dbg !1876
  %6 = load i32, i32* %5, align 4, !dbg !1876, !tbaa !649
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1862, metadata !569), !dbg !1877
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1878, !tbaa !576
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !1863, metadata !569), !dbg !1879
  %8 = icmp slt i32 %0, 0, !dbg !1880
  br i1 %8, label %9, label %10, !dbg !1882

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !1883
  unreachable, !dbg !1883

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !1884, !tbaa !649
  %12 = icmp sgt i32 %11, %0, !dbg !1885
  br i1 %12, label %34, label %13, !dbg !1886

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !1887
  %15 = icmp ugt i32 %0, 2147483646, !dbg !1888
  br i1 %15, label %16, label %17, !dbg !1890

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !1891
  unreachable, !dbg !1891

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !1892
  %19 = select i1 %14, i8* null, i8* %18, !dbg !1892
  %20 = add nsw i32 %0, 1, !dbg !1893
  %21 = sext i32 %20 to i64, !dbg !1894
  %22 = shl nsw i64 %21, 4, !dbg !1895
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !1896
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1896
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !1863, metadata !569), !dbg !1879
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1897, !tbaa !576
  br i1 %14, label %25, label %26, !dbg !1898

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !1899, !tbaa.struct !1901
  br label %26, !dbg !1902

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !1903, !tbaa !649
  %28 = sext i32 %27 to i64, !dbg !1904
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !1904
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !1905
  %31 = sub nsw i32 %20, %27, !dbg !1906
  %32 = sext i32 %31 to i64, !dbg !1907
  %33 = shl nsw i64 %32, 4, !dbg !1908
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !1905
  store i32 %20, i32* @nslots, align 4, !dbg !1909, !tbaa !649
  br label %34, !dbg !1910

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !1863, metadata !569), !dbg !1879
  %36 = sext i32 %0 to i64, !dbg !1911
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !1912
  %38 = load i64, i64* %37, align 8, !dbg !1912, !tbaa !1831
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !1867, metadata !569), !dbg !1913
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !1914
  %40 = load i8*, i8** %39, align 8, !dbg !1914, !tbaa !1818
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !1869, metadata !569), !dbg !1915
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !1916
  %42 = load i32, i32* %41, align 4, !dbg !1916, !tbaa !904
  %43 = or i32 %42, 1, !dbg !1917
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !1870, metadata !569), !dbg !1918
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1919
  %45 = load i32, i32* %44, align 8, !dbg !1919, !tbaa !844
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !1920
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !1921
  %48 = load i8*, i8** %47, align 8, !dbg !1921, !tbaa !930
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !1922
  %50 = load i8*, i8** %49, align 8, !dbg !1922, !tbaa !933
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !1923
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !1871, metadata !569), !dbg !1924
  %52 = icmp ugt i64 %38, %51, !dbg !1925
  br i1 %52, label %63, label %53, !dbg !1927

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1867, metadata !569), !dbg !1913
  store i64 %54, i64* %37, align 8, !dbg !1930, !tbaa !1831
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1931
  br i1 %55, label %57, label %56, !dbg !1933

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !1934
  br label %57, !dbg !1934

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1755, metadata !569) #10, !dbg !1935
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !1937
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !1869, metadata !569), !dbg !1915
  store i8* %58, i8** %39, align 8, !dbg !1938, !tbaa !1818
  %59 = load i32, i32* %44, align 8, !dbg !1939, !tbaa !844
  %60 = load i8*, i8** %47, align 8, !dbg !1940, !tbaa !930
  %61 = load i8*, i8** %49, align 8, !dbg !1941, !tbaa !933
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !1942
  br label %63, !dbg !1943

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !1869, metadata !569), !dbg !1915
  store i32 %6, i32* %5, align 4, !dbg !1944, !tbaa !649
  ret i8* %64, !dbg !1945
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !1946 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1950, metadata !569), !dbg !1953
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1951, metadata !569), !dbg !1954
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1952, metadata !569), !dbg !1955
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1956
  ret i8* %4, !dbg !1957
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !1958 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1962, metadata !569), !dbg !1963
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1848, metadata !569) #10, !dbg !1964
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1849, metadata !569) #10, !dbg !1966
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !1967
  ret i8* %2, !dbg !1968
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !1969 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1973, metadata !569), !dbg !1975
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1974, metadata !569), !dbg !1976
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1950, metadata !569) #10, !dbg !1977
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1951, metadata !569) #10, !dbg !1979
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1952, metadata !569) #10, !dbg !1980
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !1981
  ret i8* %3, !dbg !1982
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !1983 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !1991, metadata !1997), !dbg !1998
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1987, metadata !569), !dbg !2000
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1988, metadata !569), !dbg !2001
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1989, metadata !569), !dbg !2002
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2003
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2003
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1990, metadata !569), !dbg !2004
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1996, metadata !569) #10, !dbg !2005
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2006
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2006
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1991, metadata !569) #10, !dbg !1998
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1991, metadata !2007) #10, !dbg !1998
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !1998
  %8 = icmp eq i32 %1, 10, !dbg !2008
  br i1 %8, label %9, label %10, !dbg !2010

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2011, !noalias !2012
  unreachable, !dbg !2011

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1991, metadata !2007) #10, !dbg !1998
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2015
  store i32 %1, i32* %11, align 8, !dbg !2015, !alias.scope !2012
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2015
  %13 = bitcast i32* %12 to i8*, !dbg !2015
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2015
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2016
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1990, metadata !569), !dbg !2004
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2017
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2018
  ret i8* %14, !dbg !2019
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2020 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !1991, metadata !1997), !dbg !2029
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2024, metadata !569), !dbg !2031
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2025, metadata !569), !dbg !2032
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2026, metadata !569), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2027, metadata !569), !dbg !2034
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2035
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2035
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2028, metadata !569), !dbg !2036
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1996, metadata !569) #10, !dbg !2037
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2038
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2038
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1991, metadata !569) #10, !dbg !2029
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1991, metadata !2007) #10, !dbg !2029
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2029
  %9 = icmp eq i32 %1, 10, !dbg !2039
  br i1 %9, label %10, label %11, !dbg !2040

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2041, !noalias !2042
  unreachable, !dbg !2041

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1991, metadata !2007) #10, !dbg !2029
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2045
  store i32 %1, i32* %12, align 8, !dbg !2045, !alias.scope !2042
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2045
  %14 = bitcast i32* %13 to i8*, !dbg !2045
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2045
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2046
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2028, metadata !569), !dbg !2036
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2047
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2048
  ret i8* %15, !dbg !2049
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2050 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !1991, metadata !1997), !dbg !2056
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2054, metadata !569), !dbg !2059
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2055, metadata !569), !dbg !2060
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1987, metadata !569) #10, !dbg !2061
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1988, metadata !569) #10, !dbg !2062
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1989, metadata !569) #10, !dbg !2063
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2064
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2064
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1990, metadata !569) #10, !dbg !2065
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1996, metadata !569) #10, !dbg !2066
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2067
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2067
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1991, metadata !569) #10, !dbg !2056
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1991, metadata !2007) #10, !dbg !2056
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2056
  %7 = icmp eq i32 %0, 10, !dbg !2068
  br i1 %7, label %8, label %9, !dbg !2069

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2070, !noalias !2071
  unreachable, !dbg !2070

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1991, metadata !2007) #10, !dbg !2056
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2074
  store i32 %0, i32* %10, align 8, !dbg !2074, !alias.scope !2071
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2074
  %12 = bitcast i32* %11 to i8*, !dbg !2074
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2074
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2075
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1990, metadata !569) #10, !dbg !2065
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2076
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2077
  ret i8* %13, !dbg !2078
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2079 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !1991, metadata !1997), !dbg !2086
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2083, metadata !569), !dbg !2089
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2084, metadata !569), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2085, metadata !569), !dbg !2091
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2024, metadata !569) #10, !dbg !2092
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2025, metadata !569) #10, !dbg !2093
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2026, metadata !569) #10, !dbg !2094
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2027, metadata !569) #10, !dbg !2095
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2096
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2096
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2028, metadata !569) #10, !dbg !2097
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1996, metadata !569) #10, !dbg !2098
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2099
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2099
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1991, metadata !569) #10, !dbg !2086
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1991, metadata !2007) #10, !dbg !2086
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2086
  %8 = icmp eq i32 %0, 10, !dbg !2100
  br i1 %8, label %9, label %10, !dbg !2101

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2102, !noalias !2103
  unreachable, !dbg !2102

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1991, metadata !2007) #10, !dbg !2086
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2106
  store i32 %0, i32* %11, align 8, !dbg !2106, !alias.scope !2103
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2106
  %13 = bitcast i32* %12 to i8*, !dbg !2106
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2106
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2107
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2028, metadata !569) #10, !dbg !2097
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2108
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2109
  ret i8* %14, !dbg !2110
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2111 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2115, metadata !569), !dbg !2119
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2116, metadata !569), !dbg !2120
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2117, metadata !569), !dbg !2121
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2122
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2122
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2123, !tbaa.struct !2124
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2118, metadata !569), !dbg !2125
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !863, metadata !569), !dbg !2126
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !864, metadata !569), !dbg !2128
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !865, metadata !569), !dbg !2129
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !866, metadata !569), !dbg !2130
  %6 = lshr i8 %2, 5, !dbg !2131
  %7 = zext i8 %6 to i64, !dbg !2131
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2132
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !867, metadata !569), !dbg !2133
  %9 = and i8 %2, 31, !dbg !2134
  %10 = zext i8 %9 to i32, !dbg !2135
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !869, metadata !569), !dbg !2136
  %11 = load i32, i32* %8, align 4, !dbg !2137, !tbaa !649
  %12 = lshr i32 %11, %10, !dbg !2138
  %13 = and i32 %12, 1, !dbg !2139
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !870, metadata !569), !dbg !2140
  %14 = xor i32 %13, 1, !dbg !2141
  %15 = shl i32 %14, %10, !dbg !2142
  %16 = xor i32 %15, %11, !dbg !2143
  store i32 %16, i32* %8, align 4, !dbg !2143, !tbaa !649
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2118, metadata !569), !dbg !2125
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2144
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2145
  ret i8* %17, !dbg !2146
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2147 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2151, metadata !569), !dbg !2153
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2152, metadata !569), !dbg !2154
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2115, metadata !569) #10, !dbg !2155
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2116, metadata !569) #10, !dbg !2157
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2117, metadata !569) #10, !dbg !2158
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2159
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2159
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2160, !tbaa.struct !2124
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2118, metadata !569) #10, !dbg !2161
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !863, metadata !569) #10, !dbg !2162
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !864, metadata !569) #10, !dbg !2164
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !865, metadata !569) #10, !dbg !2165
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !866, metadata !569) #10, !dbg !2166
  %5 = lshr i8 %1, 5, !dbg !2167
  %6 = zext i8 %5 to i64, !dbg !2167
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2168
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !867, metadata !569) #10, !dbg !2169
  %8 = and i8 %1, 31, !dbg !2170
  %9 = zext i8 %8 to i32, !dbg !2171
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !869, metadata !569) #10, !dbg !2172
  %10 = load i32, i32* %7, align 4, !dbg !2173, !tbaa !649
  %11 = lshr i32 %10, %9, !dbg !2174
  %12 = and i32 %11, 1, !dbg !2175
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !870, metadata !569) #10, !dbg !2176
  %13 = xor i32 %12, 1, !dbg !2177
  %14 = shl i32 %13, %9, !dbg !2178
  %15 = xor i32 %14, %10, !dbg !2179
  store i32 %15, i32* %7, align 4, !dbg !2179, !tbaa !649
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2118, metadata !569) #10, !dbg !2161
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2180
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2181
  ret i8* %16, !dbg !2182
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2183 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2185, metadata !569), !dbg !2186
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2151, metadata !569) #10, !dbg !2187
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2152, metadata !569) #10, !dbg !2189
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2115, metadata !569) #10, !dbg !2190
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2116, metadata !569) #10, !dbg !2192
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2117, metadata !569) #10, !dbg !2193
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2194
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2194
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2195, !tbaa.struct !2124
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2118, metadata !569) #10, !dbg !2196
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !863, metadata !569) #10, !dbg !2197
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !864, metadata !569) #10, !dbg !2199
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !865, metadata !569) #10, !dbg !2200
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !866, metadata !569) #10, !dbg !2201
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2202
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !867, metadata !569) #10, !dbg !2203
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !869, metadata !569) #10, !dbg !2204
  %5 = load i32, i32* %4, align 4, !dbg !2205, !tbaa !649
  %6 = or i32 %5, 67108864, !dbg !2206
  store i32 %6, i32* %4, align 4, !dbg !2206, !tbaa !649
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2118, metadata !569) #10, !dbg !2196
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2207
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2208
  ret i8* %7, !dbg !2209
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2210 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2212, metadata !569), !dbg !2214
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2213, metadata !569), !dbg !2215
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2115, metadata !569) #10, !dbg !2216
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2116, metadata !569) #10, !dbg !2218
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2117, metadata !569) #10, !dbg !2219
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2220
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2220
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2221, !tbaa.struct !2124
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2118, metadata !569) #10, !dbg !2222
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !863, metadata !569) #10, !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !864, metadata !569) #10, !dbg !2225
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !865, metadata !569) #10, !dbg !2226
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !866, metadata !569) #10, !dbg !2227
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2228
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !867, metadata !569) #10, !dbg !2229
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !869, metadata !569) #10, !dbg !2230
  %6 = load i32, i32* %5, align 4, !dbg !2231, !tbaa !649
  %7 = or i32 %6, 67108864, !dbg !2232
  store i32 %7, i32* %5, align 4, !dbg !2232, !tbaa !649
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2118, metadata !569) #10, !dbg !2222
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2233
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2234
  ret i8* %8, !dbg !2235
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2236 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !1991, metadata !1997), !dbg !2242
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2238, metadata !569), !dbg !2244
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2239, metadata !569), !dbg !2245
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2240, metadata !569), !dbg !2246
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2247
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2247
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1996, metadata !569) #10, !dbg !2248
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2249
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2249
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1991, metadata !569) #10, !dbg !2242
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1991, metadata !2007) #10, !dbg !2242
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2242
  %9 = icmp eq i32 %1, 10, !dbg !2250
  br i1 %9, label %10, label %11, !dbg !2251

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2252, !noalias !2253
  unreachable, !dbg !2252

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1991, metadata !2007) #10, !dbg !2242
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2256
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2256
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2257
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2258
  store i32 %1, i32* %13, align 8, !dbg !2258
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2258
  %15 = bitcast i32* %14 to i8*, !dbg !2258
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2258
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2241, metadata !569), !dbg !2259
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !863, metadata !569), !dbg !2260
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !864, metadata !569), !dbg !2262
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !865, metadata !569), !dbg !2263
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !866, metadata !569), !dbg !2264
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2265
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !867, metadata !569), !dbg !2266
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !869, metadata !569), !dbg !2267
  %17 = load i32, i32* %16, align 4, !dbg !2268, !tbaa !649
  %18 = or i32 %17, 67108864, !dbg !2269
  store i32 %18, i32* %16, align 4, !dbg !2269, !tbaa !649
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2241, metadata !569), !dbg !2259
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2270
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2271
  ret i8* %19, !dbg !2272
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2273 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2277, metadata !569), !dbg !2281
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2278, metadata !569), !dbg !2282
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2279, metadata !569), !dbg !2283
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2280, metadata !569), !dbg !2284
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2285, metadata !569) #10, !dbg !2295
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2290, metadata !569) #10, !dbg !2297
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2291, metadata !569) #10, !dbg !2298
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2292, metadata !569) #10, !dbg !2299
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2293, metadata !569) #10, !dbg !2300
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2301
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2301
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2302, !tbaa.struct !2124
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2294, metadata !569) #10, !dbg !2303
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !912, metadata !569) #10, !dbg !2304
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !913, metadata !569) #10, !dbg !2306
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !914, metadata !569) #10, !dbg !2307
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !912, metadata !569) #10, !dbg !2304
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !912, metadata !569) #10, !dbg !2304
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2308
  store i32 10, i32* %7, align 8, !dbg !2309, !tbaa !844
  %8 = icmp ne i8* %1, null, !dbg !2310
  %9 = icmp ne i8* %2, null, !dbg !2311
  %10 = and i1 %8, %9, !dbg !2312
  br i1 %10, label %12, label %11, !dbg !2312

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2313
  unreachable, !dbg !2313

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2314
  store i8* %1, i8** %13, align 8, !dbg !2315, !tbaa !930
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2316
  store i8* %2, i8** %14, align 8, !dbg !2317, !tbaa !933
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2294, metadata !569) #10, !dbg !2303
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2318
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2319
  ret i8* %15, !dbg !2320
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2286 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2285, metadata !569), !dbg !2321
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2290, metadata !569), !dbg !2322
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2291, metadata !569), !dbg !2323
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2292, metadata !569), !dbg !2324
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2293, metadata !569), !dbg !2325
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2326
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2326
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2327, !tbaa.struct !2124
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2294, metadata !569), !dbg !2328
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !912, metadata !569) #10, !dbg !2329
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !913, metadata !569) #10, !dbg !2331
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !914, metadata !569) #10, !dbg !2332
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !912, metadata !569) #10, !dbg !2329
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !912, metadata !569) #10, !dbg !2329
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2333
  store i32 10, i32* %8, align 8, !dbg !2334, !tbaa !844
  %9 = icmp ne i8* %1, null, !dbg !2335
  %10 = icmp ne i8* %2, null, !dbg !2336
  %11 = and i1 %9, %10, !dbg !2337
  br i1 %11, label %13, label %12, !dbg !2337

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2338
  unreachable, !dbg !2338

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2339
  store i8* %1, i8** %14, align 8, !dbg !2340, !tbaa !930
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2341
  store i8* %2, i8** %15, align 8, !dbg !2342, !tbaa !933
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2294, metadata !569), !dbg !2328
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2343
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2344
  ret i8* %16, !dbg !2345
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2346 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2350, metadata !569), !dbg !2353
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2351, metadata !569), !dbg !2354
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2352, metadata !569), !dbg !2355
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2277, metadata !569) #10, !dbg !2356
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2278, metadata !569) #10, !dbg !2358
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2279, metadata !569) #10, !dbg !2359
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2280, metadata !569) #10, !dbg !2360
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2285, metadata !569) #10, !dbg !2361
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2290, metadata !569) #10, !dbg !2363
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2291, metadata !569) #10, !dbg !2364
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2292, metadata !569) #10, !dbg !2365
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2293, metadata !569) #10, !dbg !2366
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2367
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2367
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2368, !tbaa.struct !2124
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2294, metadata !569) #10, !dbg !2369
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !912, metadata !569) #10, !dbg !2370
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !913, metadata !569) #10, !dbg !2372
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !914, metadata !569) #10, !dbg !2373
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !912, metadata !569) #10, !dbg !2370
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !912, metadata !569) #10, !dbg !2370
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2374
  store i32 10, i32* %6, align 8, !dbg !2375, !tbaa !844
  %7 = icmp ne i8* %0, null, !dbg !2376
  %8 = icmp ne i8* %1, null, !dbg !2377
  %9 = and i1 %7, %8, !dbg !2378
  br i1 %9, label %11, label %10, !dbg !2378

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2379
  unreachable, !dbg !2379

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2380
  store i8* %0, i8** %12, align 8, !dbg !2381, !tbaa !930
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2382
  store i8* %1, i8** %13, align 8, !dbg !2383, !tbaa !933
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2294, metadata !569) #10, !dbg !2369
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2384
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2385
  ret i8* %14, !dbg !2386
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2387 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2391, metadata !569), !dbg !2395
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2392, metadata !569), !dbg !2396
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2393, metadata !569), !dbg !2397
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2394, metadata !569), !dbg !2398
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2285, metadata !569) #10, !dbg !2399
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2290, metadata !569) #10, !dbg !2401
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2291, metadata !569) #10, !dbg !2402
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2292, metadata !569) #10, !dbg !2403
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2293, metadata !569) #10, !dbg !2404
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2405
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2405
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2406, !tbaa.struct !2124
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2294, metadata !569) #10, !dbg !2407
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !912, metadata !569) #10, !dbg !2408
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !913, metadata !569) #10, !dbg !2410
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !914, metadata !569) #10, !dbg !2411
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !912, metadata !569) #10, !dbg !2408
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !912, metadata !569) #10, !dbg !2408
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2412
  store i32 10, i32* %7, align 8, !dbg !2413, !tbaa !844
  %8 = icmp ne i8* %0, null, !dbg !2414
  %9 = icmp ne i8* %1, null, !dbg !2415
  %10 = and i1 %8, %9, !dbg !2416
  br i1 %10, label %12, label %11, !dbg !2416

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2417
  unreachable, !dbg !2417

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2418
  store i8* %0, i8** %13, align 8, !dbg !2419, !tbaa !930
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2420
  store i8* %1, i8** %14, align 8, !dbg !2421, !tbaa !933
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2294, metadata !569) #10, !dbg !2407
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2422
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2423
  ret i8* %15, !dbg !2424
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2425 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2429, metadata !569), !dbg !2432
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2430, metadata !569), !dbg !2433
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2431, metadata !569), !dbg !2434
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2435
  ret i8* %4, !dbg !2436
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2437 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2441, metadata !569), !dbg !2443
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2442, metadata !569), !dbg !2444
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2429, metadata !569) #10, !dbg !2445
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2430, metadata !569) #10, !dbg !2447
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2431, metadata !569) #10, !dbg !2448
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2449
  ret i8* %3, !dbg !2450
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2451 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2455, metadata !569), !dbg !2457
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2456, metadata !569), !dbg !2458
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2429, metadata !569) #10, !dbg !2459
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2430, metadata !569) #10, !dbg !2461
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2431, metadata !569) #10, !dbg !2462
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2463
  ret i8* %3, !dbg !2464
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2465 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2469, metadata !569), !dbg !2470
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2455, metadata !569) #10, !dbg !2471
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2456, metadata !569) #10, !dbg !2473
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2429, metadata !569) #10, !dbg !2474
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2430, metadata !569) #10, !dbg !2476
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2431, metadata !569) #10, !dbg !2477
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2478
  ret i8* %2, !dbg !2479
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2480 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2540, metadata !569), !dbg !2546
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2541, metadata !569), !dbg !2547
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2542, metadata !569), !dbg !2548
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2543, metadata !569), !dbg !2549
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2544, metadata !569), !dbg !2550
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2545, metadata !569), !dbg !2551
  %7 = icmp eq i8* %1, null, !dbg !2552
  br i1 %7, label %10, label %8, !dbg !2554

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2555
  br label %12, !dbg !2555

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.67, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2556
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.68, i64 0, i64 0), i32 5) #10, !dbg !2557
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !2557
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.69, i64 0, i64 0), i32 5) #10, !dbg !2558
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !2558
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
  ], !dbg !2559

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2560
  unreachable, !dbg !2560

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.70, i64 0, i64 0), i32 5) #10, !dbg !2562
  %20 = load i8*, i8** %4, align 8, !dbg !2562, !tbaa !576
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2562
  br label %146, !dbg !2563

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.71, i64 0, i64 0), i32 5) #10, !dbg !2564
  %24 = load i8*, i8** %4, align 8, !dbg !2564, !tbaa !576
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2564
  %26 = load i8*, i8** %25, align 8, !dbg !2564, !tbaa !576
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2564
  br label %146, !dbg !2565

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.72, i64 0, i64 0), i32 5) #10, !dbg !2566
  %30 = load i8*, i8** %4, align 8, !dbg !2566, !tbaa !576
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2566
  %32 = load i8*, i8** %31, align 8, !dbg !2566, !tbaa !576
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2566
  %34 = load i8*, i8** %33, align 8, !dbg !2566, !tbaa !576
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2566
  br label %146, !dbg !2567

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.73, i64 0, i64 0), i32 5) #10, !dbg !2568
  %38 = load i8*, i8** %4, align 8, !dbg !2568, !tbaa !576
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2568
  %40 = load i8*, i8** %39, align 8, !dbg !2568, !tbaa !576
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2568
  %42 = load i8*, i8** %41, align 8, !dbg !2568, !tbaa !576
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2568
  %44 = load i8*, i8** %43, align 8, !dbg !2568, !tbaa !576
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2568
  br label %146, !dbg !2569

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.74, i64 0, i64 0), i32 5) #10, !dbg !2570
  %48 = load i8*, i8** %4, align 8, !dbg !2570, !tbaa !576
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2570
  %50 = load i8*, i8** %49, align 8, !dbg !2570, !tbaa !576
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2570
  %52 = load i8*, i8** %51, align 8, !dbg !2570, !tbaa !576
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2570
  %54 = load i8*, i8** %53, align 8, !dbg !2570, !tbaa !576
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2570
  %56 = load i8*, i8** %55, align 8, !dbg !2570, !tbaa !576
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2570
  br label %146, !dbg !2571

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.75, i64 0, i64 0), i32 5) #10, !dbg !2572
  %60 = load i8*, i8** %4, align 8, !dbg !2572, !tbaa !576
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2572
  %62 = load i8*, i8** %61, align 8, !dbg !2572, !tbaa !576
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2572
  %64 = load i8*, i8** %63, align 8, !dbg !2572, !tbaa !576
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2572
  %66 = load i8*, i8** %65, align 8, !dbg !2572, !tbaa !576
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2572
  %68 = load i8*, i8** %67, align 8, !dbg !2572, !tbaa !576
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2572
  %70 = load i8*, i8** %69, align 8, !dbg !2572, !tbaa !576
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2572
  br label %146, !dbg !2573

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.76, i64 0, i64 0), i32 5) #10, !dbg !2574
  %74 = load i8*, i8** %4, align 8, !dbg !2574, !tbaa !576
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2574
  %76 = load i8*, i8** %75, align 8, !dbg !2574, !tbaa !576
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2574
  %78 = load i8*, i8** %77, align 8, !dbg !2574, !tbaa !576
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2574
  %80 = load i8*, i8** %79, align 8, !dbg !2574, !tbaa !576
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2574
  %82 = load i8*, i8** %81, align 8, !dbg !2574, !tbaa !576
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2574
  %84 = load i8*, i8** %83, align 8, !dbg !2574, !tbaa !576
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2574
  %86 = load i8*, i8** %85, align 8, !dbg !2574, !tbaa !576
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2574
  br label %146, !dbg !2575

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.77, i64 0, i64 0), i32 5) #10, !dbg !2576
  %90 = load i8*, i8** %4, align 8, !dbg !2576, !tbaa !576
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2576
  %92 = load i8*, i8** %91, align 8, !dbg !2576, !tbaa !576
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2576
  %94 = load i8*, i8** %93, align 8, !dbg !2576, !tbaa !576
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2576
  %96 = load i8*, i8** %95, align 8, !dbg !2576, !tbaa !576
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2576
  %98 = load i8*, i8** %97, align 8, !dbg !2576, !tbaa !576
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2576
  %100 = load i8*, i8** %99, align 8, !dbg !2576, !tbaa !576
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2576
  %102 = load i8*, i8** %101, align 8, !dbg !2576, !tbaa !576
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2576
  %104 = load i8*, i8** %103, align 8, !dbg !2576, !tbaa !576
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2576
  br label %146, !dbg !2577

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.78, i64 0, i64 0), i32 5) #10, !dbg !2578
  %108 = load i8*, i8** %4, align 8, !dbg !2578, !tbaa !576
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2578
  %110 = load i8*, i8** %109, align 8, !dbg !2578, !tbaa !576
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2578
  %112 = load i8*, i8** %111, align 8, !dbg !2578, !tbaa !576
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2578
  %114 = load i8*, i8** %113, align 8, !dbg !2578, !tbaa !576
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2578
  %116 = load i8*, i8** %115, align 8, !dbg !2578, !tbaa !576
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2578
  %118 = load i8*, i8** %117, align 8, !dbg !2578, !tbaa !576
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2578
  %120 = load i8*, i8** %119, align 8, !dbg !2578, !tbaa !576
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2578
  %122 = load i8*, i8** %121, align 8, !dbg !2578, !tbaa !576
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2578
  %124 = load i8*, i8** %123, align 8, !dbg !2578, !tbaa !576
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2578
  br label %146, !dbg !2579

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.79, i64 0, i64 0), i32 5) #10, !dbg !2580
  %128 = load i8*, i8** %4, align 8, !dbg !2580, !tbaa !576
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2580
  %130 = load i8*, i8** %129, align 8, !dbg !2580, !tbaa !576
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2580
  %132 = load i8*, i8** %131, align 8, !dbg !2580, !tbaa !576
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2580
  %134 = load i8*, i8** %133, align 8, !dbg !2580, !tbaa !576
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2580
  %136 = load i8*, i8** %135, align 8, !dbg !2580, !tbaa !576
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2580
  %138 = load i8*, i8** %137, align 8, !dbg !2580, !tbaa !576
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2580
  %140 = load i8*, i8** %139, align 8, !dbg !2580, !tbaa !576
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2580
  %142 = load i8*, i8** %141, align 8, !dbg !2580, !tbaa !576
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2580
  %144 = load i8*, i8** %143, align 8, !dbg !2580, !tbaa !576
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2580
  br label %146, !dbg !2581

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2582
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2583 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2587, metadata !569), !dbg !2593
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2588, metadata !569), !dbg !2594
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2589, metadata !569), !dbg !2595
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2590, metadata !569), !dbg !2596
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2591, metadata !569), !dbg !2597
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2592, metadata !569), !dbg !2598
  br label %6, !dbg !2599

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2592, metadata !569), !dbg !2598
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2601
  %9 = load i8*, i8** %8, align 8, !dbg !2601, !tbaa !576
  %10 = icmp eq i8* %9, null, !dbg !2603
  %11 = add i64 %7, 1, !dbg !2604
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2592, metadata !569), !dbg !2598
  br i1 %10, label %12, label %6, !dbg !2603, !llvm.loop !2605

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2607
  ret void, !dbg !2608
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2609 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2620, metadata !569), !dbg !2628
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2621, metadata !569), !dbg !2629
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2622, metadata !569), !dbg !2630
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2623, metadata !569), !dbg !2631
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2624, metadata !569), !dbg !2632
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2633
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2633
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2626, metadata !569), !dbg !2634
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2625, metadata !569), !dbg !2635
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2625, metadata !569), !dbg !2635
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2625, metadata !569), !dbg !2635
  %11 = load i32, i32* %8, align 8, !dbg !2636
  %12 = icmp ult i32 %11, 41, !dbg !2636
  br i1 %12, label %13, label %18, !dbg !2636

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2636
  %15 = sext i32 %11 to i64, !dbg !2636
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2636
  %17 = add i32 %11, 8, !dbg !2636
  store i32 %17, i32* %8, align 8, !dbg !2636
  br label %21, !dbg !2636

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2636
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2636
  store i8* %20, i8** %10, align 8, !dbg !2636
  br label %21, !dbg !2636

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2636
  %25 = load i8*, i8** %24, align 8, !dbg !2636
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2639
  store i8* %25, i8** %26, align 16, !dbg !2640, !tbaa !576
  %27 = icmp eq i8* %25, null, !dbg !2641
  br i1 %27, label %30, label %28, !dbg !2642

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2625, metadata !569), !dbg !2635
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2625, metadata !569), !dbg !2635
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2625, metadata !569), !dbg !2635
  %29 = icmp ult i32 %22, 41, !dbg !2636
  br i1 %29, label %35, label %32, !dbg !2636

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2643
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2644
  ret void, !dbg !2644

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2636
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2636
  store i8* %34, i8** %10, align 8, !dbg !2636
  br label %40, !dbg !2636

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2636
  %37 = sext i32 %22 to i64, !dbg !2636
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2636
  %39 = add i32 %22, 8, !dbg !2636
  store i32 %39, i32* %8, align 8, !dbg !2636
  br label %40, !dbg !2636

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2636
  %44 = load i8*, i8** %43, align 8, !dbg !2636
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2639
  store i8* %44, i8** %45, align 8, !dbg !2640, !tbaa !576
  %46 = icmp eq i8* %44, null, !dbg !2641
  br i1 %46, label %30, label %47, !dbg !2642

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2625, metadata !569), !dbg !2635
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2625, metadata !569), !dbg !2635
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2625, metadata !569), !dbg !2635
  %48 = icmp ult i32 %41, 41, !dbg !2636
  br i1 %48, label %52, label %49, !dbg !2636

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2636
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2636
  store i8* %51, i8** %10, align 8, !dbg !2636
  br label %57, !dbg !2636

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2636
  %54 = sext i32 %41 to i64, !dbg !2636
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2636
  %56 = add i32 %41, 8, !dbg !2636
  store i32 %56, i32* %8, align 8, !dbg !2636
  br label %57, !dbg !2636

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2636
  %61 = load i8*, i8** %60, align 8, !dbg !2636
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2639
  store i8* %61, i8** %62, align 16, !dbg !2640, !tbaa !576
  %63 = icmp eq i8* %61, null, !dbg !2641
  br i1 %63, label %30, label %64, !dbg !2642

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2625, metadata !569), !dbg !2635
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2625, metadata !569), !dbg !2635
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2625, metadata !569), !dbg !2635
  %65 = icmp ult i32 %58, 41, !dbg !2636
  br i1 %65, label %69, label %66, !dbg !2636

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2636
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2636
  store i8* %68, i8** %10, align 8, !dbg !2636
  br label %74, !dbg !2636

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2636
  %71 = sext i32 %58 to i64, !dbg !2636
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2636
  %73 = add i32 %58, 8, !dbg !2636
  store i32 %73, i32* %8, align 8, !dbg !2636
  br label %74, !dbg !2636

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2636
  %78 = load i8*, i8** %77, align 8, !dbg !2636
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2639
  store i8* %78, i8** %79, align 8, !dbg !2640, !tbaa !576
  %80 = icmp eq i8* %78, null, !dbg !2641
  br i1 %80, label %30, label %81, !dbg !2642

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2625, metadata !569), !dbg !2635
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2625, metadata !569), !dbg !2635
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2625, metadata !569), !dbg !2635
  %82 = icmp ult i32 %75, 41, !dbg !2636
  br i1 %82, label %86, label %83, !dbg !2636

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2636
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2636
  store i8* %85, i8** %10, align 8, !dbg !2636
  br label %91, !dbg !2636

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2636
  %88 = sext i32 %75 to i64, !dbg !2636
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2636
  %90 = add i32 %75, 8, !dbg !2636
  store i32 %90, i32* %8, align 8, !dbg !2636
  br label %91, !dbg !2636

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2636
  %95 = load i8*, i8** %94, align 8, !dbg !2636
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2639
  store i8* %95, i8** %96, align 16, !dbg !2640, !tbaa !576
  %97 = icmp eq i8* %95, null, !dbg !2641
  br i1 %97, label %30, label %98, !dbg !2642

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2625, metadata !569), !dbg !2635
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2625, metadata !569), !dbg !2635
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2625, metadata !569), !dbg !2635
  %99 = icmp ult i32 %92, 41, !dbg !2636
  br i1 %99, label %103, label %100, !dbg !2636

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2636
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2636
  store i8* %102, i8** %10, align 8, !dbg !2636
  br label %108, !dbg !2636

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2636
  %105 = sext i32 %92 to i64, !dbg !2636
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2636
  %107 = add i32 %92, 8, !dbg !2636
  store i32 %107, i32* %8, align 8, !dbg !2636
  br label %108, !dbg !2636

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2636
  %111 = load i8*, i8** %110, align 8, !dbg !2636
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2639
  store i8* %111, i8** %112, align 8, !dbg !2640, !tbaa !576
  %113 = icmp eq i8* %111, null, !dbg !2641
  br i1 %113, label %30, label %114, !dbg !2642

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2625, metadata !569), !dbg !2635
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2625, metadata !569), !dbg !2635
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2625, metadata !569), !dbg !2635
  %115 = load i8*, i8** %10, align 8, !dbg !2636
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2636
  store i8* %116, i8** %10, align 8, !dbg !2636
  %117 = bitcast i8* %115 to i8**, !dbg !2636
  %118 = load i8*, i8** %117, align 8, !dbg !2636
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2639
  store i8* %118, i8** %119, align 16, !dbg !2640, !tbaa !576
  %120 = icmp eq i8* %118, null, !dbg !2641
  br i1 %120, label %30, label %121, !dbg !2642

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2625, metadata !569), !dbg !2635
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2625, metadata !569), !dbg !2635
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2625, metadata !569), !dbg !2635
  %122 = load i8*, i8** %10, align 8, !dbg !2636
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2636
  store i8* %123, i8** %10, align 8, !dbg !2636
  %124 = bitcast i8* %122 to i8**, !dbg !2636
  %125 = load i8*, i8** %124, align 8, !dbg !2636
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2639
  store i8* %125, i8** %126, align 8, !dbg !2640, !tbaa !576
  %127 = icmp eq i8* %125, null, !dbg !2641
  br i1 %127, label %30, label %128, !dbg !2642

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2625, metadata !569), !dbg !2635
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2625, metadata !569), !dbg !2635
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2625, metadata !569), !dbg !2635
  %129 = load i8*, i8** %10, align 8, !dbg !2636
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2636
  store i8* %130, i8** %10, align 8, !dbg !2636
  %131 = bitcast i8* %129 to i8**, !dbg !2636
  %132 = load i8*, i8** %131, align 8, !dbg !2636
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2639
  store i8* %132, i8** %133, align 16, !dbg !2640, !tbaa !576
  %134 = icmp eq i8* %132, null, !dbg !2641
  br i1 %134, label %30, label %135, !dbg !2642

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2625, metadata !569), !dbg !2635
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2625, metadata !569), !dbg !2635
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2625, metadata !569), !dbg !2635
  %136 = load i8*, i8** %10, align 8, !dbg !2636
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2636
  store i8* %137, i8** %10, align 8, !dbg !2636
  %138 = bitcast i8* %136 to i8**, !dbg !2636
  %139 = load i8*, i8** %138, align 8, !dbg !2636
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2639
  store i8* %139, i8** %140, align 8, !dbg !2640, !tbaa !576
  %141 = icmp eq i8* %139, null, !dbg !2641
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2625, metadata !569), !dbg !2635
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2625, metadata !569), !dbg !2635
  %142 = select i1 %141, i64 9, i64 10, !dbg !2642
  br label %30, !dbg !2642
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !2645 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2649, metadata !569), !dbg !2660
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2650, metadata !569), !dbg !2661
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2651, metadata !569), !dbg !2662
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2652, metadata !569), !dbg !2663
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2664
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2664
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2653, metadata !569), !dbg !2665
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2666
  call void @llvm.va_start(i8* nonnull %6), !dbg !2666
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2667
  call void @llvm.va_end(i8* nonnull %6), !dbg !2668
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2669
  ret void, !dbg !2669
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !2670 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.82, i64 0, i64 0), i32 5) #10, !dbg !2671
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.83, i64 0, i64 0)) #10, !dbg !2671
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.84, i64 0, i64 0), i32 5) #10, !dbg !2672
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.85, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.86, i64 0, i64 0)) #10, !dbg !2672
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.87, i64 0, i64 0), i32 5) #10, !dbg !2673
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2673, !tbaa !576
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !2673
  ret void, !dbg !2674
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2675 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2679, metadata !569), !dbg !2681
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2680, metadata !569), !dbg !2682
  %3 = udiv i64 9223372036854775807, %1, !dbg !2683
  %4 = icmp ult i64 %3, %0, !dbg !2683
  br i1 %4, label %5, label %6, !dbg !2685

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2686
  unreachable, !dbg !2686

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2687
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2688, metadata !569) #10, !dbg !2695
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !2697
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2694, metadata !569) #10, !dbg !2698
  %9 = icmp eq i8* %8, null, !dbg !2699
  %10 = icmp ne i64 %7, 0, !dbg !2701
  %11 = and i1 %10, %9, !dbg !2702
  br i1 %11, label %12, label %13, !dbg !2702

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2703
  unreachable, !dbg !2703

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2704
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !2689 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2688, metadata !569), !dbg !2705
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2706
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2694, metadata !569), !dbg !2707
  %3 = icmp eq i8* %2, null, !dbg !2708
  %4 = icmp ne i64 %0, 0, !dbg !2709
  %5 = and i1 %4, %3, !dbg !2710
  br i1 %5, label %6, label %7, !dbg !2710

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2711
  unreachable, !dbg !2711

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2712
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2713 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2717, metadata !569), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2718, metadata !569), !dbg !2721
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2719, metadata !569), !dbg !2722
  %4 = udiv i64 9223372036854775807, %2, !dbg !2723
  %5 = icmp ult i64 %4, %1, !dbg !2723
  br i1 %5, label %6, label %7, !dbg !2725

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !2726
  unreachable, !dbg !2726

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2727
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2728, metadata !569) #10, !dbg !2734
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !2733, metadata !569) #10, !dbg !2736
  %9 = icmp eq i64 %8, 0, !dbg !2737
  %10 = icmp ne i8* %0, null, !dbg !2739
  %11 = and i1 %10, %9, !dbg !2740
  br i1 %11, label %12, label %13, !dbg !2740

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !2741
  br label %19, !dbg !2743

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !2744
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !2728, metadata !569) #10, !dbg !2734
  %15 = icmp eq i8* %14, null, !dbg !2745
  %16 = icmp ne i64 %8, 0, !dbg !2747
  %17 = and i1 %16, %15, !dbg !2748
  br i1 %17, label %18, label %19, !dbg !2748

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2749
  unreachable, !dbg !2749

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !2750
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !2729 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2728, metadata !569), !dbg !2751
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2733, metadata !569), !dbg !2752
  %3 = icmp eq i64 %1, 0, !dbg !2753
  %4 = icmp ne i8* %0, null, !dbg !2754
  %5 = and i1 %4, %3, !dbg !2755
  br i1 %5, label %6, label %7, !dbg !2755

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !2756
  br label %13, !dbg !2757

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !2758
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2728, metadata !569), !dbg !2751
  %9 = icmp eq i8* %8, null, !dbg !2759
  %10 = icmp ne i64 %1, 0, !dbg !2760
  %11 = and i1 %10, %9, !dbg !2761
  br i1 %11, label %12, label %13, !dbg !2761

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2762
  unreachable, !dbg !2762

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !2763
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !529 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !534, metadata !569), !dbg !2764
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !535, metadata !569), !dbg !2765
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !536, metadata !569), !dbg !2766
  %4 = load i64, i64* %1, align 8, !dbg !2767, !tbaa !1801
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !537, metadata !569), !dbg !2768
  %5 = icmp eq i8* %0, null, !dbg !2769
  br i1 %5, label %6, label %13, !dbg !2771

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2772
  br i1 %7, label %8, label %17, !dbg !2775

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2776
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !537, metadata !569), !dbg !2768
  %10 = icmp ugt i64 %2, 128, !dbg !2778
  %11 = zext i1 %10 to i64, !dbg !2778
  %12 = add nuw nsw i64 %9, %11, !dbg !2779
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !537, metadata !569), !dbg !2768
  br label %17, !dbg !2780

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !2781
  %15 = icmp ugt i64 %14, %4, !dbg !2784
  br i1 %15, label %20, label %16, !dbg !2785

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2786
  unreachable, !dbg !2786

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !537, metadata !569), !dbg !2768
  store i64 %18, i64* %1, align 8, !dbg !2787, !tbaa !1801
  %19 = mul i64 %18, %2, !dbg !2788
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2728, metadata !569) #10, !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2733, metadata !569) #10, !dbg !2791
  br label %27, !dbg !2792

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !2793
  %22 = add i64 %4, 1, !dbg !2794
  %23 = add i64 %22, %21, !dbg !2795
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !537, metadata !569), !dbg !2768
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !537, metadata !569), !dbg !2768
  store i64 %23, i64* %1, align 8, !dbg !2787, !tbaa !1801
  %24 = mul i64 %23, %2, !dbg !2788
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2728, metadata !569) #10, !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2733, metadata !569) #10, !dbg !2791
  %25 = icmp eq i64 %24, 0, !dbg !2796
  br i1 %25, label %26, label %27, !dbg !2792

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !2797
  br label %34, !dbg !2798

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !2799
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2728, metadata !569) #10, !dbg !2789
  %30 = icmp eq i8* %29, null, !dbg !2800
  %31 = icmp ne i64 %28, 0, !dbg !2801
  %32 = and i1 %31, %30, !dbg !2802
  br i1 %32, label %33, label %34, !dbg !2802

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !2803
  unreachable, !dbg !2803

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !2804
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !2805 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2807, metadata !569), !dbg !2808
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2688, metadata !569) #10, !dbg !2809
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2811
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2694, metadata !569) #10, !dbg !2812
  %3 = icmp eq i8* %2, null, !dbg !2813
  %4 = icmp ne i64 %0, 0, !dbg !2814
  %5 = and i1 %4, %3, !dbg !2815
  br i1 %5, label %6, label %7, !dbg !2815

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2816
  unreachable, !dbg !2816

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2817
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !2818 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2822, metadata !569), !dbg !2824
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !2823, metadata !569), !dbg !2825
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !534, metadata !569) #10, !dbg !2826
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !535, metadata !569) #10, !dbg !2828
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !536, metadata !569) #10, !dbg !2829
  %3 = load i64, i64* %1, align 8, !dbg !2830, !tbaa !1801
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !537, metadata !569) #10, !dbg !2831
  %4 = icmp eq i8* %0, null, !dbg !2832
  br i1 %4, label %5, label %8, !dbg !2833

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2834
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !537, metadata !569) #10, !dbg !2831
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !537, metadata !569) #10, !dbg !2831
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2835
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !537, metadata !569) #10, !dbg !2831
  store i64 %7, i64* %1, align 8, !dbg !2836, !tbaa !1801
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2728, metadata !569) #10, !dbg !2837
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2733, metadata !569) #10, !dbg !2839
  br label %17, !dbg !2840

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !2841
  br i1 %9, label %11, label %10, !dbg !2842

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !2843
  unreachable, !dbg !2843

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !2844
  %13 = add i64 %3, 1, !dbg !2845
  %14 = add i64 %13, %12, !dbg !2846
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !537, metadata !569) #10, !dbg !2831
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !537, metadata !569) #10, !dbg !2831
  store i64 %14, i64* %1, align 8, !dbg !2836, !tbaa !1801
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2728, metadata !569) #10, !dbg !2837
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2733, metadata !569) #10, !dbg !2839
  %15 = icmp eq i64 %14, 0, !dbg !2847
  br i1 %15, label %16, label %17, !dbg !2840

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !2848
  br label %24, !dbg !2849

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !2850
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !2728, metadata !569) #10, !dbg !2837
  %20 = icmp eq i8* %19, null, !dbg !2851
  %21 = icmp ne i64 %18, 0, !dbg !2852
  %22 = and i1 %21, %20, !dbg !2853
  br i1 %22, label %23, label %24, !dbg !2853

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !2854
  unreachable, !dbg !2854

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !2855
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !2856 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2858, metadata !569), !dbg !2859
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2688, metadata !569) #10, !dbg !2860
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2862
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2694, metadata !569) #10, !dbg !2863
  %3 = icmp eq i8* %2, null, !dbg !2864
  %4 = icmp ne i64 %0, 0, !dbg !2865
  %5 = and i1 %4, %3, !dbg !2866
  br i1 %5, label %6, label %7, !dbg !2866

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2867
  unreachable, !dbg !2867

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !2868
  ret i8* %2, !dbg !2869
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !2870 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2872, metadata !569), !dbg !2875
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2873, metadata !569), !dbg !2876
  %3 = udiv i64 9223372036854775807, %1, !dbg !2877
  %4 = icmp ult i64 %3, %0, !dbg !2877
  br i1 %4, label %8, label %5, !dbg !2879

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !2880
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2874, metadata !569), !dbg !2881
  %7 = icmp eq i8* %6, null, !dbg !2882
  br i1 %7, label %8, label %9, !dbg !2883

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !2884
  unreachable, !dbg !2884

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !2885
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !2886 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2892, metadata !569), !dbg !2894
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2893, metadata !569), !dbg !2895
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2688, metadata !569) #10, !dbg !2896
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !2898
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2694, metadata !569) #10, !dbg !2899
  %4 = icmp eq i8* %3, null, !dbg !2900
  %5 = icmp ne i64 %1, 0, !dbg !2901
  %6 = and i1 %5, %4, !dbg !2902
  br i1 %6, label %7, label %8, !dbg !2902

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2903
  unreachable, !dbg !2903

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !2904
  ret i8* %3, !dbg !2905
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !2906 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2908, metadata !569), !dbg !2909
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !2910
  %3 = add i64 %2, 1, !dbg !2911
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2892, metadata !569) #10, !dbg !2912
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2893, metadata !569) #10, !dbg !2914
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2688, metadata !569) #10, !dbg !2915
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !2917
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !2694, metadata !569) #10, !dbg !2918
  %5 = icmp eq i8* %4, null, !dbg !2919
  %6 = icmp ne i64 %3, 0, !dbg !2920
  %7 = and i1 %6, %5, !dbg !2921
  br i1 %7, label %8, label %9, !dbg !2921

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2922
  unreachable, !dbg !2922

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !2923
  ret i8* %4, !dbg !2924
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !2925 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2927, !tbaa !649
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.98, i64 0, i64 0), i32 5) #10, !dbg !2928
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i64 0, i64 0), i8* %2) #10, !dbg !2929
  tail call void @abort() #15, !dbg !2930
  unreachable, !dbg !2930
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !2931 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2934, metadata !569), !dbg !2940
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2935, metadata !569), !dbg !2941
  %3 = icmp eq i64 %0, 0, !dbg !2942
  %4 = icmp eq i64 %1, 0, !dbg !2943
  %5 = or i1 %3, %4, !dbg !2944
  br i1 %5, label %12, label %6, !dbg !2944

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2945
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2937, metadata !569), !dbg !2946
  %8 = udiv i64 %7, %1, !dbg !2947
  %9 = icmp eq i64 %8, %0, !dbg !2949
  br i1 %9, label %12, label %10, !dbg !2950

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !2951
  store i32 12, i32* %11, align 4, !dbg !2953, !tbaa !649
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2934, metadata !569), !dbg !2940
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !2935, metadata !569), !dbg !2941
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !2954
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !2936, metadata !569), !dbg !2955
  br label %16, !dbg !2956

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !2957
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !2958 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !2975, metadata !569), !dbg !2984
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2976, metadata !569), !dbg !2985
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2977, metadata !569), !dbg !2986
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !2978, metadata !569), !dbg !2987
  %6 = bitcast i32* %5 to i8*, !dbg !2988
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !2988
  %7 = icmp eq i32* %0, null, !dbg !2989
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2975, metadata !569), !dbg !2984
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !2991
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2975, metadata !569), !dbg !2984
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !2992
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !2979, metadata !569), !dbg !2993
  %10 = icmp ugt i64 %9, -3, !dbg !2994
  %11 = icmp ne i64 %2, 0, !dbg !2995
  %12 = and i1 %11, %10, !dbg !2996
  br i1 %12, label %13, label %18, !dbg !2996

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !2997
  br i1 %14, label %18, label %15, !dbg !2998

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !2999, !tbaa !1065
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !2981, metadata !569), !dbg !3000
  %17 = zext i8 %16 to i32, !dbg !3001
  store i32 %17, i32* %8, align 4, !dbg !3002, !tbaa !649
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3003
  ret i64 %19, !dbg !3003
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3004 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3049, metadata !569), !dbg !3054
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3055
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3056, metadata !569), !dbg !3060
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3062
  %4 = load i32, i32* %3, align 8, !dbg !3062, !tbaa !3063
  %5 = and i32 %4, 32, !dbg !3062
  %6 = icmp eq i32 %5, 0, !dbg !3065
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3066
  %8 = icmp ne i32 %7, 0, !dbg !3067
  br i1 %6, label %9, label %19, !dbg !3068

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3070
  %11 = xor i1 %8, true, !dbg !3071
  %12 = or i1 %10, %11, !dbg !3071
  %13 = sext i1 %8 to i32, !dbg !3071
  br i1 %12, label %22, label %14, !dbg !3071

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3072
  %16 = load i32, i32* %15, align 4, !dbg !3072, !tbaa !649
  %17 = icmp ne i32 %16, 9, !dbg !3073
  %18 = sext i1 %17 to i32, !dbg !3074
  br label %22, !dbg !3074

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3075

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3077
  store i32 0, i32* %21, align 4, !dbg !3079, !tbaa !649
  br label %22, !dbg !3077

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3080
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3081 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3086, metadata !569), !dbg !3089
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3087, metadata !569), !dbg !3090
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3091
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3088, metadata !569), !dbg !3092
  %3 = icmp eq i8* %2, null, !dbg !3093
  br i1 %3, label %11, label %4, !dbg !3095

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.108, i64 0, i64 0)) #14, !dbg !3096
  %6 = icmp eq i32 %5, 0, !dbg !3101
  br i1 %6, label %10, label %7, !dbg !3102

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.109, i64 0, i64 0)) #14, !dbg !3103
  %9 = icmp eq i32 %8, 0, !dbg !3104
  br i1 %9, label %10, label %11, !dbg !3105

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3087, metadata !569), !dbg !3090
  br label %11, !dbg !3106

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3107
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3108 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3114, metadata !569), !dbg !3188
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3181, metadata !569), !dbg !3191
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3192
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3112, metadata !569), !dbg !3193
  %4 = icmp eq i8* %3, null, !dbg !3194
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.112, i64 0, i64 0), i8* %3, !dbg !3196
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3112, metadata !569), !dbg !3193
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3197, !tbaa !576
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3128, metadata !569) #10, !dbg !3198
  %7 = icmp eq i8* %6, null, !dbg !3199
  br i1 %7, label %8, label %123, !dbg !3200

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.113, i64 0, i64 0)) #10, !dbg !3201
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3129, metadata !569) #10, !dbg !3202
  %10 = icmp eq i8* %9, null, !dbg !3203
  br i1 %10, label %14, label %11, !dbg !3205

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3206, !tbaa !1065
  %13 = icmp eq i8 %12, 0, !dbg !3207
  br i1 %13, label %14, label %15, !dbg !3208

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3209

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.114, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3129, metadata !569) #10, !dbg !3202
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !3210
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3132, metadata !569) #10, !dbg !3211
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3134, metadata !569) #10, !dbg !3212
  %18 = icmp eq i64 %17, 0, !dbg !3213
  br i1 %18, label %24, label %19, !dbg !3214

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3215
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3215
  %22 = load i8, i8* %21, align 1, !dbg !3215, !tbaa !1065
  %23 = icmp ne i8 %22, 47, !dbg !3215
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3216
  %27 = add i64 %17, 14, !dbg !3217
  %28 = add i64 %27, %26, !dbg !3218
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !3219
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3131, metadata !569) #10, !dbg !3220
  %30 = icmp eq i8* %29, null, !dbg !3221
  br i1 %30, label %121, label %31, !dbg !3221

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !3222
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3225

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3226, !tbaa !1065
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3228
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.115, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3229
  br label %37, !dbg !3230

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3228
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.115, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3229
  br label %37, !dbg !3230

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !3231
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3136, metadata !569) #10, !dbg !3232
  %39 = icmp slt i32 %38, 0, !dbg !3233
  br i1 %39, label %119, label %40, !dbg !3234

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.116, i64 0, i64 0)) #10, !dbg !3235
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3137, metadata !569) #10, !dbg !3236
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3237
  br i1 %42, label %43, label %45, !dbg !3238

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #10, !dbg !3239
  br label %119, !dbg !3241

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3178, metadata !569) #10, !dbg !3242
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3179, metadata !569) #10, !dbg !3243
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3244

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !3245

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3178, metadata !569) #10, !dbg !3242
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3179, metadata !569) #10, !dbg !3243
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3245
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3246
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3247, metadata !569) #10, !dbg !3252
  %54 = load i8*, i8** %48, align 8, !dbg !3254, !tbaa !3255
  %55 = load i8*, i8** %49, align 8, !dbg !3254, !tbaa !3256
  %56 = icmp ult i8* %54, %55, !dbg !3254
  br i1 %56, label %59, label %57, !dbg !3254, !prof !3257

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3254
  br label %63, !dbg !3254

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !3254
  store i8* %60, i8** %48, align 8, !dbg !3254, !tbaa !3255
  %61 = load i8, i8* %54, align 1, !dbg !3254, !tbaa !1065
  %62 = zext i8 %61 to i32, !dbg !3254
  br label %63, !dbg !3254

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !3254
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3180, metadata !569) #10, !dbg !3258
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !3259, !llvm.loop !3260

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !3265

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3247, metadata !569) #10, !dbg !3267
  %67 = load i8*, i8** %48, align 8, !dbg !3265, !tbaa !3255
  %68 = load i8*, i8** %49, align 8, !dbg !3265, !tbaa !3256
  %69 = icmp ult i8* %67, %68, !dbg !3265
  br i1 %69, label %72, label %70, !dbg !3265, !prof !3257

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3265
  br label %76, !dbg !3265

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !3265
  store i8* %73, i8** %48, align 8, !dbg !3265, !tbaa !3255
  %74 = load i8, i8* %67, align 1, !dbg !3265, !tbaa !1065
  %75 = zext i8 %74 to i32, !dbg !3265
  br label %76, !dbg !3265

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !3265
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !3180, metadata !569) #10, !dbg !3258
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !3268, !llvm.loop !3269

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #10, !dbg !3272
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.117, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #10, !dbg !3273
  %81 = icmp slt i32 %80, 2, !dbg !3275
  br i1 %81, label %112, label %82, !dbg !3276

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !3277
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3185, metadata !569) #10, !dbg !3278
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !3279
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3186, metadata !569) #10, !dbg !3280
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3187, metadata !569) #10, !dbg !3281
  %85 = icmp eq i64 %51, 0, !dbg !3282
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !3284

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3179, metadata !569) #10, !dbg !3243
  %90 = add i64 %87, 2, !dbg !3285
  %91 = call noalias i8* @malloc(i64 %90) #10, !dbg !3287
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !3178, metadata !569) #10, !dbg !3242
  br label %96, !dbg !3288

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !3289
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !3179, metadata !569) #10, !dbg !3243
  %94 = add i64 %93, 1, !dbg !3291
  %95 = call i8* @realloc(i8* %52, i64 %94) #10, !dbg !3292
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !3178, metadata !569) #10, !dbg !3242
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3178, metadata !569) #10, !dbg !3242
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3179, metadata !569) #10, !dbg !3243
  %99 = icmp eq i8* %98, null, !dbg !3293
  br i1 %99, label %100, label %102, !dbg !3295

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3179, metadata !569) #10, !dbg !3243
  call void @free(i8* %52) #10, !dbg !3296
  br label %112, !dbg !3298

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3299
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3299
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !3300
  %104 = xor i64 %84, -1, !dbg !3301
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3301
  %106 = xor i64 %83, -1, !dbg !3302
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !3302
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !3303, metadata !569) #10, !dbg !3312
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3311, metadata !569) #10, !dbg !3312
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #10, !dbg !3314
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #10, !dbg !3315
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3303, metadata !569) #10, !dbg !3316
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3311, metadata !569) #10, !dbg !3316
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #10, !dbg !3318
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #10, !dbg !3319
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3178, metadata !569) #10, !dbg !3242
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3179, metadata !569) #10, !dbg !3243
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3299
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3299
  br label %50, !dbg !3320, !llvm.loop !3269

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3299
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3299
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !3321
  %116 = icmp eq i64 %113, 0, !dbg !3322
  br i1 %116, label %119, label %117, !dbg !3324

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !3325
  store i8 0, i8* %118, align 1, !dbg !3327, !tbaa !1065
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.112, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.112, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.112, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3128, metadata !569) #10, !dbg !3198
  call void @free(i8* %29) #10, !dbg !3328
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.112, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3128, metadata !569) #10, !dbg !3198
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !3329, !tbaa !576
  br label %123, !dbg !3330

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3128, metadata !569) #10, !dbg !3198
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3113, metadata !569), !dbg !3331
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3113, metadata !569), !dbg !3331
  %125 = load i8, i8* %124, align 1, !dbg !3332, !tbaa !1065
  %126 = icmp eq i8 %125, 0, !dbg !3334
  br i1 %126, label %152, label %127, !dbg !3335

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !3336

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3113, metadata !569), !dbg !3331
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !3336
  %132 = icmp eq i32 %131, 0, !dbg !3338
  br i1 %132, label %139, label %133, !dbg !3339

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !3340
  br i1 %134, label %135, label %143, !dbg !3341

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !3342
  %137 = load i8, i8* %136, align 1, !dbg !3342, !tbaa !1065
  %138 = icmp eq i8 %137, 0, !dbg !3343
  br i1 %138, label %139, label %143, !dbg !3344

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !3345
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !3347
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !3348
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3112, metadata !569), !dbg !3193
  br label %152, !dbg !3349

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !3350
  %145 = add i64 %144, 1, !dbg !3351
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !3352
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3113, metadata !569), !dbg !3331
  %147 = call i64 @strlen(i8* %146) #14, !dbg !3353
  %148 = add i64 %147, 1, !dbg !3354
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !3355
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3113, metadata !569), !dbg !3331
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3113, metadata !569), !dbg !3331
  %150 = load i8, i8* %149, align 1, !dbg !3332, !tbaa !1065
  %151 = icmp eq i8 %150, 0, !dbg !3334
  br i1 %151, label %152, label %128, !dbg !3335, !llvm.loop !3356

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3112, metadata !569), !dbg !3193
  %154 = load i8, i8* %153, align 1, !dbg !3358, !tbaa !1065
  %155 = icmp eq i8 %154, 0, !dbg !3360
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.118, i64 0, i64 0), i8* %153, !dbg !3361
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3112, metadata !569), !dbg !3193
  ret i8* %156, !dbg !3362
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3363 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3408, metadata !569), !dbg !3412
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3409, metadata !569), !dbg !3413
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3411, metadata !569), !dbg !3414
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3415
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3410, metadata !569), !dbg !3416
  %3 = icmp slt i32 %2, 0, !dbg !3417
  br i1 %3, label %4, label %6, !dbg !3419

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3420
  br label %24, !dbg !3421

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3422
  %8 = icmp eq i32 %7, 0, !dbg !3422
  br i1 %8, label %13, label %9, !dbg !3424

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3425
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3426
  %12 = icmp eq i64 %11, -1, !dbg !3427
  br i1 %12, label %16, label %13, !dbg !3428

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3429
  %15 = icmp eq i32 %14, 0, !dbg !3429
  br i1 %15, label %16, label %18, !dbg !3430

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3409, metadata !569), !dbg !3413
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3431
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3411, metadata !569), !dbg !3414
  br label %24, !dbg !3432

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3433
  %20 = load i32, i32* %19, align 4, !dbg !3433, !tbaa !649
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3409, metadata !569), !dbg !3413
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3409, metadata !569), !dbg !3413
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3431
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3411, metadata !569), !dbg !3414
  %22 = icmp eq i32 %20, 0, !dbg !3434
  br i1 %22, label %24, label %23, !dbg !3432

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3436, !tbaa !649
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3411, metadata !569), !dbg !3414
  br label %24, !dbg !3438

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3439
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3440 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3485, metadata !569), !dbg !3486
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3487
  br i1 %2, label %6, label %3, !dbg !3489

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3490
  %5 = icmp eq i32 %4, 0, !dbg !3490
  br i1 %5, label %6, label %8, !dbg !3491

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3492
  br label %17, !dbg !3493

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3494, metadata !569) #10, !dbg !3499
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3501
  %10 = load i32, i32* %9, align 8, !dbg !3501, !tbaa !3063
  %11 = and i32 %10, 256, !dbg !3503
  %12 = icmp eq i32 %11, 0, !dbg !3503
  br i1 %12, label %15, label %13, !dbg !3504

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3505
  br label %15, !dbg !3505

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3506
  br label %17, !dbg !3507

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3508
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3509 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3555, metadata !569), !dbg !3561
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3556, metadata !569), !dbg !3562
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3557, metadata !569), !dbg !3563
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3564
  %5 = load i8*, i8** %4, align 8, !dbg !3564, !tbaa !3256
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3565
  %7 = load i8*, i8** %6, align 8, !dbg !3565, !tbaa !3255
  %8 = icmp eq i8* %5, %7, !dbg !3566
  br i1 %8, label %9, label %28, !dbg !3567

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3568
  %11 = load i8*, i8** %10, align 8, !dbg !3568, !tbaa !3569
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3570
  %13 = load i8*, i8** %12, align 8, !dbg !3570, !tbaa !3571
  %14 = icmp eq i8* %11, %13, !dbg !3572
  br i1 %14, label %15, label %28, !dbg !3573

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3574
  %17 = load i8*, i8** %16, align 8, !dbg !3574, !tbaa !3575
  %18 = icmp eq i8* %17, null, !dbg !3576
  br i1 %18, label %19, label %28, !dbg !3577

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3578
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3579
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3558, metadata !569), !dbg !3580
  %22 = icmp eq i64 %21, -1, !dbg !3581
  br i1 %22, label %30, label %23, !dbg !3583

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3584
  %25 = load i32, i32* %24, align 8, !dbg !3585, !tbaa !3063
  %26 = and i32 %25, -17, !dbg !3585
  store i32 %26, i32* %24, align 8, !dbg !3585, !tbaa !3063
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3586
  store i64 %21, i64* %27, align 8, !dbg !3587, !tbaa !3588
  br label %30, !dbg !3589

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3590
  br label %30, !dbg !3591

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3592
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

!llvm.dbg.cu = !{!2, !48, !53, !62, !69, !76, !516, !161, !524, !541, !543, !545, !548, !550, !170, !552, !554, !556}
!llvm.ident = !{!558, !558, !558, !558, !558, !558, !558, !558, !558, !558, !558, !558, !558, !558, !558, !558, !558, !558}
!llvm.module.flags = !{!559, !560, !561, !562, !563}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 59, type: !33, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10)
!3 = !DIFile(filename: "src/runcon.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{}
!5 = !{!6, !8, !9}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !{!11, !0}
!11 = !DIGlobalVariableExpression(var: !12)
!12 = distinct !DIGlobalVariable(name: "infomap", scope: !13, file: !14, line: 632, type: !30, isLocal: true, isDefinition: true)
!13 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !14, file: !14, line: 630, type: !15, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !19)
!14 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!19 = !{!20, !21, !22, !29}
!20 = !DILocalVariable(name: "program", arg: 1, scope: !13, file: !14, line: 630, type: !17)
!21 = !DILocalVariable(name: "node", scope: !13, file: !14, line: 642, type: !17)
!22 = !DILocalVariable(name: "map_prog", scope: !13, file: !14, line: 643, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !13, file: !14, line: 632, size: 128, elements: !26)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !25, file: !14, line: 632, baseType: !17, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !25, file: !14, line: 632, baseType: !17, size: 64, offset: 64)
!29 = !DILocalVariable(name: "lc_messages", scope: !13, file: !14, line: 655, type: !17)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 896, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 7)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 2048, elements: !44)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !36, line: 50, size: 256, elements: !37)
!36 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!37 = !{!38, !39, !41, !43}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !35, file: !36, line: 52, baseType: !17, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !35, file: !36, line: 55, baseType: !40, size: 32, offset: 64)
!40 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !35, file: !36, line: 56, baseType: !42, size: 64, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !35, file: !36, line: 57, baseType: !40, size: 32, offset: 192)
!44 = !{!45}
!45 = !DISubrange(count: 8)
!46 = !DIGlobalVariableExpression(var: !47)
!47 = distinct !DIGlobalVariable(name: "Version", scope: !48, file: !49, line: 2, type: !17, isLocal: false, isDefinition: true)
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !50)
!49 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!50 = !{!46}
!51 = !DIGlobalVariableExpression(var: !52)
!52 = distinct !DIGlobalVariable(name: "file_name", scope: !53, file: !58, line: 36, type: !17, isLocal: true, isDefinition: true)
!53 = distinct !DICompileUnit(language: DW_LANG_C99, file: !54, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !55)
!54 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!55 = !{!51, !56}
!56 = !DIGlobalVariableExpression(var: !57)
!57 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !53, file: !58, line: 46, type: !59, isLocal: true, isDefinition: true)
!58 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!59 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!60 = !DIGlobalVariableExpression(var: !61)
!61 = distinct !DIGlobalVariable(name: "exit_failure", scope: !62, file: !65, line: 24, type: !66, isLocal: false, isDefinition: true)
!62 = distinct !DICompileUnit(language: DW_LANG_C99, file: !63, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !64)
!63 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!64 = !{!60}
!65 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!66 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !40)
!67 = !DIGlobalVariableExpression(var: !68)
!68 = distinct !DIGlobalVariable(name: "program_name", scope: !69, file: !73, line: 33, type: !17, isLocal: false, isDefinition: true)
!69 = distinct !DICompileUnit(language: DW_LANG_C99, file: !70, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !71, globals: !72)
!70 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!71 = !{!8, !6}
!72 = !{!67}
!73 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!74 = !DIGlobalVariableExpression(var: !75)
!75 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !76, file: !121, line: 77, type: !155, isLocal: false, isDefinition: true)
!76 = distinct !DICompileUnit(language: DW_LANG_C99, file: !77, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !78, retainedTypes: !113, globals: !118)
!77 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!78 = !{!79, !93, !98}
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !80, line: 32, size: 32, elements: !81)
!80 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92}
!82 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!83 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!84 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!85 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!86 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!87 = !DIEnumerator(name: "c_quoting_style", value: 5)
!88 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!89 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!90 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!91 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!92 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !80, line: 242, size: 32, elements: !94)
!94 = !{!95, !96, !97}
!95 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!96 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!97 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !99, line: 46, size: 32, elements: !100)
!99 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!100 = !{!101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112}
!101 = !DIEnumerator(name: "_ISupper", value: 256)
!102 = !DIEnumerator(name: "_ISlower", value: 512)
!103 = !DIEnumerator(name: "_ISalpha", value: 1024)
!104 = !DIEnumerator(name: "_ISdigit", value: 2048)
!105 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!106 = !DIEnumerator(name: "_ISspace", value: 8192)
!107 = !DIEnumerator(name: "_ISprint", value: 16384)
!108 = !DIEnumerator(name: "_ISgraph", value: 32768)
!109 = !DIEnumerator(name: "_ISblank", value: 1)
!110 = !DIEnumerator(name: "_IScntrl", value: 2)
!111 = !DIEnumerator(name: "_ISpunct", value: 4)
!112 = !DIEnumerator(name: "_ISalnum", value: 8)
!113 = !{!40, !114, !115, !6}
!114 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !116, line: 62, baseType: !117)
!116 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!117 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!118 = !{!74, !119, !126, !137, !139, !144, !151, !153}
!119 = !DIGlobalVariableExpression(var: !120)
!120 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !76, file: !121, line: 93, type: !122, isLocal: false, isDefinition: true)
!121 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 320, elements: !124)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!124 = !{!125}
!125 = !DISubrange(count: 10)
!126 = !DIGlobalVariableExpression(var: !127)
!127 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !76, file: !121, line: 1043, type: !128, isLocal: false, isDefinition: true)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !121, line: 57, size: 448, elements: !129)
!129 = !{!130, !131, !132, !135, !136}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !128, file: !121, line: 60, baseType: !79, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !128, file: !121, line: 63, baseType: !40, size: 32, offset: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !128, file: !121, line: 67, baseType: !133, size: 256, offset: 64)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 256, elements: !44)
!134 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !128, file: !121, line: 70, baseType: !17, size: 64, offset: 320)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !128, file: !121, line: 73, baseType: !17, size: 64, offset: 384)
!137 = !DIGlobalVariableExpression(var: !138)
!138 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !76, file: !121, line: 108, type: !128, isLocal: true, isDefinition: true)
!139 = !DIGlobalVariableExpression(var: !140)
!140 = distinct !DIGlobalVariable(name: "slot0", scope: !76, file: !121, line: 834, type: !141, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 256)
!144 = !DIGlobalVariableExpression(var: !145)
!145 = distinct !DIGlobalVariable(name: "slotvec", scope: !76, file: !121, line: 837, type: !146, isLocal: true, isDefinition: true)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !121, line: 826, size: 128, elements: !148)
!148 = !{!149, !150}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !147, file: !121, line: 828, baseType: !115, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !147, file: !121, line: 829, baseType: !6, size: 64, offset: 64)
!151 = !DIGlobalVariableExpression(var: !152)
!152 = distinct !DIGlobalVariable(name: "nslots", scope: !76, file: !121, line: 835, type: !40, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154)
!154 = distinct !DIGlobalVariable(name: "slotvec0", scope: !76, file: !121, line: 836, type: !147, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 704, elements: !157)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!157 = !{!158}
!158 = !DISubrange(count: 11)
!159 = !DIGlobalVariableExpression(var: !160)
!160 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !161, file: !164, line: 26, type: !165, isLocal: false, isDefinition: true)
!161 = distinct !DICompileUnit(language: DW_LANG_C99, file: !162, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !163)
!162 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!163 = !{!159}
!164 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 376, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 47)
!168 = !DIGlobalVariableExpression(var: !169)
!169 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !170, file: !514, line: 120, type: !515, isLocal: true, isDefinition: true)
!170 = distinct !DICompileUnit(language: DW_LANG_C99, file: !171, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !172, retainedTypes: !511, globals: !513)
!171 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!172 = !{!173}
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !174, line: 41, size: 32, elements: !175)
!174 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!175 = !{!176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510}
!176 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!177 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!178 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!179 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!180 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!181 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!182 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!183 = !DIEnumerator(name: "DAY_1", value: 131079)
!184 = !DIEnumerator(name: "DAY_2", value: 131080)
!185 = !DIEnumerator(name: "DAY_3", value: 131081)
!186 = !DIEnumerator(name: "DAY_4", value: 131082)
!187 = !DIEnumerator(name: "DAY_5", value: 131083)
!188 = !DIEnumerator(name: "DAY_6", value: 131084)
!189 = !DIEnumerator(name: "DAY_7", value: 131085)
!190 = !DIEnumerator(name: "ABMON_1", value: 131086)
!191 = !DIEnumerator(name: "ABMON_2", value: 131087)
!192 = !DIEnumerator(name: "ABMON_3", value: 131088)
!193 = !DIEnumerator(name: "ABMON_4", value: 131089)
!194 = !DIEnumerator(name: "ABMON_5", value: 131090)
!195 = !DIEnumerator(name: "ABMON_6", value: 131091)
!196 = !DIEnumerator(name: "ABMON_7", value: 131092)
!197 = !DIEnumerator(name: "ABMON_8", value: 131093)
!198 = !DIEnumerator(name: "ABMON_9", value: 131094)
!199 = !DIEnumerator(name: "ABMON_10", value: 131095)
!200 = !DIEnumerator(name: "ABMON_11", value: 131096)
!201 = !DIEnumerator(name: "ABMON_12", value: 131097)
!202 = !DIEnumerator(name: "MON_1", value: 131098)
!203 = !DIEnumerator(name: "MON_2", value: 131099)
!204 = !DIEnumerator(name: "MON_3", value: 131100)
!205 = !DIEnumerator(name: "MON_4", value: 131101)
!206 = !DIEnumerator(name: "MON_5", value: 131102)
!207 = !DIEnumerator(name: "MON_6", value: 131103)
!208 = !DIEnumerator(name: "MON_7", value: 131104)
!209 = !DIEnumerator(name: "MON_8", value: 131105)
!210 = !DIEnumerator(name: "MON_9", value: 131106)
!211 = !DIEnumerator(name: "MON_10", value: 131107)
!212 = !DIEnumerator(name: "MON_11", value: 131108)
!213 = !DIEnumerator(name: "MON_12", value: 131109)
!214 = !DIEnumerator(name: "AM_STR", value: 131110)
!215 = !DIEnumerator(name: "PM_STR", value: 131111)
!216 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!217 = !DIEnumerator(name: "D_FMT", value: 131113)
!218 = !DIEnumerator(name: "T_FMT", value: 131114)
!219 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!220 = !DIEnumerator(name: "ERA", value: 131116)
!221 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!222 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!223 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!224 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!225 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!226 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!227 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!228 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!229 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!230 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!231 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!232 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!233 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!234 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!235 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!236 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!237 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!238 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!239 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!240 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!241 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!242 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!243 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!244 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!245 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!246 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!247 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!248 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!249 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!250 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!251 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!252 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!253 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!254 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!255 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!256 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!257 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!258 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!259 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!260 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!261 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!262 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!263 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!264 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!265 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!266 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!267 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!268 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!269 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!270 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!271 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!272 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!273 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!274 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!275 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!276 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!277 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!278 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!279 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!280 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!281 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!282 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!283 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!284 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!285 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!286 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!287 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!288 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!289 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!290 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!291 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!292 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!293 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!294 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!295 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!296 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!297 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!298 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!299 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!300 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!301 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!302 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!303 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!304 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!305 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!306 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!307 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!308 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!309 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!310 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!311 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!312 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!313 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!314 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!315 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!316 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!317 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!318 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!319 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!320 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!321 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!322 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!323 = !DIEnumerator(name: "CODESET", value: 14)
!324 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!325 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!326 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!327 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!328 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!329 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!330 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!331 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!332 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!333 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!334 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!335 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!336 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!337 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!338 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!339 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!340 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!341 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!342 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!343 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!344 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!345 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!346 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!347 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!348 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!349 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!350 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!351 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!352 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!353 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!354 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!355 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!356 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!357 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!358 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!359 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!360 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!361 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!362 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!363 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!364 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!365 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!366 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!367 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!368 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!369 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!370 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!371 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!372 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!373 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!374 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!375 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!376 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!377 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!378 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!379 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!380 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!381 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!382 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!383 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!384 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!385 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!386 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!387 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!388 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!389 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!390 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!391 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!392 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!393 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!394 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!395 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!396 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!397 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!398 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!399 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!400 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!401 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!402 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!403 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!404 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!405 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!406 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!407 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!408 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!409 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!410 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!411 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!412 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!413 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!414 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!415 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!416 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!417 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!418 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!419 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!420 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!421 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!422 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!423 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!424 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!425 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!426 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!427 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!428 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!429 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!430 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!431 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!432 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!433 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!434 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!435 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!436 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!437 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!438 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!439 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!440 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!441 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!442 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!443 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!444 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!445 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!446 = !DIEnumerator(name: "THOUSEP", value: 65537)
!447 = !DIEnumerator(name: "__GROUPING", value: 65538)
!448 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!449 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!450 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!451 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!452 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!453 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!454 = !DIEnumerator(name: "__YESSTR", value: 327682)
!455 = !DIEnumerator(name: "__NOSTR", value: 327683)
!456 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!457 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!458 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!459 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!460 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!461 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!462 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!463 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!464 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!465 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!466 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!467 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!468 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!469 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!470 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!471 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!472 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!473 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!474 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!475 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!476 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!477 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!478 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!479 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!480 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!481 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!482 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!483 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!484 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!485 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!486 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!487 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!488 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!489 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!490 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!491 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!492 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!493 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!494 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!495 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!496 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!497 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!498 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!499 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!500 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!501 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!502 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!503 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!504 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!505 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!506 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!507 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!508 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!509 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!510 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!511 = !{!8, !6, !512}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!513 = !{!168}
!514 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!515 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !17)
!516 = distinct !DICompileUnit(language: DW_LANG_C99, file: !517, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !518, retainedTypes: !523)
!517 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!518 = !{!519}
!519 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !520, line: 41, size: 32, elements: !521)
!520 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!521 = !{!522}
!522 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!523 = !{!8}
!524 = distinct !DICompileUnit(language: DW_LANG_C99, file: !525, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !526, retainedTypes: !540)
!525 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!526 = !{!527}
!527 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !529, file: !528, line: 192, size: 32, elements: !538)
!528 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!529 = distinct !DISubprogram(name: "x2nrealloc", scope: !528, file: !528, line: 180, type: !530, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !524, variables: !533)
!530 = !DISubroutineType(types: !531)
!531 = !{!8, !8, !532, !115}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!533 = !{!534, !535, !536, !537}
!534 = !DILocalVariable(name: "p", arg: 1, scope: !529, file: !528, line: 180, type: !8)
!535 = !DILocalVariable(name: "pn", arg: 2, scope: !529, file: !528, line: 180, type: !532)
!536 = !DILocalVariable(name: "s", arg: 3, scope: !529, file: !528, line: 180, type: !115)
!537 = !DILocalVariable(name: "n", scope: !529, file: !528, line: 182, type: !115)
!538 = !{!539}
!539 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!540 = !{!115, !6, !8}
!541 = distinct !DICompileUnit(language: DW_LANG_C99, file: !542, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!542 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!543 = distinct !DICompileUnit(language: DW_LANG_C99, file: !544, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !523)
!544 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!545 = distinct !DICompileUnit(language: DW_LANG_C99, file: !546, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !547)
!546 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!547 = !{!115}
!548 = distinct !DICompileUnit(language: DW_LANG_C99, file: !549, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!549 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!550 = distinct !DICompileUnit(language: DW_LANG_C99, file: !551, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!551 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!552 = distinct !DICompileUnit(language: DW_LANG_C99, file: !553, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!553 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!554 = distinct !DICompileUnit(language: DW_LANG_C99, file: !555, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !523)
!555 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!556 = distinct !DICompileUnit(language: DW_LANG_C99, file: !557, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !523)
!557 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!558 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!559 = !{i32 2, !"Dwarf Version", i32 4}
!560 = !{i32 2, !"Debug Info Version", i32 3}
!561 = !{i32 1, !"wchar_size", i32 4}
!562 = !{i32 7, !"PIC Level", i32 2}
!563 = !{i32 7, !"PIE Level", i32 2}
!564 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 72, type: !565, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !567)
!565 = !DISubroutineType(types: !566)
!566 = !{null, !40}
!567 = !{!568}
!568 = !DILocalVariable(name: "status", arg: 1, scope: !564, file: !3, line: 72, type: !40)
!569 = !DIExpression()
!570 = !DILocation(line: 72, column: 12, scope: !564)
!571 = !DILocation(line: 74, column: 14, scope: !572)
!572 = distinct !DILexicalBlock(scope: !564, file: !3, line: 74, column: 7)
!573 = !DILocation(line: 74, column: 7, scope: !564)
!574 = !DILocation(line: 75, column: 5, scope: !575)
!575 = distinct !DILexicalBlock(scope: !572, file: !3, line: 75, column: 5)
!576 = !{!577, !577, i64 0}
!577 = !{!"any pointer", !578, i64 0}
!578 = !{!"omnipotent char", !579, i64 0}
!579 = !{!"Simple C/C++ TBAA"}
!580 = !DILocation(line: 78, column: 7, scope: !581)
!581 = distinct !DILexicalBlock(scope: !572, file: !3, line: 77, column: 5)
!582 = !DILocation(line: 82, column: 7, scope: !581)
!583 = !DILocation(line: 587, column: 3, scope: !584, inlinedAt: !587)
!584 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !14, file: !14, line: 585, type: !585, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4)
!585 = !DISubroutineType(types: !586)
!586 = !{null}
!587 = distinct !DILocation(line: 87, column: 7, scope: !581)
!588 = !DILocation(line: 89, column: 7, scope: !581)
!589 = !DILocation(line: 98, column: 7, scope: !581)
!590 = !DILocation(line: 99, column: 7, scope: !581)
!591 = !DILocation(line: 642, column: 15, scope: !13, inlinedAt: !592)
!592 = distinct !DILocation(line: 100, column: 7, scope: !581)
!593 = !DILocation(line: 651, column: 3, scope: !13, inlinedAt: !592)
!594 = !DILocation(line: 655, column: 29, scope: !13, inlinedAt: !592)
!595 = !DILocation(line: 655, column: 15, scope: !13, inlinedAt: !592)
!596 = !DILocation(line: 656, column: 7, scope: !597, inlinedAt: !592)
!597 = distinct !DILexicalBlock(scope: !13, file: !14, line: 656, column: 7)
!598 = !DILocation(line: 656, column: 19, scope: !597, inlinedAt: !592)
!599 = !DILocation(line: 656, column: 22, scope: !597, inlinedAt: !592)
!600 = !DILocation(line: 656, column: 7, scope: !13, inlinedAt: !592)
!601 = !DILocation(line: 662, column: 7, scope: !602, inlinedAt: !592)
!602 = distinct !DILexicalBlock(scope: !597, file: !14, line: 657, column: 5)
!603 = !DILocation(line: 664, column: 5, scope: !602, inlinedAt: !592)
!604 = !DILocation(line: 665, column: 3, scope: !13, inlinedAt: !592)
!605 = !DILocation(line: 667, column: 3, scope: !13, inlinedAt: !592)
!606 = !DILocation(line: 102, column: 3, scope: !564)
!607 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 106, type: !608, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !611)
!608 = !DISubroutineType(types: !609)
!609 = !{!40, !40, !610}
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!611 = !{!612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !626, !628}
!612 = !DILocalVariable(name: "argc", arg: 1, scope: !607, file: !3, line: 106, type: !40)
!613 = !DILocalVariable(name: "argv", arg: 2, scope: !607, file: !3, line: 106, type: !610)
!614 = !DILocalVariable(name: "role", scope: !607, file: !3, line: 108, type: !6)
!615 = !DILocalVariable(name: "range", scope: !607, file: !3, line: 109, type: !6)
!616 = !DILocalVariable(name: "user", scope: !607, file: !3, line: 110, type: !6)
!617 = !DILocalVariable(name: "type", scope: !607, file: !3, line: 111, type: !6)
!618 = !DILocalVariable(name: "context", scope: !607, file: !3, line: 112, type: !6)
!619 = !DILocalVariable(name: "cur_context", scope: !607, file: !3, line: 113, type: !6)
!620 = !DILocalVariable(name: "file_context", scope: !607, file: !3, line: 114, type: !6)
!621 = !DILocalVariable(name: "new_context", scope: !607, file: !3, line: 115, type: !6)
!622 = !DILocalVariable(name: "compute_trans", scope: !607, file: !3, line: 116, type: !59)
!623 = !DILocalVariable(name: "con", scope: !607, file: !3, line: 118, type: !624)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "context_t", file: !625, line: 37, baseType: !40)
!625 = !DIFile(filename: "./lib/selinux/context.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!626 = !DILocalVariable(name: "option_index", scope: !627, file: !3, line: 130, type: !40)
!627 = distinct !DILexicalBlock(scope: !607, file: !3, line: 129, column: 5)
!628 = !DILocalVariable(name: "c", scope: !627, file: !3, line: 131, type: !40)
!629 = !DILocation(line: 106, column: 11, scope: !607)
!630 = !DILocation(line: 106, column: 24, scope: !607)
!631 = !DILocation(line: 108, column: 9, scope: !607)
!632 = !DILocation(line: 109, column: 9, scope: !607)
!633 = !DILocation(line: 110, column: 9, scope: !607)
!634 = !DILocation(line: 111, column: 9, scope: !607)
!635 = !DILocation(line: 112, column: 9, scope: !607)
!636 = !DILocation(line: 113, column: 9, scope: !607)
!637 = !DILocation(line: 114, column: 9, scope: !607)
!638 = !DILocation(line: 115, column: 9, scope: !607)
!639 = !DILocation(line: 116, column: 8, scope: !607)
!640 = !DILocation(line: 121, column: 21, scope: !607)
!641 = !DILocation(line: 121, column: 3, scope: !607)
!642 = !DILocation(line: 122, column: 3, scope: !607)
!643 = !DILocation(line: 123, column: 3, scope: !607)
!644 = !DILocation(line: 124, column: 3, scope: !607)
!645 = !DILocation(line: 126, column: 3, scope: !607)
!646 = !DILocation(line: 128, column: 3, scope: !607)
!647 = !DILocation(line: 130, column: 7, scope: !627)
!648 = !DILocation(line: 130, column: 11, scope: !627)
!649 = !{!650, !650, i64 0}
!650 = !{!"int", !578, i64 0}
!651 = !DILocation(line: 131, column: 15, scope: !627)
!652 = !DILocation(line: 131, column: 11, scope: !627)
!653 = !DILocation(line: 133, column: 11, scope: !627)
!654 = !DILocation(line: 138, column: 15, scope: !655)
!655 = distinct !DILexicalBlock(scope: !656, file: !3, line: 138, column: 15)
!656 = distinct !DILexicalBlock(scope: !627, file: !3, line: 136, column: 9)
!657 = !DILocation(line: 138, column: 15, scope: !656)
!658 = !DILocation(line: 139, column: 13, scope: !655)
!659 = !DILocation(line: 140, column: 18, scope: !656)
!660 = !DILocation(line: 141, column: 11, scope: !656)
!661 = !DILocation(line: 143, column: 15, scope: !662)
!662 = distinct !DILexicalBlock(scope: !656, file: !3, line: 143, column: 15)
!663 = !DILocation(line: 143, column: 15, scope: !656)
!664 = !DILocation(line: 144, column: 13, scope: !662)
!665 = !DILocation(line: 145, column: 18, scope: !656)
!666 = !DILocation(line: 146, column: 11, scope: !656)
!667 = !DILocation(line: 148, column: 15, scope: !668)
!668 = distinct !DILexicalBlock(scope: !656, file: !3, line: 148, column: 15)
!669 = !DILocation(line: 148, column: 15, scope: !656)
!670 = !DILocation(line: 149, column: 13, scope: !668)
!671 = !DILocation(line: 150, column: 18, scope: !656)
!672 = !DILocation(line: 151, column: 11, scope: !656)
!673 = !DILocation(line: 153, column: 15, scope: !674)
!674 = distinct !DILexicalBlock(scope: !656, file: !3, line: 153, column: 15)
!675 = !DILocation(line: 153, column: 15, scope: !656)
!676 = !DILocation(line: 154, column: 13, scope: !674)
!677 = !DILocation(line: 155, column: 19, scope: !656)
!678 = !DILocation(line: 156, column: 11, scope: !656)
!679 = !DILocation(line: 161, column: 9, scope: !656)
!680 = !DILocation(line: 162, column: 9, scope: !656)
!681 = !DILocation(line: 164, column: 11, scope: !656)
!682 = !DILocation(line: 167, column: 5, scope: !607)
!683 = distinct !{!683, !646, !682}
!684 = !DILocation(line: 169, column: 14, scope: !685)
!685 = distinct !DILexicalBlock(scope: !607, file: !3, line: 169, column: 7)
!686 = !DILocation(line: 169, column: 21, scope: !685)
!687 = !DILocation(line: 169, column: 7, scope: !607)
!688 = !DILocation(line: 72, column: 5, scope: !689, inlinedAt: !697)
!689 = distinct !DISubprogram(name: "getcon", scope: !690, file: !690, line: 71, type: !691, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !695)
!690 = !DIFile(filename: "./lib/selinux/selinux.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!691 = !DISubroutineType(types: !692)
!692 = !{!40, !693}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "security_context_t", file: !690, line: 67, baseType: !6)
!695 = !{!696}
!696 = !DILocalVariable(name: "con", arg: 1, scope: !689, file: !690, line: 71, type: !693)
!697 = distinct !DILocation(line: 171, column: 11, scope: !698)
!698 = distinct !DILexicalBlock(scope: !699, file: !3, line: 171, column: 11)
!699 = distinct !DILexicalBlock(scope: !685, file: !3, line: 170, column: 5)
!700 = !DILocation(line: 72, column: 11, scope: !689, inlinedAt: !697)
!701 = !DILocation(line: 172, column: 9, scope: !698)
!702 = !DILocation(line: 178, column: 9, scope: !703)
!703 = distinct !DILexicalBlock(scope: !607, file: !3, line: 178, column: 7)
!704 = !DILocation(line: 178, column: 17, scope: !703)
!705 = !DILocation(line: 178, column: 14, scope: !703)
!706 = !DILocation(line: 178, column: 25, scope: !703)
!707 = !DILocation(line: 178, column: 33, scope: !703)
!708 = !DILocation(line: 178, column: 42, scope: !703)
!709 = !DILocation(line: 180, column: 18, scope: !710)
!710 = distinct !DILexicalBlock(scope: !711, file: !3, line: 180, column: 11)
!711 = distinct !DILexicalBlock(scope: !703, file: !3, line: 179, column: 5)
!712 = !DILocation(line: 180, column: 11, scope: !711)
!713 = !DILocation(line: 182, column: 24, scope: !714)
!714 = distinct !DILexicalBlock(scope: !710, file: !3, line: 181, column: 9)
!715 = !DILocation(line: 182, column: 11, scope: !714)
!716 = !DILocation(line: 183, column: 11, scope: !714)
!717 = !DILocation(line: 185, column: 28, scope: !711)
!718 = !DILocation(line: 186, column: 5, scope: !711)
!719 = !DILocation(line: 188, column: 7, scope: !720)
!720 = distinct !DILexicalBlock(scope: !607, file: !3, line: 188, column: 7)
!721 = !DILocation(line: 188, column: 14, scope: !720)
!722 = !DILocation(line: 188, column: 7, scope: !607)
!723 = !DILocation(line: 190, column: 20, scope: !724)
!724 = distinct !DILexicalBlock(scope: !720, file: !3, line: 189, column: 5)
!725 = !DILocation(line: 190, column: 7, scope: !724)
!726 = !DILocation(line: 191, column: 7, scope: !724)
!727 = !DILocation(line: 195, column: 5, scope: !728)
!728 = distinct !DILexicalBlock(scope: !607, file: !3, line: 194, column: 7)
!729 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !58, file: !58, line: 41, type: !15, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !53, variables: !730)
!730 = !{!731}
!731 = !DILocalVariable(name: "file", arg: 1, scope: !729, file: !58, line: 41, type: !17)
!732 = !DILocation(line: 41, column: 41, scope: !729)
!733 = !DILocation(line: 43, column: 13, scope: !729)
!734 = !DILocation(line: 44, column: 1, scope: !729)
!735 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !58, file: !58, line: 78, type: !736, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !53, variables: !738)
!736 = !DISubroutineType(types: !737)
!737 = !{null, !59}
!738 = !{!739}
!739 = !DILocalVariable(name: "ignore", arg: 1, scope: !735, file: !58, line: 78, type: !59)
!740 = !DILocation(line: 78, column: 37, scope: !735)
!741 = !DILocation(line: 80, column: 16, scope: !735)
!742 = !{!743, !743, i64 0}
!743 = !{!"_Bool", !578, i64 0}
!744 = !DILocation(line: 81, column: 1, scope: !735)
!745 = distinct !DISubprogram(name: "close_stdout", scope: !58, file: !58, line: 107, type: !585, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !53, variables: !746)
!746 = !{!747}
!747 = !DILocalVariable(name: "write_error", scope: !748, file: !58, line: 112, type: !17)
!748 = distinct !DILexicalBlock(scope: !749, file: !58, line: 111, column: 5)
!749 = distinct !DILexicalBlock(scope: !745, file: !58, line: 109, column: 7)
!750 = !DILocation(line: 109, column: 21, scope: !749)
!751 = !DILocation(line: 109, column: 7, scope: !749)
!752 = !DILocation(line: 109, column: 29, scope: !749)
!753 = !DILocation(line: 110, column: 7, scope: !749)
!754 = !DILocation(line: 110, column: 12, scope: !749)
!755 = !{i8 0, i8 2}
!756 = !DILocation(line: 114, column: 19, scope: !757)
!757 = distinct !DILexicalBlock(scope: !748, file: !58, line: 113, column: 11)
!758 = !DILocation(line: 110, column: 25, scope: !749)
!759 = !DILocation(line: 110, column: 28, scope: !749)
!760 = !DILocation(line: 110, column: 34, scope: !749)
!761 = !DILocation(line: 109, column: 7, scope: !745)
!762 = !DILocation(line: 112, column: 33, scope: !748)
!763 = !DILocation(line: 112, column: 19, scope: !748)
!764 = !DILocation(line: 113, column: 11, scope: !757)
!765 = !DILocation(line: 113, column: 11, scope: !748)
!766 = !DILocation(line: 114, column: 36, scope: !757)
!767 = !DILocation(line: 114, column: 9, scope: !757)
!768 = !DILocation(line: 117, column: 9, scope: !757)
!769 = !DILocation(line: 119, column: 14, scope: !748)
!770 = !DILocation(line: 119, column: 7, scope: !748)
!771 = !DILocation(line: 122, column: 22, scope: !772)
!772 = distinct !DILexicalBlock(scope: !745, file: !58, line: 122, column: 8)
!773 = !DILocation(line: 122, column: 8, scope: !772)
!774 = !DILocation(line: 122, column: 30, scope: !772)
!775 = !DILocation(line: 122, column: 8, scope: !745)
!776 = !DILocation(line: 123, column: 13, scope: !772)
!777 = !DILocation(line: 123, column: 6, scope: !772)
!778 = !DILocation(line: 124, column: 1, scope: !745)
!779 = distinct !DISubprogram(name: "set_program_name", scope: !73, file: !73, line: 39, type: !15, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !69, variables: !780)
!780 = !{!781, !782, !783}
!781 = !DILocalVariable(name: "argv0", arg: 1, scope: !779, file: !73, line: 39, type: !17)
!782 = !DILocalVariable(name: "slash", scope: !779, file: !73, line: 46, type: !17)
!783 = !DILocalVariable(name: "base", scope: !779, file: !73, line: 47, type: !17)
!784 = !DILocation(line: 39, column: 31, scope: !779)
!785 = !DILocation(line: 51, column: 13, scope: !786)
!786 = distinct !DILexicalBlock(scope: !779, file: !73, line: 51, column: 7)
!787 = !DILocation(line: 51, column: 7, scope: !779)
!788 = !DILocation(line: 55, column: 14, scope: !789)
!789 = distinct !DILexicalBlock(scope: !786, file: !73, line: 52, column: 5)
!790 = !DILocation(line: 54, column: 7, scope: !789)
!791 = !DILocation(line: 56, column: 7, scope: !789)
!792 = !DILocation(line: 59, column: 11, scope: !779)
!793 = !DILocation(line: 46, column: 15, scope: !779)
!794 = !DILocation(line: 60, column: 17, scope: !779)
!795 = !DILocation(line: 60, column: 33, scope: !779)
!796 = !DILocation(line: 60, column: 11, scope: !779)
!797 = !DILocation(line: 47, column: 15, scope: !779)
!798 = !DILocation(line: 61, column: 12, scope: !799)
!799 = distinct !DILexicalBlock(scope: !779, file: !73, line: 61, column: 7)
!800 = !DILocation(line: 61, column: 20, scope: !799)
!801 = !DILocation(line: 61, column: 25, scope: !799)
!802 = !DILocation(line: 61, column: 42, scope: !799)
!803 = !DILocation(line: 61, column: 28, scope: !799)
!804 = !DILocation(line: 61, column: 61, scope: !799)
!805 = !DILocation(line: 61, column: 7, scope: !779)
!806 = !DILocation(line: 64, column: 11, scope: !807)
!807 = distinct !DILexicalBlock(scope: !808, file: !73, line: 64, column: 11)
!808 = distinct !DILexicalBlock(scope: !799, file: !73, line: 62, column: 5)
!809 = !DILocation(line: 64, column: 36, scope: !807)
!810 = !DILocation(line: 64, column: 11, scope: !808)
!811 = !DILocation(line: 66, column: 24, scope: !812)
!812 = distinct !DILexicalBlock(scope: !807, file: !73, line: 65, column: 9)
!813 = !DILocation(line: 70, column: 41, scope: !812)
!814 = !DILocation(line: 72, column: 9, scope: !812)
!815 = !DILocation(line: 84, column: 16, scope: !779)
!816 = !DILocation(line: 90, column: 27, scope: !779)
!817 = !DILocation(line: 92, column: 1, scope: !779)
!818 = distinct !DISubprogram(name: "clone_quoting_options", scope: !121, file: !121, line: 114, type: !819, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !822)
!819 = !DISubroutineType(types: !820)
!820 = !{!821, !821}
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!822 = !{!823, !824, !825}
!823 = !DILocalVariable(name: "o", arg: 1, scope: !818, file: !121, line: 114, type: !821)
!824 = !DILocalVariable(name: "e", scope: !818, file: !121, line: 116, type: !40)
!825 = !DILocalVariable(name: "p", scope: !818, file: !121, line: 117, type: !821)
!826 = !DILocation(line: 114, column: 48, scope: !818)
!827 = !DILocation(line: 116, column: 11, scope: !818)
!828 = !DILocation(line: 116, column: 7, scope: !818)
!829 = !DILocation(line: 117, column: 40, scope: !818)
!830 = !DILocation(line: 117, column: 31, scope: !818)
!831 = !DILocation(line: 117, column: 27, scope: !818)
!832 = !DILocation(line: 119, column: 9, scope: !818)
!833 = !DILocation(line: 120, column: 3, scope: !818)
!834 = distinct !DISubprogram(name: "get_quoting_style", scope: !121, file: !121, line: 125, type: !835, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !839)
!835 = !DISubroutineType(types: !836)
!836 = !{!79, !837}
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!839 = !{!840}
!840 = !DILocalVariable(name: "o", arg: 1, scope: !834, file: !121, line: 125, type: !837)
!841 = !DILocation(line: 125, column: 50, scope: !834)
!842 = !DILocation(line: 127, column: 11, scope: !834)
!843 = !DILocation(line: 127, column: 46, scope: !834)
!844 = !{!845, !578, i64 0}
!845 = !{!"quoting_options", !578, i64 0, !650, i64 4, !578, i64 8, !577, i64 40, !577, i64 48}
!846 = !DILocation(line: 127, column: 3, scope: !834)
!847 = distinct !DISubprogram(name: "set_quoting_style", scope: !121, file: !121, line: 133, type: !848, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !850)
!848 = !DISubroutineType(types: !849)
!849 = !{null, !821, !79}
!850 = !{!851, !852}
!851 = !DILocalVariable(name: "o", arg: 1, scope: !847, file: !121, line: 133, type: !821)
!852 = !DILocalVariable(name: "s", arg: 2, scope: !847, file: !121, line: 133, type: !79)
!853 = !DILocation(line: 133, column: 44, scope: !847)
!854 = !DILocation(line: 133, column: 66, scope: !847)
!855 = !DILocation(line: 135, column: 4, scope: !847)
!856 = !DILocation(line: 135, column: 39, scope: !847)
!857 = !DILocation(line: 135, column: 45, scope: !847)
!858 = !DILocation(line: 136, column: 1, scope: !847)
!859 = distinct !DISubprogram(name: "set_char_quoting", scope: !121, file: !121, line: 144, type: !860, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !862)
!860 = !DISubroutineType(types: !861)
!861 = !{!40, !821, !7, !40}
!862 = !{!863, !864, !865, !866, !867, !869, !870}
!863 = !DILocalVariable(name: "o", arg: 1, scope: !859, file: !121, line: 144, type: !821)
!864 = !DILocalVariable(name: "c", arg: 2, scope: !859, file: !121, line: 144, type: !7)
!865 = !DILocalVariable(name: "i", arg: 3, scope: !859, file: !121, line: 144, type: !40)
!866 = !DILocalVariable(name: "uc", scope: !859, file: !121, line: 146, type: !9)
!867 = !DILocalVariable(name: "p", scope: !859, file: !121, line: 147, type: !868)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!869 = !DILocalVariable(name: "shift", scope: !859, file: !121, line: 149, type: !40)
!870 = !DILocalVariable(name: "r", scope: !859, file: !121, line: 150, type: !40)
!871 = !DILocation(line: 144, column: 43, scope: !859)
!872 = !DILocation(line: 144, column: 51, scope: !859)
!873 = !DILocation(line: 144, column: 58, scope: !859)
!874 = !DILocation(line: 146, column: 17, scope: !859)
!875 = !DILocation(line: 148, column: 6, scope: !859)
!876 = !DILocation(line: 148, column: 62, scope: !859)
!877 = !DILocation(line: 148, column: 57, scope: !859)
!878 = !DILocation(line: 147, column: 17, scope: !859)
!879 = !DILocation(line: 149, column: 18, scope: !859)
!880 = !DILocation(line: 149, column: 15, scope: !859)
!881 = !DILocation(line: 149, column: 7, scope: !859)
!882 = !DILocation(line: 150, column: 12, scope: !859)
!883 = !DILocation(line: 150, column: 15, scope: !859)
!884 = !DILocation(line: 150, column: 25, scope: !859)
!885 = !DILocation(line: 150, column: 7, scope: !859)
!886 = !DILocation(line: 151, column: 13, scope: !859)
!887 = !DILocation(line: 151, column: 18, scope: !859)
!888 = !DILocation(line: 151, column: 23, scope: !859)
!889 = !DILocation(line: 151, column: 6, scope: !859)
!890 = !DILocation(line: 152, column: 3, scope: !859)
!891 = distinct !DISubprogram(name: "set_quoting_flags", scope: !121, file: !121, line: 160, type: !892, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !894)
!892 = !DISubroutineType(types: !893)
!893 = !{!40, !821, !40}
!894 = !{!895, !896, !897}
!895 = !DILocalVariable(name: "o", arg: 1, scope: !891, file: !121, line: 160, type: !821)
!896 = !DILocalVariable(name: "i", arg: 2, scope: !891, file: !121, line: 160, type: !40)
!897 = !DILocalVariable(name: "r", scope: !891, file: !121, line: 162, type: !40)
!898 = !DILocation(line: 160, column: 44, scope: !891)
!899 = !DILocation(line: 160, column: 51, scope: !891)
!900 = !DILocation(line: 163, column: 8, scope: !901)
!901 = distinct !DILexicalBlock(scope: !891, file: !121, line: 163, column: 7)
!902 = !DILocation(line: 163, column: 7, scope: !891)
!903 = !DILocation(line: 165, column: 10, scope: !891)
!904 = !{!845, !650, i64 4}
!905 = !DILocation(line: 162, column: 7, scope: !891)
!906 = !DILocation(line: 166, column: 12, scope: !891)
!907 = !DILocation(line: 167, column: 3, scope: !891)
!908 = distinct !DISubprogram(name: "set_custom_quoting", scope: !121, file: !121, line: 171, type: !909, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !911)
!909 = !DISubroutineType(types: !910)
!910 = !{null, !821, !17, !17}
!911 = !{!912, !913, !914}
!912 = !DILocalVariable(name: "o", arg: 1, scope: !908, file: !121, line: 171, type: !821)
!913 = !DILocalVariable(name: "left_quote", arg: 2, scope: !908, file: !121, line: 172, type: !17)
!914 = !DILocalVariable(name: "right_quote", arg: 3, scope: !908, file: !121, line: 172, type: !17)
!915 = !DILocation(line: 171, column: 45, scope: !908)
!916 = !DILocation(line: 172, column: 33, scope: !908)
!917 = !DILocation(line: 172, column: 57, scope: !908)
!918 = !DILocation(line: 174, column: 8, scope: !919)
!919 = distinct !DILexicalBlock(scope: !908, file: !121, line: 174, column: 7)
!920 = !DILocation(line: 174, column: 7, scope: !908)
!921 = !DILocation(line: 176, column: 6, scope: !908)
!922 = !DILocation(line: 176, column: 12, scope: !908)
!923 = !DILocation(line: 177, column: 8, scope: !924)
!924 = distinct !DILexicalBlock(scope: !908, file: !121, line: 177, column: 7)
!925 = !DILocation(line: 177, column: 23, scope: !924)
!926 = !DILocation(line: 177, column: 19, scope: !924)
!927 = !DILocation(line: 178, column: 5, scope: !924)
!928 = !DILocation(line: 179, column: 6, scope: !908)
!929 = !DILocation(line: 179, column: 17, scope: !908)
!930 = !{!845, !577, i64 40}
!931 = !DILocation(line: 180, column: 6, scope: !908)
!932 = !DILocation(line: 180, column: 18, scope: !908)
!933 = !{!845, !577, i64 48}
!934 = !DILocation(line: 181, column: 1, scope: !908)
!935 = distinct !DISubprogram(name: "quotearg_buffer", scope: !121, file: !121, line: 776, type: !936, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !938)
!936 = !DISubroutineType(types: !937)
!937 = !{!115, !6, !115, !17, !115, !837}
!938 = !{!939, !940, !941, !942, !943, !944, !945, !946}
!939 = !DILocalVariable(name: "buffer", arg: 1, scope: !935, file: !121, line: 776, type: !6)
!940 = !DILocalVariable(name: "buffersize", arg: 2, scope: !935, file: !121, line: 776, type: !115)
!941 = !DILocalVariable(name: "arg", arg: 3, scope: !935, file: !121, line: 777, type: !17)
!942 = !DILocalVariable(name: "argsize", arg: 4, scope: !935, file: !121, line: 777, type: !115)
!943 = !DILocalVariable(name: "o", arg: 5, scope: !935, file: !121, line: 778, type: !837)
!944 = !DILocalVariable(name: "p", scope: !935, file: !121, line: 780, type: !837)
!945 = !DILocalVariable(name: "e", scope: !935, file: !121, line: 781, type: !40)
!946 = !DILocalVariable(name: "r", scope: !935, file: !121, line: 782, type: !115)
!947 = !DILocation(line: 776, column: 24, scope: !935)
!948 = !DILocation(line: 776, column: 39, scope: !935)
!949 = !DILocation(line: 777, column: 30, scope: !935)
!950 = !DILocation(line: 777, column: 42, scope: !935)
!951 = !DILocation(line: 778, column: 48, scope: !935)
!952 = !DILocation(line: 780, column: 37, scope: !935)
!953 = !DILocation(line: 780, column: 33, scope: !935)
!954 = !DILocation(line: 781, column: 11, scope: !935)
!955 = !DILocation(line: 781, column: 7, scope: !935)
!956 = !DILocation(line: 783, column: 43, scope: !935)
!957 = !DILocation(line: 783, column: 53, scope: !935)
!958 = !DILocation(line: 783, column: 60, scope: !935)
!959 = !DILocation(line: 784, column: 43, scope: !935)
!960 = !DILocation(line: 784, column: 58, scope: !935)
!961 = !DILocation(line: 782, column: 14, scope: !935)
!962 = !DILocation(line: 782, column: 10, scope: !935)
!963 = !DILocation(line: 785, column: 9, scope: !935)
!964 = !DILocation(line: 786, column: 3, scope: !935)
!965 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !121, file: !121, line: 248, type: !966, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !970)
!966 = !DISubroutineType(types: !967)
!967 = !{!115, !6, !115, !17, !115, !79, !40, !968, !17, !17}
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!970 = !{!971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !995, !996, !997, !998, !999, !1002, !1003, !1021, !1024, !1025, !1032}
!971 = !DILocalVariable(name: "buffer", arg: 1, scope: !965, file: !121, line: 248, type: !6)
!972 = !DILocalVariable(name: "buffersize", arg: 2, scope: !965, file: !121, line: 248, type: !115)
!973 = !DILocalVariable(name: "arg", arg: 3, scope: !965, file: !121, line: 249, type: !17)
!974 = !DILocalVariable(name: "argsize", arg: 4, scope: !965, file: !121, line: 249, type: !115)
!975 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !965, file: !121, line: 250, type: !79)
!976 = !DILocalVariable(name: "flags", arg: 6, scope: !965, file: !121, line: 250, type: !40)
!977 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !965, file: !121, line: 251, type: !968)
!978 = !DILocalVariable(name: "left_quote", arg: 8, scope: !965, file: !121, line: 252, type: !17)
!979 = !DILocalVariable(name: "right_quote", arg: 9, scope: !965, file: !121, line: 253, type: !17)
!980 = !DILocalVariable(name: "i", scope: !965, file: !121, line: 255, type: !115)
!981 = !DILocalVariable(name: "len", scope: !965, file: !121, line: 256, type: !115)
!982 = !DILocalVariable(name: "orig_buffersize", scope: !965, file: !121, line: 257, type: !115)
!983 = !DILocalVariable(name: "quote_string", scope: !965, file: !121, line: 258, type: !17)
!984 = !DILocalVariable(name: "quote_string_len", scope: !965, file: !121, line: 259, type: !115)
!985 = !DILocalVariable(name: "backslash_escapes", scope: !965, file: !121, line: 260, type: !59)
!986 = !DILocalVariable(name: "unibyte_locale", scope: !965, file: !121, line: 261, type: !59)
!987 = !DILocalVariable(name: "elide_outer_quotes", scope: !965, file: !121, line: 262, type: !59)
!988 = !DILocalVariable(name: "pending_shell_escape_end", scope: !965, file: !121, line: 263, type: !59)
!989 = !DILocalVariable(name: "encountered_single_quote", scope: !965, file: !121, line: 264, type: !59)
!990 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !965, file: !121, line: 265, type: !59)
!991 = !DILocalVariable(name: "c", scope: !992, file: !121, line: 394, type: !9)
!992 = distinct !DILexicalBlock(scope: !993, file: !121, line: 393, column: 5)
!993 = distinct !DILexicalBlock(scope: !994, file: !121, line: 392, column: 3)
!994 = distinct !DILexicalBlock(scope: !965, file: !121, line: 392, column: 3)
!995 = !DILocalVariable(name: "esc", scope: !992, file: !121, line: 395, type: !9)
!996 = !DILocalVariable(name: "is_right_quote", scope: !992, file: !121, line: 396, type: !59)
!997 = !DILocalVariable(name: "escaping", scope: !992, file: !121, line: 397, type: !59)
!998 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !992, file: !121, line: 398, type: !59)
!999 = !DILocalVariable(name: "m", scope: !1000, file: !121, line: 602, type: !115)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !121, line: 600, column: 11)
!1001 = distinct !DILexicalBlock(scope: !992, file: !121, line: 418, column: 9)
!1002 = !DILocalVariable(name: "printable", scope: !1000, file: !121, line: 604, type: !59)
!1003 = !DILocalVariable(name: "mbstate", scope: !1004, file: !121, line: 613, type: !1006)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !121, line: 612, column: 15)
!1005 = distinct !DILexicalBlock(scope: !1000, file: !121, line: 606, column: 17)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1007, line: 6, baseType: !1008)
!1007 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1009, line: 21, baseType: !1010)
!1009 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1009, line: 13, size: 64, elements: !1011)
!1011 = !{!1012, !1013}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1010, file: !1009, line: 15, baseType: !40, size: 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1010, file: !1009, line: 20, baseType: !1014, size: 32, offset: 32)
!1014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1010, file: !1009, line: 16, size: 32, elements: !1015)
!1015 = !{!1016, !1017}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1014, file: !1009, line: 18, baseType: !134, size: 32)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1014, file: !1009, line: 19, baseType: !1018, size: 32)
!1018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !1019)
!1019 = !{!1020}
!1020 = !DISubrange(count: 4)
!1021 = !DILocalVariable(name: "w", scope: !1022, file: !121, line: 623, type: !1023)
!1022 = distinct !DILexicalBlock(scope: !1004, file: !121, line: 622, column: 19)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !116, line: 90, baseType: !40)
!1024 = !DILocalVariable(name: "bytes", scope: !1022, file: !121, line: 624, type: !115)
!1025 = !DILocalVariable(name: "j", scope: !1026, file: !121, line: 649, type: !115)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !121, line: 648, column: 27)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !121, line: 646, column: 29)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !121, line: 641, column: 23)
!1029 = distinct !DILexicalBlock(scope: !1030, file: !121, line: 633, column: 30)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !121, line: 628, column: 30)
!1031 = distinct !DILexicalBlock(scope: !1022, file: !121, line: 626, column: 25)
!1032 = !DILocalVariable(name: "ilim", scope: !1033, file: !121, line: 676, type: !115)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !121, line: 673, column: 15)
!1034 = distinct !DILexicalBlock(scope: !1000, file: !121, line: 672, column: 17)
!1035 = !DILocation(line: 248, column: 33, scope: !965)
!1036 = !DILocation(line: 248, column: 48, scope: !965)
!1037 = !DILocation(line: 249, column: 39, scope: !965)
!1038 = !DILocation(line: 249, column: 51, scope: !965)
!1039 = !DILocation(line: 250, column: 46, scope: !965)
!1040 = !DILocation(line: 250, column: 65, scope: !965)
!1041 = !DILocation(line: 251, column: 47, scope: !965)
!1042 = !DILocation(line: 252, column: 39, scope: !965)
!1043 = !DILocation(line: 253, column: 39, scope: !965)
!1044 = !DILocation(line: 256, column: 10, scope: !965)
!1045 = !DILocation(line: 257, column: 10, scope: !965)
!1046 = !DILocation(line: 258, column: 15, scope: !965)
!1047 = !DILocation(line: 259, column: 10, scope: !965)
!1048 = !DILocation(line: 260, column: 8, scope: !965)
!1049 = !DILocation(line: 261, column: 25, scope: !965)
!1050 = !DILocation(line: 261, column: 36, scope: !965)
!1051 = !DILocation(line: 262, column: 8, scope: !965)
!1052 = !DILocation(line: 263, column: 8, scope: !965)
!1053 = !DILocation(line: 264, column: 8, scope: !965)
!1054 = !DILocation(line: 265, column: 8, scope: !965)
!1055 = !DILocation(line: 265, column: 3, scope: !965)
!1056 = !DILocation(line: 308, column: 3, scope: !965)
!1057 = !DILocation(line: 315, column: 11, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !965, file: !121, line: 309, column: 5)
!1059 = !DILocation(line: 315, column: 12, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1058, file: !121, line: 315, column: 11)
!1061 = !DILocation(line: 316, column: 9, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !121, line: 316, column: 9)
!1063 = distinct !DILexicalBlock(scope: !1060, file: !121, line: 316, column: 9)
!1064 = !DILocation(line: 316, column: 9, scope: !1063)
!1065 = !{!578, !578, i64 0}
!1066 = !DILocation(line: 354, column: 26, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1068, file: !121, line: 332, column: 11)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !121, line: 331, column: 13)
!1069 = distinct !DILexicalBlock(scope: !1058, file: !121, line: 330, column: 7)
!1070 = !DILocation(line: 355, column: 27, scope: !1067)
!1071 = !DILocation(line: 356, column: 11, scope: !1067)
!1072 = !DILocation(line: 357, column: 14, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1069, file: !121, line: 357, column: 13)
!1074 = !DILocation(line: 357, column: 13, scope: !1069)
!1075 = !DILocation(line: 358, column: 43, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !121, line: 358, column: 11)
!1077 = distinct !DILexicalBlock(scope: !1073, file: !121, line: 358, column: 11)
!1078 = !DILocation(line: 358, column: 11, scope: !1077)
!1079 = !DILocation(line: 359, column: 13, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !121, line: 359, column: 13)
!1081 = distinct !DILexicalBlock(scope: !1076, file: !121, line: 359, column: 13)
!1082 = !DILocation(line: 359, column: 13, scope: !1081)
!1083 = !DILocation(line: 358, column: 70, scope: !1076)
!1084 = distinct !{!1084, !1078, !1085}
!1085 = !DILocation(line: 359, column: 13, scope: !1077)
!1086 = !DILocation(line: 362, column: 28, scope: !1069)
!1087 = !DILocation(line: 364, column: 7, scope: !1058)
!1088 = !DILocation(line: 367, column: 7, scope: !1058)
!1089 = !DILocation(line: 370, column: 7, scope: !1058)
!1090 = !DILocation(line: 373, column: 12, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1058, file: !121, line: 373, column: 11)
!1092 = !DILocation(line: 373, column: 11, scope: !1058)
!1093 = !DILocation(line: 378, column: 12, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1058, file: !121, line: 378, column: 11)
!1095 = !DILocation(line: 378, column: 11, scope: !1058)
!1096 = !DILocation(line: 379, column: 9, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !121, line: 379, column: 9)
!1098 = distinct !DILexicalBlock(scope: !1094, file: !121, line: 379, column: 9)
!1099 = !DILocation(line: 379, column: 9, scope: !1098)
!1100 = !DILocation(line: 386, column: 7, scope: !1058)
!1101 = !DILocation(line: 389, column: 7, scope: !1058)
!1102 = !DILocation(line: 255, column: 10, scope: !965)
!1103 = !DILocation(line: 392, column: 8, scope: !994)
!1104 = !DILocation(line: 392, column: 27, scope: !993)
!1105 = !DILocation(line: 392, column: 19, scope: !993)
!1106 = !DILocation(line: 392, column: 60, scope: !993)
!1107 = !DILocation(line: 392, column: 3, scope: !994)
!1108 = !DILocation(line: 392, column: 41, scope: !993)
!1109 = !DILocation(line: 392, column: 48, scope: !993)
!1110 = !DILocation(line: 396, column: 12, scope: !992)
!1111 = !DILocation(line: 397, column: 12, scope: !992)
!1112 = !DILocation(line: 398, column: 12, scope: !992)
!1113 = !DILocation(line: 401, column: 11, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !992, file: !121, line: 400, column: 11)
!1115 = !DILocation(line: 403, column: 17, scope: !1114)
!1116 = !DILocation(line: 404, column: 39, scope: !1114)
!1117 = !DILocation(line: 408, column: 32, scope: !1114)
!1118 = !DILocation(line: 404, column: 19, scope: !1114)
!1119 = !DILocation(line: 404, column: 15, scope: !1114)
!1120 = !DILocation(line: 409, column: 11, scope: !1114)
!1121 = !DILocation(line: 409, column: 26, scope: !1114)
!1122 = !DILocation(line: 409, column: 14, scope: !1114)
!1123 = !DILocation(line: 409, column: 63, scope: !1114)
!1124 = !DILocation(line: 400, column: 11, scope: !992)
!1125 = !DILocation(line: 416, column: 11, scope: !992)
!1126 = !DILocation(line: 394, column: 21, scope: !992)
!1127 = !DILocation(line: 417, column: 7, scope: !992)
!1128 = !DILocation(line: 420, column: 15, scope: !1001)
!1129 = !DILocation(line: 422, column: 15, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !121, line: 422, column: 15)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !121, line: 421, column: 13)
!1132 = distinct !DILexicalBlock(scope: !1001, file: !121, line: 420, column: 15)
!1133 = !DILocation(line: 422, column: 15, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1130, file: !121, line: 422, column: 15)
!1135 = !DILocation(line: 422, column: 15, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !121, line: 422, column: 15)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !121, line: 422, column: 15)
!1138 = distinct !DILexicalBlock(scope: !1134, file: !121, line: 422, column: 15)
!1139 = !DILocation(line: 422, column: 15, scope: !1137)
!1140 = !DILocation(line: 422, column: 15, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !121, line: 422, column: 15)
!1142 = distinct !DILexicalBlock(scope: !1138, file: !121, line: 422, column: 15)
!1143 = !DILocation(line: 422, column: 15, scope: !1142)
!1144 = !DILocation(line: 422, column: 15, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !121, line: 422, column: 15)
!1146 = distinct !DILexicalBlock(scope: !1138, file: !121, line: 422, column: 15)
!1147 = !DILocation(line: 422, column: 15, scope: !1146)
!1148 = !DILocation(line: 422, column: 15, scope: !1138)
!1149 = !DILocation(line: 422, column: 15, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !121, line: 422, column: 15)
!1151 = distinct !DILexicalBlock(scope: !1130, file: !121, line: 422, column: 15)
!1152 = !DILocation(line: 422, column: 15, scope: !1151)
!1153 = !DILocation(line: 430, column: 19, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1131, file: !121, line: 429, column: 19)
!1155 = !DILocation(line: 430, column: 24, scope: !1154)
!1156 = !DILocation(line: 430, column: 28, scope: !1154)
!1157 = !DILocation(line: 430, column: 38, scope: !1154)
!1158 = !DILocation(line: 430, column: 48, scope: !1154)
!1159 = !DILocation(line: 430, column: 59, scope: !1154)
!1160 = !DILocation(line: 432, column: 19, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !121, line: 432, column: 19)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !121, line: 432, column: 19)
!1163 = distinct !DILexicalBlock(scope: !1154, file: !121, line: 431, column: 17)
!1164 = !DILocation(line: 432, column: 19, scope: !1162)
!1165 = !DILocation(line: 433, column: 19, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !121, line: 433, column: 19)
!1167 = distinct !DILexicalBlock(scope: !1163, file: !121, line: 433, column: 19)
!1168 = !DILocation(line: 433, column: 19, scope: !1167)
!1169 = !DILocation(line: 434, column: 17, scope: !1163)
!1170 = !DILocation(line: 441, column: 20, scope: !1132)
!1171 = !DILocation(line: 446, column: 11, scope: !1001)
!1172 = !DILocation(line: 449, column: 19, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1001, file: !121, line: 447, column: 13)
!1174 = !DILocation(line: 455, column: 19, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1173, file: !121, line: 454, column: 19)
!1176 = !DILocation(line: 455, column: 24, scope: !1175)
!1177 = !DILocation(line: 455, column: 28, scope: !1175)
!1178 = !DILocation(line: 455, column: 38, scope: !1175)
!1179 = !DILocation(line: 455, column: 47, scope: !1175)
!1180 = !DILocation(line: 455, column: 41, scope: !1175)
!1181 = !DILocation(line: 455, column: 52, scope: !1175)
!1182 = !DILocation(line: 454, column: 19, scope: !1173)
!1183 = !DILocation(line: 456, column: 25, scope: !1175)
!1184 = !DILocation(line: 456, column: 17, scope: !1175)
!1185 = !DILocation(line: 463, column: 25, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1175, file: !121, line: 457, column: 19)
!1187 = !DILocation(line: 467, column: 21, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !121, line: 467, column: 21)
!1189 = distinct !DILexicalBlock(scope: !1186, file: !121, line: 467, column: 21)
!1190 = !DILocation(line: 467, column: 21, scope: !1189)
!1191 = !DILocation(line: 468, column: 21, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !121, line: 468, column: 21)
!1193 = distinct !DILexicalBlock(scope: !1186, file: !121, line: 468, column: 21)
!1194 = !DILocation(line: 468, column: 21, scope: !1193)
!1195 = !DILocation(line: 469, column: 21, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !121, line: 469, column: 21)
!1197 = distinct !DILexicalBlock(scope: !1186, file: !121, line: 469, column: 21)
!1198 = !DILocation(line: 469, column: 21, scope: !1197)
!1199 = !DILocation(line: 470, column: 21, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !121, line: 470, column: 21)
!1201 = distinct !DILexicalBlock(scope: !1186, file: !121, line: 470, column: 21)
!1202 = !DILocation(line: 470, column: 21, scope: !1201)
!1203 = !DILocation(line: 471, column: 21, scope: !1186)
!1204 = !DILocation(line: 395, column: 21, scope: !992)
!1205 = !DILocation(line: 484, column: 31, scope: !1001)
!1206 = !DILocation(line: 485, column: 31, scope: !1001)
!1207 = !DILocation(line: 487, column: 31, scope: !1001)
!1208 = !DILocation(line: 488, column: 31, scope: !1001)
!1209 = !DILocation(line: 489, column: 31, scope: !1001)
!1210 = !DILocation(line: 492, column: 15, scope: !1001)
!1211 = !DILocation(line: 494, column: 19, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !121, line: 493, column: 13)
!1213 = distinct !DILexicalBlock(scope: !1001, file: !121, line: 492, column: 15)
!1214 = !DILocation(line: 501, column: 33, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1001, file: !121, line: 501, column: 15)
!1216 = !DILocation(line: 506, column: 15, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1001, file: !121, line: 505, column: 15)
!1218 = !DILocation(line: 510, column: 15, scope: !1001)
!1219 = !DILocation(line: 518, column: 26, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1001, file: !121, line: 518, column: 15)
!1221 = !DILocation(line: 518, column: 15, scope: !1001)
!1222 = !DILocation(line: 518, column: 40, scope: !1220)
!1223 = !DILocation(line: 518, column: 47, scope: !1220)
!1224 = !DILocation(line: 522, column: 17, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1001, file: !121, line: 522, column: 15)
!1226 = !DILocation(line: 518, column: 18, scope: !1220)
!1227 = !DILocation(line: 518, column: 65, scope: !1220)
!1228 = !DILocation(line: 522, column: 15, scope: !1001)
!1229 = !DILocation(line: 526, column: 11, scope: !1001)
!1230 = !DILocation(line: 541, column: 15, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1001, file: !121, line: 540, column: 15)
!1232 = !DILocation(line: 548, column: 15, scope: !1001)
!1233 = !DILocation(line: 550, column: 19, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !121, line: 549, column: 13)
!1235 = distinct !DILexicalBlock(scope: !1001, file: !121, line: 548, column: 15)
!1236 = !DILocation(line: 553, column: 19, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1234, file: !121, line: 553, column: 19)
!1238 = !DILocation(line: 553, column: 35, scope: !1237)
!1239 = !DILocation(line: 553, column: 30, scope: !1237)
!1240 = !DILocation(line: 562, column: 15, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !121, line: 562, column: 15)
!1242 = distinct !DILexicalBlock(scope: !1234, file: !121, line: 562, column: 15)
!1243 = !DILocation(line: 562, column: 15, scope: !1242)
!1244 = !DILocation(line: 563, column: 15, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !121, line: 563, column: 15)
!1246 = distinct !DILexicalBlock(scope: !1234, file: !121, line: 563, column: 15)
!1247 = !DILocation(line: 563, column: 15, scope: !1246)
!1248 = !DILocation(line: 564, column: 15, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !121, line: 564, column: 15)
!1250 = distinct !DILexicalBlock(scope: !1234, file: !121, line: 564, column: 15)
!1251 = !DILocation(line: 564, column: 15, scope: !1250)
!1252 = !DILocation(line: 566, column: 13, scope: !1234)
!1253 = !DILocation(line: 606, column: 17, scope: !1000)
!1254 = !DILocation(line: 602, column: 20, scope: !1000)
!1255 = !DILocation(line: 609, column: 29, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1005, file: !121, line: 607, column: 15)
!1257 = !{!1258, !1258, i64 0}
!1258 = !{!"short", !578, i64 0}
!1259 = !DILocation(line: 609, column: 27, scope: !1256)
!1260 = !DILocation(line: 604, column: 18, scope: !1000)
!1261 = !DILocation(line: 610, column: 15, scope: !1256)
!1262 = !DILocation(line: 613, column: 17, scope: !1004)
!1263 = !DILocation(line: 614, column: 17, scope: !1004)
!1264 = !DILocation(line: 618, column: 29, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1004, file: !121, line: 618, column: 21)
!1266 = !DILocation(line: 618, column: 21, scope: !1004)
!1267 = !DILocation(line: 619, column: 29, scope: !1265)
!1268 = !DILocation(line: 619, column: 19, scope: !1265)
!1269 = !DILocation(line: 621, column: 17, scope: !1004)
!1270 = distinct !{!1270, !1269, !1271}
!1271 = !DILocation(line: 667, column: 44, scope: !1004)
!1272 = !DILocation(line: 623, column: 21, scope: !1022)
!1273 = !DILocation(line: 624, column: 56, scope: !1022)
!1274 = !DILocation(line: 624, column: 50, scope: !1022)
!1275 = !DILocation(line: 625, column: 53, scope: !1022)
!1276 = !DILocation(line: 613, column: 27, scope: !1004)
!1277 = !DILocation(line: 623, column: 29, scope: !1022)
!1278 = !DILocation(line: 624, column: 36, scope: !1022)
!1279 = !DILocation(line: 624, column: 28, scope: !1022)
!1280 = !DILocation(line: 626, column: 25, scope: !1022)
!1281 = !DILocation(line: 636, column: 38, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1029, file: !121, line: 634, column: 23)
!1283 = !DILocation(line: 636, column: 48, scope: !1282)
!1284 = !DILocation(line: 636, column: 51, scope: !1282)
!1285 = !DILocation(line: 636, column: 25, scope: !1282)
!1286 = !DILocation(line: 637, column: 28, scope: !1282)
!1287 = !DILocation(line: 636, column: 34, scope: !1282)
!1288 = distinct !{!1288, !1285, !1286}
!1289 = !DILocation(line: 650, column: 43, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !121, line: 650, column: 29)
!1291 = distinct !DILexicalBlock(scope: !1026, file: !121, line: 650, column: 29)
!1292 = !DILocation(line: 647, column: 29, scope: !1027)
!1293 = !DILocation(line: 649, column: 36, scope: !1026)
!1294 = !DILocation(line: 651, column: 49, scope: !1290)
!1295 = !DILocation(line: 651, column: 39, scope: !1290)
!1296 = !DILocation(line: 651, column: 31, scope: !1290)
!1297 = !DILocation(line: 650, column: 53, scope: !1290)
!1298 = !DILocation(line: 650, column: 29, scope: !1291)
!1299 = distinct !{!1299, !1298, !1300}
!1300 = !DILocation(line: 659, column: 33, scope: !1291)
!1301 = !DILocation(line: 666, column: 19, scope: !1004)
!1302 = !DILocation(line: 662, column: 41, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1028, file: !121, line: 662, column: 29)
!1304 = !DILocation(line: 662, column: 31, scope: !1303)
!1305 = !DILocation(line: 662, column: 29, scope: !1028)
!1306 = !DILocation(line: 664, column: 27, scope: !1028)
!1307 = !DILocation(line: 667, column: 26, scope: !1004)
!1308 = !DILocation(line: 667, column: 24, scope: !1004)
!1309 = !DILocation(line: 666, column: 19, scope: !1022)
!1310 = !DILocation(line: 668, column: 15, scope: !1005)
!1311 = !DILocation(line: 670, column: 40, scope: !1000)
!1312 = !DILocation(line: 672, column: 19, scope: !1034)
!1313 = !DILocation(line: 672, column: 45, scope: !1034)
!1314 = !DILocation(line: 672, column: 23, scope: !1034)
!1315 = !DILocation(line: 676, column: 33, scope: !1033)
!1316 = !DILocation(line: 676, column: 24, scope: !1033)
!1317 = !DILocation(line: 678, column: 17, scope: !1033)
!1318 = !DILocation(line: 680, column: 43, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !121, line: 680, column: 25)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !121, line: 679, column: 19)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !121, line: 678, column: 17)
!1322 = distinct !DILexicalBlock(scope: !1033, file: !121, line: 678, column: 17)
!1323 = !DILocation(line: 682, column: 25, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !121, line: 682, column: 25)
!1325 = distinct !DILexicalBlock(scope: !1319, file: !121, line: 681, column: 23)
!1326 = !DILocation(line: 682, column: 25, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1324, file: !121, line: 682, column: 25)
!1328 = !DILocation(line: 682, column: 25, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !121, line: 682, column: 25)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !121, line: 682, column: 25)
!1331 = distinct !DILexicalBlock(scope: !1327, file: !121, line: 682, column: 25)
!1332 = !DILocation(line: 682, column: 25, scope: !1330)
!1333 = !DILocation(line: 682, column: 25, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !121, line: 682, column: 25)
!1335 = distinct !DILexicalBlock(scope: !1331, file: !121, line: 682, column: 25)
!1336 = !DILocation(line: 682, column: 25, scope: !1335)
!1337 = !DILocation(line: 682, column: 25, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !121, line: 682, column: 25)
!1339 = distinct !DILexicalBlock(scope: !1331, file: !121, line: 682, column: 25)
!1340 = !DILocation(line: 682, column: 25, scope: !1339)
!1341 = !DILocation(line: 682, column: 25, scope: !1331)
!1342 = !DILocation(line: 682, column: 25, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !121, line: 682, column: 25)
!1344 = distinct !DILexicalBlock(scope: !1324, file: !121, line: 682, column: 25)
!1345 = !DILocation(line: 682, column: 25, scope: !1344)
!1346 = !DILocation(line: 683, column: 25, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !121, line: 683, column: 25)
!1348 = distinct !DILexicalBlock(scope: !1325, file: !121, line: 683, column: 25)
!1349 = !DILocation(line: 683, column: 25, scope: !1348)
!1350 = !DILocation(line: 684, column: 25, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !121, line: 684, column: 25)
!1352 = distinct !DILexicalBlock(scope: !1325, file: !121, line: 684, column: 25)
!1353 = !DILocation(line: 684, column: 25, scope: !1352)
!1354 = !DILocation(line: 685, column: 38, scope: !1325)
!1355 = !DILocation(line: 685, column: 33, scope: !1325)
!1356 = !DILocation(line: 686, column: 23, scope: !1325)
!1357 = !DILocation(line: 687, column: 30, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1319, file: !121, line: 687, column: 30)
!1359 = !DILocation(line: 687, column: 30, scope: !1319)
!1360 = !DILocation(line: 689, column: 25, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !121, line: 689, column: 25)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !121, line: 689, column: 25)
!1363 = distinct !DILexicalBlock(scope: !1358, file: !121, line: 688, column: 23)
!1364 = !DILocation(line: 689, column: 25, scope: !1362)
!1365 = !DILocation(line: 691, column: 23, scope: !1363)
!1366 = !DILocation(line: 692, column: 35, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1320, file: !121, line: 692, column: 25)
!1368 = !DILocation(line: 692, column: 30, scope: !1367)
!1369 = !DILocation(line: 692, column: 25, scope: !1320)
!1370 = !DILocation(line: 694, column: 21, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !121, line: 694, column: 21)
!1372 = distinct !DILexicalBlock(scope: !1320, file: !121, line: 694, column: 21)
!1373 = !DILocation(line: 694, column: 21, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !121, line: 694, column: 21)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !121, line: 694, column: 21)
!1376 = distinct !DILexicalBlock(scope: !1371, file: !121, line: 694, column: 21)
!1377 = !DILocation(line: 694, column: 21, scope: !1375)
!1378 = !DILocation(line: 694, column: 21, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !121, line: 694, column: 21)
!1380 = distinct !DILexicalBlock(scope: !1376, file: !121, line: 694, column: 21)
!1381 = !DILocation(line: 694, column: 21, scope: !1380)
!1382 = !DILocation(line: 694, column: 21, scope: !1376)
!1383 = !DILocation(line: 695, column: 21, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !121, line: 695, column: 21)
!1385 = distinct !DILexicalBlock(scope: !1320, file: !121, line: 695, column: 21)
!1386 = !DILocation(line: 695, column: 21, scope: !1385)
!1387 = !DILocation(line: 696, column: 25, scope: !1320)
!1388 = !DILocation(line: 678, column: 17, scope: !1321)
!1389 = distinct !{!1389, !1390, !1391}
!1390 = !DILocation(line: 678, column: 17, scope: !1322)
!1391 = !DILocation(line: 697, column: 19, scope: !1322)
!1392 = !DILocation(line: 704, column: 34, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !992, file: !121, line: 704, column: 11)
!1394 = !DILocation(line: 706, column: 14, scope: !1393)
!1395 = !DILocation(line: 707, column: 14, scope: !1393)
!1396 = !DILocation(line: 707, column: 35, scope: !1393)
!1397 = !DILocation(line: 707, column: 17, scope: !1393)
!1398 = !DILocation(line: 707, column: 53, scope: !1393)
!1399 = !DILocation(line: 707, column: 47, scope: !1393)
!1400 = !DILocation(line: 707, column: 65, scope: !1393)
!1401 = !DILocation(line: 708, column: 15, scope: !1393)
!1402 = !DILocation(line: 708, column: 11, scope: !1393)
!1403 = !DILocation(line: 704, column: 11, scope: !992)
!1404 = !DILocation(line: 712, column: 7, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !992, file: !121, line: 712, column: 7)
!1406 = !DILocation(line: 712, column: 7, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1405, file: !121, line: 712, column: 7)
!1408 = !DILocation(line: 712, column: 7, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !121, line: 712, column: 7)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !121, line: 712, column: 7)
!1411 = distinct !DILexicalBlock(scope: !1407, file: !121, line: 712, column: 7)
!1412 = !DILocation(line: 712, column: 7, scope: !1410)
!1413 = !DILocation(line: 712, column: 7, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !121, line: 712, column: 7)
!1415 = distinct !DILexicalBlock(scope: !1411, file: !121, line: 712, column: 7)
!1416 = !DILocation(line: 712, column: 7, scope: !1415)
!1417 = !DILocation(line: 712, column: 7, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !121, line: 712, column: 7)
!1419 = distinct !DILexicalBlock(scope: !1411, file: !121, line: 712, column: 7)
!1420 = !DILocation(line: 712, column: 7, scope: !1419)
!1421 = !DILocation(line: 712, column: 7, scope: !1411)
!1422 = !DILocation(line: 712, column: 7, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !121, line: 712, column: 7)
!1424 = distinct !DILexicalBlock(scope: !1405, file: !121, line: 712, column: 7)
!1425 = !DILocation(line: 712, column: 7, scope: !1424)
!1426 = !DILocation(line: 715, column: 7, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !121, line: 715, column: 7)
!1428 = distinct !DILexicalBlock(scope: !992, file: !121, line: 715, column: 7)
!1429 = !DILocation(line: 715, column: 7, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !121, line: 715, column: 7)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !121, line: 715, column: 7)
!1432 = distinct !DILexicalBlock(scope: !1427, file: !121, line: 715, column: 7)
!1433 = !DILocation(line: 715, column: 7, scope: !1431)
!1434 = !DILocation(line: 715, column: 7, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !121, line: 715, column: 7)
!1436 = distinct !DILexicalBlock(scope: !1432, file: !121, line: 715, column: 7)
!1437 = !DILocation(line: 715, column: 7, scope: !1436)
!1438 = !DILocation(line: 715, column: 7, scope: !1432)
!1439 = !DILocation(line: 716, column: 7, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !121, line: 716, column: 7)
!1441 = distinct !DILexicalBlock(scope: !992, file: !121, line: 716, column: 7)
!1442 = !DILocation(line: 716, column: 7, scope: !1441)
!1443 = !DILocation(line: 718, column: 13, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !992, file: !121, line: 718, column: 11)
!1445 = !DILocation(line: 718, column: 11, scope: !992)
!1446 = !DILocation(line: 720, column: 5, scope: !993)
!1447 = !DILocation(line: 392, column: 75, scope: !993)
!1448 = !DILocation(line: 392, column: 3, scope: !993)
!1449 = distinct !{!1449, !1107, !1450}
!1450 = !DILocation(line: 720, column: 5, scope: !994)
!1451 = !DILocation(line: 722, column: 11, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !965, file: !121, line: 722, column: 7)
!1453 = !DILocation(line: 722, column: 16, scope: !1452)
!1454 = !DILocation(line: 730, column: 51, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !965, file: !121, line: 730, column: 7)
!1456 = !DILocation(line: 731, column: 10, scope: !1455)
!1457 = !DILocation(line: 733, column: 11, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !121, line: 733, column: 11)
!1459 = distinct !DILexicalBlock(scope: !1455, file: !121, line: 732, column: 5)
!1460 = !DILocation(line: 733, column: 11, scope: !1459)
!1461 = !DILocation(line: 734, column: 16, scope: !1458)
!1462 = !DILocation(line: 734, column: 9, scope: !1458)
!1463 = !DILocation(line: 738, column: 18, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1458, file: !121, line: 738, column: 16)
!1465 = !DILocation(line: 738, column: 32, scope: !1464)
!1466 = !DILocation(line: 738, column: 29, scope: !1464)
!1467 = !DILocation(line: 747, column: 7, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !965, file: !121, line: 747, column: 7)
!1469 = !DILocation(line: 747, column: 20, scope: !1468)
!1470 = !DILocation(line: 748, column: 12, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !121, line: 748, column: 5)
!1472 = distinct !DILexicalBlock(scope: !1468, file: !121, line: 748, column: 5)
!1473 = !DILocation(line: 748, column: 5, scope: !1472)
!1474 = !DILocation(line: 749, column: 7, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !121, line: 749, column: 7)
!1476 = distinct !DILexicalBlock(scope: !1471, file: !121, line: 749, column: 7)
!1477 = !DILocation(line: 749, column: 7, scope: !1476)
!1478 = !DILocation(line: 748, column: 39, scope: !1471)
!1479 = distinct !{!1479, !1473, !1480}
!1480 = !DILocation(line: 749, column: 7, scope: !1472)
!1481 = !DILocation(line: 751, column: 11, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !965, file: !121, line: 751, column: 7)
!1483 = !DILocation(line: 751, column: 7, scope: !965)
!1484 = !DILocation(line: 752, column: 5, scope: !1482)
!1485 = !DILocation(line: 752, column: 17, scope: !1482)
!1486 = !DILocation(line: 758, column: 21, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !965, file: !121, line: 758, column: 7)
!1488 = !DILocation(line: 758, column: 54, scope: !1487)
!1489 = !DILocation(line: 758, column: 51, scope: !1487)
!1490 = !DILocation(line: 762, column: 42, scope: !965)
!1491 = !DILocation(line: 760, column: 10, scope: !965)
!1492 = !DILocation(line: 760, column: 3, scope: !965)
!1493 = !DILocation(line: 764, column: 1, scope: !965)
!1494 = distinct !DISubprogram(name: "gettext_quote", scope: !121, file: !121, line: 199, type: !1495, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1497)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!17, !17, !79}
!1497 = !{!1498, !1499, !1500, !1501}
!1498 = !DILocalVariable(name: "msgid", arg: 1, scope: !1494, file: !121, line: 199, type: !17)
!1499 = !DILocalVariable(name: "s", arg: 2, scope: !1494, file: !121, line: 199, type: !79)
!1500 = !DILocalVariable(name: "translation", scope: !1494, file: !121, line: 201, type: !17)
!1501 = !DILocalVariable(name: "locale_code", scope: !1494, file: !121, line: 202, type: !17)
!1502 = !DILocation(line: 199, column: 28, scope: !1494)
!1503 = !DILocation(line: 199, column: 54, scope: !1494)
!1504 = !DILocation(line: 201, column: 29, scope: !1494)
!1505 = !DILocation(line: 201, column: 15, scope: !1494)
!1506 = !DILocation(line: 204, column: 19, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1494, file: !121, line: 204, column: 7)
!1508 = !DILocation(line: 204, column: 7, scope: !1494)
!1509 = !DILocation(line: 225, column: 17, scope: !1494)
!1510 = !DILocation(line: 202, column: 15, scope: !1494)
!1511 = !DILocalVariable(name: "s2", arg: 2, scope: !1512, file: !1513, line: 160, type: !17)
!1512 = distinct !DISubprogram(name: "strcaseeq0", scope: !1513, file: !1513, line: 160, type: !1514, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1516)
!1513 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!40, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7, !7}
!1516 = !{!1517, !1511, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526}
!1517 = !DILocalVariable(name: "s1", arg: 1, scope: !1512, file: !1513, line: 160, type: !17)
!1518 = !DILocalVariable(name: "s20", arg: 3, scope: !1512, file: !1513, line: 160, type: !7)
!1519 = !DILocalVariable(name: "s21", arg: 4, scope: !1512, file: !1513, line: 160, type: !7)
!1520 = !DILocalVariable(name: "s22", arg: 5, scope: !1512, file: !1513, line: 160, type: !7)
!1521 = !DILocalVariable(name: "s23", arg: 6, scope: !1512, file: !1513, line: 160, type: !7)
!1522 = !DILocalVariable(name: "s24", arg: 7, scope: !1512, file: !1513, line: 160, type: !7)
!1523 = !DILocalVariable(name: "s25", arg: 8, scope: !1512, file: !1513, line: 160, type: !7)
!1524 = !DILocalVariable(name: "s26", arg: 9, scope: !1512, file: !1513, line: 160, type: !7)
!1525 = !DILocalVariable(name: "s27", arg: 10, scope: !1512, file: !1513, line: 160, type: !7)
!1526 = !DILocalVariable(name: "s28", arg: 11, scope: !1512, file: !1513, line: 160, type: !7)
!1527 = !DILocation(line: 160, column: 41, scope: !1512, inlinedAt: !1528)
!1528 = distinct !DILocation(line: 226, column: 7, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1494, file: !121, line: 226, column: 7)
!1530 = !DILocation(line: 160, column: 120, scope: !1512, inlinedAt: !1528)
!1531 = !DILocation(line: 160, column: 130, scope: !1512, inlinedAt: !1528)
!1532 = !DILocation(line: 162, column: 7, scope: !1533, inlinedAt: !1528)
!1533 = distinct !DILexicalBlock(scope: !1512, file: !1513, line: 162, column: 7)
!1534 = !DILocalVariable(name: "s2", arg: 2, scope: !1535, file: !1513, line: 146, type: !17)
!1535 = distinct !DISubprogram(name: "strcaseeq1", scope: !1513, file: !1513, line: 146, type: !1536, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1538)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!40, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7}
!1538 = !{!1539, !1534, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547}
!1539 = !DILocalVariable(name: "s1", arg: 1, scope: !1535, file: !1513, line: 146, type: !17)
!1540 = !DILocalVariable(name: "s21", arg: 3, scope: !1535, file: !1513, line: 146, type: !7)
!1541 = !DILocalVariable(name: "s22", arg: 4, scope: !1535, file: !1513, line: 146, type: !7)
!1542 = !DILocalVariable(name: "s23", arg: 5, scope: !1535, file: !1513, line: 146, type: !7)
!1543 = !DILocalVariable(name: "s24", arg: 6, scope: !1535, file: !1513, line: 146, type: !7)
!1544 = !DILocalVariable(name: "s25", arg: 7, scope: !1535, file: !1513, line: 146, type: !7)
!1545 = !DILocalVariable(name: "s26", arg: 8, scope: !1535, file: !1513, line: 146, type: !7)
!1546 = !DILocalVariable(name: "s27", arg: 9, scope: !1535, file: !1513, line: 146, type: !7)
!1547 = !DILocalVariable(name: "s28", arg: 10, scope: !1535, file: !1513, line: 146, type: !7)
!1548 = !DILocation(line: 146, column: 41, scope: !1535, inlinedAt: !1549)
!1549 = distinct !DILocation(line: 167, column: 16, scope: !1550, inlinedAt: !1528)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !1513, line: 164, column: 11)
!1551 = distinct !DILexicalBlock(scope: !1533, file: !1513, line: 163, column: 5)
!1552 = !DILocation(line: 146, column: 110, scope: !1535, inlinedAt: !1549)
!1553 = !DILocation(line: 146, column: 120, scope: !1535, inlinedAt: !1549)
!1554 = !DILocation(line: 148, column: 7, scope: !1555, inlinedAt: !1549)
!1555 = distinct !DILexicalBlock(scope: !1535, file: !1513, line: 148, column: 7)
!1556 = !DILocalVariable(name: "s2", arg: 2, scope: !1557, file: !1513, line: 132, type: !17)
!1557 = distinct !DISubprogram(name: "strcaseeq2", scope: !1513, file: !1513, line: 132, type: !1558, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1560)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!40, !17, !17, !7, !7, !7, !7, !7, !7, !7}
!1560 = !{!1561, !1556, !1562, !1563, !1564, !1565, !1566, !1567, !1568}
!1561 = !DILocalVariable(name: "s1", arg: 1, scope: !1557, file: !1513, line: 132, type: !17)
!1562 = !DILocalVariable(name: "s22", arg: 3, scope: !1557, file: !1513, line: 132, type: !7)
!1563 = !DILocalVariable(name: "s23", arg: 4, scope: !1557, file: !1513, line: 132, type: !7)
!1564 = !DILocalVariable(name: "s24", arg: 5, scope: !1557, file: !1513, line: 132, type: !7)
!1565 = !DILocalVariable(name: "s25", arg: 6, scope: !1557, file: !1513, line: 132, type: !7)
!1566 = !DILocalVariable(name: "s26", arg: 7, scope: !1557, file: !1513, line: 132, type: !7)
!1567 = !DILocalVariable(name: "s27", arg: 8, scope: !1557, file: !1513, line: 132, type: !7)
!1568 = !DILocalVariable(name: "s28", arg: 9, scope: !1557, file: !1513, line: 132, type: !7)
!1569 = !DILocation(line: 132, column: 41, scope: !1557, inlinedAt: !1570)
!1570 = distinct !DILocation(line: 153, column: 16, scope: !1571, inlinedAt: !1549)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !1513, line: 150, column: 11)
!1572 = distinct !DILexicalBlock(scope: !1555, file: !1513, line: 149, column: 5)
!1573 = !DILocation(line: 132, column: 100, scope: !1557, inlinedAt: !1570)
!1574 = !DILocation(line: 132, column: 110, scope: !1557, inlinedAt: !1570)
!1575 = !DILocation(line: 134, column: 7, scope: !1576, inlinedAt: !1570)
!1576 = distinct !DILexicalBlock(scope: !1557, file: !1513, line: 134, column: 7)
!1577 = !DILocalVariable(name: "s2", arg: 2, scope: !1578, file: !1513, line: 118, type: !17)
!1578 = distinct !DISubprogram(name: "strcaseeq3", scope: !1513, file: !1513, line: 118, type: !1579, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1581)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!40, !17, !17, !7, !7, !7, !7, !7, !7}
!1581 = !{!1582, !1577, !1583, !1584, !1585, !1586, !1587, !1588}
!1582 = !DILocalVariable(name: "s1", arg: 1, scope: !1578, file: !1513, line: 118, type: !17)
!1583 = !DILocalVariable(name: "s23", arg: 3, scope: !1578, file: !1513, line: 118, type: !7)
!1584 = !DILocalVariable(name: "s24", arg: 4, scope: !1578, file: !1513, line: 118, type: !7)
!1585 = !DILocalVariable(name: "s25", arg: 5, scope: !1578, file: !1513, line: 118, type: !7)
!1586 = !DILocalVariable(name: "s26", arg: 6, scope: !1578, file: !1513, line: 118, type: !7)
!1587 = !DILocalVariable(name: "s27", arg: 7, scope: !1578, file: !1513, line: 118, type: !7)
!1588 = !DILocalVariable(name: "s28", arg: 8, scope: !1578, file: !1513, line: 118, type: !7)
!1589 = !DILocation(line: 118, column: 41, scope: !1578, inlinedAt: !1590)
!1590 = distinct !DILocation(line: 139, column: 16, scope: !1591, inlinedAt: !1570)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !1513, line: 136, column: 11)
!1592 = distinct !DILexicalBlock(scope: !1576, file: !1513, line: 135, column: 5)
!1593 = !DILocation(line: 118, column: 90, scope: !1578, inlinedAt: !1590)
!1594 = !DILocation(line: 118, column: 100, scope: !1578, inlinedAt: !1590)
!1595 = !DILocation(line: 120, column: 7, scope: !1596, inlinedAt: !1590)
!1596 = distinct !DILexicalBlock(scope: !1578, file: !1513, line: 120, column: 7)
!1597 = !DILocation(line: 120, column: 7, scope: !1578, inlinedAt: !1590)
!1598 = !DILocalVariable(name: "s2", arg: 2, scope: !1599, file: !1513, line: 104, type: !17)
!1599 = distinct !DISubprogram(name: "strcaseeq4", scope: !1513, file: !1513, line: 104, type: !1600, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1602)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!40, !17, !17, !7, !7, !7, !7, !7}
!1602 = !{!1603, !1598, !1604, !1605, !1606, !1607, !1608}
!1603 = !DILocalVariable(name: "s1", arg: 1, scope: !1599, file: !1513, line: 104, type: !17)
!1604 = !DILocalVariable(name: "s24", arg: 3, scope: !1599, file: !1513, line: 104, type: !7)
!1605 = !DILocalVariable(name: "s25", arg: 4, scope: !1599, file: !1513, line: 104, type: !7)
!1606 = !DILocalVariable(name: "s26", arg: 5, scope: !1599, file: !1513, line: 104, type: !7)
!1607 = !DILocalVariable(name: "s27", arg: 6, scope: !1599, file: !1513, line: 104, type: !7)
!1608 = !DILocalVariable(name: "s28", arg: 7, scope: !1599, file: !1513, line: 104, type: !7)
!1609 = !DILocation(line: 104, column: 41, scope: !1599, inlinedAt: !1610)
!1610 = distinct !DILocation(line: 125, column: 16, scope: !1611, inlinedAt: !1590)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !1513, line: 122, column: 11)
!1612 = distinct !DILexicalBlock(scope: !1596, file: !1513, line: 121, column: 5)
!1613 = !DILocation(line: 104, column: 80, scope: !1599, inlinedAt: !1610)
!1614 = !DILocation(line: 104, column: 90, scope: !1599, inlinedAt: !1610)
!1615 = !DILocation(line: 106, column: 7, scope: !1616, inlinedAt: !1610)
!1616 = distinct !DILexicalBlock(scope: !1599, file: !1513, line: 106, column: 7)
!1617 = !DILocation(line: 106, column: 7, scope: !1599, inlinedAt: !1610)
!1618 = !DILocalVariable(name: "s2", arg: 2, scope: !1619, file: !1513, line: 90, type: !17)
!1619 = distinct !DISubprogram(name: "strcaseeq5", scope: !1513, file: !1513, line: 90, type: !1620, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1622)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!40, !17, !17, !7, !7, !7, !7}
!1622 = !{!1623, !1618, !1624, !1625, !1626, !1627}
!1623 = !DILocalVariable(name: "s1", arg: 1, scope: !1619, file: !1513, line: 90, type: !17)
!1624 = !DILocalVariable(name: "s25", arg: 3, scope: !1619, file: !1513, line: 90, type: !7)
!1625 = !DILocalVariable(name: "s26", arg: 4, scope: !1619, file: !1513, line: 90, type: !7)
!1626 = !DILocalVariable(name: "s27", arg: 5, scope: !1619, file: !1513, line: 90, type: !7)
!1627 = !DILocalVariable(name: "s28", arg: 6, scope: !1619, file: !1513, line: 90, type: !7)
!1628 = !DILocation(line: 90, column: 41, scope: !1619, inlinedAt: !1629)
!1629 = distinct !DILocation(line: 111, column: 16, scope: !1630, inlinedAt: !1610)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !1513, line: 108, column: 11)
!1631 = distinct !DILexicalBlock(scope: !1616, file: !1513, line: 107, column: 5)
!1632 = !DILocation(line: 90, column: 70, scope: !1619, inlinedAt: !1629)
!1633 = !DILocation(line: 90, column: 80, scope: !1619, inlinedAt: !1629)
!1634 = !DILocation(line: 92, column: 7, scope: !1635, inlinedAt: !1629)
!1635 = distinct !DILexicalBlock(scope: !1619, file: !1513, line: 92, column: 7)
!1636 = !DILocation(line: 92, column: 7, scope: !1619, inlinedAt: !1629)
!1637 = !DILocation(line: 227, column: 12, scope: !1529)
!1638 = !DILocation(line: 227, column: 21, scope: !1529)
!1639 = !DILocation(line: 227, column: 5, scope: !1529)
!1640 = !DILocation(line: 146, column: 41, scope: !1535, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 167, column: 16, scope: !1550, inlinedAt: !1642)
!1642 = distinct !DILocation(line: 228, column: 7, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1494, file: !121, line: 228, column: 7)
!1644 = !DILocation(line: 146, column: 110, scope: !1535, inlinedAt: !1641)
!1645 = !DILocation(line: 146, column: 120, scope: !1535, inlinedAt: !1641)
!1646 = !DILocation(line: 148, column: 7, scope: !1555, inlinedAt: !1641)
!1647 = !DILocation(line: 132, column: 41, scope: !1557, inlinedAt: !1648)
!1648 = distinct !DILocation(line: 153, column: 16, scope: !1571, inlinedAt: !1641)
!1649 = !DILocation(line: 132, column: 100, scope: !1557, inlinedAt: !1648)
!1650 = !DILocation(line: 132, column: 110, scope: !1557, inlinedAt: !1648)
!1651 = !DILocation(line: 134, column: 7, scope: !1576, inlinedAt: !1648)
!1652 = !DILocation(line: 134, column: 7, scope: !1557, inlinedAt: !1648)
!1653 = !DILocation(line: 118, column: 41, scope: !1578, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 139, column: 16, scope: !1591, inlinedAt: !1648)
!1655 = !DILocation(line: 118, column: 90, scope: !1578, inlinedAt: !1654)
!1656 = !DILocation(line: 118, column: 100, scope: !1578, inlinedAt: !1654)
!1657 = !DILocation(line: 120, column: 7, scope: !1596, inlinedAt: !1654)
!1658 = !DILocation(line: 120, column: 7, scope: !1578, inlinedAt: !1654)
!1659 = !DILocation(line: 104, column: 41, scope: !1599, inlinedAt: !1660)
!1660 = distinct !DILocation(line: 125, column: 16, scope: !1611, inlinedAt: !1654)
!1661 = !DILocation(line: 104, column: 80, scope: !1599, inlinedAt: !1660)
!1662 = !DILocation(line: 104, column: 90, scope: !1599, inlinedAt: !1660)
!1663 = !DILocation(line: 106, column: 7, scope: !1616, inlinedAt: !1660)
!1664 = !DILocation(line: 106, column: 7, scope: !1599, inlinedAt: !1660)
!1665 = !DILocation(line: 90, column: 41, scope: !1619, inlinedAt: !1666)
!1666 = distinct !DILocation(line: 111, column: 16, scope: !1630, inlinedAt: !1660)
!1667 = !DILocation(line: 90, column: 70, scope: !1619, inlinedAt: !1666)
!1668 = !DILocation(line: 90, column: 80, scope: !1619, inlinedAt: !1666)
!1669 = !DILocation(line: 92, column: 7, scope: !1635, inlinedAt: !1666)
!1670 = !DILocation(line: 92, column: 7, scope: !1619, inlinedAt: !1666)
!1671 = !DILocalVariable(name: "s2", arg: 2, scope: !1672, file: !1513, line: 76, type: !17)
!1672 = distinct !DISubprogram(name: "strcaseeq6", scope: !1513, file: !1513, line: 76, type: !1673, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1675)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!40, !17, !17, !7, !7, !7}
!1675 = !{!1676, !1671, !1677, !1678, !1679}
!1676 = !DILocalVariable(name: "s1", arg: 1, scope: !1672, file: !1513, line: 76, type: !17)
!1677 = !DILocalVariable(name: "s26", arg: 3, scope: !1672, file: !1513, line: 76, type: !7)
!1678 = !DILocalVariable(name: "s27", arg: 4, scope: !1672, file: !1513, line: 76, type: !7)
!1679 = !DILocalVariable(name: "s28", arg: 5, scope: !1672, file: !1513, line: 76, type: !7)
!1680 = !DILocation(line: 76, column: 41, scope: !1672, inlinedAt: !1681)
!1681 = distinct !DILocation(line: 97, column: 16, scope: !1682, inlinedAt: !1666)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !1513, line: 94, column: 11)
!1683 = distinct !DILexicalBlock(scope: !1635, file: !1513, line: 93, column: 5)
!1684 = !DILocation(line: 76, column: 60, scope: !1672, inlinedAt: !1681)
!1685 = !DILocation(line: 76, column: 70, scope: !1672, inlinedAt: !1681)
!1686 = !DILocation(line: 78, column: 7, scope: !1687, inlinedAt: !1681)
!1687 = distinct !DILexicalBlock(scope: !1672, file: !1513, line: 78, column: 7)
!1688 = !DILocation(line: 78, column: 7, scope: !1672, inlinedAt: !1681)
!1689 = !DILocalVariable(name: "s2", arg: 2, scope: !1690, file: !1513, line: 62, type: !17)
!1690 = distinct !DISubprogram(name: "strcaseeq7", scope: !1513, file: !1513, line: 62, type: !1691, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1693)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!40, !17, !17, !7, !7}
!1693 = !{!1694, !1689, !1695, !1696}
!1694 = !DILocalVariable(name: "s1", arg: 1, scope: !1690, file: !1513, line: 62, type: !17)
!1695 = !DILocalVariable(name: "s27", arg: 3, scope: !1690, file: !1513, line: 62, type: !7)
!1696 = !DILocalVariable(name: "s28", arg: 4, scope: !1690, file: !1513, line: 62, type: !7)
!1697 = !DILocation(line: 62, column: 41, scope: !1690, inlinedAt: !1698)
!1698 = distinct !DILocation(line: 83, column: 16, scope: !1699, inlinedAt: !1681)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !1513, line: 80, column: 11)
!1700 = distinct !DILexicalBlock(scope: !1687, file: !1513, line: 79, column: 5)
!1701 = !DILocation(line: 62, column: 50, scope: !1690, inlinedAt: !1698)
!1702 = !DILocation(line: 62, column: 60, scope: !1690, inlinedAt: !1698)
!1703 = !DILocation(line: 64, column: 7, scope: !1704, inlinedAt: !1698)
!1704 = distinct !DILexicalBlock(scope: !1690, file: !1513, line: 64, column: 7)
!1705 = !DILocation(line: 228, column: 7, scope: !1494)
!1706 = !DILocation(line: 229, column: 12, scope: !1643)
!1707 = !DILocation(line: 229, column: 21, scope: !1643)
!1708 = !DILocation(line: 229, column: 5, scope: !1643)
!1709 = !DILocation(line: 231, column: 13, scope: !1494)
!1710 = !DILocation(line: 231, column: 11, scope: !1494)
!1711 = !DILocation(line: 231, column: 3, scope: !1494)
!1712 = !DILocation(line: 232, column: 1, scope: !1494)
!1713 = distinct !DISubprogram(name: "quotearg_alloc", scope: !121, file: !121, line: 791, type: !1714, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1716)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!6, !17, !115, !837}
!1716 = !{!1717, !1718, !1719}
!1717 = !DILocalVariable(name: "arg", arg: 1, scope: !1713, file: !121, line: 791, type: !17)
!1718 = !DILocalVariable(name: "argsize", arg: 2, scope: !1713, file: !121, line: 791, type: !115)
!1719 = !DILocalVariable(name: "o", arg: 3, scope: !1713, file: !121, line: 792, type: !837)
!1720 = !DILocation(line: 791, column: 29, scope: !1713)
!1721 = !DILocation(line: 791, column: 41, scope: !1713)
!1722 = !DILocation(line: 792, column: 47, scope: !1713)
!1723 = !DILocalVariable(name: "arg", arg: 1, scope: !1724, file: !121, line: 804, type: !17)
!1724 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !121, file: !121, line: 804, type: !1725, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1727)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!6, !17, !115, !532, !837}
!1727 = !{!1723, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735}
!1728 = !DILocalVariable(name: "argsize", arg: 2, scope: !1724, file: !121, line: 804, type: !115)
!1729 = !DILocalVariable(name: "size", arg: 3, scope: !1724, file: !121, line: 804, type: !532)
!1730 = !DILocalVariable(name: "o", arg: 4, scope: !1724, file: !121, line: 805, type: !837)
!1731 = !DILocalVariable(name: "p", scope: !1724, file: !121, line: 807, type: !837)
!1732 = !DILocalVariable(name: "e", scope: !1724, file: !121, line: 808, type: !40)
!1733 = !DILocalVariable(name: "flags", scope: !1724, file: !121, line: 810, type: !40)
!1734 = !DILocalVariable(name: "bufsize", scope: !1724, file: !121, line: 811, type: !115)
!1735 = !DILocalVariable(name: "buf", scope: !1724, file: !121, line: 815, type: !6)
!1736 = !DILocation(line: 804, column: 33, scope: !1724, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 794, column: 10, scope: !1713)
!1738 = !DILocation(line: 804, column: 45, scope: !1724, inlinedAt: !1737)
!1739 = !DILocation(line: 804, column: 62, scope: !1724, inlinedAt: !1737)
!1740 = !DILocation(line: 805, column: 51, scope: !1724, inlinedAt: !1737)
!1741 = !DILocation(line: 807, column: 37, scope: !1724, inlinedAt: !1737)
!1742 = !DILocation(line: 807, column: 33, scope: !1724, inlinedAt: !1737)
!1743 = !DILocation(line: 808, column: 11, scope: !1724, inlinedAt: !1737)
!1744 = !DILocation(line: 808, column: 7, scope: !1724, inlinedAt: !1737)
!1745 = !DILocation(line: 810, column: 18, scope: !1724, inlinedAt: !1737)
!1746 = !DILocation(line: 810, column: 24, scope: !1724, inlinedAt: !1737)
!1747 = !DILocation(line: 810, column: 7, scope: !1724, inlinedAt: !1737)
!1748 = !DILocation(line: 811, column: 69, scope: !1724, inlinedAt: !1737)
!1749 = !DILocation(line: 812, column: 53, scope: !1724, inlinedAt: !1737)
!1750 = !DILocation(line: 813, column: 49, scope: !1724, inlinedAt: !1737)
!1751 = !DILocation(line: 814, column: 49, scope: !1724, inlinedAt: !1737)
!1752 = !DILocation(line: 811, column: 20, scope: !1724, inlinedAt: !1737)
!1753 = !DILocation(line: 814, column: 62, scope: !1724, inlinedAt: !1737)
!1754 = !DILocation(line: 811, column: 10, scope: !1724, inlinedAt: !1737)
!1755 = !DILocalVariable(name: "n", arg: 1, scope: !1756, file: !528, line: 220, type: !115)
!1756 = distinct !DISubprogram(name: "xcharalloc", scope: !528, file: !528, line: 220, type: !1757, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1759)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!6, !115}
!1759 = !{!1755}
!1760 = !DILocation(line: 220, column: 20, scope: !1756, inlinedAt: !1761)
!1761 = distinct !DILocation(line: 815, column: 15, scope: !1724, inlinedAt: !1737)
!1762 = !DILocation(line: 222, column: 10, scope: !1756, inlinedAt: !1761)
!1763 = !DILocation(line: 815, column: 9, scope: !1724, inlinedAt: !1737)
!1764 = !DILocation(line: 816, column: 60, scope: !1724, inlinedAt: !1737)
!1765 = !DILocation(line: 818, column: 32, scope: !1724, inlinedAt: !1737)
!1766 = !DILocation(line: 818, column: 47, scope: !1724, inlinedAt: !1737)
!1767 = !DILocation(line: 816, column: 3, scope: !1724, inlinedAt: !1737)
!1768 = !DILocation(line: 819, column: 9, scope: !1724, inlinedAt: !1737)
!1769 = !DILocation(line: 794, column: 3, scope: !1713)
!1770 = !DILocation(line: 804, column: 33, scope: !1724)
!1771 = !DILocation(line: 804, column: 45, scope: !1724)
!1772 = !DILocation(line: 804, column: 62, scope: !1724)
!1773 = !DILocation(line: 805, column: 51, scope: !1724)
!1774 = !DILocation(line: 807, column: 37, scope: !1724)
!1775 = !DILocation(line: 807, column: 33, scope: !1724)
!1776 = !DILocation(line: 808, column: 11, scope: !1724)
!1777 = !DILocation(line: 808, column: 7, scope: !1724)
!1778 = !DILocation(line: 810, column: 18, scope: !1724)
!1779 = !DILocation(line: 810, column: 27, scope: !1724)
!1780 = !DILocation(line: 810, column: 24, scope: !1724)
!1781 = !DILocation(line: 810, column: 7, scope: !1724)
!1782 = !DILocation(line: 811, column: 69, scope: !1724)
!1783 = !DILocation(line: 812, column: 53, scope: !1724)
!1784 = !DILocation(line: 813, column: 49, scope: !1724)
!1785 = !DILocation(line: 814, column: 49, scope: !1724)
!1786 = !DILocation(line: 811, column: 20, scope: !1724)
!1787 = !DILocation(line: 814, column: 62, scope: !1724)
!1788 = !DILocation(line: 811, column: 10, scope: !1724)
!1789 = !DILocation(line: 220, column: 20, scope: !1756, inlinedAt: !1790)
!1790 = distinct !DILocation(line: 815, column: 15, scope: !1724)
!1791 = !DILocation(line: 222, column: 10, scope: !1756, inlinedAt: !1790)
!1792 = !DILocation(line: 815, column: 9, scope: !1724)
!1793 = !DILocation(line: 816, column: 60, scope: !1724)
!1794 = !DILocation(line: 818, column: 32, scope: !1724)
!1795 = !DILocation(line: 818, column: 47, scope: !1724)
!1796 = !DILocation(line: 816, column: 3, scope: !1724)
!1797 = !DILocation(line: 819, column: 9, scope: !1724)
!1798 = !DILocation(line: 820, column: 7, scope: !1724)
!1799 = !DILocation(line: 821, column: 11, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1724, file: !121, line: 820, column: 7)
!1801 = !{!1802, !1802, i64 0}
!1802 = !{!"long", !578, i64 0}
!1803 = !DILocation(line: 821, column: 5, scope: !1800)
!1804 = !DILocation(line: 822, column: 3, scope: !1724)
!1805 = distinct !DISubprogram(name: "quotearg_free", scope: !121, file: !121, line: 840, type: !585, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1806)
!1806 = !{!1807, !1808}
!1807 = !DILocalVariable(name: "sv", scope: !1805, file: !121, line: 842, type: !146)
!1808 = !DILocalVariable(name: "i", scope: !1805, file: !121, line: 843, type: !40)
!1809 = !DILocation(line: 842, column: 24, scope: !1805)
!1810 = !DILocation(line: 842, column: 19, scope: !1805)
!1811 = !DILocation(line: 843, column: 7, scope: !1805)
!1812 = !DILocation(line: 844, column: 19, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !121, line: 844, column: 3)
!1814 = distinct !DILexicalBlock(scope: !1805, file: !121, line: 844, column: 3)
!1815 = !DILocation(line: 844, column: 17, scope: !1813)
!1816 = !DILocation(line: 844, column: 3, scope: !1814)
!1817 = !DILocation(line: 845, column: 17, scope: !1813)
!1818 = !{!1819, !577, i64 8}
!1819 = !{!"slotvec", !1802, i64 0, !577, i64 8}
!1820 = !DILocation(line: 845, column: 5, scope: !1813)
!1821 = !DILocation(line: 844, column: 28, scope: !1813)
!1822 = distinct !{!1822, !1816, !1823}
!1823 = !DILocation(line: 845, column: 20, scope: !1814)
!1824 = !DILocation(line: 846, column: 13, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1805, file: !121, line: 846, column: 7)
!1826 = !DILocation(line: 846, column: 17, scope: !1825)
!1827 = !DILocation(line: 846, column: 7, scope: !1805)
!1828 = !DILocation(line: 848, column: 7, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1825, file: !121, line: 847, column: 5)
!1830 = !DILocation(line: 849, column: 21, scope: !1829)
!1831 = !{!1819, !1802, i64 0}
!1832 = !DILocation(line: 850, column: 20, scope: !1829)
!1833 = !DILocation(line: 851, column: 5, scope: !1829)
!1834 = !DILocation(line: 852, column: 10, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1805, file: !121, line: 852, column: 7)
!1836 = !DILocation(line: 852, column: 7, scope: !1805)
!1837 = !DILocation(line: 854, column: 13, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1835, file: !121, line: 853, column: 5)
!1839 = !DILocation(line: 854, column: 7, scope: !1838)
!1840 = !DILocation(line: 855, column: 15, scope: !1838)
!1841 = !DILocation(line: 856, column: 5, scope: !1838)
!1842 = !DILocation(line: 857, column: 10, scope: !1805)
!1843 = !DILocation(line: 858, column: 1, scope: !1805)
!1844 = distinct !DISubprogram(name: "quotearg_n", scope: !121, file: !121, line: 922, type: !1845, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1847)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!6, !40, !17}
!1847 = !{!1848, !1849}
!1848 = !DILocalVariable(name: "n", arg: 1, scope: !1844, file: !121, line: 922, type: !40)
!1849 = !DILocalVariable(name: "arg", arg: 2, scope: !1844, file: !121, line: 922, type: !17)
!1850 = !DILocation(line: 922, column: 17, scope: !1844)
!1851 = !DILocation(line: 922, column: 32, scope: !1844)
!1852 = !DILocation(line: 924, column: 10, scope: !1844)
!1853 = !DILocation(line: 924, column: 3, scope: !1844)
!1854 = distinct !DISubprogram(name: "quotearg_n_options", scope: !121, file: !121, line: 869, type: !1855, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1857)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!6, !40, !17, !115, !837}
!1857 = !{!1858, !1859, !1860, !1861, !1862, !1863, !1864, !1867, !1869, !1870, !1871}
!1858 = !DILocalVariable(name: "n", arg: 1, scope: !1854, file: !121, line: 869, type: !40)
!1859 = !DILocalVariable(name: "arg", arg: 2, scope: !1854, file: !121, line: 869, type: !17)
!1860 = !DILocalVariable(name: "argsize", arg: 3, scope: !1854, file: !121, line: 869, type: !115)
!1861 = !DILocalVariable(name: "options", arg: 4, scope: !1854, file: !121, line: 870, type: !837)
!1862 = !DILocalVariable(name: "e", scope: !1854, file: !121, line: 872, type: !40)
!1863 = !DILocalVariable(name: "sv", scope: !1854, file: !121, line: 874, type: !146)
!1864 = !DILocalVariable(name: "preallocated", scope: !1865, file: !121, line: 881, type: !59)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !121, line: 880, column: 5)
!1866 = distinct !DILexicalBlock(scope: !1854, file: !121, line: 879, column: 7)
!1867 = !DILocalVariable(name: "size", scope: !1868, file: !121, line: 894, type: !115)
!1868 = distinct !DILexicalBlock(scope: !1854, file: !121, line: 893, column: 3)
!1869 = !DILocalVariable(name: "val", scope: !1868, file: !121, line: 895, type: !6)
!1870 = !DILocalVariable(name: "flags", scope: !1868, file: !121, line: 897, type: !40)
!1871 = !DILocalVariable(name: "qsize", scope: !1868, file: !121, line: 898, type: !115)
!1872 = !DILocation(line: 869, column: 25, scope: !1854)
!1873 = !DILocation(line: 869, column: 40, scope: !1854)
!1874 = !DILocation(line: 869, column: 52, scope: !1854)
!1875 = !DILocation(line: 870, column: 51, scope: !1854)
!1876 = !DILocation(line: 872, column: 11, scope: !1854)
!1877 = !DILocation(line: 872, column: 7, scope: !1854)
!1878 = !DILocation(line: 874, column: 24, scope: !1854)
!1879 = !DILocation(line: 874, column: 19, scope: !1854)
!1880 = !DILocation(line: 876, column: 9, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1854, file: !121, line: 876, column: 7)
!1882 = !DILocation(line: 876, column: 7, scope: !1854)
!1883 = !DILocation(line: 877, column: 5, scope: !1881)
!1884 = !DILocation(line: 879, column: 7, scope: !1866)
!1885 = !DILocation(line: 879, column: 14, scope: !1866)
!1886 = !DILocation(line: 879, column: 7, scope: !1854)
!1887 = !DILocation(line: 881, column: 31, scope: !1865)
!1888 = !DILocation(line: 883, column: 67, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1865, file: !121, line: 883, column: 11)
!1890 = !DILocation(line: 883, column: 11, scope: !1865)
!1891 = !DILocation(line: 884, column: 9, scope: !1889)
!1892 = !DILocation(line: 886, column: 32, scope: !1865)
!1893 = !DILocation(line: 886, column: 61, scope: !1865)
!1894 = !DILocation(line: 886, column: 58, scope: !1865)
!1895 = !DILocation(line: 886, column: 66, scope: !1865)
!1896 = !DILocation(line: 886, column: 22, scope: !1865)
!1897 = !DILocation(line: 886, column: 15, scope: !1865)
!1898 = !DILocation(line: 887, column: 11, scope: !1865)
!1899 = !DILocation(line: 888, column: 15, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1865, file: !121, line: 887, column: 11)
!1901 = !{i64 0, i64 8, !1801, i64 8, i64 8, !576}
!1902 = !DILocation(line: 888, column: 9, scope: !1900)
!1903 = !DILocation(line: 889, column: 20, scope: !1865)
!1904 = !DILocation(line: 889, column: 18, scope: !1865)
!1905 = !DILocation(line: 889, column: 7, scope: !1865)
!1906 = !DILocation(line: 889, column: 38, scope: !1865)
!1907 = !DILocation(line: 889, column: 31, scope: !1865)
!1908 = !DILocation(line: 889, column: 48, scope: !1865)
!1909 = !DILocation(line: 890, column: 14, scope: !1865)
!1910 = !DILocation(line: 891, column: 5, scope: !1865)
!1911 = !DILocation(line: 894, column: 19, scope: !1868)
!1912 = !DILocation(line: 894, column: 25, scope: !1868)
!1913 = !DILocation(line: 894, column: 12, scope: !1868)
!1914 = !DILocation(line: 895, column: 23, scope: !1868)
!1915 = !DILocation(line: 895, column: 11, scope: !1868)
!1916 = !DILocation(line: 897, column: 26, scope: !1868)
!1917 = !DILocation(line: 897, column: 32, scope: !1868)
!1918 = !DILocation(line: 897, column: 9, scope: !1868)
!1919 = !DILocation(line: 899, column: 55, scope: !1868)
!1920 = !DILocation(line: 900, column: 46, scope: !1868)
!1921 = !DILocation(line: 901, column: 55, scope: !1868)
!1922 = !DILocation(line: 902, column: 55, scope: !1868)
!1923 = !DILocation(line: 898, column: 20, scope: !1868)
!1924 = !DILocation(line: 898, column: 12, scope: !1868)
!1925 = !DILocation(line: 904, column: 14, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1868, file: !121, line: 904, column: 9)
!1927 = !DILocation(line: 904, column: 9, scope: !1868)
!1928 = !DILocation(line: 906, column: 35, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1926, file: !121, line: 905, column: 7)
!1930 = !DILocation(line: 906, column: 20, scope: !1929)
!1931 = !DILocation(line: 907, column: 17, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1929, file: !121, line: 907, column: 13)
!1933 = !DILocation(line: 907, column: 13, scope: !1929)
!1934 = !DILocation(line: 908, column: 11, scope: !1932)
!1935 = !DILocation(line: 220, column: 20, scope: !1756, inlinedAt: !1936)
!1936 = distinct !DILocation(line: 909, column: 27, scope: !1929)
!1937 = !DILocation(line: 222, column: 10, scope: !1756, inlinedAt: !1936)
!1938 = !DILocation(line: 909, column: 19, scope: !1929)
!1939 = !DILocation(line: 910, column: 69, scope: !1929)
!1940 = !DILocation(line: 912, column: 44, scope: !1929)
!1941 = !DILocation(line: 913, column: 44, scope: !1929)
!1942 = !DILocation(line: 910, column: 9, scope: !1929)
!1943 = !DILocation(line: 914, column: 7, scope: !1929)
!1944 = !DILocation(line: 916, column: 11, scope: !1868)
!1945 = !DILocation(line: 917, column: 5, scope: !1868)
!1946 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !121, file: !121, line: 928, type: !1947, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1949)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!6, !40, !17, !115}
!1949 = !{!1950, !1951, !1952}
!1950 = !DILocalVariable(name: "n", arg: 1, scope: !1946, file: !121, line: 928, type: !40)
!1951 = !DILocalVariable(name: "arg", arg: 2, scope: !1946, file: !121, line: 928, type: !17)
!1952 = !DILocalVariable(name: "argsize", arg: 3, scope: !1946, file: !121, line: 928, type: !115)
!1953 = !DILocation(line: 928, column: 21, scope: !1946)
!1954 = !DILocation(line: 928, column: 36, scope: !1946)
!1955 = !DILocation(line: 928, column: 48, scope: !1946)
!1956 = !DILocation(line: 930, column: 10, scope: !1946)
!1957 = !DILocation(line: 930, column: 3, scope: !1946)
!1958 = distinct !DISubprogram(name: "quotearg", scope: !121, file: !121, line: 934, type: !1959, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1961)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!6, !17}
!1961 = !{!1962}
!1962 = !DILocalVariable(name: "arg", arg: 1, scope: !1958, file: !121, line: 934, type: !17)
!1963 = !DILocation(line: 934, column: 23, scope: !1958)
!1964 = !DILocation(line: 922, column: 17, scope: !1844, inlinedAt: !1965)
!1965 = distinct !DILocation(line: 936, column: 10, scope: !1958)
!1966 = !DILocation(line: 922, column: 32, scope: !1844, inlinedAt: !1965)
!1967 = !DILocation(line: 924, column: 10, scope: !1844, inlinedAt: !1965)
!1968 = !DILocation(line: 936, column: 3, scope: !1958)
!1969 = distinct !DISubprogram(name: "quotearg_mem", scope: !121, file: !121, line: 940, type: !1970, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1972)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!6, !17, !115}
!1972 = !{!1973, !1974}
!1973 = !DILocalVariable(name: "arg", arg: 1, scope: !1969, file: !121, line: 940, type: !17)
!1974 = !DILocalVariable(name: "argsize", arg: 2, scope: !1969, file: !121, line: 940, type: !115)
!1975 = !DILocation(line: 940, column: 27, scope: !1969)
!1976 = !DILocation(line: 940, column: 39, scope: !1969)
!1977 = !DILocation(line: 928, column: 21, scope: !1946, inlinedAt: !1978)
!1978 = distinct !DILocation(line: 942, column: 10, scope: !1969)
!1979 = !DILocation(line: 928, column: 36, scope: !1946, inlinedAt: !1978)
!1980 = !DILocation(line: 928, column: 48, scope: !1946, inlinedAt: !1978)
!1981 = !DILocation(line: 930, column: 10, scope: !1946, inlinedAt: !1978)
!1982 = !DILocation(line: 942, column: 3, scope: !1969)
!1983 = distinct !DISubprogram(name: "quotearg_n_style", scope: !121, file: !121, line: 946, type: !1984, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1986)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!6, !40, !79, !17}
!1986 = !{!1987, !1988, !1989, !1990}
!1987 = !DILocalVariable(name: "n", arg: 1, scope: !1983, file: !121, line: 946, type: !40)
!1988 = !DILocalVariable(name: "s", arg: 2, scope: !1983, file: !121, line: 946, type: !79)
!1989 = !DILocalVariable(name: "arg", arg: 3, scope: !1983, file: !121, line: 946, type: !17)
!1990 = !DILocalVariable(name: "o", scope: !1983, file: !121, line: 948, type: !838)
!1991 = !DILocalVariable(name: "o", scope: !1992, file: !121, line: 187, type: !128)
!1992 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !121, file: !121, line: 185, type: !1993, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1995)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!128, !79}
!1995 = !{!1996, !1991}
!1996 = !DILocalVariable(name: "style", arg: 1, scope: !1992, file: !121, line: 185, type: !79)
!1997 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!1998 = !DILocation(line: 187, column: 26, scope: !1992, inlinedAt: !1999)
!1999 = distinct !DILocation(line: 948, column: 36, scope: !1983)
!2000 = !DILocation(line: 946, column: 23, scope: !1983)
!2001 = !DILocation(line: 946, column: 45, scope: !1983)
!2002 = !DILocation(line: 946, column: 60, scope: !1983)
!2003 = !DILocation(line: 948, column: 3, scope: !1983)
!2004 = !DILocation(line: 948, column: 32, scope: !1983)
!2005 = !DILocation(line: 185, column: 48, scope: !1992, inlinedAt: !1999)
!2006 = !DILocation(line: 187, column: 3, scope: !1992, inlinedAt: !1999)
!2007 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2008 = !DILocation(line: 188, column: 13, scope: !2009, inlinedAt: !1999)
!2009 = distinct !DILexicalBlock(scope: !1992, file: !121, line: 188, column: 7)
!2010 = !DILocation(line: 188, column: 7, scope: !1992, inlinedAt: !1999)
!2011 = !DILocation(line: 189, column: 5, scope: !2009, inlinedAt: !1999)
!2012 = !{!2013}
!2013 = distinct !{!2013, !2014, !"quoting_options_from_style: argument 0"}
!2014 = distinct !{!2014, !"quoting_options_from_style"}
!2015 = !DILocation(line: 191, column: 10, scope: !1992, inlinedAt: !1999)
!2016 = !DILocation(line: 192, column: 1, scope: !1992, inlinedAt: !1999)
!2017 = !DILocation(line: 949, column: 10, scope: !1983)
!2018 = !DILocation(line: 950, column: 1, scope: !1983)
!2019 = !DILocation(line: 949, column: 3, scope: !1983)
!2020 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !121, file: !121, line: 953, type: !2021, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2023)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!6, !40, !79, !17, !115}
!2023 = !{!2024, !2025, !2026, !2027, !2028}
!2024 = !DILocalVariable(name: "n", arg: 1, scope: !2020, file: !121, line: 953, type: !40)
!2025 = !DILocalVariable(name: "s", arg: 2, scope: !2020, file: !121, line: 953, type: !79)
!2026 = !DILocalVariable(name: "arg", arg: 3, scope: !2020, file: !121, line: 954, type: !17)
!2027 = !DILocalVariable(name: "argsize", arg: 4, scope: !2020, file: !121, line: 954, type: !115)
!2028 = !DILocalVariable(name: "o", scope: !2020, file: !121, line: 956, type: !838)
!2029 = !DILocation(line: 187, column: 26, scope: !1992, inlinedAt: !2030)
!2030 = distinct !DILocation(line: 956, column: 36, scope: !2020)
!2031 = !DILocation(line: 953, column: 27, scope: !2020)
!2032 = !DILocation(line: 953, column: 49, scope: !2020)
!2033 = !DILocation(line: 954, column: 35, scope: !2020)
!2034 = !DILocation(line: 954, column: 47, scope: !2020)
!2035 = !DILocation(line: 956, column: 3, scope: !2020)
!2036 = !DILocation(line: 956, column: 32, scope: !2020)
!2037 = !DILocation(line: 185, column: 48, scope: !1992, inlinedAt: !2030)
!2038 = !DILocation(line: 187, column: 3, scope: !1992, inlinedAt: !2030)
!2039 = !DILocation(line: 188, column: 13, scope: !2009, inlinedAt: !2030)
!2040 = !DILocation(line: 188, column: 7, scope: !1992, inlinedAt: !2030)
!2041 = !DILocation(line: 189, column: 5, scope: !2009, inlinedAt: !2030)
!2042 = !{!2043}
!2043 = distinct !{!2043, !2044, !"quoting_options_from_style: argument 0"}
!2044 = distinct !{!2044, !"quoting_options_from_style"}
!2045 = !DILocation(line: 191, column: 10, scope: !1992, inlinedAt: !2030)
!2046 = !DILocation(line: 192, column: 1, scope: !1992, inlinedAt: !2030)
!2047 = !DILocation(line: 957, column: 10, scope: !2020)
!2048 = !DILocation(line: 958, column: 1, scope: !2020)
!2049 = !DILocation(line: 957, column: 3, scope: !2020)
!2050 = distinct !DISubprogram(name: "quotearg_style", scope: !121, file: !121, line: 961, type: !2051, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2053)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!6, !79, !17}
!2053 = !{!2054, !2055}
!2054 = !DILocalVariable(name: "s", arg: 1, scope: !2050, file: !121, line: 961, type: !79)
!2055 = !DILocalVariable(name: "arg", arg: 2, scope: !2050, file: !121, line: 961, type: !17)
!2056 = !DILocation(line: 187, column: 26, scope: !1992, inlinedAt: !2057)
!2057 = distinct !DILocation(line: 948, column: 36, scope: !1983, inlinedAt: !2058)
!2058 = distinct !DILocation(line: 963, column: 10, scope: !2050)
!2059 = !DILocation(line: 961, column: 36, scope: !2050)
!2060 = !DILocation(line: 961, column: 51, scope: !2050)
!2061 = !DILocation(line: 946, column: 23, scope: !1983, inlinedAt: !2058)
!2062 = !DILocation(line: 946, column: 45, scope: !1983, inlinedAt: !2058)
!2063 = !DILocation(line: 946, column: 60, scope: !1983, inlinedAt: !2058)
!2064 = !DILocation(line: 948, column: 3, scope: !1983, inlinedAt: !2058)
!2065 = !DILocation(line: 948, column: 32, scope: !1983, inlinedAt: !2058)
!2066 = !DILocation(line: 185, column: 48, scope: !1992, inlinedAt: !2057)
!2067 = !DILocation(line: 187, column: 3, scope: !1992, inlinedAt: !2057)
!2068 = !DILocation(line: 188, column: 13, scope: !2009, inlinedAt: !2057)
!2069 = !DILocation(line: 188, column: 7, scope: !1992, inlinedAt: !2057)
!2070 = !DILocation(line: 189, column: 5, scope: !2009, inlinedAt: !2057)
!2071 = !{!2072}
!2072 = distinct !{!2072, !2073, !"quoting_options_from_style: argument 0"}
!2073 = distinct !{!2073, !"quoting_options_from_style"}
!2074 = !DILocation(line: 191, column: 10, scope: !1992, inlinedAt: !2057)
!2075 = !DILocation(line: 192, column: 1, scope: !1992, inlinedAt: !2057)
!2076 = !DILocation(line: 949, column: 10, scope: !1983, inlinedAt: !2058)
!2077 = !DILocation(line: 950, column: 1, scope: !1983, inlinedAt: !2058)
!2078 = !DILocation(line: 963, column: 3, scope: !2050)
!2079 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !121, file: !121, line: 967, type: !2080, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2082)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!6, !79, !17, !115}
!2082 = !{!2083, !2084, !2085}
!2083 = !DILocalVariable(name: "s", arg: 1, scope: !2079, file: !121, line: 967, type: !79)
!2084 = !DILocalVariable(name: "arg", arg: 2, scope: !2079, file: !121, line: 967, type: !17)
!2085 = !DILocalVariable(name: "argsize", arg: 3, scope: !2079, file: !121, line: 967, type: !115)
!2086 = !DILocation(line: 187, column: 26, scope: !1992, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 956, column: 36, scope: !2020, inlinedAt: !2088)
!2088 = distinct !DILocation(line: 969, column: 10, scope: !2079)
!2089 = !DILocation(line: 967, column: 40, scope: !2079)
!2090 = !DILocation(line: 967, column: 55, scope: !2079)
!2091 = !DILocation(line: 967, column: 67, scope: !2079)
!2092 = !DILocation(line: 953, column: 27, scope: !2020, inlinedAt: !2088)
!2093 = !DILocation(line: 953, column: 49, scope: !2020, inlinedAt: !2088)
!2094 = !DILocation(line: 954, column: 35, scope: !2020, inlinedAt: !2088)
!2095 = !DILocation(line: 954, column: 47, scope: !2020, inlinedAt: !2088)
!2096 = !DILocation(line: 956, column: 3, scope: !2020, inlinedAt: !2088)
!2097 = !DILocation(line: 956, column: 32, scope: !2020, inlinedAt: !2088)
!2098 = !DILocation(line: 185, column: 48, scope: !1992, inlinedAt: !2087)
!2099 = !DILocation(line: 187, column: 3, scope: !1992, inlinedAt: !2087)
!2100 = !DILocation(line: 188, column: 13, scope: !2009, inlinedAt: !2087)
!2101 = !DILocation(line: 188, column: 7, scope: !1992, inlinedAt: !2087)
!2102 = !DILocation(line: 189, column: 5, scope: !2009, inlinedAt: !2087)
!2103 = !{!2104}
!2104 = distinct !{!2104, !2105, !"quoting_options_from_style: argument 0"}
!2105 = distinct !{!2105, !"quoting_options_from_style"}
!2106 = !DILocation(line: 191, column: 10, scope: !1992, inlinedAt: !2087)
!2107 = !DILocation(line: 192, column: 1, scope: !1992, inlinedAt: !2087)
!2108 = !DILocation(line: 957, column: 10, scope: !2020, inlinedAt: !2088)
!2109 = !DILocation(line: 958, column: 1, scope: !2020, inlinedAt: !2088)
!2110 = !DILocation(line: 969, column: 3, scope: !2079)
!2111 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !121, file: !121, line: 973, type: !2112, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2114)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!6, !17, !115, !7}
!2114 = !{!2115, !2116, !2117, !2118}
!2115 = !DILocalVariable(name: "arg", arg: 1, scope: !2111, file: !121, line: 973, type: !17)
!2116 = !DILocalVariable(name: "argsize", arg: 2, scope: !2111, file: !121, line: 973, type: !115)
!2117 = !DILocalVariable(name: "ch", arg: 3, scope: !2111, file: !121, line: 973, type: !7)
!2118 = !DILocalVariable(name: "options", scope: !2111, file: !121, line: 975, type: !128)
!2119 = !DILocation(line: 973, column: 32, scope: !2111)
!2120 = !DILocation(line: 973, column: 44, scope: !2111)
!2121 = !DILocation(line: 973, column: 58, scope: !2111)
!2122 = !DILocation(line: 975, column: 3, scope: !2111)
!2123 = !DILocation(line: 976, column: 13, scope: !2111)
!2124 = !{i64 0, i64 4, !1065, i64 4, i64 4, !649, i64 8, i64 32, !1065, i64 40, i64 8, !576, i64 48, i64 8, !576}
!2125 = !DILocation(line: 975, column: 26, scope: !2111)
!2126 = !DILocation(line: 144, column: 43, scope: !859, inlinedAt: !2127)
!2127 = distinct !DILocation(line: 977, column: 3, scope: !2111)
!2128 = !DILocation(line: 144, column: 51, scope: !859, inlinedAt: !2127)
!2129 = !DILocation(line: 144, column: 58, scope: !859, inlinedAt: !2127)
!2130 = !DILocation(line: 146, column: 17, scope: !859, inlinedAt: !2127)
!2131 = !DILocation(line: 148, column: 62, scope: !859, inlinedAt: !2127)
!2132 = !DILocation(line: 148, column: 57, scope: !859, inlinedAt: !2127)
!2133 = !DILocation(line: 147, column: 17, scope: !859, inlinedAt: !2127)
!2134 = !DILocation(line: 149, column: 18, scope: !859, inlinedAt: !2127)
!2135 = !DILocation(line: 149, column: 15, scope: !859, inlinedAt: !2127)
!2136 = !DILocation(line: 149, column: 7, scope: !859, inlinedAt: !2127)
!2137 = !DILocation(line: 150, column: 12, scope: !859, inlinedAt: !2127)
!2138 = !DILocation(line: 150, column: 15, scope: !859, inlinedAt: !2127)
!2139 = !DILocation(line: 150, column: 25, scope: !859, inlinedAt: !2127)
!2140 = !DILocation(line: 150, column: 7, scope: !859, inlinedAt: !2127)
!2141 = !DILocation(line: 151, column: 18, scope: !859, inlinedAt: !2127)
!2142 = !DILocation(line: 151, column: 23, scope: !859, inlinedAt: !2127)
!2143 = !DILocation(line: 151, column: 6, scope: !859, inlinedAt: !2127)
!2144 = !DILocation(line: 978, column: 10, scope: !2111)
!2145 = !DILocation(line: 979, column: 1, scope: !2111)
!2146 = !DILocation(line: 978, column: 3, scope: !2111)
!2147 = distinct !DISubprogram(name: "quotearg_char", scope: !121, file: !121, line: 982, type: !2148, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2150)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!6, !17, !7}
!2150 = !{!2151, !2152}
!2151 = !DILocalVariable(name: "arg", arg: 1, scope: !2147, file: !121, line: 982, type: !17)
!2152 = !DILocalVariable(name: "ch", arg: 2, scope: !2147, file: !121, line: 982, type: !7)
!2153 = !DILocation(line: 982, column: 28, scope: !2147)
!2154 = !DILocation(line: 982, column: 38, scope: !2147)
!2155 = !DILocation(line: 973, column: 32, scope: !2111, inlinedAt: !2156)
!2156 = distinct !DILocation(line: 984, column: 10, scope: !2147)
!2157 = !DILocation(line: 973, column: 44, scope: !2111, inlinedAt: !2156)
!2158 = !DILocation(line: 973, column: 58, scope: !2111, inlinedAt: !2156)
!2159 = !DILocation(line: 975, column: 3, scope: !2111, inlinedAt: !2156)
!2160 = !DILocation(line: 976, column: 13, scope: !2111, inlinedAt: !2156)
!2161 = !DILocation(line: 975, column: 26, scope: !2111, inlinedAt: !2156)
!2162 = !DILocation(line: 144, column: 43, scope: !859, inlinedAt: !2163)
!2163 = distinct !DILocation(line: 977, column: 3, scope: !2111, inlinedAt: !2156)
!2164 = !DILocation(line: 144, column: 51, scope: !859, inlinedAt: !2163)
!2165 = !DILocation(line: 144, column: 58, scope: !859, inlinedAt: !2163)
!2166 = !DILocation(line: 146, column: 17, scope: !859, inlinedAt: !2163)
!2167 = !DILocation(line: 148, column: 62, scope: !859, inlinedAt: !2163)
!2168 = !DILocation(line: 148, column: 57, scope: !859, inlinedAt: !2163)
!2169 = !DILocation(line: 147, column: 17, scope: !859, inlinedAt: !2163)
!2170 = !DILocation(line: 149, column: 18, scope: !859, inlinedAt: !2163)
!2171 = !DILocation(line: 149, column: 15, scope: !859, inlinedAt: !2163)
!2172 = !DILocation(line: 149, column: 7, scope: !859, inlinedAt: !2163)
!2173 = !DILocation(line: 150, column: 12, scope: !859, inlinedAt: !2163)
!2174 = !DILocation(line: 150, column: 15, scope: !859, inlinedAt: !2163)
!2175 = !DILocation(line: 150, column: 25, scope: !859, inlinedAt: !2163)
!2176 = !DILocation(line: 150, column: 7, scope: !859, inlinedAt: !2163)
!2177 = !DILocation(line: 151, column: 18, scope: !859, inlinedAt: !2163)
!2178 = !DILocation(line: 151, column: 23, scope: !859, inlinedAt: !2163)
!2179 = !DILocation(line: 151, column: 6, scope: !859, inlinedAt: !2163)
!2180 = !DILocation(line: 978, column: 10, scope: !2111, inlinedAt: !2156)
!2181 = !DILocation(line: 979, column: 1, scope: !2111, inlinedAt: !2156)
!2182 = !DILocation(line: 984, column: 3, scope: !2147)
!2183 = distinct !DISubprogram(name: "quotearg_colon", scope: !121, file: !121, line: 988, type: !1959, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2184)
!2184 = !{!2185}
!2185 = !DILocalVariable(name: "arg", arg: 1, scope: !2183, file: !121, line: 988, type: !17)
!2186 = !DILocation(line: 988, column: 29, scope: !2183)
!2187 = !DILocation(line: 982, column: 28, scope: !2147, inlinedAt: !2188)
!2188 = distinct !DILocation(line: 990, column: 10, scope: !2183)
!2189 = !DILocation(line: 982, column: 38, scope: !2147, inlinedAt: !2188)
!2190 = !DILocation(line: 973, column: 32, scope: !2111, inlinedAt: !2191)
!2191 = distinct !DILocation(line: 984, column: 10, scope: !2147, inlinedAt: !2188)
!2192 = !DILocation(line: 973, column: 44, scope: !2111, inlinedAt: !2191)
!2193 = !DILocation(line: 973, column: 58, scope: !2111, inlinedAt: !2191)
!2194 = !DILocation(line: 975, column: 3, scope: !2111, inlinedAt: !2191)
!2195 = !DILocation(line: 976, column: 13, scope: !2111, inlinedAt: !2191)
!2196 = !DILocation(line: 975, column: 26, scope: !2111, inlinedAt: !2191)
!2197 = !DILocation(line: 144, column: 43, scope: !859, inlinedAt: !2198)
!2198 = distinct !DILocation(line: 977, column: 3, scope: !2111, inlinedAt: !2191)
!2199 = !DILocation(line: 144, column: 51, scope: !859, inlinedAt: !2198)
!2200 = !DILocation(line: 144, column: 58, scope: !859, inlinedAt: !2198)
!2201 = !DILocation(line: 146, column: 17, scope: !859, inlinedAt: !2198)
!2202 = !DILocation(line: 148, column: 57, scope: !859, inlinedAt: !2198)
!2203 = !DILocation(line: 147, column: 17, scope: !859, inlinedAt: !2198)
!2204 = !DILocation(line: 149, column: 7, scope: !859, inlinedAt: !2198)
!2205 = !DILocation(line: 150, column: 12, scope: !859, inlinedAt: !2198)
!2206 = !DILocation(line: 151, column: 6, scope: !859, inlinedAt: !2198)
!2207 = !DILocation(line: 978, column: 10, scope: !2111, inlinedAt: !2191)
!2208 = !DILocation(line: 979, column: 1, scope: !2111, inlinedAt: !2191)
!2209 = !DILocation(line: 990, column: 3, scope: !2183)
!2210 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !121, file: !121, line: 994, type: !1970, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2211)
!2211 = !{!2212, !2213}
!2212 = !DILocalVariable(name: "arg", arg: 1, scope: !2210, file: !121, line: 994, type: !17)
!2213 = !DILocalVariable(name: "argsize", arg: 2, scope: !2210, file: !121, line: 994, type: !115)
!2214 = !DILocation(line: 994, column: 33, scope: !2210)
!2215 = !DILocation(line: 994, column: 45, scope: !2210)
!2216 = !DILocation(line: 973, column: 32, scope: !2111, inlinedAt: !2217)
!2217 = distinct !DILocation(line: 996, column: 10, scope: !2210)
!2218 = !DILocation(line: 973, column: 44, scope: !2111, inlinedAt: !2217)
!2219 = !DILocation(line: 973, column: 58, scope: !2111, inlinedAt: !2217)
!2220 = !DILocation(line: 975, column: 3, scope: !2111, inlinedAt: !2217)
!2221 = !DILocation(line: 976, column: 13, scope: !2111, inlinedAt: !2217)
!2222 = !DILocation(line: 975, column: 26, scope: !2111, inlinedAt: !2217)
!2223 = !DILocation(line: 144, column: 43, scope: !859, inlinedAt: !2224)
!2224 = distinct !DILocation(line: 977, column: 3, scope: !2111, inlinedAt: !2217)
!2225 = !DILocation(line: 144, column: 51, scope: !859, inlinedAt: !2224)
!2226 = !DILocation(line: 144, column: 58, scope: !859, inlinedAt: !2224)
!2227 = !DILocation(line: 146, column: 17, scope: !859, inlinedAt: !2224)
!2228 = !DILocation(line: 148, column: 57, scope: !859, inlinedAt: !2224)
!2229 = !DILocation(line: 147, column: 17, scope: !859, inlinedAt: !2224)
!2230 = !DILocation(line: 149, column: 7, scope: !859, inlinedAt: !2224)
!2231 = !DILocation(line: 150, column: 12, scope: !859, inlinedAt: !2224)
!2232 = !DILocation(line: 151, column: 6, scope: !859, inlinedAt: !2224)
!2233 = !DILocation(line: 978, column: 10, scope: !2111, inlinedAt: !2217)
!2234 = !DILocation(line: 979, column: 1, scope: !2111, inlinedAt: !2217)
!2235 = !DILocation(line: 996, column: 3, scope: !2210)
!2236 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !121, file: !121, line: 1000, type: !1984, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2237)
!2237 = !{!2238, !2239, !2240, !2241}
!2238 = !DILocalVariable(name: "n", arg: 1, scope: !2236, file: !121, line: 1000, type: !40)
!2239 = !DILocalVariable(name: "s", arg: 2, scope: !2236, file: !121, line: 1000, type: !79)
!2240 = !DILocalVariable(name: "arg", arg: 3, scope: !2236, file: !121, line: 1000, type: !17)
!2241 = !DILocalVariable(name: "options", scope: !2236, file: !121, line: 1002, type: !128)
!2242 = !DILocation(line: 187, column: 26, scope: !1992, inlinedAt: !2243)
!2243 = distinct !DILocation(line: 1003, column: 13, scope: !2236)
!2244 = !DILocation(line: 1000, column: 29, scope: !2236)
!2245 = !DILocation(line: 1000, column: 51, scope: !2236)
!2246 = !DILocation(line: 1000, column: 66, scope: !2236)
!2247 = !DILocation(line: 1002, column: 3, scope: !2236)
!2248 = !DILocation(line: 185, column: 48, scope: !1992, inlinedAt: !2243)
!2249 = !DILocation(line: 187, column: 3, scope: !1992, inlinedAt: !2243)
!2250 = !DILocation(line: 188, column: 13, scope: !2009, inlinedAt: !2243)
!2251 = !DILocation(line: 188, column: 7, scope: !1992, inlinedAt: !2243)
!2252 = !DILocation(line: 189, column: 5, scope: !2009, inlinedAt: !2243)
!2253 = !{!2254}
!2254 = distinct !{!2254, !2255, !"quoting_options_from_style: argument 0"}
!2255 = distinct !{!2255, !"quoting_options_from_style"}
!2256 = !DILocation(line: 191, column: 10, scope: !1992, inlinedAt: !2243)
!2257 = !DILocation(line: 192, column: 1, scope: !1992, inlinedAt: !2243)
!2258 = !DILocation(line: 1003, column: 13, scope: !2236)
!2259 = !DILocation(line: 1002, column: 26, scope: !2236)
!2260 = !DILocation(line: 144, column: 43, scope: !859, inlinedAt: !2261)
!2261 = distinct !DILocation(line: 1004, column: 3, scope: !2236)
!2262 = !DILocation(line: 144, column: 51, scope: !859, inlinedAt: !2261)
!2263 = !DILocation(line: 144, column: 58, scope: !859, inlinedAt: !2261)
!2264 = !DILocation(line: 146, column: 17, scope: !859, inlinedAt: !2261)
!2265 = !DILocation(line: 148, column: 57, scope: !859, inlinedAt: !2261)
!2266 = !DILocation(line: 147, column: 17, scope: !859, inlinedAt: !2261)
!2267 = !DILocation(line: 149, column: 7, scope: !859, inlinedAt: !2261)
!2268 = !DILocation(line: 150, column: 12, scope: !859, inlinedAt: !2261)
!2269 = !DILocation(line: 151, column: 6, scope: !859, inlinedAt: !2261)
!2270 = !DILocation(line: 1005, column: 10, scope: !2236)
!2271 = !DILocation(line: 1006, column: 1, scope: !2236)
!2272 = !DILocation(line: 1005, column: 3, scope: !2236)
!2273 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !121, file: !121, line: 1009, type: !2274, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2276)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!6, !40, !17, !17, !17}
!2276 = !{!2277, !2278, !2279, !2280}
!2277 = !DILocalVariable(name: "n", arg: 1, scope: !2273, file: !121, line: 1009, type: !40)
!2278 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2273, file: !121, line: 1009, type: !17)
!2279 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2273, file: !121, line: 1010, type: !17)
!2280 = !DILocalVariable(name: "arg", arg: 4, scope: !2273, file: !121, line: 1010, type: !17)
!2281 = !DILocation(line: 1009, column: 24, scope: !2273)
!2282 = !DILocation(line: 1009, column: 39, scope: !2273)
!2283 = !DILocation(line: 1010, column: 32, scope: !2273)
!2284 = !DILocation(line: 1010, column: 57, scope: !2273)
!2285 = !DILocalVariable(name: "n", arg: 1, scope: !2286, file: !121, line: 1017, type: !40)
!2286 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !121, file: !121, line: 1017, type: !2287, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2289)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!6, !40, !17, !17, !17, !115}
!2289 = !{!2285, !2290, !2291, !2292, !2293, !2294}
!2290 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2286, file: !121, line: 1017, type: !17)
!2291 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2286, file: !121, line: 1018, type: !17)
!2292 = !DILocalVariable(name: "arg", arg: 4, scope: !2286, file: !121, line: 1019, type: !17)
!2293 = !DILocalVariable(name: "argsize", arg: 5, scope: !2286, file: !121, line: 1019, type: !115)
!2294 = !DILocalVariable(name: "o", scope: !2286, file: !121, line: 1021, type: !128)
!2295 = !DILocation(line: 1017, column: 28, scope: !2286, inlinedAt: !2296)
!2296 = distinct !DILocation(line: 1012, column: 10, scope: !2273)
!2297 = !DILocation(line: 1017, column: 43, scope: !2286, inlinedAt: !2296)
!2298 = !DILocation(line: 1018, column: 36, scope: !2286, inlinedAt: !2296)
!2299 = !DILocation(line: 1019, column: 36, scope: !2286, inlinedAt: !2296)
!2300 = !DILocation(line: 1019, column: 48, scope: !2286, inlinedAt: !2296)
!2301 = !DILocation(line: 1021, column: 3, scope: !2286, inlinedAt: !2296)
!2302 = !DILocation(line: 1021, column: 30, scope: !2286, inlinedAt: !2296)
!2303 = !DILocation(line: 1021, column: 26, scope: !2286, inlinedAt: !2296)
!2304 = !DILocation(line: 171, column: 45, scope: !908, inlinedAt: !2305)
!2305 = distinct !DILocation(line: 1022, column: 3, scope: !2286, inlinedAt: !2296)
!2306 = !DILocation(line: 172, column: 33, scope: !908, inlinedAt: !2305)
!2307 = !DILocation(line: 172, column: 57, scope: !908, inlinedAt: !2305)
!2308 = !DILocation(line: 176, column: 6, scope: !908, inlinedAt: !2305)
!2309 = !DILocation(line: 176, column: 12, scope: !908, inlinedAt: !2305)
!2310 = !DILocation(line: 177, column: 8, scope: !924, inlinedAt: !2305)
!2311 = !DILocation(line: 177, column: 23, scope: !924, inlinedAt: !2305)
!2312 = !DILocation(line: 177, column: 19, scope: !924, inlinedAt: !2305)
!2313 = !DILocation(line: 178, column: 5, scope: !924, inlinedAt: !2305)
!2314 = !DILocation(line: 179, column: 6, scope: !908, inlinedAt: !2305)
!2315 = !DILocation(line: 179, column: 17, scope: !908, inlinedAt: !2305)
!2316 = !DILocation(line: 180, column: 6, scope: !908, inlinedAt: !2305)
!2317 = !DILocation(line: 180, column: 18, scope: !908, inlinedAt: !2305)
!2318 = !DILocation(line: 1023, column: 10, scope: !2286, inlinedAt: !2296)
!2319 = !DILocation(line: 1024, column: 1, scope: !2286, inlinedAt: !2296)
!2320 = !DILocation(line: 1012, column: 3, scope: !2273)
!2321 = !DILocation(line: 1017, column: 28, scope: !2286)
!2322 = !DILocation(line: 1017, column: 43, scope: !2286)
!2323 = !DILocation(line: 1018, column: 36, scope: !2286)
!2324 = !DILocation(line: 1019, column: 36, scope: !2286)
!2325 = !DILocation(line: 1019, column: 48, scope: !2286)
!2326 = !DILocation(line: 1021, column: 3, scope: !2286)
!2327 = !DILocation(line: 1021, column: 30, scope: !2286)
!2328 = !DILocation(line: 1021, column: 26, scope: !2286)
!2329 = !DILocation(line: 171, column: 45, scope: !908, inlinedAt: !2330)
!2330 = distinct !DILocation(line: 1022, column: 3, scope: !2286)
!2331 = !DILocation(line: 172, column: 33, scope: !908, inlinedAt: !2330)
!2332 = !DILocation(line: 172, column: 57, scope: !908, inlinedAt: !2330)
!2333 = !DILocation(line: 176, column: 6, scope: !908, inlinedAt: !2330)
!2334 = !DILocation(line: 176, column: 12, scope: !908, inlinedAt: !2330)
!2335 = !DILocation(line: 177, column: 8, scope: !924, inlinedAt: !2330)
!2336 = !DILocation(line: 177, column: 23, scope: !924, inlinedAt: !2330)
!2337 = !DILocation(line: 177, column: 19, scope: !924, inlinedAt: !2330)
!2338 = !DILocation(line: 178, column: 5, scope: !924, inlinedAt: !2330)
!2339 = !DILocation(line: 179, column: 6, scope: !908, inlinedAt: !2330)
!2340 = !DILocation(line: 179, column: 17, scope: !908, inlinedAt: !2330)
!2341 = !DILocation(line: 180, column: 6, scope: !908, inlinedAt: !2330)
!2342 = !DILocation(line: 180, column: 18, scope: !908, inlinedAt: !2330)
!2343 = !DILocation(line: 1023, column: 10, scope: !2286)
!2344 = !DILocation(line: 1024, column: 1, scope: !2286)
!2345 = !DILocation(line: 1023, column: 3, scope: !2286)
!2346 = distinct !DISubprogram(name: "quotearg_custom", scope: !121, file: !121, line: 1027, type: !2347, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2349)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!6, !17, !17, !17}
!2349 = !{!2350, !2351, !2352}
!2350 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2346, file: !121, line: 1027, type: !17)
!2351 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2346, file: !121, line: 1027, type: !17)
!2352 = !DILocalVariable(name: "arg", arg: 3, scope: !2346, file: !121, line: 1028, type: !17)
!2353 = !DILocation(line: 1027, column: 30, scope: !2346)
!2354 = !DILocation(line: 1027, column: 54, scope: !2346)
!2355 = !DILocation(line: 1028, column: 30, scope: !2346)
!2356 = !DILocation(line: 1009, column: 24, scope: !2273, inlinedAt: !2357)
!2357 = distinct !DILocation(line: 1030, column: 10, scope: !2346)
!2358 = !DILocation(line: 1009, column: 39, scope: !2273, inlinedAt: !2357)
!2359 = !DILocation(line: 1010, column: 32, scope: !2273, inlinedAt: !2357)
!2360 = !DILocation(line: 1010, column: 57, scope: !2273, inlinedAt: !2357)
!2361 = !DILocation(line: 1017, column: 28, scope: !2286, inlinedAt: !2362)
!2362 = distinct !DILocation(line: 1012, column: 10, scope: !2273, inlinedAt: !2357)
!2363 = !DILocation(line: 1017, column: 43, scope: !2286, inlinedAt: !2362)
!2364 = !DILocation(line: 1018, column: 36, scope: !2286, inlinedAt: !2362)
!2365 = !DILocation(line: 1019, column: 36, scope: !2286, inlinedAt: !2362)
!2366 = !DILocation(line: 1019, column: 48, scope: !2286, inlinedAt: !2362)
!2367 = !DILocation(line: 1021, column: 3, scope: !2286, inlinedAt: !2362)
!2368 = !DILocation(line: 1021, column: 30, scope: !2286, inlinedAt: !2362)
!2369 = !DILocation(line: 1021, column: 26, scope: !2286, inlinedAt: !2362)
!2370 = !DILocation(line: 171, column: 45, scope: !908, inlinedAt: !2371)
!2371 = distinct !DILocation(line: 1022, column: 3, scope: !2286, inlinedAt: !2362)
!2372 = !DILocation(line: 172, column: 33, scope: !908, inlinedAt: !2371)
!2373 = !DILocation(line: 172, column: 57, scope: !908, inlinedAt: !2371)
!2374 = !DILocation(line: 176, column: 6, scope: !908, inlinedAt: !2371)
!2375 = !DILocation(line: 176, column: 12, scope: !908, inlinedAt: !2371)
!2376 = !DILocation(line: 177, column: 8, scope: !924, inlinedAt: !2371)
!2377 = !DILocation(line: 177, column: 23, scope: !924, inlinedAt: !2371)
!2378 = !DILocation(line: 177, column: 19, scope: !924, inlinedAt: !2371)
!2379 = !DILocation(line: 178, column: 5, scope: !924, inlinedAt: !2371)
!2380 = !DILocation(line: 179, column: 6, scope: !908, inlinedAt: !2371)
!2381 = !DILocation(line: 179, column: 17, scope: !908, inlinedAt: !2371)
!2382 = !DILocation(line: 180, column: 6, scope: !908, inlinedAt: !2371)
!2383 = !DILocation(line: 180, column: 18, scope: !908, inlinedAt: !2371)
!2384 = !DILocation(line: 1023, column: 10, scope: !2286, inlinedAt: !2362)
!2385 = !DILocation(line: 1024, column: 1, scope: !2286, inlinedAt: !2362)
!2386 = !DILocation(line: 1030, column: 3, scope: !2346)
!2387 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !121, file: !121, line: 1034, type: !2388, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2390)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!6, !17, !17, !17, !115}
!2390 = !{!2391, !2392, !2393, !2394}
!2391 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2387, file: !121, line: 1034, type: !17)
!2392 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2387, file: !121, line: 1034, type: !17)
!2393 = !DILocalVariable(name: "arg", arg: 3, scope: !2387, file: !121, line: 1035, type: !17)
!2394 = !DILocalVariable(name: "argsize", arg: 4, scope: !2387, file: !121, line: 1035, type: !115)
!2395 = !DILocation(line: 1034, column: 34, scope: !2387)
!2396 = !DILocation(line: 1034, column: 58, scope: !2387)
!2397 = !DILocation(line: 1035, column: 34, scope: !2387)
!2398 = !DILocation(line: 1035, column: 46, scope: !2387)
!2399 = !DILocation(line: 1017, column: 28, scope: !2286, inlinedAt: !2400)
!2400 = distinct !DILocation(line: 1037, column: 10, scope: !2387)
!2401 = !DILocation(line: 1017, column: 43, scope: !2286, inlinedAt: !2400)
!2402 = !DILocation(line: 1018, column: 36, scope: !2286, inlinedAt: !2400)
!2403 = !DILocation(line: 1019, column: 36, scope: !2286, inlinedAt: !2400)
!2404 = !DILocation(line: 1019, column: 48, scope: !2286, inlinedAt: !2400)
!2405 = !DILocation(line: 1021, column: 3, scope: !2286, inlinedAt: !2400)
!2406 = !DILocation(line: 1021, column: 30, scope: !2286, inlinedAt: !2400)
!2407 = !DILocation(line: 1021, column: 26, scope: !2286, inlinedAt: !2400)
!2408 = !DILocation(line: 171, column: 45, scope: !908, inlinedAt: !2409)
!2409 = distinct !DILocation(line: 1022, column: 3, scope: !2286, inlinedAt: !2400)
!2410 = !DILocation(line: 172, column: 33, scope: !908, inlinedAt: !2409)
!2411 = !DILocation(line: 172, column: 57, scope: !908, inlinedAt: !2409)
!2412 = !DILocation(line: 176, column: 6, scope: !908, inlinedAt: !2409)
!2413 = !DILocation(line: 176, column: 12, scope: !908, inlinedAt: !2409)
!2414 = !DILocation(line: 177, column: 8, scope: !924, inlinedAt: !2409)
!2415 = !DILocation(line: 177, column: 23, scope: !924, inlinedAt: !2409)
!2416 = !DILocation(line: 177, column: 19, scope: !924, inlinedAt: !2409)
!2417 = !DILocation(line: 178, column: 5, scope: !924, inlinedAt: !2409)
!2418 = !DILocation(line: 179, column: 6, scope: !908, inlinedAt: !2409)
!2419 = !DILocation(line: 179, column: 17, scope: !908, inlinedAt: !2409)
!2420 = !DILocation(line: 180, column: 6, scope: !908, inlinedAt: !2409)
!2421 = !DILocation(line: 180, column: 18, scope: !908, inlinedAt: !2409)
!2422 = !DILocation(line: 1023, column: 10, scope: !2286, inlinedAt: !2400)
!2423 = !DILocation(line: 1024, column: 1, scope: !2286, inlinedAt: !2400)
!2424 = !DILocation(line: 1037, column: 3, scope: !2387)
!2425 = distinct !DISubprogram(name: "quote_n_mem", scope: !121, file: !121, line: 1052, type: !2426, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2428)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!17, !40, !17, !115}
!2428 = !{!2429, !2430, !2431}
!2429 = !DILocalVariable(name: "n", arg: 1, scope: !2425, file: !121, line: 1052, type: !40)
!2430 = !DILocalVariable(name: "arg", arg: 2, scope: !2425, file: !121, line: 1052, type: !17)
!2431 = !DILocalVariable(name: "argsize", arg: 3, scope: !2425, file: !121, line: 1052, type: !115)
!2432 = !DILocation(line: 1052, column: 18, scope: !2425)
!2433 = !DILocation(line: 1052, column: 33, scope: !2425)
!2434 = !DILocation(line: 1052, column: 45, scope: !2425)
!2435 = !DILocation(line: 1054, column: 10, scope: !2425)
!2436 = !DILocation(line: 1054, column: 3, scope: !2425)
!2437 = distinct !DISubprogram(name: "quote_mem", scope: !121, file: !121, line: 1058, type: !2438, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2440)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!17, !17, !115}
!2440 = !{!2441, !2442}
!2441 = !DILocalVariable(name: "arg", arg: 1, scope: !2437, file: !121, line: 1058, type: !17)
!2442 = !DILocalVariable(name: "argsize", arg: 2, scope: !2437, file: !121, line: 1058, type: !115)
!2443 = !DILocation(line: 1058, column: 24, scope: !2437)
!2444 = !DILocation(line: 1058, column: 36, scope: !2437)
!2445 = !DILocation(line: 1052, column: 18, scope: !2425, inlinedAt: !2446)
!2446 = distinct !DILocation(line: 1060, column: 10, scope: !2437)
!2447 = !DILocation(line: 1052, column: 33, scope: !2425, inlinedAt: !2446)
!2448 = !DILocation(line: 1052, column: 45, scope: !2425, inlinedAt: !2446)
!2449 = !DILocation(line: 1054, column: 10, scope: !2425, inlinedAt: !2446)
!2450 = !DILocation(line: 1060, column: 3, scope: !2437)
!2451 = distinct !DISubprogram(name: "quote_n", scope: !121, file: !121, line: 1064, type: !2452, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2454)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!17, !40, !17}
!2454 = !{!2455, !2456}
!2455 = !DILocalVariable(name: "n", arg: 1, scope: !2451, file: !121, line: 1064, type: !40)
!2456 = !DILocalVariable(name: "arg", arg: 2, scope: !2451, file: !121, line: 1064, type: !17)
!2457 = !DILocation(line: 1064, column: 14, scope: !2451)
!2458 = !DILocation(line: 1064, column: 29, scope: !2451)
!2459 = !DILocation(line: 1052, column: 18, scope: !2425, inlinedAt: !2460)
!2460 = distinct !DILocation(line: 1066, column: 10, scope: !2451)
!2461 = !DILocation(line: 1052, column: 33, scope: !2425, inlinedAt: !2460)
!2462 = !DILocation(line: 1052, column: 45, scope: !2425, inlinedAt: !2460)
!2463 = !DILocation(line: 1054, column: 10, scope: !2425, inlinedAt: !2460)
!2464 = !DILocation(line: 1066, column: 3, scope: !2451)
!2465 = distinct !DISubprogram(name: "quote", scope: !121, file: !121, line: 1070, type: !2466, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2468)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!17, !17}
!2468 = !{!2469}
!2469 = !DILocalVariable(name: "arg", arg: 1, scope: !2465, file: !121, line: 1070, type: !17)
!2470 = !DILocation(line: 1070, column: 20, scope: !2465)
!2471 = !DILocation(line: 1064, column: 14, scope: !2451, inlinedAt: !2472)
!2472 = distinct !DILocation(line: 1072, column: 10, scope: !2465)
!2473 = !DILocation(line: 1064, column: 29, scope: !2451, inlinedAt: !2472)
!2474 = !DILocation(line: 1052, column: 18, scope: !2425, inlinedAt: !2475)
!2475 = distinct !DILocation(line: 1066, column: 10, scope: !2451, inlinedAt: !2472)
!2476 = !DILocation(line: 1052, column: 33, scope: !2425, inlinedAt: !2475)
!2477 = !DILocation(line: 1052, column: 45, scope: !2425, inlinedAt: !2475)
!2478 = !DILocation(line: 1054, column: 10, scope: !2425, inlinedAt: !2475)
!2479 = !DILocation(line: 1072, column: 3, scope: !2465)
!2480 = distinct !DISubprogram(name: "version_etc_arn", scope: !520, file: !520, line: 62, type: !2481, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !516, variables: !2539)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{null, !2483, !17, !17, !17, !2538, !115}
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2485, line: 7, baseType: !2486)
!2485 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2487, line: 241, size: 1728, elements: !2488)
!2487 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2488 = !{!2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2509, !2510, !2511, !2512, !2516, !2517, !2519, !2523, !2526, !2528, !2529, !2530, !2531, !2532, !2533, !2534}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2486, file: !2487, line: 242, baseType: !40, size: 32)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2486, file: !2487, line: 247, baseType: !6, size: 64, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2486, file: !2487, line: 248, baseType: !6, size: 64, offset: 128)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2486, file: !2487, line: 249, baseType: !6, size: 64, offset: 192)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2486, file: !2487, line: 250, baseType: !6, size: 64, offset: 256)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2486, file: !2487, line: 251, baseType: !6, size: 64, offset: 320)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2486, file: !2487, line: 252, baseType: !6, size: 64, offset: 384)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2486, file: !2487, line: 253, baseType: !6, size: 64, offset: 448)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2486, file: !2487, line: 254, baseType: !6, size: 64, offset: 512)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2486, file: !2487, line: 256, baseType: !6, size: 64, offset: 576)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2486, file: !2487, line: 257, baseType: !6, size: 64, offset: 640)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2486, file: !2487, line: 258, baseType: !6, size: 64, offset: 704)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2486, file: !2487, line: 260, baseType: !2502, size: 64, offset: 768)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2487, line: 156, size: 192, elements: !2504)
!2504 = !{!2505, !2506, !2508}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2503, file: !2487, line: 157, baseType: !2502, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2503, file: !2487, line: 158, baseType: !2507, size: 64, offset: 64)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2503, file: !2487, line: 162, baseType: !40, size: 32, offset: 128)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2486, file: !2487, line: 262, baseType: !2507, size: 64, offset: 832)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2486, file: !2487, line: 264, baseType: !40, size: 32, offset: 896)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2486, file: !2487, line: 268, baseType: !40, size: 32, offset: 928)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2486, file: !2487, line: 270, baseType: !2513, size: 64, offset: 960)
!2513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2514, line: 140, baseType: !2515)
!2514 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2515 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2486, file: !2487, line: 274, baseType: !114, size: 16, offset: 1024)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2486, file: !2487, line: 275, baseType: !2518, size: 8, offset: 1040)
!2518 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2486, file: !2487, line: 276, baseType: !2520, size: 8, offset: 1048)
!2520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !2521)
!2521 = !{!2522}
!2522 = !DISubrange(count: 1)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2486, file: !2487, line: 280, baseType: !2524, size: 64, offset: 1088)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2487, line: 150, baseType: null)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2486, file: !2487, line: 289, baseType: !2527, size: 64, offset: 1152)
!2527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2514, line: 141, baseType: !2515)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2486, file: !2487, line: 297, baseType: !8, size: 64, offset: 1216)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2486, file: !2487, line: 298, baseType: !8, size: 64, offset: 1280)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2486, file: !2487, line: 299, baseType: !8, size: 64, offset: 1344)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2486, file: !2487, line: 300, baseType: !8, size: 64, offset: 1408)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2486, file: !2487, line: 302, baseType: !115, size: 64, offset: 1472)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2486, file: !2487, line: 303, baseType: !40, size: 32, offset: 1536)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2486, file: !2487, line: 305, baseType: !2535, size: 160, offset: 1568)
!2535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !2536)
!2536 = !{!2537}
!2537 = !DISubrange(count: 20)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!2539 = !{!2540, !2541, !2542, !2543, !2544, !2545}
!2540 = !DILocalVariable(name: "stream", arg: 1, scope: !2480, file: !520, line: 62, type: !2483)
!2541 = !DILocalVariable(name: "command_name", arg: 2, scope: !2480, file: !520, line: 63, type: !17)
!2542 = !DILocalVariable(name: "package", arg: 3, scope: !2480, file: !520, line: 63, type: !17)
!2543 = !DILocalVariable(name: "version", arg: 4, scope: !2480, file: !520, line: 64, type: !17)
!2544 = !DILocalVariable(name: "authors", arg: 5, scope: !2480, file: !520, line: 65, type: !2538)
!2545 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2480, file: !520, line: 65, type: !115)
!2546 = !DILocation(line: 62, column: 24, scope: !2480)
!2547 = !DILocation(line: 63, column: 30, scope: !2480)
!2548 = !DILocation(line: 63, column: 56, scope: !2480)
!2549 = !DILocation(line: 64, column: 30, scope: !2480)
!2550 = !DILocation(line: 65, column: 39, scope: !2480)
!2551 = !DILocation(line: 65, column: 55, scope: !2480)
!2552 = !DILocation(line: 67, column: 7, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2480, file: !520, line: 67, column: 7)
!2554 = !DILocation(line: 67, column: 7, scope: !2480)
!2555 = !DILocation(line: 68, column: 5, scope: !2553)
!2556 = !DILocation(line: 70, column: 5, scope: !2553)
!2557 = !DILocation(line: 84, column: 3, scope: !2480)
!2558 = !DILocation(line: 86, column: 3, scope: !2480)
!2559 = !DILocation(line: 95, column: 3, scope: !2480)
!2560 = !DILocation(line: 99, column: 7, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2480, file: !520, line: 96, column: 5)
!2562 = !DILocation(line: 102, column: 7, scope: !2561)
!2563 = !DILocation(line: 103, column: 7, scope: !2561)
!2564 = !DILocation(line: 106, column: 7, scope: !2561)
!2565 = !DILocation(line: 107, column: 7, scope: !2561)
!2566 = !DILocation(line: 110, column: 7, scope: !2561)
!2567 = !DILocation(line: 112, column: 7, scope: !2561)
!2568 = !DILocation(line: 117, column: 7, scope: !2561)
!2569 = !DILocation(line: 119, column: 7, scope: !2561)
!2570 = !DILocation(line: 124, column: 7, scope: !2561)
!2571 = !DILocation(line: 126, column: 7, scope: !2561)
!2572 = !DILocation(line: 131, column: 7, scope: !2561)
!2573 = !DILocation(line: 134, column: 7, scope: !2561)
!2574 = !DILocation(line: 139, column: 7, scope: !2561)
!2575 = !DILocation(line: 142, column: 7, scope: !2561)
!2576 = !DILocation(line: 147, column: 7, scope: !2561)
!2577 = !DILocation(line: 151, column: 7, scope: !2561)
!2578 = !DILocation(line: 156, column: 7, scope: !2561)
!2579 = !DILocation(line: 160, column: 7, scope: !2561)
!2580 = !DILocation(line: 167, column: 7, scope: !2561)
!2581 = !DILocation(line: 171, column: 7, scope: !2561)
!2582 = !DILocation(line: 173, column: 1, scope: !2480)
!2583 = distinct !DISubprogram(name: "version_etc_ar", scope: !520, file: !520, line: 180, type: !2584, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !516, variables: !2586)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{null, !2483, !17, !17, !17, !2538}
!2586 = !{!2587, !2588, !2589, !2590, !2591, !2592}
!2587 = !DILocalVariable(name: "stream", arg: 1, scope: !2583, file: !520, line: 180, type: !2483)
!2588 = !DILocalVariable(name: "command_name", arg: 2, scope: !2583, file: !520, line: 181, type: !17)
!2589 = !DILocalVariable(name: "package", arg: 3, scope: !2583, file: !520, line: 181, type: !17)
!2590 = !DILocalVariable(name: "version", arg: 4, scope: !2583, file: !520, line: 182, type: !17)
!2591 = !DILocalVariable(name: "authors", arg: 5, scope: !2583, file: !520, line: 182, type: !2538)
!2592 = !DILocalVariable(name: "n_authors", scope: !2583, file: !520, line: 184, type: !115)
!2593 = !DILocation(line: 180, column: 23, scope: !2583)
!2594 = !DILocation(line: 181, column: 29, scope: !2583)
!2595 = !DILocation(line: 181, column: 55, scope: !2583)
!2596 = !DILocation(line: 182, column: 29, scope: !2583)
!2597 = !DILocation(line: 182, column: 59, scope: !2583)
!2598 = !DILocation(line: 184, column: 10, scope: !2583)
!2599 = !DILocation(line: 186, column: 8, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2583, file: !520, line: 186, column: 3)
!2601 = !DILocation(line: 186, column: 23, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2600, file: !520, line: 186, column: 3)
!2603 = !DILocation(line: 186, column: 3, scope: !2600)
!2604 = !DILocation(line: 186, column: 52, scope: !2602)
!2605 = distinct !{!2605, !2603, !2606}
!2606 = !DILocation(line: 187, column: 5, scope: !2600)
!2607 = !DILocation(line: 188, column: 3, scope: !2583)
!2608 = !DILocation(line: 189, column: 1, scope: !2583)
!2609 = distinct !DISubprogram(name: "version_etc_va", scope: !520, file: !520, line: 196, type: !2610, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !516, variables: !2619)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{null, !2483, !17, !17, !17, !2612}
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !517, line: 189, size: 192, elements: !2614)
!2614 = !{!2615, !2616, !2617, !2618}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2613, file: !517, line: 189, baseType: !134, size: 32)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2613, file: !517, line: 189, baseType: !134, size: 32, offset: 32)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2613, file: !517, line: 189, baseType: !8, size: 64, offset: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2613, file: !517, line: 189, baseType: !8, size: 64, offset: 128)
!2619 = !{!2620, !2621, !2622, !2623, !2624, !2625, !2626}
!2620 = !DILocalVariable(name: "stream", arg: 1, scope: !2609, file: !520, line: 196, type: !2483)
!2621 = !DILocalVariable(name: "command_name", arg: 2, scope: !2609, file: !520, line: 197, type: !17)
!2622 = !DILocalVariable(name: "package", arg: 3, scope: !2609, file: !520, line: 197, type: !17)
!2623 = !DILocalVariable(name: "version", arg: 4, scope: !2609, file: !520, line: 198, type: !17)
!2624 = !DILocalVariable(name: "authors", arg: 5, scope: !2609, file: !520, line: 198, type: !2612)
!2625 = !DILocalVariable(name: "n_authors", scope: !2609, file: !520, line: 200, type: !115)
!2626 = !DILocalVariable(name: "authtab", scope: !2609, file: !520, line: 201, type: !2627)
!2627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 640, elements: !124)
!2628 = !DILocation(line: 196, column: 23, scope: !2609)
!2629 = !DILocation(line: 197, column: 29, scope: !2609)
!2630 = !DILocation(line: 197, column: 55, scope: !2609)
!2631 = !DILocation(line: 198, column: 29, scope: !2609)
!2632 = !DILocation(line: 198, column: 46, scope: !2609)
!2633 = !DILocation(line: 201, column: 3, scope: !2609)
!2634 = !DILocation(line: 201, column: 15, scope: !2609)
!2635 = !DILocation(line: 200, column: 10, scope: !2609)
!2636 = !DILocation(line: 205, column: 35, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2638, file: !520, line: 203, column: 3)
!2638 = distinct !DILexicalBlock(scope: !2609, file: !520, line: 203, column: 3)
!2639 = !DILocation(line: 205, column: 14, scope: !2637)
!2640 = !DILocation(line: 205, column: 33, scope: !2637)
!2641 = !DILocation(line: 205, column: 67, scope: !2637)
!2642 = !DILocation(line: 203, column: 3, scope: !2638)
!2643 = !DILocation(line: 208, column: 3, scope: !2609)
!2644 = !DILocation(line: 210, column: 1, scope: !2609)
!2645 = distinct !DISubprogram(name: "version_etc", scope: !520, file: !520, line: 227, type: !2646, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !516, variables: !2648)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{null, !2483, !17, !17, !17, null}
!2648 = !{!2649, !2650, !2651, !2652, !2653}
!2649 = !DILocalVariable(name: "stream", arg: 1, scope: !2645, file: !520, line: 227, type: !2483)
!2650 = !DILocalVariable(name: "command_name", arg: 2, scope: !2645, file: !520, line: 228, type: !17)
!2651 = !DILocalVariable(name: "package", arg: 3, scope: !2645, file: !520, line: 228, type: !17)
!2652 = !DILocalVariable(name: "version", arg: 4, scope: !2645, file: !520, line: 229, type: !17)
!2653 = !DILocalVariable(name: "authors", scope: !2645, file: !520, line: 231, type: !2654)
!2654 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2655, line: 46, baseType: !2656)
!2655 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2657, line: 48, baseType: !2658)
!2657 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !517, line: 231, baseType: !2659)
!2659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2613, size: 192, elements: !2521)
!2660 = !DILocation(line: 227, column: 20, scope: !2645)
!2661 = !DILocation(line: 228, column: 26, scope: !2645)
!2662 = !DILocation(line: 228, column: 52, scope: !2645)
!2663 = !DILocation(line: 229, column: 26, scope: !2645)
!2664 = !DILocation(line: 231, column: 3, scope: !2645)
!2665 = !DILocation(line: 231, column: 11, scope: !2645)
!2666 = !DILocation(line: 233, column: 3, scope: !2645)
!2667 = !DILocation(line: 234, column: 3, scope: !2645)
!2668 = !DILocation(line: 235, column: 3, scope: !2645)
!2669 = !DILocation(line: 236, column: 1, scope: !2645)
!2670 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !520, file: !520, line: 239, type: !585, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !516, variables: !4)
!2671 = !DILocation(line: 245, column: 3, scope: !2670)
!2672 = !DILocation(line: 251, column: 3, scope: !2670)
!2673 = !DILocation(line: 256, column: 3, scope: !2670)
!2674 = !DILocation(line: 258, column: 1, scope: !2670)
!2675 = distinct !DISubprogram(name: "xnmalloc", scope: !528, file: !528, line: 105, type: !2676, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !524, variables: !2678)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!8, !115, !115}
!2678 = !{!2679, !2680}
!2679 = !DILocalVariable(name: "n", arg: 1, scope: !2675, file: !528, line: 105, type: !115)
!2680 = !DILocalVariable(name: "s", arg: 2, scope: !2675, file: !528, line: 105, type: !115)
!2681 = !DILocation(line: 105, column: 18, scope: !2675)
!2682 = !DILocation(line: 105, column: 28, scope: !2675)
!2683 = !DILocation(line: 107, column: 7, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2675, file: !528, line: 107, column: 7)
!2685 = !DILocation(line: 107, column: 7, scope: !2675)
!2686 = !DILocation(line: 108, column: 5, scope: !2684)
!2687 = !DILocation(line: 109, column: 21, scope: !2675)
!2688 = !DILocalVariable(name: "n", arg: 1, scope: !2689, file: !2690, line: 39, type: !115)
!2689 = distinct !DISubprogram(name: "xmalloc", scope: !2690, file: !2690, line: 39, type: !2691, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !524, variables: !2693)
!2690 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!8, !115}
!2693 = !{!2688, !2694}
!2694 = !DILocalVariable(name: "p", scope: !2689, file: !2690, line: 41, type: !8)
!2695 = !DILocation(line: 39, column: 17, scope: !2689, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 109, column: 10, scope: !2675)
!2697 = !DILocation(line: 41, column: 13, scope: !2689, inlinedAt: !2696)
!2698 = !DILocation(line: 41, column: 9, scope: !2689, inlinedAt: !2696)
!2699 = !DILocation(line: 42, column: 8, scope: !2700, inlinedAt: !2696)
!2700 = distinct !DILexicalBlock(scope: !2689, file: !2690, line: 42, column: 7)
!2701 = !DILocation(line: 42, column: 15, scope: !2700, inlinedAt: !2696)
!2702 = !DILocation(line: 42, column: 10, scope: !2700, inlinedAt: !2696)
!2703 = !DILocation(line: 43, column: 5, scope: !2700, inlinedAt: !2696)
!2704 = !DILocation(line: 109, column: 3, scope: !2675)
!2705 = !DILocation(line: 39, column: 17, scope: !2689)
!2706 = !DILocation(line: 41, column: 13, scope: !2689)
!2707 = !DILocation(line: 41, column: 9, scope: !2689)
!2708 = !DILocation(line: 42, column: 8, scope: !2700)
!2709 = !DILocation(line: 42, column: 15, scope: !2700)
!2710 = !DILocation(line: 42, column: 10, scope: !2700)
!2711 = !DILocation(line: 43, column: 5, scope: !2700)
!2712 = !DILocation(line: 44, column: 3, scope: !2689)
!2713 = distinct !DISubprogram(name: "xnrealloc", scope: !528, file: !528, line: 118, type: !2714, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !524, variables: !2716)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!8, !8, !115, !115}
!2716 = !{!2717, !2718, !2719}
!2717 = !DILocalVariable(name: "p", arg: 1, scope: !2713, file: !528, line: 118, type: !8)
!2718 = !DILocalVariable(name: "n", arg: 2, scope: !2713, file: !528, line: 118, type: !115)
!2719 = !DILocalVariable(name: "s", arg: 3, scope: !2713, file: !528, line: 118, type: !115)
!2720 = !DILocation(line: 118, column: 18, scope: !2713)
!2721 = !DILocation(line: 118, column: 28, scope: !2713)
!2722 = !DILocation(line: 118, column: 38, scope: !2713)
!2723 = !DILocation(line: 120, column: 7, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2713, file: !528, line: 120, column: 7)
!2725 = !DILocation(line: 120, column: 7, scope: !2713)
!2726 = !DILocation(line: 121, column: 5, scope: !2724)
!2727 = !DILocation(line: 122, column: 25, scope: !2713)
!2728 = !DILocalVariable(name: "p", arg: 1, scope: !2729, file: !2690, line: 51, type: !8)
!2729 = distinct !DISubprogram(name: "xrealloc", scope: !2690, file: !2690, line: 51, type: !2730, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !524, variables: !2732)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!8, !8, !115}
!2732 = !{!2728, !2733}
!2733 = !DILocalVariable(name: "n", arg: 2, scope: !2729, file: !2690, line: 51, type: !115)
!2734 = !DILocation(line: 51, column: 17, scope: !2729, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 122, column: 10, scope: !2713)
!2736 = !DILocation(line: 51, column: 27, scope: !2729, inlinedAt: !2735)
!2737 = !DILocation(line: 53, column: 8, scope: !2738, inlinedAt: !2735)
!2738 = distinct !DILexicalBlock(scope: !2729, file: !2690, line: 53, column: 7)
!2739 = !DILocation(line: 53, column: 13, scope: !2738, inlinedAt: !2735)
!2740 = !DILocation(line: 53, column: 10, scope: !2738, inlinedAt: !2735)
!2741 = !DILocation(line: 57, column: 7, scope: !2742, inlinedAt: !2735)
!2742 = distinct !DILexicalBlock(scope: !2738, file: !2690, line: 54, column: 5)
!2743 = !DILocation(line: 58, column: 7, scope: !2742, inlinedAt: !2735)
!2744 = !DILocation(line: 61, column: 7, scope: !2729, inlinedAt: !2735)
!2745 = !DILocation(line: 62, column: 8, scope: !2746, inlinedAt: !2735)
!2746 = distinct !DILexicalBlock(scope: !2729, file: !2690, line: 62, column: 7)
!2747 = !DILocation(line: 62, column: 13, scope: !2746, inlinedAt: !2735)
!2748 = !DILocation(line: 62, column: 10, scope: !2746, inlinedAt: !2735)
!2749 = !DILocation(line: 63, column: 5, scope: !2746, inlinedAt: !2735)
!2750 = !DILocation(line: 122, column: 3, scope: !2713)
!2751 = !DILocation(line: 51, column: 17, scope: !2729)
!2752 = !DILocation(line: 51, column: 27, scope: !2729)
!2753 = !DILocation(line: 53, column: 8, scope: !2738)
!2754 = !DILocation(line: 53, column: 13, scope: !2738)
!2755 = !DILocation(line: 53, column: 10, scope: !2738)
!2756 = !DILocation(line: 57, column: 7, scope: !2742)
!2757 = !DILocation(line: 58, column: 7, scope: !2742)
!2758 = !DILocation(line: 61, column: 7, scope: !2729)
!2759 = !DILocation(line: 62, column: 8, scope: !2746)
!2760 = !DILocation(line: 62, column: 13, scope: !2746)
!2761 = !DILocation(line: 62, column: 10, scope: !2746)
!2762 = !DILocation(line: 63, column: 5, scope: !2746)
!2763 = !DILocation(line: 65, column: 1, scope: !2729)
!2764 = !DILocation(line: 180, column: 19, scope: !529)
!2765 = !DILocation(line: 180, column: 30, scope: !529)
!2766 = !DILocation(line: 180, column: 41, scope: !529)
!2767 = !DILocation(line: 182, column: 14, scope: !529)
!2768 = !DILocation(line: 182, column: 10, scope: !529)
!2769 = !DILocation(line: 184, column: 9, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !529, file: !528, line: 184, column: 7)
!2771 = !DILocation(line: 184, column: 7, scope: !529)
!2772 = !DILocation(line: 186, column: 13, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !528, line: 186, column: 11)
!2774 = distinct !DILexicalBlock(scope: !2770, file: !528, line: 185, column: 5)
!2775 = !DILocation(line: 186, column: 11, scope: !2774)
!2776 = !DILocation(line: 194, column: 30, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2773, file: !528, line: 187, column: 9)
!2778 = !DILocation(line: 195, column: 16, scope: !2777)
!2779 = !DILocation(line: 195, column: 13, scope: !2777)
!2780 = !DILocation(line: 196, column: 9, scope: !2777)
!2781 = !DILocation(line: 204, column: 69, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !528, line: 204, column: 11)
!2783 = distinct !DILexicalBlock(scope: !2770, file: !528, line: 199, column: 5)
!2784 = !DILocation(line: 205, column: 11, scope: !2782)
!2785 = !DILocation(line: 204, column: 11, scope: !2783)
!2786 = !DILocation(line: 206, column: 9, scope: !2782)
!2787 = !DILocation(line: 210, column: 7, scope: !529)
!2788 = !DILocation(line: 211, column: 25, scope: !529)
!2789 = !DILocation(line: 51, column: 17, scope: !2729, inlinedAt: !2790)
!2790 = distinct !DILocation(line: 211, column: 10, scope: !529)
!2791 = !DILocation(line: 51, column: 27, scope: !2729, inlinedAt: !2790)
!2792 = !DILocation(line: 53, column: 10, scope: !2738, inlinedAt: !2790)
!2793 = !DILocation(line: 207, column: 14, scope: !2783)
!2794 = !DILocation(line: 207, column: 18, scope: !2783)
!2795 = !DILocation(line: 207, column: 9, scope: !2783)
!2796 = !DILocation(line: 53, column: 8, scope: !2738, inlinedAt: !2790)
!2797 = !DILocation(line: 57, column: 7, scope: !2742, inlinedAt: !2790)
!2798 = !DILocation(line: 58, column: 7, scope: !2742, inlinedAt: !2790)
!2799 = !DILocation(line: 61, column: 7, scope: !2729, inlinedAt: !2790)
!2800 = !DILocation(line: 62, column: 8, scope: !2746, inlinedAt: !2790)
!2801 = !DILocation(line: 62, column: 13, scope: !2746, inlinedAt: !2790)
!2802 = !DILocation(line: 62, column: 10, scope: !2746, inlinedAt: !2790)
!2803 = !DILocation(line: 63, column: 5, scope: !2746, inlinedAt: !2790)
!2804 = !DILocation(line: 211, column: 3, scope: !529)
!2805 = distinct !DISubprogram(name: "xcharalloc", scope: !528, file: !528, line: 220, type: !1757, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !524, variables: !2806)
!2806 = !{!2807}
!2807 = !DILocalVariable(name: "n", arg: 1, scope: !2805, file: !528, line: 220, type: !115)
!2808 = !DILocation(line: 220, column: 20, scope: !2805)
!2809 = !DILocation(line: 39, column: 17, scope: !2689, inlinedAt: !2810)
!2810 = distinct !DILocation(line: 222, column: 10, scope: !2805)
!2811 = !DILocation(line: 41, column: 13, scope: !2689, inlinedAt: !2810)
!2812 = !DILocation(line: 41, column: 9, scope: !2689, inlinedAt: !2810)
!2813 = !DILocation(line: 42, column: 8, scope: !2700, inlinedAt: !2810)
!2814 = !DILocation(line: 42, column: 15, scope: !2700, inlinedAt: !2810)
!2815 = !DILocation(line: 42, column: 10, scope: !2700, inlinedAt: !2810)
!2816 = !DILocation(line: 43, column: 5, scope: !2700, inlinedAt: !2810)
!2817 = !DILocation(line: 222, column: 3, scope: !2805)
!2818 = distinct !DISubprogram(name: "x2realloc", scope: !2690, file: !2690, line: 74, type: !2819, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !524, variables: !2821)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!8, !8, !532}
!2821 = !{!2822, !2823}
!2822 = !DILocalVariable(name: "p", arg: 1, scope: !2818, file: !2690, line: 74, type: !8)
!2823 = !DILocalVariable(name: "pn", arg: 2, scope: !2818, file: !2690, line: 74, type: !532)
!2824 = !DILocation(line: 74, column: 18, scope: !2818)
!2825 = !DILocation(line: 74, column: 29, scope: !2818)
!2826 = !DILocation(line: 180, column: 19, scope: !529, inlinedAt: !2827)
!2827 = distinct !DILocation(line: 76, column: 10, scope: !2818)
!2828 = !DILocation(line: 180, column: 30, scope: !529, inlinedAt: !2827)
!2829 = !DILocation(line: 180, column: 41, scope: !529, inlinedAt: !2827)
!2830 = !DILocation(line: 182, column: 14, scope: !529, inlinedAt: !2827)
!2831 = !DILocation(line: 182, column: 10, scope: !529, inlinedAt: !2827)
!2832 = !DILocation(line: 184, column: 9, scope: !2770, inlinedAt: !2827)
!2833 = !DILocation(line: 184, column: 7, scope: !529, inlinedAt: !2827)
!2834 = !DILocation(line: 186, column: 13, scope: !2773, inlinedAt: !2827)
!2835 = !DILocation(line: 186, column: 11, scope: !2774, inlinedAt: !2827)
!2836 = !DILocation(line: 210, column: 7, scope: !529, inlinedAt: !2827)
!2837 = !DILocation(line: 51, column: 17, scope: !2729, inlinedAt: !2838)
!2838 = distinct !DILocation(line: 211, column: 10, scope: !529, inlinedAt: !2827)
!2839 = !DILocation(line: 51, column: 27, scope: !2729, inlinedAt: !2838)
!2840 = !DILocation(line: 53, column: 10, scope: !2738, inlinedAt: !2838)
!2841 = !DILocation(line: 205, column: 11, scope: !2782, inlinedAt: !2827)
!2842 = !DILocation(line: 204, column: 11, scope: !2783, inlinedAt: !2827)
!2843 = !DILocation(line: 206, column: 9, scope: !2782, inlinedAt: !2827)
!2844 = !DILocation(line: 207, column: 14, scope: !2783, inlinedAt: !2827)
!2845 = !DILocation(line: 207, column: 18, scope: !2783, inlinedAt: !2827)
!2846 = !DILocation(line: 207, column: 9, scope: !2783, inlinedAt: !2827)
!2847 = !DILocation(line: 53, column: 8, scope: !2738, inlinedAt: !2838)
!2848 = !DILocation(line: 57, column: 7, scope: !2742, inlinedAt: !2838)
!2849 = !DILocation(line: 58, column: 7, scope: !2742, inlinedAt: !2838)
!2850 = !DILocation(line: 61, column: 7, scope: !2729, inlinedAt: !2838)
!2851 = !DILocation(line: 62, column: 8, scope: !2746, inlinedAt: !2838)
!2852 = !DILocation(line: 62, column: 13, scope: !2746, inlinedAt: !2838)
!2853 = !DILocation(line: 62, column: 10, scope: !2746, inlinedAt: !2838)
!2854 = !DILocation(line: 63, column: 5, scope: !2746, inlinedAt: !2838)
!2855 = !DILocation(line: 76, column: 3, scope: !2818)
!2856 = distinct !DISubprogram(name: "xzalloc", scope: !2690, file: !2690, line: 84, type: !2691, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !524, variables: !2857)
!2857 = !{!2858}
!2858 = !DILocalVariable(name: "s", arg: 1, scope: !2856, file: !2690, line: 84, type: !115)
!2859 = !DILocation(line: 84, column: 17, scope: !2856)
!2860 = !DILocation(line: 39, column: 17, scope: !2689, inlinedAt: !2861)
!2861 = distinct !DILocation(line: 86, column: 18, scope: !2856)
!2862 = !DILocation(line: 41, column: 13, scope: !2689, inlinedAt: !2861)
!2863 = !DILocation(line: 41, column: 9, scope: !2689, inlinedAt: !2861)
!2864 = !DILocation(line: 42, column: 8, scope: !2700, inlinedAt: !2861)
!2865 = !DILocation(line: 42, column: 15, scope: !2700, inlinedAt: !2861)
!2866 = !DILocation(line: 42, column: 10, scope: !2700, inlinedAt: !2861)
!2867 = !DILocation(line: 43, column: 5, scope: !2700, inlinedAt: !2861)
!2868 = !DILocation(line: 86, column: 10, scope: !2856)
!2869 = !DILocation(line: 86, column: 3, scope: !2856)
!2870 = distinct !DISubprogram(name: "xcalloc", scope: !2690, file: !2690, line: 93, type: !2676, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !524, variables: !2871)
!2871 = !{!2872, !2873, !2874}
!2872 = !DILocalVariable(name: "n", arg: 1, scope: !2870, file: !2690, line: 93, type: !115)
!2873 = !DILocalVariable(name: "s", arg: 2, scope: !2870, file: !2690, line: 93, type: !115)
!2874 = !DILocalVariable(name: "p", scope: !2870, file: !2690, line: 95, type: !8)
!2875 = !DILocation(line: 93, column: 17, scope: !2870)
!2876 = !DILocation(line: 93, column: 27, scope: !2870)
!2877 = !DILocation(line: 100, column: 7, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2870, file: !2690, line: 100, column: 7)
!2879 = !DILocation(line: 101, column: 7, scope: !2878)
!2880 = !DILocation(line: 101, column: 18, scope: !2878)
!2881 = !DILocation(line: 95, column: 9, scope: !2870)
!2882 = !DILocation(line: 101, column: 16, scope: !2878)
!2883 = !DILocation(line: 100, column: 7, scope: !2870)
!2884 = !DILocation(line: 102, column: 5, scope: !2878)
!2885 = !DILocation(line: 103, column: 3, scope: !2870)
!2886 = distinct !DISubprogram(name: "xmemdup", scope: !2690, file: !2690, line: 111, type: !2887, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !524, variables: !2891)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!8, !2889, !115}
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2891 = !{!2892, !2893}
!2892 = !DILocalVariable(name: "p", arg: 1, scope: !2886, file: !2690, line: 111, type: !2889)
!2893 = !DILocalVariable(name: "s", arg: 2, scope: !2886, file: !2690, line: 111, type: !115)
!2894 = !DILocation(line: 111, column: 22, scope: !2886)
!2895 = !DILocation(line: 111, column: 32, scope: !2886)
!2896 = !DILocation(line: 39, column: 17, scope: !2689, inlinedAt: !2897)
!2897 = distinct !DILocation(line: 113, column: 18, scope: !2886)
!2898 = !DILocation(line: 41, column: 13, scope: !2689, inlinedAt: !2897)
!2899 = !DILocation(line: 41, column: 9, scope: !2689, inlinedAt: !2897)
!2900 = !DILocation(line: 42, column: 8, scope: !2700, inlinedAt: !2897)
!2901 = !DILocation(line: 42, column: 15, scope: !2700, inlinedAt: !2897)
!2902 = !DILocation(line: 42, column: 10, scope: !2700, inlinedAt: !2897)
!2903 = !DILocation(line: 43, column: 5, scope: !2700, inlinedAt: !2897)
!2904 = !DILocation(line: 113, column: 10, scope: !2886)
!2905 = !DILocation(line: 113, column: 3, scope: !2886)
!2906 = distinct !DISubprogram(name: "xstrdup", scope: !2690, file: !2690, line: 119, type: !1959, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !524, variables: !2907)
!2907 = !{!2908}
!2908 = !DILocalVariable(name: "string", arg: 1, scope: !2906, file: !2690, line: 119, type: !17)
!2909 = !DILocation(line: 119, column: 22, scope: !2906)
!2910 = !DILocation(line: 121, column: 27, scope: !2906)
!2911 = !DILocation(line: 121, column: 43, scope: !2906)
!2912 = !DILocation(line: 111, column: 22, scope: !2886, inlinedAt: !2913)
!2913 = distinct !DILocation(line: 121, column: 10, scope: !2906)
!2914 = !DILocation(line: 111, column: 32, scope: !2886, inlinedAt: !2913)
!2915 = !DILocation(line: 39, column: 17, scope: !2689, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 113, column: 18, scope: !2886, inlinedAt: !2913)
!2917 = !DILocation(line: 41, column: 13, scope: !2689, inlinedAt: !2916)
!2918 = !DILocation(line: 41, column: 9, scope: !2689, inlinedAt: !2916)
!2919 = !DILocation(line: 42, column: 8, scope: !2700, inlinedAt: !2916)
!2920 = !DILocation(line: 42, column: 15, scope: !2700, inlinedAt: !2916)
!2921 = !DILocation(line: 42, column: 10, scope: !2700, inlinedAt: !2916)
!2922 = !DILocation(line: 43, column: 5, scope: !2700, inlinedAt: !2916)
!2923 = !DILocation(line: 113, column: 10, scope: !2886, inlinedAt: !2913)
!2924 = !DILocation(line: 121, column: 3, scope: !2906)
!2925 = distinct !DISubprogram(name: "xalloc_die", scope: !2926, file: !2926, line: 32, type: !585, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !541, variables: !4)
!2926 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2927 = !DILocation(line: 34, column: 10, scope: !2925)
!2928 = !DILocation(line: 34, column: 33, scope: !2925)
!2929 = !DILocation(line: 34, column: 3, scope: !2925)
!2930 = !DILocation(line: 40, column: 3, scope: !2925)
!2931 = distinct !DISubprogram(name: "rpl_calloc", scope: !2932, file: !2932, line: 42, type: !2676, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !543, variables: !2933)
!2932 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2933 = !{!2934, !2935, !2936, !2937}
!2934 = !DILocalVariable(name: "n", arg: 1, scope: !2931, file: !2932, line: 42, type: !115)
!2935 = !DILocalVariable(name: "s", arg: 2, scope: !2931, file: !2932, line: 42, type: !115)
!2936 = !DILocalVariable(name: "result", scope: !2931, file: !2932, line: 44, type: !8)
!2937 = !DILocalVariable(name: "bytes", scope: !2938, file: !2932, line: 56, type: !115)
!2938 = distinct !DILexicalBlock(scope: !2939, file: !2932, line: 53, column: 5)
!2939 = distinct !DILexicalBlock(scope: !2931, file: !2932, line: 47, column: 7)
!2940 = !DILocation(line: 42, column: 20, scope: !2931)
!2941 = !DILocation(line: 42, column: 30, scope: !2931)
!2942 = !DILocation(line: 47, column: 9, scope: !2939)
!2943 = !DILocation(line: 47, column: 19, scope: !2939)
!2944 = !DILocation(line: 47, column: 14, scope: !2939)
!2945 = !DILocation(line: 56, column: 24, scope: !2938)
!2946 = !DILocation(line: 56, column: 14, scope: !2938)
!2947 = !DILocation(line: 57, column: 17, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2938, file: !2932, line: 57, column: 11)
!2949 = !DILocation(line: 57, column: 21, scope: !2948)
!2950 = !DILocation(line: 57, column: 11, scope: !2938)
!2951 = !DILocation(line: 59, column: 11, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2948, file: !2932, line: 58, column: 9)
!2953 = !DILocation(line: 59, column: 17, scope: !2952)
!2954 = !DILocation(line: 65, column: 12, scope: !2931)
!2955 = !DILocation(line: 44, column: 9, scope: !2931)
!2956 = !DILocation(line: 72, column: 3, scope: !2931)
!2957 = !DILocation(line: 73, column: 1, scope: !2931)
!2958 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !2959, file: !2959, line: 334, type: !2960, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !2974)
!2959 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!115, !2962, !17, !115, !2963}
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1007, line: 6, baseType: !2965)
!2965 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1009, line: 21, baseType: !2966)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1009, line: 13, size: 64, elements: !2967)
!2967 = !{!2968, !2969}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2966, file: !1009, line: 15, baseType: !40, size: 32)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2966, file: !1009, line: 20, baseType: !2970, size: 32, offset: 32)
!2970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2966, file: !1009, line: 16, size: 32, elements: !2971)
!2971 = !{!2972, !2973}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2970, file: !1009, line: 18, baseType: !134, size: 32)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2970, file: !1009, line: 19, baseType: !1018, size: 32)
!2974 = !{!2975, !2976, !2977, !2978, !2979, !2980, !2981}
!2975 = !DILocalVariable(name: "pwc", arg: 1, scope: !2958, file: !2959, line: 334, type: !2962)
!2976 = !DILocalVariable(name: "s", arg: 2, scope: !2958, file: !2959, line: 334, type: !17)
!2977 = !DILocalVariable(name: "n", arg: 3, scope: !2958, file: !2959, line: 334, type: !115)
!2978 = !DILocalVariable(name: "ps", arg: 4, scope: !2958, file: !2959, line: 334, type: !2963)
!2979 = !DILocalVariable(name: "ret", scope: !2958, file: !2959, line: 336, type: !115)
!2980 = !DILocalVariable(name: "wc", scope: !2958, file: !2959, line: 337, type: !1023)
!2981 = !DILocalVariable(name: "uc", scope: !2982, file: !2959, line: 398, type: !9)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !2959, line: 397, column: 5)
!2983 = distinct !DILexicalBlock(scope: !2958, file: !2959, line: 396, column: 7)
!2984 = !DILocation(line: 334, column: 23, scope: !2958)
!2985 = !DILocation(line: 334, column: 40, scope: !2958)
!2986 = !DILocation(line: 334, column: 50, scope: !2958)
!2987 = !DILocation(line: 334, column: 64, scope: !2958)
!2988 = !DILocation(line: 337, column: 3, scope: !2958)
!2989 = !DILocation(line: 353, column: 9, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2958, file: !2959, line: 353, column: 7)
!2991 = !DILocation(line: 353, column: 7, scope: !2958)
!2992 = !DILocation(line: 388, column: 9, scope: !2958)
!2993 = !DILocation(line: 336, column: 10, scope: !2958)
!2994 = !DILocation(line: 396, column: 19, scope: !2983)
!2995 = !DILocation(line: 396, column: 31, scope: !2983)
!2996 = !DILocation(line: 396, column: 26, scope: !2983)
!2997 = !DILocation(line: 396, column: 41, scope: !2983)
!2998 = !DILocation(line: 396, column: 7, scope: !2958)
!2999 = !DILocation(line: 398, column: 26, scope: !2982)
!3000 = !DILocation(line: 398, column: 21, scope: !2982)
!3001 = !DILocation(line: 399, column: 14, scope: !2982)
!3002 = !DILocation(line: 399, column: 12, scope: !2982)
!3003 = !DILocation(line: 405, column: 1, scope: !2958)
!3004 = distinct !DISubprogram(name: "close_stream", scope: !3005, file: !3005, line: 56, type: !3006, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !548, variables: !3048)
!3005 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!40, !3008}
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2485, line: 7, baseType: !3010)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2487, line: 241, size: 1728, elements: !3011)
!3011 = !{!3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3010, file: !2487, line: 242, baseType: !40, size: 32)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3010, file: !2487, line: 247, baseType: !6, size: 64, offset: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3010, file: !2487, line: 248, baseType: !6, size: 64, offset: 128)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3010, file: !2487, line: 249, baseType: !6, size: 64, offset: 192)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3010, file: !2487, line: 250, baseType: !6, size: 64, offset: 256)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3010, file: !2487, line: 251, baseType: !6, size: 64, offset: 320)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3010, file: !2487, line: 252, baseType: !6, size: 64, offset: 384)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3010, file: !2487, line: 253, baseType: !6, size: 64, offset: 448)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3010, file: !2487, line: 254, baseType: !6, size: 64, offset: 512)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3010, file: !2487, line: 256, baseType: !6, size: 64, offset: 576)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3010, file: !2487, line: 257, baseType: !6, size: 64, offset: 640)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3010, file: !2487, line: 258, baseType: !6, size: 64, offset: 704)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3010, file: !2487, line: 260, baseType: !3025, size: 64, offset: 768)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2487, line: 156, size: 192, elements: !3027)
!3027 = !{!3028, !3029, !3031}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3026, file: !2487, line: 157, baseType: !3025, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3026, file: !2487, line: 158, baseType: !3030, size: 64, offset: 64)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3026, file: !2487, line: 162, baseType: !40, size: 32, offset: 128)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3010, file: !2487, line: 262, baseType: !3030, size: 64, offset: 832)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3010, file: !2487, line: 264, baseType: !40, size: 32, offset: 896)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3010, file: !2487, line: 268, baseType: !40, size: 32, offset: 928)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3010, file: !2487, line: 270, baseType: !2513, size: 64, offset: 960)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3010, file: !2487, line: 274, baseType: !114, size: 16, offset: 1024)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3010, file: !2487, line: 275, baseType: !2518, size: 8, offset: 1040)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3010, file: !2487, line: 276, baseType: !2520, size: 8, offset: 1048)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3010, file: !2487, line: 280, baseType: !2524, size: 64, offset: 1088)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3010, file: !2487, line: 289, baseType: !2527, size: 64, offset: 1152)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3010, file: !2487, line: 297, baseType: !8, size: 64, offset: 1216)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3010, file: !2487, line: 298, baseType: !8, size: 64, offset: 1280)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3010, file: !2487, line: 299, baseType: !8, size: 64, offset: 1344)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3010, file: !2487, line: 300, baseType: !8, size: 64, offset: 1408)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3010, file: !2487, line: 302, baseType: !115, size: 64, offset: 1472)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3010, file: !2487, line: 303, baseType: !40, size: 32, offset: 1536)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3010, file: !2487, line: 305, baseType: !2535, size: 160, offset: 1568)
!3048 = !{!3049, !3050, !3052, !3053}
!3049 = !DILocalVariable(name: "stream", arg: 1, scope: !3004, file: !3005, line: 56, type: !3008)
!3050 = !DILocalVariable(name: "some_pending", scope: !3004, file: !3005, line: 58, type: !3051)
!3051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!3052 = !DILocalVariable(name: "prev_fail", scope: !3004, file: !3005, line: 59, type: !3051)
!3053 = !DILocalVariable(name: "fclose_fail", scope: !3004, file: !3005, line: 60, type: !3051)
!3054 = !DILocation(line: 56, column: 21, scope: !3004)
!3055 = !DILocation(line: 58, column: 30, scope: !3004)
!3056 = !DILocalVariable(name: "__stream", arg: 1, scope: !3057, file: !3058, line: 132, type: !3008)
!3057 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3058, file: !3058, line: 132, type: !3006, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !548, variables: !3059)
!3058 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3059 = !{!3056}
!3060 = !DILocation(line: 132, column: 1, scope: !3057, inlinedAt: !3061)
!3061 = distinct !DILocation(line: 59, column: 27, scope: !3004)
!3062 = !DILocation(line: 134, column: 10, scope: !3057, inlinedAt: !3061)
!3063 = !{!3064, !650, i64 0}
!3064 = !{!"_IO_FILE", !650, i64 0, !577, i64 8, !577, i64 16, !577, i64 24, !577, i64 32, !577, i64 40, !577, i64 48, !577, i64 56, !577, i64 64, !577, i64 72, !577, i64 80, !577, i64 88, !577, i64 96, !577, i64 104, !650, i64 112, !650, i64 116, !1802, i64 120, !1258, i64 128, !578, i64 130, !578, i64 131, !577, i64 136, !1802, i64 144, !577, i64 152, !577, i64 160, !577, i64 168, !577, i64 176, !1802, i64 184, !650, i64 192, !578, i64 196}
!3065 = !DILocation(line: 59, column: 43, scope: !3004)
!3066 = !DILocation(line: 60, column: 29, scope: !3004)
!3067 = !DILocation(line: 60, column: 45, scope: !3004)
!3068 = !DILocation(line: 70, column: 17, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3004, file: !3005, line: 70, column: 7)
!3070 = !DILocation(line: 58, column: 50, scope: !3004)
!3071 = !DILocation(line: 70, column: 33, scope: !3069)
!3072 = !DILocation(line: 70, column: 53, scope: !3069)
!3073 = !DILocation(line: 70, column: 59, scope: !3069)
!3074 = !DILocation(line: 70, column: 7, scope: !3004)
!3075 = !DILocation(line: 72, column: 11, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3069, file: !3005, line: 71, column: 5)
!3077 = !DILocation(line: 73, column: 9, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3076, file: !3005, line: 72, column: 11)
!3079 = !DILocation(line: 73, column: 15, scope: !3078)
!3080 = !DILocation(line: 78, column: 1, scope: !3004)
!3081 = distinct !DISubprogram(name: "hard_locale", scope: !3082, file: !3082, line: 38, type: !3083, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !3085)
!3082 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!59, !40}
!3085 = !{!3086, !3087, !3088}
!3086 = !DILocalVariable(name: "category", arg: 1, scope: !3081, file: !3082, line: 38, type: !40)
!3087 = !DILocalVariable(name: "hard", scope: !3081, file: !3082, line: 40, type: !59)
!3088 = !DILocalVariable(name: "p", scope: !3081, file: !3082, line: 41, type: !17)
!3089 = !DILocation(line: 38, column: 18, scope: !3081)
!3090 = !DILocation(line: 40, column: 8, scope: !3081)
!3091 = !DILocation(line: 41, column: 19, scope: !3081)
!3092 = !DILocation(line: 41, column: 15, scope: !3081)
!3093 = !DILocation(line: 43, column: 7, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3081, file: !3082, line: 43, column: 7)
!3095 = !DILocation(line: 43, column: 7, scope: !3081)
!3096 = !DILocation(line: 47, column: 15, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !3082, line: 47, column: 15)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !3082, line: 46, column: 9)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !3082, line: 45, column: 11)
!3100 = distinct !DILexicalBlock(scope: !3094, file: !3082, line: 44, column: 5)
!3101 = !DILocation(line: 47, column: 31, scope: !3097)
!3102 = !DILocation(line: 47, column: 36, scope: !3097)
!3103 = !DILocation(line: 47, column: 39, scope: !3097)
!3104 = !DILocation(line: 47, column: 59, scope: !3097)
!3105 = !DILocation(line: 47, column: 15, scope: !3098)
!3106 = !DILocation(line: 48, column: 13, scope: !3097)
!3107 = !DILocation(line: 71, column: 3, scope: !3081)
!3108 = distinct !DISubprogram(name: "locale_charset", scope: !514, file: !514, line: 393, type: !3109, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !170, variables: !3111)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!17}
!3111 = !{!3112, !3113}
!3112 = !DILocalVariable(name: "codeset", scope: !3108, file: !514, line: 395, type: !17)
!3113 = !DILocalVariable(name: "aliases", scope: !3108, file: !514, line: 396, type: !17)
!3114 = !DILocalVariable(name: "buf1", scope: !3115, file: !514, line: 196, type: !3182)
!3115 = distinct !DILexicalBlock(scope: !3116, file: !514, line: 194, column: 21)
!3116 = distinct !DILexicalBlock(scope: !3117, file: !514, line: 193, column: 19)
!3117 = distinct !DILexicalBlock(scope: !3118, file: !514, line: 193, column: 19)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !514, line: 188, column: 17)
!3119 = distinct !DILexicalBlock(scope: !3120, file: !514, line: 181, column: 19)
!3120 = distinct !DILexicalBlock(scope: !3121, file: !514, line: 177, column: 13)
!3121 = distinct !DILexicalBlock(scope: !3122, file: !514, line: 173, column: 15)
!3122 = distinct !DILexicalBlock(scope: !3123, file: !514, line: 161, column: 9)
!3123 = distinct !DILexicalBlock(scope: !3124, file: !514, line: 157, column: 11)
!3124 = distinct !DILexicalBlock(scope: !3125, file: !514, line: 130, column: 5)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !514, line: 129, column: 7)
!3126 = distinct !DISubprogram(name: "get_charset_aliases", scope: !514, file: !514, line: 124, type: !3109, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !170, variables: !3127)
!3127 = !{!3128, !3129, !3130, !3131, !3132, !3134, !3135, !3136, !3137, !3178, !3179, !3180, !3114, !3181, !3185, !3186, !3187}
!3128 = !DILocalVariable(name: "cp", scope: !3126, file: !514, line: 126, type: !17)
!3129 = !DILocalVariable(name: "dir", scope: !3124, file: !514, line: 132, type: !17)
!3130 = !DILocalVariable(name: "base", scope: !3124, file: !514, line: 133, type: !17)
!3131 = !DILocalVariable(name: "file_name", scope: !3124, file: !514, line: 134, type: !6)
!3132 = !DILocalVariable(name: "dir_len", scope: !3133, file: !514, line: 144, type: !115)
!3133 = distinct !DILexicalBlock(scope: !3124, file: !514, line: 143, column: 7)
!3134 = !DILocalVariable(name: "base_len", scope: !3133, file: !514, line: 145, type: !115)
!3135 = !DILocalVariable(name: "add_slash", scope: !3133, file: !514, line: 146, type: !40)
!3136 = !DILocalVariable(name: "fd", scope: !3122, file: !514, line: 162, type: !40)
!3137 = !DILocalVariable(name: "fp", scope: !3120, file: !514, line: 178, type: !3138)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2485, line: 7, baseType: !3140)
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2487, line: 241, size: 1728, elements: !3141)
!3141 = !{!3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3140, file: !2487, line: 242, baseType: !40, size: 32)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3140, file: !2487, line: 247, baseType: !6, size: 64, offset: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3140, file: !2487, line: 248, baseType: !6, size: 64, offset: 128)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3140, file: !2487, line: 249, baseType: !6, size: 64, offset: 192)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3140, file: !2487, line: 250, baseType: !6, size: 64, offset: 256)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3140, file: !2487, line: 251, baseType: !6, size: 64, offset: 320)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3140, file: !2487, line: 252, baseType: !6, size: 64, offset: 384)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3140, file: !2487, line: 253, baseType: !6, size: 64, offset: 448)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3140, file: !2487, line: 254, baseType: !6, size: 64, offset: 512)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3140, file: !2487, line: 256, baseType: !6, size: 64, offset: 576)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3140, file: !2487, line: 257, baseType: !6, size: 64, offset: 640)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3140, file: !2487, line: 258, baseType: !6, size: 64, offset: 704)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3140, file: !2487, line: 260, baseType: !3155, size: 64, offset: 768)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2487, line: 156, size: 192, elements: !3157)
!3157 = !{!3158, !3159, !3161}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3156, file: !2487, line: 157, baseType: !3155, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3156, file: !2487, line: 158, baseType: !3160, size: 64, offset: 64)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3156, file: !2487, line: 162, baseType: !40, size: 32, offset: 128)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3140, file: !2487, line: 262, baseType: !3160, size: 64, offset: 832)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3140, file: !2487, line: 264, baseType: !40, size: 32, offset: 896)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3140, file: !2487, line: 268, baseType: !40, size: 32, offset: 928)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3140, file: !2487, line: 270, baseType: !2513, size: 64, offset: 960)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3140, file: !2487, line: 274, baseType: !114, size: 16, offset: 1024)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3140, file: !2487, line: 275, baseType: !2518, size: 8, offset: 1040)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3140, file: !2487, line: 276, baseType: !2520, size: 8, offset: 1048)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3140, file: !2487, line: 280, baseType: !2524, size: 64, offset: 1088)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3140, file: !2487, line: 289, baseType: !2527, size: 64, offset: 1152)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3140, file: !2487, line: 297, baseType: !8, size: 64, offset: 1216)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3140, file: !2487, line: 298, baseType: !8, size: 64, offset: 1280)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3140, file: !2487, line: 299, baseType: !8, size: 64, offset: 1344)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3140, file: !2487, line: 300, baseType: !8, size: 64, offset: 1408)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3140, file: !2487, line: 302, baseType: !115, size: 64, offset: 1472)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3140, file: !2487, line: 303, baseType: !40, size: 32, offset: 1536)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3140, file: !2487, line: 305, baseType: !2535, size: 160, offset: 1568)
!3178 = !DILocalVariable(name: "res_ptr", scope: !3118, file: !514, line: 190, type: !6)
!3179 = !DILocalVariable(name: "res_size", scope: !3118, file: !514, line: 191, type: !115)
!3180 = !DILocalVariable(name: "c", scope: !3115, file: !514, line: 195, type: !40)
!3181 = !DILocalVariable(name: "buf2", scope: !3115, file: !514, line: 197, type: !3182)
!3182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 408, elements: !3183)
!3183 = !{!3184}
!3184 = !DISubrange(count: 51)
!3185 = !DILocalVariable(name: "l1", scope: !3115, file: !514, line: 198, type: !115)
!3186 = !DILocalVariable(name: "l2", scope: !3115, file: !514, line: 198, type: !115)
!3187 = !DILocalVariable(name: "old_res_ptr", scope: !3115, file: !514, line: 199, type: !6)
!3188 = !DILocation(line: 196, column: 28, scope: !3115, inlinedAt: !3189)
!3189 = distinct !DILocation(line: 589, column: 18, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3108, file: !514, line: 589, column: 3)
!3191 = !DILocation(line: 197, column: 28, scope: !3115, inlinedAt: !3189)
!3192 = !DILocation(line: 403, column: 13, scope: !3108)
!3193 = !DILocation(line: 395, column: 15, scope: !3108)
!3194 = !DILocation(line: 584, column: 15, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3108, file: !514, line: 584, column: 7)
!3196 = !DILocation(line: 584, column: 7, scope: !3108)
!3197 = !DILocation(line: 128, column: 8, scope: !3126, inlinedAt: !3189)
!3198 = !DILocation(line: 126, column: 15, scope: !3126, inlinedAt: !3189)
!3199 = !DILocation(line: 129, column: 10, scope: !3125, inlinedAt: !3189)
!3200 = !DILocation(line: 129, column: 7, scope: !3126, inlinedAt: !3189)
!3201 = !DILocation(line: 138, column: 13, scope: !3124, inlinedAt: !3189)
!3202 = !DILocation(line: 132, column: 19, scope: !3124, inlinedAt: !3189)
!3203 = !DILocation(line: 139, column: 15, scope: !3204, inlinedAt: !3189)
!3204 = distinct !DILexicalBlock(scope: !3124, file: !514, line: 139, column: 11)
!3205 = !DILocation(line: 139, column: 23, scope: !3204, inlinedAt: !3189)
!3206 = !DILocation(line: 139, column: 26, scope: !3204, inlinedAt: !3189)
!3207 = !DILocation(line: 139, column: 33, scope: !3204, inlinedAt: !3189)
!3208 = !DILocation(line: 139, column: 11, scope: !3124, inlinedAt: !3189)
!3209 = !DILocation(line: 140, column: 9, scope: !3204, inlinedAt: !3189)
!3210 = !DILocation(line: 144, column: 26, scope: !3133, inlinedAt: !3189)
!3211 = !DILocation(line: 144, column: 16, scope: !3133, inlinedAt: !3189)
!3212 = !DILocation(line: 145, column: 16, scope: !3133, inlinedAt: !3189)
!3213 = !DILocation(line: 146, column: 34, scope: !3133, inlinedAt: !3189)
!3214 = !DILocation(line: 146, column: 38, scope: !3133, inlinedAt: !3189)
!3215 = !DILocation(line: 146, column: 42, scope: !3133, inlinedAt: !3189)
!3216 = !DILocation(line: 147, column: 48, scope: !3133, inlinedAt: !3189)
!3217 = !DILocation(line: 147, column: 46, scope: !3133, inlinedAt: !3189)
!3218 = !DILocation(line: 147, column: 69, scope: !3133, inlinedAt: !3189)
!3219 = !DILocation(line: 147, column: 30, scope: !3133, inlinedAt: !3189)
!3220 = !DILocation(line: 134, column: 13, scope: !3124, inlinedAt: !3189)
!3221 = !DILocation(line: 148, column: 13, scope: !3133, inlinedAt: !3189)
!3222 = !DILocation(line: 150, column: 13, scope: !3223, inlinedAt: !3189)
!3223 = distinct !DILexicalBlock(scope: !3224, file: !514, line: 149, column: 11)
!3224 = distinct !DILexicalBlock(scope: !3133, file: !514, line: 148, column: 13)
!3225 = !DILocation(line: 151, column: 17, scope: !3223, inlinedAt: !3189)
!3226 = !DILocation(line: 152, column: 34, scope: !3227, inlinedAt: !3189)
!3227 = distinct !DILexicalBlock(scope: !3223, file: !514, line: 151, column: 17)
!3228 = !DILocation(line: 153, column: 41, scope: !3223, inlinedAt: !3189)
!3229 = !DILocation(line: 153, column: 13, scope: !3223, inlinedAt: !3189)
!3230 = !DILocation(line: 157, column: 11, scope: !3124, inlinedAt: !3189)
!3231 = !DILocation(line: 171, column: 16, scope: !3122, inlinedAt: !3189)
!3232 = !DILocation(line: 162, column: 15, scope: !3122, inlinedAt: !3189)
!3233 = !DILocation(line: 173, column: 18, scope: !3121, inlinedAt: !3189)
!3234 = !DILocation(line: 173, column: 15, scope: !3122, inlinedAt: !3189)
!3235 = !DILocation(line: 180, column: 20, scope: !3120, inlinedAt: !3189)
!3236 = !DILocation(line: 178, column: 21, scope: !3120, inlinedAt: !3189)
!3237 = !DILocation(line: 181, column: 22, scope: !3119, inlinedAt: !3189)
!3238 = !DILocation(line: 181, column: 19, scope: !3120, inlinedAt: !3189)
!3239 = !DILocation(line: 184, column: 19, scope: !3240, inlinedAt: !3189)
!3240 = distinct !DILexicalBlock(scope: !3119, file: !514, line: 182, column: 17)
!3241 = !DILocation(line: 186, column: 17, scope: !3240, inlinedAt: !3189)
!3242 = !DILocation(line: 190, column: 25, scope: !3118, inlinedAt: !3189)
!3243 = !DILocation(line: 191, column: 26, scope: !3118, inlinedAt: !3189)
!3244 = !DILocation(line: 193, column: 19, scope: !3118, inlinedAt: !3189)
!3245 = !DILocation(line: 196, column: 23, scope: !3115, inlinedAt: !3189)
!3246 = !DILocation(line: 197, column: 23, scope: !3115, inlinedAt: !3189)
!3247 = !DILocalVariable(name: "__fp", arg: 1, scope: !3248, file: !3058, line: 63, type: !3138)
!3248 = distinct !DISubprogram(name: "getc_unlocked", scope: !3058, file: !3058, line: 63, type: !3249, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !170, variables: !3251)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!40, !3138}
!3251 = !{!3247}
!3252 = !DILocation(line: 63, column: 22, scope: !3248, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 201, column: 27, scope: !3115, inlinedAt: !3189)
!3254 = !DILocation(line: 65, column: 10, scope: !3248, inlinedAt: !3253)
!3255 = !{!3064, !577, i64 8}
!3256 = !{!3064, !577, i64 16}
!3257 = !{!"branch_weights", i32 2000, i32 1}
!3258 = !DILocation(line: 195, column: 27, scope: !3115, inlinedAt: !3189)
!3259 = !DILocation(line: 202, column: 27, scope: !3115, inlinedAt: !3189)
!3260 = distinct !{!3260, !3261, !3264}
!3261 = !DILocation(line: 209, column: 27, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3263, file: !514, line: 207, column: 25)
!3263 = distinct !DILexicalBlock(scope: !3115, file: !514, line: 206, column: 27)
!3264 = !DILocation(line: 211, column: 58, scope: !3262)
!3265 = !DILocation(line: 65, column: 10, scope: !3248, inlinedAt: !3266)
!3266 = distinct !DILocation(line: 210, column: 33, scope: !3262, inlinedAt: !3189)
!3267 = !DILocation(line: 63, column: 22, scope: !3248, inlinedAt: !3266)
!3268 = !DILocation(line: 210, column: 29, scope: !3262, inlinedAt: !3189)
!3269 = distinct !{!3269, !3270, !3271}
!3270 = !DILocation(line: 193, column: 19, scope: !3117)
!3271 = !DILocation(line: 241, column: 21, scope: !3117)
!3272 = !DILocation(line: 216, column: 23, scope: !3115, inlinedAt: !3189)
!3273 = !DILocation(line: 217, column: 27, scope: !3274, inlinedAt: !3189)
!3274 = distinct !DILexicalBlock(scope: !3115, file: !514, line: 217, column: 27)
!3275 = !DILocation(line: 217, column: 64, scope: !3274, inlinedAt: !3189)
!3276 = !DILocation(line: 217, column: 27, scope: !3115, inlinedAt: !3189)
!3277 = !DILocation(line: 219, column: 28, scope: !3115, inlinedAt: !3189)
!3278 = !DILocation(line: 198, column: 30, scope: !3115, inlinedAt: !3189)
!3279 = !DILocation(line: 220, column: 28, scope: !3115, inlinedAt: !3189)
!3280 = !DILocation(line: 198, column: 34, scope: !3115, inlinedAt: !3189)
!3281 = !DILocation(line: 199, column: 29, scope: !3115, inlinedAt: !3189)
!3282 = !DILocation(line: 222, column: 36, scope: !3283, inlinedAt: !3189)
!3283 = distinct !DILexicalBlock(scope: !3115, file: !514, line: 222, column: 27)
!3284 = !DILocation(line: 222, column: 27, scope: !3115, inlinedAt: !3189)
!3285 = !DILocation(line: 225, column: 63, scope: !3286, inlinedAt: !3189)
!3286 = distinct !DILexicalBlock(scope: !3283, file: !514, line: 223, column: 25)
!3287 = !DILocation(line: 225, column: 46, scope: !3286, inlinedAt: !3189)
!3288 = !DILocation(line: 226, column: 25, scope: !3286, inlinedAt: !3189)
!3289 = !DILocation(line: 229, column: 36, scope: !3290, inlinedAt: !3189)
!3290 = distinct !DILexicalBlock(scope: !3283, file: !514, line: 228, column: 25)
!3291 = !DILocation(line: 230, column: 73, scope: !3290, inlinedAt: !3189)
!3292 = !DILocation(line: 230, column: 46, scope: !3290, inlinedAt: !3189)
!3293 = !DILocation(line: 232, column: 35, scope: !3294, inlinedAt: !3189)
!3294 = distinct !DILexicalBlock(scope: !3115, file: !514, line: 232, column: 27)
!3295 = !DILocation(line: 232, column: 27, scope: !3115, inlinedAt: !3189)
!3296 = !DILocation(line: 236, column: 27, scope: !3297, inlinedAt: !3189)
!3297 = distinct !DILexicalBlock(scope: !3294, file: !514, line: 233, column: 25)
!3298 = !DILocation(line: 237, column: 27, scope: !3297, inlinedAt: !3189)
!3299 = !DILocation(line: 241, column: 21, scope: !3116, inlinedAt: !3189)
!3300 = !DILocation(line: 239, column: 39, scope: !3115, inlinedAt: !3189)
!3301 = !DILocation(line: 239, column: 50, scope: !3115, inlinedAt: !3189)
!3302 = !DILocation(line: 239, column: 61, scope: !3115, inlinedAt: !3189)
!3303 = !DILocalVariable(name: "__dest", arg: 1, scope: !3304, file: !3305, line: 88, type: !3308)
!3304 = distinct !DISubprogram(name: "strcpy", scope: !3305, file: !3305, line: 88, type: !3306, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !170, variables: !3310)
!3305 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!6, !3308, !3309}
!3308 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3309 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !17)
!3310 = !{!3303, !3311}
!3311 = !DILocalVariable(name: "__src", arg: 2, scope: !3304, file: !3305, line: 88, type: !3309)
!3312 = !DILocation(line: 88, column: 1, scope: !3304, inlinedAt: !3313)
!3313 = distinct !DILocation(line: 239, column: 23, scope: !3115, inlinedAt: !3189)
!3314 = !DILocation(line: 90, column: 49, scope: !3304, inlinedAt: !3313)
!3315 = !DILocation(line: 90, column: 10, scope: !3304, inlinedAt: !3313)
!3316 = !DILocation(line: 88, column: 1, scope: !3304, inlinedAt: !3317)
!3317 = distinct !DILocation(line: 240, column: 23, scope: !3115, inlinedAt: !3189)
!3318 = !DILocation(line: 90, column: 49, scope: !3304, inlinedAt: !3317)
!3319 = !DILocation(line: 90, column: 10, scope: !3304, inlinedAt: !3317)
!3320 = !DILocation(line: 193, column: 19, scope: !3116, inlinedAt: !3189)
!3321 = !DILocation(line: 242, column: 19, scope: !3118, inlinedAt: !3189)
!3322 = !DILocation(line: 243, column: 32, scope: !3323, inlinedAt: !3189)
!3323 = distinct !DILexicalBlock(scope: !3118, file: !514, line: 243, column: 23)
!3324 = !DILocation(line: 243, column: 23, scope: !3118, inlinedAt: !3189)
!3325 = !DILocation(line: 247, column: 33, scope: !3326, inlinedAt: !3189)
!3326 = distinct !DILexicalBlock(scope: !3323, file: !514, line: 246, column: 21)
!3327 = !DILocation(line: 247, column: 45, scope: !3326, inlinedAt: !3189)
!3328 = !DILocation(line: 253, column: 11, scope: !3122, inlinedAt: !3189)
!3329 = !DILocation(line: 377, column: 23, scope: !3124, inlinedAt: !3189)
!3330 = !DILocation(line: 378, column: 5, scope: !3124, inlinedAt: !3189)
!3331 = !DILocation(line: 396, column: 15, scope: !3108)
!3332 = !DILocation(line: 590, column: 8, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3190, file: !514, line: 589, column: 3)
!3334 = !DILocation(line: 590, column: 17, scope: !3333)
!3335 = !DILocation(line: 589, column: 3, scope: !3190)
!3336 = !DILocation(line: 592, column: 9, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3333, file: !514, line: 592, column: 9)
!3338 = !DILocation(line: 592, column: 35, scope: !3337)
!3339 = !DILocation(line: 593, column: 9, scope: !3337)
!3340 = !DILocation(line: 593, column: 24, scope: !3337)
!3341 = !DILocation(line: 593, column: 31, scope: !3337)
!3342 = !DILocation(line: 593, column: 34, scope: !3337)
!3343 = !DILocation(line: 593, column: 45, scope: !3337)
!3344 = !DILocation(line: 592, column: 9, scope: !3333)
!3345 = !DILocation(line: 595, column: 29, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3337, file: !514, line: 594, column: 7)
!3347 = !DILocation(line: 595, column: 27, scope: !3346)
!3348 = !DILocation(line: 595, column: 46, scope: !3346)
!3349 = !DILocation(line: 596, column: 9, scope: !3346)
!3350 = !DILocation(line: 591, column: 19, scope: !3333)
!3351 = !DILocation(line: 591, column: 36, scope: !3333)
!3352 = !DILocation(line: 591, column: 16, scope: !3333)
!3353 = !DILocation(line: 591, column: 52, scope: !3333)
!3354 = !DILocation(line: 591, column: 69, scope: !3333)
!3355 = !DILocation(line: 591, column: 49, scope: !3333)
!3356 = distinct !{!3356, !3335, !3357}
!3357 = !DILocation(line: 597, column: 7, scope: !3190)
!3358 = !DILocation(line: 602, column: 7, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3108, file: !514, line: 602, column: 7)
!3360 = !DILocation(line: 602, column: 18, scope: !3359)
!3361 = !DILocation(line: 602, column: 7, scope: !3108)
!3362 = !DILocation(line: 612, column: 3, scope: !3108)
!3363 = distinct !DISubprogram(name: "rpl_fclose", scope: !3364, file: !3364, line: 56, type: !3365, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !3407)
!3364 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!40, !3367}
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2485, line: 7, baseType: !3369)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2487, line: 241, size: 1728, elements: !3370)
!3370 = !{!3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3369, file: !2487, line: 242, baseType: !40, size: 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3369, file: !2487, line: 247, baseType: !6, size: 64, offset: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3369, file: !2487, line: 248, baseType: !6, size: 64, offset: 128)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3369, file: !2487, line: 249, baseType: !6, size: 64, offset: 192)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3369, file: !2487, line: 250, baseType: !6, size: 64, offset: 256)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3369, file: !2487, line: 251, baseType: !6, size: 64, offset: 320)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3369, file: !2487, line: 252, baseType: !6, size: 64, offset: 384)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3369, file: !2487, line: 253, baseType: !6, size: 64, offset: 448)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3369, file: !2487, line: 254, baseType: !6, size: 64, offset: 512)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3369, file: !2487, line: 256, baseType: !6, size: 64, offset: 576)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3369, file: !2487, line: 257, baseType: !6, size: 64, offset: 640)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3369, file: !2487, line: 258, baseType: !6, size: 64, offset: 704)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3369, file: !2487, line: 260, baseType: !3384, size: 64, offset: 768)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2487, line: 156, size: 192, elements: !3386)
!3386 = !{!3387, !3388, !3390}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3385, file: !2487, line: 157, baseType: !3384, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3385, file: !2487, line: 158, baseType: !3389, size: 64, offset: 64)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3385, file: !2487, line: 162, baseType: !40, size: 32, offset: 128)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3369, file: !2487, line: 262, baseType: !3389, size: 64, offset: 832)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3369, file: !2487, line: 264, baseType: !40, size: 32, offset: 896)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3369, file: !2487, line: 268, baseType: !40, size: 32, offset: 928)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3369, file: !2487, line: 270, baseType: !2513, size: 64, offset: 960)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3369, file: !2487, line: 274, baseType: !114, size: 16, offset: 1024)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3369, file: !2487, line: 275, baseType: !2518, size: 8, offset: 1040)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3369, file: !2487, line: 276, baseType: !2520, size: 8, offset: 1048)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3369, file: !2487, line: 280, baseType: !2524, size: 64, offset: 1088)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3369, file: !2487, line: 289, baseType: !2527, size: 64, offset: 1152)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3369, file: !2487, line: 297, baseType: !8, size: 64, offset: 1216)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3369, file: !2487, line: 298, baseType: !8, size: 64, offset: 1280)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3369, file: !2487, line: 299, baseType: !8, size: 64, offset: 1344)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3369, file: !2487, line: 300, baseType: !8, size: 64, offset: 1408)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3369, file: !2487, line: 302, baseType: !115, size: 64, offset: 1472)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3369, file: !2487, line: 303, baseType: !40, size: 32, offset: 1536)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3369, file: !2487, line: 305, baseType: !2535, size: 160, offset: 1568)
!3407 = !{!3408, !3409, !3410, !3411}
!3408 = !DILocalVariable(name: "fp", arg: 1, scope: !3363, file: !3364, line: 56, type: !3367)
!3409 = !DILocalVariable(name: "saved_errno", scope: !3363, file: !3364, line: 58, type: !40)
!3410 = !DILocalVariable(name: "fd", scope: !3363, file: !3364, line: 59, type: !40)
!3411 = !DILocalVariable(name: "result", scope: !3363, file: !3364, line: 60, type: !40)
!3412 = !DILocation(line: 56, column: 19, scope: !3363)
!3413 = !DILocation(line: 58, column: 7, scope: !3363)
!3414 = !DILocation(line: 60, column: 7, scope: !3363)
!3415 = !DILocation(line: 63, column: 8, scope: !3363)
!3416 = !DILocation(line: 59, column: 7, scope: !3363)
!3417 = !DILocation(line: 64, column: 10, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3363, file: !3364, line: 64, column: 7)
!3419 = !DILocation(line: 64, column: 7, scope: !3363)
!3420 = !DILocation(line: 65, column: 12, scope: !3418)
!3421 = !DILocation(line: 65, column: 5, scope: !3418)
!3422 = !DILocation(line: 70, column: 9, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3363, file: !3364, line: 70, column: 7)
!3424 = !DILocation(line: 70, column: 23, scope: !3423)
!3425 = !DILocation(line: 70, column: 33, scope: !3423)
!3426 = !DILocation(line: 70, column: 26, scope: !3423)
!3427 = !DILocation(line: 70, column: 59, scope: !3423)
!3428 = !DILocation(line: 71, column: 7, scope: !3423)
!3429 = !DILocation(line: 71, column: 10, scope: !3423)
!3430 = !DILocation(line: 70, column: 7, scope: !3363)
!3431 = !DILocation(line: 98, column: 12, scope: !3363)
!3432 = !DILocation(line: 103, column: 7, scope: !3363)
!3433 = !DILocation(line: 72, column: 19, scope: !3423)
!3434 = !DILocation(line: 103, column: 19, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3363, file: !3364, line: 103, column: 7)
!3436 = !DILocation(line: 105, column: 13, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3435, file: !3364, line: 104, column: 5)
!3438 = !DILocation(line: 107, column: 5, scope: !3437)
!3439 = !DILocation(line: 110, column: 1, scope: !3363)
!3440 = distinct !DISubprogram(name: "rpl_fflush", scope: !3441, file: !3441, line: 127, type: !3442, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !3484)
!3441 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!40, !3444}
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2485, line: 7, baseType: !3446)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2487, line: 241, size: 1728, elements: !3447)
!3447 = !{!3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3446, file: !2487, line: 242, baseType: !40, size: 32)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3446, file: !2487, line: 247, baseType: !6, size: 64, offset: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3446, file: !2487, line: 248, baseType: !6, size: 64, offset: 128)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3446, file: !2487, line: 249, baseType: !6, size: 64, offset: 192)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3446, file: !2487, line: 250, baseType: !6, size: 64, offset: 256)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3446, file: !2487, line: 251, baseType: !6, size: 64, offset: 320)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3446, file: !2487, line: 252, baseType: !6, size: 64, offset: 384)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3446, file: !2487, line: 253, baseType: !6, size: 64, offset: 448)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3446, file: !2487, line: 254, baseType: !6, size: 64, offset: 512)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3446, file: !2487, line: 256, baseType: !6, size: 64, offset: 576)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3446, file: !2487, line: 257, baseType: !6, size: 64, offset: 640)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3446, file: !2487, line: 258, baseType: !6, size: 64, offset: 704)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3446, file: !2487, line: 260, baseType: !3461, size: 64, offset: 768)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2487, line: 156, size: 192, elements: !3463)
!3463 = !{!3464, !3465, !3467}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3462, file: !2487, line: 157, baseType: !3461, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3462, file: !2487, line: 158, baseType: !3466, size: 64, offset: 64)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3462, file: !2487, line: 162, baseType: !40, size: 32, offset: 128)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3446, file: !2487, line: 262, baseType: !3466, size: 64, offset: 832)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3446, file: !2487, line: 264, baseType: !40, size: 32, offset: 896)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3446, file: !2487, line: 268, baseType: !40, size: 32, offset: 928)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3446, file: !2487, line: 270, baseType: !2513, size: 64, offset: 960)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3446, file: !2487, line: 274, baseType: !114, size: 16, offset: 1024)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3446, file: !2487, line: 275, baseType: !2518, size: 8, offset: 1040)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3446, file: !2487, line: 276, baseType: !2520, size: 8, offset: 1048)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3446, file: !2487, line: 280, baseType: !2524, size: 64, offset: 1088)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3446, file: !2487, line: 289, baseType: !2527, size: 64, offset: 1152)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3446, file: !2487, line: 297, baseType: !8, size: 64, offset: 1216)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3446, file: !2487, line: 298, baseType: !8, size: 64, offset: 1280)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3446, file: !2487, line: 299, baseType: !8, size: 64, offset: 1344)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3446, file: !2487, line: 300, baseType: !8, size: 64, offset: 1408)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3446, file: !2487, line: 302, baseType: !115, size: 64, offset: 1472)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3446, file: !2487, line: 303, baseType: !40, size: 32, offset: 1536)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3446, file: !2487, line: 305, baseType: !2535, size: 160, offset: 1568)
!3484 = !{!3485}
!3485 = !DILocalVariable(name: "stream", arg: 1, scope: !3440, file: !3441, line: 127, type: !3444)
!3486 = !DILocation(line: 127, column: 19, scope: !3440)
!3487 = !DILocation(line: 148, column: 14, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3440, file: !3441, line: 148, column: 7)
!3489 = !DILocation(line: 148, column: 22, scope: !3488)
!3490 = !DILocation(line: 148, column: 27, scope: !3488)
!3491 = !DILocation(line: 148, column: 7, scope: !3440)
!3492 = !DILocation(line: 149, column: 12, scope: !3488)
!3493 = !DILocation(line: 149, column: 5, scope: !3488)
!3494 = !DILocalVariable(name: "fp", arg: 1, scope: !3495, file: !3441, line: 40, type: !3444)
!3495 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3441, file: !3441, line: 40, type: !3496, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !3498)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{null, !3444}
!3498 = !{!3494}
!3499 = !DILocation(line: 40, column: 48, scope: !3495, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 153, column: 3, scope: !3440)
!3501 = !DILocation(line: 42, column: 11, scope: !3502, inlinedAt: !3500)
!3502 = distinct !DILexicalBlock(scope: !3495, file: !3441, line: 42, column: 7)
!3503 = !DILocation(line: 42, column: 18, scope: !3502, inlinedAt: !3500)
!3504 = !DILocation(line: 42, column: 7, scope: !3495, inlinedAt: !3500)
!3505 = !DILocation(line: 44, column: 5, scope: !3502, inlinedAt: !3500)
!3506 = !DILocation(line: 155, column: 10, scope: !3440)
!3507 = !DILocation(line: 155, column: 3, scope: !3440)
!3508 = !DILocation(line: 229, column: 1, scope: !3440)
!3509 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3510, file: !3510, line: 28, type: !3511, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !556, variables: !3554)
!3510 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!40, !3513, !3553, !40}
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2485, line: 7, baseType: !3515)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2487, line: 241, size: 1728, elements: !3516)
!3516 = !{!3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3515, file: !2487, line: 242, baseType: !40, size: 32)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3515, file: !2487, line: 247, baseType: !6, size: 64, offset: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3515, file: !2487, line: 248, baseType: !6, size: 64, offset: 128)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3515, file: !2487, line: 249, baseType: !6, size: 64, offset: 192)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3515, file: !2487, line: 250, baseType: !6, size: 64, offset: 256)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3515, file: !2487, line: 251, baseType: !6, size: 64, offset: 320)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3515, file: !2487, line: 252, baseType: !6, size: 64, offset: 384)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3515, file: !2487, line: 253, baseType: !6, size: 64, offset: 448)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3515, file: !2487, line: 254, baseType: !6, size: 64, offset: 512)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3515, file: !2487, line: 256, baseType: !6, size: 64, offset: 576)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3515, file: !2487, line: 257, baseType: !6, size: 64, offset: 640)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3515, file: !2487, line: 258, baseType: !6, size: 64, offset: 704)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3515, file: !2487, line: 260, baseType: !3530, size: 64, offset: 768)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2487, line: 156, size: 192, elements: !3532)
!3532 = !{!3533, !3534, !3536}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3531, file: !2487, line: 157, baseType: !3530, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3531, file: !2487, line: 158, baseType: !3535, size: 64, offset: 64)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3531, file: !2487, line: 162, baseType: !40, size: 32, offset: 128)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3515, file: !2487, line: 262, baseType: !3535, size: 64, offset: 832)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3515, file: !2487, line: 264, baseType: !40, size: 32, offset: 896)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3515, file: !2487, line: 268, baseType: !40, size: 32, offset: 928)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3515, file: !2487, line: 270, baseType: !2513, size: 64, offset: 960)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3515, file: !2487, line: 274, baseType: !114, size: 16, offset: 1024)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3515, file: !2487, line: 275, baseType: !2518, size: 8, offset: 1040)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3515, file: !2487, line: 276, baseType: !2520, size: 8, offset: 1048)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3515, file: !2487, line: 280, baseType: !2524, size: 64, offset: 1088)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3515, file: !2487, line: 289, baseType: !2527, size: 64, offset: 1152)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3515, file: !2487, line: 297, baseType: !8, size: 64, offset: 1216)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3515, file: !2487, line: 298, baseType: !8, size: 64, offset: 1280)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3515, file: !2487, line: 299, baseType: !8, size: 64, offset: 1344)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3515, file: !2487, line: 300, baseType: !8, size: 64, offset: 1408)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3515, file: !2487, line: 302, baseType: !115, size: 64, offset: 1472)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3515, file: !2487, line: 303, baseType: !40, size: 32, offset: 1536)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3515, file: !2487, line: 305, baseType: !2535, size: 160, offset: 1568)
!3553 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2655, line: 57, baseType: !2513)
!3554 = !{!3555, !3556, !3557, !3558}
!3555 = !DILocalVariable(name: "fp", arg: 1, scope: !3509, file: !3510, line: 28, type: !3513)
!3556 = !DILocalVariable(name: "offset", arg: 2, scope: !3509, file: !3510, line: 28, type: !3553)
!3557 = !DILocalVariable(name: "whence", arg: 3, scope: !3509, file: !3510, line: 28, type: !40)
!3558 = !DILocalVariable(name: "pos", scope: !3559, file: !3510, line: 116, type: !3553)
!3559 = distinct !DILexicalBlock(scope: !3560, file: !3510, line: 112, column: 5)
!3560 = distinct !DILexicalBlock(scope: !3509, file: !3510, line: 51, column: 7)
!3561 = !DILocation(line: 28, column: 15, scope: !3509)
!3562 = !DILocation(line: 28, column: 25, scope: !3509)
!3563 = !DILocation(line: 28, column: 37, scope: !3509)
!3564 = !DILocation(line: 51, column: 11, scope: !3560)
!3565 = !DILocation(line: 51, column: 31, scope: !3560)
!3566 = !DILocation(line: 51, column: 24, scope: !3560)
!3567 = !DILocation(line: 52, column: 7, scope: !3560)
!3568 = !DILocation(line: 52, column: 14, scope: !3560)
!3569 = !{!3064, !577, i64 40}
!3570 = !DILocation(line: 52, column: 35, scope: !3560)
!3571 = !{!3064, !577, i64 32}
!3572 = !DILocation(line: 52, column: 28, scope: !3560)
!3573 = !DILocation(line: 53, column: 7, scope: !3560)
!3574 = !DILocation(line: 53, column: 14, scope: !3560)
!3575 = !{!3064, !577, i64 72}
!3576 = !DILocation(line: 53, column: 28, scope: !3560)
!3577 = !DILocation(line: 51, column: 7, scope: !3509)
!3578 = !DILocation(line: 116, column: 26, scope: !3559)
!3579 = !DILocation(line: 116, column: 19, scope: !3559)
!3580 = !DILocation(line: 116, column: 13, scope: !3559)
!3581 = !DILocation(line: 117, column: 15, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3559, file: !3510, line: 117, column: 11)
!3583 = !DILocation(line: 117, column: 11, scope: !3559)
!3584 = !DILocation(line: 127, column: 11, scope: !3559)
!3585 = !DILocation(line: 127, column: 18, scope: !3559)
!3586 = !DILocation(line: 128, column: 11, scope: !3559)
!3587 = !DILocation(line: 128, column: 19, scope: !3559)
!3588 = !{!3064, !1802, i64 144}
!3589 = !DILocation(line: 159, column: 7, scope: !3559)
!3590 = !DILocation(line: 161, column: 10, scope: !3509)
!3591 = !DILocation(line: 161, column: 3, scope: !3509)
!3592 = !DILocation(line: 162, column: 1, scope: !3509)
